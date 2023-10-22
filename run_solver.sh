#!/bin/sh
cd "${0%/*}" || exit                                # Run from this directory
. ${WM_PROJECT_DIR:?}/bin/tools/RunFunctions        # Tutorial run functions
#------------------------------------------------------------------------------

rm -f log.$(getApplication) log.setExprFields log.decomposePar
rm -rf processor*

restore0Dir
runApplication setExprFields -time 0
runApplication decomposePar

runParallel -a $(getApplication)

#------------------------------------------------------------------------------
