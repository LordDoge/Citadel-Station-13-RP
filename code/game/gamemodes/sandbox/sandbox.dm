/datum/game_mode/sandbox
	name = "Sandbox"
	config_tag = "sandbox"
	required_players = 0
	votable = 0
	round_description = "Build your own station!"
	extended_round_description = "You can use the sandbox-panel command to access build options."

/datum/game_mode/sandbox/pre_setup()
	for(var/mob/M in player_list)
		M.CanBuild()
	return 1

/datum/game_mode/sandbox/post_setup()
	..()
	if(emergency_shuttle)
		SSemergencyshuttle.auto_recall = 1
