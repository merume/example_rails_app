require 'rails_helper'

RSpec.describe "Api::V1::Authors", type: :request do
  describe "GET /api/v1/authors" do
    before do
      create(:author, :with_books)
      create(:author, :with_books)
    end

    it "returns a list of authors with their books" do
      get api_v1_authors_path

      expect(response).to have_http_status(:success)
      json = JSON.parse(response.body)
      expect(json.length).to eq(2)

      json.each do |author|
        expect(author).to have_key("id")
        expect(author).to have_key("name")
        expect(author).to have_key("books")

        author["books"].each do |book|
          expect(book).to have_key("id")
          expect(book).to have_key("title")
        end
      end
    end
  end
end