SLOT_CODES =
{
    chest_size_matches_contents =
    {
        code = "csmc",
        mapping = 
        {
            [0] = 0, -- CSMC off
            [1] = 1  -- CSMC on
        }
    },
    minigames_excluded = 
    {
        code = "minigames",
        mapping = 
        {
            [0] = 0, -- Minigames on
            [1] = 1  -- Minigames off
        }
    },
    logic_mode =
    {
        code = "logic_mode",
        mapping = 
        {
            [0] = 0,   -- Normal
            [1] = 1,   -- Hard
            [2] = 2,   -- Glitched
            [3] = 3,   -- AdvGlitched
            [4] = 4    -- Hell
            -- [5] = 5     -- No logic
        }
    },
    lorule_castle_requirement =
    {
        code = "lorule_castle_requirement",
        mapping = 
        {
            [0] = 7,  -- No sages
            [1] = 6,  -- 1 sage
            [2] = 5,  -- 2 sages
            [3] = 4,  -- 3 sages
            [4] = 3,  -- 4 sages
            [5] = 2,  -- 5 sages
            [6] = 1,  -- 6 sages
            [7] = 0   -- 7 sages
        }
    },
    pedestal_requirement =
    {
        code = "pedestal_requirement",
        mapping = 
        {
            [0] = 1, -- Vanilla (2)
            [1] = 0  -- Standard (3)
        }
    },
    lamp_and_net_as_weapons =
    {
        code = "lamp_and_net_as_weapons",
        mapping = 
        {
            [0] = 0, -- Lamp and net not weapons
            [1] = 1  -- Lamp and net as weapons
        }
    },
    maiamai_mayhem =
    {
        code = "maiamai_mayhem",
        mapping = 
        {
            [0] = 0, -- Maiamais default
            [1] = 1  -- Maiamais shuffled
        }
    },
    nice_items =
    {
        code = "nice_items",
        mapping = 
        {
            [0] = 1,  -- Nice Items Vanilla
            [1] = 2,  -- Nice Items Shuffled (Junked)
            [2] = 0   -- Nice Items Off (Junked)
        }
    },
    no_progression_enemies =
    {
        code = "no_progression_enemies",
        mapping = 
        {
            [0] = 0, -- Bawmbs included
            [1] = 1  -- Bawmbs excluded
        }
    },
    -- trials_required =
    -- {
    --     code = "lc_trials_door",
    --     mapping = 
    --     {
    --         [0] = 1,  -- Door open
    --         [1] = 0,  -- 1 trial
    --         [2] = 0,  -- 2 trials
    --         [3] = 0,  -- 3 trials
    --         [4] = 0   -- 4 trials
    --     }
    -- },
    -- open_trials_door =
    -- {
    --     code = "lc_trials_door",
    --     mapping = 
    --     {
    --         [0] = 0,
    --         [1] = 1
    --     }
    -- },
    dark_rooms_lampless =
    {
        code = "dark_rooms_lampless",
        mapping = 
        {
            [0] = 0, -- Lamp needed
            [1] = 1  -- No lamp needed
        }
    },
    crack_shuffle =
    {
        code = "crack_shuffle",
        mapping = 
        {
            [0] = 0,  -- Off, Cracks are not shuffled
            [1] = 1,  -- Cross World Pairs
            [2] = 1,  -- Any World Pairs
            [3] = 1,  -- Mirrored Cross World Pairs
            [4] = 1   -- Mirrored Any World Pairs
        }
    },
    weather_vanes =
    {
        code = "weather_vanes",
        mapping = 
        {
            [0] = 0,  -- Standard
            [1] = 1,  -- Shuffled
            [2] = 0,  -- Convinient
            [3] = 0,  -- Hyrule
            [4] = 0,  -- Lorule
            [5] = 0   -- All
        }
    },
    -- swordless_mode =
    -- {
    --     code = "p_sword",
    --     mapping = 
    --     {
    --         [0] = 1,  -- Swordful
    --         [1] = 0   -- Swordless
    --     }
    -- },
    initial_crack_state =
    {
        code = "quake",
        mapping = 
        {
            [0] = 0, -- No quake
            [1] = 1  -- Quake
        }
    }
}