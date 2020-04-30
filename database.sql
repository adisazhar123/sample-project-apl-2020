create table ideas
(
    id           varchar(36)  not null
        primary key,
    title        varchar(255) null,
    description  mediumtext   null,
    author_name  varchar(255) null,
    author_email varchar(255) null,
    votes        int          null
);

create table ratings
(
    id      int auto_increment
        primary key,
    value   int          null,
    name    varchar(255) null,
    idea_id varchar(255) null,
    constraint ratings_ratings_id_fk
        foreign key (idea_id) references ideas (id)
);

