# everyday-kata

Every day spend some time to learn new things or re-enforce what you know or remember.

Not sure what to learn for today? Run the program to randomly choose one for you!

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

## Note

Many of the exercises to practise on are from:

* Exercism

You need to register in their platform in order to see the question.

## Potential Enhancement

- [ ] Straight away random all the choices when using input parameter like -r
- [ ] Remember what was choosen so that the next time will not pick the same problem again
- [ ] Possbily tagging in type as some type is only pertaining to the specifc language

## Impetus

The Author wanted to have simple way to randomise what should he do or learn for the day.
