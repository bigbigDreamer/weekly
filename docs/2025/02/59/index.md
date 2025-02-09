---
template: main.html
---

# ryanwang's weekly 第59期

![](https://to-out-use.oss-cn-hangzhou.aliyuncs.com/source/yq6uiV.png?x-oss-process=image/auto-orient,1/interlace,1/quality,q_30/format,webp){ loading=lazy }

(封面图片来源于：基于 `CC0` 协议的 [shopify](https://www.shopify.com/stock-photos/photos/dusty-rose))


------

!!! tip hint important "温馨提示"

    周刊中所有高亮的内容都可以点击到指定内容的链接～

---
> 如果您正处在微信公众号，请直接滚动至底部👉阅读原文🫶

---

**关键词：** *`long task`*、 *`CRA`*

## FE News

### 1.[JavaScript中执行长任务的一些方案](https://macarthur.me/posts/long-tasks/)

- `setTimeout` + `递归`
```javascript
function processItems(items, index) {
  index = index || 0;
  var currentItem = items[index];

  console.log("processing item:", currentItem);

  if (index + 1 < items.length) {
    setTimeout(function () {
      processItems(items, index + 1);
    }, 0);
  }
}

processItems(["a", "b", "c", "d", "e", "f", "g", "h", "i", "j"]);
```
- `Async/await` + `setTimeout`

```javascript
<button id="button">count</button>
<div>Click count: <span id="clickCount">0</span></div>
<div>Loop count: <span id="loopCount">0</span></div>

<script>
  function waitSync(milliseconds) {
    const start = Date.now();
    while (Date.now() - start < milliseconds) {}
  }

  button.addEventListener("click", () => {
    clickCount.innerText = Number(clickCount.innerText) + 1;
  });

  (async () => {
    const items = new Array(100).fill(null);

    for (const i of items) {
      loopCount.innerText = Number(loopCount.innerText) + 1;

      await new Promise((resolve) => setTimeout(resolve, 0));
          
      waitSync(50);
    }
  })();
</script>

```

- `scheduler.postTask()`

```javascript

const items = new Array(100).fill(null);

for (const i of items) {
  loopCount.innerText = Number(loopCount.innerText) + 1;

  await new Promise((resolve) => scheduler.postTask(resolve));

  waitSync(50);
}

```

- `scheduler.yield()`

```javascript
const items = new Array(100).fill(null);

for (const i of items) {
  loopCount.innerText = Number(loopCount.innerText) + 1;
  
  await scheduler.yield();
  
  waitSync(50);
}

```

- `requestAnimationFrame()`

- `MessageChannel()`
- `Web Workers`

关于如何选择：

![](https://to-out-use.oss-cn-hangzhou.aliyuncs.com/source/vEKHtJ.png)

### 2.[Create React App 正式被弃用](https://github.com/facebook/create-react-app/issues/17004)

众所周知的 `CRA` 脚手架将正式发布弃用公告。

![](https://to-out-use.oss-cn-hangzhou.aliyuncs.com/source/iKH4zC.png)

官方更推荐 `vite` 作为替代方案。

## End

!!! pied-piper "交个朋友吧～"

    我是不换(书生)，"浪子回头金不换"的**不换**，"百无一用是书生"的**书生**，热爱工作，同时在工作之余也热爱开源。

本期周刊到这里就结束了，我们下期再见👋～
