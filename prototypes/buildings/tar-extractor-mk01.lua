RECIPE {
    type = "recipe",
    name = "tar-extractor-mk01",
    energy_required = 5,
    enabled = false,
    ingredients = {
        {type = "item", name = "distilator",             amount = 1},
        {type = "item", name = "automated-factory-mk01", amount = 1},
        {type = "item", name = "steel-plate",            amount = 50},
        {type = "item", name = "electronic-circuit",     amount = 5},
        {type = "item", name = "small-parts-01",         amount = 20},
        {type = "item", name = "pipe",                   amount = 20},
    },
    results = {
        {type = "item", name = "tar-seep-mk01", amount = 1}
    }
}:add_unlock("drilling-fluid-mk01")

ITEM {
    type = "item",
    name = "tar-seep-mk01",
    icon = "__pypetroleumhandlinggraphics__/graphics/icons/tar-extractor-mk01.png",
    icon_size = 64,
    flags = {},
    subgroup = "py-petroleum-handling-buildings-mk01",
    order = "a",
    place_result = "tar-seep-mk01",
    stack_size = 10
}

ENTITY {
    type = "mining-drill",
    name = "tar-extractor-mk01",
    icon = "__pypetroleumhandlinggraphics__/graphics/icons/tar-extractor-mk01.png",
    icon_size = 64,
    flags = {"placeable-neutral", "player-creation"},
    minable = {mining_time = 0.5, result = "tar-seep-mk01"},
    placeable_by = {item = "tar-seep-mk01", count = 1},
    fast_replaceable_group = "tar-extractor",
    max_health = 700,
    resource_categories = {"tar-patch"},
    corpse = "big-remnants",
    dying_explosion = "big-explosion",
    collision_box = {{-4.4, -4.4}, {4.4, 4.4}},
    selection_box = {{-4.5, -4.5}, {4.5, 4.5}},
    module_slots = 1,
    allowed_effects = {"consumption", "speed", "productivity"},
    energy_source = {
        type = "electric",
        usage_priority = "secondary-input",
        emissions_per_minute = {
            pollution = 20
        },
    },
    output_fluid_box =
    {
        volume = 1000,
        pipe_covers = py.pipe_covers(false, true, true, true),
        pipe_picture = py.pipe_pictures("assembling-machine-2", nil, {0.0, -0.96}, nil, nil),
        pipe_connections = {
            {flow_direction = "input-output", position = {-2, -4.0}, direction = defines.direction.north},
            {flow_direction = "input-output", position = {4.0, -2},  direction = defines.direction.east},
            {flow_direction = "input-output", position = {2, 4.0},   direction = defines.direction.south},
            {flow_direction = "input-output", position = {-4.0, 2},  direction = defines.direction.west},
        }
    },
    energy_usage = "400kW",
    mining_speed = 1,
    resource_searching_radius = 0.49,
    vector_to_place_result = {-2, -4.75},
    radius_visualisation_picture = {
        filename = "__base__/graphics/entity/electric-mining-drill/electric-mining-drill-radius-visualization.png",
        width = 12,
        height = 12
    },
    circuit_connector = circuit_connector_definitions["tar-extractor-mkxx"],
    circuit_wire_max_distance = _G.default_circuit_wire_max_distance,
    monitor_visualization_tint = {r = 78, g = 173, b = 255},
    animations = {
        layers = {
            {
                filename = "__pypetroleumhandlinggraphics__/graphics/entity/tar-extractor-mk01/mk01-a.png",
                width = 128,
                height = 329,
                line_length = 16,
                frame_count = 96,
                animation_speed = 0.2,
                shift = util.by_pixel(-80, -20)
            },
            {
                filename = "__pypetroleumhandlinggraphics__/graphics/entity/tar-extractor-mk01/mk01-a-mask.png",
                width = 128,
                height = 329,
                line_length = 16,
                frame_count = 96,
                animation_speed = 0.2,
                shift = util.by_pixel(-80, -20),
                tint = {r = 1.0, g = 1.0, b = 0.0, a = 1.0}
            },
            {
                filename = "__pypetroleumhandlinggraphics__/graphics/entity/tar-extractor-mk01/mk01-b.png",
                width = 128,
                height = 329,
                line_length = 16,
                frame_count = 96,
                animation_speed = 0.2,
                shift = util.by_pixel(48, -20)
            },
            {
                filename = "__pypetroleumhandlinggraphics__/graphics/entity/tar-extractor-mk01/mk01-b-mask.png",
                width = 128,
                height = 329,
                line_length = 16,
                frame_count = 96,
                animation_speed = 0.2,
                shift = util.by_pixel(48, -20),
                tint = {r = 1.0, g = 1.0, b = 0.0, a = 1.0}
            },
            {
                filename = "__pypetroleumhandlinggraphics__/graphics/entity/tar-extractor-mk01/mk01-c.png",
                width = 41,
                height = 329,
                line_length = 16,
                frame_count = 96,
                animation_speed = 0.2,
                shift = util.by_pixel(132, -20)
            },
            {
                filename = "__pypetroleumhandlinggraphics__/graphics/entity/tar-extractor-mk01/mk01-c-mask.png",
                width = 41,
                height = 329,
                line_length = 16,
                frame_count = 96,
                animation_speed = 0.2,
                shift = util.by_pixel(132, -20),
                tint = {r = 1.0, g = 1.0, b = 0.0, a = 1.0}
            },
        },
    },
    impact_category = "metal-large",
    working_sound = {
        sound = {filename = "__pypetroleumhandlinggraphics__/sounds/tar-extractor.ogg", volume = 1.0},
        idle_sound = {filename = "__pypetroleumhandlinggraphics__/sounds/tar-extractor.ogg", volume = 0.3},
        apparent_volume = 2.5
    },
}

