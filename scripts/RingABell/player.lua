local I = require("openmw.interfaces")
local self = require("openmw.self")

local deps = require("scripts.RingABell.utils.dependencies")
deps.checkAll("Ring a Bell", { {
    plugin = "Impact Effects.omwscripts",
    interface = I.impactEffects
} })

local bells = {
    -- vanilla
    ["active_6th_bell_01"]         = true,
    ["active_6th_bell_02"]         = true,
    ["active_6th_bell_03"]         = true,
    ["active_6th_bell_04"]         = true,
    ["active_6th_bell_05"]         = true,
    ["active_6th_bell_06"]         = true,
    -- tamriel data
    ["t_de_setind_f_bellstand_01"] = true,
    ["t_de_setind_f_bellstand_02"] = true,
    ["t_de_setind_f_bellstand_03"] = true,
    ["t_de_setind_f_bellstand_04"] = true,
    ["t_de_setind_f_bellstand_05"] = true,
    ["t_de_setind_f_bellstand_06"] = true,
    ["t_de_setind_f_bellstand_07"] = true,
    ["tr_act_m2-69_bell"]          = true,
    ["tr_m3_oe_act_bell"]          = true,
    -- bell towers of vvardenfell
    ["dm_ex_sur_bell"]             = true,
    ["dm_ex_nosnd_bell"]           = true,
    ["dm_ex_balm2_bell"]           = true,
    ["dm_ex_mora_bell"]            = true,
    ["dm_gna_bell"]                = true,
}

---@param obj GameObject
---@param var any
---@param res RayCastingResult
I.impactEffects.addHitObjectHandler(function(obj, var, res)
    if not bells[obj.recordId] then return end
    obj:activateBy(self)
end)
