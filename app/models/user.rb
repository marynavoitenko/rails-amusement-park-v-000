class User < ActiveRecord::Base
  has_many :rides
  has_many :attractions, through: :rides

  has_secure_password

  def mood
    if self.nausea > self.happiness
      'sad'
    else
      'happy'
    end
  end

  def enough_tickets?(attraction)
    self.tickets >= attraction.tickets
  end

  def tall_enough?(attraction)
    self.height >= attraction.min_height
  end

end
