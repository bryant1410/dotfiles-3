Halfwits Personal Dotfiles
#[wmutils](https://github.com/wmutils)
(I use a slightly modified set of scripts from those available in the contrib repo) 
I wanted my windows to lay out a very specific way - and that ended up as a [2D bin-packing algorithm](https://github.com/halfwit/binpack), while allowing some give on the size of any particular window. These are all outlined in [cfg/wmutils/wshuf](https://github.com/halfwit/dotfiles/blob/master/cfg/wmutils/wshuf)
This all allows me to do the following:
 - strict character for terminal applications
 - variable widths for browsers and editors
 - best-fit of a set of open windows

##This is how it all looks 
[![wmutils and bin packing demo](http://img.youtube.com/vi/MSIjqTgtj2c/0.jpg)](http://www.youtube.com/watch?v=MSIjqTgtj2c)]

#[dsearch](https://github.com/halfwit/dotfiles/blob/master/bin/dsearch)
This is a dmenu/bemenu based set of scripts for various search-oriented actions, using a set of [handlers](https://github.com/halfwit/dotfiles/blob/master/share/dsearch)
Each handler is invoked using the traditional DuckDuckGo handler behavior, `!foo bar baz`
In addition, bookmarks are handled in dsearch, as I found myself switching browser too frequently [demo](https://ptpb.pw/qR19.mkv), and currently session management as tabbed causes too many issues. [demo](https://ptpb.pw/SyC3.mkv)
Notable handlers include:
 - [youtube search](https://github.com/halfwit/dotfiles/blob/master/share/dsearch/yt) (You do need a developer API key)
 - Gmusicapi integration [1](https://github.com/halfwit/dotfiles/blob/master/share/dsearch/song)[2](https://github.com/halfwit/dotfiles/blob/master/share/dsearch/album)[3](https://github.com/halfwit/dotfiles/blob/master/share/dsearch/listen)
 - [man](https://github.com/halfwit/dotfiles/blob/master/share/dsearch/man) Manual search
 - [code](https://github.com/halfwit/dotfiles/blob/master/share/dsearch/code) Search for code snippets on local system
 - [save](https://github.com/halfwit/dotfiles/blob/master/share/dsearch/save) This isn't really search oriented, and will eventually move to a better default. This script was written so that I wouldn't have to go through various repetitive steps to save a link, be it an image, a video, or a bookmark.

#[plumber](https://github.com/halfwit/dotfiles/blob/master/bin/plumber)
 Based on [Plan9's ipc mechanism of the same name](http://plan9.bell-labs.com/sys/doc/plumb.html), this is merely a script to act on an arbitrary string of input in a meaningful way. If the string is a path or URL, it will attempt to infer the mimetype, and finally open it with the correct application. If the string does not match either of those cases, it runs through and attemps to open a manual entry for the string.

#[unification](https://github.com/halfwit/dotfiles/blob/master/bin/unification)
 Heavily inspired by Shougo's [unite.vim](https://github.com/Shougo/unite.vim), this is a barebones path search, which will run the resulting file through the plumber utility.