What the params hash will look like:

params = {
  "pirate" => {
    "name" => "@name of pirate instance",
    "weight" => "@weight of pirate instance",
    "height" => "@height of pirate instance",
    "ships" => [
      {
        "name" => "@name of ship instance",
        "type" => "@type of ship instance",
        "booty" => "@booty of ship instance"
      },
      {
        "name" => "@name of another ship instance",
        "type" => "@type of another ship instance",
        "booty" => "@booty of another ship instance"
      }
    ]
  }
}

The "pirate" key of the params hash points to (and stores) a nested hash, which we refer to as pirate hash
In the pirate hash, the "ships" key points to (and stores) an array of hashes
Each hash element in this array contains information about 1 single ship instance,
Specifically, each hash (array element) contains info about the name, type and booty properties of the ship instance in key/value pairs.
Since the pirate has 2 ships, the ships array contains 2 hash elements, 1 for each ship
The attribute values of the pirate instance and the attribute values of the ship instances come from the corresponding data the user submitted in the form
