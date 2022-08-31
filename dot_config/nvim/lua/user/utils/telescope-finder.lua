-- https://github.com/LunarVim/LunarVim/blob/6ab3e8a73920e3d2e02e57f7dd3a1f3d8e54ee63/lua/lvim/core/telescope/custom-finders.lua

local M = {}

local _, builtin = pcall(require, "telescope.builtin")

-- Smartly opens either git_files or find_files, depending on whether the working directory is
-- contained in a Git repo.
function M.find_project_files()
	local ok = pcall(builtin.git_files)

	if not ok then
		builtin.find_files()
	end
end

return M
