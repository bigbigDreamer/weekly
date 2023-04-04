---
template: main.html
---

# Scholar's Weekly 第17期

![](https://to-out-use.oss-cn-hangzhou.aliyuncs.com/common/yq1ebl.jpg?x-oss-process=image/auto-orient,1/interlace,1/quality,q_90/format,webp){ loading=lazy }


(封面图片来源于：基于 `CC0` 协议的 [stocksnap](https://stocksnap.io/photo/ocean-coast-JZERITQXDY))

------

!!! tip hint important "温馨提示"

    周刊中所有高亮的内容都可以点击到指定内容的链接～

## FE News

**关键词：** *`importmap`*、*`auth`*、*`npkill`*、*`react`*

### 1. [JavaScript Import Maps 支持跨浏览器](https://web.dev/import-maps-in-all-modern-browsers/)

```html
<script type="importmap">
    {
        "imports": {
        "browser-fs-access": "https://unpkg.com/browser-fs-access@0.33.0/dist/index.modern.js"
    }
    }
</script>
```

```html
<button>Select a text file</button>
<script type="module">
  import {fileOpen} from 'browser-fs-access';

  const button = document.querySelector('button');
  button.addEventListener('click', async () => {
    const file = await fileOpen({
      mimeTypes: ['text/plain'],
    });
    console.log(await file.text());
  });
</script>
```

### 2.[在React中实现登录授权认证](https://userfront.com/tutorials/react-authentication?utm_source=javascriptweekly.com&utm_medium=referral&utm_campaign=primary&utm_content=react_authentication)

![](https://to-out-use.oss-cn-hangzhou.aliyuncs.com/common/Z774J8.png)

### 3.[npkill](https://github.com/voidcosmos/npkill/releases/tag/v0.11.1)

![](https://to-out-use.oss-cn-hangzhou.aliyuncs.com/common/Btdkhs.png)

新的版本中，性能再次提升，开启了 `8核` 提速。

### 4.[代码高亮显示工具](https://codehike.org/)

### 5.[一些 React 初学者经常会出现的错误](https://www.joshwcomeau.com/react/common-beginner-mistakes/)

一些常见的问题，可以在测试环境就发现的，但是这也是一种编程习惯，能在编码阶段解决也是一种蜕变。

![](https://to-out-use.oss-cn-hangzhou.aliyuncs.com/common/uwzyAg.png)

......

## End

!!! pied-piper "交个朋友吧～"

    我是不换(书生)，"浪子回头金不换"的**不换**，"百无一用是书生"的**书生**，热爱工作，同时在工作之余也热爱开源。

本期周刊到这里就结束了，我们下期再见👋～
