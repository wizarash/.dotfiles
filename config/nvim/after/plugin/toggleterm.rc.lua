local status, tt = pcall(require, "toggleterm")
if (not status) then return end

tt.setup {
  size = 20,
  open_mapping = [[<c-\>]],
  hide_numbers = true,
	shade_terminals = true,
	shading_factor = 2,
	start_in_insert = true,
	insert_mappings = true,
	persist_size = true,
  direction = 'float', -- 'vertical | 'horizontal' | 'tab' | 'float'
  float_opts = {
		border = 'curved', -- 'single' | 'double' | 'shadow' | 'curved'
	},
}
