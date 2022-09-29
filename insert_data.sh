#! /bin/bash

if [[ $1 == "test" ]]
then
  PSQL="psql --username=postgres --dbname=worldcuptest -t --no-align -c"
else
  PSQL="psql --username=freecodecamp --dbname=worldcup -t --no-align -c"
fi

# Do not change code above this line. Use the PSQL variable above to query your database.
# year,round,winner,opponent,winner_goals,opponent_goals
echo "$($PSQL "TRUNCATE games, teams")"
cat games.csv | while IFS=',' read YEAR ROUND WINNER OPPONENT WINNER_GOALS OPPONENTS_GOALS
do
if [[ $WINNER != 'winner' ]]
then
  WINNER_ID=$($PSQL "SELECT team_id FROM teams WHERE name = '$WINNER' ")
  if [[ -z $WINNER_ID ]]
  then
    INSERT_TEAM_RESULT=$($PSQL"INSERT INTO teams(name) VALUES ('$WINNER')")
    if [[ $INSERT_TEAM_RESULT == 'INSERT 0 1' ]]
    then
      echo Inserted into team, $WINNER
    fi
    WINNER_ID=$($PSQL "SELECT team_id FROM teams WHERE name = '$WINNER' ")
  fi
fi
if [[ $OPPONENT != 'opponent' ]]
then
  OPPONENT_ID=$($PSQL "SELECT team_id FROM teams WHERE name = ('$OPPONENT')")
  if [[ -z $OPPONENT_ID ]]
  then
    INSERT_TEAM_RESULT=$($PSQL "INSERT INTO teams(name) VALUES ('$OPPONENT')")
    if [[ $INSERT_TEAM_RESULT == 'INSERT 0 1' ]]
    then
      echo Inserted into team, $OPPONENT
    fi
    OPPONENT_ID=$($PSQL "SELECT team_id FROM teams WHERE name = '$OPPONENT' ")
  fi
fi
if  [[  $YEAR != 'year' ]]
then
  INSERT_GAME_RESULT=$($PSQL "INSERT INTO games(year, round, winner_id, opponent_id, winner_goals, opponent_goals) VALUES ($YEAR, '$ROUND', $WINNER_ID, $OPPONENT_ID, $WINNER_GOALS, $OPPONENTS_GOALS)")
  if [[ $INSERT_GAME_RESULT == 'INSERT 0 1' ]]
  then
    echo Inserted into game, $YEAR $ROUND $WINNER_ID $OPPONENT_ID
  fi
fi
done