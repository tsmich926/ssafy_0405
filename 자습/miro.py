#상하좌우
dr = [-1,1,0,0]
dc = [0,0,-1,1]

def dfs(tmp,row,col):
    global res
    if row == N-1 and col == M-1:
        res = min(tmp,res)
        return

    else:
        if arr[row][col] == 1:
            visited[row][col] = 1
            # print(row, col)
            for i in range(4):
                newr = row+dr[i]
                newc = col+dc[i]
                if 0<=newr<N and 0<=newc<M and visited[newr][newc]==-1:
                    dfs(tmp+1,newr,newc)


T = int(input())
for tc in range(1,T+1):
    N,M = map(int,input().split())
    arr = [list(map(int,input())) for _ in range(N)]
    visited = [[-1]*M for _ in range(N)]
    res = 9999
    dfs(1,0,0)
    print(f'{tc} {res}')