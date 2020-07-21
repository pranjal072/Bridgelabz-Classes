#!/bin/bash
money=100
wintrack=0
losetrack=0
betnum=0
while [ 1 ]
do
	bet=$((RANDOM%2))
	((betnum++))
	if [ $bet -eq 0 ]
	then
		((losetrack++))
		((money-=10))
		echo "YOU LOSE"
	else
		((wintrack++))
		((money+=10))
		echo "YOU WIN"
	fi
	echo "BALANCE : $money"
	if [ $money -eq 0 ] || [ $money -eq 200 ]
	then
		break
	fi
done
if [ $money -eq 0 ]
then
        echo "You lost all your money - BALANCE = $money"
else
        echo "You have reached your goal - BALANCE = $money"
fi

echo "TOTAL BETS: $betnum ( WINS: $wintrack | LOSES: $losetrack )"
