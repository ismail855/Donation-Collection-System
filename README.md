# Donation-Collection-System
/auth/login, POST
Request Example : 

{
    "email": "user@gmail.com",
    "password": "1234"
}

Response: 

{
"accessToken": 	"eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJlbWFpbCI6InVzZXJAZ21haW		wuY29tIiwic3ViIjo5LCJyb2xlIjoidXNlciIsImlhdCI6MTczODMyNjU4OCwiZXhwIjoxNzM4MzMwMTg4fQ.KQ_ALplHz636tALMaoTig3CfZs7eHqbpsQXCUAVfHoc"
}


/users, POST
Request Example: 
{
    
    "email": "test@gmail.com",
    "password": "1234",
    "mobileNumber": "01305889899",
    "role": "user"
}


/users/admin, POST
{
    
    "email": "admin2@gmail.com",
    "password": "1234",
    "mobileNumber": "01305889009",
    "role": "admin"
}

/donations, POST
{
    
    "donorName": "Jihad",
    "amount": 2000,
    "mobileNumber": "01805889009",
    "message": "For Skill"
}

/ /donations/1
{
  "amount": 2000
}

/donations/:id, delete 
This API need Bearer Token;

http://localhost:9000/donations/1



/donations/:id, PATCH
/donations/:id, DELETE

/donations/report/summary, GET

/donations/report/donors, GET

/donations/history, GET






