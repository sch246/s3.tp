# warp有什么功能呢
# 首先有一个列表，包含所有传送点,界面显示在聊天栏上,除了点击传送外都应当用命令触发而不是trigger,这是公用的
    # 应当允许添加，删除传送点
    # 传送点可以重命名和重置坐标到当前位置并且可以设置详细信息
    # 修改信息后界面应当自动刷新一次
# 应当用trigger warp打开界面
    # 同时应当允许使用trigger warp set x 来传送到对应的传送点
# trigger help后应当显示warp的选项，点击后打开warp界面


# 触发时显示一次
execute if score @s warp matches -2147483647 run function s3:tp/warp/trigger/warp
#如果使用了warp
execute if score @s warp matches -2147483646..999 run function s3:tp/warp/trigger/warp-set
# 如果用warp传送到某人家
execute if score @s warp matches 1000.. run function s3:tp/warp/trigger/warp-set_extra

scoreboard players set @s warp -2147483648
scoreboard players enable @s warp