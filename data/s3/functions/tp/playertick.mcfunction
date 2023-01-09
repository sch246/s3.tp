

# 触发时显示一次
execute if score @s help.tp matches 1 run function s3:tp/trigger/help_tp_i1
scoreboard players set @s help.tp 0
scoreboard players enable @s help.tp



# 读取存储
function s3:person/read
data remove storage temp tp_person
data modify storage temp tp_person set from storage temp person.read
    # 首先我想先做个warp
    # 因为只要把值存在storage就行，而且可以仅允许命令触发
    function s3:tp/warp/playertick
    # 然后是home
    # 属于玩家个人的坐标存储,需要玩家nbt存储的前置
    function s3:tp/home/playertick
    # 做个back
    # 属于玩家个人的坐标存储,需要玩家nbt存储的前置
    function s3:tp/back/playertick
    # tpa!
    function s3:tp/tpa/playertick
    # tpahere!
    function s3:tp/tpahere/playertick
    
# 写入存储
data remove storage temp person.write
data modify storage temp person.write set from storage temp tp_person
function s3:person/write