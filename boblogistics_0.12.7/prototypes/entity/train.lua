function rolling_stock_front_light()
  return
  {
    {
      type = "oriented",
      minimum_darkness = 0.3,
      picture =
      {
        filename = "__core__/graphics/light-cone.png",
        priority = "medium",
        scale = 2,
        width = 200,
        height = 200
      },
      shift = {-0.6, -16},
      size = 2,
      intensity = 0.6
    },
    {
      type = "oriented",
      minimum_darkness = 0.3,
      picture =
      {
        filename = "__core__/graphics/light-cone.png",
        priority = "medium",
        scale = 2,
        width = 200,
        height = 200
      },
      shift = {0.6, -16},
      size = 2,
      intensity = 0.6
    }
  }
end

function rolling_stock_stop_trigger()
  return
  {
    -- left side
    {
      type = "create-smoke",
      repeat_count = 125,
      entity_name = "smoke-train-stop",
      initial_height = 0,
      -- smoke goes to the left
      speed = {-0.03, 0},
      speed_multiplier = 0.75,
      speed_multiplier_deviation = 1.1,
      offset_deviation = {{-0.75, -2.7}, {-0.3, 2.7}}
    },
    -- right side
    {
      type = "create-smoke",
      repeat_count = 125,
      entity_name = "smoke-train-stop",
      initial_height = 0,
      -- smoke goes to the right
      speed = {0.03, 0},
      speed_multiplier = 0.75,
      speed_multiplier_deviation = 1.1,
      offset_deviation = {{0.3, -2.7}, {0.75, 2.7}}
    },
    {
      type = "play-sound",
      sound =
      {
        {
          filename = "__base__/sound/train-breaks.ogg",
          volume = 0.6
        },
      }
    },
  }
end

function rolling_stock_resistances()
  return
  {
    {
      type = "fire",
      decrease = 15,
      percent = 50
    },
    {
      type = "physical",
      decrease = 15,
      percent = 30
    },
    {
      type = "impact",
      decrease = 50,
      percent = 60
    },
    {
      type = "explosion",
      decrease = 15,
      percent = 30
    },
    {
      type = "acid",
      decrease = 10,
      percent = 20
    }
  }
end

function rolling_stock_armor_resistances()
  return
  {
    {
      type = "fire",
      decrease = 25,
      percent = 75
    },
    {
      type = "physical",
      decrease = 25,
      percent = 50
    },
    {
      type = "impact",
      decrease = 75,
      percent = 90
    },
    {
      type = "explosion",
      decrease = 25,
      percent = 50
    },
    {
      type = "acid",
      decrease = 20,
      percent = 30
    }
  }
end


