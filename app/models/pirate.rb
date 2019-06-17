class Pirate
  ATTRS = [:name, :height, :weight]
  attr_accessor(*ATTRS)

  @@all

  def self.all
    @@all
  end

  def initialize(params)
    # select the relevant params
    attrs_strings = ATTRS.collect {|attr| attr.to_s}

    params.each do |key, value|
      self.send("#{key}=", value) if attrs_strings.include?(key)
    end
    # name = params["name"]
    # weight = params["weight"]
    # height = params["height"]
  end
end
