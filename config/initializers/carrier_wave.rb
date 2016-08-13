if Rails.env.production?
  CarrierWave.configure do |config|
    config.root = Rails.root.join('tmp')
    config.cache_dir = 'carrierwave'

    config.fog_credentials = {
      # Configuration for Amazon S3
      :provider               => 'AWS',
      :aws_access_key_id      => ENV['S3_ACCESS_KEY'],
      :aws_secret_access_key  => ENV['S3_SECRET_KEY'],
      :region                 => 'eu-west-1',
      :host                   => 's3.example.com',
      :endpoint               => 'https://s3.example.com:8000'
    }
    config.fog_directory      = ENV['S3_Bucket']
    config.fog_public         = false
    config.fog_attributes     = {'Cache-Control'=>'max-age=31576000'}
  end
end