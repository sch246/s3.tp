
# /trigger tpa set <uid> # 打开菜单或对他人发出传送请求
    # /trigger tpa.accept # 接受最近,或者某uid的请求
    # /trigger tpa.refuse # 拒绝最近,或者某uid请求
# 菜单:
# 使用/trigger tpa set <uid>发送请求
# <[剩余30秒]xx想要传送到你这里>
#  [接受]  [拒绝]
   #tpa.accept  #tpa.refuse
# <[剩余30秒]你想要传送到xx那里>
#  [取消]
   #tpa.cancel

# 当a对b发出请求
# a:
# <[剩余30秒]你想要传送到xx那里>
#  [取消]  [点击刷新]#tpa.send
# b:
# <[剩余30秒]xx想要传送到你这里>
#  [接受]  [拒绝]  [点击刷新]#tpa.receive
scoreboard objectives add tpa trigger
scoreboard objectives add tpa.accept trigger
scoreboard objectives add tpa.refuse trigger
scoreboard objectives add tpa.cancel trigger

scoreboard objectives add tpa.receive trigger
scoreboard objectives add tpa.send trigger

# 保存发出者的uid
scoreboard objectives add tpa.send.uid dummy
# 过期截止时间
scoreboard objectives add tpa.time dummy

# 请求保存期限，默认为30s
scoreboard players set tpa_time int 600