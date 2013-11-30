require 'spec_helper'

describe "Authentication" do

  subject { page }

  describe "login page" do
    before { visit root_path }
    it { should have_content('Email') }
  end


  describe "allows a participant to login to their account" do
    let(:participant) { FactoryGirl.create(:participant) }
    before do
      visit root_path
      fill_in "Email",    with: participant.email
      fill_in "Password", with: participant.password
      click_button "Login"
    end
    it { should have_content('Welcome') }
  end

  describe "allows a coordinator to login to their account" do
    let(:coordinator) { FactoryGirl.create(:coordinator) }
    before do
      visit root_path
      fill_in "Email",    with: coordinator.email
      fill_in "Password", with: coordinator.password
      click_button "Login"
    end
    it { should have_content('Welcome') }
  end
end
