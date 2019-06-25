## Shortest path in a maze


- this is a classical problem that can be solved using bfs
- because every move we take is of weight 1 so bfs can be used to get the shortest path


```java

package selftuts;

import java.util.LinkedList;
import java.util.Queue;

// shortest path in a maze

// problem is from : https://www.techiedelight.com/lee-algorithm-shortest-path-in-a-maze/





class Selftuts{

        public static void main(String[] args) {
                
                Maze m = new Maze();
                Node source = new Node(0,0,0);
                Node end = new Node(7,5,0);
                m.findShortestPath(source, end);

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


class Maze {
        
        
        
        // only we can go to the cell where 1 is there
        int[][] maze ={
                                { 1, 1, 1, 1, 1, 0, 0, 1, 1, 1 },
                                { 0, 1, 1, 1, 1, 1, 0, 1, 0, 1 },
                                { 0, 0, 1, 0, 1, 1, 1, 0, 0, 1 },
                                { 1, 0, 1, 1, 1, 0, 1, 1, 0, 1 },
                                { 0, 0, 0, 1, 0, 0, 0, 1, 0, 1 },
                                { 1, 0, 1, 1, 1, 0, 0, 1, 1, 0 },
                                { 0, 0, 0, 0, 1, 0, 0, 1, 0, 1 },
                                { 0, 1, 1, 1, 1, 1, 1, 1, 0, 0 },
                                { 1, 1, 1, 1, 1, 0, 0, 1, 1, 1 },
                                { 0, 0, 1, 0, 0, 1, 1, 0, 0, 1 },
                        };
        
        public void findShortestPath(Node source,Node end) {
                // we will do bfs
                int totalRows = this.maze.length;
                int totalCols = this.maze[0].length;
                
                int[][] visited = new int[totalRows][totalCols];
                
                Queue<Node> q = new LinkedList<Node>();
                
                q.add(source);
                int[] possibleRow = {1,-1,0,0};
                int[] possibleCol = {0,0,1,-1};
                Node currentNode = null;
                
                while(q.isEmpty()==false) {
                        currentNode = q.remove();
                        int currentRow = currentNode.row;
                        int currentCol = currentNode.col;
                        
                        // checking we reached the destination
                        if(currentRow == end.row && currentCol == end.col) {
                                break;
                        }
                        
                        // mark the node as visited
                        visited[currentRow][currentCol] = 1;
                        
                        
                        
                        
                        // now we will find all the adjacent node
                        for(int i=0;i<4;i++) {
                                int newRow = currentRow + possibleRow[i];
                                int newCol = currentCol + possibleCol[i];
                                boolean canMove = canMove(newRow,newCol);
                                if(canMove == true && visited[newRow][newCol]==0) {
                                        Node newNode = new Node(newRow,newCol,currentNode.dist+1);
                                        q.add(newNode);
                                }
                        }
                        
                }
                System.out.println(currentNode.dist);
                
        }
        public boolean canMove(int row,int col) {
                int maxRows = this.maze.length-1;
                int maxCols = this.maze[0].length-1;
                
                if(row<0 || row>maxRows || col<0 || col>maxCols) {
                        return false;
                }
                return true;
        }
}




```

