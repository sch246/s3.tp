scoreboard objectives add help.tp trigger
scoreboard objectives add tmp dummy

# 首先我想先做个warp
# 因为只要把值存在storage就行，而且可以仅允许命令触发
function s3:tp/warp/load
function s3:tp/home/load
function s3:tp/back/load
function s3:tp/tpa/load
function s3:tp/tpahere/load
function s3:tp/spawn/load
# /trigger warp set 1000*uid+home # 传送到家,若家是开放的
# /trigger home.public set <home> # 开放家
# /trigger home.private set <home> # 关闭家
# /trigger home.portal set <home> # 设木牌为传送点

# /trigger back.sys # 系统内传送都会被记录
# /trigger back.death # 记录死亡点
# /trigger back.login # 记录登陆点
# /trigger back.move 
    # 任何移动速度快过16m/t的移动都会被认为是传送
# /trigger back.dimension # 记录维度变化
# /trigger back # 显示以上所有点

# /trigger spawn # 返回床，若没有， 返回上一次重生的位置，否则返回错误


# /trigger tpa set <uid> # 对他人发出传送请求
    # /trigger tpa.accept # 接受最近,或者某uid的请求
    # /trigger tpa.refuse # 拒绝最近,或者某uid请求
# /trigger tpahere set <uid> # 对他人发出传送至此的请求
    # /trigger tpahere.accept # 接受最近,或者某uid的请求
    # /trigger tpahere.refuse # 拒绝最近,或者某uid请求