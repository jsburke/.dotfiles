# bash_setup

This repo is to make sure all my bash settings remain relatively the same across all devices.  I will continue to bulk it out as time passes, and I find more things I need or more errors I make.  This is more a project for convenience than it is trying to explore a research interest or do something fun in software or hardware.  I have also evolved this to include my vim and ctags preferences.

## Credits

Many of the utlities I use are taken from elsewhere, and I hope to give credit where it is due.  Diligent creators should not be ignored at my convenience, and this gratitude guide may help others in finding useful resources.

| Author | Creation | Link |
|:-------|:--------:|:-----|
|[nachumk](https://github.com/nachumk)|System Verilog Vim Scripts|[systemverilog.vim](https://github.com/nachumk/systemverilog.vim)|
|[Derek Wyatt](https://github.com/derekwyatt)|Scala for Vim|[vim-scala](https://github.com/derekwyatt/vim-scala)|
|[Hristo Deshev](https://github.com/hdeshev)|Good Scala ctags|[ctags : gist](https://gist.github.com/hdeshev/1274261)|
|[Mehul Tikekar](https://github.com/mtikekar)|BlueSpec Verilog Vim|[vim-bsv](https://github.com/mtikekar/vim-bsv)|

If you see content in this repo that I may be using unattributed, please send me a message so that I may add it here.
 
## How to Utilize

Setting up the repo and using it for the first time is easy, just type the following commands:

```sh
git clone https://github.com/jsburke/bash_setup.git
cd  bash_setup
./bash_down.sh
```

And all the settings are good to go!  From that point on updates are easy.  If you update your own `.bashrc`, `.bash_alias`, `.bash_fn`, `.vimrc`, or the files in `.vim`, you can update this repo by invoking `bashup`. There is also a `bash_down.sh` script provided, as seen above.  It can be used after a `git pull` to localize changes, but must be invoked from the repo's local directory. This work does assume that you clone the repo to your `home` directory, since it will set up `$BASH_SETUP` to ~/bash_setup; if you want it elsewhere you will have to change the last line in the bashrc file which sets that variable.

## Notes on `bash_local`

A final file is sourced in the bash_rc here that does not exist in this repo: `bash_local`.  Since every machine one may use may have unique utilities that get used, for example special ssh targets or utilities dedicated to expensive hardware like GPUs or FPGAs, a file meant to be unique to a given machine is sourced in `.bash_rc` called `.bash_local`.  Those specific use cases should be set up in this file.  If there really aren't unique use cases, `.bash_local` can be deleted and its use commented out of the profile and scripts.

## Copying, Forking, et cetera

I've placed this set up on github because I wanted to make my life a little simpler by having similar bash settings across several computers with uniqueness where needed.  If you like what you see here, feel free to Copy, Fork, or do whatever you want with it.  If you do fork this repo, please leave the link at the bottom to my original repo in tact.  If you would like to keep a copy of this private on github or another hosting service, feel free to copy it and set it to private.  I'm not going to accept pull requests on or extra people contrbuting to the repo, but feel free to point out bugs if you find some.

[John's Original Repo](https://github.com/jsburke/bash_setup "Burke's Bash")
