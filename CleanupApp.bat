REM Batch file to remove all of the default sample content (the Styleguide and GraphQL routes) 

FOR /D %%p IN (".\src\components\Styleguide*") DO RMDIR "%%p" /s /q
FOR /D %%p IN (".\src\components\GraphQL*") DO RMDIR "%%p" /s /q

DEL /q ".\src\components\Styleguide*"
DEL /q ".\sitecore\definitions\components\Styleguide*"
DEL /q ".\sitecore\definitions\components\GraphQL*"
DEL /q ".\sitecore\definitions\templates\Styleguide*"

FOR /D %%p IN (".\data\component-content\Styleguide") DO RMDIR "%%p" /s /q

FOR /D %%p IN (".\data\content\Styleguide") DO RMDIR "%%p" /s /q

FOR /D %%p IN (".\data\routes\styleguide") DO RMDIR "%%p" /s /q
FOR /D %%p IN (".\data\routes\graphql") DO RMDIR "%%p" /s /q

DEL /q ".\data\dictionary\*.yml"
