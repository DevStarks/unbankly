RSpec.describe LoanRequest do

  it { is_expected.to respond_to(:status) }
  it { is_expected.to respond_to(:lender) }
  it { is_expected.to respond_to(:applicant) }

  describe 'validations' do
    let(:loan_request) { build(:loan_request) }
    
    describe 'attribute presence' do

      context 'when all attrs are present' do
        it 'should be valid' do
          expect(loan_request).to be_valid
        end
      end

      present_attributes = [:status, :applicant_id, :lender_id]

      present_attributes.each do |attr|
        context "with missing #{attr}" do
          it 'should not be valid' do
            loan_request.send("#{attr}=", nil)
            expect(loan_request).to be_invalid
          end
        end
      end
    end

    describe 'status validation' do
      context 'with invalid status' do
        it 'should not be valid' do
          loan_request.status = Faker::DragonBall.character
          expect(loan_request).to be_invalid
        end
      end
    end
  end
end
