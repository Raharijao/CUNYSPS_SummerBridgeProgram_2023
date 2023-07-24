select reviews.username, video.title, reviews.rating, reviews.review_text, video.url
from reviews
INNER JOIN video ON reviews.video = video.v_id