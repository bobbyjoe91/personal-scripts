list = open("makelist.txt", "a+")

def add():
    text = input("Type your text: ")
    list.write(text + "\n")
    main()

def read():
    list.seek(0)
    text = list.read()
    print(text)
    main()

def main():
    cmd = input("Welcome! How can I help? ")
    if cmd == "add":
        add()
    elif cmd == "read":
        read()

main()