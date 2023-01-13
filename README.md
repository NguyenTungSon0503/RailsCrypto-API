**CRYPTOCURRENCY PROJECT FOR WEB PRACTICE SUBJECT**  
This project use Ruby On Rails, Postgresql for backend API, React-redux Reactjs Typescript for frontend  
Ruby version: 3.1.2  
Rails version: 7.0.4  
Postgresql verison: 12.12  
Backend: https://github.com/Deanout/doorkeeper  
Frontend : https://github.com/Deanout/react-wishlist-series/tree/main/frontend  
Run backend in port 3000, frontend in port 3001  
**HOW TO RUN BACKEND AND FRONTEND:**
1. clone
2. bundle install
3. rails db:drop   
   rails db:create  
   rails db:seed  
4. get client_id and client_secret:  
  run rails console  
  application = Doorkeeper::Application.where(name: "").first  
  application.uid  
  application.secret  
5. Go to .env file in frontend directory, add client_id and client_secret

