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

describe ReportsController do

  # This should return the minimal set of attributes required to create a valid
  # Report. As you add validations to Report, be sure to
  # update the return value of this method accordingly.
  def valid_attributes
    {}
  end
 
  describe "GET index" do
    it "assigns all reports as @reports" do
      report = Report.create! valid_attributes
      get :index
      assigns(:reports).should eq([report])
    end
  end

  describe "GET show" do
    it "assigns the requested report as @report" do
      report = Report.create! valid_attributes
      get :show, :id => report.id.to_s
      assigns(:report).should eq(report)
    end
  end

  describe "GET new" do
    it "assigns a new report as @report" do
      get :new
      assigns(:report).should be_a_new(Report)
    end
  end

  describe "GET edit" do
    it "assigns the requested report as @report" do
      report = Report.create! valid_attributes
      get :edit, :id => report.id.to_s
      assigns(:report).should eq(report)
    end
  end

  describe "POST create" do
    describe "with valid params" do
      it "creates a new Report" do
        expect {
          post :create, :report => valid_attributes
        }.to change(Report, :count).by(1)
      end

      it "assigns a newly created report as @report" do
        post :create, :report => valid_attributes
        assigns(:report).should be_a(Report)
        assigns(:report).should be_persisted
      end

      it "redirects to the created report" do
        post :create, :report => valid_attributes
        response.should redirect_to(Report.last)
      end
    end

    describe "with invalid params" do
      it "assigns a newly created but unsaved report as @report" do
        # Trigger the behavior that occurs when invalid params are submitted
        Report.any_instance.stub(:save).and_return(false)
        post :create, :report => {}
        assigns(:report).should be_a_new(Report)
      end

      it "re-renders the 'new' template" do
        # Trigger the behavior that occurs when invalid params are submitted
        Report.any_instance.stub(:save).and_return(false)
        post :create, :report => {}
        response.should render_template("new")
      end
    end
  end

  describe "PUT update" do
    describe "with valid params" do
      it "updates the requested report" do
        report = Report.create! valid_attributes
        # Assuming there are no other reports in the database, this
        # specifies that the Report created on the previous line
        # receives the :update_attributes message with whatever params are
        # submitted in the request.
        Report.any_instance.should_receive(:update_attributes).with({'these' => 'params'})
        put :update, :id => report.id, :report => {'these' => 'params'}
      end

      it "assigns the requested report as @report" do
        report = Report.create! valid_attributes
        put :update, :id => report.id, :report => valid_attributes
        assigns(:report).should eq(report)
      end

      it "redirects to the report" do
        report = Report.create! valid_attributes
        put :update, :id => report.id, :report => valid_attributes
        response.should redirect_to(report)
      end
    end

    describe "with invalid params" do
      it "assigns the report as @report" do
        report = Report.create! valid_attributes
        # Trigger the behavior that occurs when invalid params are submitted
        Report.any_instance.stub(:save).and_return(false)
        put :update, :id => report.id.to_s, :report => {}
        assigns(:report).should eq(report)
      end

      it "re-renders the 'edit' template" do
        report = Report.create! valid_attributes
        # Trigger the behavior that occurs when invalid params are submitted
        Report.any_instance.stub(:save).and_return(false)
        put :update, :id => report.id.to_s, :report => {}
        response.should render_template("edit")
      end
    end
  end

  describe "DELETE destroy" do
    it "destroys the requested report" do
      report = Report.create! valid_attributes
      expect {
        delete :destroy, :id => report.id.to_s
      }.to change(Report, :count).by(-1)
    end

    it "redirects to the reports list" do
      report = Report.create! valid_attributes
      delete :destroy, :id => report.id.to_s
      response.should redirect_to(reports_url)
    end
  end

end
