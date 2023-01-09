scoreboard objectives add int dummy
scoreboard objectives add home_limit dummy
scoreboard objectives add home trigger

scoreboard objectives add home.edit_on trigger
scoreboard objectives add home.edit_off trigger
scoreboard objectives add home.new trigger

scoreboard objectives add home.rename trigger
# scoreboard objectives add home.info trigger
scoreboard objectives add home.public trigger
scoreboard objectives add home.private trigger
scoreboard objectives add home.portal trigger
scoreboard objectives add home.reset trigger
scoreboard objectives add home.del trigger

scoreboard players set #32 int 32
# 设置默认的家数量
scoreboard players set home_limit int 5
