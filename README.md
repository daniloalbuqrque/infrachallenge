# infrachallenge
#
## For all of the steps below, I am considering you already built the image.
For the first: 
- Once you have the docker file and the "app" folder downloaded, you have to execute the command `docker run -p 3000:3000 [CONTAINER ID]` in the CLI to get the container running. Once we get this running, we have to access `localhost:3000` in our browser;
- If we want to run this thing using the YAML file. We just have to:
1. Execute the `kubectl apply -f [NAME OF THE YAML FILE]`
2. When the cluster and nodes are ready, we just have to expose the Deployment service using the command `kubectl expose deployment [app] --type=LoadBalancer --name=my-service`
3. After that, we can just get the external IP to test, running the last command `kubectl get services my-service`

If you do all of these steps correctly, the service should be running at `EXTERNAL_IP:3000` address.
