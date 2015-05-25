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
