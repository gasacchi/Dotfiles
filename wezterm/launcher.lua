local module = {}

local launch_menu = {
	{
		label = "testing launcher",
		args = {"hx", "--help"}
	},
	{ args = {"bash", "-l"}},
	{args = {"top"}}
}

function module.apply_to_config(config)
	config.launch_menu = launch_menu
end

return module
