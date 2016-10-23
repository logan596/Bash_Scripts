#!/bin/bash

#sending mail on every month for no-leave-taken.

Month=`date +%Y`
Year=`date +%b`

thunderbird -compose "to=ajagtap@aurusinc.com,cc=sambekar@aurusinc.com,subject='No leave Taken in $Month-$Year',body='Hi Anjali,

I have not taken any leaves in this month, so request you please canceled all the leaves.


Hello Sandeep sir,

Please approve the same.'"


#thunderbird -compose "to='john@example.com,kathy@example.com',cc='britney@example.com',subject='dinner',body='How about dinner tonight?',attachment='C:\temp\info.doc,C:\temp\food.doc'" 
