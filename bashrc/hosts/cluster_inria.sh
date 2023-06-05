WORKDIR=/home/rsartori/THESE
STOREDIR=/beegfs/rsartori
alias cds="cd $STOREDIR"
export LIBS_DIR=${STOREDIR}/LIBS

case $HOSTNAME in

	devel*)
		DEFAULT_PART="routage -C bora"
		DEFAULT_TIME="12:00:00"
		;;

	miriel* | bora*)
		export LLVM_HOME=${LIBS_DIR}/llvm-15/install
		export MPI_HOME=${LIBS_DIR}/OPENMPI/openmpi-4.1.5/install
		module load compiler/gcc/12.2.0 hardware/hwloc build/cmake
		;;

esac
