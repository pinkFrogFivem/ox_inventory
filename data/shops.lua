return {

    General = {
        name = 'Shop',
        blip = {
          id = 59,
          colour = 69,
          scale = 0.8
        },
        inventory = {
            { name = 'burger', price = 10 },
            { name = 'water', price = 10 },
        },
        locations = {
            vec3(25.7, -1347.3, 29.49),
        },
        targets = {
            -- Shop using a BoxZone
            {
                loc = vec3(25.06, -1347.32, 29.5),
                length = 0.7,
                width = 0.5,
                heading = 0.0,
                minZ = 29.5,
                maxZ = 29.9,
                distance = 1.5
            },
            -- Shop using a ped
            {
                ped = `mp_m_shopkeep_01`,
                scenario = 'WORLD_HUMAN_AA_COFFEE',
                loc = vec3(24.407, -1347.283, 28.497),
                heading = 270.311,
            },
        }
    }
}
