scoreboard players set #warp tmp 6
data modify storage temp Location set from storage sys warp.list[6]
execute at @s anchored eyes positioned ^ ^ ^ run function s3:tp/warp/operation/portal/set/loop_sign
