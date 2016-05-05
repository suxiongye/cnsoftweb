package bean;

import java.util.ArrayList;

public abstract class Path {
	protected ArrayList<Node> nodes;

	public ArrayList<Node> getNodes() {
		return nodes;
	}

	public void setNodes(ArrayList<Node> nodes) {
		this.nodes = nodes;
	}

}
