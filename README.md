John Hardy's VIM
============================

My personal VIM setup I've accumulated since around 2009 when vim became my default ~~editor~~ tool of choice.  
I'd drive my car with vim motions if it were possible .....  
Neovim w/pathogen is the current flavor of vim I'm using.  
All of my plugins/lang-defs of choice are referenced as http(s) git-submodules ( http enableds fetching without needing SSH creds configured )  
The `local-setup.sh` script will init+pull the submodules and link the directories and .vimrc file to the user in-scope and backup any
files/paths it's replacing in ~/jch-vim-baks folder.  
There is also a Docker container that bootstraps my setup and runs nvim. The `nvim` script will handle using this setup.  


```bash
./nvim dir-or-file-to-edit
```

I like using my vim in Docker as it's portable ( as long as docker is installed ) and allows me to setup my env with all the tools/builder/etc I'm interested in using.  
I'll usually create a separate branch for a more focused setup.  
Write now the default config is more focused on python as that's what I find myself editing daily.  
I hope this will serve as an example for somebody curious or enthusiastic about using vim as I've benefited much from the community and have stumbled accross things that I still use to this day.  
Have a question? Feel free to reach me at my website https://johnchardy.com  

Thank you to all the people that have developed the plugins/lang-defs I use, your work is much appreciated  

-JH  
`:wqa`
