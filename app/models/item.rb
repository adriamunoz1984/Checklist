class Item < ActiveRecord::Base
  belongs_to :user

  def completed?
    !completed_at.blank?
  end

  def expired?
    remaining = (created_at - 7.days.ago).ceil

    if remaining < 0
      true
    else
      false
    end
  end
end
