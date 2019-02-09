import os
cmd = "soundconverter -b -m \"audio/mpeg\" -s \".mp3\" *.mp4"
video_name = input()
cmd = cmd.replace("*", video_name)
os.system(cmd)
