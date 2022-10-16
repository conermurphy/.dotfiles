local o = vim.o
local g = vim.g
local wo = vim.wo
local opt = vim.opt

vim.cmd([[colorscheme night-owl]])

g.mapleader = ' '

o.termguicolors = true
o.syntax = 'on'
o.shiftwidth = 2
wo.number = true
wo.relativenumber = true

opt.timeoutlen = 500

