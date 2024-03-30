param ($language, $type, $difficulty)

$enterLanguage = $language
$enterProblem = $type
$enterDifficulty = $difficulty

if (!$enterLanguage) {
    $languagesChoicesInDirectory = Get-ChildItem -Path "./language" -Name
    $enterLanguage = Read-Host -Prompt "Select Programming Language ($languagesChoicesInDirectory)"
    if (!$enterLanguage) { 
        $enterLanguage = Get-Random -InputObject $languagesChoicesInDirectory
    }
}

if (!$enterProblem) {
    $problemTypesChoicesInDirectory = Get-ChildItem -Path "./type" -Name
    $enterProblem = Read-Host -Prompt "Select Problem Type ($problemTypesChoicesInDirectory)"
    if (!$enterProblem) { 
        $enterProblem = Get-Random -InputObject $problemTypesChoicesInDirectory
    }
}

if (!$enterDifficulty) {
    $difficultiesInDirectory = Get-ChildItem -Path "./type/$enterProblem" -Name
    $enterDifficulty = Read-Host -Prompt "Select Difficulty ($difficultiesInDirectory)"
    if (!$enterDifficulty) { 
        $enterDifficulty = Get-Random -InputObject $difficultiesInDirectory
    }
}

$searchDir = Get-ChildItem -Path "./type/$enterProblem/$enterDifficulty" -Name
$selectedKata = Get-Random -InputObject $searchDir

Write-Output "Open '$selectedKata', read it and use '$enterLanguage' to solve it!"

