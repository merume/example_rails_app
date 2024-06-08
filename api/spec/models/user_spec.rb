require 'rails_helper'

RSpec.describe User do
  let!(:user) { create(:user, first_name: "Suzuki", last_name: "Jiro") }

  describe "User#full_name" do
    it '"first_name last_name"が返ってくる' do
      expect(user.full_name).to eq "#{user.first_name} #{user.last_name}"
    end
  end
end
