#include<iostream>
#include <list>

using namespace std;

class Graph
{
    int V;
    list<int> *adj;
    void DFSUtil(int v, bool visited[]);
public:
    Graph(int V);
    void addEdge(int v, int w);
    void DFS(int v);
    void BFS(int s);
};

Graph::Graph(int V)
{
    this->V = V;
    adj = new list<int>[V];
}

void Graph::addEdge(int v, int w)
{
    adj[v].push_back(w);
}

void Graph::BFS(int s)
{
	//Membuat boolean untuk menandai sudah di kunjungi
	bool *kunjungi = new bool(V);
	
	//Tandai semua verteks false
	for(int i=0;i<V;i++){
		kunjungi[i]=false;
	}
	
	//please complete the code
	
}

void Graph::DFSUtil(int v, bool visited[])
{
	//please complete the code
}

void Graph::DFS(int v)
{
	bool *visited= new bool(V);
	for(int i=0; i<V; i++){
		visited[i]=false;
	}
	DFSUtil(v,visited);
}

int main()
{
    Graph g(4);
    g.addEdge(0, 1);
    g.addEdge(0, 2);
    g.addEdge(1, 2);
    g.addEdge(2, 0);
    g.addEdge(2, 3);
    g.addEdge(3, 3);

    g.DFS(2);
    g.BFS(2);

    return 0;
}
