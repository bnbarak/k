# k - Simple Linux Kernal Module Deployment

### Install 
1. Copy k.sh to home directory `~/`.
2. Run `chmod +x ~/k.sh` 
3. Add `alias k='~/k.sh'` to `~/.bashrc`
4. Source `source ~/.bashrc`

### Usage
`$ k simple.ko`

### Description
Read module name from user
1.  Build using `make`, unload a module if alreasy loaded
2.  Clear the kernal log 
3.  Load the module
4.  Unload module
5.  Print and clear the kernal log


### Collaboration
Please enjoy this .sh file and feel free add/change by using pull-request.

### Licence
[MIT](https://opensource.org/licenses/MIT)
