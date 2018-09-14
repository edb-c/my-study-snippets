module Slugifiable

# Clean URLs

  module InstanceMethods
    def slug
      self.class == User ? username.downcase.gsub(" ", "-") : name.downcase.gsub(" ", "-")
    end
  end

  module ClassMethods
    def find_by_slug(slug)
      all.detect do |object|
        object.slug == slug
      end
    end
  end
end
