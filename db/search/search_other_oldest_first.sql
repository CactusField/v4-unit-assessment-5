SELECT p.id AS post_id, title, content, img, profile_pic, date_created, upvotes, username AS author_username FROM helo_posts p
JOIN helo_users u on u.id = p.author_id
where p.author_id != $1
ORDER BY date_created ASC;