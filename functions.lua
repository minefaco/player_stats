--Establecer/actualizar estadisticas al conectarse.
player_stats.set_stats = function(player)
    local meta = player:get_meta()
    player:set_properties({
        hp_max = meta:get_int("max_hp"),
        breath_max = meta:get_int("max_breath")
    })
    player:set_physics_override({
        --gravity = 1,
        jump = meta:get_float("jump"),
        speed = meta:get_float("vel")
        })
minetest.chat_send_all("jump: "..meta:get_float("jump"))
minetest.chat_send_all("vel: "..meta:get_float("vel"))
end

--Incrementar el hp
player_stats.increase_max_hp = function(player)
    local meta = player:get_meta()
    local valor = meta:get_int("max_hp")+1
    meta:set_int("max_hp",valor)
end

--Incrementar el aliento
player_stats.increase_max_breath = function(player)
    local meta = player:get_meta()
    local valor = meta:get_int("max_breath")+1
    meta:set_int("max_breath",valor)
end

--Incrementar velocidad
player_stats.increase_max_vel = function(player)
    local meta = player:get_meta()
    local valor = meta:get_float("vel")+0.1
    meta:set_float("vel",valor) 
end

--Incrementar salto
player_stats.increase_max_jump = function(player)
    local meta = player:get_meta()
    local valor = meta:get_float("jump")+0.1
    meta:set_float("jump",valor)   
end

--

