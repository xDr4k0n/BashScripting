#! /bin/bash

#mantieni cursore nella stessa linea
echo -e "Enter the name of the file : \c"
read file_name

#file esiste e se e un file regolare[text o data] 
# [Character special file]
if [ -f $file_name ]
then
    #$file_name esiste!
    if [ -w $file_name ]
    then
        #abbiammo permessi per scrivere in questo file
        echo "Inserisci un po di data dentro al file :"
        echo "(Per chiudere cat premi CTRL+D)"
        cat >> $file_name
        #cat >> scrivi dopo quello che ce dentro
        #cat > sovrascrivi quello che ce dentro
    else
        echo "File non ha permessi per scrivere"
    fi

else
    echo "$file_name non esiste"
fi