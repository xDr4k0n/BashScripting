#! /bin/bash


entrata="y"
informazioni="i"
file_info="f"
    echo "|-------------------------------|"
    echo "|   Primo programma su bash che |"
    echo "|offre informazioni.            |"
    echo "|-------------------------------|"
    echo "|   Per visualizzare il menu    |"
    echo "|inserisi >>y<<                 |"
    echo "|                               |"
read entrata_risposta
#------------------------------------------------
if [[ "$entrata" == "$entrata_risposta" ]]
then
    echo "|          Input OK             |"
    echo "|-------------------------------|"
    echo "|       Menu programma          |"
    echo "|[Imformazioni] inserisci >>i<< |"
    echo "|[File info] inserisci    >>f<< |"
    echo "|-------------------------------|"
    echo "|    Inserisci risposta :       |"
    read -s risposta_main_menu
    if [[ "$risposta_main_menu" == "i" ]]
    then
        echo "|             Input OK          |"
        echo "|-------------------------------|"
        echo "|         [Informazioni]        |"
        echo "|-------------------------------|"
        echo "|Bash $BASH                 |"
        echo "|-------------------------------|"
        echo "|PWD  $PWD|"
        echo "|-------------------------------|"
        echo "|User $USER                      |"
        echo "|-------------------------------|"
        echo "|HOME $HOME                     |"
        echo "|-------------------------------|"
    elif [[ "$risposta_main_menu" == "f" ]]
    then
        echo "|           Input OK            |"
        echo "|-------------------------------|"
        echo "|          [File Info]          |"
        echo "|-------------------------------|"
        echo "|1) Per vedere se il file esiste|"
        echo "|         Insert    >> e <<     |"
        echo "|2) Per vedere che tipo di file |"
        echo "|         Insert    >> k <<     |"
        echo "|3)Per vedere se il file evuoto |"
        echo "|         Inserisci >> v <<     |"
        echo "|-------------------------------|"
        echo "|       Inserisci risposta :    |"
        read -s risp_file
        if [[ "$risp_file" == "e" ]]
        then
            echo "|           Input OK            |"
            echo "|-------------------------------|"
            echo "|   Inserisci nome del file     |"
            read file_name_inserito
            if [ -e $file_name_inserito ]
            then
                echo "| Il file e presente            |"
            else
                echo "| File non e presente           |"
            fi 
        elif [ "$risp_file" == "k" ]
        then
            echo "|           Input OK            |"
            echo "|-------------------------------|"
            echo "|   Inserisci nome del file     |"
            read file_name_inserito
            if [ -f $file_name_inserito ]
            then
                echo "| Il file e un text o data      |"
            else
                echo "| File e un block special file  |"
                echo "| Audio, video,imagine o binary |"
            fi 
        elif [[ "$risp_file" == "v" ]]
        then
            echo "|           Input OK            |"
            echo "|-------------------------------|"
            echo "|   Inserisci nome del file     |"
            read file_name_inserito
            if [ -s $file_name_inserito ]
            then
                echo "| Il file non e vuoto.              |"
            else
                echo "| Il file e vuoto.          |"
            fi 
        else
            echo "ciao"
        fi
    else
        echo "ciao"
    fi
else
    echo "ciao"
fi
#------------------------------------------------
