# Blog + Tasks API – Full Stack Demo

A full stack demo project showcasing a **Next.js frontend** and a **.NET 8 Web API backend** running together with **Docker Compose**.

---

## 🛠 Tech Stack
- **Frontend**: Next.js, React, TailwindCSS
- **Backend**: .NET 8, EF Core, SQLite
- **Containerization**: Docker & Docker Compose
- **Deployment**: Vercel (Frontend), Local Docker (API)

---

## 🗂 Project Structure
blog-api-project/
│── docker-compose.yml
│
├── frontend-blog/ # Next.js frontend
└── TasksApi/ # .NET backend API

---

## 🔗 Architecture Diagram (Mermaid)

```mermaid
flowchart TD
    A[Browser] --> B[Frontend\nNext.js + Tailwind\nhttp://localhost:3000]
    B --> C[Backend API\n.NET 8 + EF Core\nhttp://localhost:5178]
    C --> D[SQLite Database\ntasks.db]
🚀 How to Run
With Docker Compose (recommended)
Make sure you have Docker Desktop installed.
# from project root
docker compose up --build
Frontend → http://localhost:3000
Backend → http://localhost:5178/swagger
Without Docker
Run each service separately:
API

cd TasksApi
dotnet ef database update
dotnet run --urls http://localhost:5178
Frontend
cd frontend-blog
npm install
npm run dev
Frontend → http://localhost:3000
Backend → http://localhost:5178/swagger
📌 API Endpoints
GET /api/tasks – Get all tasks
POST /api/tasks – Add new task
PUT /api/tasks/{id} – Update task
DELETE /api/tasks/{id} – Delete task

