#Empty strings and strings with spaces are evaluated as false

NAME="John"
if [ "$NAME" = "John" ]; then
    echo "True - my name is indeed John"
fi

NAME="Bill "
if [ "$NAME" = "John" ]; then
    echo "John Lennon"
elif [ "$NAME" = "George" ]; then
    echo "George Harrison"
else
    echo "This leaves us with Paul and Ringo"
fi

if [ "$NAME" = "Bill " ]; then
    echo  "If strings with spaces are evaluated as false, then why is this true?"
fi

a=5
b=4

if [ "$b" -lt "$a" ]; then
    echo  "$b is less than $a"
fi

if [ "$a" -gt "$b" ]; then
    echo  "$a is greater than $b"
fi

if [ "$b" -le "$a" ]; then
    echo  "$b is less than or equal to $a"
fi

if [ "$a" -ge "$b" ]; then
    echo  "$a is greater than or equal to $b"
fi

if [ "$a" -eq "$a" ]; then
    echo  "$a is equal to $a"
fi

if [ "$b" -ne "$a" ]; then
    echo  "$a is not equal to $b"
fi

JOHNNY1="Johnny"
JOHNNY2="Johnny"
BOB="Bob"
EMPTY=""

if [ "$JOHNNY1" = "$JOHNNY2" ]; then
    echo  "$JOHNNY1 is the same as $JOHNNY2"
fi

if [ "$JOHNNY1" == "$JOHNNY2" ]; then
    echo  "$JOHNNY1 is the same as $JOHNNY2"
fi

if [ "$JOHNNY1" != "$BOB" ]; then
    echo  "$JOHNNY1 is different from $BOB"
fi

if [ -z "$EMPTY" ]; then
    echo  "$EMPTY is empty"
fi

if [[ $JOHNNY1 = $JOHNNY2 && $JOHNNY1 != $BOB ]]; then
    echo "The Johnny's are the same but Bob is different"
fi

mycase=3
case $mycase in
    1) echo "You selected bash";;
    2) echo "You selected perl";;
    3) echo "You selected python";;
    4) echo "You selected c++";;
    5) exit
esac