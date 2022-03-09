-- UPDATE posts
-- SET author_id = NULL
-- WHERE author_id = 5;


-- ALTER TABLE posts
-- ADD CONSTRAINT fk_posts_user_accounts 
-- FOREIGN KEY (author_id)
-- REFERENCES user_accounts (id);

-- ALTER TABLE comments
-- ADD CONSTRAINT fk_comments_posts 
-- FOREIGN KEY (post_id)
-- REFERENCES posts (id);

-- ALTER TABLE comments
-- ADD CONSTRAINT fk_comments_users
-- FOREIGN KEY (commenter_id)
-- REFERENCES user_accounts (id);


-- ALTER TABLE post_reactions
-- ADD CONSTRAINT fk_posts_reactions_posts
-- FOREIGN KEY (post_id)
-- REFERENCES posts (id);

-- ALTER TABLE post_reactions
-- ADD CONSTRAINT fk_posts_reactions_reactions
-- FOREIGN KEY (reaction_id)
-- REFERENCES reactions (id);

-- ALTER TABLE post_reactions
-- ADD CONSTRAINT fk_posts_reactions_users
-- FOREIGN KEY (user_id)
-- REFERENCES user_accounts (id);


-- DELETE FROM post_reactions
-- WHERE id = 5;

-- ALTER TABLE post_reactions
-- ADD CONSTRAINT uq_post_reactions_posts_users
-- UNIQUE (post_id, user_id);


ALTER TABLE user_accounts
ALTER COLUMN username 
SET NOT NULL;
