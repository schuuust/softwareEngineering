require "rails_helper"



RSpec.describe PostsController, type: :controller do
  login_user

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

#  context "POST #create" do
 #     it "creates a new Post" do
  #      get :create, params: { title: "Test", description: "Tester" }
   #     #expect(response.content_type).to eq "text/html"
    #    post.save
     #   expect(response.content_type).to eq "text/html"
     
     # end

      #it 'redirects to the created post' do
       # get :format
        #expect(response.content_type).to eq "text/html"
      #end

    

    #context "when valid" do
     # let!(:post) { Post.create(title: "Test title", description: "Test description") }
      #it "returns a success response" do
       # post :create, params: { id:post }
        #expect(response.content_type).to eq "text/html"
        #end
    #end
    
  #end

  #functional
  #context "DELETE #destroy" do
  #let!(:post) { Post.create(title: "Test title", description: "Test description") }
  #it "returns a success response" do
  #  get :destroy, params: { id: post }
  #  expect(response.content_type).to eq "text/html"
  #end
#end

#describe "PATCH #update" do
 # before :each do
  #  get :patch, :post.save
  #end
  #let!(:post) { Post.create(title: "Test title", description: "Test description") }
  
   # it "returns a success response" do
    #    get :update, params: { id: post }
     #   expect(response.content_type).to eq "text/html"
  #end
  
#end
  
  
end

