#----------Stage 1--------
# step:1 base image size: 1.09 gb. 1024 mb *1.09 = 1116.16 MB (approx)
FROM node:18 AS build
WORKDIR /app
COPY package*.json ./
RUN npm install 
COPY . .
#----------Stage 2--------
# now img size 198MB (reduce size)
FROM node:18-slim
WORKDIR /app
COPY package*.json ./
RUN npm install --only=production 
COPY --from=build /app .
CMD ["npm", "start"]