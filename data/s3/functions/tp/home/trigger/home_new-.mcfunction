
data remove storage temp Location
data modify storage temp Location set from storage temp tp_person.player.Location_list[1]

# 清除视角
data remove storage temp Location.Rotation

data modify storage temp Location.Name set value '{"text":"未命名的传送点"}'
data modify storage temp Location.hover set value '{"text":"无介绍"}'
data modify storage temp tp_person.home.list append from storage temp Location
function s3:tp/home/refresh