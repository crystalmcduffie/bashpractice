STRING="this is a string"
echo ${#STRING}

SUBSTRING="hat"
#expr index $STRING $SUBSTRING

expr geekss : geek

STRING="this is a string"
POS=1
LEN=3
echo ${STRING:$POS:$LEN}   # his

STRING="this is a string"
echo ${STRING:1}           # $STRING contents without leading character
echo ${STRING:12}          # ring

# Code to extract the First name from the data record
DATARECORD="last=Clifford,first=Johnny Boy,state=CA"
COMMA1=`expr index "$DATARECORD" ','`  # 14 position of first comma
CHOP1FIELD=${DATARECORD:$COMMA1}       #
COMMA2=`expr index "$CHOP1FIELD" ','`
LENGTH=`expr $COMMA2 - 6 - 1`
FIRSTNAME=${CHOP1FIELD:6:$LENGTH}      # Johnny Boy
echo $FIRSTNAME