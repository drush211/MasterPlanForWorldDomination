# Initial MacOSx Development Setup

This repo is meant to hold scripts, modules, and configs used for setting up a development MacOSx machine. In order to
run the script, simply run `./initial_setup`, or `make install`.

## First Thing

1. Install Google Chrome.
2. Sign in to Github.
3. Create directory /github, and chown it to your user.
4. Install Github Desktop.
5. Clone this repo into the /github directory.
6. Install Pycharm.

## Linting

This project lints both python and markdown via the `make lint` command. Alternatively to lint individually, you can use
`make pylint` and `make mdl` respectively.
