parrot() {
	parrot_tmp_debug=$(mktemp ./parrot.debug.XXXXXX)
	if ! ../src/parrot_run -d all -o "$parrot_tmp_debug" "$@"; then
		cat "$parrot_tmp_debug"
		rm "$parrot_tmp_debug"
		return 1
	else
		rm "$parrot_tmp_debug"
		return 0
	fi
}

# vim: set noexpandtab tabstop=4:
