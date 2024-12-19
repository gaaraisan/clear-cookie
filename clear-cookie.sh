#!/bin/bash

# Оголошення змінних для браузерів
CHROME_COOKIES="$HOME/.config/google-chrome/Default/Cookies"
CHROMIUM_COOKIES="$HOME/.config/chromium/Default/Cookies"
FIREFOX_PROFILES="$HOME/.mozilla/firefox"

# Видалення cookies для Chrome
if [ -f "$CHROME_COOKIES" ]; then
    echo "Видаляємо cookies для Google Chrome..."
    rm -f "$CHROME_COOKIES"
    echo "Cookies Chrome видалено."
else
    echo "Cookies Chrome не знайдено."
fi

# Видалення cookies для Chromium
if [ -f "$CHROMIUM_COOKIES" ]; then
    echo "Видаляємо cookies для Chromium..."
    rm -f "$CHROMIUM_COOKIES"
    echo "Cookies Chromium видалено."
else
    echo "Cookies Chromium не знайдено."
fi

# Видалення cookies для Firefox
if [ -d "$FIREFOX_PROFILES" ]; then
    echo "Видаляємо cookies для Firefox..."
    for profile in "$FIREFOX_PROFILES"/*.default*; do
        if [ -f "$profile/cookies.sqlite" ]; then
            rm -f "$profile/cookies.sqlite"
            echo "Cookies видалено для профілю: $profile"
        fi
    done
else
    echo "Firefox профілі не знайдено."
fi

# Очищення системних тимчасових файлів
echo "Очищення тимчасових файлів системи..."
rm -rf /tmp/*
echo "Системні тимчасові файли очищено."

echo "Очищення завершено!"
