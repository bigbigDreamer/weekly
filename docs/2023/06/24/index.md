---
template: main.html
---

# ryanwang's weekly 第24期

![](https://to-out-use.oss-cn-hangzhou.aliyuncs.com/common/VnuUqH.png?x-oss-process=image/auto-orient,1/interlace,1/quality,q_90/format,webp){ loading=lazy }


(封面图片来源于：基于 `CC0` 协议的 [stocksnap](https://stocksnap.io/photo/girl-woman-J9QIOQRBU3))

------

!!! tip hint important "温馨提示"

    周刊中所有高亮的内容都可以点击到指定内容的链接～

## FE News

**关键词：** *`URL`*、*`aimless`*、*`sharedWorker`*、*`React`*、*`quic`*

### 1.[安全的 JavaScript URL 验证](https://snyk.io/blog/secure-javascript-url-validation/?utm_campaign=aom_2023&utm_medium=paid-email&utm_source=cooperpress-javascript-weekly&utm_content=secure-javascript-url-validation)
> 相关地址：https://snyk.io/blog/secure-javascript-url-validation/?utm_campaign=aom_2023&utm_medium=paid-email&utm_source=cooperpress-javascript-weekly&utm_content=secure-javascript-url-validation

当我们在书写 `JavaScript` 时，大部分场景下对于 `URL` 的结构检验，单纯的只是靠简单的正则表达式处理，但是冗长的正则表达式既形成了容易出错的端倪，也容易出现执行缓慢的情况（如果你对此抱有质疑，请详细了解正则表达式的性能问题）。

```typescript
function checkHttpUrl(string) {
    let givenURL;
    try {
        givenURL = new URL(string);
    } catch (error) {
        console.log("error is",error)
      return false;  
    }
    return givenURL.protocol === "http:" || givenURL.protocol === "https:";
  }

```

这里其实是一个简单的示例。

### 2.[aimless.js](https://github.com/ChrisCavs/aimless.js#using-custom-prng)
>相关地址：https://github.com/ChrisCavs/aimless.js#using-custom-prng

在实际业务中，我们可能会有“生成随机数的需求”，可能是简单的写一个函数，但是每次都去写，难免繁琐，可以尝试使用 `aimless` 解决一些随机数的生成问题：

```typescript
const intSeq = intSequence(-1, 3)
// could return [3,-1,2,1,0], [0,2,-1,3,1], etc
```

以上是一个简单的举例，随机生成范围的数字序列。

### 3.[在浏览器选项卡之间共享 `websocket` 链接](https://brightinventions.pl/blog/sharing-websocket-connections-between-browser-tabs-and-windows/)
> 相关地址；https://brightinventions.pl/blog/sharing-websocket-connections-between-browser-tabs-and-windows

按照以往的业务开发方式，我们经常会这么处理 `websocket` ，一个 `tab` 一个链接，那么就会导致 `ws` 层的业务压力，过多的 `连接数`。

这里介绍了一种解决方案： `SharedWorker` ,用于窗口间的共享，将消息的传递，改为进程中传输。

### 4.[React 是怎么工作的？](https://www.youtube.com/watch?v=za2FZ8QCE18)
> 相关地址：https://www.youtube.com/watch?v=za2FZ8QCE18

视频在油管上，在你点击观看前，可以先思考以下几个问题，如果你很清楚，那么可以跳过，因为视频并没有深入讲解太多的内容：

- 为什么 `React` 不认识 `jsx`？
- 两颗树直接是如果 `diff` 的？
  
### 5.[图解各种协议的流转过程](https://cangsdarm.github.io/illustrate/tls13)
> 相关地址：https://cangsdarm.github.io/illustrate/tls13

![](https://to-out-use.oss-cn-hangzhou.aliyuncs.com/common/z5kend.png)



## End

!!! pied-piper "交个朋友吧～"

    我是不换(书生)，"浪子回头金不换"的**不换**，"百无一用是书生"的**书生**，热爱工作，同时在工作之余也热爱开源。

本期周刊到这里就结束了，我们下期再见👋～
