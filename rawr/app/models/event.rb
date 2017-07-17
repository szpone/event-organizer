# == Schema Information
#
# Table name: events
#
#  id         :integer          not null, primary key
#  name       :string
#  start_date :date
#  end_date   :date
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class Event < ApplicationRecord
  def duration_in_days
    (end_date - start_date).to_i
  end
end
