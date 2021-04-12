"""Custom topology example

Two directly connected switches plus a host for each switch:

   host --- switch --- switch --- host

Adding the 'topos' dict with a key/value pair to generate our newly defined
topology enables one to pass in '--topo=mytopo' from the command line.
"""

from mininet.topo import Topo

class MyTopo( Topo ):
    "Simple topology example."

    def build( self ):
        "Create custom topo."

        # Add hosts and switches
        leftHost = self.addHost( 'h1' )
        rightHost = self.addHost( 'h2' )
        leftSwitch = self.addSwitch( 's3' )
        rightSwitch = self.addSwitch( 's4' )
	topSwitch = self.addSwitch( 's5' )

        # Add links
        self.addLink( leftHost, leftSwitch , 1, 1)
        self.addLink( leftSwitch, rightSwitch , 2, 1)
        self.addLink( rightSwitch, rightHost , 2, 1)
	self.addLink( leftSwitch, topSwitch , 3 ,1)
	self.addLink( topSwitch, rightSwitch , 2, 3)


topos = { 'mytopo': ( lambda: MyTopo() ) }
