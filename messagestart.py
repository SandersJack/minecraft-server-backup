from mctools import RCONClient  # Import the RCONClient

Host = 'localhost'
Port = 38016

rcon = RCONClient(Host, port=Port)

# Login to RCON:

if rcon.login('minecraft'):
    # Send command to RCON - broadcast message to all players:

    resp = rcon.command("say §4Server is Resarting! This may lag a bit hold on . . .")
    resp = rcon.command("say §bBeam me up Scotty :o")

rcon.stop() 