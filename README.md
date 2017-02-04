Jumpbox
=======

Jumpbox is a tiny container with SSH server (+ client) and tmux.

tmux is to command-line interfaces what a window manager is for GUIs. I highly recommend it.

tmux increased my terminal productivity considerably, plus it lets you resume where you left off if you need
to restart your laptop or your internet connection disconnects you from your SSH session.

See good looking tutorial on tmux: [A tmux Primer](https://danielmiessler.com/study/tmux/)

```
    _                       _
   (_)                     | |
    _ _   _ _ __ ___  _ __ | |__   _____  __
   | | | | | '_ ` _ \| '_ \| '_ \ / _ \ \/ /
   | | |_| | | | | | | |_) | |_) | (_) >  <
   | |\__,_|_| |_| |_| .__/|_.__/ \___/_/\_\
  _/ |               | |
 |__/                |_|       
                                by: function61.com
```


Running
-------

Run:

```
$ docker run -d -p 2222:22 -e "SSH_PUBKEY=..." --name jumpbox fn61/jumpbox:VERSION_TAG
```

For VERSION_TAG, see [DockerHub](https://hub.docker.com/r/fn61/jumpbox/tags/).
I'm not fond of the "latest" tag as you never know what you'll be getting.


Connect
-------

Now you can connect with SSH to the IP of your Docker host on port 2222.

Then run:

```
$ tmux attach
```

(or if you are connecting first time, i.e. nothing to attach to, run just `$ tmux`)


Commands
--------

tmux is configured with non-default hotkey: `Ctrl + a`.

How to read the table below: for `New window` your command is `Hotkey + c` => `Ctrl + a + c`
(hit `Ctrl + a`, release both keys and then `c`).

|          |                                                 |                        | 
|----------|-------------------------------------------------|------------------------| 
| Category | Command                                         | Shortcut: Hotkey + KEY | 
| window   | New window                                      | c                      | 
| window   | Destroy window by destroying all panels in it.. |                        | 
| window   | Rename                                          | ,                      | 
| session  | New                                             | :new                   | 
| session  | Rename                                          | :rename                | 
| session  | Detach ("exit from tmux")                       | d                      | 
| session  | Switch between sessions                         | s                      | 
| panel    | Destroy panel                                   | x                      | 
| panel    | Split vertically                                | ”                      | 
| panel    | Split horizontally                              | %                      | 
| panel    | Change between visible panels                   | arrow keys             | 
| panel    | History: page up                                | page up                | 
| panel    | History: page down                              | page down              | 



For more complete cheat sheet, go to [tmuxcheatsheet.com](https://tmuxcheatsheet.com/)


Support / contact
-----------------

Basic support (no guarantees) for issues / feature requests via GitHub issues.

Paid support is available via [function61.com/consulting](https://function61.com/consulting/)

Contact options (email, Twitter etc.) at [function61.com](https://function61.com/)
