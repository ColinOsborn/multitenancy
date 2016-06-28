class Store < ActiveRecord::Base
  has_many :items
  before_create :create_slug

  def create_slug
    self.slug = self.name.parameterize
    # inside an instance of store, self refers to store record itself
    # parameterize then puts these into the url-friendly-format like so
  end
end

# arguement about callbacks, changed default ActiveRecord behavoir
