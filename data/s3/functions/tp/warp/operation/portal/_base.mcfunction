#for_ i in range(0,32)
    #setfunc s3:tp/warp/operation/portal/<i>
        #mc scoreboard players set #warp tmp <i>
        #mc data modify storage temp Location set from storage sys warp.list[<i>]
        execute at @s anchored eyes positioned ^ ^ ^ run function s3:tp/warp/operation/portal/set/loop_sign
