# Assignment 


deploy this node.js statless app 
make sure you push the image on dockerhub

# Useful info

### Expose port

ENV PORT 80
EXPOSE 80

### this the base image 

node:18-slim


### command to run the app

CMD ["node", "server.js"]








