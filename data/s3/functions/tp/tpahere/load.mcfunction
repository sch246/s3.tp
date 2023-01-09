
# /trigger tpahere set <uid> # 打开菜单或对他人发出传送请求
    # /trigger tpahere.accept # 接受最近,或者某uid的请求
    # /trigger tpahere.refuse # 拒绝最近,或者某uid请求
# 菜单:
# 使用/trigger tpahere set <uid>发送请求
# <[剩余30秒]xx想要让你传送到ta那里>
#  [接受]  [拒绝]
   #tpahere.accept  #tpahere.refuse
# <[剩余30秒]你想要让xx传送到你这里>
#  [取消]
   #tpahere.cancel

# 当a对b发出请求
# a:
# <[剩余30秒]你想要传送到xx那里>
#  [取消]  [点击刷新]#tpahere.send
# b:
# <[剩余30秒]xx想要传送到你这里>
#  [接受]  [拒绝]  [点击刷新]#tpahere.receive
scoreboard objectives add tpahere trigger
scoreboard objectives add tpahere.accept trigger
scoreboard objectives add tpahere.refuse trigger
scoreboard objectives add tpahere.cancel trigger

scoreboard objectives add tpahere.receive trigger
scoreboard objectives add tpahere.send trigger

# 保存发出者的uid
scoreboard objectives add tpahere.send.uid dummy
# 过期截止时间
scoreboard objectives add tpahere.time dummy

# 请求保存期限，默认为30s
scoreboard players set tpahere_time int 600