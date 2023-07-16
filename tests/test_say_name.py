from greetings.say import say_name


def test_hello():
    name = "Farhat"
    assert say_name(name) == f'hello, {name}'
    print("Test passed!")
