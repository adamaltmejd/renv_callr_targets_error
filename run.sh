#!/usr/bin/env bash
mv ~/.Renviron ~/.Renviron_old
cp Renviron_error1 ~/.Renviron

mv ~/.Rprofile ~/.Rprofile_old
cp Rprofile_empty ~/.Rprofile

Rscript rscript.R

cp Renviron_error2 ~/.Renviron

Rscript rscript.R