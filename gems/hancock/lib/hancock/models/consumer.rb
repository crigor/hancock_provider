module Hancock
  class Consumer < Model
    include DataMapper::Resource

    property :id,           Serial
    property :url,          String,  :required => true, :unique => true, :unique_index => true, :length => 2048
    property :label,        String,  :required => false
    property :internal,     Boolean, :required => false, :default => false

    def self.attributes_for_api
      %w(id url label internal)
    end

    def self.attributes_for_create
      %w(url label internal)
    end

    def self.params_for_create(params)
      params.reject { |key, value| !attributes_for_create.include?(key) }
    end

    def self.create_from_params(params)
      create(params_for_create(params))
    end

    def attributes_for_update
      self.class.attributes_for_create
    end

    def self.allowed?(host)
      !first(:url => host).nil?
    end

    def self.visible
      all(:internal => false).select do |c|
        c.label
      end
    end

    def self.internal
      all(:internal => true).select do |c|
        c.label
      end
    end
  end
end
