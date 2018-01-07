RSpec.describe UsersController do
  login_user

  describe '#index' do
    let(:user2) { create(:user) }

    before do
      create(:loan, borrower: subject.current_user,  lender: user2)
      create(:loan, borrower: user2, lender: subject.current_user)
    end

    context 'when params[:role] == lender' do
      it 'should return a list of creditors' do
        get :index, params: { role: :lender }

        creditors = [user2]
        expect(response.body).to eq(creditors.to_json)
      end

      context 'and user hasnt lent any loans' do
         before { Loan.delete_all }

        it 'should return an empty array' do
          get :index, params: { role: :lender }

          expect(response.body).to eq([].to_json)
        end
      end
    end

    context 'when params[:role] == borrower' do
      before { get :index, params: { role: :borrower } }

      it 'should return a list of lenders' do
        debtors = [user2]
        expect(response.body).to eq(debtors.to_json)
      end
    end

    context 'when params[:role] is invalid' do
      before { get :index, params: { role: :oops } }

      it 'should respond with error code' do
        expect(response).to have_http_status(422)
      end
    end
  end
end
