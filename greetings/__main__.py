import sys
from greetings import say


def cli():
    say.say_name(sys.argv[1])


if __name__ == "__main__":
    cli()
