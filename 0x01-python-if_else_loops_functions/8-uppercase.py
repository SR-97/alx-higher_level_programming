def uppercase(s):
    for char in s:
        ascii_val = ord(char)
        if ascii_val >= 97 and ascii_val <= 122:
            ascii_val -= 32
        print("{:c}".format(ascii_val), end="")
    print()
