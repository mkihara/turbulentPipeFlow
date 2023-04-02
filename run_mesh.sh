#!/bin/sh
cd "${0%/*}" || exit                                # Run from this directory
. ${WM_PROJECT_DIR:?}/bin/tools/RunFunctions        # Tutorial run functions
#------------------------------------------------------------------------------

m4 system/blockMeshDict.m4 > system/blockMeshDict
runApplication blockMesh
runApplication decomposePar
restore0Dir -processor
runParallel renumberMesh -overwrite
runParallel applyBoundaryLayer -Cbl 3
runParallel checkMesh -constant
