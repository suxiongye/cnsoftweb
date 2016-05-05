package bean;

import java.io.BufferedReader;
import java.io.FileReader;
import java.io.IOException;
import java.util.ArrayList;

public class TimePath extends Path {
	// 从文件中初始化轨迹
	public TimePath(String fileName) throws IOException {
		this.nodes = new ArrayList<Node>();
		FileReader fr = new FileReader(fileName);
		BufferedReader br = new BufferedReader(fr);
		String line = br.readLine();
		TimeNode node = null;
		while ((line = br.readLine()) != null) {
			String position[] = line.split(",");
			node = new TimeNode(Double.parseDouble(position[0]), Double.parseDouble(position[1]), position[2]);
			if (node != null) {
				this.nodes.add(node);
				System.out.println(node);
			}
		}
		fr.close();
		br.close();
	}

	public static void main(String[] args) throws IOException {
		//TimePath tp = new TimePath("坐标点信息1(含时间).csv");
	}
}
