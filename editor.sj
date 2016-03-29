## {hspace(-10%)}{emoji()gem}*some-js* editor{modify(color,gray)}

<style>
    #_sjs_out, #_sjs_edit {
        border: 0.1rem solid #ccc;
        box-sizing: border-box;
        height: 100%;
        width: initial;
        position: absolute;
        top: 0;
        right: 0;
    }
    #_sjs_outp { height:100%; }
    #_sjs_hello { width:120%;position:relative;height:500px;overflow-x:hidden;overflow-y:scroll;resize:vertical; }
    #_sjs_edit { left:0;right:auto; }
    #_sjs_out { overflow-y:scroll;overflow-x:hidden }
    #_sjs_ohhai, #_sjs_ohhai2 {
        margin: 0 -10.5%;
        text-align: center;
        border: 1px solid rgba(0,0,0,0.1);
        border-width: 1px 2px;
        position: relative;
        left: 1px;
        cursor: pointer;
        user-select: none;
        height: 24px;
        overflow-y: visible;
        z-index: 10;
        -webkit-user-select: none;  /* Chrome all / Safari all */
        -moz-user-select: none;     /* Firefox all */
        -ms-user-select: none;      /* IE 10+ */
        user-select: none;          /* Likely future */
    }
    #_sjs_ohhai2 { z-index: 20; }
    #_sjs_ohbai, #_sjs_ohbai2 {
        background-color: rgba(0,0,0,0.1);
        text-transform: uppercase;
        letter-spacing: 2px;
    }
    #_sjs_cheat-sheet, #_sjs_cheat-sheet2 {
        background-color: #fff;
        border: 1px solid #ccc;
    }
    #_sjs_cheat-sheet .highlight, #_sjs_cheat-sheet2 .highlight {
        font-weight: bold;
        background-color: rgba(0,0,0,0.2);
    }
    #_sjs_cheat-sheet td, #_sjs_cheat-sheet2 td {
        padding: 10px;
    }
    #_sjs_cheat-sheet pre, #_sjs_cheat-sheet2 pre {
        margin: 0;
        white-space: pre-wrap;
    }
    #_sjs_cheat-sheet p, #_sjs_cheat-sheet2 p {
        margin: 0;
    }
    #_sjs_cheat-sheet pre code, #_sjs_cheat-sheet2 pre code {
        margin-bottom: -15px;
        padding: 0;
    }
    #_sjs_help {
        margin: 1rem 0 1rem -10%;
        padding: 0.5rem 1.2rem;
        background-color: #444;
        color: white;
        border-radius: .3rem;
        width: 115%;
        min-height: 240px;
        font-family: Inconsolata, monospace;
        white-space: pre-wrap;
        position: relative;
    }
    #_sjs_next, #_sjs_prev {
        bottom: 6px;
        font-family: Raleway, sans-serif;
        position: absolute;
        padding: 2px 6px 0;
        border-radius: 0.3rem;
        border: 1px solid transparent;
        font-size: 1.2rem;
        font-weight: bold;
        color: #333;
        background-color: #404040;
    }
    #_sjs_next {
        right: 5px;
        border-top-left-radius: 0;
        border-bottom-left-radius: 0;

    }
    #_sjs_prev {
        right: 64px;
        border-top-right-radius: 0;
        border-bottom-right-radius: 0;
    }
    #_sjs_next.active {
        -webkit-animation: glowgreen 1.0s infinite alternate;
        -webkit-transition: border 1.0s linear, box-shadow 1.0s linear;
        -moz-transition: border 1.0s linear, box-shadow 1.0s linear;
        transition: border 1.0s linear, box-shadow 1.0s linear;
        color: #69c800;
        background-color: green;
    }
    #_sjs_next:hover, #_sjs_prev:hover {
        cursor: pointer;
    }
    .CodeMirror, .CodeMirror-gutters {
        height: 100% !important;
    }
    @-webkit-keyframes glowgreen {
        to {
             border-color: #69c800;
        -webkit-box-shadow: 0 0 10px #69c800;
           -moz-box-shadow: 0 0 10px #69c800;
                box-shadow: 0 0 10px #69c800;
        }
    }
    #_sjs_alrt_content {
        width: 100%;
        height: 100%;
        padding: 5%;
        box-sizing: border-box;
    }
    #_sjs_alrt {
        overflow: hidden;
        transition: opacity 1s ease-out;
        -webkit-transition: opacity 1s ease-out;
        -moz-transition: opacity 1s ease-out;
        -o-transition: opacity 1s ease-out;
        opacity: 0;
        background-color: green;
        position: absolute;
        left: 0;
        top: 60%;
        height: 40%;
        color: white;
        z-index: 9999;
        width: 100%;
    }
    #_sjs_alrt.hide { display: none }
    #_sjs_alrt h3 { margin-bottom: 0; }
    #_sjs_nextone:hover { cursor: pointer; }
