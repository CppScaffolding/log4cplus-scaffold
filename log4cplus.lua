-- scaffold geniefile for log4cplus

log4cplus_script = path.getabsolute(path.getdirectory(_SCRIPT))
log4cplus_root = path.join(log4cplus_script, "log4cplus")

log4cplus_includedirs = {
	path.join(log4cplus_script, "config"),
	log4cplus_root,
}

log4cplus_libdirs = {}
log4cplus_links = {}
log4cplus_defines = {}

----
return {
	_add_includedirs = function()
		includedirs { log4cplus_includedirs }
	end,

	_add_defines = function()
		defines { log4cplus_defines }
	end,

	_add_libdirs = function()
		libdirs { log4cplus_libdirs }
	end,

	_add_external_links = function()
		links { log4cplus_links }
	end,

	_add_self_links = function()
		links { "log4cplus" }
	end,

	_create_projects = function()

project "log4cplus"
	kind "StaticLib"
	language "C++"
	flags {}

	includedirs {
		log4cplus_includedirs,
	}

	defines {}

	files {
		path.join(log4cplus_script, "config", "**.h"),
		path.join(log4cplus_root, "**.h"),
		path.join(log4cplus_root, "**.cpp"),
	}

end, -- _create_projects()
}

---
