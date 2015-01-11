use Rack::Static,
  :urls => ["/images", "/js", "/css"],
:root => "index"

run lambda { |env|
  [
    200,
    {
			'Content-Type'  => 'text/html','stylesheet'
			'Cache-Control' => 'index, max-age=86400'
    },
    File.open('index.html', File::RDONLY)
  ]
}