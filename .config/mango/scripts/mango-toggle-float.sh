#! /bin/bash
cd "/home/mat/.config/mango/"

rulefile="$(cat mango-float.conf | grep "windowrule=isfloating:1,appid:.*")"

if [ "$rulefile" = "windowrule=isfloating:1,appid:.*" ]; then
  echo "" >mango-float.conf
else
  echo "windowrule=isfloating:1,appid:.*" >mango-float.conf
  echo "windowrule=width:1000,height:600,appid:.*" >>mango-float.conf
fi
mmsg -d reload_config
