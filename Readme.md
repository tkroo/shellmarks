Shellmarks
=====
### This my hacking on [shellmarks](https://github.com/Bilalh/shellmarks) to work with zsh. I recommend using [zshmarks](https://github.com/jocelynmallon/zshmarks)

`shellmarks` is a shell script that allows you to save and jump to commonly used directories with tab completion.

Works well with both `bash` and `zsh`.

Install
-------

1. git clone git://github.com/Bilalh/shellmarks.git
2. cd `shellmarks`
2. make install (or just source shellmarks.sh  )
3. source `~/.local/bin/shellmarks.sh` from within your `~.bash_profile` or `~/.bashrc` (or `.zshrc` for zsh)

Usage
-----

    s <bookmark_name>     - Saves the current directory as "bookmark_name"
    smgo <bookmark_name>  - Goes (cd) to the directory associated with "bookmark_name"
    d <bookmark_name>     - Deletes the bookmark
    lsm <bookmark_name>   - Lists the specified bookmark associated with "bookmark_name"
    lsm                   - Lists all available bookmarks
    g                     - an alias for smgo


Additional Features
-----------------

    pd <bookmark_name>  - `pushd` to the directory associated with "bookmark_name"
    _p <bookmark_name>  - Prints the directory associated with "bookmark_name"
    s                   - Saves the default directory
    smgo                - Goes to the default directory
    smgo -              - Goes to the previous directory
    o <bookmark_name>   - Open the directory associated with "bookmark_name" using xdg-open
    g                   - default alias for smgo (see Environment variables)

    # Mac OS X Only
    o <bookmark_name>   - Open the directory associated with "bookmark_name" in Finder
    y <bookmark_name>   - Open the directory associated with "bookmark_name" in a new tab


Example
-------

    $ cd /var/www/
    $ s webfolder
    $ cd /usr/local/bin/
    $ s localbin
    $ lsm
    webfolder	 /var/www/
    localbin	 /usr/local/bin/
    $ smgo web<tab>
    $ smgo webfolder      # cd to /var/www/
    $ o webfolder         # Open in file manager (Finder if on a mac)



bookmarks storage
--------------------------
Stored `~/.sdirs` by default.

Set `SDIRS` to use custom location


Environment variables
--------------------

Set `SHELLMARKS_ITERM_SESSION` to a session name to change the session that is launched when using `y` in iTerm2 on `osx`

If `SHELLMARK_PWD` is set, `pwd` is executed after `smgo` and `pd`

Set `SHELLMARKS_ALIAS` to use your own alias. Default is `g`

Based Off
---------

Based off [bashmarks](https://github.com/huyng/bashmarks) by [huyng](https://github.com/huyng/)
