return {
  {
    "joshuadanpeterson/typewriter.nvim",
    dependencies = {
      "nvim-treesitter/nvim-treesitter",
    },
    config = function()
      require("typewriter").setup()
    end,
    opts = {
      -- Optional configuration
    },
  },
}
