---
template: main.html
---

# Scholar's Weekly 第8期

![](https://to-out-use.oss-cn-hangzhou.aliyuncs.com/common/dZHXFx.jpg?x-oss-process=image/auto-orient,1/interlace,1/quality,q_90/format,webp){ loading=lazy }


(封面图片来源于：基于 `CC0` 协议的 [stocksnap](https://stocksnap.io/photo/marsh-wetland-QIGOGM5HGI))

------

!!! tip hint important "温馨提示"

    周刊中所有高亮的内容都可以点击到指定内容的链接～

**关键词：** *`typescript`*、*`stc`*、*`k8s`*、*`pdf2docx`*、*`rust`*

## 1. [stc](https://github.com/dudykr/stc)
> 相关地址：https://github.com/dudykr/stc

一款新的：`Speedy TypeScript type checker`。

还是很期待的，核心贡献者来自 `swc` 作者，大体量的项目经历 `type checker` 的时候，成为了项目打包编译的阻塞点，底层由 `rust` 编写，性能上应该会有大幅度的提升。

## 2. [Vite vs. Next + turbopack HMR Benchmark](https://github.com/yyx990803/vite-vs-next-turbo-hmr)

> 相关地址：https://github.com/yyx990803/vite-vs-next-turbo-hmr

![](https://to-out-use.oss-cn-hangzhou.aliyuncs.com/common/FsDfeL.png?x-oss-process=image/auto-orient,1/interlace,1/quality,q_90/format,webp)

尤大对比了新出的竞品 `turbopack`，在 `hmr` 上做了 `diff`，留下了后面的结论：

- The Next RSC numbers are only included for reference (compare between server/client HMR in Next).
- For the root component (big with many imports and child components), Vite and Next + turbopack are almost equally fast.
- For the leaf component (small, no imports), Next + turbopack is about 68% faster.
- This is quite far from the claim that "turbopack is 10x faster than Vite" as we've seen from Vercel's marketing materials.

## 3. [Kubernetes Tutorials](https://github.com/guangzhengli/k8s-tutorials)

> 相关地址：https://github.com/guangzhengli/k8s-tutorials

顾名思义，免费的 `k8s` 教程地址。

## 4. [pdf2docx](https://github.com/dothinking/pdf2docx)

> 相关地址：https://github.com/dothinking/pdf2docx

![](https://to-out-use.oss-cn-hangzhou.aliyuncs.com/common/t55k8D.png?x-oss-process=image/auto-orient,1/interlace,1/quality,q_90/format,webp)

一款由 `python` 编写的 `pdf` 转 `docs` 工具。

## 5. [atuin](https://github.com/ellie/atuin)

> 相关地址：https://github.com/ellie/atuin

Atuin 使用 SQLite 数据库取代了你现有的 shell 历史，并为你的命令记录了额外的内容。此外，它还通过 Atuin 服务器，在机器之间提供可选的、完全加密的历史记录同步功能。

为频繁使用的 `shell` 命令做 `history` 记录，蛮有用的工具。

## 6. [this-week-in-rust](https://this-week-in-rust.org/)

> 相关地址：https://this-week-in-rust.org

`Rust` 每周更新摘要～



## End

最后，简单总结下这一个星期的修炼内容～

- `pangu` 在经历了几个版本的迭代后，终于可以投入生产正式使用了。

    ![](https://to-out-use.oss-cn-hangzhou.aliyuncs.com/common/nF2PPN.png?x-oss-process=image/auto-orient,1/interlace,1/quality,q_90/format,webp)
     目前 `roadmap` 完成的核心功能～
    ![](https://to-out-use.oss-cn-hangzhou.aliyuncs.com/common/VulE1A.png?x-oss-process=image/auto-orient,1/interlace,1/quality,q_90/format,webp)
!!! pied-piper "交个朋友吧～"

    我是不换(书生)，"浪子回头金不换"的**不换**，"百无一用是书生"的**书生**，热爱工作，同时在工作之余也热爱开源。

本期周刊到这里就结束了，我们下期再见👋～
