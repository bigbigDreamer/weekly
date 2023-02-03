---
template: main.html
---

# Scholar's Weekly 第9期

![](https://to-out-use.oss-cn-hangzhou.aliyuncs.com/common/aaotcZ.jpg){ loading=lazy }


(封面图片来源于：基于 `CC0` 协议的 [stocksnap](https://stocksnap.io/photo/laptop-keyboard-8DNUWZ2MEN))

------

!!! tip hint important "温馨提示"

    周刊中所有高亮的内容都可以点击到指定内容的链接～

**关键词：** *`jotai`*、*`AnimeGANv2`*、*`CssInJs`*、*`pipe`*

## 1. [jotai 发布 V2 版本](https://github.com/pmndrs/jotai/releases/tag/v2.0.0)
> 相关地址：https://github.com/pmndrs/jotai/releases/tag/v2.0.0

![](https://to-out-use.oss-cn-hangzhou.aliyuncs.com/common/78Lq1u.png)

大概看了下，`jotai` 有这么几个变动点：

**New Features**

- `jotai/vanilla`，支持`非 React` 应用的使用；
- 新增了 `createStore`，更加灵活的操作原子；
- `atom` 的写操作更加便捷了；
```tsx
const a = atom(
  (get) => get(),
  (get, set, arg1, arg, ...rest) => {
    return 0;
  }
)
```

**Break Changes**

- `Provider` 的 `initialValuesprop` 被移除，因为 `store` 它更灵活；
- `Provider` 的范围属性被删除，因为你可以创建自己的上下文；
- `abortableAtomutil` 已删除，因为默认情况下包含该功能；
- `waitForAllutil` 已删除，因为 `Promise.all` 它可以正常工作；

## 2. [一个好玩的在线图片转动漫的工具](https://huggingface.co/spaces/akhaliq/AnimeGANv2)
> 相关地址：https://huggingface.co/spaces/akhaliq/AnimeGANv2

![](https://to-out-use.oss-cn-hangzhou.aliyuncs.com/common/0qaEbq.png)

## 3. [Ant Design V5 应用级 CSSinJS 解决方案](https://github.com/ant-design/ant-design/discussions/40489)
> 相关地址：https://github.com/ant-design/ant-design/discussions/40489

基于 `AntD V5` 中所使用的 `token Sys` 相结合的 `CSSInJS` 方案；

可以作为练习，小尝一下子。

## 4. [Css In Js简介](https://www.infoworld.com/article/3678950/intro-to-css-in-js-generating-css-from-javascript.html)
> 相关地址: https://www.infoworld.com/article/3678950/intro-to-css-in-js-generating-css-from-javascript.html

文章详尽介绍了各种 `CSSInJs` 库，并阐述了各种边界场景。

总结：`CSSInJs` 并非必须。

笔者认同作者观点，它有自己的适用场景，但非通用场景。

## 5. [JS 管道运算符](https://2ality.com/2022/01/pipe-operator.html)
> 相关地址：https://2ality.com/2022/01/pipe-operator.html

有了 `rx.js` 的使用经验后，愈加习惯这种 `pipe` 流的形式做开发。

```bash
const y = h(g(f(x))); // no pipe
const y = x |> f(%) |> g(%) |> h(%); // Hack pipe
const y = x |> f |> g |> h; // F# pipe
```

继洋葱嵌套之后的 `pipe hack`。妈妈再也不用担心不会 `curry` 化 `hack` 了。

## End

!!! pied-piper "交个朋友吧～"

    我是不换(书生)，"浪子回头金不换"的**不换**，"百无一用是书生"的**书生**，热爱工作，同时在工作之余也热爱开源。

本期周刊到这里就结束了，我们下期再见👋～
