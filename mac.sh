function notify_desktop () {
	title=$1
	message=$2
	osascript -e "display notification \"$message\" with title \"$title\""
}
