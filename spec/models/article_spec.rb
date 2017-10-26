require "rails_helper"

describe Article do
  describe "validations" do
      it {should validate_presence_of :title}
      it {should validate_presence_of :text}
  end

  describe "associations" do
    it { should have_many :comments }
  end

  describe "#subject" do
    it "returns the article title" do
      #создаем объект article хитрым способом
      article = create(:article, title: 'lorem ips')

      # assert, проверка
      expect(article.subject). to eq 'lorem ips'
    end
  end

  describe "#last_comment" do
    it "returns the last comment" do
    end
  end
end