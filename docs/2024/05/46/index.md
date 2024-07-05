---
template: main.html
---

# ryanwang's weekly 第46期

![](https://bigdreamerblog.oss-cn-beijing.aliyuncs.com/nextBlog/1vQCZC.png?x-oss-process=image/auto-orient,1/interlace,1/quality,q_90/format,webp){ loading=lazy }


(封面图片来源于：基于 `CC0` 协议的 [shopify](https://www.shopify.com/stock-photos/photos/bird-image-in-latte-art?c=coffee))

------

!!! tip hint important "温馨提示"

    周刊中所有高亮的内容都可以点击到指定内容的链接～

---
> 如果您正处在微信公众号，请直接滚动至底部👉阅读原文🫶

---

**关键词：** *`carbon`*、*`OverlayScrollbars`*、*`React Compiler`*、*`Promise.withResolvers`*

## FE News

近两周并没有什么新奇的周刊，所以略微有些拖更～

### 1.[carbon](https://carbon.now.sh/?bg=rgba%28171%2C+184%2C+195%2C+1%29&t=base16-dark&wt=none&l=javascript&width=680&ds=true&dsyoff=20px&dsblur=68px&wc=true&wa=true&pv=56px&ph=56px&ln=false&fl=1&fm=Hack&fs=14px&lh=133%25&si=false&es=2x&wm=false)
> 相关地址：https://carbon.now.sh

一个可以生成精美代码图像的工具，用来写 blog 使用是个不错的选择：

![](https://bigdreamerblog.oss-cn-beijing.aliyuncs.com/nextBlog/K5iiEu.png)

For Example:

![](https://bigdreamerblog.oss-cn-beijing.aliyuncs.com/nextBlog/carbon.png)

### 2.[OverlayScrollbars](https://github.com/KingSora/OverlayScrollbars/tree/master)
> 相关地址：https://github.com/KingSora/OverlayScrollbars/tree/master

在实际开发中，用来统一 `windows` 和 `mac` 上的滚动条是个不错的选择。

![](https://bigdreamerblog.oss-cn-beijing.aliyuncs.com/nextBlog/ZIHnCC.png)

### 3.[React Compiler](https://react.dev/learn/react-compiler)
> 相关地址：https://react.dev/learn/react-compiler

`React Compiler` 开放了试用，本质还是解决性能问题（渲染）。

![](https://bigdreamerblog.oss-cn-beijing.aliyuncs.com/nextBlog/QaLpKW.png)

### 4.[Promise.withResolvers()](https://2ality.com/2024/05/proposal-promise-with-resolvers.html#promise.withresolvers())
> 相关地址：https://2ality.com/2024/05/proposal-promise-with-resolvers.html#promise.withresolvers()

关于 `Promise.withResolvers()` 这个提案，可能鲜有人知或者用，但是众多库还是自己实现了它。

它的动机是解决构造函数式创建 Promise 的尴尬境地。

例如：

```typescript
const readFileHandler = () => new Promise((res, rej) => fs.readFile("xxxx", 'utf-8', function cb(err, result) {
    if(err) {
        rej(err);
        return;
    }
    res(result)
}))
```

那么可能大家觉得很繁琐，每次都写 `new Promise`。

我们来构建一个 `withResolvers`

```typescript
function getPromise() {
    let resolve;
    let reject;
    const promise = new Promise(
        (res, rej) => {
            // Executed synchronously!
            resolve = res;
            reject = rej;
        });
    return {promise, resolve, reject};
}
```

再来重新构建下刚刚的读文件函数：

```typescript
const readFileHandler = () => {
    const { promise, resolve, reject } = getPromise();
    fs.readFile("xxxx", 'utf-8', function cb(err, result) {
        if(err) {
            reject(err);
            return;
        }
        resolve(result)
    })
    
    return promise;
}
```

是不是优雅了许多呢～

## End

!!! pied-piper "交个朋友吧～"

    我是不换(书生)，"浪子回头金不换"的**不换**，"百无一用是书生"的**书生**，热爱工作，同时在工作之余也热爱开源。

本期周刊到这里就结束了，我们下期再见👋～
