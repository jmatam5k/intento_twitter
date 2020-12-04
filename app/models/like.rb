class Like < ApplicationRecord
  belongs_to :user
  belongs_to :tweeeet

  def add_like
    tweeeet.update(total_likes: tweeeet.total_likes += 1)
  end

  def delete_like
    tweeeet.update(total_likes: tweeeet.total_likes -= 1)
  end
end
