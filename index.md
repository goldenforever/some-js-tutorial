# <img src="diamond.svg" style="margin:-1rem -0.5rem;position:relative;top:0.6rem;"> some-js {color(blue)tutorial}

- - -

{vspace(-3rem)}

## Intro

#### *some-js* has always set out to do three things well.

- Make writing websites from start to finish *//much faster//*
- Make common tasks possible through a specialised syntax bypassing
  the need for an expansive knowledge of HTML, CSS, JS
- Yet still allow people with this knowledge to use it.

#### This means that *you will*:

- *Save a tonne of time.* While not yet tested, I imagine that the time to
  learning *some-js* and writing a website in it will be around the same
  as to learn just HTML.
- Have a website that uses *best-practices* and still remains *modern* both
  in _functionality_ *and* in _appearance_.
- Your server has to send less data to the user so *hosting will be cheaper*
  and those with slower internet connections *will load quicker*.

<div style="text-align:center">
    <input onclick="changePage('The How')" type="button" value="Go on...">
</div>

## The How

#### Easy. Some JavaScript Magic.

Effectively we redirect the whole way a web page is traditionally loaded
through an intermediary step. This intermediary step retrieves your some-js
file, turns it into the corresponding HTML, CSS and JS right on the users
computer.

#### But this is slow right?

Nope. The transformation step has been written in such a way as to
be //*lightning fast*//. And it comes with benefits that aren't traditionally
available. It means we can switch page, like you just did, much quicker than before.

The transformation step - the compiler - is so fast that it compiles between
key-presses in a view-as-you-type editor.

*In short, it's practically instant.*

<div style="text-align:center">
    <input onclick="changePage('See the magic')" type="button" value="See the magic!">
</div>

## See the magic

#### This is what some-js looks like.

<div class="parent">
<div class="left">
<pre><code class="hljs lang-markdown"># Dwarves
{<span></span>-- Header --}

------------------------
{<span></span>-- Horizontal rule --}

