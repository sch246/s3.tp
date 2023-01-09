
# 获取玩家名字和家名字
function s3:player/getname
data modify block ~ ~ ~ Text1 set value '{"text": "[传送点]","underlined": true,"color":"aqua","clickEvent": {"action": "run_command","value": "/function s3:tp/home/portal/use/run"}}'
data modify block ~ ~ ~ Text2 set value '{"storage":"temp","nbt":"player.Name","color":"red"}'
function s3:tp/home/portal/set/sign

# 设置marker存储uid和home
scoreboard players operation #uid tmp = @s uid
scoreboard players operation #home tmp = @s home.portal
scoreboard players set # tmp 0
execute positioned ~ ~3000 ~ as @e[type=armor_stand,distance=..0.1,tag=home.portal] run function s3:tp/home/portal/set/set_marker
execute if score # tmp matches 0 positioned ~ ~3000 ~ run function s3:tp/home/portal/set/unless_marker
