#! /bin/sh

languages=(java nodejs)

read -p "Select Programming Language (${languages[*]}):" enterLanguage

if [[ ! " ${languages[@]} " =~ " $enterLanguage " ]]; then
    randLangauge=$[$RANDOM % ${#languages[@]}]
    enterLanguage=${languages[randLangauge]}
fi

problemTypes=(refactoring problem-solving)

read -p "Select Problem Type (${problemTypes[*]}):" enterProblem

if [[ ! " ${problemTypes[@]} " =~ " $enterProblem " ]]; then
    randProblem=$[$RANDOM % ${#problemTypes[@]}]
    enterProblem=${problemTypes[randProblem]}
fi

difficulties=(easy medium hard)

read -p "Select Difficulty (${difficulties[*]}):" enterDifficulty

if [[ ! " ${difficulties[@]} " =~ " $enterDifficulty " ]]; then
    randDifficult=$[$RANDOM % ${#difficulties[@]}]
    enterDifficulty=${difficulties[randDifficult]}
fi

searchDir="./type/$enterProblem/$enterDifficulty"

files=($searchDir/*)
randomKata=$[$RANDOM % ${#files[@]}]
selectedKata=${files[randomKata]}

echo "Go to $selectedKata and use $enterLanguage to do it!"