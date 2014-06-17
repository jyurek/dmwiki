require "spec_helper"

describe PagesController do
  context "on GET to show" do
    it "renders a page from markdown" do
      get :show, name: "foo"
      expect(assigns(:body)).to eq %{<h1 id="hello">hello</h1>\n}
    end
  end
end
