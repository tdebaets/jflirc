
WinLIRC plug-in for jetAudio
============================

WinLIRC plug-in for jetAudio (internally `jflirc`) is, as its name suggests, a plug-in for the Windows [jetAudio](http://www.cowonamerica.com/products/jetaudio/) media player that allows you to control jetAudio with a remote controller via the [WinLIRC protocol](http://winlirc.sourceforge.net/). This repository contains the Delphi source code of the plug-in.

[WinLIRC plug-in for jetAudio homepage](http://bmproductions.fixnum.org/moreprogs/jawinlirc.htm)

Obtaining the source code
-------------------------

First make sure that you have a recent version of the [Git client](https://git-scm.com/) (`git`) installed. Then open a Windows command prompt window (note that Git Bash isn't supported). In the command prompt, run these commands:
```
> git clone https://github.com/tdebaets/jflirc.git jflirc
> cd jflirc
```

Finally, run the `postclone.bat` script. This will take care of further setting up the repository, installing Git hooks, creating output directories etc.:
```
> postclone.bat
```

To keep your repository up-to-date, run the `update.bat` script. This script essentially runs a `git pull` but also performs some basic checks before pulling. It also runs a `git submodule update` after the pull to update the `common` submodule as well.

If you want to contribute to this project, don't clone its main repository, but create your own fork first and clone that fork instead. Then commit/push your work on a topic branch and submit a pull request. For details, see the [generic instructions for contributing to projects](https://github.com/tdebaets/common/blob/master/CONTRIBUTING.md) in the `common` repository.

Building
--------

WinLIRC plug-in for jetAudio has been written in Borland Delphi 4. This means that in order to build this project, you'll need to have Borland Delphi 4 installed and properly set up. See the [generic instructions for building Delphi projects](https://github.com/tdebaets/common/blob/master/Delphi/Building.md) in the `common` repository.

License
-------

WinLIRC plug-in for jetAudio is Copyright © 2016-2017 Tim De Baets. It is licensed under the Apache License version 2.0, see [LICENSE](LICENSE) for details.
