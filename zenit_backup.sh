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
    FIRSTNAME=$(zenity --entry --title "Entry box" --text "Please, enter your first name." --width=300 --height=150)
    LASTNAME=$(zenity --entry --title "Entry box" --text "Please, enter your last name." --width=300 --height=150)
    AGE=$(zenity --entry --title "Entry box" --text "Please, enter your age." --width=300 --height=150)

    # Displaying entered values in information box
    zenity --info --title "Information" --text "You are ${FIRSTNAME} ${LASTNAME} and you are ${AGE}(s) old." --width=300 --height=100
