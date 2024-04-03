#!/bin/bash
echo -e '\n\n----CipherCalc----\n\n'

#Entropy
echo "Password entropy formula: log_2(S^L)"
echo -e 'Time until guaranteed brute-force crack formula: (2^entropy)/(guesses per second)\n'
echo "Enter symbol pool (S): "
read symbolPool
echo "Enter password lenght (L): "
read lengthPass
entropy=`echo "scale=4;(l($symbolPool^($lengthPass))/l(2))" | bc -l`
echo -e '\n'

#Time
#Since bc sends a warning because it cannot compute decimal exponents we have to use => x^y as e(y*ln(x)) => 2^entropy = e($entropy*l(2))
timeA=`echo "(e($entropy*l(2))/(100000))/(31536000)" | bc -l | xargs printf "%'2f\n"`
timeB=`echo "(e($entropy*l(2))/(1000000))/(31536000)" | bc -l | xargs printf "%'2f\n"`
timeC=`echo "(e($entropy*l(2))/(10000000))/(31536000)" | bc -l | xargs printf "%'2f\n"`
timeD=`echo "(e($entropy*l(2))/(100000000))/(31536000)" | bc -l | xargs printf "%'2f\n"`
timeE=`echo "(e($entropy*l(2))/(1000000000))/(31536000)" | bc -l | xargs printf "%'2f\n"`
timeF=`echo "(e($entropy*l(2))/(10000000000))/(31536000)" | bc -l | xargs printf "%'2f\n"`
timeG=`echo "(e($entropy*l(2))/(100000000000))/(31536000)" | bc -l | xargs printf "%'2f\n"`
timeH=`echo "(e($entropy*l(2))/(1000000000000))/(31536000)" | bc -l | xargs printf "%'2f\n"`

#Results
echo -e '--------------------Results--------------------\n'
echo "1) Password entropy: $entropy"
echo "2) Time until guaranteed brute-force crack: "
echo "------at 100.000 guesses per second: $timeA years"
echo "------at 1.000.000 guesses per second: $timeB years"
echo "------at 10.000.000 guesses per second: $timeC years"
echo "------at 100.000.000 guesses per second: $timeD years"
echo "------at 1.000.000.000 guesses per second: $timeE years"
echo "------at 10.000.000.000 guesses per second: $timeF years"
echo "------at 100.000.000.000 guesses per second: $timeG years"
echo "------at 1.000.000.000.000 guesses per second: $timeH years"
