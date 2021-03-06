## Dave Sullivan's Linux Config Files

I end up needing these every time I install a fresh linux system. These are config files I use for vim, tmux, i3gaps, and compton. 

They are decent config files, I think, honed after years of use. They are tailored to the way I work, so your mileage may vary.

### Requirements

#### tmux
The tmux config provided should pretty much just work. Put it in your home directory and call it ```.tmux.conf``` (notice the pre-pended dot)

#### vim
You need to install vundle for the plugins to work. Otherwise just rename it to ```.vimrc``` and put it in your home directory.

#### i3gaps
You'll need to install i3gaps. I3gaps is a fork of i3 that does everything i3 does but adds GAPS (such as those seen in AwesomeWM) around the window panels. This lets you see more of the desktop background and gives it a unique minimalist-but-functional look.

The i3 folder in this repo should be moved to your home directory and renamed ```.i3```

Also install ```feh``` and ```pasystray``` because they are used to change the background (which you should change to one of your choice) and adjust audio from the system tray (respectively).

#### compton
Compton is like compiz but not. I use it for window transparency effects. 
When you switch selected panels in i3, it adjusts the transparency of the inactive windows and dims them a bit. 

It's a pretty cool and practical effect, particularly if you're making the bold decision to go "borderless" in i3. Totally bad ass. Worth setting up. 

*Note: The i3config restarts compton for you and reloads its config file every time you reload i3 (as opposed to only starting it at login).*

#### rofi
You'll want to install rofi because that's what I use instead of dmenu in my i3 config. Rofi is a search-as-you-type program launcher kind of like OSX spotlight.