</style>

<div id="_sjs_ohhai2" onclick="expandSheet2();">
    <div id="_sjs_ohbai2">some-js Cheatsheet</div>
    <div id="_sjs_cheat-sheet2"></div>
</div>
<div id="_sjs_ohhai" onclick="expandSheet();">
    <div id="_sjs_ohbai">Markdown Cheatsheet</div>
    <div id="_sjs_cheat-sheet"></div>
</div>
<div id="_sjs_help"><strong>The Paw:</strong> Hey! We're the local student newspaper! We'd like you to make us a website. We heard about a fantastic (shameless self promo) new tool called <em>some-js</em>, maybe you should check it out?
<strong>You:</strong> Do I have a choice?
<strong>Paw:</strong> Nope. (<span class="underline">ethical consent disclaimer:</span> you do, you can leave at any time :D)
<strong>You:</strong> Err...
<strong>Paw:</strong> Thanks.
<strong>You:</strong> Do I get paid for this?
<strong>Paw:</strong> Thanks, it helps a lot.
<strong>You:</strong> ...<div id="_sjs_next" style="border-radius:0.3rem" onclick="nextOne()" class="active">CONTINUE</div></div>
<div style="padding-right: 1.2rem;"><input id="_sjs_width" type="range" value="40" style="width:120%;margin:10px -10%; 0"></div>
<div id="_sjs_hello" style="position:relative;margin-left:-10%;margin-right:-10%;">
    <div id="_sjs_edit"></div>
    <div id="_sjs_out">
        <div id="_sjs_outp" class="container"></div>
    </div>
    <div id="_sjs_alrt" class="hide">
        <div id="_sjs_alrt_content">
            <h3 style="font-weight:bold;">Well done! That's right.</h3>
            <h4 id="_sjs_nextone" onclick="nextOne()">Click '<u>continue...</u>' <i style="transform: rotate(315deg)" class="fa fa-arrow-circle-right"></i></h4>
            <div style="position:absolute;top:20%;right:8%;">
                <a style="color:rgba(255,255,255,.4);" onclick="hideOverlay()">HIDE</a>
            </div>
        </div>
    </div>
</div>

