RSpec.describe Payment do

  it { is_expected.to respond_to(:amount) }
  it { is_expected.to respond_to(:loan) }
  it { is_expected.to respond_to(:status) }

  describe 'validations' do
    let(:payment) { build(:payment) }

    context 'when all attrs are present' do
      it 'should be valid' do
        expect(payment).to be_valid
      end
    end

    present_attributes = [:amount, :loan_id, :status]

    present_attributes.each do |attr|
      context "with missing #{attr}" do
        it 'should not be valid' do
          payment.send("#{attr}=", nil)
          expect(payment).to be_invalid
        end
      end
    end

    describe 'status validation' do
      context 'with invalid status' do
        it 'should not be valid' do
          payment.status = Faker::DragonBall.character
          expect(payment).to be_invalid
        end
      end
    end
  end
end
