# Introducing the LiveBlog-plugin-indexer gem

    require 'liveblog'
    require 'liveblog-plugin-dxtags'
    require 'liveblog-plugin-indexer'
        
    lb = LiveBlog.new config: 'http://www.jamesrobertson.eu/liveblog/liveblog.conf'

The above code demonstrates how the liveblog-plugin-indexer gem is declared relative to the LiveBlog gem as well as other liveblog plugins.

Here's the config file used:

<pre>
dir: /home/james/jamesrobertson.eu/liveblog/
urlbase: https://www.jamesrobertson.eu/liveblog/
edit_url: http://a1.jamesrobertson.eu/do/liveblog/edit
css_url: /liveblog/liveblog.css
xsl_path: /home/james/jamesrobertson.eu/liveblog/liveblog.xsl
xsl_url: /liveblog/liveblog.xsl
bannertext: "Think in the morning. Act in the noon. Eat in the evening. Sleep in the night." William Blake
rss_title: James Robertson's LiveBlog

plugins:
  DxTags:
    settings:
      xslt_path: /xsl/dxlinks.xsl
  Indexer:
    word_index: words_indexed.json
    url_index: urls_indexed.json
</pre>

Notes: 

* When the Liveblog#initialize method is executed it intialiases the plugins, and it triggers the plugin's on_new_day() method if the index.xml file for the current day does not exist.
* Plugins used with the LiveBlog gem are optional, yet for completeness I've included what I'm currently using in my setup.

liveblog plugins plugin indexer
