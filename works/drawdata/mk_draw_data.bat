cd ../
set filenameorg=draw_%date:/=%
set num=2

:ret

if not exist drawdata/%filenameorg%.clip (
    copy "draw_format.clip" "drawdata/%filenameorg%.clip"
) else (
    set /a num=num+1
    echo %num%
    if exist drawdata/%filenameorg%_%num%.clip (
        goto :ret
    ) else (
        copy "draw_format.clip" "drawdata/%filenameorg%_%num%.clip"
    )  
)
