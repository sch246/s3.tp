# home有什么功能呢
# 首先玩家有一个列表，包含所有传送点,界面显示在聊天栏上,都应当用trigger触发
    # 传送点可以点击传送
    # 应当允许添加，删除传送点
    # 传送点可以重命名和重置坐标到当前位置
        # 检测玩家手持染料的名字和颜色(
    # 修改信息后界面应当自动刷新一次
# 应当用trigger home打开界面
    # 同时应当允许使用trigger home set x 来传送到对应的传送点
# 应当可以用计分板@s home_limit控制家上限
# trigger help后应当显示home的选项，点击后打开home界面

# 如果没有家的限制,则设为默认
execute unless score @s home_limit matches -2147483648..2147483647 run scoreboard players operation @s home_limit = home_limit int


# 触发时显示一次
execute if score @s home matches -2147483647 run function s3:tp/home/trigger/home
# 如果使用了home
execute if score @s home matches -2147483646.. run function s3:tp/home/trigger/home-set
scoreboard players set @s home -2147483648

# 打开编辑模式
execute if score @s home.edit_on matches 1 run function s3:tp/home/trigger/home_edit_on
scoreboard players set @s home.edit_on 0

# 关闭编辑模式
execute if score @s home.edit_off matches 1 run function s3:tp/home/trigger/home_edit_off
scoreboard players set @s home.edit_off 0

#新建家
execute if score @s home.new matches 1 run function s3:tp/home/trigger/home_new
scoreboard players set @s home.new 0


# 触发时显示一次
execute if score @s home.rename matches -2147483647 run function s3:tp/home/trigger/home_rename
# 如果使用了home
execute if score @s home.rename matches -2147483646.. run function s3:tp/home/trigger/home_rename-set
scoreboard players set @s home.rename -2147483648


# # 触发时显示一次
# execute if score @s home.info matches -2147483647 run function s3:tp/home/trigger/home_info
# # 如果使用了home
# execute if score @s home.info matches -2147483646.. run function s3:tp/home/trigger/home_info-set
# scoreboard players set @s home.info -2147483648


# 触发时显示一次
execute if score @s home.public matches -2147483647 run function s3:tp/home/trigger/home_public
# 如果使用了home
execute if score @s home.public matches -2147483646.. run function s3:tp/home/trigger/home_public-set
scoreboard players set @s home.public -2147483648


# 触发时显示一次
execute if score @s home.private matches -2147483647 run function s3:tp/home/trigger/home_private
# 如果使用了home
execute if score @s home.private matches -2147483646.. run function s3:tp/home/trigger/home_private-set
scoreboard players set @s home.private -2147483648


# 触发时显示一次
execute if score @s home.portal matches -2147483647 run function s3:tp/home/trigger/home_portal
# 如果使用了home
execute if score @s home.portal matches -2147483646.. run function s3:tp/home/trigger/home_portal-set
scoreboard players set @s home.portal -2147483648


# 触发时显示一次
execute if score @s home.reset matches -2147483647 run function s3:tp/home/trigger/home_reset
# 如果使用了home
execute if score @s home.reset matches -2147483646.. run function s3:tp/home/trigger/home_reset-set
scoreboard players set @s home.reset -2147483648


# 触发时显示一次
execute if score @s home.del matches -2147483647 run function s3:tp/home/trigger/home_del
# 如果使用了home
execute if score @s home.del matches -2147483646.. run function s3:tp/home/trigger/home_del-set
scoreboard players set @s home.del -2147483648

function s3:tp/home/trigger/enable