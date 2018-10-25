for i in ./*.xml 
 do   
    d=$(basename "$i" .xml)   
    mkdir "$d" && cp "$i" "$d/config.xml" 
 done
