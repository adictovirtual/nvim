.vim
====

I use [Neovim](http://neovim.io).  Most of this config was in place before I switched, so it will probably work fine in any modern vim (7.4), but I don't actively test it.  I don't want to exclude it yet though, so let me know if something's broken.
Give Neovim a try if you haven't (or another try if you have in the past)!  It's an awesome project.


Goodies
----
* `:term` opens a real terminal in Neovim! (not taking credit, just making sure you know)
* `<C-w>` will get you out of terminal mode and ready to move to another pane (`h`, `j`, `k`, `l`)
* `<leader>` is bound to `;`.
* `;n` and `;b` to jump to next/previous buffers.
* `;w` for a quick save.
* `;x` closes a the current buffer, but not the window or pane it's in.
* `;q` closes the active pane.
* `;Q` closes everything.
* `;<Space>` opens CtrlP.  Partially match a file name and hit `Enter`.  Refresh the file list with `<F5>`.  Move up and down the list with `<C-k>` and `<C-j>`.
* `;e` to `:Eval` the current expression using Fireplace.  Automatically connects to a running Clojure[Script] REPL using `.nrepl-port`.
* `gc` in Visual mode to toggle commenting on the selected lines.

Many more small conveniences and syntax files included.  I'm really picky about performance though, so you won't find any powerline craziness in here!

And go bind your `CapsLock` key to `Esc` for goodness' sake! ([Karabiner](https://pqrs.org/osx/karabiner/) and [Seil](https://pqrs.org/osx/karabiner/seil.html.en))


To use this configuration
----
create your configuration folder
Clone the repo and place it inside your config folder `.config` :
```sh
mkdir -p ${XDG_CONFIG_HOME:=$HOME/.config}
git clone --recursive git@github.com:adictovirtual/nvim.git $XDG_CONFIG_HOME/nvim
```

If you're using neovim, you'll need the python plugins for python-based plugins to work:
if pip is not installed please follow the instrutions in the url  below

https://pip.pypa.io/en/stable/installing/

```sh
pip2 install neovim
pip3 install neovim
```

Open nvim and install plugins (ignore the warning about not finding lucius colors)
```
nvim
(inside nvim)
:PlugInstall
```

This includes the [YouCompleteMe](https://github.com/Valloric/YouCompleteMe) plugin, which requires an extra command to build (see their README for more info):
Plug will compile it automatically, so the first install may take a while.

The editorconfig extension also depends on the external `editorconfig` being available.  You can install it with:
```sh
brew install editorconfig
```


Fonts
----
install the following fonts to get Fonts and icons working well  [Nerd Fonts](https://github.com/ryanoasis/nerd-fonts#usage) .


Colors
----
Old version: Includes [Lucius](https://github.com/spicydonuts/lucius), if you'd like to use it for your terminal as well.  My fork just adds OS X Terminal profiles (iTerm2 is very laggy in my experience).
I now use Solarized Dark by default, though both colorschemes are good.


Thanks
----
Huge thanks to all the plugin authors and StackOverflow answers that made this possible!
