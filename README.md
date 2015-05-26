# Firefox OS Emulator (Jelly Bean) in Docker
## Usage
```sh
$ ./run.sh -it aoowweenn/firefox-os-emu-jb bash
(container) $ cd /home/B2G
(container) $ ./config.sh emulator-jb
(container) $ git pull
(container) $ ./repo sync
(container) $ ./build.sh
(container) $ ./run-emulator.sh
```
## Check if X11 works
* Compile a window sample from [Rosetta](http://rosettacode.org/wiki/Window_creation/X11#Xlib)
* Or use glxinfo to check:
  1. `apt-get update`
  2. `apt-get install mesa-utils`
  3. Run `glxinfo`
