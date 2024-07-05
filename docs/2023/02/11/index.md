---
template: main.html
---

# ryanwang's weekly 第11期

![](https://to-out-use.oss-cn-hangzhou.aliyuncs.com/common/VdM3Sh.jpg?x-oss-process=image/auto-orient,1/interlace,1/quality,q_90/format,webp){ loading=lazy }


(封面图片来源于：基于 `CC0` 协议的 [stocksnap](https://stocksnap.io/photo/botanical-flatlay-T6XJXYK40U))

------

!!! tip hint important "温馨提示"

    周刊中所有高亮的内容都可以点击到指定内容的链接～

## FE News

**关键词：** *`AppSingle`*、*`React`*、*`Depngn`*、*`Remix`*

### 1. [使用 AppSingle 监控您的 Nest 应用程序](https://blog.appsignal.com/2023/01/30/monitoring-your-nestjs-application-with-appsignal.html)
>相关地址：https://blog.appsignal.com/2023/01/30/monitoring-your-nestjs-application-with-appsignal.html

重要的一点先声明：

- 收费
- 服务器在荷兰

特性(卖点)：

![](https://to-out-use.oss-cn-hangzhou.aliyuncs.com/common/DnNXw0.png?x-oss-process=image/auto-orient,1/interlace,1/quality,q_90/format,webp)

其实我个人更推荐 [`skywalking`](https://github.com/apache/skywalking)，开源、强大、自部署。

### 2. [React 10周年纪录片](https://www.youtube.com/watch?v=8pDqJVdNa44)
>相关地址：https://www.youtube.com/watch?v=8pDqJVdNa44

因为在油管，但是我也简单自费上传到了自己的 `OSS`，可以自行食用。

<video width="100%" height="300" controls>
  <source src="https://scholarself.oss-cn-beijing.aliyuncs.com/weekly/React.js_%20The%20Documentary.mp4" type="video/mp4">
</video>

### 3. [Depngn](https://github.com/upgradejs/depngn)
> 相关地址：https://github.com/upgradejs/depngn

检测 `package.json` 中的依赖项是否满足当前的 `node` 版本，核心原理主要是检测依赖项包字段：`engine`。

### 4. [Remix: 全栈开发的领导者](https://www.infoworld.com/article/3687210/intro-to-remix-a-leader-in-full-stack-evolution.html#jump)
> 相关地址：https://www.infoworld.com/article/3687210/intro-to-remix-a-leader-in-full-stack-evolution.html#jump

`Next` 相比于 `Remix` 最大的不同是，`Remix` 与 `React` 解耦，可以集成 `solid` 、`svlete` 等其它框架。

------

## FAQ

### 1. [如何解决前端中常见的竞态问题](https://juejin.cn/post/7128205011019890695)
> 相关地址：https://juejin.cn/post/7128205011019890695

两个的方案

- `axios` 的 `cancelToken` 取消请求
- `RxJs` 的 `switchMap` 

### 2. [使用 rollup 更优雅的使用 webWorker](https://justinribeiro.com/chronicle/2020/07/17/building-module-web-workers-for-cross-browser-compatibility-with-rollup/)
> 相关地址：https://justinribeiro.com/chronicle/2020/07/17/building-module-web-workers-for-cross-browser-compatibility-with-rollup/

- `Blob URL` 作为 `Worker()` 的内参

### 3. [记一次 `position: sticky` 失效的问题排查](https://www.cnblogs.com/coco1s/p/14180476.html)
> 相关地址：https://www.cnblogs.com/coco1s/p/14180476.html

- 我所遇到的原因中正好命中了父容器设置了 `overflow: hidden`，但是我这里用了 `overflow-x: hidden` 同样也会失效。

### 4. [记如何下载 youtube 视频](https://en.savefrom.net/)

- 借助：https://en.savefrom.net/ 轻松搞定～

## End

!!! pied-piper "交个朋友吧～"

    我是不换(书生)，"浪子回头金不换"的**不换**，"百无一用是书生"的**书生**，热爱工作，同时在工作之余也热爱开源。

本期周刊到这里就结束了，我们下期再见👋～
