var/datum/antagonist/thrall/vampire_thrall = null

/datum/antagonist/thrall
	id = MODE_THRALL
	role_type = BE_VAMPIRE
	role_text = "thrall"
	role_text_plural = "thralls"
	bantype = "vampires"
	feedback_tag = "thrall_objective"
	restricted_jobs = list("AI", "Cyborg", "Chaplain")
	protected_jobs = list()
	restricted_species = list("Machine")
	welcome_text = "You are a vampire's thrall: a pawn to be commanded by them at will."
	flags = 0
	antaghud_indicator = "hudthrall"

/datum/antagonist/thrall/New()
	..()

	vampire_thrall = src

/datum/antagonist/thrall/update_antag_mob(var/datum/mind/player)
	..()
	player.current.vampire_make_thrall()
