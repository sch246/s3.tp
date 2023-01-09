# 传送执行者到 storage temp Location
execute unless score @s back matches -2147483646.. unless score @s back.death matches -2147483646.. unless score @s back.login matches -2147483646.. unless score @s back.move matches -2147483646.. unless score @s back.sys matches -2147483646.. run function s3:tp/back/save_sys
tag @s add tp.tmp
execute as @e[type=armor_stand,tag=dimension_marker] at @s run function s3:tp/read/tp1
function s3:tp/read/success
tag @s remove tp.tmp