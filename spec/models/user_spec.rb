RSpec.describe User do
  let(:user) { create(:user) }

  it { is_expected.to respond_to(:first_name) }
  it { is_expected.to respond_to(:last_name) }
  it { is_expected.to respond_to(:email) }
  it { is_expected.to respond_to(:phone) }

  describe 'validations' do
    required_attributes = [:email]

    required_attributes.each do |attr|
      context "with missing #{attr}" do
        it 'should not be valid' do
          user.send("#{attr}=", nil)
          expect(user).to be_invalid
        end
      end
    end
  end
end
