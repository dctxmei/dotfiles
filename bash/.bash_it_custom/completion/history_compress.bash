history_compress() {
    awk 'NR==FNR && !/^#/{lines[$0]=FNR;next} lines[$0]==FNR' "$HISTFILE" "$HISTFILE" > "$HISTFILE.compressed"
    if [[ "$?" -eq 0 ]]; then
        mv "$HISTFILE.compressed" "$HISTFILE"
        echo "info: History file compressed successfully."
    fi
}
