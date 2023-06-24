---
template: main.html
---

# Scholar's Weekly 第26期

![](https://to-out-use.oss-cn-hangzhou.aliyuncs.com/common/TjOLdi.png?x-oss-process=image/auto-orient,1/interlace,1/quality,q_90/format,webp){ loading=lazy }


(封面图片来源于：基于 `CC0` 协议的 [stocksnap](https://stocksnap.io/photo/man-hiking-P0G8XXX3PR))

------

!!! tip hint important "温馨提示"

    周刊中所有高亮的内容都可以点击到指定内容的链接～

## FE News

**关键词：** *`gists`*、*`chrome for testing`*、*`npm`*、*`TypeScript`*


### 1.[github gists 跑在 aws lambda，那一定很有趣](https://www.val.town/)
> 相关地址：https://www.val.town/

`serverless` 想来大家一定并不陌生，（简单定义：给定函数在云上跑，给一个输入，吐一个输出出来），作者在文中想阐述的意思也是这个。

聊到 `serverless` ，其实突然想到了 `ssr`，[ssr](https://github.com/zhangyuang/ssr)，宇昂大佬写的，号称地表最强 `ssr` 框架，提供了 `serverless` 能力，如果你还不清楚什么是 `serverless`，我推荐阅读 [跟狼叔聊了一夜，终于搞明白了 Serverless 是什么？](https://zhuanlan.zhihu.com/p/163471017)

### 2.[chrome-for-testing](https://developer.chrome.com/blog/chrome-for-testing/)
>相关地址：https://developer.chrome.com/blog/chrome-for-testing

大致内容：`chrome` 发布了一个可以专门用来测试的浏览器版本，`chrome test`。

大白话来说，10 年后，你仍旧可以获得现在的 `chrome` 二进制文件，这个信息意味着未来低版本浏览器的测试可行性极大的在提高。

根据 [`MDN 2021年` 报告](https://mdn.dev/archives/insights/reports/mdn-web-testing-report-2021.html)，跨浏览器版本测试是开发者头疼的一个点。

好了，说完了好消息，那我们接下来传递一个坏消息：

![](https://to-out-use.oss-cn-hangzhou.aliyuncs.com/common/fECECw.png)

更低版本的浏览器是不支持的，也就是 `chrome 113` 之前的版本基本不可能。

其实出发点是好的，只是对于现在的开发者似乎意义不是很大，当然对于新的 `语言 stage` 而言，或许有一些意义。

### 3.[npm 禁止发布 `keywords` 包含 `keygen` 和 `cheat` 的包](https://news.ycombinator.com/item?id=36325523)
>相关地址：https://news.ycombinator.com/item?id=36325523

当你的 `npm` 包中包含了 `keygen` 或者 `cheat` ，会被禁止发布，大概的讨论在链接中，是一个相对比较有争议的话题。

### 4.[ts-pattern](https://github.com/gvergnaud/ts-pattern#Pinfer)
>相关地址：https://github.com/gvergnaud/ts-pattern#Pinfer

用于写出高阶 `ts` 类型的辅助工具库，更简短的语句实现更复杂的类型声明。

(: 本周只有四条，不是敷衍，是没有什么优质新闻～

## End

!!! pied-piper "交个朋友吧～"

    我是不换(书生)，"浪子回头金不换"的**不换**，"百无一用是书生"的**书生**，热爱工作，同时在工作之余也热爱开源。

本期周刊到这里就结束了，我们下期再见👋～
