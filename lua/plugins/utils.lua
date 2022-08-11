local M = {}
M.packer_lazy_load = function(plugin)
   vim.defer_fn(function()
      require("packer").loader(plugin)
   end, 0)
end

return M
