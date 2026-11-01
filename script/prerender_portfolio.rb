require "fileutils"
require "rack/mock"

response = Rails.application.call(Rack::MockRequest.env_for("/"))
status, _headers, body = response
html = body.each.to_a.join
body.close if body.respond_to?(:close)

abort "Portfolio prerender failed with HTTP #{status}" unless status == 200

output = Rails.root.join("dist")
FileUtils.rm_rf(output)
FileUtils.mkdir_p(output)
File.write(output.join("index.html"), html)
FileUtils.cp_r(Rails.root.join("public/assets"), output.join("assets"))

puts "Static portfolio generated at #{output}"
