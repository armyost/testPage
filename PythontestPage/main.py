import socket

# Press the green button in the gutter to run the script.
if __name__ == '__main__':
    print("Host Name ", socket.gethostname())

    print("IP Address(Internal) : ", socket.gethostbyname(socket.gethostname()))

    print("IP Address(External) : ", socket.gethostbyname(socket.getfqdn()))

# See PyCharm help at https://www.jetbrains.com/help/pycharm/
