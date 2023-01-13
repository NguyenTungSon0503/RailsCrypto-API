Backend: https://github.com/Deanout/doorkeeper
<space></space>
Frontend : https://github.com/Deanout/react-wishlist-series/tree/main/frontend
HOW TO RUN BACKEND AND FRONTEND:
1. clone
2. bundle install
3. rails db:drop, rails db:create => rails db:seed
4. get client_id and client_secret: 
<space></space>
  run rails console <space></space>
  application = Doorkeeper::Application.where(name: "").first<space></space>
  application.uid<space></space>
  application.secret<space></space>
  