local seep = table.deepcopy(data.raw["mining-drill"]["tar-extractor-mk01"])
seep.name = "tar-seep-mk01"
seep.resource_categories = {"bitumen-seep", "tar-patch"}
data:extend {seep}

ENTITY {
    type = "assembling-machine",
    name = "tar-seep-mk01-base",
    icon = "__pypetroleumhandlinggraphics__/graphics/icons/coalbed-mk01.png",
    icon_size = 32,
    flags = {"placeable-neutral"},
    --minable = {mining_time = 0.5, result = "coalbed-mk01"},
    max_health = 100,
    corpse = "medium-remnants",
    hidden = true,
    dying_explosion = "big-explosion",
    collision_box = {{-4.4, -4.4}, {4.4, 4.4}},
    selection_box = {{0, 0}, {0, 0}},
    forced_symmetry = "diagonal-pos",
    module_slots = 0,
    allowed_effects = {},
    crafting_categories = {"drilling-fluid"},
    crafting_speed = 1,
    energy_source = {
        type = "void",
    },
    energy_usage = "1W",
    fixed_recipe = "drilling-fluids",
    fluid_boxes_off_when_no_fluid_recipe = false,
    fluid_boxes = {
        --1
        {
            production_type = "input",
            pipe_picture = py.pipe_pictures("assembling-machine-2", nil, {0.0, -0.96}, nil, nil),
            pipe_covers = py.pipe_covers(false, true, true, true),
            volume = 1000,
            pipe_connections = {{flow_direction = "input", position = {-2, 4.0}, direction = defines.direction.south}}
        },
        {
            production_type = "input",
            pipe_picture = py.pipe_pictures("assembling-machine-2", nil, {0.0, -0.96}, nil, nil),
            pipe_covers = py.pipe_covers(false, true, true, true),
            volume = 1000,
            pipe_connections = {{flow_direction = "input", position = {-1, 4.0}, direction = defines.direction.south}}
        },
        {
            production_type = "input",
            pipe_picture = py.pipe_pictures("assembling-machine-2", nil, {0.0, -0.96}, nil, nil),
            pipe_covers = py.pipe_covers(false, true, true, true),
            volume = 1000,
            pipe_connections = {{flow_direction = "input", position = {1, 4.0}, direction = defines.direction.south}}
        },
        {
            production_type = "input",
            pipe_picture = py.pipe_pictures("assembling-machine-2", nil, {0.0, -0.96}, nil, nil),
            pipe_covers = py.pipe_covers(false, true, true, true),
            volume = 1000,
            pipe_connections = {{flow_direction = "input", position = {2, 4.0}, direction = defines.direction.south}}
        },
    },
    selectable_in_game = false,
    localised_name = {"entity-name.tar-extractor-mk01"},
    localised_description = {"entity-description.tar-extractor-mk01"}
}
