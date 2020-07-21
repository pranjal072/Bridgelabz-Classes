#!/bin/bash
read -p "Enter number (1,10,100,1000...1000000) : " num
case $num in
   1)
      echo "UNIT" ;;
   10)
      echo "TEN" ;;
   100)
      echo "HUNDRED" ;;
   1000)
      echo "THOUSAND" ;;
   10000)
      echo "TEN THOUSAND" ;;
   100000)
      echo "LAKH" ;;
   1000000)
      echo "TEN LAKH" ;;
   *)
      echo "INVALID ENTRY!" ;;
esac
