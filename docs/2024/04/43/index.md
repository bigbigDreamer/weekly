---
template: main.html
---

# ryanwang's weekly 第43期

![](https://bigdreamerblog.oss-cn-beijing.aliyuncs.com/nextBlog/HTDOmG.png?x-oss-process=image/auto-orient,1/interlace,1/quality,q_90/format,webp){ loading=lazy }


(封面图片来源于：基于 `CC0` 协议的 [shopify](https://www.shopify.com/stock-photos/photos/work-space-from-above-as-they-type-in-a-laptop))

------

!!! tip hint important "温馨提示"

    周刊中所有高亮的内容都可以点击到指定内容的链接～

---
> 如果您正处在微信公众号，请直接滚动至底部👉阅读原文🫶

---

**关键词：** *`Svelte`*、*`JS Bin`*、*`Signal`*、*`proposal`*

## FE News

### 1.[Svelte 入门手册](https://itnext.io/frontend-development-beyond-react-svelte-1-3-f47eda22cba5)
> 相关地址：https://itnext.io/frontend-development-beyond-react-svelte-1-3-f47eda22cba5

在 `React` 之外的 `Svelte`，很好一篇入门级教材。

![](https://bigdreamerblog.oss-cn-beijing.aliyuncs.com/nextBlog/lLPerk.png)

### 2.[Signal 在 JS Bin 上的小 Demo](https://jsbin.com/safoqap/6/edit?html,output)
> 相关地址：https://jsbin.com/safoqap/6/edit?html,output

![](https://bigdreamerblog.oss-cn-beijing.aliyuncs.com/nextBlog/fweO1M.png)

### 3.[几个有意思的提案]()
> 相关地址：
> 1. https://github.com/tc39/proposal-set-methods
> 2. https://github.com/tc39/proposal-promise-try
> 3. https://github.com/tc39/proposal-math-sum

1. 第一个提案为 `Set` 新增了几个方法：
- Set.prototype.intersection(other)
- Set.prototype.union(other)
- Set.prototype.difference(other)
- Set.prototype.symmetricDifference(other)
- Set.prototype.isSubsetOf(other)
- Set.prototype.isSupersetOf(other)
- Set.prototype.isDisjointFrom(other)

2. 第二提案是对于 `常规` & `非常规` 函数的 `Promise` 化提供原生支持

可以看下社区实现：`p-try`

```typescript
export default async function pTry(function_, ...arguments_) {
	return new Promise(resolve => {
		resolve(function_(...arguments_));
	});
}
```

3. 第三个提案是直接在 `Math` 上加一个比较精准的 `reduce` 累计方法

动机来自于 `Array.reduce` ，但是在某些情况下并不是很精准。

```typescript
let values = [1e20, 0.1, -1e20];

values.reduce((a, b) => a + b, 0); // 0

Math.sumPrecise(values); // 0.1
```

### 4.[查看你项目的依赖关系](https://github.com/pahen/madge?tab=readme-ov-file)
> 相关地址：https://github.com/pahen/madge?tab=readme-ov-file

![](https://bigdreamerblog.oss-cn-beijing.aliyuncs.com/nextBlog/4Yfitt.png)

查看循环引用依赖、查看某个包之间的依赖引用关系等。

### 5.[faces.js](https://zengm.com/facesjs/)
> 相关地址：https://zengm.com/facesjs/

![img.png](https://bigdreamerblog.oss-cn-beijing.aliyuncs.com/nextBlog/E8eeDp.png)

一个可以生成不同的卡通脸头像的库。

### 6.[Preview.js](https://previewjs.com/)
> 相关地址：https://previewjs.com/

在 `IDE` 中实现预览 `React` 组件。

单屏用户的福音，可以不用频繁切换浏览器看样式了。

![](https://bigdreamerblog.oss-cn-beijing.aliyuncs.com/nextBlog/fLtWuK.png)


### 7.[最后，分享个好玩的东西](https://www.clickwheeljs.com/)
> 相关地址：https://www.clickwheeljs.com/

滚轮式的滚动条操作方式，尝试了下，感觉挺新奇。

![](https://bigdreamerblog.oss-cn-beijing.aliyuncs.com/nextBlog/PWSjJR.png)

## End

!!! pied-piper "交个朋友吧～"

    我是不换(书生)，"浪子回头金不换"的**不换**，"百无一用是书生"的**书生**，热爱工作，同时在工作之余也热爱开源。

本期周刊到这里就结束了，我们下期再见👋～
