CREATE TABLE IF NOT EXISTS asset_deliveries (
        id SERIAL PRIMARY KEY,
        employee_name VARCHAR(30) NOT NULL,
        employee_id VARCHAR(7) NOT NULL,
        department VARCHAR(50) NOT NULL,
        assets JSONB NOT NULL,
        timestamp TIMESTAMP DEFAULT CURRENT_TIMESTAMP
      );
    

CREATE TABLE IF NOT EXISTS asset_requests (
        id SERIAL PRIMARY KEY,
        employee_name VARCHAR(30) NOT NULL,
        employee_id VARCHAR(7) NOT NULL,
        asset_name VARCHAR(100) NOT NULL,
        reason TEXT NOT NULL,
        timestamp TIMESTAMP DEFAULT CURRENT_TIMESTAMP
      );

CREATE TABLE IF NOT EXISTS assigned_assets (
        id SERIAL PRIMARY KEY,
        employee_name VARCHAR(30) NOT NULL,
        employee_id VARCHAR(7) NOT NULL,
        asset_name VARCHAR(100) NOT NULL,
        assigned_date DATE NOT NULL,
        status VARCHAR(20) NOT NULL
      );

CREATE TABLE IF NOT EXISTS rejected_requests (
        id SERIAL PRIMARY KEY,
        employee_name VARCHAR(30) NOT NULL,
        employee_id VARCHAR(7) NOT NULL,
        asset_name VARCHAR(100) NOT NULL,
        reason TEXT NOT NULL,
        rejected_date DATE NOT NULL,
        status VARCHAR(20) NOT NULL
      );     