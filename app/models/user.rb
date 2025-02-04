class User < ActiveRecord::Base
  has_many :rides
  has_many :attractions, through: :rides

  has_secure_password

  def mood
    if nausea
      if nausea > happiness
        "sad"
      else
        "happy"
      end
    else
      "happy"
    end
  end
end
