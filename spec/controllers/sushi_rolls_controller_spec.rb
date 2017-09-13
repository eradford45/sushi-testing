require 'rails_helper'


RSpec.describe SushiRollsController, type: :controller do
login_user
 
  let(:valid_attributes) {
    {name: 'new_sushi_roll', price: rand(1..100), description: 'testing'}
  }

  let(:invalid_attributes) {
    {name: '', price: '', description: ''}
  }

  
  let(:valid_session) { {} }

  describe "GET #index" do
    it "returns a success response" do
      sushi_roll = SushiRoll.create! valid_attributes
      get :index, params: {}, session: valid_session
      expect(response).to be_success
    end
  end

  describe "GET #show" do
    it "returns a success response" do
      sushi_roll = SushiRoll.create! valid_attributes
      get :show, params: {id: sushi_roll.to_param}, session: valid_session
      expect(response).to be_success
    end
  end

  describe "GET #new" do
    it "returns a success response" do
      get :new, params: {}, session: valid_session
      expect(response).to be_success
    end
  end

  describe "GET #edit" do
    it "returns a success response" do
      sushi_roll = SushiRoll.create! valid_attributes
      get :edit, params: {id: sushi_roll.to_param}, session: valid_session
      expect(response).to be_success
    end
  end

  describe "POST #create" do
    context "with valid params" do
      it "creates a new SushiRoll" do
        expect {
          post :create, params: {sushi_roll: valid_attributes}, session: valid_session
        }.to change(SushiRoll, :count).by(1)
      end

      it "redirects to the created sushi_roll" do
        post :create, params: {sushi_roll: valid_attributes}, session: valid_session
        expect(response).to redirect_to(SushiRoll.last)
      end
    end

    context "with invalid params" do
      it "returns a success response (i.e. to display the 'new' template)" do
        post :create, params: {sushi_roll: invalid_attributes}, session: valid_session
        expect(response).to be_success
      end
    end
  end

  describe "PUT #update" do
    context "with valid params" do
      let(:new_attributes) {
        {name: 'a_new_name', price: rand(1..100), description: 'a cool new description'}
      }

      it "updates the requested sushi_roll" do
        sushi_roll = SushiRoll.create! valid_attributes
        put :update, params: {id: sushi_roll.to_param, sushi_roll: new_attributes}, session: valid_session
        sushi_roll.reload
        expect(controller.notice).to eq('Sushi roll was successfully updated.')
      end

      it "redirects to the sushi_roll" do
        sushi_roll = SushiRoll.create! valid_attributes
        put :update, params: {id: sushi_roll.to_param, sushi_roll: valid_attributes}, session: valid_session
        expect(response).to redirect_to(sushi_roll)
      end
    end

    context "with invalid params" do
      it "returns a success response (i.e. to display the 'edit' template)" do
        sushi_roll = SushiRoll.create! valid_attributes
        put :update, params: {id: sushi_roll.to_param, sushi_roll: invalid_attributes}, session: valid_session
        expect(response).to be_success
      end
    end
  end

  describe "DELETE #destroy" do
    it "destroys the requested sushi_roll" do
      sushi_roll = SushiRoll.create! valid_attributes
      expect {
        delete :destroy, params: {id: sushi_roll.to_param}, session: valid_session
      }.to change(SushiRoll, :count).by(-1)
    end

    it "redirects to the sushi_rolls list" do
      sushi_roll = SushiRoll.create! valid_attributes
      delete :destroy, params: {id: sushi_roll.to_param}, session: valid_session
      expect(response).to redirect_to(sushi_rolls_url)
    end
  end

end
