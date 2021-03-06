CarrierWave.configure do |config|
  config.permissions = 0666
  if Rails.env.production?
    config.storage = :fog
    config.fog_credentials = {
      provider:               ENV['FOG_PROVIDER'],
      aws_access_key_id:      ENV['AWS_ACCESS_KEY_ID'],
      aws_secret_access_key:  ENV['AWS_SECRET_ACCESS_KEY'],
      region:                 ENV['AWS_REGION']
    }
    config.fog_directory  = ENV['FOG_BUCKET']
    config.fog_host       = ENV['FOG_HOST']
    config.fog_public     = true
    config.fog_attributes = {'Cache-Control'=>'max-age=315576000'}
  else
    config.storage = :file
    CarrierWave.root = Rails.root.join(Rails.public_path).to_s
  end

  config.cache_dir = "#{Rails.root}/tmp/uploads"
end
