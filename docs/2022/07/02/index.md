---
template: main.html
---

# ryanwang's weekly 第2期

![](https://to-out-use.oss-cn-hangzhou.aliyuncs.com/common/QXMTCH.jpg?x-oss-process=image/auto-orient,1/interlace,1/quality,q_90/format,webp){ loading=lazy }


(封面图片来源于：基于 `CC0` 协议的 [stocksnap](https://stocksnap.io/photo/street-desert-WIJKB8LQG8))

------

!!! tip hint important "温馨提示"

    周刊中所有高亮的内容都可以点击到指定内容的链接～

**关键词：** *技术博客*、*`RegExp`*、*`V8`*、*`UMT`*、*`GitHub Actions`*、*`MonoRepo`*

## 1. [如何坚持写技术博客？](https://zhuanlan.zhihu.com/p/497150220)

相信大部分爱好输出博客的`coder`都有着自己的`"洁癖"`与`"风格"`，但是往往有时候就是这些`"洁癖"`与`"风格"`阻碍了我们的坚持写作，文章主要从**排版规范化**、**选题系统化**、**维护简单化**来帮助我们破除障碍，值得一读～

## 2. [magic-regexp Public](https://github.com/danielroe/magic-regexp)

一个可以编译的、类型安全的、可读的正则表达式替代品。文档[传送门](https://magic-regexp.roe.dev/)。

简单贴个`Demo`：

```ts
import { createRegExp, exactly, oneOrMore, digit } from 'magic-regexp'

createRegExp(
  oneOrMore(digit)
    .as('major')
    .and('.')
    .and(oneOrMore(digit).as('minor'))
    .and(exactly('.').and(oneOrMore(char).as('patch')).optionally())
)
// /(?<major>(\d)+)\.(?<minor>(\d)+)(\.(?<patch>(.)+))?/

```

## 3. [Discontinuing release blog posts](https://v8.dev/blog/discontinuing-release-posts)

`V8`引擎 在 `v9.9` 版本之前都保持着**每个新分支发布博客文章**，但是官方团队宣布从 `v10.0` 开始将不再为每个新分支发布博客，**实际上，从`V9.9`版本开始就没有发过了。**

## 4. [UTM](https://getutm.app/)

`Run virtual machines on IOS and MacOS`

![](https://to-out-use.oss-cn-hangzhou.aliyuncs.com/common/N86quG.png?x-oss-process=image/auto-orient,1/interlace,1/quality,q_90/format,webp){ loading=lazy }

*(图片素材来源于 [UMT](https://getutm.app/)) 官网，二次编辑合成)*

以前在 `IPad` 上使用 [`iSH`](https://github.com/ish-app/ish) 启动一个 `Node` 静态资源服务器，用着还不错。但是 `UTM` 这个感觉有些耳目一新的感觉。

## 5. [Manually Trigger a GitHub Actions](https://levelup.gitconnected.com/how-to-manually-trigger-a-github-actions-workflow-4712542f1960)

大部分情况下 `Github Actions` 都是自动执行的，但是如何手动的去执行呢？这里提供了示例。

```yml
name: Production Deployment
on: 
  workflow_dispatch:
```
(: 本站点的订阅邮件通知 `Actions` 就是通过手动触发的，为了保证每次迭代升级不影响主要内容的订阅用户频繁收到邮件通知。

## 6. [How to Easily Manage Dependencies in a JS Monorepo](https://blog.bitsrc.io/how-to-easily-manage-dependencies-in-a-js-monorepo-6216bd6621ea)

![](https://to-out-use.oss-cn-hangzhou.aliyuncs.com/common/Fx2BYB.jpg?x-oss-process=image/auto-orient,1/interlace,1/quality,q_90/format,webp){ loading=lazy }

项目开发的依赖问题向来是开发者比较头疼的问题，但是继 `pnpm` 之后，原作者又诞生一大作 [`Bit`](https://bit.cloud/blog/painless-monorepo-dependency-management-with-bit-l4f9fzyw) + [`pnpm`](https://bit.cloud/blog/painless-monorepo-dependency-management-with-bit-l4f9fzyw)。以下是 `Bit` 对于包依赖的输出信息。

![](https://to-out-use.oss-cn-hangzhou.aliyuncs.com/common/OHFA7z.png?x-oss-process=image/auto-orient,1/interlace,1/quality,q_90/format,webp)

## End

最后，简单总结下这一个星期的修炼内容～

#### 1. 给 `weekly` 周刊小站新增了若干能力，迭代至 `Release 2.0.0`，也可查看 [里程碑](/LANDMARK/)

- 支持了 `Email` 订阅能力
- 提供了图片懒加载能力
- 提供了图片双击幻灯片放映效果
- 引入 `normalize.css` 规范全局基础标签的样式
- 接入了`谷歌分析`和`百度分析`观测全站数据
- 支持了 `FeedBack` 反馈小组件 

#### 2. 给 `MkDocs` 社区生态贡献了一份：接入国内 `Waline` 评论系统的[方案](https://github.com/squidfunk/mkdocs-material/discussions/4166)。

#### 3. 给 `Waline` 社区贡献的 `React` 版本的[包](https://montage.bigdreamer.cc/components/mit/react-waline-client)收到了原作者的 `👍`，能收到正向反馈心情还是蛮愉悦的。
