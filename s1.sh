#!/bin/bash

echo "Enter your salary:"
read salary

if [ $salary -lt 10000 ]; then
    echo "No tax"
elif [ $salary -ge 10000 ] && [ $salary -lt 25000 ]; then
    tax=$(echo "scale=2; $salary * 0.05" | bc)
    echo "5% tax is included. Tax amount: $tax"
else
    tax=$(echo "scale=2; $salary * 0.10" | bc)
    echo "10% tax is included. Tax amount: $tax"
fi

