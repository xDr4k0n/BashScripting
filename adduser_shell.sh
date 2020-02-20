#!/bin/bash

#user_system = 0



if [[ "${UID}" == 0 ]]
then
   echo "You are root."
   #Chiedi Username
   read -p 'Inserisci Nome per nuovo Utenente :' nuovo_utenente
   #Chiedi Nome Reale
   read -p 'Inserisci nome reale Utenente :' COMMENT
   echo "${COMMENT}"
   #Chiedi La password per il nuovo account
   read -p 'Inserisci Password per il nuovo account :' password
   #Creare il user
   #cat /etc/login.defs create_home directory settings
   useradd -c "${COMMENT}" -m "${nuovo_utenente}"
         #useradd
         #-c commento
         #-m forza a creare directory per nuovo user
         #"" argomenti con spazzi
         #'' argomenti senza spazzi
         
         
   #Metti la password del user
   echo "${password}" | passwd --stdio ${nuovo_utenente}
   #Usa output echo "${password}" come standard input
   # | pipe takes output
   #ed usarlo per passwd
   # --stdin per prendere standard input as password
   #dirli a chi prendere standard utenente ${nuovo_utenente}
   
   #Forza di cambiare la password per il
   passwd -e ${nuovo_utenente}
   #primo utilizzo
   
   
else
   echo "You are not root."
   echo "Solo root puo creare utenenti!"
   echo "Exiting program!"
fi

#username :: 1970 giorni:0:
