require 'spec_helper'

describe Comment do
  before { @comment = Comment.new(comment: "Comment") }


  it { should respond_to(:comment) }

  describe "when comment is not present" do
    before { @comment.comment = "" }
    it { should_not be_valid  }
  end
end