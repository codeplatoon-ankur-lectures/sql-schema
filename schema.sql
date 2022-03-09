DROP TABLE IF EXISTS user_accounts CASCADE;
DROP TABLE IF EXISTS user_profiles;
DROP TABLE IF EXISTS posts;
DROP TABLE IF EXISTS comments;
DROP TABLE IF EXISTS reactions;
DROP TABLE IF EXISTS post_reactions;

-- user accounts
CREATE TABLE user_accounts (
  id SERIAL PRIMARY KEY,
  username VARCHAR(64),
  password VARCHAR(64),
  last_login_date DATE
);

-- user profiles
CREATE TABLE user_profiles (
  id SERIAL PRIMARY KEY,
  user_id INTEGER UNIQUE REFERENCES user_accounts (id), -- FK to user_accounts
  profile_photo_url TEXT,
  personal_quote TEXT
);

-- posts
CREATE TABLE posts (
  id SERIAL PRIMARY KEY,
  author_id INTEGER,
  content TEXT
);

-- comments
CREATE TABLE comments (
  id SERIAL PRIMARY KEY,
  post_id INTEGER,
  commenter_id INTEGER,
  content TEXT
);

-- reactions
CREATE TABLE reactions (
  id SERIAL PRIMARY KEY,
  type VARCHAR(32),
  icon VARCHAR(255)
);

-- post reactions (our join table)
CREATE TABLE post_reactions (
  id SERIAL PRIMARY KEY,
  post_id INTEGER,
  reaction_id INTEGER,
  user_id INTEGER
);


-- alterations...
ALTER TABLE posts
ADD CONSTRAINT fk_post_user_accounts 
FOREIGN KEY (author_id)
REFERENCES user_accounts (id);