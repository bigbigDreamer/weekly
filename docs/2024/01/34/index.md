---
template: main.html
---

# Scholar's Weekly 第34期

![](https://bigdreamerblog.oss-cn-beijing.aliyuncs.com/nextBlog/Ms0g50.png?x-oss-process=image/auto-orient,1/interlace,1/quality,q_90/format,webp){ loading=lazy }


(封面图片来源于：基于 `CC0` 协议的 [shopify](https://www.shopify.com/stock-photos/photos/calm-water-in-european-city?c=background))

------

!!! tip hint important "温馨提示"

    周刊中所有高亮的内容都可以点击到指定内容的链接～

---
> 如果您正处在微信公众号，请直接滚动至底部👉阅读原文🫶

---

**关键词：** *`React Library`*、*`Syntax`*、*`Assert`*、*`CSS`*

## FE News

### 1.[盘点2024年的React库](https://www.robinwieruch.de/react-libraries/)
> 相关地址：https://www.robinwieruch.de/react-libraries/

下面仅仅是部分内容，全部内容可以点开相关地址查看阅读：
![](https://bigdreamerblog.oss-cn-beijing.aliyuncs.com/nextBlog/pCHvcO.png)

### 2.[Syntax 播客](https://syntax.fm/show/716/js-perf-wins-and-new-node-js-features-with-yagiz-nizipli#t=27:36)

Yagiz Nizipli 讨论了他贡献的 Node.js 性能改进、优化技术、URL 的复杂性以及支持未来 TypeScript 支持的因素。

如下是播客，全程英文，听力好点的同学可以戳【阅读原文】入耳，微信公粽号不一定可以支持。

<figure>
  <figcaption>Ready To Listen</figcaption>
  <audio controls src="https://bigdreamerblog.oss-cn-beijing.aliyuncs.com/nextBlog/Syntax_-_716.mp3"></audio>
</figure>

### 3.[断言的黄金法则](https://www.epicweb.dev/the-golden-rule-of-assertions)
> 相关地址：https://www.epicweb.dev/the-golden-rule-of-assertions

-----

> "当且仅当未满足系统背后的意图时，测试必定失败。"

“黄金法则” 如上，因为早前也接触过单元测试，浅解过 `TDD`、`BDD` 测试法则，大白话翻译一下这个“法则”，其实很简单，就是「不要过分关注内部实现，一个输入保持一个输出，作为测试执行的大前提」。

### 4.[2024 年每位前端开发者都应知道的 5 个 CSS 代码段](https://web.dev/articles/5-css-snippets-every-front-end-developer-should-know-in-2024?hl=zh-cn)
> 相关地址：https://web.dev/articles/5-css-snippets-every-front-end-developer-should-know-in-2024?hl=zh-cn

- `CSS:has(.potential-beyond-being-a-parent-selector)`
```css
button:has(.icon) {
  gap: 1ch;
}

.card:has(img) {
  grid-auto-flow: row;
}
```
- 创建子网格布局
```css
body {
  display: grid;
  grid-template-columns: repeat(auto-fill, minmax(30ch, 1fr));

  > article {
    display: grid;
    grid-row: span 4; 
    grid-template-rows: subgrid;
  }
}
```
- 嵌套 CSS 的方式
```css
.you {
  .can-totally-ship-this {
    &.if-you-wanted {
      /* it's VERY MUCH like SCSS */
      
      &:is(:hover, :focus-visible) {
        /* put a bird on it */
      }
    }
  }
}

.for-theming {
  @media (prefers-color-scheme: dark) {
    /* you can nest media queries */
  }
}

/* or for theming with [data-theme="dark"] */
.button {
  background: black;
  color: white;

  /* nest and do more than just append, flip it and reverse it */
  [data-theme="dark"] & {
    background: white;
    color: black;
  }
}
```
- 让浏览器平衡标题
- 使用容器查询单元
```css
.card {
  :is(h2,h3) {
    font-size: clamp(1.5rem, 5cqi, 4rem);
  }

  img {
    inline-size: 100cqi;

    @container (orientation: landscape) {
      inline-size: 50cqi;
    }
  }
}
```

### 5.[一个轻量的性能测试工具](https://github.com/tinylibs/tinybench)
> 相关地址：https://github.com/tinylibs/tinybench

```typescript
import { Bench } from 'tinybench';

const bench = new Bench({ time: 100 });

bench
  .add('faster task', () => {
    console.log('I am faster')
  })
  .add('slower task', async () => {
    await new Promise(r => setTimeout(r, 1)) // we wait 1ms :)
    console.log('I am slower')
  })
  .todo('unimplemented bench')

await bench.warmup(); // make results more reliable, ref: https://github.com/tinylibs/tinybench/pull/50
await bench.run();

console.table(bench.table());

// Output:
// ┌─────────┬───────────────┬──────────┬────────────────────┬───────────┬─────────┐
// │ (index) │   Task Name   │ ops/sec  │ Average Time (ns)  │  Margin   │ Samples │
// ├─────────┼───────────────┼──────────┼────────────────────┼───────────┼─────────┤
// │    0    │ 'faster task' │ '41,621' │ 24025.791819761525 │ '±20.50%' │  4257   │
// │    1    │ 'slower task' │  '828'   │ 1207382.7838323202 │ '±7.07%'  │   83    │
// └─────────┴───────────────┴──────────┴────────────────────┴───────────┴─────────┘

console.table(
  bench.table((task) => {'Task name': task.name})
);

// Output:
// ┌─────────┬───────────────────────┐
// │ (index) │       Task name       │
// ├─────────┼───────────────────────┤
// │    0    │ 'unimplemented bench' │
// └─────────┴───────────────────────┘
```

### 6.[worker-timers](https://github.com/chrisguttandin/worker-timers)
> 相关地址：https://github.com/chrisguttandin/worker-timers

动机：主线程的 `setTimeout` 会挂起，可以在 `webWorker` 中使用。

### 7.[Sutra.js](https://github.com/yantra-core/Sutra.js)
> 相关地址：https://github.com/yantra-core/Sutra.js

对 `Tree` 数据的管理，性能提升方面不详，但是语法糖挺好，可以在业务上一试。


```typescript
    let sutra = SUTRA.createSutra();
    sutra
      .if('isBoss')
      .if('isHealthLow')
      .then('updateEntity', { color: 0xff0000, speed: 5 });

```


## End

!!! pied-piper "交个朋友吧～"

    我是不换(书生)，"浪子回头金不换"的**不换**，"百无一用是书生"的**书生**，热爱工作，同时在工作之余也热爱开源。

本期周刊到这里就结束了，我们下期再见👋～
