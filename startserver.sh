#!/bin/bash

JAR=spigot-1.17.1.jar
MAXRAM=2048M
MINRAM=2048M
TIME=20

while [ true ]; do
	    java -Xmx$MAXRAM -Xms$MINRAM -jar $JAR nogui
	        if [[ ! -d "exit_codes" ]]; then
			        mkdir "exit_codes";
    fi
        if [[ ! -f "exit_codes/server_exit_codes.log" ]]; then
		        touch "exit_codes/server_exit_codes.log";
			    fi
 echo "[$(date +"%d.%m.%Y %T")] ExitCode: $?" >> exit_codes/server_exit_codes.log
     echo "----- Press enter to prevent the server from restarting in $TIME seconds -----";
     read -t $TIME input;
         if [ $? == 0 ]; then
		         break;
		 else
			         echo "------------------- SERVER RESTARTS -------------------";
				     fi
			     done

