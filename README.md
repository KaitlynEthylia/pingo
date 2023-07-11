> **Warning**
> This project is under development and not ready for general use.
> This plugin is meant to serve as an improved replacement for
> [TreePin](https://github.com/KaitlynEthylia/TreePin), so use that
> in the meantime.

# Pingo

<!--TODO add badges, maybe even a logo :3-->

## Table of Contents

- [Introduction](#introduction)
- [Requirements](#requirements)
- [Installation](#installation)
	- [Lazy.nvim](#lazynvim)
	- [Packer](#packer)
	- [Plug](#plug)
- [Demo](#demo)
- [Setup](#setup)
	- [Default Config](#default-config)
- [Commands](#commands)
- [Extensions](#extensions)
	- [](#context)
	- [](#telescope)
	- [](#traverse)
- [Contributing](#contributing)

## Introduction

## Requirements

- Neovim >= `TBD`
- [telescope.nvim](https://github.com/nvim-telescope/telescope.nvim) (Only when using the Telescope extension, naturally)
- [nvim-treesitter](https://github.com/nvim-treesitter/nvim-treesitter) (Only when using the Traverse and Context extensions)
- [nvim-treesitter-context](https://github.com/nvim-treesitter/ nvim-treesitter-context) (Only when using the Context exentension)

## Installation

> **Note**
> This assumes you're not using any of the extensions. If you are, see [Extensions](#extensions).

### Lazy.nvim

```lua
return {
	'KaitlynEthylia/pingo',
	init = function() require('treepin').setup() end,
}
```

### Packer

```lua
```

### Plug

```lua
```

## Demo

## Setup

### Default Config
```lua
require('pingo').setup {
	hide_on_screen = true,
	off_buffer = 'hide',
	seperator = nil,
	icon = '>',
	end_icon = nil,
	max_height = 30,
	zindex = 50,
	position = 'relative',
	live_update = false,
	add_new_lines = false,
	traverse = nil,
	telescope = nil,
	context = nil,
}
```

<details>
<summary>My personal configuration</summary>

```lua
require('pingo').setup {
	off_buffer = 'show',
	icon = '',
	add_new_lines = true,
	traverse = {}, -- Not yet done
	telescope = {}, -- Not yet done
	context = {}, -- Not yet done
}
```

</details>

## Commands

## Extensions

### Context

### Telescope

### Traverse

## Contributing
