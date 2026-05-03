local I = require("openmw.interfaces")
local self = require("openmw.self")

local deps = require("scripts.RingABell.utils.dependencies")
deps.checkAll("Ring a Bell", { {
    plugin = "Impact Effects.omwscripts",
    interface = I.impactEffects
} })

local bells = {
    ["active_6th_bell_01"] = true,
    ["active_6th_bell_02"] = true,
    ["active_6th_bell_03"] = true,
    ["active_6th_bell_04"] = true,
    ["active_6th_bell_05"] = true,
    ["active_6th_bell_06"] = true,
}

---@param obj GameObject
---@param var any
---@param res RayCastingResult
I.impactEffects.addHitObjectHandler(function(obj, var, res)
    if not bells[obj.recordId] then return end
    obj:activateBy(self)
end)
