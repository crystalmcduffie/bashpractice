#       1234567890123456
STRING="this is a string"
echo ${#STRING}            # 16
#
STRING="this is a string"
SUBSTRING="hat"
expr index "$STRING" "$SUBSTRING"     # 1 is the position of the first 't' in $STRING
#
STRING="this is a string"
POS=1
LEN=3
echo ${STRING:$POS:$LEN}   # his
#
echo ${STRING:1}    # $STRING contents without leading character
echo ${STRING:12}   # ring
#
# Code to extract the First name from the data record
DATARECORD="last=Clifford,first=Johney Boy, state=CA"
COMMA1=`expr index "$DATARECORD" ' , '` #14 poistion of first comma
CHOP1FIELD=${DATARECORD:$COMMA1}
COMMA2=`expr index "$CHOP1FIELD" ' , '` #13 position of first space
LENGTH=`expr $COMMA2 - 6 - 1`
FIRSTNAME=${CHOP1FIELD:6:$LENGTH}
echo $FIRSTNAME
#
#echo $COMMA1 $CHOP1FIELD $COMMA2 $LENGTH
#
STRING="to be or not to be"
#Replace first occurrence of substring with replacement
echo ${STRING[@]/be/eat} #to eat or not to be
#Replace all occurrences of substring
echo ${STRING[@]//be/eat} #to eat or not to eat
#Delete all occurrences of substring (replace with empty string)
echo ${STRING[@]// not/} #to be or to be
#Replace occurrence of substring if at the beginning of $STRING
echo ${STRING[@]/#to be/ eat now} #eat now or not to be
#Replace occurence of substring if at the end of $STRING
echo ${STRING[@]/%be/eat} #to be or not to eat
#Replace occurrence of substring with shell command output
echo ${STRING[@]/%be/be on $(date +%Y-%m-%d)} #to be or not to be on 2021-08-18



