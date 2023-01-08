Before start make sure you share your xserver for local clients
`xhost +local:`

For nvidia docker:
https://nvidia.github.io/libnvidia-container/

## Doom

`cd chocolate-doom-shareware`
`docker build -t doom-image .`
`docker compose up`

## Quake

`cd quakespasm`
`docker build -t quake-image .`
`docker compose up`