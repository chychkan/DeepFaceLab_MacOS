## Intro

This project provides scripts inspired by [DeepFaceLab_Linux](https://github.com/lbfs/DeepFaceLab_Linux) to setup and run [DeepFaceLab](https://github.com/iperov/DeepFaceLab) on MacOS.

You'll need `git`, `ffmpeg`, `python3` and python module `virtualenv` available to be able to execute these scripts. The scripts will create a virtual env sandbox and will install all necessary dependencies there, so your main installation of `python3` will be left intact.

## NOTE: Apple M1 chip

Currently there's limited support for Apple M1 laptops. You can do model training, but the XSeg editor currently does not work (the DeepFaceLab codebase is not compatible with PyQt6).

## Setup

**Tools**

Make sure you have installed:
- [Git](https://git-scm.com/) (check with `git --version`)
- [FFmpeg](https://ffmpeg.org/) (check with `ffmpeg -version`)
- [Python 3](https://www.python.org/) (check with `python3 --version`)
- [Virtualenv](https://github.com/pypa/virtualenv) (check with `virtualenv --version`)

For **Apple M1** laptops you also need [hdf5](https://formulae.brew.sh/formula/hdf5) lib installed.
Check if you have it with `brew ls --versions hdf5`. Install it with `brew install hdf5`.

**Clone and setup**

1. Clone this repository (`git clone https://github.com/chychkan/DeepFaceLab_MacOS.git`)
2. Run script `./scripts/0_setup.sh` to get [DeepFaceLab](https://github.com/iperov/DeepFaceLab), create virtual env and install necessary Python dependencies. This may take several minutes to run.

Now you can put your `data_src.mp4` and `data_dst.mp4` files into the `workspace/` dir and start running scripts from the `scripts/` dir.

## Tutorials and docs

See [DeepFaceLab](https://github.com/iperov/DeepFaceLab) project for links to guides and tutorials.
