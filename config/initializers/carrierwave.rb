CarrierWave.configure do |config|

  unless Rails.env.test? || Rails.env.development?
    config.cache_storage = :fog
    config.fog_provider = "fog-aws"
    config.fog_credentials = {
      provider: "AWS",
      aws_access_key_id: ENV["S3_ACCESS_KEY_ID"],
      aws_secret_access_key: ENV["S3_SECRET_ACCESS_KEY"],
      region: "ap-northeast-1",
      path_style: true,
    }

    config.fog_public = false
    config.fog_attributes = { "Cache-Control" => "public, max-age=86400" }

    config.remove_previously_stored_files_after_update = false

    config.fog_directory = ENV['S3_BUCKET']
    config.asset_host = "https://s3-ap-northeast-1.amazonaws.com/#{ENV['S3_BUCKET']}"
  end
end
# 日本語の文字化けを防ぐ
CarrierWave::SanitizedFile.sanitize_regexp = /[^[:word:]\.\-\+]/
