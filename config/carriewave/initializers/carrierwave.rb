CarrierWave.configure do |config|
    config.fog_credentials = {
      provider:              'AWS',                        # required
      aws_access_key_id:     'xxx',                        # required unless using use_iam_profile
      aws_secret_access_key: 'aVF/QzTlEoVmDgWKZ+5Gg7HlF7Js6hE4zczRicgi',                        # required unless using use_iam_profile
      use_iam_profile:       true,                         # optional, defaults to false
      region:                'eu-west-1',                  # optional, defaults to 'us-east-1'
      host:                  's3-ap-northeast-1.amazonaws.com',             # optional, defaults to nil
      endpoint:              'https://s3-ap-northeast-1.com:8080' # optional, defaults to nil
    }
    config.fog_directory  = 'name_of_bucket'                                      # required
    config.fog_public     = false                                                 # optional, defaults to true
    config.fog_attributes = { cache_control: "public, max-age=#{365.days.to_i}" } # optional, defaults to {}
    # For an application which utilizes multiple servers but does not need caches persisted across requests,
    # uncomment the line :file instead of the default :storage.  Otherwise, it will use AWS as the temp cache store.
    # config.cache_storage = :file
  end