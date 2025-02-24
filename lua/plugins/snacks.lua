return {
  {
    "snacks.nvim",
    opts = {
      explorer = { enabled = false },
      dashboard = {
        preset = {
          pick = function(cmd, opts)
            return LazyVim.pick(cmd, opts)()
          end,
          header = [[ ██████   █████ █████   █████ █████ ██████   ██████
░░██████ ░░███ ░░███   ░░███ ░░███ ░░██████ ██████ 
 ░███░███ ░███  ░███    ░███  ░███  ░███░█████░███ 
 ░███░░███░███  ░███    ░███  ░███  ░███░░███ ░███ 
 ░███ ░░██████  ░░███   ███   ░███  ░███ ░░░  ░███ 
 ░███  ░░█████   ░░░█████░    ░███  ░███      ░███ 
 █████  ░░█████    ░░███      █████ █████     █████
░░░░░    ░░░░░      ░░░      ░░░░░ ░░░░░     ░░░░░ 
                                                   
                                                   
                                                   
 ███████████  █████  █████ ███████████   █████████ 
░░███░░░░░███░░███  ░░███ ░░███░░░░░███ ███░░░░░███
 ░███    ░███ ░███   ░███  ░███    ░███░███    ░░░ 
 ░██████████  ░███   ░███  ░██████████ ░░█████████ 
 ░███░░░░░███ ░███   ░███  ░███░░░░░███ ░░░░░░░░███
 ░███    ░███ ░███   ░███  ░███    ░███ ███    ░███
 ███████████  ░░████████   ███████████ ░░█████████ 
░░░░░░░░░░░    ░░░░░░░░   ░░░░░░░░░░░   ░░░░░░░░░  ]], -- stylua: ignore
        },
      },
    },
  },
}
