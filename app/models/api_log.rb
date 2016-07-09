class ApiLog < ActiveRecord::Base

  def self.info(uri)
    ApiLog.create(uri: uri)
  end
end
