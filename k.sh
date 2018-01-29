#!/bin/bash                                                                                                                                                  
                                                                                                                                                             
if [ "$#" -ne 1 ]; then                                                                                                                                      
  echo "Usage: $0 MODULE_NAME" >&2                                                                                                                           
  exit 1                                                                                                                                                     
fi                                                                                                                                                           
                                                                                                                                                             
# Feel free to comment this part                                                                                                                             
#make clean                                                                                                                                                  
make                                                                                                                                                         
                                                                                                                                                             
#clean the log                                                                                                                                               
sudo dmesg -c                                                                                                                                                
                                                                                                                                                             
#remove module if exists                                                                                                                                     
#sudo rmmod -f $1                                                                                                                                            
                                                                                                                                                             
#insert module                                                                                                                                               
sudo insmod $1                                                                                                                                               
                                                                                                                                                             
#print the log                                                                                                                                               
dmesg                                                                                                                                                        
                                                                                                                                                             
#remove the module                                                                                                                                           
sudo rmmod $1                                                                                                                                                
                                                                                                                                                             
                        
