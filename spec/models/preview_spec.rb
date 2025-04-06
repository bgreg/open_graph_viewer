require "rails_helper"

RSpec.describe Preview, type: :model do
  describe "validations" do
    it { should validate_presence_of(:url) }

    context "url format" do
      it "allows valid http/https URLs" do
        valid_urls = ["http://example.com", "https://example.com/path?query=1"]

        valid_urls.each do |url|
          preview = Preview.new(url: url)
          expect(preview).to be_valid
        end
      end

      it "rejects invalid URLs" do
        invalid_urls = ["not-a-url", "ftp://example.com", "javascript:alert(1)"]

        invalid_urls.each do |url|
          preview = Preview.new(url: url)
          expect(preview).not_to be_valid
        end
      end
    end
  end

  describe "associations" do
    it { should belong_to(:user).optional }
  end
end
