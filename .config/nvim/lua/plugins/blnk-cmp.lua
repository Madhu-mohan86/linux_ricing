return{
	{
  'saghen/blink.cmp',
   dependencies = 'rafamadriz/friendly-snippets',

   version = 'v0.*',
   opts = {
       keymap = { preset = 'enter' },

    appearance = {
     use_nvim_cmp_as_default = true,
     nerd_font_variant = 'mono'
    },
}
    -- experimental signature help support
    -- signature = { enabled = true }
  }
 }
