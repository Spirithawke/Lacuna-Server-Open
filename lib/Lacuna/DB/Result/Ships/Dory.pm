package Lacuna::DB::Result::Ships::Dory;

use Moose;
use utf8;
no warnings qw(uninitialized);
extends 'Lacuna::DB::Result::Ships';

use constant prereq                 => { class=> 'Lacuna::DB::Result::Building::Trade',  level => 1 };
use constant base_food_cost         => 350;
use constant base_water_cost        => 700;
use constant base_energy_cost       => 3250;
use constant base_ore_cost          => 5500;
use constant base_time_cost         => 3800;
use constant base_waste_cost        => 400;
use constant base_speed             => 1200;
use constant base_stealth           => 4100;
use constant base_hold_size         => 343;
use constant pilotable              => 1;
use constant build_tags             => [qw(Trade Mining Intelligence)];

with "Lacuna::Role::Ship::Send::UsePush";
with "Lacuna::Role::Ship::Arrive::CaptureWithSpies";
with "Lacuna::Role::Ship::Arrive::CargoExchange";
with "Lacuna::Role::Ship::Arrive::PickUpSpies";

no Moose;
__PACKAGE__->meta->make_immutable(inline_constructor => 0);
