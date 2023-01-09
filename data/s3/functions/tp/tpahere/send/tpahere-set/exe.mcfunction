
scoreboard players operation #uid tmp = @s uid
scoreboard players operation # tmp = @s tpahere
execute as @a if score @s uid = # tmp run function s3:tp/tpahere/receive/func/set
scoreboard players set #confirmed tmp 1
function s3:tp/tpahere/send/tpahere_send
scoreboard players operation # tmp = @s tpahere
scoreboard players set #confirmed tmp 1
execute as @a if score @s uid = # tmp run function s3:tp/tpahere/receive/tpahere_receive
