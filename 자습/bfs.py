from collections import deque


def bfs(graph,node,visited):
    Q = deque([node])
    visited[node] = True

    while Q: #큐가 빌때까지
        v = Q.popleft()
        print(v)
        for i in graph[v]:
            if not visited[i]:
                Q.append(i)
                visited[i] = True



graph = [
    [],
    [2, 3],
    [1, 8],
    [1, 4, 5],
    [3, 5],
    [3, 4],
    [7, 8],
    [6, 8],
    [2, 6, 7]
]



visited = [False] * 9

bfs(graph,1,visited)





