scoreboard objectives add back trigger
scoreboard objectives add back.del trigger

scoreboard objectives add back.sys trigger
scoreboard objectives add back.death trigger
scoreboard objectives add back.login trigger
scoreboard objectives add back.move trigger

scoreboard objectives add back.sys.del trigger
scoreboard objectives add back.death.del trigger
scoreboard objectives add back.login.del trigger
scoreboard objectives add back.move.del trigger

scoreboard players set #2 int 2
# /trigger back.sys # 系统内传送都会被记录
# /trigger back.death # 记录死亡点
# /trigger back.login # 记录登陆点
# /trigger back.move 
    # 任何移动速度快过16m/t的移动,或者维度变化都会被认为是传送
# /trigger back # 显示以上所有点