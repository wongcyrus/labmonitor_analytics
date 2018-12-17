read -r -p "Are You Sure? [Y/n] " input
 
case $input in
    [yY][eE][sS]|[yY])
 echo "Yes"
sleep 10
aws cloudformation delete-stack --stack-name $STACK_NAME --region $REGION
 ;;
 
 
    [nN][oO]|[nN])
 echo "No"
       ;;
 
    *)
 echo "Invalid input..."
 exit 1
 ;;
esac


