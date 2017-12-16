RSpec.describe LoanApplication do

  it { is_expected.to respond_to(:status) }
  it { is_expected.to respond_to(:loaner) }
  it { is_expected.to respond_to(:applicant) }

  describe 'validations' do
    let(:loan_application) { build(:loan_application) }
    
    describe 'attribute presence' do

      context 'when all attrs are present' do
        it 'should be valid' do
          expect(loan_application).to be_valid
        end
      end

      present_attributes = [:status, :applicant_id, :loaner_id]

      present_attributes.each do |attr|
        context "with missing #{attr}" do
          it 'should not be valid' do
            loan_application.send("#{attr}=", nil)
            expect(loan_application).to be_invalid
          end
        end
      end
    end

    describe 'status validation' do
      context 'with invalid status' do
        it 'should not be valid' do
          loan_application.status = Faker::DragonBall.character
          expect(loan_application).to be_invalid
        end
      end
    end
  end
end
