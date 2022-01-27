# Aliases for downloading contents from YouTube

alias yt-mp3='youtube-dl -x --audio-format mp3 --prefer-ffmpeg --output "~/Music/Downloads/%(title)s.%(ext)s"' # Downloads audio

alias yt-mp4='youtube-dl --format mp4 --output "~/Videos/Downloads/%(title)s.%(ext)s"' # Downloads video
