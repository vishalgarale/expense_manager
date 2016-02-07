module Dateable
  def self.parse_date(str)
    begin
      Date.parse(str)
    rescue ArgumentError
      false
    end
  end

  module ClassMethods

  end

  module InstanceMethods

  end

  def self.included(receiver)
    receiver.extend         ClassMethods
    receiver.send :include, InstanceMethods
  end
end
