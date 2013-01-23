require 'spec_helper'

describe Post do
 before { @post = Post.new(title: "title" , body: "body") }

  it { should respond_to(:title) }
  it { should respond_to(:body) }

  describe "when title is not present" do
    before { @post.title = "" }
    it { should_not be_valid  }
  end

  describe "when body is not present" do
    before { @post.body = "" }
    it { should_not be_valid  }
  end
  
end

