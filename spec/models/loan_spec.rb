RSpec.describe Loan do

  it { is_expected.to respond_to(:amount) }
  it { is_expected.to respond_to(:payment_freq) }
  it { is_expected.to respond_to(:term_length) }
  it { is_expected.to respond_to(:lender) }
  it { is_expected.to respond_to(:borrower) }
  it { is_expected.to respond_to(:payments) }
  it { is_expected.to respond_to(:loan_request) }

  describe 'validations' do
    let(:loan) { build(:loan) }

    context 'when all attrs are present' do
      it 'should be valid' do
        expect(loan).to be_valid
      end
    end

    present_attributes = [:amount, :payment_freq, :term_length, :borrower_id, :lender_id, :loan_request_id]

    present_attributes.each do |attr|
      context "with missing #{attr}" do
        it 'should not be valid' do
          loan.send("#{attr}=", nil)
          expect(loan).to be_invalid
        end
      end
    end
  end
end
