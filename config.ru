use Rack::Static,
:urls => ["img", "js", "css", "font-awesome-4.1.0", "fonts", "less"],
:root => "index"

run lambda { |env|
  [
    200,
    {
      'Content-Type'  => 'text/html',
      'Cache-Control' => 'public, max-age=86400'
    },
    File.open('index.html', File::RDONLY)
  ]
}