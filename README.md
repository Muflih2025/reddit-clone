# Reddit Clone

A full-featured Reddit clone application built with modern web technologies, allowing users to create communities, share posts, comment, and engage with the platform.

## 📋 Table of Contents

- [Features](#features)
- [Tech Stack](#tech-stack)
- [Project Structure](#project-structure)
- [Prerequisites](#prerequisites)
- [Installation](#installation)
- [Configuration](#configuration)
- [Running the Application](#running-the-application)
- [API Documentation](#api-documentation)
- [Usage Guide](#usage-guide)
- [Contributing](#contributing)
- [License](#license)
- [Support](#support)

## ✨ Features

### Core Functionality
- **User Authentication**: Secure user registration, login, and profile management
- **Communities**: Create and manage custom communities (subreddits)
- **Posts**: Create, edit, delete, and browse posts within communities
- **Comments**: Thread-based commenting system with nested replies
- **Voting System**: Upvote/downvote posts and comments
- **Search**: Search across posts, communities, and users
- **User Profiles**: View user profiles with post history and karma points
- **Notifications**: Real-time updates for interactions and mentions

### Additional Features
- **Moderation**: Community moderators can manage content and members
- **Media Support**: Upload and embed images and videos
- **Trending**: Discover trending posts and communities
- **Bookmarks**: Save posts for later viewing
- **Direct Messaging**: Private messaging between users
- **Dark Mode**: Toggle between light and dark themes

## 🛠 Tech Stack

### Frontend
- **React**: UI library for building interactive components
- **Redux**: State management
- **Axios**: HTTP client for API requests
- **React Router**: Client-side routing
- **Tailwind CSS** / **CSS Modules**: Styling
- **Socket.io-client**: Real-time communication

### Backend
- **Node.js**: JavaScript runtime
- **Express.js**: Web framework
- **MongoDB**: NoSQL database
- **Mongoose**: MongoDB object modeling
- **JWT**: JSON Web Tokens for authentication
- **Socket.io**: Real-time bidirectional communication
- **Multer**: File upload middleware

### Development Tools
- **npm/yarn**: Package managers
- **Git**: Version control
- **Docker**: Containerization (optional)

## 📁 Project Structure

```
reddit-clone/
├── client/                    # React frontend
│   ├── src/
│   │   ├── components/       # Reusable React components
│   │   ├── pages/            # Page components
│   │   ├── redux/            # Redux store, actions, reducers
│   │   ├── services/         # API service functions
│   │   ├── styles/           # Global styles and CSS modules
│   │   ├── utils/            # Utility functions
│   │   ├── App.jsx           # Main App component
│   │   └── index.js          # Entry point
│   ├── public/               # Static assets
│   ├── package.json          # Frontend dependencies
│   └── .env.example          # Environment variables template
│
├── server/                    # Node.js/Express backend
│   ├── src/
│   │   ├── models/           # Database models (User, Post, Comment, etc.)
│   │   ├── routes/           # API route definitions
│   │   ├── controllers/      # Route controllers/handlers
│   │   ├── middleware/       # Express middleware
│   │   ├── services/         # Business logic services
│   │   ├── utils/            # Utility functions
│   │   ├── config/           # Configuration files
│   │   └── app.js            # Express app setup
│   ├── uploads/              # User uploaded files
│   ├── package.json          # Backend dependencies
│   ├── .env.example          # Environment variables template
│   └── server.js             # Server entry point
│
├── docs/                      # Documentation
├── .gitignore               # Git ignore rules
└── README.md                # This file
```

## 📦 Prerequisites

Before getting started, ensure you have the following installed:

- **Node.js** (v14.0.0 or higher) - [Download](https://nodejs.org/)
- **npm** (v6.0.0 or higher) or **yarn** (v1.22.0 or higher)
- **MongoDB** (v4.4 or higher) - [Download](https://www.mongodb.com/try/download/community)
- **Git** - [Download](https://git-scm.com/)

## 🚀 Installation

### 1. Clone the Repository

```bash
git clone https://github.com/Muflih2025/reddit-clone.git
cd reddit-clone
```

### 2. Install Backend Dependencies

```bash
cd server
npm install
# or
yarn install
```

### 3. Install Frontend Dependencies

```bash
cd ../client
npm install
# or
yarn install
```

## ⚙️ Configuration

### Backend Configuration

1. Navigate to the `server` directory
2. Create a `.env` file from the template:

```bash
cp .env.example .env
```

3. Update the `.env` file with your configuration:

```env
# Server Configuration
PORT=5000
NODE_ENV=development

# Database Configuration
MONGODB_URI=mongodb://localhost:27017/reddit-clone
DB_NAME=reddit-clone

# JWT Configuration
JWT_SECRET=your_jwt_secret_key_here
JWT_EXPIRE=7d

# File Upload Configuration
MAX_FILE_SIZE=5242880
UPLOAD_PATH=./uploads

# Email Configuration (Optional)
SMTP_HOST=smtp.gmail.com
SMTP_PORT=587
SMTP_USER=your_email@gmail.com
SMTP_PASS=your_app_password

# Client URL (for CORS)
CLIENT_URL=http://localhost:3000
```

### Frontend Configuration

1. Navigate to the `client` directory
2. Create a `.env` file:

```bash
cp .env.example .env
```

3. Update the `.env` file:

```env
REACT_APP_API_BASE_URL=http://localhost:5000/api
REACT_APP_SOCKET_URL=http://localhost:5000
```

## 🏃 Running the Application

### Start MongoDB

Ensure MongoDB is running on your system. You can verify with:

```bash
mongosh # or mongo for older versions
```

### Start the Backend Server

```bash
cd server
npm start
# or
yarn start
```

The server should run on `http://localhost:5000` (or the port specified in `.env`)

### Start the Frontend Development Server

Open a new terminal window:

```bash
cd client
npm start
# or
yarn start
```

The application should automatically open at `http://localhost:3000`

### Production Build

**Frontend:**
```bash
cd client
npm run build
```

**Backend:**
```bash
cd server
npm run build
```

## 📚 API Documentation

### Authentication Endpoints

- `POST /api/auth/register` - Register a new user
- `POST /api/auth/login` - Login user
- `POST /api/auth/logout` - Logout user
- `GET /api/auth/me` - Get current user
- `POST /api/auth/refresh-token` - Refresh JWT token

### User Endpoints

- `GET /api/users/:id` - Get user profile
- `PUT /api/users/:id` - Update user profile
- `GET /api/users/:id/posts` - Get user's posts
- `GET /api/users/:id/comments` - Get user's comments
- `POST /api/users/:id/follow` - Follow a user
- `DELETE /api/users/:id/follow` - Unfollow a user

### Community Endpoints

- `GET /api/communities` - List all communities
- `POST /api/communities` - Create a new community
- `GET /api/communities/:id` - Get community details
- `PUT /api/communities/:id` - Update community
- `DELETE /api/communities/:id` - Delete community
- `POST /api/communities/:id/subscribe` - Subscribe to community
- `DELETE /api/communities/:id/subscribe` - Unsubscribe from community

### Post Endpoints

- `GET /api/posts` - List all posts
- `POST /api/posts` - Create a new post
- `GET /api/posts/:id` - Get post details
- `PUT /api/posts/:id` - Update post
- `DELETE /api/posts/:id` - Delete post
- `POST /api/posts/:id/upvote` - Upvote a post
- `POST /api/posts/:id/downvote` - Downvote a post

### Comment Endpoints

- `GET /api/comments/:postId` - Get comments for a post
- `POST /api/comments` - Create a comment
- `PUT /api/comments/:id` - Update comment
- `DELETE /api/comments/:id` - Delete comment
- `POST /api/comments/:id/upvote` - Upvote a comment
- `POST /api/comments/:id/downvote` - Downvote a comment

## 📖 Usage Guide

### Creating a Community

1. Log in to your account
2. Click on "Create Community" button
3. Fill in the community details:
   - Community name
   - Description
   - Icon/Banner (optional)
4. Click "Create" to launch your community

### Making a Post

1. Navigate to the desired community
2. Click "Create Post"
3. Choose content type (Text, Link, or Image/Video)
4. Fill in the title and content
5. Click "Post" to submit

### Engaging with Content

- **Upvote/Downvote**: Click the arrow icons on posts or comments
- **Comment**: Click the comment icon and type your response
- **Share**: Use the share button to spread content
- **Save**: Click the bookmark icon to save for later

### Managing Your Profile

- Click your profile icon in the top-right corner
- View your saved posts, history, and karma
- Customize your profile settings and preferences

## 🤝 Contributing

Contributions are welcome! Please follow these steps:

1. Fork the repository
2. Create a feature branch (`git checkout -b feature/AmazingFeature`)
3. Commit your changes (`git commit -m 'Add some AmazingFeature'`)
4. Push to the branch (`git push origin feature/AmazingFeature`)
5. Open a Pull Request

Please ensure your code follows the project's coding standards and includes appropriate tests.

## 📄 License

This project is licensed under the MIT License - see the [LICENSE](LICENSE) file for details.

## 🆘 Support

For support, email support@reddit-clone.com or open an issue on the [GitHub Issues](https://github.com/Muflih2025/reddit-clone/issues) page.

### Troubleshooting

**MongoDB Connection Error**
- Ensure MongoDB is running: `mongosh` or `mongo`
- Check your MONGODB_URI in `.env`

**Port Already in Use**
- Change the PORT in `.env` file
- Or kill the process using the port: `lsof -ti:5000 | xargs kill -9`

**CORS Errors**
- Verify CLIENT_URL in backend `.env` matches your frontend URL
- Check that both servers are running

**Module Not Found**
- Delete `node_modules` and `package-lock.json`
- Run `npm install` again

---

**Last Updated**: January 6, 2026

Built with ❤️ by [Muflih2025](https://github.com/Muflih2025)
