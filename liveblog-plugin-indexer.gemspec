Gem::Specification.new do |s|
  s.name = 'liveblog-plugin-indexer'
  s.version = '0.1.0'
  s.summary = 'A LiveBlog plugin to Index previous entries to facilitate using keywords to search the LiveBlog.'
  s.authors = ['James Robertson']
  s.files = Dir['lib/liveblog-plugin-indexer.rb']
  s.add_runtime_dependency('liveblog-indexer', '~> 0.2', '>=0.2.1')
  s.signing_key = '../privatekeys/liveblog-plugin-indexer.pem'
  s.cert_chain  = ['gem-public_cert.pem']
  s.license = 'MIT'
  s.email = 'james@r0bertson.co.uk'
  s.homepage = 'https://github.com/jrobertson/liveblog-plugin-indexer'
end
