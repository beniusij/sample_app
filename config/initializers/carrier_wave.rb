if Rails.env.production?
  CarrierWave.configure do |config|
    config.fog_credentials = {
      # Configuration for Amazon S3
      :provider               => 'AWS',
      :aws_access_key_id      => ENV['AKIAJ3C7QZWYOAKCOAHQ'],
      :aws_secret_access_key  => ENV['mNSI2rZHx6Zc9y6pdjP/k+8AvJTMFUHGowagcJb']
    }
    config.fog_directory      =  ENV['juozasbucket']
  end
end
