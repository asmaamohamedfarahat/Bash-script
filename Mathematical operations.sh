#!/bin/bash
# نطلب الرقم الأول
read -p "Enter the first number: " num1
# نطلب الرقم الثانى
read -p "Enter the second number: " num2
# نطلب العملية الحسابية 
read -p "Enter operator (+, -, *, /): " op
# نفحص العملية ونحسب
if [ "$op" = "+" ]; then
    result=$((num1 + num2))
elif [ "$op" = "-" ]; then
    result=$((num1 - num2))
elif [ "$op" = "*" ]; then
    result=$((num1 * num2))
elif [ "$op" = "/" ]; then
    if [ $num2 -eq 0 ]; then
        echo "Error: Cannot divide by zero!"
        exit 1
    else
        result=$((num1 / num2))
    fi
else
    echo "Invalid operator!"
    exit 1
fi
# نطبع النتيجة
echo "Result: $result"
