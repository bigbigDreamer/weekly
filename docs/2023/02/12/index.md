---
template: main.html
---

# Scholar's Weekly 第12期

![](https://to-out-use.oss-cn-hangzhou.aliyuncs.com/common/LvU5kv.jpg?x-oss-process=image/auto-orient,1/interlace,1/quality,q_90/format,webp){ loading=lazy }


(封面图片来源于：基于 `CC0` 协议的 [stocksnap](https://stocksnap.io/photo/business-workplace-JXCKDAOAKG))

------

!!! tip hint important "温馨提示"

    周刊中所有高亮的内容都可以点击到指定内容的链接～

## FE News

**关键词：** *`AppSingle`*、*`React`*、*`Depngn`*、*`Remix`*

### 1. [`a = 0-x`  is about 3-10x faster than `a = -x`  ](https://twitter.com/mhevery/status/1626002464469323777)
>相关地址：https://twitter.com/mhevery/status/1626002464469323777

![](https://to-out-use.oss-cn-hangzhou.aliyuncs.com/common/OZTCfT.jpg?x-oss-process=image/auto-orient,1/interlace,1/quality,q_90/format,webp)

原因：`VM` 对于浮点数处理比较慢。

可以观测下相同基准下的性能测试。
![](https://to-out-use.oss-cn-hangzhou.aliyuncs.com/common/jxav4k.png?x-oss-process=image/auto-orient,1/interlace,1/quality,q_90/format,webp)

### 2. [多用 Map 少用 Object](https://www.builder.io/blog/maps)
> 相关地址：https://www.builder.io/blog/maps

在频繁增删的操作场景中，`Map` 的性能会更加优越于 `Object`。

### 3. [像 JSON.stringify 一样序列化/反序列化对象/字符串](https://github.com/Rich-Harris/devalue)
> 相关地址：https://github.com/Rich-Harris/devalue

- 循环引用 `( obj.self = obj)`
- 重复引用 `( [value, value])`
- `undefined`, `Infinity`, `NaN`,`-0`
- 常用表达
- 日期
- `Map` 和 `Set`
- `BigInt`
- 通过 `replacers`、`reducers` 和 `revivers` 自定义类型

### 4. [DOMPurify 3.0](https://github.com/cure53/DOMPurify/releases)
> 相关地址：https://github.com/cure53/DOMPurify/releases

一个有着 9 年历史的处理 `html` 或者 `svg` 的工具，快速的预防 `XSS` 漏洞。

刚刚发布了 `3.0` 版本，彻底取消对 `IE` 的支持。


------

## FAQ

### 1. [对于 `process.kill()` 中 `SIGTERM` 和 `SIGKILL` 最推荐用谁](https://www.linuxrumen.com/cyml/1667.html)
>相关地址：https://www.linuxrumen.com/cyml/1667.html

最近在处理子进程相关的内容，对于信号的传递存有疑问，最终调研得到的最佳方式是**默认**，什么都不传就是 `SIGTERM`。

`SIGKILL` 容易制造出僵尸🧟进程，因为进程如果卡死，但是又收到了 `kill` 命令，那么会一直常驻在内存中，成为🧟进程。

### 2. [The inferred type of "X" cannot be named without a reference to "Y".](https://github.com/microsoft/TypeScript/issues/42873)
>相关地址：https://github.com/microsoft/TypeScript/issues/42873

`pnpm` 项目中莫名出现标题报错。

在 `tsconfig.json` 中添加：

```bash
"preserveSymlinks": true
```

![](https://to-out-use.oss-cn-hangzhou.aliyuncs.com/common/sqDC6G.png?x-oss-process=image/auto-orient,1/interlace,1/quality,q_90/format,webp)

## End

!!! pied-piper "交个朋友吧～"

    我是不换(书生)，"浪子回头金不换"的**不换**，"百无一用是书生"的**书生**，热爱工作，同时在工作之余也热爱开源。

本期周刊到这里就结束了，我们下期再见👋～
