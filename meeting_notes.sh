#!/bin/bash
# meeting_notes.sh - Generate structured meeting notes

# Get today's date
TODAY=$(date +%Y-%m-%d)

# Get meeting title from user
read -p "Meeting title: " TITLE

# Create meeting notes folder if needed
mkdir -p ~/Documents/Meetings

# Create notes file
TIME=$(date +%H-%M)
FILENAME="$TODAY-$TIME-${TITLE// /-}.md"

cat > ~/Documents/Meetings/"$FILENAME" << END
# $TITLE

**Date:** $TODAY

## Attendees
- 

## Agenda
1.

## Discussion Points

## Action Items
- []

## Nest Steps

END

echo "Meeting notes created: ~/Documents/Meetings/$FILENAME"
open ~/Documents/Meetings/"$FILENAME"
