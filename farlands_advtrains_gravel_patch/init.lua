local nodenames = {
    "advtrains:dtrack_vst31",
    "advtrains:dtrack_vst32",
    "advtrains:dtrack_vst33",

    "advtrains:dtrack_vst1",
    "advtrains:dtrack_vst2",
}

for _, nodename in ipairs(nodenames) do
    minetest.override_item(nodename, {
        tiles = {
            "advtrains_dtrack_shared.png",
            "farlands_gravel.png",
        }
    })
end

local tieless_nodenames = {
    "advtrains:dtrack_tieless_vst31",
    "advtrains:dtrack_tieless_vst32",
    "advtrains:dtrack_tieless_vst33",

    "advtrains:dtrack_tieless_vst1",
    "advtrains:dtrack_tieless_vst2",
}

for _, nodename in ipairs(tieless_nodenames) do
    minetest.override_item(nodename, {
        tiles = {
            "advtrains_dtrack_tieless_shared.png",
            "farlands_gravel.png",
        }
    })
end