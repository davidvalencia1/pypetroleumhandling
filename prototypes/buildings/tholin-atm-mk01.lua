RECIPE {
    type = "recipe",
    name = "tholin-atm-mk01",
    energy_required = 2,
    enabled = false,
    ingredients = {
        {type = "item", name = "lab",                amount = 1},
        {type = "item", name = "iron-plate",         amount = 50},
        {type = "item", name = "steam-engine",       amount = 5},
        {type = "item", name = "electronic-circuit", amount = 20},
        {type = "item", name = "small-parts-01",     amount = 20},
    },
    results = {
        {type = "item", name = "tholin-atm-mk01", amount = 1}
    }
}:add_unlock("tholin-mk01")

ITEM {
    type = "item",
    name = "tholin-atm-mk01",
    icon = "__pypetroleumhandlinggraphics__/graphics/icons/tholin-atm-mk01.png",
    icon_size = 64,
    flags = {},
    subgroup = "py-petroleum-handling-buildings-mk01",
    order = "b",
    place_result = "tholin-atm-mk01",
    stack_size = 10
}

ENTITY {
    type = "assembling-machine",
    name = "tholin-atm-mk01",
    icon = "__pypetroleumhandlinggraphics__/graphics/icons/tholin-atm-mk01.png",
    icon_size = 64,
    flags = {"placeable-neutral", "player-creation"},
    minable = {mining_time = 0.5, result = "tholin-atm-mk01"},
    fast_replaceable_group = "tholin-atm",
    max_health = 100,
    corpse = "medium-remnants",
    dying_explosion = "big-explosion",
    collision_box = {{-3.4, -3.4}, {3.4, 3.4}},
    selection_box = {{-3.5, -3.5}, {3.5, 3.5}},
    forced_symmetry = "diagonal-pos",
    fixed_recipe = "proto-tholins",
    --fixed_recipe = "tholins",
    module_slots = 1,
    allowed_effects = {"speed", "productivity", "consumption", "pollution", "quality"},
    crafting_categories = {"tholin-atm"},
    crafting_speed = 1,
    energy_source = {
        type = "electric",
        usage_priority = "secondary-input",
        emissions_per_minute = {
            pollution = 50
        },
    },
    energy_usage = "900kW",
    graphics_set = {
        animation = {
            layers = {
                {
                    filename = "__pypetroleumhandlinggraphics__/graphics/entity/tholin-atm-mk01/base-mk01.png",
                    width = 300,
                    height = 352,
                    line_length = 6,
                    frame_count = 30,
                    run_mode = "forward-then-backward",
                    animation_speed = 0.35,
                    shift = util.by_pixel(-37, -64)
                },
                {
                    filename = "__pypetroleumhandlinggraphics__/graphics/entity/tholin-atm-mk01/base-mk01-mask.png",
                    width = 300,
                    height = 352,
                    line_length = 6,
                    frame_count = 30,
                    run_mode = "forward-then-backward",
                    animation_speed = 0.35,
                    shift = util.by_pixel(-37, -64),
                    tint = {r = 1.0, g = 1.0, b = 0.0, a = 1.0}
                },
                {
                    filename = "__pypetroleumhandlinggraphics__/graphics/entity/tholin-atm-mk01/baloon-mk01.png",
                    width = 320,
                    height = 384,
                    line_length = 6,
                    frame_count = 30,
                    run_mode = "forward-then-backward",
                    animation_speed = 0.35,
                    shift = util.by_pixel(-173, -360)
                },
                {
                    filename = "__pypetroleumhandlinggraphics__/graphics/entity/tholin-atm-mk01/baloon-mk01-mask.png",
                    width = 320,
                    height = 384,
                    line_length = 6,
                    frame_count = 30,
                    run_mode = "forward-then-backward",
                    animation_speed = 0.35,
                    shift = util.by_pixel(-173, -360),
                    tint = {r = 1.0, g = 1.0, b = 0.0, a = 1.0}
                },
                {
                    filename = "__pypetroleumhandlinggraphics__/graphics/entity/tholin-atm-mk01/helice-mk01.png",
                    width = 96,
                    height = 64,
                    line_length = 6,
                    frame_count = 58,
                    animation_speed = 0.3,
                    shift = util.by_pixel(21, -208)
                },
                {
                    filename = "__pypetroleumhandlinggraphics__/graphics/entity/tholin-atm-mk01/helice-mk01-mask.png",
                    width = 96,
                    height = 64,
                    line_length = 6,
                    frame_count = 58,
                    animation_speed = 0.35,
                    shift = util.by_pixel(21, -208),
                    tint = {r = 1.0, g = 1.0, b = 0.0, a = 1.0}
                },
            }
        },
    },
    fluid_boxes_off_when_no_fluid_recipe = false,
    fluid_boxes = {
        --1
        {
            production_type = "input",
            pipe_picture = py.pipe_pictures("assembling-machine-2", nil, {0.0, -0.96}, nil, nil),
            pipe_covers = py.pipe_covers(false, true, true, true),
            volume = 1000,
            pipe_connections = {{flow_direction = "input", position = {0.0, -3.0}, direction = defines.direction.north}}
        },
        {
            production_type = "output",
            pipe_picture = py.pipe_pictures("assembling-machine-2", nil, {0.0, -0.96}, nil, nil),
            pipe_covers = py.pipe_covers(false, true, true, true),
            volume = 100,
            pipe_connections = {{flow_direction = "output", position = {0.0, 3.0}, direction = defines.direction.south}}
        },
    },
    impact_category = "metal-large",
    working_sound = {
        sound = {filename = "__pypetroleumhandlinggraphics__/sounds/tholin-atm.ogg", volume = 1.5},
        idle_sound = {filename = "__pypetroleumhandlinggraphics__/sounds/tholin-atm.ogg", volume = 0.3},
        apparent_volume = 2.5
    }
}
