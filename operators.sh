A=3
B=$((100 * $A + 5))
C=$((100 * $A -5))
D=$(($B/$C))
E=$(($A%$B))
F=$(($E**$E))

echo ${B}, $C, $D, $E, $F

COST_PINEAPPLE=50

COST_BANANA=4

COST_WATERMELON=23

COST_BASKET=1

TOTAL=$(($COST_BASKET+(1*$COST_PINEAPPLE)+(2*$COST_BANANA)+(3*$COST_WATERMELON)))

echo "Total Cost is $TOTAL"