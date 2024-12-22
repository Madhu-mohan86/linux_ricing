
# Linux ricing

Just config folder thats all
    
## Installation

Just clone the repo

```bash
  git clone https://github.com/Madhu-mohan86/linux_ricing.git
  cd linux_ricing
  sudo cp -r .config ~/.config
```
if there is default config then just delete it with your gut 


## LSP and IDE

Open nvim by just typing nvim and confirm the Plugins

```bash
:Lazy
```

**LSP for JS** 

Install biome server 

```bash
npm i -g biome
```

Verify its in the path

```bash
which -a biome
```

it should display  as  ` /sbin/biome`
    
**LSP for rust**

Choose the installation method that suits you 

https://rust-analyzer.github.io/manual.html#manual-installation
