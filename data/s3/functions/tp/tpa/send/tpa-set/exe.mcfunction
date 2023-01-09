
scoreboard players operation #uid tmp = @s uid
scoreboard players operation # tmp = @s tpa
execute as @a if score @s uid = # tmp run function s3:tp/tpa/receive/func/set
scoreboard players set #confirmed tmp 1
function s3:tp/tpa/send/tpa_send
scoreboard players operation # tmp = @s tpa
scoreboard players set #confirmed tmp 1
execute as @a if score @s uid = # tmp run function s3:tp/tpa/receive/tpa_receive
