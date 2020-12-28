# CarrierWave.configure do |config|
#   config.fog_credentials = {
#     provider:              'AWS',                        # required
#     aws_access_key_id:     'xxx',                        # required unless using use_iam_profile
#     aws_secret_access_key: 'yyy',                        # required unless using use_iam_profile
#     use_iam_profile:       true,                         # optional, defaults to false
#     region:                'ap-northeast-1',                  # optional, defaults to 'us-east-1'
#     host:                  's3-ap-northeast-1.com',             # optional, defaults to nil
#     endpoint:              'https://s3-ap-northeast-1.com:8080' # optional, defaults to nil
#   }
#   config.fog_directory  = 'kyu-aws-bucket'                                      # required
#   config.fog_public     = false                                                 # optional, defaults to true
#   config.fog_attributes = { cache_control: "public, max-age=#{365.days.to_i}" } # optional, defaults to {}
#   # For an application which utilizes multiple servers but does not need caches persisted across requests,
#   # uncomment the line :file instead of the default :storage.  Otherwise, it will use AWS as the temp cache store.
#   # config.cache_storage = :file
# end

CarrierWave.configure do |config|
  config.fog_provider = 'fog/aws'                        # required
  config.fog_credentials = {
    provider:              'AWS',                        # required
    aws_access_key_id:     ENV["aws_access_key_id"],                        
    aws_secret_access_key: ENV["aws_secret_access_key"],                        
    host: 				   "s3-ap-northeast-1.amazonaws.com", 
    region:                "ap-northeast-1" 
  }
  config.fog_directory  = ENV["fog_directory"]           # required
# optional, defaults to {}
end
