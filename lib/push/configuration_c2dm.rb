module Push
  class ConfigurationC2dm < Push::Configuration
    store :properties, accessors: [:auth_token]
    attr_accessible :app, :enabled, :connections, :auth_token
    validates :auth_token, :presence => true

    def name
      :c2dm
    end
  end
end
