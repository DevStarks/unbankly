require 'ostruct'

RSpec.describe User do

  it { is_expected.to respond_to(:first_name) }
  it { is_expected.to respond_to(:last_name) }
  it { is_expected.to respond_to(:email) }
  it { is_expected.to respond_to(:phone) }

  describe 'validations' do
    let(:user) { build(:user) }

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

  let(:debtor)   { create(:user) }
  let(:creditor) { create(:user) }

  before { create(:loan, borrower: debtor, lender: creditor) }

  describe '#debtors' do
    it 'returns correct list of debtors' do
      expect(creditor.debtors).to include(debtor)
    end
  end

  describe '#creditors' do
    it 'returns correct list of creditors' do
      expect(debtor.creditors).to include(creditor)
    end
  end

  describe '::from_omniauth' do
    let(:provider_info) { { provider: 'facebook', uid: 1 } }

    let(:auth_hash) do
      auth_hash = mock_auth_hash(:facebook)
      auth_hash.provider = provider_info[:provider]
      auth_hash.uid = provider_info[:uid]
      auth_hash
    end

    context 'when user already exists' do
      let!(:user) { create(:user, provider_info) }

      it 'should return that user' do
        expect(User.from_omniauth(auth_hash)).to eq(user)
      end
    end

    context 'when user doesnt already exist' do
      it 'should create that user' do
        expect{ User.from_omniauth(auth_hash) }.to change(User, :count).by(1)
      end
    end
  end
end
