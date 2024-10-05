---
template: main.html
---

# ryanwang's weekly 第55期

![](https://bigdreamerblog.oss-cn-beijing.aliyuncs.com/nextBlog/24bBMN.png?x-oss-process=image/auto-orient,1/interlace,1/quality,q_90/format,webp){ loading=lazy }


(封面图片来源于：基于 `CC0` 协议的 [shopify](https://www.shopify.com/stock-photos/photos/vibrant-red-and-blue-bird-on-a-branch))

------

!!! tip hint important "温馨提示"

    周刊中所有高亮的内容都可以点击到指定内容的链接～

---
> 如果您正处在微信公众号，请直接滚动至底部👉阅读原文🫶

---

**关键词：** *`AbortController`*、 *`函数式编程`* 、*`SVG`*

## FE News
 
### 1. [AbortController 上一些实用的功能](https://kettanaito.com/blog/dont-sleep-on-abort-controller)
> 相关地址：https://kettanaito.com/blog/dont-sleep-on-abort-controller

- 取消事件监听器

```js
const controller = new AbortController()

window.addEventListener('resize', listener, { signal: controller.signal })

controller.abort()
```

- 取消请求

```js
function uploadFile(file: File) {
  const controller = new AbortController()

  // Provide the abort signal to this fetch request
  // so it can be aborted anytime be calling `controller.abort()`.
  const response = fetch('/upload', {
    method: 'POST',
    body: file,
    signal: controller.signal,
  })

  return { response, controller }
}
```

- 超时处理

```js
fetch(url, {
  // Abort this request automatically if it takes
  // more than 3000ms to complete.
  signal: AbortSignal.timeout(3000),
})
```

- `AbortSignal.any` 与 `Promise.race` 配对使用

```js
const publicController = new AbortController()
const internalController = new AbortController()

channel.addEventListener('message', handleMessage, {
  signal: AbortSignal.any([publicController.signal, internalController.signal]),
})
```

### 2. [利用函数式编程释放 JavaScript 的潜力](https://janhesters.com/blog/unleash-javascripts-potential-with-functional-programming)
> 相关地址：https://janhesters.com/blog/unleash-javascripts-potential-with-functional-programming

函数组合、函数柯里化、函数幂等（纯函数都具备）

> 函数幂等：幂等性是某些操作的一种属性，即无论执行操作多少次，第一次应用后结果都保持不变。例如，将值设置为 5 是幂等的，因为无论执行多少次，该值仍为 5。

### 3. [SVG 编码示例：手写矢量的实用技巧](https://www.smashingmagazine.com/2024/09/svg-coding-examples-recipes-writing-vectors-by-hand/)
> 相关地址：https://www.smashingmagazine.com/2024/09/svg-coding-examples-recipes-writing-vectors-by-hand/

文章详细介绍了每一个 `svg` 图像绘制的原理和方法，以及注意事项，对于接触 `svg` 绘制的同学是个不错的选择。

### 4.[图片 ASCII 化的工具](https://meatfighter.com/ascii-silhouettify/spa/index.html#/)
> 相关地址：https://meatfighter.com/ascii-silhouettify/spa/index.html#/
```bash
                                 , ~~                                             
                                                                                  
                                    -                                             
                                                 .                                
                                       . -        `                               
                           ,       .                                              
                          /                                                       
                                    !          .                                  
                       '            k  !        \                                 
                                   _"` !   '          .,                          
                               / , )g;   !            '                           
                              ^ , 'A, _ .  ;.                                     
                                    ' " `  ^                                      
                      ;,   o    > __@@gL_"""-.* ^_     _                          
                     .'t ;_ J`    _M@@@@@.     ,';@W  /";                         
                       -g @g@ggg@g@WE;|,@gggggg@g@g  /;~                          
                       .] E@@@@@@@@@!|||@@@@@@@@@@{:@@^                           
                          `@@@@@@@@@@ {@@@@@@@@@@@',P.                            
                          !44@@@@@@g''W@@@@@@@@@@7                                
                             @@@@@@@@@@@@@@@@@@@"                                 
                             B@@@@B"_"__>@@@@@ 7                                  
                              {@@@gyr<=a@@@@@P _                                  
                              _'9@@@@@@@@@@P`_@@                                  
                              "g ,P!BBBWBB.__@_4                                  
                              [@@@~_____~g@@@@@W. ,.,                             
                            fy'@@@@Q@@@@@@W""/.a g.&@g                            
                         _g@|!:@:sP'^___".:,]]{@  _@@@@W_                         
                        _@@@8 |@g_ |gg@@@@W,!@@@",@@@@@@@g                        
                       g@@@@T g@@@N@@@@@@@@L@@|  @@@@@@@@@ `-.                    
                .-_ . @@@@@@'  ,[@@@@@@@@@@@@@ .\0@@@@@@@@,@@@@@__ .              
            _ug@@@,'J@@@@@@E_g .[@@@@@@@T"9@F,.&@r""@@@@@@,M@@@@@@@@W__  .        
      _ _og@@@@@@________, @@@g  P@@@@@@__gF .{@@;|__ "T@@  @@@@@@@@@@@@@@@g__.   
,_6@@@@@@@@@@@@@@@@@@B !@@@@L  @@@@@@@@' _@@@@|;@@@@L_ 'M@@@@@@@@@@@@@@@@@@@@,
[_@@@@@@@@@@@@@@@@@@@@@@. @@@@@@  @@@@@@`' w@@@@@' @@@@@@@@@@@@@@@@@@@@@@@@@@@@@@
[@@@@@@@@@@@@@@@@@@@@@@_  M@@@@@@ . @@@_ _@@@@@@N .@@@@@@BBBBBBBN@B@@@@@@@@@@@@@@]
[@@@@@@@@@@@@@@@@@@@@@@@@_. M@@@@@. DF",9@@@@W` _N@@@@@@@i_gwywgx,a@@@@@@@@@@@@@@]
[@@@@@@@@@@@@@@@@@@@@@@@@@@_ `8@@@o`. ,g@@N' _g@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@]
[@@@@@@@@@@@@@@@@@@@@@@@@@@@@g_`(@@  _@P' _g@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@]
[@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@m  "_/` ..@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@]

```


## End

!!! pied-piper "交个朋友吧～"

    我是不换(书生)，"浪子回头金不换"的**不换**，"百无一用是书生"的**书生**，热爱工作，同时在工作之余也热爱开源。

本期周刊到这里就结束了，我们下期再见👋～
