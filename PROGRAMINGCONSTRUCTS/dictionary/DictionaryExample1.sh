#!/bin/bash -x

declare -A sounds 
sounds[dog]="bark"
sounds[cow]="hhhmmaa"
sounds[bird]="tweet"
sounds[wolf]="aoooowwo"

echo "Dog Sound " ${sounds[dog]} # Dog's sound
echo "All Animals Sound " ${sounds[@]} # All values
echo "Animal "${!sounds[@]} # All keys
echo "Number of Animals " ${#sounds[@]} # Number of elements
unset sounds[dog] # Delete dog
echo "Number of Animals " ${#sounds[@]} # Number of elements

