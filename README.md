# bash_setup

This repo is to make sure all my bash settings remain relatively the same across all devices.  I will continue to bulk it out as time passes, and I find more things I need or more errors I make.  This is more a project for convenience than it is trying to explore a research interest or do something fun in software or hardware.
 
## How to Utilize

Setting up the repo and using it for the first time is easy, just type the following commands:

```sh
git clone https://github.com/jsburke/bash_setup.git
cd  bash_setup
./bash_down.sh
```

And all the settings are good to go!  From that point on updates are easy.  If you update your own `.bashrc`, `.bash_alias`, or `.bash_fn` (not in the repo) you can update the repo by invoking `bashup` and you can push any changes you make or pull into the repo by invoking `bashdown`, both are aliased.  However, this does assume that you clone the repo to your `home` directory, since it will set up `$BASH_SETUP` to ~/bash_setup; if you want it elsewhere you will have to change the last line in the bashrc file which sets that variable.

## Notes on `bash_local`

A final file is sourced in the bash_rc here that does not exist in this repo: `bash_local`.  Since every machine one may use may have unique utilities that get used, for example special ssh targets or utilities dedicated to expensive hardware like GPUs or FPGAs, a file meant to be unique to a given machine is sourced in `.bash_rc` called `.bash_local`.  Those specific use cases should be set up in this file.  If there really aren't unique use cases, `.bash_local` can be deleted and its use commented out of the profile and scripts.

## Copying, Forking, et cetera

I've placed this set up on github because I wanted to make my life a little simpler by having similar bash settings across several computers with uniqueness where needed.  If you like what you see here, feel free to Copy, Fork, or do whatever you want with it.  If you do fork this repo, please leave the link at the bottom to my original repo in tact.  If you would like to keep a copy of this private on github or another hosting service, feel free to copy it and set it to private.  I'm not going to accept pull requests on or extra people contrbuting to the repo, but feel free to point out bugs if you find some.  Happy Bashing!

[John's Original Repo](https://github.com/jsburke/bash_setup "Burke's Bash")
