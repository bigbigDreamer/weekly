---
template: main.html
---

# Scholar's Weekly 第16期

![](https://to-out-use.oss-cn-hangzhou.aliyuncs.com/common/l4e7cN.jpg?x-oss-process=image/auto-orient,1/interlace,1/quality,q_90/format,webp){ loading=lazy }


(封面图片来源于：基于 `CC0` 协议的 [stocksnap](https://stocksnap.io/photo/woman-holding-ELF1BQFKAF))

------

!!! tip hint important "温馨提示"

    周刊中所有高亮的内容都可以点击到指定内容的链接～

## FE News

**关键词：** *`React`*、*`GTPT4`*、*`bun`*、*`astro`*

### 1.[How to start a React Project in 2023](https://www.robinwieruch.de/react-starter/)
>相关地址：https://www.robinwieruch.de/react-starter/

关于在 `2023` 年如何开始 `React` 项目，作者对于基础的开发者的建议是，从 `vite` + `react` 开始，因为它底层更快（`esbuild`）。

但是作为 `Vue` 的核心支持者，`React` 并不是第一优先级，所以就意味着，`SRC` 服务端渲染组件成为了一种 **奢望**。

### 2.[前端工程师的"噩耗"？](https://www.joshwcomeau.com/blog/the-end-of-frontend-development/)

相信 `GPT4` 为一部分人，包括我在内的带来了一些震撼，但是就像从业务、工程角度而言，从生产的严谨性上看，`AI` 取代人类几乎是不可能的，唯一的结论就是 **增强**。


### 3.[从`ts-node`迁移到`bun`](https://johnnyreilly.com/migrating-from-ts-node-to-bun)
>相关地址：https://johnnyreilly.com/migrating-from-ts-node-to-bun

### 4.[Astro.js 指南](https://bejamas.io/blog/practical-guide-to-astro-js-framework/)
>相关地址：https://bejamas.io/blog/practical-guide-to-astro-js-framework

### 5.[6个前端开发者应该知道的CSS片段](https://web.dev/6-css-snippets-every-front-end-developer-should-know-in-2023/)
> 相关地址：https://web.dev/6-css-snippets-every-front-end-developer-should-know-in-2023/

### 6.[eslint-formatter-pretty](https://github.com/sindresorhus/eslint-formatter-pretty)
>相关地址：https://github.com/sindresorhus/eslint-formatter-pretty

更加精美的 `eslint` 输出，支持 `iterm`。

![](https://to-out-use.oss-cn-hangzhou.aliyuncs.com/common/DVjNHr.png)

```js
module.exports = {
	entry: ['file.js'],
	module: {
		rules: [
			{
				test: /\.js$/,
				exclude: /node_modules/,
				loader: 'eslint-loader',
				options: {
					formatter: require('eslint-formatter-pretty')
				}
			}
		]
	}
};
```

## End

!!! pied-piper "交个朋友吧～"

    我是不换(书生)，"浪子回头金不换"的**不换**，"百无一用是书生"的**书生**，热爱工作，同时在工作之余也热爱开源。

本期周刊到这里就结束了，我们下期再见👋～
