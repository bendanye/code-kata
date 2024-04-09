# code-kata

Every day to re-enforce what you know or remember by practicing coding.

Not sure what to do for today? Run the program to randomly choose one for you!

## Project Setup & Commands

### Run the program and manually entered the required information if needed

```powershell
random.ps1
```

```shell
bash random.sh
```

### Run the program by entering input parameters

```powershell
.\random.ps1 -language nodejs -type problem-solving -difficulty easy
```

```shell
# -l = Programming Language
# -t = Problem Type
# -d = Difficulty

./random.sh -l java -t problem-solving -d easy
```

### Run the program by with random output

```powershell
.\random.ps1 -language nodejs -type problem-solving -difficulty easy
```

```shell
# -l = Programming Language
# -t = Problem Type
# -d = Difficulty

bash random.sh -l rand -t rand -d rand
```

## Note

Many of the exercises to practise on are from:

* Exercism

You need to register in their platform in order to see the question.

* Leetcode

You don't have to register to see the question.

## Potential Enhancement

- [ ] Remember what was choosen so that the next time will not pick the same problem again
- [ ] Possbily tagging in type as some type is only pertaining to the specifc language
- [ ] Allow to specify multiple choices

## Impetus

The Author wanted to have simple way to randomise what should he code or practice for the day.
