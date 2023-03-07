CREATE DATABASE bowlingLeagues;

USE bowlingLeagues;

CREATE TABLE league(
    league_id INT NOT NULL AUTO_INCREMENT,
    league_name VARCHAR(50),
    league_category VARCHAR(50),
    duration_weeks INT NOT NULL,
    entry_fee INT DEFAULT 0,
    prize_pool INT DEFAULT 0,
    PRIMARY KEY(league_id)
);

CREATE TABLE bowler(
    bowler_id INT NOT NULL AUTO_INCREMENT,
    bowler_name VARCHAR(30),
    league_id INT,
    high_game INT,
    average INT,
    current_position INT,
    PRIMARY KEY(bowler_id),
    FOREIGN KEY(league_id) REFERENCES league(league_id)
);

INSERT INTO league (league_name, league_category, duration_weeks, entry_fee, prize_pool) VALUES("league1", "singles", 12, 0, 0);
INSERT INTO league (league_name, league_category, duration_weeks, entry_fee, prize_pool) VALUES("league2", "doubles", 6, 10, 100);
INSERT INTO league (league_name, league_category, duration_weeks, entry_fee, prize_pool) VALUES("league3", "singles", 14, 75, 800);
INSERT INTO league (league_name, league_category, duration_weeks, entry_fee, prize_pool) VALUES("league4", "singles", 10, 0, 50);
INSERT INTO league (league_name, league_category, duration_weeks, entry_fee, prize_pool) VALUES("league5", "teams", 14, 10, 500);

INSERT INTO bowler (bowler_name, league_id, high_game, average, current_position) VALUES ("Josh Peck", 1, 210, 178, 3);
INSERT INTO bowler (bowler_name, league_id, high_game, average, current_position) VALUES ("Drake Bell", 1, 241, 192, 1);
INSERT INTO bowler (bowler_name, league_id, high_game, average, current_position) VALUES ("Miranda Cosgrove", 1, 219, 184, 2);
INSERT INTO bowler (bowler_name, league_id, high_game, average, current_position) VALUES ("Victoria Justice", 2, 183, 149, 3);
INSERT INTO bowler (bowler_name, league_id, high_game, average, current_position) VALUES ("Jamie-Lynn Spears", 2, 194, 167, 3);

