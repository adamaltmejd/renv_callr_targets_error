#!/usr/bin/env bash
mv ~/.Rprofile ~/.Rprofile_old
mv ~/.Renviron ~/.Renviron_old

cp Renviron_error1 ~/.Renviron
Rscript -e "callr::r(function() TRUE, show = TRUE)"

cp Renviron_error2 ~/.Renviron
Rscript -e "callr::r(function() TRUE, show = TRUE)"