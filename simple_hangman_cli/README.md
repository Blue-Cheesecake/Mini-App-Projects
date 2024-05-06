# Hangman

## Features

### Setup Phase
The user (or Admin) can set up the initial value for the Hangman game including:
   - Guess Word
     - It should be only String type and English Characters
   - Allowed number to be incorrect
     - The number should be an unsigned integer that is not more than 20

### Play Phase
The user can enter **ONLY** one character to guess. Otherwise, it will notify a user about the error
After entering a character, the system will check if that character is in Guess Word
   - If not, show a number of allowances to be incorrect
   - Otherwise, show a character

NOTE: The string input from the user is case insensitive. 

## Interface

```bash
$ (ADMIN) Set up Hidden Word: rabbit
$ (ADMIN) Set up A Number of Allowance to be Incorrect: 5
$ _____________________________
$ -------- Setting Up  --------
$ _____________________________
$ ---------------
$ |             |
$ | _ _ _ _ _ _ |
$ |             |
$ ---------------
$ Live: 5
$ Guess: c
$ -- Incorrect --
$ Live: 4
$ Guess: b
$ -- Correct --
$ ---------------
$ |             |
$ | _ _ b b _ _ |
$ |             |
$ ---------------
$ Live: 4
$ Guess: _
```