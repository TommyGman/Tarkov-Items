ITEM.name = "AI-2 Medikit"
ITEM.model = Model("models/illusion/eftcontainers/ai2.mdl")
ITEM.description = "A standard service first aid kit for various defence and law enforcement agencies, notably the civil defense forces of the USSR. Mass produced, it would have been distributed to the population of the affected areas during wartime."
ITEM.category = "Medical"
ITEM.bDropOnDeath = true

ITEM.functions.Apply = {
	sound = "items/medshot4.wav",
	OnRun = function(itemTable)
		local client = itemTable.player

		client:SetHealth(math.min(client:Health() + 40, client:GetMaxHealth()))
	end
}
