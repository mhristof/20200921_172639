1. Adjust the makefile to mount a directory that has projects to `~/code` inside the container
1. Run `make run`
2. You are now in a bash shell inside a container. Install the plugins required with `vim +PluginInstall +qall`
3. Start vim with `vim`
4. Start the plugin with `FzfSwitchProject`
5. Select a project and watch the error 

```
Error detected while processing function FzfSwitchProject[4]..fzf#run[63]..<SNR>14_callback:
line   21:
Vim:E488: Trailing characters:       FzfChooseProjectFile()
Press ENTER or type command to continue
```
