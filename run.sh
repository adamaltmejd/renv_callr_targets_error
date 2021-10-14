#!/usr/bin/env bash

printf "This script moves home directory .Rprofile and .Renviron files temporarily.\n"
read -n 1 -s -r -p "Press any key to continue."

if [ -f ~/.Rprofile ]; then
    printf "\nmoving ~/.Rprofile to ~/.Rprofile_old"
    mv ~/.Rprofile ~/.Rprofile_old
fi

if [ -f ~/.Renviron ]; then
    printf "\nmoving ~/.Renviron to ~/.Renviron_old"
    mv ~/.Renviron ~/.Renviron_old
fi

printf "\n\n\nSimulating first error:\n"
read -n 1 -s -r -p "Press any key to continue."
printf "\n\n"
cp Renviron_error1 ~/.Renviron
Rscript -e "callr::r(function() TRUE, show = TRUE)"

printf "\n\n\nSimulating second error:\n"
read -n 1 -s -r -p "Press any key to continue."
printf "\n\n"
cp Renviron_error2 ~/.Renviron
Rscript -e "callr::r(function() TRUE, show = TRUE)"

printf "\nMoving old ~/.Rprofile and ~/.Renviron back.\n"
rm ~/.Renviron
mv ~/.Rprofile_old ~/.Rprofile
mv ~/.Renviron_old ~/.Renviron