data:extend(
{
  {
    type = "locomotive",
    name = "diesel-locomotive-2",
    icon = "__base__/graphics/icons/diesel-locomotive.png",
    flags = {"placeable-neutral", "player-creation", "placeable-off-grid", "not-on-map"},
    minable = {mining_time = 1, result = "diesel-locomotive-2"},
    max_health = 1350,
    corpse = "medium-remnants",
    dying_explosion = "medium-explosion",
    collision_box = {{-0.6, -2.6}, {0.6, 2.6}},
    selection_box = {{-0.85, -2.6}, {0.9, 2.5}},
    drawing_box = {{-1, -4}, {1, 3}},
    weight = 2000,
    max_speed = 1.7,
    max_power = "900kW",
    braking_force = 15,
    friction_force = 0.001,
    -- this is a percentage of current speed that will be subtracted
    air_resistance = 0.0015,
    connection_distance = 3.3,
    joint_distance = 4.6,
    energy_per_hit_point = 5,
    rail_category = "regular",
    drive_over_tie_trigger = drive_over_tie(),
    tie_distance = 50,
    crash_trigger = crash_trigger(),
    open_sound = { filename = "__base__/sound/car-door-open.ogg", volume=0.7 },
    close_sound = { filename = "__base__/sound/car-door-close.ogg", volume = 0.7 },
    sound_minimum_speed = 0.5,
    resistances = rolling_stock_resistances(),
    energy_source =
    {
      type = "burner",
      effectivity = 1.2,
      fuel_inventory_size = 4,
      smoke =
      {
        {
          name = "smoke",
          deviation = {0.1, 0.1},
          frequency = 210,
          position = {0, 0},
          slow_down_factor = 3,
          starting_frame = 1,
          starting_frame_deviation = 5,
          starting_frame_speed = 0,
          starting_frame_speed_deviation = 5,
          height = 2,
          height_deviation = 0.2,
          starting_vertical_speed = 0.2,
          starting_vertical_speed_deviation = 0.06,
        }
      }
    },
    front_light = rolling_stock_front_light(),
    back_light = rolling_stock_back_light(),
    stand_by_light = rolling_stock_stand_by_light(),
    pictures =
    {
      priority = "very-low",
      width = 346,
      height = 248,
      axially_symmetrical = false,
      direction_count = 256,
      filenames =
      {
        "__base__/graphics/entity/diesel-locomotive/diesel-locomotive-01.png",
        "__base__/graphics/entity/diesel-locomotive/diesel-locomotive-02.png",
        "__base__/graphics/entity/diesel-locomotive/diesel-locomotive-03.png",
        "__base__/graphics/entity/diesel-locomotive/diesel-locomotive-04.png",
        "__base__/graphics/entity/diesel-locomotive/diesel-locomotive-05.png",
        "__base__/graphics/entity/diesel-locomotive/diesel-locomotive-06.png",
        "__base__/graphics/entity/diesel-locomotive/diesel-locomotive-07.png",
        "__base__/graphics/entity/diesel-locomotive/diesel-locomotive-08.png"
      },
      line_length = 4,
      lines_per_file = 8,
      shift = {0.9, -0.45}
    },
    stop_trigger = rolling_stock_stop_trigger(),
    working_sound =
    {
      sound =
      {
        filename = "__base__/sound/train-engine.ogg",
        volume = 0.4
      },
      match_speed_to_activity = true,
    },
  },

  {
    type = "locomotive",
    name = "diesel-locomotive-3",
    icon = "__base__/graphics/icons/diesel-locomotive.png",
    flags = {"placeable-neutral", "player-creation", "placeable-off-grid", "not-on-map"},
    minable = {mining_time = 1, result = "diesel-locomotive-3"},
    max_health = 1700,
    corpse = "medium-remnants",
    dying_explosion = "medium-explosion",
    collision_box = {{-0.6, -2.6}, {0.6, 2.6}},
    selection_box = {{-0.85, -2.6}, {0.9, 2.5}},
    drawing_box = {{-1, -4}, {1, 3}},
    weight = 2000,
    max_speed = 2,
    max_power = "1200kW",
    braking_force = 20,
    friction_force = 0.0005,
    -- this is a percentage of current speed that will be subtracted
    air_resistance = 0.001,
    connection_distance = 3.3,
    joint_distance = 4.6,
    energy_per_hit_point = 5,
    rail_category = "regular",
    drive_over_tie_trigger = drive_over_tie(),
    tie_distance = 50,
    crash_trigger = crash_trigger(),
    open_sound = { filename = "__base__/sound/car-door-open.ogg", volume=0.7 },
    close_sound = { filename = "__base__/sound/car-door-close.ogg", volume = 0.7 },
    sound_minimum_speed = 0.5,
    resistances = rolling_stock_resistances(),
    energy_source =
    {
      type = "burner",
      effectivity = 1.4,
      fuel_inventory_size = 5,
      smoke =
      {
        {
          name = "smoke",
          deviation = {0.1, 0.1},
          frequency = 210,
          position = {0, 0},
          slow_down_factor = 3,
          starting_frame = 1,
          starting_frame_deviation = 5,
          starting_frame_speed = 0,
          starting_frame_speed_deviation = 5,
          height = 2,
          height_deviation = 0.2,
          starting_vertical_speed = 0.2,
          starting_vertical_speed_deviation = 0.06,
        }
      }
    },
    front_light = rolling_stock_front_light(),
    back_light = rolling_stock_back_light(),
    stand_by_light = rolling_stock_stand_by_light(),
    pictures =
    {
      priority = "very-low",
      width = 346,
      height = 248,
      axially_symmetrical = false,
      direction_count = 256,
      filenames =
      {
        "__base__/graphics/entity/diesel-locomotive/diesel-locomotive-01.png",
        "__base__/graphics/entity/diesel-locomotive/diesel-locomotive-02.png",
        "__base__/graphics/entity/diesel-locomotive/diesel-locomotive-03.png",
        "__base__/graphics/entity/diesel-locomotive/diesel-locomotive-04.png",
        "__base__/graphics/entity/diesel-locomotive/diesel-locomotive-05.png",
        "__base__/graphics/entity/diesel-locomotive/diesel-locomotive-06.png",
        "__base__/graphics/entity/diesel-locomotive/diesel-locomotive-07.png",
        "__base__/graphics/entity/diesel-locomotive/diesel-locomotive-08.png"
      },
      line_length = 4,
      lines_per_file = 8,
      shift = {0.9, -0.45}
    },
    stop_trigger = rolling_stock_stop_trigger(),
    working_sound =
    {
      sound =
      {
        filename = "__base__/sound/train-engine.ogg",
        volume = 0.4
      },
      match_speed_to_activity = true,
    },
  },
}
)



