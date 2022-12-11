#! /bin/bash

if [[ $1 == "test" ]]
then
  PSQL="psql --username=postgres --dbname=worldcuptest -t --no-align -c"
else
  PSQL="psql --username=freecodecamp --dbname=worldcup -t --no-align -c"
fi

# Do not change code above this line. Use the PSQL variable above to query your database.
echo $($PSQL"TRUNCATE TABLE games, teams")
cat games.csv | while IFS="," read YEAR ROUND WINNER OPPONENT WINNER_GOALS OPPONENT_GOALS
do
if [[ $YEAR != 'year' ]] 
then
EXIST_WINNER=$($PSQL"SELECT EXISTS(SELECT team_id FROM teams WHERE name='$WINNER')")
EXIST_OPPONENT=$($PSQL"SELECT EXISTS(SELECT team_id FROM teams WHERE name='$OPPONENT')")
if [[ $EXIST_OPPONENT = f ]] && [[ $EXIST_WINNER = f ]]
then
 INSERT_TEAM_RESULT=$($PSQL"INSERT INTO teams(name) VALUES('$WINNER'), ('$OPPONENT')")
 elif [[ $EXIST_OPPONENT = f ]]
 then
 INSERT_TEAM_RESULT1=$($PSQL"INSERT INTO teams(name) VALUES('$OPPONENT')")
 elif [[ $EXIST_WINNER = f ]]
 then 
 INSERT_TEAM_RESULT2=$($PSQL"INSERT INTO teams(name) VALUES('$WINNER')")
 fi
 WINNER_ID=$($PSQL"SELECT team_id FROM teams WHERE name='$WINNER'")
 OPPONENT_ID=$($PSQL"SELECT team_id FROM teams WHERE name='$OPPONENT'")
INSERT_GAME_RESULT=$($PSQL"INSERT INTO games(year, round, winner_id, opponent_id, winner_goals, opponent_goals) VALUES($YEAR, '$ROUND', $WINNER_ID, $OPPONENT_ID, $WINNER_GOALS, $OPPONENT_GOALS)")
echo $INSERT_GAME_RESULT
fi
done
