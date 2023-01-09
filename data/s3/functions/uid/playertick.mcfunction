# 触发时显示一次
execute if score @s uid.get matches 1 run function s3:uid/trigger/uid_get_i1
scoreboard players set @s uid.get 0
scoreboard players enable @s uid.get

# 触发时显示一次
execute if score @s uid.getname matches 1 run function s3:uid/trigger/uid_getname_i1
scoreboard players set @s uid.getname 0
scoreboard players enable @s uid.getname

# 触发时显示一次
execute if score @s help.uid matches 1 run function s3:uid/trigger/help_uid_i1
scoreboard players set @s help.uid 0
scoreboard players enable @s help.uid

# 触发时显示一次
execute if score @s uid.view matches 1 run function s3:uid/trigger/uid_view_i1
scoreboard players set @s uid.view 0
scoreboard players enable @s uid.view