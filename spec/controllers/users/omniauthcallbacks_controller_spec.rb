RSpec.describe Users::OmniauthCallbacksController do
  before do
    request.env["devise.mapping"] = Devise.mappings[:user]
  end

  [:facebook, :google_oauth2].each do |provider|
    describe "##{provider}" do
      
      before do
        mock_auth_hash(provider)
        request.env["omniauth.auth"] = OmniAuth.config.mock_auth[provider]
      end

      it 'should signin the user' do
        post provider.to_sym

        expect(subject).to be_signed_in
      end
    end
  end

end
