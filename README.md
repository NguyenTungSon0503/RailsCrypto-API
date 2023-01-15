**CRYPTOCURRENCY PROJECT FOR WEB PRACTICE SUBJECT**  
This project use Ruby On Rails, Postgresql for backend API, React-redux,Reactjs,Typescript for frontend  
Ruby version: 3.1.2  
Rails version: 7.0.4  
Postgresql verison: 14.6  
Backend API using devise, doorkeeper, rack-cors gem  
Frontend using node(19.0.0), npm(9.2.0).  
  
**HOW TO RUN BACKEND AND FRONTEND:**
1. clone https://github.com/NguyenTungSon0503/doorkeeper-api.git
2. bundle install
3. rails db:drop   
   rails db:create  
   rails db:seed  
4. get client_id and client_secret:  
  run rails console  
  application = Doorkeeper::Application.where(name: "React").first  
  application.uid  
  application.secret  
5. Create file .env in src directory, and paste this code    
REACT_APP_BACKEND_URL="http://localhost:3000/api/v1"  
REACT_APP_CLIENT_ID="CLIENT_ID"  
REACT_APP_CLIENT_SECRET="CLIENT_SECRET"  
6. Replace client_id and client_secret  
7. Run rails s in terminal (default port 3000)
8. Go frontend directory and run npm install
9. Run npm start (port 3001)

**REFERENCE**  
Backend: https://github.com/Deanout/doorkeeper  
Frontend : https://github.com/Deanout/react-wishlist-series/tree/main/frontend 
