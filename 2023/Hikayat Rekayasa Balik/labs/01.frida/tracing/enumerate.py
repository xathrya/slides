# Enumerate imports
#
# Run: python sniff.py 
import frida
import sys


def on_message(message, data):
    print(message)


def load_script(script_name):
    with open(script_name) as f:
        script = f.read() 
    return script 


def main(proc, modname):
    # Attach on running process
    session = frida.attach(proc)
    
    script = session.create_script("""
        Module.enumerateImports("%s", {
            onMatch: function(imp) {
                console.log("Module Type: " + imp.type + " | name: " + imp.name + " | Module: " + imp.module + " | Address: " + imp.address.toString());
            },
            onComplete: function() {}
        })
    """ % modname)

    # Set a callback, when frida is sending a string, we print it out
    script.on('message', on_message)

    # Load the script
    script.load()

    # Delay
    # Execution is happened on other process so we need to make our script 
    # running all the way to the end
    try:
        while True:
            sys.stdin.read()
    except KeyboardInterrupt:
        session.detach()
        sys.exit(0)


if __name__ == '__main__':
    if len(sys.argv) < 3:
        print(f"Usage: {__file__} <process name or PID> <module name>")
        sys.exit(1)
    
    try:
        target = int(sys.argv[1])
    except ValueError:
        target = sys.argv[1]
    
    main()