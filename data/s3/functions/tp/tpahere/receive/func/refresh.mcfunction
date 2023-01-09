# 接收者执行
# 若过期或不在范围则删除
execute store result score # tmp run time query gametime
execute if score # tmp > @s tpahere.time run function s3:tp/tpahere/receive/func/clear
execute if score @s tpahere.send.uid matches -2147483648..0 run function s3:tp/tpahere/receive/func/clear