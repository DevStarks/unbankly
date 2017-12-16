RSpec.describe User do
  let(:user) { build(:user) }

  it { is_expected.to respond_to(:first_name) }
  it { is_expected.to respond_to(:last_name) }
  it { is_expected.to respond_to(:email) }
  it { is_expected.to respond_to(:phone) }

  describe 'validations' do
    context 'when all attrs are present' do
      it 'should be valid' do
        expect(user).to be_valid
      end
    end

    present_attributes = [:email]

    present_attributes.each do |attr|
      context "with missing #{attr}" do
        it 'should not be valid' do
          user.send("#{attr}=", nil)
          expect(user).to be_invalid
        end
      end
    end
  end
end
