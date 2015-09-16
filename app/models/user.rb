class User < ActiveRecord::Base

  def all_name

    list = User.all
      list.map do |list|
     "#{list.first_name} #{list.last_name} age: #{list.age}"
      end
  end


  def full_name
    "#{first_name} #{last_name}"
  end

  def last_first
    "#{last_name} #{first_name}"
  end
end
