require 'spec_helper'

describe "UserPages" do
  
  subject { page }
  
  describe "signup page" do
  	before { visit signup_path }

  	it { should have_selector('h1' , text: 'Sign up') }
  end
  
  #not create user when invalid information on signup page
  describe "signup" do
  	before { visit signup_path }
  	let(:submit) { "Sign up" }

  	describe " with invalid information " do
  		it "should not create a user" do
  			expect { click_button submit }.not_to change(User, :count)
  		end
      
       describe "after submission" do
        before { click_button submit }

        it { should have_content('error') }
      end
	
    end

  # create test information valid
  describe " with valid information " do
   before do
   	fill_in "Name", with: "MDSE67"
   	fill_in "Email", with: "MD_SE67@mail.com"
   	fill_in "Password", with: "12345678"
   	fill_in "Password Confirmation", with: "12345678"

  end  


  it "should create user" do
  	expect { click_button submit }.to change(User, :count).by(1)
  end
  end
end

end
