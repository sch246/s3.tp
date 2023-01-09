# 检查是否是传送点或死亡点(前边有没有同样坐标)


    data modify storage temp Dimension set from storage temp Location0.Dimension
    execute store success score # tmp run data modify storage temp Dimension set from storage temp tp_person.back.list[-1].Dimension

    scoreboard players set #1 tmp 1
    data modify storage temp Pos set from storage temp Location0.Pos
    execute if score # tmp matches 0 store success score #1 tmp run data modify storage temp Pos set from storage temp tp_person.back.list[-1].Pos

execute if score #1 tmp matches 1 run function s3:tp/back/save_move
