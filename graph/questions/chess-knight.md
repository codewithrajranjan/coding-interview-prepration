### Chess Knight problem : find the shortest path from source to destination

- this question is a classical example of finding shortest path using breadth first search
- because we can do breadth first search and since each move of knight can be considered as same weight. 
- Here we will consider the starting node then find all the possible moves that can be performed from this node
  - node will have row, col and dist properties
- during bfs we will update the dist value of adjacent node as 1+ dist value of parent node



```java

package selftuts;

import java.util.LinkedList;
import java.util.Queue;

// chess knight problem. find shortest path from source to destination

// problem is from : https://www.techiedelight.com/chess-knight-problem-find-shortest-path-source-destination/





class Selftuts{

	public static void main(String[] args) {

		Chess ch = new Chess();
		Node startNode = new Node(7,0,0);
		Node endNode = new Node(0,7,0);
		ch.findShortestPath(startNode, endNode);

	}
}

class Node {
	int row;
	int col;
	int dist;
	public Node(int row,int col,int dist) {
		this.row = row;
		this.col = col;
		this.dist = dist;
	}
}

class Chess {
	
	int[][] board;
	
	public Chess() {
		this.board = new int[8][8];
	}
	
	public void findShortestPath(Node startNode,Node endNode) {
		int[][] visited = new int[8][8];
		Queue<Node> q = new LinkedList<Node>();

		q.add(startNode);
		
		int[] possibleRow = {2,2,-2,-2,1,-1,1,-1};
		int[] possibleCol = {1,-1,1,-1,2,2,-2,-2};
		Node currentNode = null;
		
		while(q.isEmpty()==false) {
			currentNode = q.remove();
			int currentRow = currentNode.row;
			int currentCol = currentNode.col;
			visited[currentRow][currentCol] = 1;
			// checking if we have reached the end node or node
			if(currentNode.row == endNode.row && currentNode.col == endNode.col) {
				break;
			}
			
			// finding all the possible moves 
			for(int i=0;i<8;i++) {
				int newRow = currentRow + possibleRow[i];
				int newCol = currentCol + possibleCol[i];
				
				boolean canMove = isMovePossible(newRow,newCol);
				if(canMove==true && visited[newRow][newCol]==0) {
					// first we need to check if the destination node is reached or not
					Node adjacentNode = new Node(newRow,newCol,currentNode.dist+1);
					q.add(adjacentNode);
				}
			}
			
		}
		System.out.println(currentNode.dist);
		
	}
	
	public boolean isMovePossible(int row,int col) {
		if(row<0 || row>7 || col<0 || col>7) {
			return false;
		}
		return true;
	}
}


```
