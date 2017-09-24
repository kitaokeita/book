if Rails.env.production?
  CarrierWave.configure do |config|
    config.fog_credentials = {
      # Amazon S3用の設定
      :provider              => 'AWS',
      :region                => ENV[''],     # 例: 'ap-northeast-1'
      :aws_access_key_id     => ENV[''],
      :aws_secret_access_key => ENV['']
    }
    config.fog_directory     =  ENV['']
  end
end