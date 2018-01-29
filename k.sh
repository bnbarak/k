#!/bin/bash                                                                                                                                                  
                                                                                                                                                             
if [ "$#" -ne 1 ]; then                                                                                                                                      
  echo "Usage: $0 MODULE_NAME" >&2                                                                                                                           
  exit 1                                                                                                                                                     
fi                                                                                                                                                           
                                                                                                                                                             
# Feel free to comment this part                                                                                                                             
#make clean                                                                                                                                                  
make                                                                                                                                                         
                                                                                                                                                             
                                                                                                                                                             
#remove module if exists                                                                                                                                     
                                                                                                                                                             
#insert module                                                                                                                                               
sudo insmod $1                                                                                                                                               
                                                                                                                                                                                                                                                                                                                    
                                                                                                                                                             
#remove the module                                                                                                                                           
sudo rmmod -f $1                                                                                                                                                
                                                                                                                                                             
                                                                                                                                                             
#clean and print the log                                                                                                                                               
sudo dmesg -c                                                                                                                                                          
