


execute if score @s back.del matches 1 run function s3:tp/back/trigger/back_del
scoreboard players set @s back.del 0
scoreboard players enable @s back.del

execute if score @s back.sys.del matches 1 run function s3:tp/back/trigger/back_sys_del
scoreboard players set @s back.sys.del 0
scoreboard players enable @s back.sys.del

execute if score @s back.death.del matches 1 run function s3:tp/back/trigger/back_death_del
scoreboard players set @s back.death.del 0
scoreboard players enable @s back.death.del

execute if score @s back.login.del matches 1 run function s3:tp/back/trigger/back_login_del
scoreboard players set @s back.login.del 0
scoreboard players enable @s back.login.del

execute if score @s back.move.del matches 1 run function s3:tp/back/trigger/back_move_del
scoreboard players set @s back.move.del 0
scoreboard players enable @s back.move.del


execute if score @s back matches -2147483647 run function s3:tp/back/trigger/back
execute if score @s back matches -2147483646.. run function s3:tp/back/trigger/back-set
scoreboard players set @s back -2147483648
scoreboard players enable @s back

execute if score @s back.sys matches -2147483647 run function s3:tp/back/trigger/back_sys
execute if score @s back.sys matches -2147483646.. run function s3:tp/back/trigger/back_sys-set
scoreboard players set @s back.sys -2147483648
scoreboard players enable @s back.sys

execute if score @s back.death matches -2147483647 run function s3:tp/back/trigger/back_death
execute if score @s back.death matches -2147483646.. run function s3:tp/back/trigger/back_death-set
scoreboard players set @s back.death -2147483648
scoreboard players enable @s back.death

execute if score @s back.login matches -2147483647 run function s3:tp/back/trigger/back_login
execute if score @s back.login matches -2147483646.. run function s3:tp/back/trigger/back_login-set
scoreboard players set @s back.login -2147483648
scoreboard players enable @s back.login

execute if score @s back.move matches -2147483647 run function s3:tp/back/trigger/back_move
execute if score @s back.move matches -2147483646.. run function s3:tp/back/trigger/back_move-set
scoreboard players set @s back.move -2147483648
scoreboard players enable @s back.move

# scoreboard players operation #uid tmp = @s uid
function s3:tp/back/move/check