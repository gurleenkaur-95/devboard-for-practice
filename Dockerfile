
FROM node:24

WORKDIR /app/frontend

COPY frontend .

RUN npm install --legacy-peer-deps 

EXPOSE 5173

CMD ["npm", "run", "dev", "--", "--host", "0.0.0.0", "--port", "5173"]
