---
template: main.html
---

# Scholar's Weekly 第10期

![](https://to-out-use.oss-cn-hangzhou.aliyuncs.com/common/fUqkc2.jpg?x-oss-process=image/auto-orient,1/interlace,1/quality,q_90/format,webp){ loading=lazy }


(封面图片来源于：基于 `CC0` 协议的 [stocksnap](https://stocksnap.io/photo/valentine'sday-single-W5WITNCF4Z))

------

!!! tip hint important "温馨提示"

    周刊中所有高亮的内容都可以点击到指定内容的链接～

**关键词：** *`Event`*、*`commander`*、*`WebComponents`*、*`structura`*

## 1. [You’ve Got Options for Removing Event Listeners](https://www.macarthur.me/posts/options-for-removing-event-listeners)
>相关地址：https://www.macarthur.me/posts/options-for-removing-event-listeners

作者详尽介绍了集中取消事件的方案：

- 保持相同入参的引用不变，可以取消请求。
```ts
const myCallback = () => {
  console.log('clicked!');
};

document.getElementById('button').addEventListener('click', myCallback);
document.getElementById('button').removeEventListener('click', myCallback);

```
- 借助 `AbortController` 取消请求；
```ts
const button = document.getElementById('button');
const controller = new AbortController();
const { signal } = controller;

button.addEventListener('click', () => console.log('clicked!'), { signal });

// Remove the listener!
controller.abort();

```

不得不说第二种方案真的蛮令人耳目一新的～ 

## 2. [commander.js V10 发布](https://github.com/tj/commander.js/releases)
>相关地址：https://github.com/tj/commander.js/releases

![](https://to-out-use.oss-cn-hangzhou.aliyuncs.com/common/7Lu58Z.png?x-oss-process=image/auto-orient,1/interlace,1/quality,q_90/format,webp)

`V10` 版本的变化蛮大的，最大的 `Break` 变更是依赖 `Node V14` 及更高的版本。

## 3.[一个免费的 WebComponents 指引教程](https://htmlwithsuperpowers.netlify.app/)
>相关地址：https://htmlwithsuperpowers.netlify.app/

如果想要了解 `WebComponents` 相关的知识，是一个不错的选择。

## 4. [借助 `async` 和 `type='module'` 阻止 `css` 阻塞 `js` 的加载](https://calendar.perfplanet.com/2022/using-inline-javascript-modules-to-prevent-css-blockage/)
>相关地址: https://calendar.perfplanet.com/2022/using-inline-javascript-modules-to-prevent-css-blockage

```html
<script type="module" async>
    // todo some js code
</script>
```

`waw! 最佳实践......`

## 5. [新 `lib` 不可变数据结构 `structura.js`](https://giusepperaso.github.io/structura.js/)
>相关地址：https://giusepperaso.github.io/structura.js

**在这些情况下使用 Sructura 而不是 Immer：**

- 性能对您很重要
- 不可变状态正在成为您应用程序中的瓶颈
- 您必须处理的状态在无服务器功能或云中可能非常巨大和复杂，因为您希望尽可能减少使用的资源循环并且您的状态中可能存在多个引用，所以您不希望限制生产者的返回类型修改草稿并返回它的一部分在需要同一个生产者的情况下
- 您不想考虑启用/禁用功能
- 您可能需要也可能不需要分叉库来使其适应您的用例，因为代码很小，很容易推理

## End

!!! pied-piper "交个朋友吧～"

    我是不换(书生)，"浪子回头金不换"的**不换**，"百无一用是书生"的**书生**，热爱工作，同时在工作之余也热爱开源。

本期周刊到这里就结束了，我们下期再见👋～
