![VimScript](./.examples/muVim_VimScript.png)

<div align="center">
  <p>
    <a href="https://github.com/AndresMpa/mu-nvim">
      <img
        src="https://img.shields.io/badge/-neovim-darkblue?style=for-the-badge&logo=neovim"
        alt="Neovim"
      />
    </a>
    <a href="https://github.com/AndresMpa/mu-nvim">
      <img
        src="https://img.shields.io/badge/-vim-darkgreen?style=for-the-badge&logo=vim"
        alt="VimScript"
      />
    </a>
    <a href="https://github.com/AndresMpa/mu-nvim">
      <img
        src="https://img.shields.io/badge/-bash-black?style=for-the-badge&logo=GNU%20Bash"
        alt="Bash Script"
      />
    </a>
  </p>
</div>

# VimScript (LTS)

A modular VimScript config for Vim and Neovim. Each concern lives in its own sourced file, which is easier to extend than Mini and still works if you have not moved off Vim.

For the current Neovim stack, see [Current](https://github.com/AndresMpa/mu-vim). For a single file, see [Mini](https://github.com/AndresMpa/mu-vim-mini).

## Screenshots

![nvim](./.examples/nvim_0.png)
![nvim](./.examples/nvim_1.png)
![nvim](./.examples/nvim_2.png)
![nvim](./.examples/nvim_3.png)
![nvim](./.examples/nvim_4.png)

[Example from YouTube](https://youtu.be/9L-k6n9SQds)

## Prerequisites

You need [Neovim](https://github.com/neovim/neovim/wiki/Installing-Neovim) or [Vim](https://www.vim.org/download.php), plus [vim-plug](https://github.com/junegunn/vim-plug).

### Dependencies

Most of these are for [CoC](https://github.com/neoclide/coc.nvim):

- [pnpm](https://pnpm.io/installation)
- [Node.js](https://nodejs.org/download/)

### Optional

Project search:

- [the_silver_searcher](https://github.com/ggreer/the_silver_searcher)
- [Ack](https://beyondgrep.com/install/)

Live preview for web work: [Bracey](https://github.com/turbio/bracey.vim#installation).

Markdown preview:

```
:source %
:PluginInstall
:call mkdp#util#install()
```

Shell formatting: [shfmt](https://github.com/mvdan/sh).

R: [Nvim-R](https://github.com/jamespeapen/Nvim-R/wiki/Installation).

## Quick start

Linux and macOS:

```
git clone https://github.com/AndresMpa/mu-vim-vimscript.git
cd mu-vim-vimscript && ./install.sh
nvim
```

Windows:

```
cd %LOCALAPPDATA%
move nvim nvim_old
git clone https://github.com/AndresMpa/mu-vim-vimscript.git nvim
nvim
```

Then:

```
<Space> p i
:source %
:CocInstall
:call mkdp#util#install()
```

If you get lost, press `<Space> h h` or open the [cheat sheet](./CheatSheet.md).

---

## Summary of plugins

| Color schema          | Icon theme                     |
| --------------------- | ------------------------------ |
| (Using) Default       | vim-airline/vim-airline-themes |
| morhetz/gruvbox       | vim-airline/vim-airline        |
| kamykn/dark-theme.vim | ryanoasis/vim-devicons         |

| Motion                         | Identantion and syntax     | Utilities                    | Autocomplete                  |
| ------------------------------ | -------------------------- | ---------------------------- | ----------------------------- |
| christoomey/vim-tmux-navigator | leafgarland/typescript-vim | iamcco/markdown-preview.nvim | editorconfig/editorconfig-vim |
| severin-lemaignan/vim-minimap  | maxmellon/vim-jsx-pretty   | terryma/vim-multiple-cursors | wakatime/vim-wakatime         |
| easymotion/vim-easymotion      | pangloss/vim-javascript    | preservim/nerdcommenter      | jiangmiao/auto-pairs          |
| haya14busa/incsearch.vim       | sheerun/vim-polyglot       | KabbAmine/vCoolor.vim        | tpope/vim-surround            |
| scrooloose/nerdtree            | kovetskiy/sxhkd-vim        | turbio/bracey.vim            | alvan/vim-closetag            |
| junegunn/fzf.vim               | jparise/vim-graphql        | mhinz/vim-signify            | sirver/ultisnips              |
| mileszs/ack.vim                | Yggdroot/indentLine        | ap/vim-css-color             |                               |
|                                | rust-lang/rust.vim         | tpope/vim-repeat             |                               |
|                                | tpope/vim-fugitive         |                              |                               |
|                                | neoclide/coc.nvim          |                              |                               |
|                                | z0mbix/vim-shfmt           |                              |                               |
|                                | jalvesaq/Nvim-R            |                              |                               |

## Related tools

- [rofi](https://github.com/davatorium/rofi)
- [Ulauncher](https://ulauncher.io/)
- [Zeal](https://zealdocs.org/)
- [Vimium](https://addons.mozilla.org/firefox/addon/vimium-ff/)
- [Arch Linux](https://github.com/AndresMpa/dotfiles)
