import yt-dlp
import os

video_url = ""

output_template = "downloaded_vids/%(title)s.%(ext)s"

os.makedirs("downloaded_vids", exist_ok=True)

ytdl_opts - {
    'outtmpl': output_template,
    'format': 'bestvideo+bestaudio/best', #best quality
    'merge_output_format': 'mp4',

}

# Download video

with yt_dlp.YoutubeDL(ytdl_opts) as ydl:
    ydl.download([video_url])
