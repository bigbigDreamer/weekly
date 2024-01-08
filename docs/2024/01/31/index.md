---
template: main.html
---

# Scholar's Weekly 第31期

![](https://bigdreamerblog.oss-cn-beijing.aliyuncs.com/nextBlog/fireworks-1880045_1280.jpg?x-oss-process=image/auto-orient,1/interlace,1/quality,q_90/format,webp){ loading=lazy }


(封面图片来源于：基于 `CC0` 协议的 [pixabay](https://pixabay.com/photos/fireworks-pyrotechnics-explode-1880045/))

------

!!! tip hint important "温馨提示"

    周刊中所有高亮的内容都可以点击到指定内容的链接～

---
> 如果您正处在微信公众号，请直接滚动至底部👉阅读原文🫶

---

**关键词：** *`React`*、*`deepClone`*、*`styleX`*、*`Css-In-Js`*

## FE News

### 1.[现代化深克隆](https://www.builder.io/blog/structured-clone)
>相关地址：https://www.builder.io/blog/structured-clone

现代化的克隆方式：

- [structuredClone](https://developer.mozilla.org/en-US/docs/Web/API/structuredClone)

浏览器基线，现代化的浏览器基本都得到了支持，并且在 `Web Worker` 中可用。

![](https://bigdreamerblog.oss-cn-beijing.aliyuncs.com/nextBlog/JMaGeE.png?x-oss-process=image/auto-orient,1/interlace,1/quality,q_90/format,webp)

```typescript
const atom = {
    year: '2024',
    helloMsg: '新年快乐',
    date: new Date(),
}

const cloneAtom = structuredClone(atom);
```

![](https://bigdreamerblog.oss-cn-beijing.aliyuncs.com/nextBlog/2nZCbI.png)

**什么不能克隆**

- `函数`
- `DOM 节点`
- `属性描述符：getter、setter`
- `对象原型`

### 2.[WebComponent 将比任何 JS 框架都长寿](https://jakelazaroff.com/words/web-components-will-outlive-your-javascript-framework/)
> 相关地址：https://jakelazaroff.com/words/web-components-will-outlive-your-javascript-framework/

其实我是认同的，这个观点比较鲜明，跨框架生态的组件形式还是可以的，借助影子 `DOM` 具备天然的沙箱系统。

作者在原文中举了很多示例，还是比较有意思的。

### 3.[StyleX](https://stylexjs.com/blog/introducing-stylex/)
> 相关地址：https://stylexjs.com/blog/introducing-stylex/

由 `Meta` 开发的一个新的 `CSS-IN-JS` 的库。

- 编译时和运行时都很快；
- 小化 `CSS` 产物的体积；
- 防止冲突；
- `Tree-Shaking`

### 4.[优化 React 中的重复渲染](https://blog.sentry.io/fixing-memoization-breaking-re-renders-in-react/?utm_source=reactstatus&utm_medium=paid-community&utm_campaign=general-fy24q4-jtbd&utm_content=newsletter-jtbdblog-read)
>相关地址：https://blog.sentry.io/fixing-memoization-breaking-re-renders-in-react/?utm_source=reactstatus&utm_medium=paid-community&utm_campaign=general-fy24q4-jtbd&utm_content=newsletter-jtbdblog-read

内容有些简陋，就是简单的介绍了 `useCallback` 和 `memo` 来优化组件。

### 5.[React 中多态性（2种模式）](https://www.bekk.christmas/post/2023/1/polymorphism-in-react)
>相关地址：https://www.bekk.christmas/post/2023/1/polymorphism-in-react

内容也很简陋，有兴趣可以读一读：
- `Button` 作为展示元素
- `Button` 作为 `Parent` 具备插槽能力

但是我觉得文章中的 `asChild` 有些多余，重新写一个组件不就好了，保持组件的单一功能原则。

## End

!!! pied-piper "交个朋友吧～"

    我是不换(书生)，"浪子回头金不换"的**不换**，"百无一用是书生"的**书生**，热爱工作，同时在工作之余也热爱开源。

本期周刊到这里就结束了，我们下期再见👋～
