require 'carrierwave/storage/abstract'
require 'carrierwave/storage/file'
require 'carrierwave/storage/fog'
if Rails.env.production?
  CarrierWave.configure do |config|
      config.fog_credentials = {
        provider: 'AWS',
        aws_access_key_id: ENV['AWS_ACCESS_KEY_ID'],
        aws_secret_access_key: ENV['AWS_SECRET_ACCESS_KEY'],
        region: ENV['AWS_REGION'],
        path_style: true
      }
      config.fog_directory  = 'choicechoice'
      config.fog_public     = true
      config.fog_attributes = { cache_control: "public, max-age=#{365.days.to_i}" }
      
    end
  end
  
  CarrierWave::SanitizedFile.sanitize_regexp = /[^[:word:]\.\-\+]/
 
  # onfig.fog_provider = 'fog/aws'

  # config.asset_host = 'https://choicechoice.s3.amazonaws.com'
  # config.storage :fog
  #     config.enable_processing = false if Rails.env.test?