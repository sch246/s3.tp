
execute if score @s tpahere matches 0 run function s3:tp/tpahere/trigger/tpahere
execute if score @s tpahere matches 1.. run function s3:tp/tpahere/send/tpahere-set
scoreboard players set @s tpahere -1
scoreboard players enable @s tpahere


execute if score @s tpahere.accept matches 1 run function s3:tp/tpahere/receive/tpahere_accept
scoreboard players set @s tpahere.accept 0
scoreboard players enable @s tpahere.accept
execute if score @s tpahere.refuse matches 1 run function s3:tp/tpahere/receive/tpahere_refuse
scoreboard players set @s tpahere.refuse 0
scoreboard players enable @s tpahere.refuse
scoreboard players set #confirmed tmp 0
execute if score @s tpahere.receive matches 1 run function s3:tp/tpahere/receive/tpahere_receive
scoreboard players set @s tpahere.receive 0
scoreboard players enable @s tpahere.receive

execute if score @s tpahere.cancel matches 1 run function s3:tp/tpahere/send/tpahere_cancel
scoreboard players set @s tpahere.cancel 0
scoreboard players enable @s tpahere.cancel
scoreboard players set #confirmed tmp 0
execute if score @s tpahere.send matches 1 run function s3:tp/tpahere/send/tpahere_send
scoreboard players set @s tpahere.send 0
scoreboard players enable @s tpahere.send