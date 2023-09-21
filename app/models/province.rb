class Province < ApplicationRecord
    validates :name, presence: true, length: { maximum: 50 }
    validates :chef_lieu, presence: true, length: { maximum: 50 }
    validates :langues, presence: true
    validates :superficie, presence: true, length: { maximum: 20 }
    validates :territoires, presence: true
    validate :valid_map_url
  
    private
  
    def valid_map_url
      if map.present? && !valid_url?(map)
        errors.add(:map, "must be a valid URL")
      end
    end
  
    def valid_url?(url)
      url = URI.parse(url)
      url.is_a?(URI::HTTP) && !url.host.nil?
    rescue URI::InvalidURIError
      false
    end
  
end
