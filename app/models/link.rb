require 'data_mapper'
require 'dm-postgres-adapter'


class Link
  include DataMapper::Resource

  property :id,     Serial
  property :title,  String
  property :url,    String
  property :tag,    String

end

DataMapper::Logger.new($stdout, :debug)
DataMapper.setup(:default, "postgres://localhost/bookmark_manager_test" )#ENV['POSTGRES_TEST_ENV'] thats the best way but i dont remember how to do it
DataMapper.finalize
DataMapper.auto_upgrade!
