return {
  "goolord/alpha-nvim",
  opts = function(_, opts)
    local logo = [[
                                                                             
        ██████   █████                   █████   █████  ███                  
       ░░██████ ░░███                   ░░███   ░░███  ░░░                   
        ░███░███ ░███   ██████   ██████  ░███    ░███  ████  █████████████   
        ░███░░███░███  ███░░███ ███░░███ ░███    ░███ ░░███ ░░███░░███░░███  
        ░███ ░░██████ ░███████ ░███ ░███ ░░███   ███   ░███  ░███ ░███ ░███  
        ░███  ░░█████ ░███░░░  ░███ ░███  ░░░█████░    ░███  ░███ ░███ ░███  
        █████  ░░█████░░██████ ░░██████     ░░███      █████ █████░███ █████ 
       ░░░░░    ░░░░░  ░░░░░░   ░░░░░░       ░░░      ░░░░░ ░░░░░ ░░░ ░░░░░  
                                                                             
                           λ it be like that sometimes λ                     
    ]]
    opts.section.header.val = vim.split(logo, "\n", { trimempty = true })
  end,
}
