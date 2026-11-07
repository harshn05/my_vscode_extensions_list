# VS Code Installed Extensions Backup

This repository contains a categorized backup of all active extensions installed in the Visual Studio Code workspace.

## Quick Restore / Installation
To automatically install all the extensions listed below on a new machine, save the clean list to an `extensions.txt` file, open your terminal (cmd/bash), navigate to the file directory, and run the following loop command:

### 🪟 Windows (Command Prompt)
```cmd
for /F "tokens=*" %i in (extensions.txt) do code --install-extension %i
```

### 🍎 macOS / 🐧 Linux (Bash/Zsh)
```bash
while read line; do code --install-extension "$line"; done < extensions.txt
```

---

## Categorized Extensions List

### 🤖 Artificial Intelligence & Assistants
* `anthropic.claude-code` — Claude Code integration
* `continue.continue` — Open-source AI code assistant
* `google.geminicodeassist` — Gemini Code Assist
* `openai.chatgpt` — ChatGPT integration
* `openai.codex-audio` — OpenAI Codex Audio tools

### 🛠️ Programming Languages & Frameworks
#### C / C++ / C# (.NET)
* `llvm-vs-code-extensions.vscode-clangd` — C/C++ completion and navigation using clangd
* `ms-dotnettools.csdevkit` — C# Dev Kit for specialized .NET development
* `ms-dotnettools.csharp` — Official C# language support
* `ms-dotnettools.vscode-dotnet-runtime` — .NET Runtime acquisition tool
* `ms-vscode.cpp-devtools` — C/C++ Developer Tools configuration
* `ms-vscode.cpptools` — C/C++ IntelliSense, debugging, and code browsing
* `ms-vscode.cpptools-extension-pack` — C/C++ Extension Pack
* `samubarb.vscode-doxyfile` — Doxyfile generation utilities
* `vadimcn.vscode-lldb` — Native debugging via LLDB

#### Python
* `kevinrose.vsc-python-indent` — Automated Python indentation tuning
* `ktnrg45.vscode-cython` — Cython language syntax and support
* `ms-python.black-formatter` — Black code formatter for Python
* `ms-python.debugpy` — Python debugger engine
* `ms-python.isort` — Import sorting configuration utility
* `ms-python.python` — Official Python language support
* `ms-python.vscode-pylance` — Fast, feature-rich language support for Python
* `ms-python.vscode-python-envs` — Python Environment discovery and management

#### Web Development (HTML / CSS / JavaScript)
* `avaloniateam.vscode-avalonia` — Avalonia UI framework support
* `bradlc.vscode-tailwindcss` — Tailwind CSS IntelliSense
* `dbaeumer.vscode-eslint` — JavaScript/TypeScript linting with ESLint
* `ecmel.vscode-html-css` — CSS IntelliSense for HTML documents
* `esbenp.prettier-vscode` — Opinionated code formatter (Prettier)
* `ritwickdey.liveserver` — Launch local development server with live reload

#### Go & Scripting Languages
* `golang.go` — Rich Go language support
* `ms-vscode.powershell` — PowerShell language integration and shell support

### 📊 Data, Serialization & Formatting
* `dotjoshjohnson.xml` — XML formatting, XQuery, and tools
* `grapecity.gc-excelviewer` — Advanced CSV and Excel file viewer
* `hilleer.yaml-plus-json` — Advanced YAML and JSON data transformation utilities
* `mechatroner.rainbow-csv` — Multicharacter column formatting for CSV logs
* `ms-vscode.hexeditor` — Binary and hexadecimal file viewer/editor
* `redhat.vscode-xml` — XML Language Support by Red Hat
* `redhat.vscode-yaml` — YAML Language Support by Red Hat

### 📦 DevOps, Containers & Remote Environments
* `ms-azuretools.vscode-containers` — Configuration for dev containers
* `ms-azuretools.vscode-docker` — Docker management dashboard and syntax
* `ms-vscode-remote.remote-containers` — Open any folder inside a Docker container
* `ms-vscode-remote.remote-ssh` — Connect to remote machines using SSH
* `ms-vscode-remote.remote-ssh-edit` — Remote SSH file editing extensions
* `ms-vscode-remote.remote-wsl` — Open any folder in the Windows Subsystem for Linux

### 🌿 Source Control & Collaboration
* `eamodio.gitlens` — Git supercharged (visualize code authorship)
* `github.remotehub` — Browse GitHub repositories directly without cloning
* `github.vscode-pull-request-github` — Review and manage GitHub pull requests
* `mhutchie.git-graph` — Visual interactive Git branching structure graph
* `ms-vscode.azure-repos` — Azure Repos integration

### 📝 Markdown & Documentation
* `bierner.markdown-mermaid` — Mermaid.js diagram rendering in Markdown
* `cschlosser.doxdocgen` — Generates Doxygen comments on the fly
* `davidanson.vscode-markdownlint` — Markdown linting and style checker
* `shd101wyy.markdown-preview-enhanced` — Rich interactive Markdown previewer
* `tomoki1207.pdf` — Direct PDF file viewer
* `yzane.markdown-pdf` — Export Markdown documents to PDF format
* `yzhang.markdown-all-in-one` — Keyboard shortcuts and formatting for Markdown

### 🎨 Themes, Icons & Workspace Customization
* `beardedbear.beardedtheme` — Vibrant collection of distinct color themes
* `github.github-vscode-theme` — Official GitHub light and dark themes
* `jdinhlife.gruvbox` — Retro groove color scheme for Vim-like contrast
* `johnpapa.winteriscoming` — Custom dark/blue background developer theme
* `ms-vscode.cpptools-themes` — Specialized color themes for C++ workspaces
* `pkief.material-icon-theme` — Material Design file and folder iconography
* `tinkertrain.theme-panda` — Official Panda syntax theme
* `vscode-icons-team.vscode-icons` — Custom icon sets for files and folder hierarchies
* `wesbos.theme-cobalt2` — Official Cobalt2 theme by Wes Bos
* `whizkydee.material-palenight-theme` — Elegant Material Palenight workspace variant
* `zhuangtongfa.material-theme` — Highly customizable Material design workbench

### ⚙️ Workspace Productivity & Utilities
* `aaron-bond.better-comments` — Human-centric color categorization for comments
* `christian-kohler.path-intellisense` — Visual auto-completion for filesystem paths
* `editorconfig.editorconfig` — Universal coding style standardization settings
* `kdl-org.kdl` — KDL Document Language support
* `ms-vscode.notepadplusplus-keybindings` — Notepad++ shortcut profile map
* `naumovs.color-highlight` — In-editor background highlighting for hex/rgb colors
* `njpwerner.autodocstring` — Python docstring generator templates
* `oderwat.indent-rainbow` — Colorizes code indentation blocks for readability
* `techer.open-in-browser` — Direct shortcut to preview web assets in default browsers
* `usernamehw.errorlens` — Visual diagnostic engine highlighting errors inline
