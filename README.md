# Running the code
```
mame cpc6128 -skip_gameinfo -natural -flop1 program.dsk
```

In the emulator
```
memory &11ff
load "program.cpc",&1200
call &1200
```

source: https://github.com/z88dk/z88dk/wiki/Platform---Amstrad-CPC

