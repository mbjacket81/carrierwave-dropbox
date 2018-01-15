require "carrierwave/dropbox/rake"

namespace :dropbox do
  desc "Obtains your Dropbox credentials"
  task :authorize do
    if ENV["APP_KEY"].nil? or ENV["APP_SECRET"].nil?
      puts "USAGE: `rake dropbox:authorize ACCESS_TOKEN=your_access_token ACCESS_TYPE=your_access_type"
      exit
    end

    CarrierWave::Dropbox::Rake.authorize(ENV["ACCESS_TOKEN"], ENV["ACCESS_TYPE"] || "dropbox")
  end
end