data.raw["cargo-wagon"]["cargo-wagon"].resistances = rolling_stock_resistances()

data:extend(
{
  {
    type = "cargo-wagon",
    name = "cargo-wagon-2",
    icon = "__base__/graphics/icons/cargo-wagon.png",
    flags = {"placeable-neutral", "player-creation", "placeable-off-grid", "not-on-map"},
    inventory_size = 45,
    minable = {mining_time = 1, result = "cargo-wagon-2"},
    max_health = 800,
    corpse = "medium-remnants",
    dying_explosion = "medium-explosion",
    collision_box = {{-0.6, -2.4}, {0.6, 2.4}},
    selection_box = {{-0.7, -2.5}, {1, 2.5}},
    weight = 1500,
    max_speed = 2.5,
    braking_force = 4,
    friction_force = 0.0010,
    air_resistance = 0.0015,
    connection_distance = 3.3,
    joint_distance = 4,
    energy_per_hit_point = 5,
    back_light = rolling_stock_back_light(),
    stand_by_light = rolling_stock_stand_by_light(),
    rail_category = "regular",
    drive_over_tie_trigger = drive_over_tie(),
    tie_distance = 50,
    crash_trigger = crash_trigger(),
    open_sound = { filename = "__base__/sound/machine-open.ogg", volume = 0.85 },
    close_sound = { filename = "__base__/sound/machine-close.ogg", volume = 0.75 },
    sound_minimum_speed = 0.5,
    resistances = rolling_stock_resistances(),
    pictures =
    {
      priority = "very-low",
      width = 285,
      height = 218,
      axially_symmetrical = false,
      back_equals_front = true,
      direction_count = 128,
      filenames =
      {
        "__base__/graphics/entity/cargo-wagon/cargo-wagon-spritesheet-1.png",
        "__base__/graphics/entity/cargo-wagon/cargo-wagon-spritesheet-2.png",
        "__base__/graphics/entity/cargo-wagon/cargo-wagon-spritesheet-3.png",
        "__base__/graphics/entity/cargo-wagon/cargo-wagon-spritesheet-4.png"
      },
      line_length = 4,
      lines_per_file = 8,
      shift = {0.7, -0.45}
    },
    working_sound =
    {
      sound =
      {
        filename = "__base__/sound/train-wheels.ogg",
        volume = 0.5
      },
      match_volume_to_activity = true,
    },
  },

  {
    type = "cargo-wagon",
    name = "cargo-wagon-3",
    icon = "__base__/graphics/icons/cargo-wagon.png",
    flags = {"placeable-neutral", "player-creation", "placeable-off-grid", "not-on-map"},
    inventory_size = 60,
    minable = {mining_time = 1, result = "cargo-wagon-3"},
    max_health = 1000,
    corpse = "medium-remnants",
    dying_explosion = "medium-explosion",
    collision_box = {{-0.6, -2.4}, {0.6, 2.4}},
    selection_box = {{-0.7, -2.5}, {1, 2.5}},
    weight = 2000,
    max_speed = 3.5,
    braking_force = 5,
    friction_force = 0.0005,
    air_resistance = 0.001,
    connection_distance = 3.3,
    joint_distance = 4,
    energy_per_hit_point = 5,
    back_light = rolling_stock_back_light(),
    stand_by_light = rolling_stock_stand_by_light(),
    rail_category = "regular",
    drive_over_tie_trigger = drive_over_tie(),
    tie_distance = 50,
    crash_trigger = crash_trigger(),
    open_sound = { filename = "__base__/sound/machine-open.ogg", volume = 0.85 },
    close_sound = { filename = "__base__/sound/machine-close.ogg", volume = 0.75 },
    sound_minimum_speed = 0.5,
    resistances = rolling_stock_resistances(),
    pictures =
    {
      priority = "very-low",
      width = 285,
      height = 218,
      axially_symmetrical = false,
      back_equals_front = true,
      direction_count = 128,
      filenames =
      {
        "__base__/graphics/entity/cargo-wagon/cargo-wagon-spritesheet-1.png",
        "__base__/graphics/entity/cargo-wagon/cargo-wagon-spritesheet-2.png",
        "__base__/graphics/entity/cargo-wagon/cargo-wagon-spritesheet-3.png",
        "__base__/graphics/entity/cargo-wagon/cargo-wagon-spritesheet-4.png"
      },
      line_length = 4,
      lines_per_file = 8,
      shift = {0.7, -0.45}
    },
    working_sound =
    {
      sound =
      {
        filename = "__base__/sound/train-wheels.ogg",
        volume = 0.5
      },
      match_volume_to_activity = true,
    },
  },
}
)



