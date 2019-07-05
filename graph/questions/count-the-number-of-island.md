## count the number of island

- referece : https://www.techiedelight.com/count-the-number-of-islands/
- A binary matrix is given with value of cell as 0 or 1
- we have to find the number of island. An island is formed by connected ones


solution 
- this is graph traversal question
- create a similar martrix which will be labelled as the vistied and it keeps track of the cell which have been visited
- now we will run bfs or dfs until all the cells of the visited matrix is not equal to 1. one important thing to note is we need n't to care that the cells which are marked as water is visisted or not
- so if the matrix has disconnected components then we will need multiple bfs or dfs iteration to mark all the cell as visited
- so the number of time bfs or dfs is run will be the answer that there are that many island


- BFS based solution

```java

package selftuts;

import java.util.LinkedList;
import java.util.Queue;

// find number of island 

class Selftuts{

	public static void main(String[] args) {
		
		Graph g = new Graph();
		int totalIsland = 0;
		for(int i=0;i<10;i++) {
			for(int j=0;j<10;j++) {
				if(g.visited[i][j]==0 && g.mat[i][j]==1) {
					g.findTotalIsland(new Node(i,j));
					totalIsland++;
				}
			}
		}
		System.out.println(totalIsland);

	}
}


class Node {
	int row;
	int col;
	public  Node(int row,int col) {
		this.row = row;
		this.col = col;
	}
}


class Graph {
	int[][] mat={
			{ 1, 0, 1, 0, 0, 0, 1, 1, 1, 1 },
			{ 0, 0, 1, 0, 1, 0, 1, 0, 0, 0 },
			{ 1, 1, 1, 1, 0, 0, 1, 0, 0, 0 },
			{ 1, 0, 0, 1, 0, 1, 0, 0, 0, 0 },
			{ 1, 1, 1, 1, 0, 0, 0, 1, 1, 1 },
			{ 0, 1, 0, 1, 0, 0, 1, 1, 1, 1 },
			{ 0, 0, 0, 0, 0, 1, 1, 1, 0, 0 },
			{ 0, 0, 0, 1, 0, 0, 1, 1, 1, 0 },
			{ 1, 0, 1, 0, 1, 0, 0, 1, 0, 0 },
			{ 1, 1, 1, 1, 0, 0, 0, 1, 1, 1 }
		};
	int[][] visited = new int[10][10];
	
	
	public void findTotalIsland(Node source) {
		
		
		Queue<Node> q = new LinkedList<Node>();
		
		q.add(source);
		
		int[] possibleRow = {1,1,1,-1,-1,-1,0,0};
		int[] possibleCol = {0,1,-1,0,1,-1,1,-1};
		
		// now applying the bfs
		while(q.isEmpty()==false) {
			Node currentNode = q.remove();
			int currentRow = currentNode.row;
			int currentCol = currentNode.col;
			
			// mark the current Cell as visited
			this.visited[currentRow][currentCol] = 1;
			
			// from the current position we can move to eight different places
			for(int i=0;i<8;i++) {
			    int newRow = currentRow + possibleRow[i];
			    int newCol = currentCol + possibleCol[i];
			    if(canMove(newRow, newCol)==true && this.visited[newRow][newCol]==0 && this.mat[newRow][newCol]==1) {
			    	q.add(new Node(newRow,newCol));
			    }
			}

		}
		
	}
	private boolean canMove(int row,int col) {
		// out of boundary check condition
		if(row<0 || row>9 || col<0 || col>9) {
			return false;
		}
		return true;
	}
}


```




- DFS based solution

- just call the dfs until all the water cell is marked as 1 in the visited array

```java

package selftuts;


// find number of island 

class Selftuts{

	public static void main(String[] args) {
		
		Graph g = new Graph();
		int totalIsland = 0;
		for(int i=0;i<10;i++) {
			for(int j=0;j<10;j++) {
				if(g.visited[i][j]==0 && g.mat[i][j]==1) {
					g.findTotalIsland(new Node(i,j));
					totalIsland++;
				}
			}
		}
		System.out.println(totalIsland);
	}
}


class Node {
	int row;
	int col;
	public  Node(int row,int col) {
		this.row = row;
		this.col = col;
	}
}


class Graph {
	int[][] mat={
			{ 1, 0, 1, 0, 0, 0, 1, 1, 1, 1 },
			{ 0, 0, 1, 0, 1, 0, 1, 0, 0, 0 },
			{ 1, 1, 1, 1, 0, 0, 1, 0, 0, 0 },
			{ 1, 0, 0, 1, 0, 1, 0, 0, 0, 0 },
			{ 1, 1, 1, 1, 0, 0, 0, 1, 1, 1 },
			{ 0, 1, 0, 1, 0, 0, 1, 1, 1, 1 },
			{ 0, 0, 0, 0, 0, 1, 1, 1, 0, 0 },
			{ 0, 0, 0, 1, 0, 0, 1, 1, 1, 0 },
			{ 1, 0, 1, 0, 1, 0, 0, 1, 0, 0 },
			{ 1, 1, 1, 1, 0, 0, 0, 1, 1, 1 }
		};
	int[][] visited = new int[10][10];
	
	
	public void findTotalIsland(Node source) {
		// mark that as visited
		int currentRow = source.row;
		int currentCol = source.col;
		this.visited[currentRow][currentCol] = 1;

		int[] possibleRow = {1,1,1,-1,-1,-1,0,0};
		int[] possibleCol = {0,1,-1,0,1,-1,1,-1};
		
		for(int i=0;i<8;i++) {
			int newRow = currentRow + possibleRow[i];
			int newCol = currentCol + possibleCol[i];
			if(canMove(newRow,newCol)==true && this.mat[newRow][newCol]==1 && this.visited[newRow][newCol]==0) {
			    findTotalIsland(new Node(newRow,newCol));
			}
		}
		
	}
	private boolean canMove(int row,int col) {
		// out of boundary check condition
		if(row<0 || row>9 || col<0 || col>9) {
			return false;
		}
		return true;
	}
}



```





