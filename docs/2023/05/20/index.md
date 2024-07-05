---
template: main.html
---

# ryanwang's weekly 第20期

![](https://to-out-use.oss-cn-hangzhou.aliyuncs.com/common/ioZXxW.jpg?x-oss-process=image/auto-orient,1/interlace,1/quality,q_90/format,webp){ loading=lazy }


(封面图片来源于：基于 `CC0` 协议的 [stocksnap](https://stocksnap.io/photo/african-hut-HPRIEJCER3))

------

!!! tip hint important "温馨提示"

    周刊中所有高亮的内容都可以点击到指定内容的链接～

## FE News

**关键词：** *`npm`*、*`React`*、*`const`*、*`CSS`*、*`FUSE`*

### 1.[不阻塞事件循环的实用指南](https://www.bbss.dev/posts/eventloop/)
>相关地址：https://www.bbss.dev/posts/eventloop/

不阻塞事件循环的实用性指导，文章列举了一些列不阻塞事件循环的案例。


### 2.[React 渲染交互指南](https://ui.dev/why-react-renders)
>相关地址：https://ui.dev/why-react-renders

<figure class="my-14" style="width:100%;"><div class="Render_container__M5TJu"><svg id="Render" xmlns="http://www.w3.org/2000/svg" viewBox="0 0 600 239"><path fill="#0f0d0e" d="M0 0H600V238.84H0z"></path><text transform="translate(42.5 24.11)" fill="#f9f4da" font-family="Paytone One" font-size="16.35"><tspan x="0" y="0">COMPONENT</tspan></text><text transform="translate(477.5 24.11)" fill="#f9f4da" font-family="Paytone One" font-size="16.35"><tspan x="0" y="0">VIEW</tspan></text><text transform="translate(256 24.11)" fill="#f9f4da" font-family="Paytone One" font-size="16.35" class="Render_snapshotText__XkKjs"><tspan x="0" y="0">SNAPSHOT</tspan></text><g id="componentStatic"><rect x="5.41" y="37.74" width="179.23" height="183.49" rx="19.5" ry="19.5" fill="#231f20" stroke="#f9f4da" stroke-miterlimit="10"></rect><g><path fill="#f9f4da" d="M25.44 71.05H116.82V80.2H25.44z"></path><path fill="#f9f4da" d="M80.36 95.52H128.15V104.67H80.36z"></path><path fill="#12b5e5" d="M35.91 95.44H61.76V104.59H35.91z"></path><path fill="#f9f4da" d="M65.75 95.52H76.36V104.67H65.75z"></path><path fill="#0ba95b" d="M35.91 144.47H134.16V170.96H35.91z"></path><path fill="#f38ba3" d="M35.91 120H96.44999999999999V129.15H35.91z"></path><path fill="#fc7428" d="M120.81 71.05H152.52V80.2H120.81z"></path><path fill="#f9f4da" d="M156.51 71.05H163.45V80.2H156.51z"></path><path fill="#f9f4da" d="M25.44 186.28H32.38V195.43H25.44z"></path></g></g><g id="snapshot" class="Render_snapshot__A8Pj1"><rect x="5.41" y="37.74" width="179.23" height="183.49" rx="19.5" ry="19.5" fill="#231f20" stroke="#f9f4da" stroke-miterlimit="10"></rect><g><path id="snapshotState" fill="#12b5e5" d="M42.87 103.58H68.72V112.73H42.87z"></path><path id="snapshotUI" fill="#0ba95b" d="M42.87 152.6H141.12V179.09H42.87z" class="undefined"></path><g id="snapshotEvent"><path fill="#f38ba3" d="M42.87 128.13H103.41V137.28H42.87z"></path></g><path id="snapshotProps" fill="#fc7428" d="M42.87 79.19H74.58V88.34H42.87z"></path></g></g><rect id="flash" x="5.41" y="37.74" width="179.23" height="183.49" rx="19.5" ry="19.5" fill="#7b5ea7" stroke="#7b5ea7" stroke-miterlimit="10" class="Render_flash__Qf6ET"></rect><path id="snapshotUImove" fill="#0ba95b" d="M275.2 95.12H323.69V108.22H275.2z" class="Render_snapshotUImove__6ALkZ"></path><g id="view"><g stroke="#231f20" stroke-miterlimit="10"><rect x="415.52" y="45.71" width="181.49" height="181.58" rx="26.68" ry="26.68" fill="#7b5ea7"></rect><rect x="407.97" y="37.74" width="181.49" height="181.58" rx="21.16" ry="21.16" fill="#f9f4da"></rect></g><g id="viewUI" class="Render_viewUI__KdXCW"><g stroke="#231f20" stroke-miterlimit="10"><rect x="424.47" y="56.93" width="152.38" height="128.43" rx="10.25" ry="10.25" fill="#231f20"></rect><rect x="421.84" y="53.27" width="152.38" height="128.43" rx="10.25" ry="10.25" fill="#0ba95b"></rect></g><rect x="432.55" y="76.28" width="131.15" height="70.47" rx="2.92" ry="2.92" fill="#12b5e5" stroke="#231f20" stroke-miterlimit="10"></rect><path id="uiSquare" fill="#f9f4da" stroke="#f9f4da" stroke-linecap="round" stroke-linejoin="round" d="M482.54 95.93H513.71V127.10000000000001H482.54z"></path><g id="toggle"><rect x="478.46" y="154.4" width="40.5" height="19.17" rx="9.59" ry="9.59" fill="#231f20"></rect><g id="control"><circle cx="488.21" cy="163.92" r="6.05" fill="#f38ba3"></circle></g></g><rect x="526.74" y="60.88" width="36.96" height="8.73" rx="2.69" ry="2.69" fill="#fc7428" stroke="#231f20" stroke-miterlimit="10"></rect></g></g></svg></div><div class="flex w-full justify-start items-center gap-4 bg-brand-charcoal px-4 py-3 rounded-lg"><button class="w-[35px] h-[24px] border-2 text-brand-beige bg-brand-coal font-semibold py-1 px-3 rounded-full text-sm uppercase hover:text-brand-coal hover:bg-brand-yellow hover:border-brand-yellow KeyframePlayer_play__Ef_af"></button><input size="300" class="w-full accent-brand-blue appearance-none bg-brand-coal h-[4px] rounded-full cursor-pointer" type="range" min="0" max="1" step="0.001" value="0"></div></figure>

### 3.["常量"陷进](https://www.joshwcomeau.com/javascript/the-const-deception/)
>相关地址：https://www.joshwcomeau.com/javascript/the-const-deception/

文章核心介绍了 `const` 修饰**值类型**和**引用类型**的差异。

### 4.[通过借鉴 JavaScript 函数的思想来编写更好的 CSS](https://www.smashingmagazine.com/2023/04/write-better-css-borrow-ideas-javascript-functions/)
>相关地址：https://www.smashingmagazine.com/2023/04/write-better-css-borrow-ideas-javascript-functions/

### 5.[剖析 Npm 恶意软件：五个软件包及其邪恶的安装脚本](https://blog.sandworm.dev/dissecting-npm-malware-five-packages-and-their-evil-install-scripts)
>相关地址：https://blog.sandworm.dev/dissecting-npm-malware-five-packages-and-their-evil-install-scripts

可以先看一下 `npm` 包的最佳实践。

![](https://to-out-use.oss-cn-hangzhou.aliyuncs.com/common/cYpua6.png)

### 6.[使用 Fuse.js 进行快速简单的模糊搜索](https://spin.atomicobject.com/2023/04/27/fuse-js-fuzzy-search/)
>相关地址：https://spin.atomicobject.com/2023/04/27/fuse-js-fuzzy-search/

大体量的纯前端模糊搜索可以用起来。

## End

!!! pied-piper "交个朋友吧～"

    我是不换(书生)，"浪子回头金不换"的**不换**，"百无一用是书生"的**书生**，热爱工作，同时在工作之余也热爱开源。

本期周刊到这里就结束了，我们下期再见👋～
