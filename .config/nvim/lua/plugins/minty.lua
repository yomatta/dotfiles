return {
  "nvzone/minty",
  cmd = { "Shades", "Huey" }, -- Optional: lazy-load on commands
  config = function()
    require("minty").setup()
  end,
}
