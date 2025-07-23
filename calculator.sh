#!/bin/bash

echo "Enter the first number: "
read num1

echo "Enter the second number: "
read num2

echo "Select an operation (+, -, *, /, %):"
read operation

case "$operation" in
    +)
        result=$((num1 + num2))
        ;;
    -)
        result=$((num1 - num2))
        ;;
    \*)
        result=$((num1 * num2))
        ;;
    /)
        if [ "$num2" -eq 0 ]; then
            echo "Error: Division by zero"
            exit 1
        fi
        result=$((num1 / num2))
        ;;
    %)
        result=$((num1 % num2))
        ;;
    *)
        echo "Invalid operation selected."
        exit 1
        ;;
esac

echo "Result: $result"
