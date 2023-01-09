# 进度触发入口点

# forceload后务必再检测一次防止由于区块卸载而导致实体检测不到
forceload add 0 0
execute unless entity @e[type=armor_stand,tag=dimension_marker,distance=0..] run function s3:dimension/unless_marker
advancement revoke @s only s3:dimension/move