local hide_nodenames = {
    "advtrains:boiler",
    "advtrains:chimney",
    "advtrains:driver_cab",
    "advtrains:wheel",
    "dlxtrains:age_selector",
    "dlxtrains:blueprint",
    "dlxtrains:bogie",
    "dlxtrains:coupler_buffer_and_chain",
    "dlxtrains:coupler_knuckle",
    "dlxtrains:livery_selector",
    "dlxtrains:wagon_chassis",
    "dlxtrains:wagon_updater",
    "dlxtrains:wheel_set",
    "dlxtrains_cargo:corrugated_fiberboard",
    "dlxtrains_diesel_locomotives:battery_pack",
    "dlxtrains_diesel_locomotives:cooling_fan",
    "dlxtrains_diesel_locomotives:cooling_unit",
    "dlxtrains_diesel_locomotives:diesel_engine",
    "dlxtrains_diesel_locomotives:fuel_tank",
    "dlxtrains_diesel_locomotives:generator",
    "dlxtrains_diesel_locomotives:hood",
    "dlxtrains_diesel_locomotives:hydraulic_transmission",
    "dlxtrains_diesel_locomotives:locomotive_body_type1",
    "dlxtrains_diesel_locomotives:locomotive_body_type2",
    "dlxtrains_diesel_locomotives:locomotive_body_type3",
    "dlxtrains_diesel_locomotives:locomotive_bogie",
    "dlxtrains_diesel_locomotives:locomotive_chassis",
    "dlxtrains_diesel_locomotives:radiator",
    "dlxtrains_industrial_wagons:brakemans_cabin",
    "dlxtrains_industrial_wagons:container_body_type1",
    "dlxtrains_industrial_wagons:container_body_type2",
    "dlxtrains_industrial_wagons:covered_goods_body_type1",
    "dlxtrains_industrial_wagons:covered_goods_body_type2",
    "dlxtrains_industrial_wagons:covered_goods_body_type3",
    "dlxtrains_industrial_wagons:flat_body_type1",
    "dlxtrains_industrial_wagons:hopper_body_type1",
    "dlxtrains_industrial_wagons:open_body_type1",
}

for _, nodename in ipairs(hide_nodenames) do
    if minetest.registered_items[nodename] then
        local groups = minetest.registered_items[nodename].groups or {}
        groups.not_in_creative_inventory = 1

        minetest.override_item(nodename, {
            groups = groups
        })
    end
end