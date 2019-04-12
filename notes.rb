@pirate = Pirate.new(params[:pirate])

    params[:pirate][:ships].each do |ships, details|
      Ship.new(details)
    end

    @ships = Ship.all
    end

    @pirate = Pirate.new(params[:pirate])

      Ship.new(params[:pirate][:ships][0])
      Ship.new(params[:pirate][:ships][1])
      end

      @ships = Ship.all


      <h1>Pirate</h1>
<div class="pirate">
  <h3>Pirate Name: <%= @pi %></h3>
  <h4>Pirate Height: <%= @pirate.height %></h4>
  <h4>Pirate Weight: <%= @pirate.weight %></h4>
  </div><br>


<h1>Ship_1</h1>
<div class="ship_1">
  <h3>Ship Name: <%= @ships.name %></h3>
  <h4>Ship Type: <%= @ships.type %></h4>
  <h4>Ship Booty: <%= @ships.booty %></h4>
  </div><br>
