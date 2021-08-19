function function_B {
    echo "Function B."
}

function function_A {
    echo "$1"
}

function adder {
    echo "$(($1 + $2))"
}

#Pass parameter to function A
function_A "Function A."
function_B
#Pass two parameters to function adder
adder 12 56