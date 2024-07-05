---
template: main.html
---

# ryanwang's weekly 第49期

![](https://bigdreamerblog.oss-cn-beijing.aliyuncs.com/nextBlog/IYoiiX.png?x-oss-process=image/auto-orient,1/interlace,1/quality,q_90/format,webp){ loading=lazy }


(封面图片来源于：基于 `CC0` 协议的 [shopify](https://www.shopify.com/stock-photos/photos/long-exposure-at-night-of-streaking-stars-against-landscape))

------

!!! tip hint important "温馨提示"

    周刊中所有高亮的内容都可以点击到指定内容的链接～

---
> 如果您正处在微信公众号，请直接滚动至底部👉阅读原文🫶

---

**关键词：** *`Promise`*、 *`React Runtime`*、 *`Web performance`*

## FE News

### 1. [如何取消 `Promise`](https://webdeveloper.beehiiv.com/p/cancel-promises-javascript)
> 相关地址：https://webdeveloper.beehiiv.com/p/cancel-promises-javascript

早前的周刊中，其实有说过，优雅的 `Promise.race`，但是今天还是拎出来单独分享下：

```typescript
const buildCancelableTask = <T>(asyncFn: () => Promise<T>) => {
  const abortController = new AbortController();

  return {
    run: () =>
      new Promise<T>((resolve, reject) => {
        const cancelTask = () => reject(new Error('CanceledError'));

        if (abortController.signal.aborted) {
          cancelTask();
          return;
        }

        asyncFn().then(resolve, reject);

        abortController.signal.addEventListener('abort', cancelTask);
      }),

    cancel: () => {
      abortController.abort();
    },
  };
};
```

其实在现代化浏览器中借助 `AbortController` 还是很好容易实现的。

### 2.[关于 JavaScript 运行时的考虑](https://ckarchive.com/b/lmuehmh08vwdxid7kkm78cdoo5v00hg)
> 相关地址：https://ckarchive.com/b/lmuehmh08vwdxid7kkm78cdoo5v00hg

- `Deno` 和 `Bun` 由营利性公司开发，而 `Node.js` 是一个非营利组织的社区项目。
- `Deno` 和 `Bun` 中的 `Node.js` 兼容性非常强，因此大多数 `Node.js` 应用程序都可以在 `Deno` 和 `Bun` 上按原样运行。
- 即使您决定使用 `Deno` 或 `Bun` 进行部署，也请将您的应用程序定位到 `Node.js`，以便在必要时轻松切换运行时。

以上的三个结论点我还是相当认同的，因为性质不同。

### 3.[535 中重新加载页面的方法](https://www.phpied.com/files/location-location/location-location.html)
> 相关地址：https://www.phpied.com/files/location-location/location-location.html

![](https://bigdreamerblog.oss-cn-beijing.aliyuncs.com/nextBlog/jzICr1.png)

真是牛人，这里就不一一列举了，有兴趣可以点进去观摩观摩。

### 4. [Web 性能优化指南](https://www.speedcurve.com/web-performance-guide/)
> 相关地址：https://www.speedcurve.com/web-performance-guide/

我还是比较推荐小伙伴们进去读一读，内容完全免费，服务是打点监控的。里面详细罗列了性能优化的指标和优化的常规手段。

![](https://bigdreamerblog.oss-cn-beijing.aliyuncs.com/nextBlog/5PNvM4.png)

### 5. [Termino.js](https://github.com/MarketingPipeline/Termino.js/wiki)
> 相关地址：https://github.com/MarketingPipeline/Termino.js/wiki

`Termino.js` 是一个 `JavaScript` 库，可用于多种用途，包括但不限于：

- 在浏览器中构建命令行界面 (`CLI`)
- 构建终端仿真器（`bash` 仿真器等等！）
- 创建基于文本的冒险游戏和更多类型的游戏！
- 为 `Web` 应用程序创建交互式教程或演示
- 开发用于教授编程概念的教育工具
- 构建实时协作编码环境
- 创建用于 `Web` 开发的调试和测试工具
- 开发聊天机器人或对话界面
- 用于连接远程 `SSH` 服务器
- 为 `Web` 应用程序构建自定义 `shell` 或终端
- 创建用于调试和测试 `Web` 应用程序的自定义开发人员工具。 


### 6. [git cheat sheet](https://wizardzines.com/git-cheat-sheet.pdf)
> 相关地址：https://wizardzines.com/git-cheat-sheet.pdf

![](https://bigdreamerblog.oss-cn-beijing.aliyuncs.com/nextBlog/SIEfdB.png)

### 7. [喵闪字体](https://www.miao3.cn/?page=8)
> 相关地址：https://www.miao3.cn

可以免费商用的字体，正好自己的破站要换字体，这周试试。



## End

!!! pied-piper "交个朋友吧～"

    我是不换(书生)，"浪子回头金不换"的**不换**，"百无一用是书生"的**书生**，热爱工作，同时在工作之余也热爱开源。

本期周刊到这里就结束了，我们下期再见👋～
