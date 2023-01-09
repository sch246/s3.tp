# help是什么概念呢
# 必须集齐所有的提示
# 所以这个东东得做成前置
# trigger help 后打开数据包的help列表
# 然后再点击进去查看对应数据包的help
# 仅负责在trigger help 输出聊天栏时提供一个函数标签

# 初始化或者触发时显示一次
execute unless score @s help matches 0 run function s3:help/trigger/help_u0
scoreboard players set @s help 0
scoreboard players enable @s help