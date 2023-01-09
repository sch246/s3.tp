scoreboard players set #warp tmp 21
data modify storage temp Location set from storage sys warp.list[21]
execute at @s anchored eyes positioned ^ ^ ^ run function s3:tp/warp/operation/portal/set/loop_sign
