require 'ostruct'

module OmniauthMacros
  def mock_auth_hash(provider)
    auth_object = OpenStruct.new(base_auth_hash)
    auth_object.provider = provider.to_s
    OmniAuth.config.mock_auth[provider] = auth_object
  end

  def base_auth_hash
    {
      'uid' => '123545',
      'info' => OpenStruct.new({
        'first_name' => 'devin',
        'last_name' => 'starks',
        'email' => 'devstarks@unbankly.com',
        'image' => 'mock_user_thumbnail_url'
      }),
      'credentials' => {
        'token' => 'mock_token',
        'secret' => 'mock_secret'
      }
    }
  end
end
