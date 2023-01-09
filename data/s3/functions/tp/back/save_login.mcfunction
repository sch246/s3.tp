
data remove storage temp saveLocation
data modify storage temp saveLocation set from storage temp player_person.player.Location_list[1]
data modify storage temp saveLocation.Name set value '{"text":"登入点","color":"aqua"}'

execute store result storage temp saveLocation.time int 1 run time query gametime


data modify storage temp player_person.back.list append from storage temp saveLocation
execute if data storage temp player_person.back.list[32] run data remove storage temp player_person.back.list[0]


data modify storage temp player_person.back.login.list append from storage temp saveLocation
execute if data storage temp player_person.back.login.list[32] run data remove storage temp player_person.back.login.list[0]
