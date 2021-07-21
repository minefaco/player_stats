--definicion de variable global
player_stats = {}
modpath = minetest.get_modpath("player_stats")
dofile(modpath.."/functions.lua")

--Definir nuevos atributos para jugadores nuevos
minetest.register_on_newplayer(function(player)
    local meta = player:get_meta()
    meta:set_int("max_hp",player:get_hp())
    meta:set_int("max_breath",player:get_breath())
    meta:set_int("lvl",1) --falta implementar
    meta:set_int("sp",0)  --falta implementar
    meta:set_int("last_lvl",1) --falta implementar
    meta:set_int("exp",0)   --falta implementar
    meta:set_float("stamina",20)
    meta:set_float("vel",1)
    meta:set_float("jump",1)

    if minetest.get_modpath("hbsprint") then
       --meta
    end
    
end)

minetest.register_on_joinplayer(function(player)

player_stats.set_stats(player)

end)



minetest.register_chatcommand("hp", {
    func = function(name)
        player = minetest.get_player_by_name(name)
        player_stats.increase_max_hp(player)
        player_stats.increase_max_breath(player)
        player_stats.increase_max_vel(player)
        player_stats.increase_max_jump(player)
        player_stats.set_stats(player)   
    end,
})

