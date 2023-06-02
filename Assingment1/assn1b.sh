#! /usr/bin/bash
#ae22b062
tar -xvf $1 | awk 'BEGIN{FS="/";depth=0;line=0;}{ if(NF>depth){if($NF!=""){depth=NF;line=NR;ans=$NF;}}}END{print ans;}'
