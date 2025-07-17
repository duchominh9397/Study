#!/bin/bash

echo "Please select a practice script to run:"
echo "1 - practices1"
echo "2 - practices2"
echo "3 - practices3"
echo "4 - practices4"
echo "5 - practices5"
echo "6 - practices6"
echo "7 - practices7"
echo "8 - practices8"
echo "9 - practices9"
echo "10 - practices10"
echo "11 - practices11"
echo "12 - practices12"
echo ""

read -p "Enter the practice number: " number
read -p "Enter arguments (if any): " args

case $number in
  1) ./practices1.sh $args ;;
  2) ./practices2.sh $args ;;
  3) ./practices3.sh $args ;;
  4) ./practices4.sh $args ;;
  5) ./practices5.sh $args ;;
  6) ./practices6.sh $args ;;
  7) ./practices7.sh $args ;;
  8) ./practices8.sh $args ;;
  9) ./practices9.sh $args ;;
  10) ./practices10.sh $args ;;
  11) ./practices11.sh $args ;;
  12) ./practices12.sh $args ;;
  *) echo "Invalid selection. Please enter a number from 1 to 12." ;;
esac
