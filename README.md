## 这是干啥的?

总而言之，服务器里想得到的传送系统基本都有

**/trigger warp** 传送到地标(上限32)

**/trigger home** 传送到家(每人上限32，可自定义)

**/trigger back** 返回(系统，死亡点，登录，瞬移)

**/trigger tpa(tpahere)** 玩家传送(同意拒绝或取消，30秒后失效，可自定义)

**/trigger spawn** 返回重生点(返回床,重生锚或者世界重生点)

## 使用方式

<details>
<summary>玩家要记住的</summary>

其实只有 **/trigger help**命令就差不多了

![](https://attachment.mcbbs.net/data/myattachment/forum/202108/25/095622ouueiu0bpqrb6zvz.png)

点击 **传送系统** 或者 **uid**

![](https://attachment.mcbbs.net/data/myattachment/forum/202108/25/095643theyztkf9ba9ee6y.png)

鼠标移动到字上会显示对应的命令

脱离界面也可以根据命令来执行对应的功能

![](https://attachment.mcbbs.net/data/myattachment/forum/202108/25/095725o0a0uauum2uhal22.png)

偶尔还会出现各种提示

![](https://files.catbox.moe/y3z81i.png)

**更多的，，**

除了`uid`相关的之外都能在聊天栏gui点击触发，并且在各种错误情况下会返回错误提示(

基本都能点击传送

- **/trigger warp/home/back set `<index>`**
	- 可以按索引传送，支持负索引
- **/trigger warp set `<uid>*1000+<home>`**
	- 可以传送到对应玩家的对应家，前提是这个家是开放的
- **/trigger back set -1**
	- 可以传送到最近的一个传送记录
- **/trigger tpa/tpahere set `<uid>`**
	- 发送请求
- **/trigger uid.get**
	- 查看自己uid
- **/trigger uid.view**
	- 查看附近玩家uid

如果服主有设置的话按**tab**应该就能看到人的`uid`，默认不会占用**tab**键显示的位置

需要显示可以使用以下命令

- **/scoreboard objectives setdisplay list uid**

warp和home可以放置**传送牌**,用于构造传送点，里面有详细的提示，这里就不赘述了

</details>

<details>
<summary>服主需要知道的</summary>

可以使用命令 **/scoreboard objectives setdisplay list uid**使玩家的uid显示在tab列表中

同理 **/scoreboard objectives setdisplay belowName uid**使玩家的uid显示在名字下

玩家的计分板`home_limit`可以控制家的数量上限

`home_limit int`控制玩家默认的家数量上限,默认为5

`tpa_time int`和`tpahere_time int`分别控制**tpa**和**tpahere**的默认等待时长，默认为600（30秒）

所有传送可以跨自定义维度，可以传送到未加载区块

**warp**,**home**和**back**都有最大32个的容量
(可以通过脚本拓展上限=_=,细节要自己改)

即使超过上限依旧能使用**trigger**传送(不过**back**会自动删除多余的)

强加载区块位置有且仅有所有维度的`0,0`位置

全部数据存储在 storage，kill @e 之类的命令不会丢失重要数据

实体仅有维度marker以及传送牌的marker(均位于y3000+)

采用4分法穷举读取玩家存储，效率不会受玩家数量太大影响，

但同时限制玩家数量不能超过**1023**个
(可以通过脚本拓展上限=_=,细节要自己改)
</details>

### 注意

由于传送牌传送是根据顺序定位的，若删除某个传送点，且后面的传送点设置了传送牌
会导致传送牌传送错误需要重新设定

修复这个bug需要重构数据包所以我就懒得修了

不随便设置传送牌，设了传送牌后不要随便变动吧

其它的各种功能，，提示已经多到溢出了（

感觉不用再多说明这些功能，，

<details>
<summary>地标(warp)</summary>

点击传送系统界面中的 **\[warp\]地标**打开

或使用 **/trigger warp** 呼出列表

可以看到目前服务器内的所有地标及其介绍

![](https://files.catbox.moe/o0ajcy.png)

每个地标都有索引，可以 **/trigger warp set `<索引>`**

或者点击名字直接传送到对应位置

鼠标移到上面可以看到传送点所在在维度和坐标

![](https://files.catbox.moe/83dp26.png)

**那么传送点怎么来呢**

点击下面的**编辑传送点**
(编辑warp需要命令权限)打开这个界面

![](https://files.catbox.moe/d7no98.png)

- 查看数据(填充到聊天栏
  - ![](https://attachment.mcbbs.net/data/myattachment/forum/202108/18/004056enmiickzsscsz41t.png)
    ![](https://attachment.mcbbs.net/data/myattachment/forum/202108/18/004424opjd7vvospp7j3f0.png)

- 重命名(填充到聊天栏
  - ![](https://attachment.mcbbs.net/data/myattachment/forum/202108/18/004121o0iwqivuc2qv621w.png)

- 设置详情(填充到聊天栏
  - ![](https://attachment.mcbbs.net/data/myattachment/forum/202108/18/004217w49hig6mh6661rch.png)

- 设置传送牌
- ![](https://attachment.mcbbs.net/data/myattachment/forum/202108/18/004256qu10m076ef1xzvvr.png)
    ![](https://attachment.mcbbs.net/data/myattachment/forum/202108/18/004333dbhhtusg6cgb4prx.png)
  - 点击即可传送(重设了坐标则会传送到新的位置
  - 尝试传送时会同时更新告示牌信息
  - 若找不到传送点则会
    ![](https://files.catbox.moe/msgqxc.png)

- 重设坐标
  - ![](https://attachment.mcbbs.net/data/myattachment/forum/202108/18/004542z1pmpps1n6mie6j9.png)
    重设传送点为当前位置

- 删除
  - ![](https://attachment.mcbbs.net/data/myattachment/forum/202108/18/004737h4v11lacmalgv1v1.png)
    点一下，啪—— 没了
  - **警告:传送牌使用索引定位到传送点，若删除传送点会导致后面地标的传送牌定位错误**

- 新建传送点
  - ![](https://attachment.mcbbs.net/data/myattachment/forum/202108/18/004835zd62aek66f3627d2.png)
    点击则在当前位置创建一个默认传送点，就是上面那个未命名的传送点那样
  - 传送点将会排到列表的末尾，当达到32个传送点的上限时该按钮会消失。
  - 但依旧能通过函数创建新的传送点，超出上限的传送点将无法显示，
  - 但依旧能用 **/trigger**传送和用 **/data**编辑

</details>

<details>
<summary>家(home)</summary>

![](https://files.catbox.moe/d8t2v7.png)
![](https://files.catbox.moe/o278c0.png)

- 重命名/设置详情
  - 放置牌子在前方并点击设置即可，第一行显示为名字，后续的显示为详情
  - 若拿着染料则会改变为对应的颜色

- 私人/开放
  - 默认为私人，点击切换,
    切换为开放后，家将会对外开放
  - 任何人使用**/trigger warp set `<uid>*1000+<home>`**即可传送到对应家
  - 自己的`uid`可以使用 **/trigger uid.get**查看

- 设置传送牌
  - 将视线前方的告示牌变为传送牌，点击即可传送到对应家，会覆盖原告示牌的内容
  - **任何人都可以使用传送牌，无论这个家是否开放**
    (重设了坐标则会传送到新的位置
  - 尝试传送时会同时更新告示牌信息
    若找不到传送点则会
    ![](https://files.catbox.moe/mfpuew.png)

- 重置坐标
  - 重置家的坐标为当前位置

- 删除
  - **警告:传送牌使用索引定位到传送点，若删除传送点会导致后面的传送牌定位错误**

</details>

注意**warp**创建的传送点默认是保存视角的，而**home**创建的则不会

**warp**外其它所有传送几乎都采用 **/trigger** 触发

<details>
<summary>传送记录(back)</summary>

![](https://files.catbox.moe/6rmef0.png)
![](https://files.catbox.moe/7qwg65.png)

back的种类分别有
- back(全部)
- back.sys(几乎任何系统传送)
- back.death(死亡点记录)
- back.login(登入点记录)
- back.move(切换维度或任何单刻移动超过16格的情况)


都可以用 **/trigger `<back种类>`**触发

使用 **/trigger back set -1**可以传送到最后一个记录点, -2 可以传送到倒数第二个
，其实其它传送也支持这个(

使用back传送或者传送牌不会记录到系统传送中，但可能被记录到移动中

**第一次登入时不会记录登入点(bug，不打算修了)**
</details>

<details>
<summary>玩家传送(tpa/tpahere)</summary>

直接上图
![](https://files.catbox.moe/mw4u8p.png)
![](https://attachment.mcbbs.net/data/myattachment/forum/202108/18/013326plv37lqhll53zixy.png)
![](https://attachment.mcbbs.net/data/myattachment/forum/202108/18/013342zz2gplgpl4hep09o.png)

接受
![](https://attachment.mcbbs.net/data/myattachment/forum/202108/18/013411xn6noigfnni6nudi.png)
![](https://attachment.mcbbs.net/data/myattachment/forum/202108/18/013429c3nremm8ly49ryoz.png)

拒绝
![](https://attachment.mcbbs.net/data/myattachment/forum/202108/18/013454f05ythy1tuyt9u06.png)
![](https://attachment.mcbbs.net/data/myattachment/forum/202108/18/020532szt3on14nztqo48t.png)

取消
![](https://attachment.mcbbs.net/data/myattachment/forum/202108/18/020601rqxpgkbp1mgvghyy.png)

刷新
![](https://attachment.mcbbs.net/data/myattachment/forum/202108/18/020644i21j2sir3oe11kjo.png)
![](https://attachment.mcbbs.net/data/myattachment/forum/202108/18/020724ewf68uwbvodfv3ou.png)


</details>

<details>
<summary>重生点(spawn)</summary>

![](https://attachment.mcbbs.net/data/myattachment/forum/202108/18/021044h4p3rqpbbqsnbdbb.png)

没啥介绍的
和死亡返回差不多，

如果没有检测到床或者重生锚就会返回到世界重生点

唯一区别大概是这个会传送到床或重生锚的方块正中心吧

因此请把床或重生锚放在安全点的地方

</details>

## 关于安装

- 下载
  - 上面有下载来着啊,,,
    https://wwe.lanzoui.com/b01ikw4ab

- 安装
  - 本体放入  saves/<存档名>/datapacks/
    然后打开游戏就行了，全自动安装的

- 兼容性
  - 数据包在1.16.5的环境下编写测试的
  - 1.16.1目测也能运行
  - 1.13到1.15有可能能运行
  - 1.17以上未经过充分测试）不过应该能运行

## 技术性

使用了自己写的这个前置
[\[s3数学库\]](https://wwe.lanzoui.com/b01ild4be)
(其实这个前置大部分是从tp数据包里扒出来的)

有了玩家存储，维度传送和列表操作,
整这个不是没什么难点了吗

## 致谢

**SPGoding**

所有数据包使用大憨批编辑，大憨批真的好用，

另外还有各种教程(断言, 战利品表, 还有,,记不清了)

这里就不@  了吧

**雨弓群的各位**

不竭动力源泉(

## 更新日志

1.0 - 发布

1.1 - 修复tpahere会导致玩家名错误的问题

1.2 - 修复不兼容多人的问题，以及tpa不会保存到back的问题

1.2.1 - 优化了uid列表的查看,调整了界面的颜色

1.2.2 - 修复严重bug:主世界没有强加载0,0导致离远了无法触发传送(话说没人发现这个吗

1.3 - 现在支持1.17了(

1.4 - 对uid,player,dimension,person进行了解耦，为了不会和最新的数学库产生冲突

1.4.1 - 修复了由于 s3:dimension/tick里面没有加at @s 导致在有多个维度时传送错维度的严重bug

1.4.2 - 修复了不知道为什么uid无法初始化的问题

2022/9/12 - 看起来1.19能运行啊，所以把适用范围拓展到1.19了

1.4.3(2023/1/7) - 修复了压缩包需要解压才能运行的bug

1.4.4(2023/1/9) - 重命名家改为使用告示牌了