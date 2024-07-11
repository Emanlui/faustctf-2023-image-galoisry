
echo tear down old state
docker-compose down

# TODO: correct uris
echo delete old images
docker image rm localhost:8000/image-galoisry-deps
docker image rm localhost:8000/image-galoisry

echo build new images
docker build -t localhost:8000/image-galoisry-deps -f image-galoisry/Dockerfile.deps ./image-galoisry
docker build -t localhost:8000/image-galoisry -f image-galoisry/Dockerfile ./image-galoisry

echo start container
docker-compose up
