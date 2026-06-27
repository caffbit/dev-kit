#!/bin/bash

export XDG_CONFIG_HOME="$HOME"/.config
mkdir -p "$XDG_CONFIG_HOME"

# oh-my-zsh custom dir
export ZSH_CUSTOM_DIR="${ZSH_CUSTOM_DIR:-$HOME/.oh-my-zsh/custom}"
mkdir -p "$ZSH_CUSTOM_DIR/plugins"

# Create symbolic links
ln -sf "$PWD/.zshrc" "$HOME"/.zshrc
ln -sf "$PWD/.tmux.conf" "$HOME"/.tmux.conf
ln -sf "$PWD/git" "$XDG_CONFIG_HOME"/git
ln -sf "$PWD/lazygit" "$XDG_CONFIG_HOME"/lazygit
ln -sf "$PWD/nvim" "$XDG_CONFIG_HOME"/nvim
ln -sf "$PWD/worktrunk" "$XDG_CONFIG_HOME"/worktrunk

# Zsh plugins
[ ! -d "$ZSH_CUSTOM_DIR/plugins/zsh-syntax-highlighting" ] && \
  git clone https://github.com/zsh-users/zsh-syntax-highlighting.git "$ZSH_CUSTOM_DIR/plugins/zsh-syntax-highlighting"

# pure
[ ! -d "$ZSH_CUSTOM_DIR/plugins/pure" ] && \
  git clone https://github.com/sindresorhus/pure.git "$ZSH_CUSTOM_DIR/plugins/pure"

# AI agents
mkdir -p "$HOME"/.codex
mkdir -p "$HOME"/.claude
mkdir -p "$XDG_CONFIG_HOME"/opencode

cp "$PWD/AGENTS.md" "$HOME"/.codex/AGENTS.md
cp "$PWD/AGENTS.md" "$HOME"/.claude/CLAUDE.md
cp "$PWD/AGENTS.md" "$XDG_CONFIG_HOME"/opencode/AGENTS.md

# mise
ln -sf "$PWD/mise" "$XDG_CONFIG_HOME"/mise
mise install
