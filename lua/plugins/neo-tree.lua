return {
    "nvim-neo-tree/neo-tree.nvim",
    branch = "v3.x",
    dependencies = {
        "nvim-lua/plenary.nvim",
        "nvim-tree/nvim-web-devicons",
        "MunifTanjim/nui.nvim",
    },
    config = function()
        require("neo-tree").setup({
            visible = true,
            filesystem = {
                follow_current_file = true,
                filtered_items = {
                    visible = true,
                    hide_dotfiles = false,
                    hide_gitignored = false,
                },
            },
        })
        local function toggle_neotree_focus()
            local buf_name = vim.api.nvim_buf_get_name(0)

            if buf_name:match("neo%-tree") then
                vim.cmd("wincmd p")
            else
                vim.cmd("Neotree")
            end
        end

        vim.keymap.set("n", "<C-n>", toggle_neotree_focus, { noremap = true, silent = true })
    end,
}
