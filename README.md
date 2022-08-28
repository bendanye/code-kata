# everyday-kata

Every day to re-enforce what you know or remember by practicing.

Not sure what to do for today? Run the program to randomly choose one for you!

## Project Setup & Commands

### Run the program and manually entered the required information if needed

```powershell
start.ps1
```

```shell
bash start.sh
```

### Run the program by entering input parameters

```powershell
.\start.ps1 -language nodejs -type problem-solving -difficulty easy
```

```shell
# -l = Programming Language
# -t = Problem Type
# -d = Difficulty

bash start.sh -l java -t refactoring -d easy
```

### Run the program by with random output

```powershell
.\start.ps1 -language nodejs -type problem-solving -difficulty easy
```

```shell
# -l = Programming Language
# -t = Problem Type
# -d = Difficulty

bash start.sh -l rand -t rand -d rand
```

## Note

Many of the exercises to practise on are from:

* Exercism

You need to register in their platform in order to see the question.

## Potential Enhancement

- [ ] Remember what was choosen so that the next time will not pick the same problem again
- [ ] Possbily tagging in type as some type is only pertaining to the specifc language
- [ ] Allow to specify multiple choices

## Impetus

The Author wanted to have simple way to randomise what should he do or learn for the day.
