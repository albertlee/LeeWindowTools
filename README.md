# LeeWindowTools

A simple windows list and switch tool for Pharo.
## Install
```smalltalk
Metacello new
   baseline: 'LeeWindowTools';
	repository: 'github://albertlee/LeeWindowTools:main/';
	load
```
## Usage: 
```
LeeWindowsList open
```

or, just simply click the open icon on LeeWindowsList's class side.

![LeeWindowsList](./docs/LeeWindowsTool_1.png)

or, open in the Windows menu:

![Menu](./docs/LeeWindowTools_menu.png)

It will open a window, listing all the windows opened, then click to switch.

![Demo Window](docs/LeeWindowTools_demo.png)
## Known bugs
- close some windows, the LeeWindowsList listing window won't refresh.
- the menu windows should not display.
- the initial opened window is too small.