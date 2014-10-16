#!/bin/sh
for file in *
do
    if [ -f "$file" ];then
        sub=${file##*.}
        echo '$sub'="$sub"
        case "$sub" in
            jpg|png|bmp|gif|JPG|PNG|BMP|GIF)
                var=$(md5sum "$file")
                ##echo '$var'="$var"
                md5code=${var%% *}
                ##echo 'md5'="$md5code"
                oldname=${var##* }
                ##echo '$oldname'="$oldname"
                echo "Do you want to rename $oldname to $md5code.$sub"
                read answer
                case "$answer" in
                    y*|Y*)
                    ##mv "$oldname" "$md5code"."$sub"
                    echo "$oldname has been renamed to $mdcode.$sub"
                    ;;
                    *)

                esac
                ;;
            *)
                echo "The $file is not a IMAGE file"
                ;;
        esac
    elif [ -d "$file" ];then
        echo "$file" is a directory.
    fi
done

exit 0
