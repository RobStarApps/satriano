CarrierWave.configure do |config|
  config.storage    = :aws
  config.aws_bucket = "satriano-#{Rails.env}"
  config.aws_acl    = :public_read
  config.aws_authenticated_url_expiration = 365.days

  config.aws_credentials = {
    access_key_id:     "",
    secret_access_key: "",
    region: 'eu-west-1'
  }
end
