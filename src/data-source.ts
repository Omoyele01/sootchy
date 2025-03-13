import 'dotenv/config';
import 'reflect-metadata';
import { DataSource } from "typeorm";

const port = parseInt(process.env.DB_PORT || '5432'); // Default to 5432 if DB_PORT is not set

export const AppDataSource = new DataSource({
  type: 'postgres',
  host: process.env.DB_HOST,       // Should be 'postgres-db'
  port: port,                     // Should be 5432
  username: process.env.DB_USER,   // Should be 'yele'
  password: process.env.DB_PASS,   // Should be 'secret'
  database: process.env.DB_NAME,   // Should be 'demo'

  entities: [`${__dirname}/**/entities/*.{ts,js}`],
  migrations: [`${__dirname}/**/migrations/*.{ts,js}`],
  synchronize: false,              // Disable auto-sync in production
  logging: true,                   // Enable logging for debugging
});
