---
template: main.html
---

# Scholar's Weekly 第37期

![](https://bigdreamerblog.oss-cn-beijing.aliyuncs.com/nextBlog/ugziOI.png?x-oss-process=image/auto-orient,1/interlace,1/quality,q_90/format,webp){ loading=lazy }


(封面图片来源于：基于 `CC0` 协议的 [shopify](https://www.shopify.com/stock-photos/photos/three-roses-in-a-red-glass-vase))

------

!!! tip hint important "温馨提示"

    周刊中所有高亮的内容都可以点击到指定内容的链接～

---
> 如果您正处在微信公众号，请直接滚动至底部👉阅读原文🫶

---

**关键词：** *`Tempo`*、*`Gemini`*、*`Package manager`*、*`JavaScript`*

## FE News

### 1.[Tempo](https://tempo.formkit.com/#introduction)
> 相关地址：https://tempo.formkit.com/#introduction

一个受自多个时间处理开源库灵感的新的时间处理库，尽可能的小，比咱们已知的 `dayjs`还小且支持 `tree-shaking`。

![](https://bigdreamerblog.oss-cn-beijing.aliyuncs.com/nextBlog/5hOmuJ.png)

### 2.[Gemini 1.5](https://blog.google/technology/ai/google-gemini-next-generation-model-february-2024/#sundar-note)
> 相关地址：https://blog.google/technology/ai/google-gemini-next-generation-model-february-2024/#sundar-note

`Gemini 1.5` 来临了，我已经加入候补了，快来试用吧。

![](https://bigdreamerblog.oss-cn-beijing.aliyuncs.com/nextBlog/ihkP9y.png)

我们可以来看看 `Gemini 1.0 pro` 的聪明程度，虽然话没那么多，但是强于 `GPT 3.5`。

![](https://bigdreamerblog.oss-cn-beijing.aliyuncs.com/nextBlog/dl3WnC.png)

### 3.[JSR](https://jsr.io/waitlist)
> 相关地址：https://jsr.io/waitlist

`Deno` 团队即将推出的新的 `包管理工具`。

![](https://bigdreamerblog.oss-cn-beijing.aliyuncs.com/nextBlog/mmNkmP.png)

下面是 `Hack News` 的讨论：

![](https://bigdreamerblog.oss-cn-beijing.aliyuncs.com/nextBlog/6qRDge.png)

### 4.[Hono 4.0 来临](https://hono.dev/)
> 相关地址：https://hono.dev/

`Hono 4.0` 来临，号称全栈，我们先浅看以下 `SSG`。

![](https://bigdreamerblog.oss-cn-beijing.aliyuncs.com/nextBlog/Hcse5O.png)

### 5.[JavaScript 集合中包含并集、交集、差集等](https://www.sonarsource.com/blog/union-intersection-difference-javascript-sets/)
> 相关地址：https://www.sonarsource.com/blog/union-intersection-difference-javascript-sets/

新的提案中囊括了这些方法 `union`、`intersection`、`difference`、`symmetricDifference`、`isSubsetOf`、`isSupersetOf` 和 `isDisjointFrom`.

**并集**

```typescript
const frontEndLanguages = new Set(["JavaScript", "HTML", "CSS"]);

const backEndLanguages = new Set(["Python", "Java", "JavaScript"]);

const allLanguages = frontEndLanguages.union(backEndLanguages);

// => Set {"JavaScript", "HTML", "CSS", "Python", "Java"}
```
**交集**

```typescript
const frontEndLanguages = new Set(["JavaScript", "HTML", "CSS"]);

const backEndLanguages = new Set(["Python", "Java", "JavaScript"]);

const frontAndBackEnd = frontEndLanguages.intersection(backEndLanguages);

// => Set {"JavaScript"} 

```

**单一对比相交差异**

```typescript
const frontEndLanguages = new Set(["JavaScript", "HTML", "CSS"]);

const backEndLanguages = new Set(["Python", "Java", "JavaScript"]);

const onlyFrontEnd = frontEndLanguages.difference(backEndLanguages);

// => Set {"HTML", "CSS"} 

const onlyBackEnd = backEndLanguages.difference(frontEndLanguages);

// => Set {"Python", "Java"}

```

**全对比相交差异**

```typescript
const frontEndLanguages = new Set(["JavaScript", "HTML", "CSS"]);

const backEndLanguages = new Set(["Python", "Java", "JavaScript"]);

const onlyFrontEnd = frontEndLanguages.symmetricDifference(backEndLanguages);

// => Set {"HTML", "CSS", "Python", "Java"} 

const onlyBackEnd = backEndLanguages.symmetricDifference(frontEndLanguages);

// => Set {"Python", "Java", "HTML", "CSS"}
```

**是否子集**

```typescript
const frontEndLanguages = new Set(["JavaScript", "HTML", "CSS"]);

const declarativeLanguages = new Set(["HTML", "CSS"]);

declarativeLanguages.isSubsetOf(frontEndLanguages);

// => true

frontEndLanguages.isSubsetOf(declarativeLanguages);

// => false
```

### 6.[使用 Array.prototype.with 更新不可变数组](https://web.dev/blog/array-with?hl=zh-cn)
> 相关地址：https://web.dev/blog/array-with?hl=zh-cn

`Array.prototype.with(index, value) `方法会返回对其调用的数组的副本，并将 `index` 设置为您提供的新 `value`。

以下示例显示了一个年龄数组。您想要创建新的数组副本，同时将第二个年龄从 `15` 更改为 `16`：

```typescript
const ages = [10, 15, 20, 25];

const newAges = ages.with(1, 16);
console.log(newAges); // [10, 16, 20, 25]
console.log(ages); // [10, 15, 20, 25] (unchanged)
```

![](https://bigdreamerblog.oss-cn-beijing.aliyuncs.com/nextBlog/47xdVT.png)

### 7.[ So You Think You Know Git... ]

`Scott Chacon` 生动的即兴演讲🎤。

<video  controls width="100%" height="200" muted>
    <source type="video/mp4"  src="https://bigdreamerblog.oss-cn-beijing.aliyuncs.com/nextBlog/So You Think You Know Git - FOSDEM 2024.mp4" />
</video>


## End

!!! pied-piper "交个朋友吧～"

    我是不换(书生)，"浪子回头金不换"的**不换**，"百无一用是书生"的**书生**，热爱工作，同时在工作之余也热爱开源。

本期周刊到这里就结束了，我们下期再见👋～
