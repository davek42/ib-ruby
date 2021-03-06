require 'spec_helper'

# This spec was generated by rspec-rails when you ran the scaffold generator.
# It demonstrates how one might use RSpec to specify the controller code that
# was generated by Rails when you ran the scaffold generator.
#
# It assumes that the implementation code is generated by the rails scaffold
# generator.  If you are using any extension libraries to generate different
# controller code, this generated spec may or may not pass.
#
# It only uses APIs available in rails and/or rspec-rails.  There are a number
# of tools you can use to make these specs even more expressive, but we're
# sticking to rails and rspec-rails APIs to keep things simple and stable.
#
# Compared to earlier versions of this generator, there is very limited use of
# stubs and message expectations in this spec.  Stubs are only used when there
# is no simpler way to get a handle on the object needed for the example.
# Message expectations are only used when there is no simpler way to specify
# that an instance is receiving a specific message.

describe Ib::ComboLegsController, :type => :controller do

  # This should return the minimal set of attributes required to create a valid
  # Ib::ComboLeg. As you add validations to Ib::ComboLeg, be sure to
  # update the return value of this method accordingly.
  def valid_attributes
    {:con_id => 81032967,
     :ratio => 2,
     :side => :buy,
     :exchange => 'CBOE',
     :open_close => :close,
     :short_sale_slot => 1, #:broker, Why is it failing with Symbol?
     :designated_location => '',
     :exempt_code => -1}
  end

  # This should return the minimal set of values that should be in the session
  # in order to pass any filters (e.g. authentication) defined in
  # Ib::ComboLegsController. Be sure to keep this updated too.
  def valid_session
    {}
  end

  describe "GET index" do
    it "assigns all combo_legs as @combo_legs" do
      combo_leg = Ib::ComboLeg.create! valid_attributes
      get :index, { :use_route => true}, valid_session
      assigns(:combo_legs).should eq([combo_leg])
    end
  end

  describe "GET show" do
    it "assigns the requested combo_leg as @combo_leg" do
      combo_leg = Ib::ComboLeg.create! valid_attributes
      get :show, {:id => combo_leg.to_param, :use_route => true}, valid_session
      assigns(:combo_leg).should eq(combo_leg)
    end
  end

  describe "GET new" do
    it "assigns a new combo_leg as @combo_leg" do
      get :new, { :use_route => true}, valid_session
      assigns(:combo_leg).should be_a_new(Ib::ComboLeg)
    end
  end

  describe "GET edit" do
    it "assigns the requested combo_leg as @combo_leg" do
      combo_leg = Ib::ComboLeg.create! valid_attributes
      get :edit, {:id => combo_leg.to_param, :use_route => true}, valid_session
      assigns(:combo_leg).should eq(combo_leg)
    end
  end

  describe "POST create" do
    describe "with valid params" do
      it "creates a new Ib::ComboLeg" do
        expect {
          post :create, {:combo_leg => valid_attributes, :use_route => true}, valid_session
        }.to change(Ib::ComboLeg, :count).by(1)
      end

      it "assigns a newly created combo_leg as @combo_leg" do
        post :create, {:combo_leg => valid_attributes, :use_route => true}, valid_session
        assigns(:combo_leg).should be_a(Ib::ComboLeg)
        assigns(:combo_leg).should be_persisted
      end

      it "redirects to the created combo_leg" do
        post :create, {:combo_leg => valid_attributes, :use_route => true}, valid_session
        response.should redirect_to(Ib::ComboLeg.last)
      end
    end

    describe "with invalid params" do
      it "assigns a newly created but unsaved combo_leg as @combo_leg" do
        # Trigger the behavior that occurs when invalid params are submitted
        Ib::ComboLeg.any_instance.stub(:save).and_return(false)
        post :create, {:combo_leg => {}, :use_route => true}, valid_session
        assigns(:combo_leg).should be_a_new(Ib::ComboLeg)
      end

      it "re-renders the 'new' template" do
        # Trigger the behavior that occurs when invalid params are submitted
        Ib::ComboLeg.any_instance.stub(:save).and_return(false)
        post :create, {:combo_leg => {}, :use_route => true}, valid_session
        response.should render_template("new")
      end
    end
  end

  describe "PUT update" do
    describe "with valid params" do
      it "updates the requested combo_leg" do
        combo_leg = Ib::ComboLeg.create! valid_attributes
        # Assuming there are no other combo_legs in the database, this
        # specifies that the Ib::ComboLeg created on the previous line
        # receives the :update_attributes message with whatever params are
        # submitted in the request.
        Ib::ComboLeg.any_instance.should_receive(:update_attributes).with({'these' => 'params'})
        put :update, {:id => combo_leg.to_param, :combo_leg => {'these' => 'params'}, :use_route => true}, valid_session
      end

      it "assigns the requested combo_leg as @combo_leg" do
        combo_leg = Ib::ComboLeg.create! valid_attributes
        put :update, {:id => combo_leg.to_param, :combo_leg => valid_attributes, :use_route => true}, valid_session
        assigns(:combo_leg).should eq(combo_leg)
      end

      it "redirects to the combo_leg" do
        combo_leg = Ib::ComboLeg.create! valid_attributes
        put :update, {:id => combo_leg.to_param, :combo_leg => valid_attributes, :use_route => true}, valid_session
        response.should redirect_to(combo_leg)
      end
    end

    describe "with invalid params" do
      it "assigns the combo_leg as @combo_leg" do
        combo_leg = Ib::ComboLeg.create! valid_attributes
        # Trigger the behavior that occurs when invalid params are submitted
        Ib::ComboLeg.any_instance.stub(:save).and_return(false)
        put :update, {:id => combo_leg.to_param, :combo_leg => {}, :use_route => true}, valid_session
        assigns(:combo_leg).should eq(combo_leg)
      end

      it "re-renders the 'edit' template" do
        combo_leg = Ib::ComboLeg.create! valid_attributes
        # Trigger the behavior that occurs when invalid params are submitted
        Ib::ComboLeg.any_instance.stub(:save).and_return(false)
        put :update, {:id => combo_leg.to_param, :combo_leg => {}, :use_route => true}, valid_session
        response.should render_template("edit")
      end
    end
  end

  describe "DELETE destroy" do
    it "destroys the requested combo_leg" do
      combo_leg = Ib::ComboLeg.create! valid_attributes
      expect {
        delete :destroy, {:id => combo_leg.to_param, :use_route => true}, valid_session
      }.to change(Ib::ComboLeg, :count).by(-1)
    end

    it "redirects to the combo_legs list" do
      pending 'Something is wrong with RSpecs redirect_to matcher'
      combo_leg = Ib::ComboLeg.create! valid_attributes
      delete :destroy, {:id => combo_leg.to_param, :use_route => true}, valid_session
      response.should redirect_to(combo_legs_url)
    end
  end

end
