---
template: main.html
---

# ryanwang's weekly 第45期

![](https://bigdreamerblog.oss-cn-beijing.aliyuncs.com/nextBlog/UuQK4W.png?x-oss-process=image/auto-orient,1/interlace,1/quality,q_90/format,webp){ loading=lazy }


(封面图片来源于：基于 `CC0` 协议的 [shopify](https://www.shopify.com/stock-photos/photos/trendy-bluetooth-speaker))

------

!!! tip hint important "温馨提示"

    周刊中所有高亮的内容都可以点击到指定内容的链接～

---
> 如果您正处在微信公众号，请直接滚动至底部👉阅读原文🫶

---

**关键词：** *`JS Naked Day`*、*`Hand Book`*、*`URL`*、*`Intl`*

## FE News

### 1.[JS Naked Day](https://js-naked-day.org/)
> 相关地址：https://js-naked-day.org/

![](https://bigdreamerblog.oss-cn-beijing.aliyuncs.com/nextBlog/SvgB6G.png)

![](https://bigdreamerblog.oss-cn-beijing.aliyuncs.com/nextBlog/TL9NLS.png)

`JS` “luoti日”，大家还是拼音品味吧，这个日子寓意挺奇葩的......但是顾名思义，就是你的网站没有 `JS` 也能跑起来。

每年的 `4.24` 日。

那么有 `CSS` “luoti日”吗？答案是肯定的，并且 `JS luoti日` 就是抄袭 `CSS luoti日`。

日子在每年的 `4.9` 日。

### 2.[The Front End Developer/Engineer Handbook 2024](https://frontendmasters.com/guides/front-end-handbook/2024/)
> 相关地址：https://frontendmasters.com/guides/front-end-handbook/2024/

`2024` 年的前端工程师开发手册，大概扫了一下，比较基础，适合刚入门的同学做教材。

![](https://bigdreamerblog.oss-cn-beijing.aliyuncs.com/nextBlog/BCc71W.png)

### 3.[The problem with new URL(), and how URL.parse() fixes that](https://kilianvalkhof.com/2024/javascript/the-problem-with-new-url-and-how-url-parse-fixes-that/)
> 相关地址：https://kilianvalkhof.com/2024/javascript/the-problem-with-new-url-and-how-url-parse-fixes-that/

关于如何解决 `new URL()` 构造函数的报错问题，避免 `try catch` 的烦恼。

我们有两个选项：

- `URL.canParse(xxxx)`
```typescript
URL.canParse('xxxx')
// false
```
- `URL.parse(xxx)`
  - 还没普及
![](https://bigdreamerblog.oss-cn-beijing.aliyuncs.com/nextBlog/PjiLX0.png)

### 4.[Intl.Segmenter 对象现已纳入 Baseline](https://web.dev/blog/intl-segmenter?hl=zh-cn)
> 相关地址：https://web.dev/blog/intl-segmenter?hl=zh-cn

许多非拉丁语言（如中文和日语）不使用空格来分隔单词。因此，对空格使用 `JavaScript split()` 方法将文本拆分为字词，将返回错误的结果。

使用 `Intl.segmenter()` 构造函数创建新的 `Intl.Segmenter` 对象时，请传入 `locale` 以及包含 `granularity` 的选项，这些选项的值可以为 `"grapheme"、"word"` 或 `"sentence"`。以下示例为日语创建了一个新的 `Intl.Segmenter` 对象，将单词拆分为不同的单词。


```typescript
const segmenter = new Intl.Segmenter('ja-JP', { granularity: 'word' });
```

使用文本字符串对 `Intl.Segmenter` 对象调用 `segment()` 方法会返回一个可迭代对象：

```typescript
const segments = segmenter.segment(str);
console.table(Array.from(segments));
```

如需查看有关如何使用此功能的精彩教程，请参阅 `Polypane` 博客上的使用 `Intl.Segmenter API`。

在 `JavaScript` 中使用 `Intl.Segmenter` 进行国际文本分割部分提供了更多示例，包括如何将 `Intl.Segmenter` 与表情符号搭配使用。

### 5.[在 React 中使用 `Signals`]()

之前的两篇周刊中我们跟踪记录过 `Signals` 的提案 -> 实战 --> `React` 中的应用。

算是一个完结吧～

<video width="100%" height="200px" controls src="https://bigdreamerblog.oss-cn-beijing.aliyuncs.com/nextBlog/JS Built-in Signals In React and Svelte TODAY!.mp4"></video>


## End

!!! pied-piper "交个朋友吧～"

    我是不换(书生)，"浪子回头金不换"的**不换**，"百无一用是书生"的**书生**，热爱工作，同时在工作之余也热爱开源。

本期周刊到这里就结束了，我们下期再见👋～
