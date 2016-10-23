#!/bin/bash

TMOUT=5    # Prompt times out at three seconds.
echo "Time out in $TMOUT seconds"
echo "What is your favorite song?"
echo "Quickly now, you only have $TMOUT seconds to answer!"
read song

if [ -z "$song" ]
then
  song="(No answer)"
  # Default response.
fi

echo "song is $song"
