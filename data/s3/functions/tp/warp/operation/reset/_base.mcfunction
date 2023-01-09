#for_ i in range(0,32)
    #setfunc s3:tp/warp/operation/reset/<i>
        #mc data modify storage sys warp.list[<i>].Dimension set from entity @s Dimension
        #mc data modify storage sys warp.list[<i>].Pos set from entity @s Pos
        #mc data modify storage sys warp.list[<i>].Rotation set from entity @s Rotation
        #mc execute store result storage sys warp.list[<i>].x int 1 run data get entity @s Pos[0]
        #mc execute store result storage sys warp.list[<i>].y int 1 run data get entity @s Pos[1]
        #mc execute store result storage sys warp.list[<i>].z int 1 run data get entity @s Pos[2]
        function s3:tp/warp/refresh
