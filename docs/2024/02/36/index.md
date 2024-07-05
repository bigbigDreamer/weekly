---
template: main.html
---

# ryanwang's weekly 第36期

![](https://bigdreamerblog.oss-cn-beijing.aliyuncs.com/nextBlog/lsI8WX.png?x-oss-process=image/auto-orient,1/interlace,1/quality,q_90/format,webp){ loading=lazy }


(封面图片来源于：基于 `CC0` 协议的 [shopify](https://www.shopify.com/stock-photos/photos/long-stem-red-rose-on-fire-with-large-flames))

------

!!! tip hint important "温馨提示"

    周刊中所有高亮的内容都可以点击到指定内容的链接～

---
> 如果您正处在微信公众号，请直接滚动至底部👉阅读原文🫶

---

**关键词：** *`Graph`*、*`TypeScript`*、*`Package manager`*、*`CSS In JS`*

## FE News

### 1.[Cytoscape.js](https://js.cytoscape.org/#demos)
> 相关地址：https://js.cytoscape.org/#demos

纯JS编写的功能齐全的图库。

可以绘制以下 `demo` 类图。

![](https://bigdreamerblog.oss-cn-beijing.aliyuncs.com/nextBlog/VZYviB.png)
![](https://bigdreamerblog.oss-cn-beijing.aliyuncs.com/nextBlog/uuL9Db.png)

### 2.[TypeScript 5.4 Beta 来临](https://devblogs.microsoft.com/typescript/announcing-typescript-5-4-beta/)
>相关地址：https://devblogs.microsoft.com/typescript/announcing-typescript-5-4-beta/

- 在最后的赋值之后保留闭包中的缩小范围
- `NoInfer` 实用类型
- `Object.groupBy` 和 `Map.groupBy`
- `--moduleResolution bundler` 和 `--module preserve` 中对 `require()` 调用的支持
- 检查导入属性和断言
- 添加丢失参数的快速修复方法
- 即将到来的 `5.5` 弃用功能
- 重大变更

### 3.[Pnpm 作者做了一个新的、很友好的基准测试](https://pnpm.io/benchmarks)
>相关地址：https://pnpm.io/benchmarks

![](https://bigdreamerblog.oss-cn-beijing.aliyuncs.com/nextBlog/99rASQ.png)
![](https://bigdreamerblog.oss-cn-beijing.aliyuncs.com/nextBlog/jfuTLc.png)

如上图，看起来还是比较中肯的，下面这张图就更直观了：

![](https://bigdreamerblog.oss-cn-beijing.aliyuncs.com/nextBlog/7Jpbes.png)

`yarn Pnp` 也非常显眼以及优异～

### 4.[NEXT.JS APP ROUTER MIGRATION: THE GOOD, BAD, AND UGLY](https://www.flightcontrol.dev/blog/nextjs-app-router-migration-the-good-bad-and-ugly)
>相关地址：https://www.flightcontrol.dev/blog/nextjs-app-router-migration-the-good-bad-and-ugly

`Next.js` 迁移 `App Router`，一些好的、坏的、丑陋的痛点。

作者的公司直接迁移失败，最终停留在 `13.+` 版本，直言更想选择 `Remix`。

说实话我也保留看法，我的博客系统也正在迁移，迁移过程有些沮丧。

### 5.[现代化发布一个包的开始](https://advancedweb.hu/modern-javascript-library-starter/)
> 相关地址：https://advancedweb.hu/modern-javascript-library-starter/

作者介绍了从发布一个包到 `CI/CD` 的流程，中立的讲还是比较基础的，希望大家有收获。

### 6.[Polished 4.3](https://polished.js.org/docs/#installation)
> 相关地址：https://polished.js.org/docs/#installation

这个库是辅助编写 `css in js` 的样式库，可能大家第一次接触，容我写几个 `demo`。

```javascript
// Styles as object usage
const styles = {
  fontSize: between('20px', '100px', '400px', '1000px'),
  fontSize: between('20px', '100px')
}

// styled-components usage
const div = styled.div`
  fontSize: ${between('20px', '100px', '400px', '1000px')};
  fontSize: ${between('20px', '100px')}
`

// CSS as JS Output

h1: {
  'fontSize': 'calc(-33.33333333333334px + 13.333333333333334vw)',
  'fontSize': 'calc(-9.090909090909093px + 9.090909090909092vw)'
}
```


## End

!!! pied-piper "交个朋友吧～"

    我是不换(书生)，"浪子回头金不换"的**不换**，"百无一用是书生"的**书生**，热爱工作，同时在工作之余也热爱开源。

本期周刊到这里就结束了，我们下期再见👋～
