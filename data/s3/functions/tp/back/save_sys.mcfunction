
data remove storage temp saveLocation
data modify storage temp saveLocation set from storage temp tp_person.player.Location_list[1]
data modify storage temp saveLocation.Name set value '{"text":"系统传送","color":"yellow"}'

execute store result storage temp saveLocation.time int 1 run time query gametime


data modify storage temp tp_person.back.list append from storage temp saveLocation
execute if data storage temp tp_person.back.list[32] run data remove storage temp tp_person.back.list[0]


data modify storage temp tp_person.back.sys.list append from storage temp saveLocation
execute if data storage temp tp_person.back.sys.list[32] run data remove storage temp tp_person.back.sys.list[0]
