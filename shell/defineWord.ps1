param (
    [string]$Word
)

if (-not $Word) {
    exit
}

#to initiate variables use $
#to print use write-Output

$response = Invoke-RestMethod "https://api.dictionaryapi.dev/api/v2/entries/en/$word" 
$definition = $response.meanings[0].definitions[0].definition

$imageUrl = "D:\Downloads\study\shell\dictionary.png" # Replace with your image URL
$image = New-BTImage -Source $imageUrl -Crop Circle 

New-BurntToastNotification -Text $word, $definition -AppLogo $image