#!/bin/bash

# Initialize variables
total=0
bill=""

# Define menu items and their prices
menu = ("Veg Biryani:150" "Chicken Biryani:200" "Fish Curry:250" "Butter Naan:30" "Gulab Jamun:50")

# Display the menu
echo "Welcome to Hotel Menu!"
echo "Please select the items you want to order and enter the quantity (press q to quit):"
echo "--------------------------------"

# Loop until the customer quits
while true
do
    # Display the menu items and prices
    for item in "${menu[@]}"
    do
        echo "${item}"
    done

    # Prompt the customer to select an item and enter the quantity
    read -p "Enter the item and quantity (ex: Veg Biryani 2): " order

    # Check if the customer has selected to quit
    if [ "$order" == "q" ]; then
        break
    fi

    # Parse the item and quantity from the customer's input
    item=$(echo $order | awk '{print $1 " " $2}')
    quantity=$(echo $order | awk '{print $3}')

    # Calculate the price of the order
    price=0
    for i in "${menu[@]}"
    do
        if [ "${i%%:*}" == "$item" ]; then
            price=$(echo "${i##*:}*$quantity" | bc)
            break
        fi
    done

    # Add the price of the order to the total bill
    total=$(echo "$total+$price" | bc)

    # Add the order to the bill string
    bill="$bill\n$item x $quantity: $price"
done

# Display the bill if the customer has ordered something
if [ "$bill" != "" ]; then
    echo "-----------------------------"
    echo -e "Your bill is: $total\n$bill"
fi

