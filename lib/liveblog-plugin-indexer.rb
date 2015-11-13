 #!/usr/bin/env ruby

# file: liveblog-plugin-indexer.rb


require 'liveblog-indexer'


class LiveBlogPluginIndexer

  def initialize(settings: {}, variables: {})

    @urlbase = variables[:urlbase]
    
  end

  def on_new_day(filepath, urlpath)
    
    LiveBlogIndexer.new.crawl @urlbase + urlpath + 'formatted.xml'
    
  end
      
end
