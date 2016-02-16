class UsersController < ApplicationController
  def index
    facebook
end

def show
end

def edit
end

def new
end

def facebook
  puts @graph = Koala::Facebook::API.new(ENV['FACEBOOK_GRAPH_KEY'])
  # puts "GRAPH 1"
  # puts profile = @graph.get_object("me")
  # puts "GRAPH 2"

  puts  friends = @graph.get_connections("me", "feed")
  puts "GRAPH 3"

  # puts @graph.inspect

    # # Three-part queries are easy too!
    # @graph.get_connections("me", "mutualfriends/#{friend_id}")

    # # You can use the Timeline API:
    # # (see https://developers.facebook.com/docs/beta/opengraph/tutorial/)
    # @graph.put_connections("me", "namespace:action", object: object_url)

    # # For extra security (recommended), you can provide an appsecret parameter,
    # # tying your access tokens to your app secret.
    # # (See https://developers.facebook.com/docs/reference/api/securing-graph-api/
    # # You'll need to turn on 'Require proof on all calls' in the advanced section
    # # of your app's settings when doing this.
    # @graph = Koala::Facebook::API.new(oauth_access_token, app_secret)

    # # Facebook is now versioning their API. # If you don't specify a version, Facebook
    # # will default to the oldest version your app is allowed to use. Note that apps
    # # created after f8 2014 *cannot* use the v1.0 API. See
    # # https://developers.facebook.com/docs/apps/versions for more information.
    # #
    # # You can specify version either globally:
    # Koala.config.api_version = "v2.0"
    # # or on a per-request basis
    # @graph.get_object("me", {}, api_version: "v2.0")
end
end
