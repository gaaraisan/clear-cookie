# Clear Cookies Script

This Bash script is designed to clear cookies from popular web browsers (Google Chrome, Chromium, and Firefox) as well as remove temporary system files.

---

## Features

- Deletes cookies stored by:
  - Google Chrome
  - Chromium
  - Mozilla Firefox
- Clears temporary system files from `/tmp`.
- Automatically detects and processes browser profiles.

---

## Requirements

- Linux-based operating system.
- Bash shell.
- Write access to browser profile directories and `/tmp`.

---

## Usage

1. Clone or copy the script to your desired directory.
2. Make the script executable:
   ```bash
   chmod +x clear_cookies.sh
   ```
3. Run the script:
   ```bash
   ./clear_cookies.sh
   ```

---

## What the Script Does

### Google Chrome:
- Deletes the `Cookies` file located in `~/.config/google-chrome/Default/`.

### Chromium:
- Deletes the `Cookies` file located in `~/.config/chromium/Default/`.

### Mozilla Firefox:
- Identifies all profiles in `~/.mozilla/firefox/`.
- Deletes the `cookies.sqlite` file from each profile.

### System Temporary Files:
- Removes all files in `/tmp/`.

---

## Notes

1. **Close Browsers Before Running:** Ensure all browsers are closed before running the script to avoid conflicts.
2. **Profile Path Variations:** If your browser profiles are stored in non-standard locations, update the paths in the script accordingly.
3. **Temporary File Removal:** Be cautious when removing files from `/tmp` as some applications may rely on them.

---

## Troubleshooting

- **Permissions Issue:** If you encounter permission errors, run the script with `sudo`:
  ```bash
  sudo ./clear_cookies.sh
  ```
- **Custom Paths:** If your browser uses a custom directory for profiles, modify the script to point to the correct location.

---

## Disclaimer

This script is provided "as is" without any warranties. Use it at your own risk. Ensure that you have backups of important data before running the script.
