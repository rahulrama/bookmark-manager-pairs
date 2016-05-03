class Link
  include DataMapper::Resource

  property :id,     Serial
  property :name,   String
  property :link,   String
  property :tag,    String
  def name
    
  end
end
