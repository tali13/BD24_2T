/* simulado1: */

CREATE TABLE wish_list_will_see(
    name_wish_list_will_see CHAR(20),
    id_wish_list CHAR(20) PRIMARY KEY,
    date_of_creation int,
    fk_user_id_user CHAR(20),
    fk_genre_movie_id_film CHAR(20)
);

CREATE TABLE actor (
    date_of_birth int,
    name_actor CHAR(10),
    nationality CHAR(10),
    id_actor CHAR (10) PRIMARY KEY,
    fk_movie_id_film CHAR(10)
);

CREATE TABLE user_award (
    fk_user_id_user CHAR(20) PRIMARY KEY
);

CREATE TABLE users(
    type_of_signature int,
    id_user CHAR(20) PRIMARY KEY,
    date_of_signature int,
    name_user CHAR(80)
);

CREATE TABLE genre_movie (
    name_genre_movie CHAR(10),
    id_genre CHAR(20),
    Dramatic_comedy__ CHAR(20),
    Adventure CHAR(10),
    Chanchada CHAR(10),
    Action CHAR(10),
    Art_cinema__ CHAR (10),
    Comedy CHAR(20),
    Action_comedy__ CHAR(10),
    Horror_comedy__ CHAR(10),
    release_year CHAR(10),
    director_and_actors CHAR(10),
    indicative_rating CHAR(10),
    title CHAR(10),
    id_film CHAR(20) PRIMARY KEY,
    genre CHAR(20),
    duration CHAR(10)
);

CREATE TABLE rating (
    comment,_date int,
    note int,
    id_rating int PRIMARY KEY
);

CREATE TABLE director (
    nationality CHAR(10),
    name CHAR(80),
    id_director int PRIMARY KEY,
    date_of_birth int
);

CREATE TABLE user_basic (
    fk_user_id_user CHAR(20) PRIMARY KEY
);

CREATE TABLE have (
    fk_rating_id_rating int,
    fk_user_id_user CHAR(20)
);

CREATE TABLE see (
    fk_user_id_user CHAR(20),
    fk_movie_id_film CHAR(10)
);

CREATE TABLE have (
    fk_movie_id_filmint,
    fk_director_id_director int
);

CREATE TABLE have (
    fk_genre_movie_id_film CHAR(20),
    fk_rating_id_rating int
);
 
ALTER TABLE wish list_will_see ADD CONSTRAINT FK_wish list_will_see_2
    FOREIGN KEY (fk_user_id_user)
    REFERENCES user (id_user);
 
ALTER TABLE wish list_will_see ADD CONSTRAINT FK_wish list_will_see_3
    FOREIGN KEY (fk_genre_movie_id_film)
    REFERENCES genre_movie (id_film);
 
ALTER TABLE actor ADD CONSTRAINT FK_actor_2
    FOREIGN KEY (fk_movie_id_film)
    REFERENCES ??? (???);
 
ALTER TABLE user_award ADD CONSTRAINT FK_user_award_2
    FOREIGN KEY (fk_user_id_user)
    REFERENCES user (id_user)
    ON DELETE CASCADE;
 
ALTER TABLE user_basic ADD CONSTRAINT FK_user_basic_2
    FOREIGN KEY (fk_user_id_user)
    REFERENCES user (id_user)
    ON DELETE CASCADE;
 
ALTER TABLE have ADD CONSTRAINT FK_have_1
    FOREIGN KEY (fk_rating_id_rating)
    REFERENCES rating (id_rating)
    ON DELETE RESTRICT;
 
ALTER TABLE have ADD CONSTRAINT FK_have_2
    FOREIGN KEY (fk_user_id_user)
    REFERENCES user (id_user)
    ON DELETE RESTRICT;
 
ALTER TABLE see ADD CONSTRAINT FK_see_1
    FOREIGN KEY (fk_user_id_user)
    REFERENCES user (id_user)
    ON DELETE RESTRICT;
 
ALTER TABLE see ADD CONSTRAINT FK_see_2
    FOREIGN KEY (fk_movie_id_film)
    REFERENCES ??? (???);
 
ALTER TABLE have ADD CONSTRAINT FK_have_1
    FOREIGN KEY (fk_movie_id_film???)
    REFERENCES ??? (???);
 
ALTER TABLE have ADD CONSTRAINT FK_have_2
    FOREIGN KEY (fk_director_id_director)
    REFERENCES director (id_director)
    ON DELETE SET NULL;
 
ALTER TABLE have ADD CONSTRAINT FK_have_1
    FOREIGN KEY (fk_genre_movie_id_film)
    REFERENCES genre_movie (id_film)
    ON DELETE RESTRICT;
 
ALTER TABLE have ADD CONSTRAINT FK_have_2
    FOREIGN KEY (fk_rating_id_rating)
    REFERENCES rating (id_rating)
    ON DELETE RESTRICT;