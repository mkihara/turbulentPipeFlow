#!/bin/sh
cd "${0%/*}" || exit                                # Run from this directory
. ${WM_PROJECT_DIR:?}/bin/tools/CleanFunctions      # Tutorial clean functions
#------------------------------------------------------------------------------

foamListTimes -rm -withZero
cleanPostProcessing
cleanPolyMesh
rm -rf processor*

rm -f log.* system/blockMeshDict
