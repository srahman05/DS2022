#!/bin/bash

clear
echo "Let's build a mad-lib!"

read -p "1. Come up with a unique country name: " NOUN1
read -p "2. Name a strange food/dish: " NOUN2
read -p "3. Name a city in the U.S.A.: " NOUN3
read -p "4. Name an exercise movement: " VERB1
read -p "5. Name a sunset color: " ADJECTIVE1
read -p "6. Give a word to describe trash: " ADJECTIVE2
read -p "7. Give an action word to describe a superhero: " VERB2 
read -p "8. The cat moved ___ly around the house: " ADVERB1 

echo "Once upon a time, in the faraway land of $NOUN1, there was a special dish called $NOUN2. People traveled all the way from $NOUN3 just to try it."
echo "One day, a famous athlete came to $NOUN1 and challenged the locals to a $VERB1 contest at sunset. The sky was glowing $ADJECTIVE1, setting the perfect backdrop for an epic showdown."
echo "But not all was well in $NOUN1. The streets were becoming $ADJECTIVE2, and the people needed a hero. Then came Super Cat, who could $VERB2 like no one else. With great speed, Super Cat moved $ADVERB1 through the town, saving the day!"
echo "And so, $NOUN1 was restored to its former glory, thanks to Super Cat and the legendary $NOUN2."