<script>
    var cm;

    window.defer(function(){
        cm = CodeMirror(document.getElementById('_sjs_edit'), {
          lineWrapping: true,
          lineNumbers: true
        });

        var x = window.changePage;
        window.changePage = function(a) {
            x(a);
            if (a === "Editor") {
                cm.refresh();
            }
        };

        cm.setValue("{"+"-- Enter code below --}\n\n### Hello\n\nworld!");

        updateView();

        function updateView() {
            document.getElementById("_sjs_outp").innerHTML = generate(cm.getValue());
            contextualise();
            $('body').css('opacity', '').css('overflow', '');
            defer(check, "typeof window.tasks !== 'undefined'");
        }

        cm.on("change", updateView);

    }, "typeof CodeMirror !== 'undefined'");

    var isOpen = false;
    var isOpen2 = false;

    function expandSheet2() {
        if (!isOpen2) $('#_sjs_cheat-sheet2').html('<table style="width:100%"><tbody><tr><td><pre><code>This is far<span class="highlight">{hspace(50px)}</span>from this.</code></pre></td><td><p>Units can be `px`, `cm`, `mm` or any CSS unit. Can be negative.</p></td></tr><tr><td><pre><code>This is way above\n\n<span class="highlight">{vspace(50px)}</span>\n\nthis.</code></pre></td><td><p>Similar to above, will break the paragraph. Can be negative.</p></td></tr><tr><td><pre><code><span class="highlight">{color(green)This will be green}</span></code></pre></td><td><p>Colour names, hex-codes, rgb(a) values accepted</p></td></tr><tr><td><pre><code>This whole paragraph will \r\nhave a <span class="highlight">{modify(background-color,blue)}</span> blue background.</code></pre></td><td><p>Modify the parent of the text. First argument is CSS property, second is its value.</p></td></tr><tr><td><pre><code><span class="highlight">{menu()Home,About Us,Contact Us}</span></code></pre></td><td><p>Creates a menu, that shows/hides the header with the same name (and its subcontent). Header sizing will determine its subcontent.</p></td></tr><tr><td><pre><code><span class="highlight">{header(3)This is a h3 element}</span></code></pre></td><td><p>Essentially the same as Markdown `### This is...` except it doesn\'t affect menus, which is sometimes helpful. Number is header size(&lt;h#&gt;).</p></td></tr><tr><td><pre><code><span class="highlight">{tagline()Don\'t call us, we\'ll call you.}</span></code></pre></td><td><p>Creates a \'tagline\' with adaptive font sizing.</p></td></tr><tr><td><pre><code><span class="highlight">{icon(smile-o)}</span></code></pre></td><td><p>Adds font-awesome icon. This example adds the `fa-smile-o` icon.</p></td></tr><tr><td><pre><code><span class="highlight">{font(Arial)A different font!}</span></code></pre></td><td><p>Changes font. Font needs to be imported (or a standard web font).</p></td></tr></tbody></table>');
        else $('#_sjs_cheat-sheet2').html("");

        if (!isOpen2) $('#_sjs_ohbai2').html("Hide");
        else $('#_sjs_ohbai2').html("some-js Cheatsheet");

        isOpen2 = !isOpen2;
        isOpen = true;
        expandSheet();
    }

    function expandSheet() {
        if (!isOpen) $('#_sjs_cheat-sheet').html('<table style="width:100%"><tbody><tr><td><pre><code><span class="highlight">//</span>This is italicized<span class="highlight">//</span>, <wbr><span class="highlight">*</span>this is bold<span class="highlight">*</span> <wbr>and <span class="highlight">_</span>this is underlined<span class="highlight">_</span>.</code></pre></td><td><p>They can be used together on the same word or phrase. <strong style="color:blue;">Different to Markdown.</strong></p></td></tr><tr><td><pre><code><span class="highlight">{\--</span> This is a comment <span class="highlight">--}</span></code></pre></td><td><p>Removed from output.</p></td></tr><tr><td><pre><code><span class="highlight">#</span> This is a first level header</code></pre></td><td><p>Use one or more hash marks for headers: <code>#&nbsp;H1</code>, <code>##&nbsp;H2</code> ... <code>######&nbsp;H6</code></p></td></tr><tr><td><pre><code>This is a link to <wbr><span class="highlight">[Google](http://www.google.com)</span></code></pre></td><td><p>Visible text in the square brackets, link in the parentheses.</p></td></tr><tr><td><pre><code>First line.<span class="highlight">  \n</span>Second line.</code></pre></td><td><p>End a line with two spaces for a linebreak.</p></td></tr><tr><td><pre><code>First paragraph.<span class="highlight">\n\n</span>Second paragraph.</code></pre></td><td><p>Start a new paragraph by having an empty line between them.</p></td></tr><tr><td><pre><code><span class="highlight">- </span>Unordered list item\n<span class="highlight">- </span>Unordered list item</code></pre></td><td><p>Unordered (bulleted) lists use asterisks, pluses, or hyphens (<code>*</code>, <code>+</code>, or<code>-</code>) as list markers.</p></td></tr><tr><td><pre><code><span class="highlight">1. </span>Ordered list item<span class="highlight">\n2. </span>Ordered list item</code></pre></td><td><p>Ordered (numbered) lists use regular numbers, followed by periods, as list markers.</p></td></tr><tr><td><pre><code><span class="highlight">```\n</span>print("This is a code block");\n<span class="highlight">```</span></code></pre></td><td><p>Three backticks above and below for a preformatted block.</p></td></tr><tr><td><pre><code>Let\'s talk about <span class="highlight">`</span>&lt;html&gt;<span class="highlight">`</span>!</code></pre></td><td><p>Use backticks for inline code.</p></td></tr><tr><td><pre><code><span class="highlight">![](http://www.w3schools.com/html/pic_mountain.jpg)</span></code></pre></td><td><p>Images are exactly like links, with an exclamation mark in front of them.</p></td></tr></tbody></table>');
        else $('#_sjs_cheat-sheet').html("");

        if (!isOpen) $('#_sjs_ohbai').html("Hide");
        else $('#_sjs_ohbai').html("Markdown Cheatsheet");

        isOpen = !isOpen;
    }

    function adjWidth(e) {
        $('#_sjs_edit')[0].style.width = (e.target.value) + "%";
        $('#_sjs_out')[0].style.width = (100-e.target.value) + "%";
    }
    $('#_sjs_width').on("click", adjWidth);
    $('#_sjs_width').on("change", adjWidth);
    adjWidth({target: {value: 40}});

    var hidden = false;
    window.currentTask = -1;
    window.maxTask = -1;
    window.tasks = [{"task":"<strong>some-help:</strong> Let's start with making a small article for The Paw. \n\n<span style=\"color: #999\">Note: You can resize the window below by <b>dragging the bottom-right corner</b> down. You can also change the width of the textbox by using the <b>slider above the editor</b>.</span>\n\n<u>First, we'll need a simple header and paragraph.</u>\nYou can create headers with 1 to 6 '#' characters, a space and then the appropriate text.\n\nTry making a header for the article that reads: \n<em>'The Paw treats its coders like dogs'</em>.","regex":"#{1,6}\\s+[tT]he [pP]aw treats it'?s coders like dogs","replace":""},{"task":"<strong>some-help:</strong>\n<u>Right, now let's put your name on it.</u>\n\nMake another smaller header that says: \n<em>'By [your name here].'</em>.\n\nRemember, you can make a smaller header by adding more '#'s before the text.\n\n(Don't forget to include the '.')","regex":"#{2,6}\\s+[bB]y [A-Za-z-' ]*?\\.\\s*?(\\n|$)","replace":""},{"task":"<strong>some-help:</strong>\n<u>Let's make the article title bold.</u>\n\nYou can make something bold by enclosing it within '*' characters. \n<em>'*This is bold text*'</em>.","regex":"\\*\\s*[tT]he [pP]aw treats it'?s coders like dogs\\s*\\*","replace":""},{"task":"<strong>some-help:</strong>\n<u>Nice one. Now, let's make your name appear in italics.</u>\n\nYou can make something italic by enclosing it between '//'s. \n<em>'//This is italic text//'</em>.","regex":"\\/\\/\\s*([bB]y )?[A-Za-z-' ]*?\\.?\\s*\\/\\/","replace":""},{"task":"<strong>some-help:</strong>\n<u>Now, let's actually write the article.</u>\n\nI've started it for you. As you can see, a blank line between two bodies of text will separate them into paragraphs.\n\nBut it seems that the address doesn't display on separate lines, as it thinks it's all part of one paragraph.\n\n<u>Separate the lines of the 'Dogentry College' address by turning\nthem into separate paragraphs.</u>","regex":"The Paw.*?\\n.*?\\n.*?Dogentry Student Union.*?\\n.*?\\n.*?Kennelworth.*?\\n.*?\\n.*?(\\n.*?)?D","replace":"# *The Paw treats its coders like dogs*\n\n## By //[Replace Me]//.\n\nThe Paw, as you well know, is a newspaper at\nthe prestigious university *Dogentry College*.\n\nUnfortunately the student newspaper is run by\na scary lady who _destroys all_ in her path,\n//especially coders//, as she forces them to\nwork non-stop, not to mention eat dogfood\n(which is surprisingly nutritious).\n\nPlease leave them complaints:\n\n*By post:*  \n\nThe Paw\nDogentry Student Union\nKennelworth\nDO8 8ED\n\n*By telephone:* 07700 WOOFED\n\n*By email:* thepaw@dogentry.ac.uk"},{"task":"<strong>some-help:</strong>\n\nBut this looks a bit weird now. Each line is far from the next.\n\nFortunately there's a nice way around this, called line-breaks.\n\nYou can make a line fold down below by adding two spaces at the end of the line:\n<em><span style=\"background-color:#666\">This is above,  \nthis is below.</span></em>\n\n<u>Change the address to now use line-breaks instead of paragraphs.</u>","regex":"The Paw  +\\nDogentry Student Union  +\\nKennelworth  +\\n","replace":""},{"task":"<strong>some-help:</strong>\n<u>Underlines next.</u>\n\nUnderlines are achieved by putting underscores (_) around the text.\n\n<em>'_This is underlined_'</em>.\n\nUnderlines in some-js are more than meet the eye. For instance, <em>'js'</em> in <em>'some_js_tutorial'</em> will not become underlined; and rightly so, it's my username!\n\n<span style=\"color: #999\">i.e. It will only match with spaces/punctuation on either side.</span>","regex":"","replace":""}];

    function check() {
        if (window.currentTask > -1 && !hidden && cm.getValue().match(new RegExp(window.tasks[window.currentTask].regex), 'ig')) {
            $('#_sjs_next').attr('class','active');
            $('#_sjs_alrt').removeClass('hide');
            setTimeout(function() {
                $('#_sjs_alrt').css('opacity','0.96');
            }, 20);
        }
        $('#_sjs_next').css('display', '');
        $('#_sjs_prev').css('display', '');
    }

    function hideOverlay() {
        $('#_sjs_alrt').css('opacity','0');
        hidden = true;
        setTimeout(function() {
            $('#_sjs_alrt').addClass('hide');
        }, 1000);
    }

    function nextOne() {
        if (window.currentTask != window.tasks.length-1) window.currentTask++;
        if (window.maxTask < window.currentTask-1) {
            window.maxTask = window.currentTask-1;
            if (window.tasks[window.currentTask].replace) {
                var rep = window.tasks[window.currentTask].replace;
                if (window.currentTask == 4) {
                    rep = rep.replace("[Replace Me]", cm.getValue().match(/(\/\/)?[B]y(\/\/)? (\/\/)?[A-Za-z-' ]*(?=[\/\.])/)[0].substring(5).trim());
                }
                cm.setValue(rep);
            }
        }
        hidden = false;
        changeOne();
        if (window.maxTask < window.currentTask) {
            $('#_sjs_next').css('display', 'none');
            $('#_sjs_prev').css('display', 'none');
        }
    }

    function prevOne() {
        if (window.currentTask) window.currentTask--;
        hidden = true;
        changeOne();
    }

    function changeOne() {
        var prev_button = "<div id=\"_sjs_prev\" onclick=\"prevOne()\"><i class=\"fa fa-arrow-left\"></i></div>";
        if (window.currentTask == 0) prev_button = "<style>#_sjs_next{border-radius:.3rem}</style>";
        $('#_sjs_help').html(window.tasks[window.currentTask].task + prev_button + "<div id=\"_sjs_next\" onclick=\"nextOne()\">NEXT <i class=\"fa fa-arrow-right\"></i></div>");
        $('#_sjs_alrt').css('opacity','0');
        setTimeout(function() {
            $('#_sjs_alrt').addClass('hide');
        }, 1000);
    }
</script>

