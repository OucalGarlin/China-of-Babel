那么恭喜你，学会了解包模组文件了（什？
既然你来了，那我就告诉你这些文件是干什么用的（不是

ReadMe.txt，就是你现在正在看的这个，是一个说明，而你现在正在阅读这个说明里的说明，而你意识到下一句话还是这个说明的说明的说明……
最好庆幸你不是个可悲的文盲，还可以看懂Read Me是什么意思。

metadata.xml，记录了模组的名称，创意工坊ID等重要信息，与你的Steam相关联——如果你取消订阅了某个模组，那么下次进入游戏会将那个模组删除，而找到模组的途径就是metadata.xml
似乎只有id这个数据才是相对重要的
名字之类的不仅用于辨识，也是为了决定模组的加载顺序，例如有些模组开头会有叹号就是为了改变加载顺序
小贴士：如果你把模组的文件搬家到盗版游戏里去，那个游戏因为接不上Steam账号，会默认你没有订阅任何模组，一旦发现metadata.xml里的ID是未订阅的模组就会立刻将其删除，所以干这种事的时候记得删metadata.xml，反正对模组本体影响不大

main.lua则是模组运行的核心，通过里面的代码来实现各种特异的功能。你还可以看到一个main_but it's like a piece of shit.lua。这是因为我本人并非专业的程序员，仅靠东拼西凑得到了这个模组的雏形；后来得到了Golden_shit（白日梦mod作者）的帮助，对整个代码的结构进行了重做和优化，而老的代码则完全成了废品……有朝一日会删掉的……嗯对的

config.lua是用于跟模组设置彩蛋兼容的，目前是挖坑状态

ACL.lua是用于跟其他模组加花哨兼容的，不要去细究为什么我会闲着没事去搞这玩意就是了（ACL未来可能考虑搬出来作为添加简易兼容用？）

DudeThisIsJustaBullshitPictureWhyWouldYouCareAboutThis.png是模组的封面。自己去翻译什么意思去吧。

resources和content文件夹是模组资源的地址，内涵各种贴图，配乐等；content则包含了各种道具、掉落物、副手和实体的信息——还有很多，就不一一赘述了
目前已将贴图相关的汉化也搬家至resources文件夹中，希望可以正常运行吧（

availablemods内是汉化文件的主体，通过main.lua调用并激活，而后在游戏内展现出形形色色的神秘的东方文字。里面有时候会包含不少的彩蛋，极其建议有(xian)志(zhe)之(mei)人(shi)前来欣赏……或者纠错。
是的，我不是什么专业的翻译，如果发现了错译欢迎指正
英文维基连接：https://isaacguru.com/

还有一个名为useless的文件夹——十分建议点进去！！因为里面内涵各种模组的简介翻译
众所周知，那些模组的作者都是用英文的，所以模组的描述也是英文，这样固然会导致各种恶劣的问题：例如在忏悔+运行一个不能在忏悔+运行的mod结果还到处去问为什么有问题。
你也可以在github上的“维基”界面看到各个模组的简介翻译及其设置翻译。
不过最通俗的解法就是开忏悔龙和关闭忏悔+游玩所有模组。

与此同时，对于一些有相关设置但是全是英文的模组，我制作了一个思维导图用于便携观看各种东西（沟槽的没有VIP我还用不了了停更md）
https://kdocs.cn/l/clqZQ33paAux
现在可以在github的维基处浏览=）

控制台也会告诉你一些东西，记得按飘号键多看看！
