import express from 'express';

import authRoutes from "./src/auth/auth.routes";
import userRoutes from "./src/user/user.routes"
import adminRoutes from "./src/user/admin.routes";
const app = express();
app.use(express.json());

// Root route for testing
app.get('/', (req, res) => {
  res.json({ message: 'Welcome to the API!' });
});

app.use('/api/v1/auth', authRoutes);
app.use('/api/v1/user', userRoutes);
app.use('/api/v1/admin', adminRoutes);

export default app;
