# Computational-Motion-Planning
This repo contains code that drives the robot's decision-making to achieve its goals.

The first assignment that I will be focusing on is Dijkstra's algorithm. What is Dijkstra's algo? Glad you asked. It is an algorithm used to find the shortest path between two nodes in 2D grid-like environments. Its inputs are your start coordinates, end coordinates, and your map. It will return the shortest path depending on how you would like to visualize it.
Let's start with the inputs:

(1) Your Map. You should input an array of any size. The array will represent the number of rows and columns of the grid. Since our goal is pathfinding, you should then proceed      to mark out the cells containing obstacles in your grid. This is the approach in the code: Create an n by n array of logical zeroes using the false(n) function. Then mark out       the free spaces in the array by setting them as true. 

(2) The second inputs are your start and end coordinates. Both the rows and columns of the two positions should be within the input map. It should not exceed the matrix dimensions.

MATLAB'S colormap function is used to visualize the free, obstacles, visited, destination, start, and cells on the list to be visited. Colors for specific cells are set by assigning them an integer that represents a certain color. i.e. you can assign all the obstacles number 1, which will mark them all black. And the free spaces by color 2, which will give them a white color. Start and End coordinates are marked by green and yellow colors respectively. To achieve this, you use the sub2ind() function in MATLAB to convert the coordinates which are in [row; column] format to linear indices to represent the nodes. You can then assign those nodes their respective colors.

Here is a summary of the logic flow:
* For each node y in the graph, set the distance from that node to other nodes to infinity.
Create an empty list.
And add distances from the start node. which is initially zero.
While that list is not zero;
Set the current node as the node in the list with the smallest distance from the start node.
Remove the current node from the list by setting it to infinity.
Visit the neighbors of the current node and visualize them accordingly.
Set the current node as the parent of the neighbor nodes.
Update the distances from the start of each of the neighbor nodes.
Collect all the parent nodes and append them to an array i.e. route as in the codes presented. 
Visualize the route nodes. *







