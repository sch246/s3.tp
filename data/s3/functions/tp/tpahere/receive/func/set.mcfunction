# 接收者执行，存储信息,创建传送请求
# input scb #uid tmp

# 计算并保存过期时间
execute store result score @s tpahere.time run time query gametime
scoreboard players operation @s tpahere.time += tpahere_time int
# 保存发出者的uid到接受者的存储内
scoreboard players operation @s tpahere.send.uid = #uid tmp