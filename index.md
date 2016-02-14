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

<div style="text-align:center">
    <input onclick="changePage('See the Magic')" type="button" value="See the magic!">
</div>

<style>
    h1 {text-align:center;padding-top:2rem;}
    h2 {background-color:black;color:white;text-align:center;padding-bottom:0.5rem; }
    .hljs-emphasis { font-style: normal !important; font-weight: bold !important; }
    .parent { position:relative }
    .parent .left, .parent .right { width:50% }
    .parent .right { position:absolute;left:50%;top:0 }
    img[alt="Dwarfs"] { max-height:100% !important }
</style>

<script>
    changePage('Intro');
    loadSources([[1,'https://cdnjs.cloudflare.com/ajax/libs/highlight.js/9.1.0/styles/github.min.css']]);
</script>