This is a dwarf. ![]<span></span>(https://goo.gl/YQKmvE)
{<span></span>-- Text + an image --}

<<span></span>style>
	img {
    	width: 130px;
        vertical-align: middle;
    }
<<span></span>/style>
{<span></span>-- HTML tags can be included anywhere, like styling for the image --}

There are \*seven\* dwarves:
1. Doc
   - He's the leader.
2. Dopey
3. Bashful
4. Grumpy
5. Sneezy
6. Sleepy
7. Happy
{<span></span>-- A list containing a list --}

You can learn more about the 7 Dwarfs [here]<span></span>(https://en.wikipedia.org/wiki/Seven_Dwarfs).
</code></pre>
</div>
<div class="right">
![Dwarfs](dwarfs.png)
</div>
</div>

#### That looks like [Markdown](https://daringfireball.net/projects/markdown/basics)?

Yup. It's Markdown with some major additions. The compiler used is [Marked](https://github.com/chjj/marked),
which is incredibly fast, and yet well featured, supporting 'Github Flavored Markdown', which
is what people use to write documentation on Github.

Markdown is about making things format well, but not control how it appears.
Technically, it doesn't care if \*this text\* becomes *this text* or
<strong style="font-weight:normal;text-decoration:underline;font-style:italic;">this text</strong>.
But people who want to just create something do. So these features have been added.

<div style="text-align:center">
    <input onclick="changePage('Features')" type="button" value="Features..?">
</div>

## Features

#### Menus + DHM (Document Header Model)

{header(5)Example}

{color(red)Make sure to *click the links* in the menu below!}

> <iframe src="eg.html"></iframe>

<style>iframe {width:100%;height:260px;border:0;overflow:visible}</style>

...is made with this...

```none
{menu()Header 1,Header 2,Header 3}

### Header 1

Paragraph for *Header 1*.

### Header 2

#### Sub-header for Header 2

Paragraph for Sub-header.

### Header 3

Lorem ipsum dolor Header 3.
```

<div style="text-align:center"><input class="gray" type="button" value="Explanation" onclick="document.getElementById('showme').style.display='block';this.style.display='none'"></div>

<div style="display:none" id="showme">

Headers are taken seriously in *some-js*.

Each header is considered to contain its subheaders and subcontent.
This means that menus can be used to open and close this subcontent.

<pre>
<code class="no-highlight"># A               |             A
<span class="hv"></span>                <span class="ps">  </span>|         ,---'---,----,
<span class="pl"></span>## B            <span class="ps">  </span>|         B       H    J
<span class="hv"></span><span class="hv"></span>              <span class="ps">  </span><span class="ps">  </span>|      ,--'-,     |    |
<span class="hv"></span><span class="pl"></span>### C         <span class="ps">  </span><span class="ps">  </span>|      C    E     I    K
<span class="hv"></span><span class="hv"></span><span class="hv"></span>            <span class="ps">  </span><span class="ps">  </span><span class="ps">  </span>|      |    |          |
<span class="hv"></span><span class="hv"></span><span class="pl"></span>D.          <span class="ps">  </span><span class="ps">  </span><span class="ps">  </span>|      D    F          L
<span class="hv"></span><span class="hv"></span>              <span class="ps">  </span><span class="ps">  </span>|           |
<span class="hv"></span><span class="pl"></span>### E         <span class="ps">  </span><span class="ps">  </span>|           G
<span class="hv"></span><span class="sp"></span><span class="hv"></span>            <span class="ps">  </span><span class="ps">  </span><span class="ps">  </span>|
<span class="hv"></span><span class="sp"></span><span class="pl"></span>#### F      <span class="ps">  </span><span class="ps">  </span><span class="ps">  </span>|  By default, all of these are visible
<span class="hv"></span><span class="sp"></span><span class="hv"></span>            <span class="ps">  </span><span class="ps">  </span><span class="ps">  </span>|  from A at the top to L at the bottom.
<span class="hv"></span><span class="sp"></span><span class="pl"></span>G.          <span class="ps">  </span><span class="ps">  </span><span class="ps">  </span>|
<span class="hv"></span>                <span class="ps">  </span>|  If header 'E' is "opened" then any
<span class="pl"></span>## H            <span class="ps">  </span>|  siblings ('C') and their descendants ('D')
<span class="hv"></span><span class="hv"></span>              <span class="ps">  </span><span class="ps">  </span>|  would be hidden and displayed as before.
<span class="hv"></span><span class="pl"></span>I.            <span class="ps">  </span><span class="ps">  </span>|
<span class="hv"></span>                <span class="ps">  </span>|  (It makes much more sense in context of the
<span class="pl"></span>## J            <span class="ps">  </span>|   example, including a menu, below.)
<span class="sp"></span><span class="hv"></span>              <span class="ps">  </span><span class="ps">  </span>|
<span class="sp"></span><span class="pl"></span>### K.        <span class="ps">  </span><span class="ps">  </span>|
<span class="sp"></span><span class="sp"></span><span class="hv"></span>            <span class="ps">  </span><span class="ps">  </span><span class="ps">  </span>|
<span class="sp"></span><span class="sp"></span><span class="pl"></span>L.          <span class="ps">  </span><span class="ps">  </span><span class="ps">  </span>|
</code></pre>

<div style="text-align:center"><input class="gray" id="ch" type="button" value="I still don't get it" onclick="toggleHV();"></div>
</div>


{header(4)Coloring text}

Markdown doesn't support colors. `{color(red)this is red}` is the syntax.

```none
#### {color(#0000ff)This is a big blue header}

##### {color(green)This is a green header}
```

> {header(4){color(#0000ff)This is a big blue header}
>
> {header(5){color(green)This is a green header}

<div style="text-align:center"><input class="gray" type="button" value="Explanation" onclick="document.getElementById('more-on-colors').style.display='block';this.style.display='none'"></div>

###### More on Colors

You can use these as colours:

- some color names
- RGB values: `rgb(255,255,255)`
- RGB values //with transparency// [0 to 1]: `rgba(255,255,255,0.5)`
- Hex codes (both #rgb and #rrggbb formats): `#ccc`

###### <span></span>

<div style="text-align:center">
    <input onclick="changePage('let-me-try-it')" type="button" value="Let me try it!">
</div>

## Let me try it
s

<style>
    .hv, .pl, .sp, .ps { font-weight:bold;color:blue }
    .section {padding-top:0 !important}
    h1 {text-align:center;padding-top:2rem;}
    h2 {background-color:black;color:white;text-align:center;padding-bottom:0.5rem; }
    h6 {text-decoration:underline;padding-top:.5rem;}
    .header-1, .header-2, .header-3 {}
    .hljs-emphasis { font-style: normal !important; font-weight: bold !important; }
    .parent { position:relative }
    .parent .left, .parent .right { width:50% }
    .parent .right { position:absolute;left:50%;top:0 }
    img[alt="Dwarfs"] { max-height:100% !important }
    #more-on-colors { display:none }
    .gray {
        background-color: #ccc !important;
        padding: 0 10px !important;
        line-height: 25px !important;
        height: 25px !important;
     }
</style>

<script>
    window.hvstatus = false;
    var hvs = document.getElementsByClassName('hv');
    var pls = document.getElementsByClassName('pl');
    var sps = document.getElementsByClassName('sp');
    var pss = document.getElementsByClassName('ps');
    var butt = document.getElementById('ch');
    function toggleHV() {
        if (window.hvstatus) {
            for (var i=0; i<hvs.length; i++) hvs[i].innerHTML = "";
            for (var i=0; i<pls.length; i++) pls[i].innerHTML = "";
            for (var i=0; i<sps.length; i++) sps[i].innerHTML = "";
            for (var i=0; i<pss.length; i++) pss[i].innerHTML = "  ";
            butt.setAttribute("value", "Show them again");
        } else {
            for (var i=0; i<hvs.length; i++) hvs[i].innerHTML = "| ";
            for (var i=0; i<pls.length; i++) pls[i].innerHTML = "+ ";
            for (var i=0; i<sps.length; i++) sps[i].innerHTML = "  ";
            for (var i=0; i<pss.length; i++) pss[i].innerHTML = "";
            butt.setAttribute("value", "Hide it again");
        }
        window.hvstatus = !window.hvstatus;
    }
    changePage('Intro');
    loadSources([[1,'https://cdnjs.cloudflare.com/ajax/libs/highlight.js/9.1.0/styles/github.min.css']]);
</script>