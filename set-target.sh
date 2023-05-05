Target.sh          [----]  2 L:[  1+ 3   4/ 28] *(71  / 768b) 0104 0x068                                                                                            [*][X]

# set data IP in ip1.txt, machinename in machinename.txt for use in another scripts.-
# iptargeted.txt for read from I3 bar indicator, to show IP and name of targeted machine.
# export ip value to IP1

clear                                                                                                                                                                     
echo -e "\n\t Target Machine IP: \c"                                                                                                                     
read IP1                                                                                                                                                                  
echo -e "\n\t Machine Name: \c"                                                                                                                        
read  MachineName                                                                                                                                                         
echo $IP1 > ~/.config/bin/ip1.txt                                                                                                                                         
echo $MachineName" "$IP1 > ~/.config/bin/iptargeted.txt                                                                                                                   
echo $MachineName > ~/.config/bin/Machinename.txt                                                                                                                         
echo -e "\n\t Try if online with ICMP? (y/n): \c"                                                                                                
read Reply                                                                                                                                                                
                                                                                                                                                                          
                                                                                                                                      
                                                                                                                                                                          
if [[ $Reply =~ ^[Yy]$ ]]                                                                                                                                                 
then                                                                                                                                                                      
    Resultstring=$(ping -c1 $IP1 |(awk '/packet|ttl/'; $2  awk -F '[:=]'  'NR!=1 {print $5}'))                                                                            
                                                                                                                                                          
        if [[ $Resultstring == *"0% packet loss"* ]]                                                                                                              
        then                                                                                                                                                      
            echo -e "\n\t Machine online \n";                                                                                                          
        else                                                                                                                                                      
            echo -e "\n\t Machine no ICMP request \n"<----->                                                                                  
        fi                                                                                                                                                        
else  echo -e "\n\t --xxx---\n"                                                                                                                                   
                                                                                                                                                                       
fi                                                                                                                                                                        
export IP1=$IP1                                                                                                                                                           
                       
