package Lacuna::DB::Building::GasGiantLab;

use Moose;
extends 'Lacuna::DB::Building';

has '+image' => ( 
    default => 'gas-giant-lab', 
);

has '+name' => (
    default => 'Gas Giant Lab',
);

has '+food_to_build' => (
    default => -250,
);

has '+energy_to_build' => (
    default => -500,
);

has '+ore_to_build' => (
    default => -500,
);

has '+water_to_build' => (
    default => -100,
);

has '+waste_to_build' => (
    default => 250,
);

has '+time_to_build' => (
    default => 900,
);

has '+food_production' => (
    default => -50,
);

has '+energy_production' => (
    default => -50,
);

has '+ore_production' => (
    default => -50,
);

has '+water_production' => (
    default => -50,
);

has '+waste_production' => (
    default => 100,
);


no Moose;
__PACKAGE__->meta->make_immutable;
