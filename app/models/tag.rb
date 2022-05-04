class Tag < ApplicationRecord
  has_many :taggings
  has_many :places, through: :taggings

  ICONS = {
    'bar': 'fa-check',
    'restruant': 'fa-food',
  }

  def icon_class
    ICONS[name]
  end
end
