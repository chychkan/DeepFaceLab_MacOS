#!/usr/bin/env bash
cd "$(dirname $0)/.."

set -e

mkdir -p .dfl
mkdir -p workspace

is_arm64() {
  [ "$(uname -m)" == "arm64" ]
}

is_arm64 && echo "Running on Apple M1 chip"

if [ ! -d .dfl/DeepFaceLab ]; then
  echo "Cloning DeepFaceLab"
  git clone --no-single-branch --depth 1 "https://github.com/chychkan/DeepFaceLab.git" .dfl/DeepFaceLab

  if is_arm64; then
    (cd .dfl/DeepFaceLab; git checkout support-arm64)
  fi
fi

if [ ! -d .dfl/env ]; then
  virtualenv -p python3 .dfl/env
fi

source .dfl/env/bin/activate

python -m pip install --upgrade pip

version=$(python -V | cut -f 2 -d ' ' | cut -f 1,2 -d .)
reqs_file='requirements.txt'

version_suffix=''
if [[ ! -z "$version" && -f "requirements_$version.txt" ]]; then
  version_suffix="_$version"
fi

architecture_suffix=''
if is_arm64 && [ -f "requirements${version_suffix}_arm64.txt" ]; then
  architecture_suffix="_arm64"
fi

reqs_file="requirements${version_suffix}${architecture_suffix}.txt"

echo "Using $reqs_file for $(python -V)"

if is_arm64; then
  if [[ -z "$(brew ls --versions hdf5)" ]]; then
    echo "ERROR: HDF5 needs to be installed to run DeepFaceLab on M1 chip."
    echo "You can install it with 'brew install hdf5'. For more details, see https://formulae.brew.sh/formula/hdf5"
    echo "Once it is installed, run ./scripts/0_setup.sh again"
    exit 1
  fi

  cython_pkg="$(cat $reqs_file | grep -E 'cython==.+')"
  pip --no-cache-dir install "$cython_pkg"

  numpy_pkg="$(cat $reqs_file | grep -E 'numpy==.+')"
  pip install "$numpy_pkg"

  h5py_pkg="$(cat $reqs_file | grep -E 'h5py==.+')"
  HDF5_DIR="$(brew --prefix hdf5)" pip --no-cache-dir install --no-build-isolation "$h5py_pkg"
elif [ "$version" == "3.10" ]; then
  (cd .dfl/DeepFaceLab; git checkout support-opencv45)

  numpy_pkg="$(cat $reqs_file | grep -E 'numpy==.+')"
  pip install "$numpy_pkg"
fi

pip --no-cache-dir install -r $reqs_file

echo "Done."
