RECIPE {
    type = "recipe",
    name = "tar-extractor-mk04",
    energy_required = 5,
    enabled = false,
    ingredients = {
        {"tar-extractor-mk03", 1},
        {"nbfe-alloy", 30},
        {"concrete", 35},
        {"low-density-structure", 30},
        {"small-parts-03", 40},
        {"electric-engine-unit", 5},
    },
    results = {
        {"tar-extractor-mk04", 1}
    }
}:add_unlock("oil-machines-mk04")

ITEM {
    type = "item",
    name = "tar-extractor-mk04",
    icon = "__pypetroleumhandling__/graphics/icons/tar-extractor-mk04.png",
    icon_size = 32,
    flags = {},
    subgroup = "py-petroleum-handling-buildings-mk04",
    order = "a",
    place_result = "tar-extractor-mk04",
    stack_size = 10
}

ENTITY {
    type = "mining-drill",
    name = "tar-extractor-mk04",
    icon = "__pypetroleumhandling__/graphics/icons/tar-extractor-mk04.png",
    icon_size = 32,
    flags = {"placeable-neutral", "player-creation"},
    minable = {mining_time = 1, result = "tar-extractor-mk04"},
    fast_replaceable_group = "tar-extractor",
    max_health = 700,
    resource_categories = {"tar-patch"},
    corpse = "big-remnants",
    dying_explosion = "big-explosion",
    collision_box = {{-4.4, -4.4}, {4.4, 4.4}},
    selection_box = {{-4.5, -4.5}, {4.5, 4.5}},
    module_specification = {
        module_slots = 1
    },
    allowed_effects = {"consumption", "speed", "productivity", "pollution"},
    energy_source = {
        type = "electric",
        usage_priority = "secondary-input",
        emissions_per_minute = 20,
    },
    output_fluid_box =
    {
      base_area = 1,
      base_level = 1,
      pipe_covers = DATA.Pipes.covers(false, true, true, true),
      pipe_picture = DATA.Pipes.pictures("assembling-machine-2", nil, {0.0, -0.96}, nil, nil),
      pipe_connections =
      {
        {
          positions = { {-2, -5.0}, {5.0, -2}, {2, 5.0}, {-5.0, 2} }
        }
      }
    },
    energy_usage = "1200kW",
    mining_speed = 4,
    resource_searching_radius = 0.49,
    vector_to_place_result = {-2, -4.75},
    radius_visualisation_picture = {
        filename = "__base__/graphics/entity/electric-mining-drill/electric-mining-drill-radius-visualization.png",
        width = 12,
        height = 12
    },
    monitor_visualization_tint = {r=78, g=173, b=255},
    animations = {
        layers = {
            {
                filename = "__pypetroleumhandling__/graphics/entity/tar-extractor-mk04/mk04-a.png",
                width = 128,
                height = 329,
                line_length = 16,
                frame_count = 96,
                animation_speed = 0.12,
                shift = util.by_pixel(-80, -20)
            },
            {
                filename = "__pypetroleumhandling__/graphics/entity/tar-extractor-mk04/mk04-b.png",
                width = 128,
                height = 329,
                line_length = 16,
                frame_count = 96,
                animation_speed = 0.12,
                shift = util.by_pixel(48, -20)
            },
            {
                filename = "__pypetroleumhandling__/graphics/entity/tar-extractor-mk04/mk04-c.png",
                width = 41,
                height = 329,
                line_length = 16,
                frame_count = 96,
                animation_speed = 0.12,
                shift = util.by_pixel(132, -20)
            },
    },
},
    vehicle_impact_sound = {filename = "__base__/sound/car-metal-impact.ogg", volume = 0.65},
    working_sound = {
        sound = {filename = "__pypetroleumhandling__/sounds/tar-extractor.ogg", volume = 1.0},
        idle_sound = {filename = "__pypetroleumhandling__/sounds/tar-extractor.ogg", volume = 0.75},
        apparent_volume = 2.5
    },
}
