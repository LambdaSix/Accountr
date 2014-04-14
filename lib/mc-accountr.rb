require_relative 'Accountr/version'
require 'rest_client'
require 'json'

class MinecraftResponse
  attr_accessor :id
  attr_accessor :name
  attr_accessor :legacy

  def initialize(id, name, legacy)
    self.id = id
    self.name = name
    self.legacy = legacy
  end

  def legacy?
    self.legacy
  end
end

class Accountr
  def find_profiles(names)
    res = RestClient.post 'https://api.mojang.com/profiles/minecraft',
                             names.to_a.to_json,
                             :content_type => :json,
                             :accept => :json

    result = JSON.parse res

    accs = Array.new
    result.each do |e|
      accs << MinecraftResponse.new(e['id'], e['name'], e['legacy'] || false)
    end
    accs
  end
end
