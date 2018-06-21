CarrierWave.configure do |config|
  config.fog_provider = 'fog/aws'                        # required
  config.fog_credentials = {
    provider:              'AWS',                        # required
    aws_access_key_id:     'AKIAJ6N7C4KY4KHUIRUQ',                        # required
    aws_secret_access_key: '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',                        # required
    region:                'ap-northeast-2',                  # optional, defaults to 'us-east-1'
    host:                  's3-website.ap-northeast-2.amazonaws.com',             # optional, defaults to nil
    endpoint:              'https://s3.ap-northeast-2.amazonaws.com' # optional, defaults to nil
  }
  config.fog_directory  = 'upload123456'                                   # required
  config.fog_public     = false                                                 # optional, defaults to true
  config.fog_attributes = { cache_control: "public, max-age=#{365.days.to_i}" } # optional, defaults to {}
end
