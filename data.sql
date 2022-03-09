-- user accounts

-- INSERT INTO user_accounts (id, username, password, last_login_date)
-- VALUES 
--   (1, 'andrew@something.com', 'Strawberry', NULL),
--   (2, 'rebecca@something.com', 'Blueberry', '2022-03-01'),
--   (3, 'tanner@something.com', 'Banana', '2022-03-02'),
--   (4, 'terri@something.com', 'Cherry', '2022-03-04');

-- -- user profile

-- INSERT INTO user_profiles (id, user_id, profile_photo_url, personal_quote)
-- VALUES
--   (71, 1, NULL, 'I type so slowly'),
--   (62, 2, NULL, 'I have curly hair'),
--   (53, 3, NULL, 'I have never seen snow in person'),
--   (44, 4, NULL, 'I live near Lake Erie');

-- INSERT INTO user_profiles (id, user_id, profile_photo_url, personal_quote)
-- VALUES
--   (104, 4, NULL, 'This is Terri''s other profile')

-- INSERT INTO user_profiles (id, user_id, profile_photo_url, personal_quote)
-- VALUES
--   (99, 5, NULL, 'I''m a new user')

-- DELETE FROM user_profiles
-- WHERE user_id = 5;


-- INSERT INTO posts (id, author_id, content)
-- VALUES
--   (1, 1, 'Andrew''s first post'),
--   (2, 2, 'Rebecca''s first post'),
--   (3, 1, 'Andrew''s second post'),
--   (4, 2, 'Rebecca''s second post'),
--   (5, 3, 'Tanner''s first post'),
--   (6, 4, 'Terri''s first post'),
--   (7, 3, 'Tanner''s second post'),
--   (8, 4, 'Terri''s second post'),
--   (9, 5, 'Terri''s second post');


-- INSERT INTO reactions (id, "type", icon)
-- VALUES 
--   (1, 'like', NULL),
--   (2, 'funny', NULL),
--   (3, 'angry', NULL),
--   (4, 'sad', NULL),
--   (5, 'love', NULL);


INSERT INTO post_reactions (id, post_id, reaction_id, user_id)
VALUES
  (5, 2, 3, 4);