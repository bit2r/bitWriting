# Editor.md

![](https://pandao.github.io/editor.md/images/logos/editormd-logo-180x180.png)

**목차 (Table of Contents)**

[TOCM]

[toc]

# Heading 1

## Heading 2

### Heading 3

#### Heading 4

##### Heading 5

###### Heading 6

# Heading 1 link [Heading link](https://github.com/pandao/editor.md "Heading link")

## Heading 2 link [Heading link](https://github.com/pandao/editor.md "Heading link")

### Heading 3 link [Heading link](https://github.com/pandao/editor.md "Heading link")

#### Heading 4 link [Heading link](https://github.com/pandao/editor.md "Heading link") Heading link [Heading link](https://github.com/pandao/editor.md "Heading link")

##### Heading 5 link [Heading link](https://github.com/pandao/editor.md "Heading link")

###### Heading 6 link [Heading link](https://github.com/pandao/editor.md "Heading link")

#### Heading (underline)

This is an H1
=============

This is an H2
-------------

The `<abbr title="Hyper Text Markup Language">`HTML `</abbr>` specification is maintained by the `<abbr title="World Wide Web Consortium">`W3C `</abbr>`.

### Blockquotes

> Blockquotes

Blockquotes

> 여기에 별도의 내용을 기입하여 보자

### Links

[로컬 호스트](http://localhost/)

[로컬호스트 설명](http://localhost/ "普通链接带标题")

링크：[https://github.com](https://github.com)

[앵커][anchor-id]

[mailto:test.test@gmail.com](mailto:test.test@gmail.com)

> @pandao

### 언어 Codes

#### Inline code

설치：`npm install marked`

#### pre

`<pre>` (Preformatted Text )

    `<?php         echo "Hello world!";     ?>`

预格式化文本：

| First Header | Second Header |
| ------------ | ------------- |
| Content Cell | Content Cell  |
| Content Cell | Content Cell  |

#### javascript

```javascript
function test() {
	console.log("Hello world!");
}
 
(function(){
    var box = function() {
        return box.fn.init();
    };

    box.prototype = box.fn = {
        init : function(){
            console.log('box.init()');

			return this;
        },

		add : function(str) {
			alert("add", str);

			return this;
		},

		remove : function(str) {
			alert("remove", str);

			return this;
		}
    };
  
    box.fn.init.prototype = box.fn;
  
    window.box =box;
})();

var testBox = box();
testBox.add("jQuery").remove("jQuery");
```

#### HTML

```html
<!DOCTYPE html>
<html>
    <head>
        <mate charest="utf-8" />
        <meta name="keywords" content="Editor.md, Markdown, Editor" />
        <title>Hello world!</title>
        <style type="text/css">
            body{font-size:14px;color:#444;font-family: "Microsoft Yahei", Tahoma, "Hiragino Sans GB", Arial;background:#fff;}
            ul{list-style: none;}
            img{border:none;vertical-align: middle;}
        </style>
    </head>
    <body>
        <h1 class="text-xxl">Hello world!</h1>
        <p class="text-green">Plain text</p>
    </body>
</html>
```

### Images

Image:

![](https://pandao.github.io/editor.md/examples/images/4.jpg)

> Follow your heart.

![](https://pandao.github.io/editor.md/examples/images/8.jpg)

> 그림과 링크를 동시에

 Image + Link：

[![](https://pandao.github.io/editor.md/examples/images/7.jpg)](https://pandao.github.io/editor.md/images/7.jpg "이미지의 내용은?")

> 으음 모르는 분

---

### Lists

#### Unordered Lists (-)

- 하나
- 둘
- 셋

#### Unordered Lists (*)

* 하나
* 둘
* 셋

#### Unordered Lists (+)

+ 하나
+ 둘
  + 둘-1
  + 둘-2
  + 둘-3
+ 셋
  * 셋-1
  * 셋-2
  * 셋-3

#### Ordered Lists (-)

1. 하나
2. 둘
3. 셋

#### GFM task list

- [X] GFM task list 1
- [X] GFM task list 2
- [ ] GFM task list 3
  - [ ] GFM task list 3-1
  - [ ] GFM task list 3-2
  - [ ] GFM task list 3-3
- [ ] GFM task list 4
  - [ ] GFM task list 4-1
  - [ ] GFM task list 4-2

---

### Tables

| 项目   |  价格 | 数量 |
| ------ | ----: | :--: |
| 计算机 | $1600 |  5  |
| 手机   |   $12 |  12  |
| 管线   |    $1 | 234 |

| First Header | Second Header |
| ------------ | ------------- |
| Content Cell | Content Cell  |
| Content Cell | Content Cell  |

| First Header | Second Header |
| ------------ | ------------- |
| Content Cell | Content Cell  |
| Content Cell | Content Cell  |

| Function name | Description                      |
| ------------- | -------------------------------- |
| `help()`    | Display the help window.         |
| `destroy()` | **Destroy your computer!** |

| Left-Aligned  | Center Aligned | Right Aligned |
| :------------ | :-------------: | ------------: |
| col 3 is      | some wordy text |         $1600 |
| col 2 is      |    centered    |           $12 |
| zebra stripes |    are neat    |            $1 |

| Item     | Value |
| -------- | ----: |
| Computer | $1600 |
| Phone    |   $12 |
| Pipe     |    $1 |

---

#### HTML Entities Codes

&copy; &  &uml; &trade; &iexcl; &pound;
&amp; &lt; &gt; &yen; &euro; &reg; &plusmn; &para; &sect; &brvbar; &macr; &laquo; &middot;

X&sup2; Y&sup3; &frac34; &frac14;  &times;  &divide;   &raquo;

18&ordm;C  &quot;  &apos;

[========]

### Emoji 😃

> Blockquotes ⭐️

#### GFM task lists & Emoji & fontAwesome icon emoji & editormd logo emoji :editormd-logo-5x:

- [X] 😃 @mentions, 😃 #refs, [links](), **formatting**, and `<del>`tags `</del>` supported :editormd-logo:;
- [X] list syntax required (any unordered or ordered list supported) :editormd-logo-3x:;
- [X] [ ] 😃 this is a complete item 😃;
- [ ] []this is an incomplete item [test link](#) :fa-star: @pandao;
- [ ] [ ]this is an incomplete item :fa-star: :fa-gear:;
  - [ ] 😃 this is an incomplete item [test link](#) :fa-star: :fa-gear:;
  - [ ] 😃 this is  :fa-star: :fa-gear: an incomplete item [test link](#);

#### Escape

\*literal asterisks\*

[========]

### TeX(KaTeX)

$$
E=mc^2
$$

아인슈타인은 말씀하셨다.

$$
E=mc^2
$$

$$
x > y
$$

$$
\(\sqrt{3x-1}+(1+x)^2\)
$$

$$
\sin(\alpha)^{\theta}=\sum_{i=0}^{n}(x^i + \cos(f))
$$

수학으로 말씀한다면 ：

```math
\displaystyle
\left( \sum\_{k=1}^n a\_k b\_k \right)^2
\leq
\left( \sum\_{k=1}^n a\_k^2 \right)
\left( \sum\_{k=1}^n b\_k^2 \right)
```

```katex
\displaystyle 
    \frac{1}{
        \Bigl(\sqrt{\phi \sqrt{5}}-\phi\Bigr) e^{
        \frac25 \pi}} = 1+\frac{e^{-2\pi}} {1+\frac{e^{-4\pi}} {
        1+\frac{e^{-6\pi}}
        {1+\frac{e^{-8\pi}}
         {1+\cdots} }
        } 
    }
```

```latex
f(x) = \int_{-\infty}^\infty
    \hat f(\xi)\,e^{2 \pi i \xi x}
    \,d\xi
```

### Page break

> Print Test: Ctrl + P

[========]

### Flowchart

```flow
st=>start: 用户登陆
op=>operation: 登陆操作
cond=>condition: 登陆成功 Yes or No?
e=>end: 进入后台

st->op->cond
cond(yes)->e
cond(no)->op
```

[========]

### Sequence Diagram

```seq
Andrew->China: Says Hello 
Note right of China: China thinks\nabout it 
China-->Andrew: How are you? 
Andrew->>China: I am good thanks!
```

### End

[anchor-id]: http://www.this-anchor-link.com/
