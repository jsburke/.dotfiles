# bash_setup

This repo is to make sure all my bash settings remain relatively the same across all devices.  I will continue to bulk it out as time passes.  The files should be named in intuitive manners.  Feel free to copy any of this or fork a copy of your own.  While I won't accept pull requests on this repo, if you see something incorrect, please point it out.  If you have a really great addition, note that as an issue too please.

I set this up to also reference a file not present in the repo: .bash_local
This file is meant to be unique to a device.  Want some things in Cygwin, dedicated ssh aliases to frequently used remotes, or things like your `PATH` variable, I plan to put it in that file.

## How to Utilize

Setting up the repo and using it for the first time is easy, just type the following

```sh
git clone https://github.com/jsburke/bash_setup.git
cd  bash_setup
./bash_down.sh
```

And all the settings are good to go!  From that point on updates are easy.  If you update your own .bashrc or .bash_alias (not in the repo) you can update the repo by invoking `bashup` and you can push any changes you make or pull into the repo by invoking `bashdown`, both are aliased.
