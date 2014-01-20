require 'spec_helper'

describe ChargesController do
  render_views
  describe "GET index" do

    it "renders the index template" do
      get :index
      expect(response).to render_template("index")
    end

    it "has a 200 status code" do
      get :index
      expect(response.status).to eq(200)
    end

    it "has failed, successful, and disputed charge sections" do
      get :index
      expect(response.body).to match /Failed Charges/
      expect(response.body).to match /Disputed Charges/
      expect(response.body).to match /Successful Charges/
    end

    it "renders the proper table headings" do
      get :index
      expect(response.body).to match /Cust Name/
      expect(response.body).to match /Amount/
      expect(response.body).to match /Date Failed/
      expect(response.body).to match /Date Disputed/
      expect(response.body).to match "<th>Date</th>"
    end


  end

end
