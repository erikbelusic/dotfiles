########################################
# Pipe an echo to me!
# Will string in a selected color
# Globals:
#   None
# Arguments:
#   ${1} [red][green][yellow][blue],
#		 [magenta][cyan]
#	${2} [bold]
# Returns:
#   None
# Examples:
#	echo "I will be red" | colorize red
#	echo "I will be bold blue" | colorize blue bold
#
# NOTE - bold was disabled because tput srg0 wasnt working
#
########################################
colorize(){
	if [[ ($# -ne 1) && ($# -ne 2) ]]; then
		cat
		return
	fi

	local red=`tput setaf 1`
	local green=`tput setaf 2`
	local yellow=`tput setaf 3`
	local blue=`tput setaf 4`
	local magenta=`tput setaf 5`
	local cyan=`tput setaf 6`
	local reset=`tput setaf 7`
	#local bold=""
	local color=\$${1:-reset}
#	if [[ "${2}" == "bold" ]]; then
#		bold=`tput bold`
#	fi

	# Activate color passed as argument
	########################################
	echo -ne "`eval echo ${color}${bold}`"

	# Read stdin (pipe) and print from it
	########################################
	cat

	# Reset back to normal
	########################################
	#echo -ne "`${reset}`"
}