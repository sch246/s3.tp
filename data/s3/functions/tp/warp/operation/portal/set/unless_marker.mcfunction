summon armor_stand ~ ~ ~ {Tags:["warp.portal","tmp"],Marker:1b}
execute positioned ~ ~ ~ as @e[type=armor_stand,distance=..0.1,tag=tmp,limit=1] run function s3:tp/warp/operation/portal/set/set_marker