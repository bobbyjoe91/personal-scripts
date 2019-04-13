import os
cmd = "soundconverter -b -m \"audio/mpeg\" -s \".mp3\" *.mp4"
cmd2 = "pwd"
print("You're currently in: ")
os.system(cmd2)
video_name = input("Insert path here: ")
cmd = cmd.replace("*", "\"" + video_name + "\"")
os.system(cmd)
