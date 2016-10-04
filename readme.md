What?
=====

	    _                       _
	   (_)                     | |
	    _ _   _ _ __ ___  _ __ | |__   _____  __
	   | | | | | '_ ` _ \| '_ \| '_ \ / _ \ \/ /
	   | | |_| | | | | | | |_) | |_) | (_) >  <
	   | |\__,_|_| |_| |_| .__/|_.__/ \___/_/\_\
	  _/ |               | |
	 |__/                |_|       
	                                by: function61.com



Jumpbox is a tiny container with SSH server (+ client) and tmux.

tmux is to command-line interfaces what a window manager is for GUIs. I highly recommend it.

tmux increased my terminal productivity considerably, plus it lets you resume where you left off if you need
to restart your laptop or your internet connection disconnects you from your SSH session.

See good looking tutorial on tmux: [A tmux Primer](https://danielmiessler.com/study/tmux/)

Running
=======

Run:

	$ docker run -d -p 2222:22 -e "SSH_PUBKEY=..." --name jumpbox joonas/jumpbox:VERSION_TAG

For VERSION_TAG, see [DockerHub](https://hub.docker.com/r/joonas/jumpbox/tags/).
I'm not fond of the "latest" tag as you never know what you'll be getting.

Connect
=======

Now you can connect to the IP of your Docker host on port 2222. The jumpbox listens there.

Then run

	$ tmux
