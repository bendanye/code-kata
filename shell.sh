#! /bin/sh
while getopts ":l:d:t:" opt; do
  case $opt in
    l) enterLanguage="$OPTARG"
    ;;
    d) enterDifficulty="$OPTARG"
    ;;
    t) enterProblem="$OPTARG"
    ;;
    \?) echo "Invalid option -$OPTARG" >&2
    ;;
  esac
done

languagesChoicesInDirectory=("language"/*)
for file in "${languagesChoicesInDirectory[@]}"
do
    languages+="$(basename $file) "
done

if [[ -z "$enterLanguage" ]]; then
    read -p "Select Programming Language (${languages[*]}):" enterLanguage
fi

if [[ ! " ${languages[@]} " =~ " $enterLanguage " ]]; then
    randLangauge=$[$RANDOM % ${#languages[@]}]
    enterLanguage=${languages[randLangauge]}
fi

problemTypesChoicesInDirectory=("type"/*)
for file in "${problemTypesChoicesInDirectory[@]}"
do
    problemTypes+="$(basename $file) "
done

if [[ -z "$enterProblem" ]]; then
    read -p "Select Problem Type (${problemTypes[*]}):" enterProblem
fi

if [[ ! " ${problemTypes[@]} " =~ " $enterProblem " ]]; then
    randProblem=$[$RANDOM % ${#problemTypes[@]}]
    enterProblem=${problemTypes[randProblem]}
fi

difficultiesInDirectory=("./type/$enterProblem"/*)
for file in "${difficultiesInDirectory[@]}"
do
    difficulties+="$(basename $file) "
done

if [[ -z "$enterDifficulty" ]]; then
    read -p "Select Difficulty (${difficulties[*]}):" enterDifficulty
fi

if [[ ! " ${difficulties[@]} " =~ " $enterDifficulty " ]]; then
    randDifficult=$[$RANDOM % ${#difficulties[@]}]
    enterDifficulty=${difficulties[randDifficult]}
fi

searchDir="./type/$enterProblem/$enterDifficulty"

files=($searchDir/*)
randomKata=$[$RANDOM % ${#files[@]}]
selectedKata=${files[randomKata]}

echo "Open $selectedKata, read it and use $enterLanguage to solve it!"