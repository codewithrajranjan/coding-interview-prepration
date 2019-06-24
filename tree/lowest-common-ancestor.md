### Lowest common ancestor

- lowest common ancestor two nodes n1 and n2 is defined as
  - such a node whose decendent are both n1 and n2
  - the ancestor is farherest from the root not
-  the root node is always a ancestor but that my or not be the lowest common ancestor



## Algorithm used

- do post order traversal
- left node then right node then root
- when left subtree recursion is completed and right sub tree recusion is completed
  - then check if both left and right subtree is not null which means that the current node is the lca
  - if left subtree has one node and the the right subtree has null then propagat the value returned from left subtree
  - if right subtree has one node and the left subtree has null then propagate the value returned from right sub tree



```java

package selftuts;



class Selftuts{

        public static void main(String[] args) {
                BinaryTree bt = new BinaryTree();
                TreeNode result = bt.lowestCommonAncestor(2,4);
                System.out.println(result.data);
        }
}

class TreeNode {
        int data;
        TreeNode leftNode = null;
        TreeNode rightNode = null;
        public TreeNode(int data) {
                this.data = data;
        }
}

class BinaryTree {
                /*  we will be creating this tree
                 *                                      1
                 *                               /     \
                 *                          2       3
                 *                        /   \    /  \ 
                 *                       4     5  6    7
                 *                                              
                 */
                
                TreeNode root = null;
                public BinaryTree() {
                        // Tree creation code starts 
                        TreeNode one = new TreeNode(1);
                        TreeNode two = new TreeNode(2);
                        TreeNode three = new TreeNode(3);
                        TreeNode four = new TreeNode(4);
                        TreeNode five = new TreeNode(5);
                        TreeNode six = new TreeNode(6);
                        TreeNode seven = new TreeNode(7);

                        one.leftNode = two;
                        one.rightNode = three;
                        two.leftNode = four;
                        two.rightNode = five;
                        three.leftNode = six;
                        three.rightNode = seven;
                        // Tree creation code ends

                        this.root = one;

                }       
                
                public TreeNode lowestCommonAncestor(int node1,int node2) {
                        return lowestCommonAncestorUtil(node1, node2, this.root);
                }
                private TreeNode lowestCommonAncestorUtil(int node1,int node2,TreeNode root) {
                        
                        // first we need the recursion exit condition
                        // if the value of node is null then exit
                        if(root==null) {
                                return null;
                        }
                        
                        // if the data of current node is equal to either n1 and n2 then return the node
                        if(root.data == node1 || root.data == node2) {
                                return root;
                        }
                        
                        // we will post order traversal
                        
                        // fist left node
                        TreeNode left = lowestCommonAncestorUtil(node1, node2, root.leftNode);
                        // then right node
                        TreeNode right = lowestCommonAncestorUtil(node1, node2, root.rightNode);

                        // when the recursion from left and right has been completed then check if both left or right 
                        

                        // this is the main algo 
                        // both left and right are not null which left subtree contains one node and right subtree contains another node
                        if(left != null && right !=null) {
                                return root;
                        }else if(left!=null && right == null) {
                                return left;
                        }else if(left == null && right!=null) {
                                return right;
                        }else {
                                return null;
                        }
                        
                }
                                
}


```

