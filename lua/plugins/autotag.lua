--Completes html tags, also renames closing tags etc, skipping void tags to aVOID annoyances

return {
    "windwp/nvim-ts-autotag",
    event = "InsertEnter",
    config = function()
        require("nvim-ts-autotag").setup({
            enable_close_on_slash = true,
            skip_tags = {
                "br",
                "hr",
                "img",
                "input",
                "link",
            },
        })
    end,
}
