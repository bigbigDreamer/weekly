---
template: main.html
---

# ryanwang's weekly 第32期

![](https://bigdreamerblog.oss-cn-beijing.aliyuncs.com/nextBlog/fBpO2p.png?x-oss-process=image/auto-orient,1/interlace,1/quality,q_90/format,webp){ loading=lazy }


(封面图片来源于：基于 `CC0` 协议的 [pixabay](https://pixabay.com/photos/lighthouse-hill-coast-anglesey-8415024//))

------

!!! tip hint important "温馨提示"

    周刊中所有高亮的内容都可以点击到指定内容的链接～

---
> 如果您正处在微信公众号，请直接滚动至底部👉阅读原文🫶

---

**关键词：** *`JS`*、*`with`*、*`Array`*

## FE News

### 1.[2024 年每个 JavaScript 开发人员都应该知道的 10 个面试问题](https://medium.com/javascript-scene/10-interview-questions-every-javascript-developer-should-know-in-2024-c1044bcb0dfb)
> 相关地址：https://medium.com/javascript-scene/10-interview-questions-every-javascript-developer-should-know-in-2024-c1044bcb0dfb

1. 什么是闭包？
2. 什么是纯函数？
3. 什么是函数组合？
4. 什么是函数式编程？
5. 什么是 Promise？
6. 什么是TypeScript？
7. 什么是 Web Component？
8. 什么是 React Hook？
9. 如何在 React 中创建点击计数器？
10. 什么是测试驱动开发（TDD）？

### 2.[让我们回顾一下 JavaScript 的 `with()` 语句](https://macarthur.me/posts/with)
> 相关地址：https://macarthur.me/posts/with

作者意图很鲜明，“`with`” 所带来的风险和挑战被夸大了。（：我保持中立态度

缺点：

- 严格模式不支持
- 范围泄漏
- 性能

```typescript
with (data) {
  await saveToDb({
    imageUrl,
    width,
    height,
  });
}
```

但是我还是同意把它放在 `CLI` 程序编写中实现，至于生产代码则不推荐，因为严格模式不支持。

其实 `ES6` 的结构已经相当优异了。

### 3.[理解毫无意义的 `JavaScript` 特性](https://www.smashingmagazine.com/2023/12/making-sense-of-senseless-javascript-features/)
> 相关地址：https://www.smashingmagazine.com/2023/12/making-sense-of-senseless-javascript-features/

- `0.1 + 0.2 != 0.3`
- 强制类型转换
  - `1 == true`
  - `"2" == 2`
- `ASI` 机制（自动分号插入机制）
- 基础数据类型太多
  - `null` 、 `undefined` 、`NaN`
- `++` 和 `--`

虽然确实有些困惑，但是基于历史原因，可以理解和接受，只是需要在日常开发中多家注意。

### 4.[2023年一些新的 `javaScript` 数组方法](https://12daysofweb.dev/2023/new-js-array-methods/)
> 相关地址：https://12daysofweb.dev/2023/new-js-array-methods/

*注：以下示例来源于原文*

- `toReversed` - 不修改原数组的条件下反转数组

```typescript
const arr = ["Merlin", "Ursula", "Gandalf"];

const reverseArr = arr.toReversed();

// logs ["Gandalf", "Ursula", "Merlin"]
console.log(reverseArr);

// logs ["Merlin", "Ursula", "Gandalf"]
console.log(arr);
```

- `toSpliced` - 不修改原数组的情况下数组拼接

```typescript
const wizards = ['Merlin', 'Ursula', 'Gandalf', 'Radagast'];

const lessWizards = wizards.toSpliced(2, 1);

// logs ['Merlin', 'Ursula', 'Gandalf', 'Radagast']
console.log(wizards);

// logs ['Merlin', 'Ursula', 'Radagast']
console.log(lessWizards);
```

- `toSorted` - 不修改原数组的前提下，进行排序

```typescript
let sortedWizards = wizards.toSorted();

// logs ['Merlin', 'Ursula', 'Gandalf', 'Radagast']
console.log(wizards);

// logs ['Gandalf the Gray', 'Merlin', 'Ursula of the Sea']
console.log(sortedWizards);
```

- `with` - 不修改原数组的前提下，进行修改指定索引的数据值

```typescript
let differentWizards = wizards.with(2, 'Radagast');

// logs ['Merlin', 'Ursula', 'Gandalf']
console.log(wizards);

// logs ['Merlin', 'Ursula', 'Radagast']
console.log(differentWizards);
```

## End

!!! pied-piper "交个朋友吧～"

    我是不换(书生)，"浪子回头金不换"的**不换**，"百无一用是书生"的**书生**，热爱工作，同时在工作之余也热爱开源。

本期周刊到这里就结束了，我们下期再见👋～
