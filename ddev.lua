--
-- Copyright (c) 2019 Thorsten Ruppenstein
--

--------------------------------------------------------------------------------
local function flags(...)
    local p = clink.arg.new_parser()
    p:set_flags(...)
    return p
end

local ddev_basic_options = {
	"--help", "-h",
	"--json-output", "-j",
}

local ddev_basic_parser = clink.arg.new_parser()
ddev_basic_parser:set_flags(ddev_basic_options)
ddev_basic_parser:set_arguments({
	"auth",
	"auth-pantheon",
	"composer",
	"config",
	"debug",
	"describe",
	"exec",
	"export-db",
	"help",
	"hostname",
	"import-db",
    "import-files",
    "list",
    "logs",
    "pull",
    "remove",
    "restart",
    "restore-snapshot",
    "snapshot",
    "ssh",
    "start",
    "stop",
    "version"
})


clink.arg.register_parser("ddev", ddev_basic_parser)

