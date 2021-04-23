require "rails_helper"

RSpec.describe PostsController, type: :controller do
  context "GET #index" do
    it "returns a success response" do
      get :index
      # expect(response.success).to eq(true)
      expect(response).to be_success
    end
  end

  context "GET #show" do
    let!(:post) { Post.create(title: "Test title", description: "Test description") }
    it "returns a success response" do
      get :show, params: { id: post }
      expect(response).to be_success
    end
  end

  context "GET #new" do
    it "returns a successful response" do
      get :new
      expect(response).to be_success
    end
  end

  context "POST #create" do
    let!(:post) { Post.create(title: "Test title", description: "Test description") }
    it "returns a success response" do
      get :create, params: { id: post }
      expect(response.content_type).to eq "text/html"
    end
  end

  #functinal
  context "DELETE #destroy" do
  let!(:post) { Post.create(title: "Test title", description: "Test description") }
  it "returns a success response" do
    get :destroy, params: { id: post }
    expect(response.content_type).to eq "text/html"
  end
end
  
  
end

