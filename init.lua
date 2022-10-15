require('plugins')
require('keymaps')

local o = vim.o
local g = vim.g
local wo = vim.wo

g.mapleader = ' '

o.termguicolors = true
o.syntax = 'on'
o.shiftwidth = 2
wo.number = true
wo.relativenumber = true
