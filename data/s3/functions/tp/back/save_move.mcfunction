
data modify storage temp Location0.Name set value '{"text":"移动点","color":"green"}'

execute store result storage temp Location0.time int 1 run time query gametime


data modify storage temp tp_person.back.list append from storage temp Location0
execute if data storage temp tp_person.back.list[32] run data remove storage temp tp_person.back.list[0]


data modify storage temp tp_person.back.move.list append from storage temp Location0
execute if data storage temp tp_person.back.move.list[32] run data remove storage temp tp_person.back.move.list[0]
function s3:person/write