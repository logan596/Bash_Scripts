    #!/bin/bash
    #
    # This script will ask for couple of parameters
    # and then continue to work depending on entered values
    #

    # Giving the option to user
    zenity --question --text "Do you want to continue?"

    # Checking if user wants to proceed
    [ $? -eq 0 ] || exit 1

    # Letting user input some values
    Ticket_no=$(zenity --entry --title "Entry box" --text "Please, enter the ticket number." --width=300 --height=150)
    Issue=$(zenity --entry --title "Entry box" --text "Please, enter what is the issue." --width=300 --height=150)
   # AGE=$(zenity --entry --title "Entry box" --text "Please, enter your age." --width=300 --height=150)

    # Displaying entered values in information box
    #zenity --info --title "Information" --text "You are ${FIRSTNAME} ${LASTNAME} and you are ${AGE}(s) old." --width=300 --height=100

   echo "${Ticket_no},${Issue}" > /tmp/ticket.xls
    
