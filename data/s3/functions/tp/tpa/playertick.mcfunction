
execute if score @s tpa matches 0 run function s3:tp/tpa/trigger/tpa
execute if score @s tpa matches 1.. run function s3:tp/tpa/send/tpa-set
scoreboard players set @s tpa -1
scoreboard players enable @s tpa


execute if score @s tpa.accept matches 1 run function s3:tp/tpa/receive/tpa_accept
scoreboard players set @s tpa.accept 0
scoreboard players enable @s tpa.accept
execute if score @s tpa.refuse matches 1 run function s3:tp/tpa/receive/tpa_refuse
scoreboard players set @s tpa.refuse 0
scoreboard players enable @s tpa.refuse
scoreboard players set #confirmed tmp 0
execute if score @s tpa.receive matches 1 run function s3:tp/tpa/receive/tpa_receive
scoreboard players set @s tpa.receive 0
scoreboard players enable @s tpa.receive

execute if score @s tpa.cancel matches 1 run function s3:tp/tpa/send/tpa_cancel
scoreboard players set @s tpa.cancel 0
scoreboard players enable @s tpa.cancel
scoreboard players set #confirmed tmp 0
execute if score @s tpa.send matches 1 run function s3:tp/tpa/send/tpa_send
scoreboard players set @s tpa.send 0
scoreboard players enable @s tpa.send