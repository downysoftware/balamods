twitter_blue = 'mix_colours(G.C.BLUE, G.C.WHITE, 0.9)'

table.insert(mods,
        {
            mod_id = "twitter_blue",
            name = "Twitter Blue",
			author = "Downy",
            version = "0.1",
            description = {
                "This mod makes the Twitter",
                "button blue."
			},
            enabled = true,
            on_enable = function()
			    sendDebugMessage("Twitter Blue enabled")
                local to_replace = 'colour = G.C.BLACK'
                local replacement = 'colour = ' .. twitter_blue
                local fun_name = "create_UIBox_main_menu_buttons"
                local file_name = "functions/UI_definitions.lua"

                inject(file_name, fun_name, to_replace, replacement)
            end,
            on_disable = function()
                local to_replace = 'colour = ' .. twitter_blue
                local replacement = 'colour = G.C.BLACK'
                local fun_name = "create_UIBox_main_menu_buttons"
                local file_name = "functions/UI_definitions.lua"

                inject(file_name, fun_name, to_replace, replacement)
            end,
        }
)