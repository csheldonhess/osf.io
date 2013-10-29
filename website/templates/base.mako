<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="utf-8">
    <title>Open Science Framework | ${self.title()}</title>
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta name="description" content="${self.description()}">

    <!-- Le HTML5 shim, for IE6-8 support of HTML elements -->
    <!--[if lt IE 9]>
      <script src="//html5shim.googlecode.com/svn/trunk/html5.js"></script>
    <![endif]-->

    <!-- Le styles -->
    <link rel="stylesheet" href="/static/vendor/bootstrap2/css/bootstrap.min.css">
    % for url in css_all:
        <link rel="stylesheet" href="${url}">
    % endfor
    ${self.stylesheets()}

    % for url in js_all:
        <script src="${url}"></script>
    % endfor
    ${self.javascript()}

</head>
<body>
    % if dev_mode:
    <style>
        #devmode {
            position:fixed;
            bottom:0;
            left:0;
            border-top-right-radius:8px;
            background-color:red;
            color:white;
            padding:.5em;
        }
    </style>
    <div id='devmode'><strong>WARNING</strong>: This site is running in development mode.</div>
    % endif

    <div mod-meta='{"tpl": "nav.mako", "replace": true}'></div>
     ## TODO: shouldn't always have the watermark class
    <div class="watermarked">
        <div class="container">
            % if status:
                <div mod-meta='{"tpl": "alert.mako", "replace": true}'></div>
            % endif
            ${self.content()}
        </div><!-- end container -->
    </div><!-- end watermarked -->

    <div mod-meta='{"tpl": "footer.mako", "replace": true}'></div>

        %if use_cdn:
            <div id="fb-root"></div>
            <script>(function(d, s, id) {
              var js, fjs = d.getElementsByTagName(s)[0];
              if (d.getElementById(id)) {return;}
              js = d.createElement(s); js.id = id;
              js.src = "//connect.facebook.net/en_US/all.js#xfbml=1";
              fjs.parentNode.insertBefore(js, fjs);
            }(document, 'script', 'facebook-jssdk'));</script>

            <script type="text/javascript">

              var _gaq = _gaq || [];
              _gaq.push(['_setAccount', 'UA-26813616-1']);
              _gaq.push(['_trackPageview']);

              (function() {
                var ga = document.createElement('script'); ga.type = 'text/javascript'; ga.async = true;
                ga.src = ('https:' == document.location.protocol ? 'https://ssl' : 'http://www') + '.google-analytics.com/ga.js';
                var s = document.getElementsByTagName('script')[0]; s.parentNode.insertBefore(ga, s);
              })();
            </script>
        %endif
        ${self.javascript_bottom()}
    </body>
</html>


###### Base template functions #####

<%def name="title()">
    ### The page title ###
</%def>

<%def name="description()">
    ### The page description ###
</%def>

<%def name="stylesheets()">
    ### Extra css for this page. ###
</%def>

<%def name="javascript()">
    ### Additional javascript, loaded at the top of the page ###
</%def>

<%def name="content()">
    ### The body content. ###
</%def>

<%def name="javascript_bottom()">
    ### Javascript loaded at the bottom of the page ###
</%def>
