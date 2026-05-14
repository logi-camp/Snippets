# cdtoday

Automatically changes your terminal's working directory to `/tmp/<current-date>` on startup.

Only activates when the shell starts in `~` — IDE terminals opening in a project directory are unaffected.

## Install

```bash
bash setup_cdtoday.sh
```

Then open a new terminal — it will start in `/tmp/2026-05-14` (today's date).

## Notes

- Requires [fish shell](https://fishshell.com)
- `/tmp` is cleared on reboot on most Linux systems
