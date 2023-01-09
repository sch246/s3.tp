scoreboard players set #touch tmp 1
function s3:tp/warp/operation/portal/set/sign

# 设置marker存储warp
scoreboard players set # tmp 0
execute positioned ~ ~3000 ~ as @e[type=armor_stand,distance=..0.1,tag=warp.portal] run function s3:tp/warp/operation/portal/set/set_marker
execute if score # tmp matches 0 positioned ~ ~3000 ~ run function s3:tp/warp/operation/portal/set/unless_marker
