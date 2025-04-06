class Preview < ApplicationRecord
  validates :url, presence: true,
    format: URI::DEFAULT_PARSER.make_regexp(%w[http https])

  belongs_to :user, optional: true
end
