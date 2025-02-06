# Donation-Collection-System

Project Link : https://dcs-frontend.vercel.app/
<br/>
Backend API Link : https://dcs-backend.onrender.com/
<br />
Note : Go to backend first to start server then try project link....

Environment Varriable For Backend
```bash
DATABASE_HOST=
DATABASE_PORT=
DATABASE_USER=
DATABASE_PASSWORD=
DATABASE_NAME=
JWT_SECRET=
JWT_EXPIRES_IN=
FRONTEND_URL=
```
Environment Varriable For Frontend
```bash
NEXT_PUBLIC_API_URL = server url
```

### API Documents

```bash
/auth/login, POST
Request : 

{
    "email": "user@gmail.com",
    "password": "1234"
}

Response: 
{
    "accessToken": "eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9................."
}
```

```bash
/users, POST
Request : 
{
    
    "email": "test@gmail.com",
    "password": "1234",
    "mobileNumber": "01305889899",
    "role": "user"
}
```
```bash
/users/admin, POST
{
    
    "email": "admin2@gmail.com",
    "password": "1234",
    "mobileNumber": "01305889009",
    "role": "admin"
}
```
```bash
/donations, POST
Response: 
{
    
    "donorName": "Jihad",
    "amount": 2000,
    "mobileNumber": "01805889009",
    "message": "For Skill"
}
```
Without Post All the Donation API need Authentication (Without Post Method)

```bash
/donations/:id, PATCH
Request : 
{
    "amount": 5000
}
```

```bash
/donations/:id, DELETE
```
```bash
/donations/report/summary, GET

{
    "totalDonors": 5,
    "totalAmount": 11000
}
```
```bash
/donations/report/donors, GET (If any donars donate multiple time then donation will be marged)

[
    {
        "donorName": "Rahat",
        "mobileNumber": "01305658505",
        "totalAmount": 5000
    },
    {
        "donorName": "Ismail",
        "mobileNumber": "01305685855",
        "totalAmount": 1000
    },
    {
        "donorName": "Sabbir",
        "mobileNumber": "01335766541",
        "totalAmount": 1000
    },
    {
        "donorName": "Rony",
        "mobileNumber": "01627962323",
        "totalAmount": 2000
    },
    {
        "donorName": "Jihad",
        "mobileNumber": "01805889009",
        "totalAmount": 2000
    }
]
```
```bash
All donation Data 
/donations/history, GET
[
    {
        "id": 10,
        "donorName": "Jihad",
        "amount": "2000.00",
        "mobileNumber": "01805889009",
        "message": "For Skill",
        "donationDate": "2025-01-31T12:48:44.367Z",
        "deletedAt": null
    },
    {
        "id": 9,
        "donorName": "Sabbir",
        "amount": "1000.00",
        "mobileNumber": "01335766541",
        "message": "Done",
        "donationDate": "2025-01-31T10:08:14.987Z",
        "deletedAt": null
    },
    {
        "id": 6,
        "donorName": "Ismail",
        "amount": "1000.00",
        "mobileNumber": "01305685855",
        "message": "donate",
        "donationDate": "2025-01-30T06:52:57.594Z",
        "deletedAt": null
    },
    {
        "id": 5,
        "donorName": "Rony",
        "amount": "2000.00",
        "mobileNumber": "01627962323",
        "message": "donate success",
        "donationDate": "2025-01-30T06:22:55.561Z",
        "deletedAt": null
    },
    {
        "id": 3,
        "donorName": "Rahat",
        "amount": "5000.00",
        "mobileNumber": "01305658505",
        "message": "donate success",
        "donationDate": "2025-01-30T06:20:59.553Z",
        "deletedAt": null
    }
]
```








