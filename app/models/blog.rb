class Blog < ApplicationRecord
	validates :title, presence: true,
						length: {minimum: 5}
	validates :body, presence: true
	validates :created_by, presence: true
	validates :quote_text, presence: true,
							length: {minimum: 5}
end
