if Rails.env.production?
  CarrierWave.configure do |config|
    config.fog_credentials = {
      # Amazon S3用の設定
      :provider              => 'AWS',
      :region                => ENV['ap-northeast-1'],     # 例: 'ap-northeast-1'
      :aws_access_key_id     => ENV['AKIAILG2OJNKNJ6SQQGA'],
      :aws_secret_access_key => ENV['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']
    }
    config.fog_directory     =  ENV['railskitao1']
  end
end