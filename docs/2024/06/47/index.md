---
template: main.html
---

# ryanwang's weekly 第47期

![](https://bigdreamerblog.oss-cn-beijing.aliyuncs.com/nextBlog/nO9BFo.png?x-oss-process=image/auto-orient,1/interlace,1/quality,q_90/format,webp){ loading=lazy }


(封面图片来源于：基于 `CC0` 协议的 [shopify](https://www.shopify.com/stock-photos/photos/three-mini-pumpkins-in-a-beam-of-sunlight))

------

!!! tip hint important "温馨提示"

    周刊中所有高亮的内容都可以点击到指定内容的链接～

---
> 如果您正处在微信公众号，请直接滚动至底部👉阅读原文🫶

---

**关键词：** *`carbon`*、*`OverlayScrollbars`*、*`React Compiler`*、*`Promise.withResolvers`*

## FE News

### 1.[Next.js 15 发布](https://nextjs.org/blog/next-15-rc)
> https://nextjs.org/blog/next-15-rc

有如下一些看点，最有价值的还是 `React Complier`。

![](https://bigdreamerblog.oss-cn-beijing.aliyuncs.com/nextBlog/M0a4BP.png)

### 2.[图解正则表达式](https://regexper.com/#%2F%5B1-9%5D%5BA-z%5D*%2F)
> 相关地址：https://regexper.com/#%2F%5B1-9%5D%5BA-z%5D*%2F

比如，我们来写一个手机号正则`/1[0-9]{10}$/g`，看看图解示意：

![](https://bigdreamerblog.oss-cn-beijing.aliyuncs.com/nextBlog/PFgBOb.png)

### 3.[TC39最新提案进展](https://socket.dev/blog/tc39-advances-key-proposals)
> 相关地址：https://socket.dev/blog/tc39-advances-key-proposals

1. `defer import`

- 动机：按需延迟导入，现代化的 `import` 仍然存在一些技术性质的缺陷
  - 它并不能解决执行延迟的问题，因为在这种情况下发送网络请求通常会导致性能下降，而不是提升。因此，为了实现有效的延迟执行同时避免触发请求瀑布，仍然需要一个单独的网络预加载步骤。
  - 迫使所有函数及其调用者采用异步编程模型，而不一定反映程序的真实意图。这导致所有调用位置都必须更新为新模型，并且如果不对现有 API 使用者进行破坏 API 的更改，就无法实现。
- 结果：
```typescript
    // or with a custom keyword:
    import defer * as yNamespace from "y";
 ```

2. `Error.isError()`

提供了类似 `Array.isArray` 的方式，检测一个错误的信息是否是 `Error` 的实例。

3. `RegExp Escaping`

序列化字符串，自动转译字符串之中的特殊字符。

4. `Promise.try`

快速构造普通函数的决议状态：
```typescript
Promise.try(fn)

// ==>
() => Promise.resolve(fn())
```
### 4. [TypeScript 5.5 RC 版本发布](https://devblogs.microsoft.com/typescript/announcing-typescript-5-5-rc/#inferred-type-predicates)
> 相关地址：https://devblogs.microsoft.com/typescript/announcing-typescript-5-5-rc/#inferred-type-predicates

- 类型谓词
- 常量索引访问的控制流收窄
- JSDoc 中的类型导入
- 正则表达式语法检查
- 对新的 ECMAScript Set 方法的支持
- 独立声明
- 配置文件的 ${configDir} 模板变量
- 为声明文件生成咨询 package.json 依赖项
- 编辑器和监视模式的可靠性改进
- 性能和大小优化
- 从 ECMAScript 模块更轻松地使用 API
- transpileDeclaration API
- 显著的行为更改
  - 在 TypeScript 5.0 中禁用已弃用的功能
  - lib.d.ts 更改
  - 在其他模块模式中尊重文件扩展名和 package.json
  - 对装饰器更严格的解析
  - undefined 不再是可定义的类型名称
  - 简化的引用指令声明发出

## End

!!! pied-piper "交个朋友吧～"

    我是不换(书生)，"浪子回头金不换"的**不换**，"百无一用是书生"的**书生**，热爱工作，同时在工作之余也热爱开源。

本期周刊到这里就结束了，我们下期再见👋～
