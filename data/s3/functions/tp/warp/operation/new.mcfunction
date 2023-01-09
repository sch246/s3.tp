
data remove storage temp Location
data modify storage temp Location set from storage temp tp_person.player.Location_list[1]
data modify storage temp Location.Name set value '{"text":"未命名的传送点"}'
data modify storage temp Location.hover set value '{"text":"我们对此处一无所知"}'
data modify storage sys warp.list append from storage temp Location
function s3:tp/warp/refresh