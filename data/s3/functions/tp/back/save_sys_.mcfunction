function s3:person/read

data remove storage temp saveLocation
data modify storage temp saveLocation set from storage temp person.read.player.Location_list[1]
data modify storage temp saveLocation.Name set value '{"text":"系统传送","color":"yellow"}'

execute store result storage temp saveLocation.time int 1 run time query gametime


data modify storage temp person.read.back.list append from storage temp saveLocation
execute if data storage temp person.read.back.list[32] run data remove storage temp person.read.back.list[0]


data modify storage temp person.read.back.sys.list append from storage temp saveLocation
execute if data storage temp person.read.back.sys.list[32] run data remove storage temp person.read.back.sys.list[0]

data remove storage temp person.write
data modify storage temp person.write set from storage temp person.read
function s3:person/write