### Installation:

```
sh -c "$(curl -fsSL https://raw.github.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
```

You can also change the theme. Replace the theme name in `~/.zshrc`. For example:

```bash
ZSH_THEME="jonathan"
```

---
### Auto-Suggestion:

```bash
git clone https://github.com/zsh-users/zsh-autosuggestions ~/.zsh/zsh-autosuggestions
```

Then:
```bash
echo "source ~/.zsh/zsh-autosuggestions/zsh-autosuggestions.zsh" >> ~/.zshrc
```
---
### Syntax-Highlighting :

```bash
git clone https://github.com/zsh-users/zsh-syntax-highlighting.git ~/.zsh/zsh-syntax-highlighting
```

then run:

```bash
echo "source ~/.zsh/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh" >> ~/.zshrc
```
---
### Open file with default app with one command :
Add below lines to the `~/.zshrc` file
```bash
function open () {
  xdg-open "$@">/dev/null 2>&1
}
```
