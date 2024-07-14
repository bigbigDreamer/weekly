---
template: main.html
---

# ryanwang's weekly 第50期

![](https://bigdreamerblog.oss-cn-beijing.aliyuncs.com/nextBlog/MoJyhp.png?x-oss-process=image/auto-orient,1/interlace,1/quality,q_90/format,webp){ loading=lazy }


(封面图片来源于：基于 `CC0` 协议的 [shopify](https://www.shopify.com/stock-photos/photos/silhouetted-people-taking-pictures-of-the-sky))

------

!!! tip hint important "温馨提示"

    周刊中所有高亮的内容都可以点击到指定内容的链接～

---
> 如果您正处在微信公众号，请直接滚动至底部👉阅读原文🫶

---

**关键词：** *`es-toolkit`*、 *`ESLint`*、 *`Isolated Declarations`*

## FE News

### 1.[es-toolkit](https://github.com/toss/es-toolkit/blob/main/README-zh_hans.md)
> 相关地址：https://github.com/toss/es-toolkit/blob/main/README-zh_hans.md

![](https://bigdreamerblog.oss-cn-beijing.aliyuncs.com/nextBlog/Sk8OqP.png)

![](https://bigdreamerblog.oss-cn-beijing.aliyuncs.com/nextBlog/eXJBxu.png)

### 2.[ESLint v9.0.0 released](https://eslint.org/blog/2024/04/eslint-v9.0.0-released/)
> 相关地址：https://eslint.org/blog/2024/04/eslint-v9.0.0-released/

新增的功能挺多的，但是有一点需要注意下：

** Node.js < v18.18.0, v19 no longer supported**

意味着：`v14.x`、`16.x`、`17.x` ,以及 `v < 18.18.0` 都不支持啦

### 3. [Speeding up the JavaScript Ecosystem: Isolated Declarations](https://marvinh.dev/blog/speeding-up-javascript-ecosystem-part-10/)
> 相关地址：https://marvinh.dev/blog/speeding-up-javascript-ecosystem-part-10/

可以加速 `TypeScript` 声明文件的生成。

`isolatedDeclarations`，`TypeScript 5.5` 开始有的：

```json
{
  "extends": ["../../tsconfig.json"],
  "compilerOptions": {
    "baseUrl": "./",
    "declarationDir": "./lib",
    "isolatedDeclarations": true,
    "composite": true,
  },
  "include": ["src"]
}
```

可以简单点说，就是这个配置项，有一个作用就是，如果你在声明 `export` 类型的 `ts` 参数的时候必须导出正确的类型。

![](https://bigdreamerblog.oss-cn-beijing.aliyuncs.com/nextBlog/xdnYYs.png)

更深入的研究，我觉得有必要单独开一篇文章来讲。

### 4.[pnpm 9.5 带来了 `catalog` 协议](https://github.com/pnpm/rfcs/blob/main/text/0001-catalogs.md)
> 相关地址：https://github.com/pnpm/rfcs/blob/main/text/0001-catalogs.md

专为 `monorepo` 准备的特性，可以分别定义每一个子包的依赖。

![](https://bigdreamerblog.oss-cn-beijing.aliyuncs.com/nextBlog/FAqKVj.png)

![](https://bigdreamerblog.oss-cn-beijing.aliyuncs.com/nextBlog/cYZ3b0.png)

### 5.[使用 JavaScript 重现 THX“Deep Note”](https://keliris.dev/articles/deep-note)
> 相关地址：https://keliris.dev/articles/deep-note

作者使用 `Tone.js` 创作了和弦，比 `web audio` 的玩法更多，专注于音频编程。

### 6. [Eruda](https://github.com/liriliri/eruda)
> 相关地址：https://github.com/liriliri/eruda

大家用的最多的应该是 `Vconsole`，但是应该很少有人知道 `Eruda`，出道其实不算晚，有机会在实际项目中使用过，蛮不错的。



## End

!!! pied-piper "交个朋友吧～"

    我是不换(书生)，"浪子回头金不换"的**不换**，"百无一用是书生"的**书生**，热爱工作，同时在工作之余也热爱开源。

本期周刊到这里就结束了，我们下期再见👋～
