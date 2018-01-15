require "dropbox"

# This code is directly extracted from this repository:
# https://github.com/janko-m/paperclip-dropbox
module CarrierWave
  module Dropbox
    module Rake
      extend self

      def authorize(access_token, access_type)
        #session = create_new_session(app_key, app_secret)

        #puts "Visit this URL: #{session.get_authorize_url}"
        #print "And after you approved the authorization confirm it here (y/n): "

        #assert_answer!
        #session.get_access_token
        dropbox_client = Dropbox::Client.new(access_token) #DropboxClient.new(session, access_type)
        account_info = dropbox_client.account_info

        puts <<-MESSAGE

Authorization was successful. Here you go:

user_id: #{account_info["uid"]}
        MESSAGE
#access_token: #{session.access_token.key}
#access_token_secret: #{session.access_token.secret}
      end

      # def create_new_session(app_key, app_secret)
      #   DropboxSession.new(app_key, app_secret)
      # end

      # def assert_answer!
      #   answer = STDIN.gets.strip
      #   exit if answer == "n"
      # end
    end
  end
end
