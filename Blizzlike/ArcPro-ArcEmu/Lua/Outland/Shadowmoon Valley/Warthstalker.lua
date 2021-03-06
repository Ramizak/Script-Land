--[[ WoTD License - 
This software is provided as free and open source by the
team of The WoTD Team. This script was written and is
protected by the GPL v2. Please give credit where credit
is due, if modifying, redistributing and/or using this 
software. Thank you.
Thank: WoTD Team; for the Script
~~End of License... Please Stand By...
-- WoTD Team, Janurary 19, 2010. ]]

function Wrathstalker_OnEnterCombat(Unit,Event)
	Unit:RegisterEvent("Wrathstalker_Cleave", 11000, 0)
end

function Wrathstalker_Cleave(Unit,Event)
	Unit:FullCastSpellOnTarget(33805, Unit:GetClosestPlayer())
end

function Wrathstalker_OnLeaveCombat(Unit,Event)
	Unit:RemoveEvents()
end

function Wrathstalker_OnDied(Unit,Event)
	Unit:RemoveEvents()
end

RegisterUnitEvent(21249, 1, "Wrathstalker_OnEnterCombat")
RegisterUnitEvent(21249, 2, "Wrathstalker_OnLeaveCombat")
RegisterUnitEvent(21249, 4, "Wrathstalker_OnDied")