require 'spec_helper'

describe Question do
  describe "associations" do
    it { should belong_to(:participant)}
  end
end
