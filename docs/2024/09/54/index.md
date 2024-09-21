---
template: main.html
---

# ryanwang's weekly 第54期

![](https://bigdreamerblog.oss-cn-beijing.aliyuncs.com/nextBlog/vcYPxG.png?x-oss-process=image/auto-orient,1/interlace,1/quality,q_90/format,webp){ loading=lazy }


(封面图片来源于：基于 `CC0` 协议的 [shopify](https://www.shopify.com/stock-photos/photos/a-bird-in-flight-over-still-blue-water))

------

!!! tip hint important "温馨提示"

    周刊中所有高亮的内容都可以点击到指定内容的链接～

---
> 如果您正处在微信公众号，请直接滚动至底部👉阅读原文🫶

---

**关键词：** *`ES5`*、 *`TypeScript 5.6`* 、*`EsLint`*、*`Express 5.0`*

## FE News
 
### [1. Web 上的 ES5 现状](https://philipwalton.com/articles/the-state-of-es5-on-the-web/)
> 相关地址：https://philipwalton.com/articles/the-state-of-es5-on-the-web/

先来介绍下作者调研的结果：

- `89%` 的网站至少提供一个包含未转译的 `ES6+` 语法的 `JavaScript` 文件。

- `79%` 的网站至少提供一个包含 `ES5` 辅助代码的 `JavaScript` 文件。

- `68%` `的网站至少提供一个既包含 `ES5` 辅助代码又在同一文件中包含未转译的 `ES6+` 语法的 `JavaScript` 文件。

作者给的建议：

1. **对于 lib 的库开发区者，将自己写的库编译为 es5 基本什么必要**
2. **对于网站开发者而言，将第三方的 ES6 库排除编译并不是什么明智之举**

个人观点：

作者的结论相对中肯，第一点建议**部分认同**，第二个观点**表示赞同**。
我认为第一个建议应该结合使用场景，`case by case` 的考虑，以确保兼容绝大部分的使用场景，毕竟是第三方库，提供的选择越多，受众群体就越多，可玩性就更高。


### [2. TypeScript 5.6 发布](https://devblogs.microsoft.com/typescript/announcing-typescript-5-6/#lib.d.ts)
> 相关地址：https://devblogs.microsoft.com/typescript/announcing-typescript-5-6/#lib.d.ts

`Microsoft` 宣布发布 `TypeScript 5.6`。

![](https://bigdreamerblog.oss-cn-beijing.aliyuncs.com/nextBlog/EP0r8R.png)

大概有这么多特性，其中有一个特性还是蛮有意思的 `--no-check`

在第 `50` 期周刊的时候咱们聊到了 `Isolated Declarations`，当时还单独写了一篇博客，当时介绍比较多的 `transpileModule` 和 `transpileDeclaration` 内部其实已经使用了 `no-check` 说白了就是跳过不必要的类型 `check` 去做类型生成。

### [3. 版本支持政策和 ESLint v8.x 生命周期终止](https://eslint.org/blog/2024/09/eslint-v8-eol-version-support/)
> 相关地址：https://eslint.org/blog/2024/09/eslint-v8-eol-version-support/

背景：

>由于我们意识到并非每个人都能在六个月内升级到新的主要版本，因此我们与 HeroDevs 合作，为 EOL 发布线提供商业支持。
> HeroDevs 提供 EOL ESLint 软件包的直接替代品，让您获得无缝体验。
>
> 此外，HeroDevs 为这些嵌入式替代品提供不间断的支持，这意味着他们将继续收到关键的安全修复。

### [4. Express.js 5.0 更新](https://github.com/expressjs/express/pull/5916)
> 相关地址：https://github.com/expressjs/express/pull/5916

很荣幸为开源社区做贡献，情绪价值吧，乐此不疲。

### [5. 要求 Oracle 释放 JavaScript 商标](https://javascript.tm/#signed)
> 相关地址：https://javascript.tm/#signed

有点像万民书，不过让 `JavaScript` 商标释放回公共领域还是很有价值的，至少起初的 `ECMAScript` 不再被人诟病了。

![](https://bigdreamerblog.oss-cn-beijing.aliyuncs.com/nextBlog/doKZtf.png)

### [6. 在 TS 项目中删除那些你用不到的代码](https://github.com/line/ts-remove-unused)
> 相关地址：https://github.com/line/ts-remove-unused

![](https://bigdreamerblog.oss-cn-beijing.aliyuncs.com/nextBlog/6gLfuL.png)

如果只是玩一玩的话，就使用 `--check` 仅报告即可。

### [7. 一个更小的 Execa -- nano-spawn](https://github.com/sindresorhus/nano-spawn?tab=readme-ov-file)
> 相关地址：https://github.com/sindresorhus/nano-spawn?tab=readme-ov-file

![](https://bigdreamerblog.oss-cn-beijing.aliyuncs.com/nextBlog/NFn6FH.png)

`sindresorhus` 又双叒叕 整活了，从 `Execa` 到 `nano-spawn` ，体积直接是倍数级别的减少，功能也做了阉割，因为常规使用并不会用到那么多的能力。



## End

!!! pied-piper "交个朋友吧～"

    我是不换(书生)，"浪子回头金不换"的**不换**，"百无一用是书生"的**书生**，热爱工作，同时在工作之余也热爱开源。

本期周刊到这里就结束了，我们下期再见👋～
