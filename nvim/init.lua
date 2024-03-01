-- Basic
require "frog.launch"
require "frog.options"
require "frog.keymaps"
require "frog.autocmds"

-- Core
spec "frog.treesitter"
spec "frog.autopairs"
spec "frog.mason"
spec "frog.lspconfig"
spec "frog.none-ls"
spec "frog.cmp"
spec "frog.schemastore"
spec "frog.telescope"
spec "frog.whichkey"
spec "frog.comment"
spec "frog.harpoon"
spec "frog.gitsigns"
spec "frog.indentline"

-- Visual
spec "frog.colorschemes/everforest"
spec "frog.lualine"
spec "frog.devicons"
spec "frog.nvimtree"
-- spec "frog.neotree"
-- spec "frog.navic"
spec "frog.barbecue"

-- Extra
-- spec "frog.extras.tabby"
spec "frog.extras.neoscroll"

-- Lazy
require "frog.lazy"
