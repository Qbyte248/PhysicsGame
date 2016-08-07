package de.kanteran.swiftnetworklib;

import java.io.PrintStream;

public class SwiftNetworkLib {

	private PrintStream out, err;

	public SwiftNetworkLib() {
		out = System.out;
		err = System.err;
	}

	public void send(String packet) {
		out.println(packet);
	}

	public void senErr(String packet) {
		err.println(packet);
	}

}