data:extend(
{
  {
    type = "locomotive",
    name = "armoured-diesel-locomotive",
    icon = "__base__/graphics/icons/diesel-locomotive.png",
    flags = {"placeable-neutral", "player-creation", "placeable-off-grid", "not-on-map"},
    minable = {mining_time = 1, result = "armoured-diesel-locomotive"},
    max_health = 5000,
    corpse = "medium-remnants",
    dying_explosion = "medium-explosion",
    collision_box = {{-0.6, -2.6}, {0.6, 2.6}},
    selection_box = {{-0.85, -2.6}, {0.9, 2.5}},
    drawing_box = {{-1, -4}, {1, 3}},
    weight = 4000,
    max_speed = 1,
    max_power = "600kW",
    braking_force = 10,
    friction_force = 0.0015,
    -- this is a percentage of current speed that will be subtracted
    air_resistance = 0.002,
    connection_distance = 3.3,
    joint_distance = 4.6,
    energy_per_hit_point = 5,
    rail_category = "regular",
    drive_over_tie_trigger = drive_over_tie(),
    tie_distance = 50,
    crash_trigger = crash_trigger(),
    open_sound = { filename = "__base__/sound/car-door-open.ogg", volume=0.7 },
    close_sound = { filename = "__base__/sound/car-door-close.ogg", volume = 0.7 },
    sound_minimum_speed = 0.5,
    resistances = rolling_stock_armor_resistances(),
    energy_source =
    {
      type = "burner",
      effectivity = 1,
      fuel_inventory_size = 3,
      smoke =
      {
        {
          name = "smoke",
          deviation = {0.1, 0.1},
          frequency = 210,
          position = {0, 0},
          slow_down_factor = 3,
          starting_frame = 1,
          starting_frame_deviation = 5,
          starting_frame_speed = 0,
          starting_frame_speed_deviation = 5,
          height = 2,
          height_deviation = 0.2,
          starting_vertical_speed = 0.2,
          starting_vertical_speed_deviation = 0.06,
        }
      }
    },
    front_light = rolling_stock_front_light(),
    back_light = rolling_stock_back_light(),
    stand_by_light = rolling_stock_stand_by_light(),
    pictures =
    {
      priority = "very-low",
      width = 346,
      height = 248,
      axially_symmetrical = false,
      direction_count = 256,
      filenames =
      {
        "__base__/graphics/entity/diesel-locomotive/diesel-locomotive-01.png",
        "__base__/graphics/entity/diesel-locomotive/diesel-locomotive-02.png",
        "__base__/graphics/entity/diesel-locomotive/diesel-locomotive-03.png",
        "__base__/graphics/entity/diesel-locomotive/diesel-locomotive-04.png",
        "__base__/graphics/entity/diesel-locomotive/diesel-locomotive-05.png",
        "__base__/graphics/entity/diesel-locomotive/diesel-locomotive-06.png",
        "__base__/graphics/entity/diesel-locomotive/diesel-locomotive-07.png",
        "__base__/graphics/entity/diesel-locomotive/diesel-locomotive-08.png"
      },
      line_length = 4,
      lines_per_file = 8,
      shift = {0.9, -0.45}
    },
    stop_trigger = rolling_stock_stop_trigger(),
    working_sound =
    {
      sound =
      {
        filename = "__base__/sound/train-engine.ogg",
        volume = 0.4
      },
      match_speed_to_activity = true,
    },
  },


  {
    type = "cargo-wagon",
    name = "armoured-cargo-wagon",
    icon = "__base__/graphics/icons/cargo-wagon.png",
    flags = {"placeable-neutral", "player-creation", "placeable-off-grid", "not-on-map"},
    inventory_size = 30,
    minable = {mining_time = 1, result = "armoured-cargo-wagon"},
    max_health = 3000,
    corpse = "medium-remnants",
    dying_explosion = "medium-explosion",
    collision_box = {{-0.6, -2.4}, {0.6, 2.4}},
    selection_box = {{-0.7, -2.5}, {1, 2.5}},
    weight = 2000,
    max_speed = 1,
    braking_force = 3,
    friction_force = 0.0015,
    air_resistance = 0.002,
    connection_distance = 3.3,
    joint_distance = 4,
    energy_per_hit_point = 5,
    back_light = rolling_stock_back_light(),
    stand_by_light = rolling_stock_stand_by_light(),
    resistances = rolling_stock_armor_resistances(),
    pictures =
    {
      priority = "very-low",
      width = 285,
      height = 218,
      axially_symmetrical = false,
      back_equals_front = true,
      direction_count = 128,
      filenames =
      {
        "__base__/graphics/entity/cargo-wagon/cargo-wagon-spritesheet-1.png",
        "__base__/graphics/entity/cargo-wagon/cargo-wagon-spritesheet-2.png",
        "__base__/graphics/entity/cargo-wagon/cargo-wagon-spritesheet-3.png",
        "__base__/graphics/entity/cargo-wagon/cargo-wagon-spritesheet-4.png"
      },
      line_length = 4,
      lines_per_file = 8,
      shift={0.7, -0.45}
    },
    rail_category = "regular",
    drive_over_tie_trigger = drive_over_tie(),
    tie_distance = 50,
    working_sound =
    {
      sound =
      {
        filename = "__base__/sound/train-wheels.ogg",
        volume = 0.5
      },
      match_volume_to_activity = true,
    },
    crash_trigger = crash_trigger(),
    open_sound = { filename = "__base__/sound/machine-open.ogg", volume = 0.85 },
    close_sound = { filename = "__base__/sound/machine-close.ogg", volume = 0.75 },
    sound_minimum_speed = 0.5;
  },
}
)


