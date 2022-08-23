function kill-vpn () {
	# TODO: Refactor away from legacy `remove` command.
	launchctl remove com.paloaltonetworks.gp.pangps
	launchctl remove com.paloaltonetworks.gp.pangpa
}

function reactivate-vpn () {
	# TODO: Refactor away from legacy `load` command.
	launchctl load /Library/LaunchAgents/com.paloaltonetworks.gp.pangpa.plist
	launchctl load /Library/LaunchAgents/com.paloaltonetworks.gp.pangps.plist
}
