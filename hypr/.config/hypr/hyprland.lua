--<BS>- This is an example Hyprland Lua config file.
-- Refer to the wiki for more information.
-- https://wiki.hypr.land/Configuring/Start/

-- Please note not all available settings / options are set here.
-- For a full list, see the wiki

-- You can (and should!!) split this configuration into multiple files
-- Create your files separately and then require them like this:
-- require("myColors")

------------------
---- MONITORS ----
------------------

require("config/monitors")

---------------------
---- MY PROGRAMS ----
---------------------

require("config.myprograms")

-------------------
---- AUTOSTART ----
-------------------

require("config/autostart")

-------------------------------
---- ENVIRONMENT VARIABLES ----
-------------------------------

require("config/environmentvar")

-----------------------
----- PERMISSIONS -----
-----------------------

require("config/permissions")

-----------------------
---- LOOK AND FEEL ----
-----------------------

require("config/environment")

require("config/animations")

----------------
----  MISC  ----
----------------

-- incl. in config/environment

---------------
---- INPUT ----
---------------

require("config/input")

---------------------
---- KEYBINDINGS ----
---------------------

require("config/keybindings")

--------------------------------
---- WINDOWS AND WORKSPACES ----
--------------------------------

require("config/windows")

require("config/workspaces")

--------------------------------
--- CUSTOM WINDOW BEHAVIOURS ---
--------------------------------

require("config/customwindows")
