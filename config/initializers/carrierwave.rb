CarrierWave.configure do |config|
  config.storage    = :aws
  config.aws_bucket = "satriano-#{Rails.env}"
  config.aws_acl    = :public_read
  config.aws_authenticated_url_expiration = 365.days

  config.aws_credentials = {
    access_key_id:     "AKIAJAMRJB5AJQ7R5IGQ",
    secret_access_key: "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",
    region: 'eu-west-1'
  }
end
