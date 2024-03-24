
---
template: main.html
---

# Scholar's Weekly 第40期

![](https://bigdreamerblog.oss-cn-beijing.aliyuncs.com/nextBlog/i1WQju.png?x-oss-process=image/auto-orient,1/interlace,1/quality,q_90/format,webp){ loading=lazy }


(封面图片来源于：基于 `CC0` 协议的 [shopify](https://www.shopify.com/stock-photos/photos/catching-a-white-crane-in-flight))

------

!!! tip hint important "温馨提示"

    周刊中所有高亮的内容都可以点击到指定内容的链接～

---
> 如果您正处在微信公众号，请直接滚动至底部👉阅读原文🫶

---

**关键词：** *`runtime`*、*`Node`*、*`JavaScript`*、*`WebSocket`*

## FE News

### 1.[Runtime compatibility](https://runtime-compat.unjs.io/)
> 相关地址：https://runtime-compat.unjs.io

![](https://bigdreamerblog.oss-cn-beijing.aliyuncs.com/nextBlog/zZbLBZ.png)

在不同的 `JavaScript` 运行时中显示 `API` 的兼容性。数据是从 `runtime-compat-data` 检索的，基于 `MDN` 的格式。


### 2.[对 Node 创始人的采访](https://stackoverflow.blog/2024/03/19/why-the-creator-of-node-js-r-created-a-new-javascript-runtime/)
> 相关地址：https://stackoverflow.blog/2024/03/19/why-the-creator-of-node-js-r-created-a-new-javascript-runtime/

!!! tip hint important "小贴士"

    如果您正处在微信公众号，可能无法正常播放音频，请划动至屏幕底部 -> 阅读原文。

<audio controls src="https://injector.simplecastaudio.com/6fa1d34c-502b-4abf-bd82-483804006e0b/episodes/c05979b9-8406-4d1b-bbbc-535659624ce9/audio/128/default.mp3"></audio>

### 3.[sh.msh 一些有用的函数简写](https://gist.github.com/tangentstorm/4f271600fc20404150e05c373109551d)
> 相关地址：https://gist.github.com/tangentstorm/4f271600fc20404150e05c373109551d

如下是部分内容，更多内容可以点击链接。

```javascript
// sh.mjs: shorthand javascript
// array helpers (apl/j/k)
export const id=x=>x
export const af=(n,x)=>Array(n).fill(x)
export const ii=(n,f)=>{for(let i=0;i<n;i++)f(i)}
export const im=(n,f)=>af(n,0).map((_,i)=>f(i))
export const ia=(n,f)=>im(n,id)
export const at=(a,ixs)=>ixs.map(i=>a[i])
export const io=(xs,ys)=>ys.map([].indexOf.bind(xs))

export const odom=(x,y)=>{
  let r=[];
  for(let j=0;j<y;j++) for(let i=0;i<x;i++) r.push([i,j]); return r }

```

### 4.[对比不同 JavaScript 的写法对 V8 的影响](https://romgrk.com/posts/optimizing-javascript)
> 相关地址：https://romgrk.com/posts/optimizing-javascript

下面是举例个别内容，其中有一些不好的写法我也经常用。

```javascript
// No
enum Position {
  TOP    = 'TOP',
  BOTTOM = 'BOTTOM',
}
```

```typescript
/ Yeppers
enum Position {
  TOP,    // = 0
  BOTTOM, // = 1
}
```

### 5.[WebSockets vs Server-Sent-Events vs Long-Polling vs WebRTC vs WebTransport](https://rxdb.info/articles/websockets-sse-polling-webrtc-webtransport.html#performance-comparison)
> 相关地址：https://rxdb.info/articles/websockets-sse-polling-webrtc-webtransport.html#performance-comparison

几种实时数据的获取方案之间的对比。

### 6.[microdiff](https://github.com/AsyncBanana/microdiff/blob/master/index.ts)
> 相关地址：https://github.com/AsyncBanana/microdiff?tab=readme-ov-file

一个零依赖的 `JavaScript` 对象对比库。

```typescript
export default function diff(
    obj: Record<string, any> | any[],
    newObj: Record<string, any> | any[],
    options: Partial<Options> = { cyclesFix: true },
    _stack: Record<string, any>[] = [],
): Difference[] {
    let diffs: Difference[] = [];
    const isObjArray = Array.isArray(obj);

    for (const key in obj) {
        const objKey = obj[key];
        const path = isObjArray ? +key : key;
        if (!(key in newObj)) {
            diffs.push({
                type: "REMOVE",
                path: [path],
                oldValue: obj[key],
            });
            continue;
        }
        const newObjKey = newObj[key];
        const areCompatibleObjects =
            typeof objKey === "object" &&
            typeof newObjKey === "object" &&
            Array.isArray(objKey) === Array.isArray(newObjKey);
        if (
            objKey &&
            newObjKey &&
            areCompatibleObjects &&
            !richTypes[Object.getPrototypeOf(objKey)?.constructor?.name] &&
            (!options.cyclesFix || !_stack.includes(objKey))
        ) {
            const nestedDiffs = diff(
                objKey,
                newObjKey,
                options,
                options.cyclesFix ? _stack.concat([objKey]) : [],
            );
            diffs.push.apply(
                diffs,
                nestedDiffs.map((difference) => {
                    difference.path.unshift(path);
                    return difference;
                }),
            );
        } else if (
            objKey !== newObjKey &&
            // treat NaN values as equivalent
            !(Number.isNaN(objKey) && Number.isNaN(newObjKey)) &&
            !(
                areCompatibleObjects &&
                (isNaN(objKey)
                    ? objKey + "" === newObjKey + ""
                    : +objKey === +newObjKey)
            )
        ) {
            diffs.push({
                path: [path],
                type: "CHANGE",
                value: newObjKey,
                oldValue: objKey,
            });
        }
    }

    const isNewObjArray = Array.isArray(newObj);
    for (const key in newObj) {
        if (!(key in obj)) {
            diffs.push({
                type: "CREATE",
                path: [isNewObjArray ? +key : key],
                value: newObj[key],
            });
        }
    }
    return diffs;
}
```

## End

!!! pied-piper "交个朋友吧～"

    我是不换(书生)，"浪子回头金不换"的**不换**，"百无一用是书生"的**书生**，热爱工作，同时在工作之余也热爱开源。

本期周刊到这里就结束了，我们下期再见👋～
