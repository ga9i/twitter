# == Schema Information
#
# Table name: tweets
#
#  id         :integer          not null, primary key
#  message    :string(255)
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class Tweet < ActiveRecord::Base
  attr_accessible :message
  default_scope order("created_at desc")
  scope:today,where("created_at >  ? and created_at <?", Date.yesterday, Date.tomorrow)
  #scope:between, lambda {|start_date, end_date| where("created_at >= ? and created_at<=?", start_date, end_date)}
  def self.between(start_date,end_date)
  where("created_at >= ? and created_at<=?", start_date, end_date)
 end
end
