# nvim configs (But using lazy.nvim)

I basically just rewrote my nvim configs to use **lazy.nvim** instead of packer.

## Install

use this command
```bash
git@github.com:Jadoking/nvim-lazy.git ~/.config/nvim
```

or

```bash
https://github.com/Jadoking/nvim-lazy.git ~/.config/nvim
```

if you are not me.

Everything should work out of the box.

## Notes 
- For some reason sometimes harpoon won't check out the right branch..
Can be fixed with
```bash
cd ~/.local/share/nvim/lazy/harpoon
git checkout harpoon2 # I'm begging pls promote the branch
```
If you are unfortunately using windows
```powershell
cd $env:LOCALAPPDATA\nvim-data\lazy\harpoon
git checkout harpoon2
```
