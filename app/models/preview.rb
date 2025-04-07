class Preview < ApplicationRecord
  validates :url, presence: true, format: URI::DEFAULT_PARSER.make_regexp(%w[http https])
  belongs_to :user, optional: true

  def self.build_with(url, user)
    og = OpenGraph.new(url.squish)
    new(
      title: og.title,
      og_type: og.type,
      url: og.url,
      image: og.images.first,
      user: user
    )
  end
end
