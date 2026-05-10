# App Notes

_Purpose_: A place to record my notes about apps I use. Intended use is a primary point of reference for the semi-common / uncommon tasks I find myself unable to remember.

## Neovim

### Neovim Plugins
Install them in the plugins folder (.config/nvim)

#### typewriter.nvim
Typewriter Scrolling feature.

NOTE: THIS IS NOT WORKING FOR SOME REASON. NOT MOTIVATED TO FIGURE IT OUT RIGHT NOW.

Link: [typewriter.nvim](https://github.com/joshuadanpeterson/typewriter.nvim)
Dependency: nvim-treesitter

From git...

Add the following to your lazyvim configuration...

~~~
local lazy = require('lazy')

lazy.setup({
    -- Other plugins...

    {
        'nvim-treesitter/nvim-treesitter',
        build = ':TSUpdate',
    },

    {
        'joshuadanpeterson/typewriter',
        dependencies = {
            'nvim-treesitter/nvim-treesitter',
        },
        config = function()
            require('typewriter').setup()
        end,
        opts = {}
    },
})
~~~

':TWenable' Enable Typewriter mode
':TWDisable' Disable
':TWToggle' Toggle on/off
