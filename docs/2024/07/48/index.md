---
template: main.html
---

# ryanwang's weekly 第48期

![](https://bigdreamerblog.oss-cn-beijing.aliyuncs.com/nextBlog/WiqNPd.png?x-oss-process=image/auto-orient,1/interlace,1/quality,q_90/format,webp){ loading=lazy }


(封面图片来源于：基于 `CC0` 协议的 [shopify](https://www.shopify.com/stock-photos/photos/heart-of-light?c=love))

------

!!! tip hint important "温馨提示"

    周刊中所有高亮的内容都可以点击到指定内容的链接～

---
> 如果您正处在微信公众号，请直接滚动至底部👉阅读原文🫶

---

**关键词：** *`ES2024`*、 *`React Compiler`*、 *`slack`*

## FE News

### 1.[`Set` 的新提案终于在最新的浏览器中实现了](https://developer.mozilla.org/en-US/blog/javascript-set-methods/)
> 相关地址：https://developer.mozilla.org/en-US/blog/javascript-set-methods/

![](https://bigdreamerblog.oss-cn-beijing.aliyuncs.com/nextBlog/4tlZVx.png)
*图片来源于 MDN: https://developer.mozilla.org/en-US/blog/javascript-set-methods/*

- `section()` 方法返回一个新的集合，其中包含此集合和给定集合中的元素。

- `union()` 方法返回一个新的集合，其中包含此集合和给定集合中的所有元素。

- `difference()` 方法返回一个新的集合，其中包含此集合中但不在给定集合中的元素。

- `symmetricDifference()` 方法返回一个新的集合，其中包含两个集合中但不同时在两个集合中的元素。

- `isSubsetOf()` 方法返回一个布尔值，指示一个集合的所有元素是否都在特定集合中。

- `isSupersetOf()` 方法返回一个布尔值，指示一个集合的所有元素是否都在特定集合中。

- `isDisjointFrom()` 方法返回一个布尔值，指示此集合与特定集合是否没有共同元素。

### 2. [`ES2024` 的新特性](https://2ality.com/2024/06/ecmascript-2024.html#ensuring-that-strings-are-well-formed)
> 相关地址：https://2ality.com/2024/06/ecmascript-2024.html#ensuring-that-strings-are-well-formed

有好几个特性，但是这里仅仅列举我们常用的几个，其他有兴趣可以尝试点击原文去查看

 - `Map.groupBy() `

 ```ts
assert.deepEqual(
  Map.groupBy([0, -5, 3, -4, 8, 9], x => Math.sign(x)),
  new Map()
    .set(0, [0])
    .set(-1, [-5,-4])
    .set(1, [3,8,9])
);

 ```

 - `Promise.withResolvers()`

 在往期的周刊中有讲到过，便捷创建异步函数的方案。

 ```ts
const { promise, resolve, reject } = Promise.withResolvers();
 ```

 老头出了本新书：[探索JavaScript](https://exploringjs.com/js/book/ch_why-js.html)
 > 相关地址：https://exploringjs.com/js/book/ch_why-js.html

在线可以免费阅读。

### 3.[理解 React Compiler](https://tonyalicea.dev/blog/understanding-react-compiler/)
> 相关地址： https://tonyalicea.dev/blog/understanding-react-compiler/

文中介绍了 `React Compiler` 的工作原理，还是受益匪浅的，推荐点开原文看看。


### 4.[探索两种生成随机数的方法](https://www.bennadel.com/blog/4669-exploring-randomness-in-javascript.htm)
> 相关地址：https://www.bennadel.com/blog/4669-exploring-randomness-in-javascript.htm

作者 `Ben Nadel` 介绍了：`Math.random()` 和 `Crypto.getRandomValues()` 生成随机数的性能以及速度的对比。

最终的结论是：随机数没什么不好，速度和性能优先于：`Crypto.getRandomValues()`

![](https://bigdreamerblog.oss-cn-beijing.aliyuncs.com/nextBlog/KtxgEA.png)

### 5.[AI 驱动下的 slack 从 Enzyme RTS 的转换探索](https://slack.engineering/balancing-old-tricks-with-new-feats-ai-powered-conversion-from-enzyme-to-react-testing-library-at-slack/)
> 相关地址：https://slack.engineering/balancing-old-tricks-with-new-feats-ai-powered-conversion-from-enzyme-to-react-testing-library-at-slack/

这里用大白话简单描述下就是：`Slack` 使用了 `AI`，构建了自己的一套 `LLM` 模型帮助自己节省成本的前提下，实现了 `Enzyme` 到 `RTS` 的单元测试用例转换。

~~（：一开始就用 `RTS` ,是不是更好点，可以减少很多历史负债。------ 个人见解~~


## End

!!! pied-piper "交个朋友吧～"

    我是不换(书生)，"浪子回头金不换"的**不换**，"百无一用是书生"的**书生**，热爱工作，同时在工作之余也热爱开源。

本期周刊到这里就结束了，我们下期再见👋～
