---
template: main.html
---

# Scholar's Weekly 第3期

![](https://to-out-use.oss-cn-hangzhou.aliyuncs.com/common/FNgMsr.jpg){ loading=lazy }


(封面图片来源于：基于 `CC0` 协议的 [stocksnap](https://stocksnap.io/photo/ocean-waves-HH2BJ1I6ZK))

------

!!! tip hint important "温馨提示"

    周刊中所有高亮的内容都可以点击到指定内容的链接～

**关键词：** *`waifuExtension`*、*`release-please`*

## 1. [waifuExtension](https://github.com/Vaida12345/waifuExtension)

简单说就是，充分利用 `CPU` 、`GPU` 和 `ANE` 的的优势，利用机器学习，放大图片，并保持高度清晰。

贴个图感受下效果～

![](https://to-out-use.oss-cn-hangzhou.aliyuncs.com/common/2WgK8L.jpg)

## 2. [release-please](https://github.com/googleapis/release-please)

原 [standard-version](https://github.com/conventional-changelog/standard-version) 已被弃用，官方推荐使用 [release-please](https://github.com/googleapis/release-please)。

![](https://to-out-use.oss-cn-hangzhou.aliyuncs.com/common/FMBIqw.png)

## 3. [DNS 查询原理详解](https://www.ruanyifeng.com/blog/2022/08/dns-query.html)

蛮不错的文章，*阮大* 出品，必属精品！下面提供下文章中出现的工具，以及相关文档地址～

- [Dig Command in macOS and Linux(DNS Lookup)](https://akkireddy.medium.com/dig-command-in-macos-and-linux-dns-lookup-f641c2110542)
   - `Dig Command` 的安装指南
- [DiG HOWTO](https://www.madboa.com/geek/dig/#ttl)
   - 怎么使用 `Dig`.

我浅尝了一下子，发现个有意思的事情，阿里的 `vip` `DNS` 服务器，在 `TLD` 服务器中没有对应的 `ip` 缓存信息：

![](https://to-out-use.oss-cn-hangzhou.aliyuncs.com/common/skVnOk.png)

然后，我经历了一波 `vip` `DNS` 反查，最终找到了它的 `ip` 地址，最终，借着 `DNS` 解析的最后一步，找到了我的 `二级域名` 的 `解析记录`:

![](https://to-out-use.oss-cn-hangzhou.aliyuncs.com/common/5lfFcv.png)

## 4. [75CDN](https://cdn.baomitu.com/)

`360` 旗下 `前端静态资源库`，号称 **首个支持 `HTTP/2` 的 `CDN` 服务**，这次周刊站点也统一换了，看下效果：

![](https://to-out-use.oss-cn-hangzhou.aliyuncs.com/common/0ndolO.png)

## 5. [`Antd` 准备出兼容 `v5-to-v4`、`v5-to-v3`、`v4-to-v3` 的包了](https://github.com/ant-design/ant-design/discussions/36909)

可以大致看下 `V5` 的计划～

![](https://to-out-use.oss-cn-hangzhou.aliyuncs.com/common/GDAXRy.png)

## 6. [The story of a V8 performance cliff in React](https://v8.dev/blog/react-cliff)

在排查问题的时候看到了这篇 `V8` 的文章，文末的最后，有这么一个例子，觉得挺有意思的，拿出来分享一下～

!!! note "笔记"

    写出可读的代码，性能就会随之而来。

![](https://to-out-use.oss-cn-hangzhou.aliyuncs.com/common/YegjMt.png)

## End

最后，简单总结下这一个星期的修炼内容～

#### 1. 优化了 `weekly` 周刊小站的部分内容，迭代至 `Release 2.1.0`，也可查看 [里程碑](/LANDMARK/)

- 更换了小站主题色 `green`
- 修复了不同周刊切换时 `waline` 评论插件加载失败的问题
- 新增了页面温馨提示
- 全站可托管静态资源支持 `HTTP 2.0`
- 支持周刊创建和更新日期的显示

#### 2. 给 [AktivJs](https://github.com/myNameIsDu/aktiv) 提了个 [`Feature PR`](https://github.com/myNameIsDu/aktiv/pull/84) 支持了 `React` `StrictMode` 模式

#### 3. 凌晨杰作，写了个 `changeset` 的 `log forrmat` 插件包：[@montagejs/changelog-montage](https://www.npmjs.com/package/@montagejs/changelog-montage)

大概效果是这样～

![](https://to-out-use.oss-cn-hangzhou.aliyuncs.com/common/w3w0Ca.png)
