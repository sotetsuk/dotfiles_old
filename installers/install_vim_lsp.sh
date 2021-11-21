vim -c ":PlugInstall" -c "qa!"

for LANG_SERVER in "pyls-all" "clangd"; do
  cd ~/.local/share/vim-lsp-settings/servers
  if [[ -d ${LANG_SERVER} ]]; then
    echo "passed [${LANG_SERVER}]"
    continue
  fi
  mkdir -p ${LANG_SERVER}
  cd ${LANG_SERVER}
  ~/.vim/plugged/vim-lsp-settings/installer/install-${LANG_SERVER}.sh
done
