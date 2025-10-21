OUTDIR=.
WORKDIR="${OUTDIR}/tmp"
GIF=animation.gif
GIF_WIDTH=$(identify $GIF | head -1 | cut -d " " -f 3 | cut -d x -f 1)
GIF_HEIGHT=$(identify $GIF | head -1 | cut -d " " -f 3 | cut -d x -f 2)
mkdir ${WORKDIR}
convert -alpha remove -background "#000000" $GIF "${WORKDIR}"/animation%02d.rgb
./bootsplash-packer \
--bg_red 0x00 \
--bg_green 0x00 \
--bg_blue 0x00 \
--frame_ms 48 \
--picture \
--pic_width $GIF_WIDTH \
--pic_height $GIF_HEIGHT \
--pic_position 0 \
--pic_position_offset 0 \
--pic_anim_type 1 \
--pic_anim_loop 0 \
--blob "${WORKDIR}"/animation00.rgb \
--blob "${WORKDIR}"/animation01.rgb \
--blob "${WORKDIR}"/animation02.rgb \
--blob "${WORKDIR}"/animation03.rgb \
--blob "${WORKDIR}"/animation04.rgb \
--blob "${WORKDIR}"/animation05.rgb \
--blob "${WORKDIR}"/animation06.rgb \
--blob "${WORKDIR}"/animation07.rgb \
--blob "${WORKDIR}"/animation08.rgb \
--blob "${WORKDIR}"/animation09.rgb \
--blob "${WORKDIR}"/animation10.rgb \
--blob "${WORKDIR}"/animation11.rgb \
--blob "${WORKDIR}"/animation12.rgb \
--blob "${WORKDIR}"/animation13.rgb \
--blob "${WORKDIR}"/animation14.rgb \
--blob "${WORKDIR}"/animation15.rgb \
--blob "${WORKDIR}"/animation16.rgb \
--blob "${WORKDIR}"/animation17.rgb \
--blob "${WORKDIR}"/animation18.rgb \
--blob "${WORKDIR}"/animation19.rgb \
--blob "${WORKDIR}"/animation20.rgb \
--blob "${WORKDIR}"/animation21.rgb \
--blob "${WORKDIR}"/animation22.rgb \
--blob "${WORKDIR}"/animation23.rgb \
--blob "${WORKDIR}"/animation24.rgb \
--blob "${WORKDIR}"/animation25.rgb \
--blob "${WORKDIR}"/animation26.rgb \
--blob "${WORKDIR}"/animation27.rgb \
--blob "${WORKDIR}"/animation28.rgb \
--blob "${WORKDIR}"/animation29.rgb \
--blob "${WORKDIR}"/animation30.rgb \
--blob "${WORKDIR}"/animation31.rgb \
--blob "${WORKDIR}"/animation32.rgb \
--blob "${WORKDIR}"/animation33.rgb \
--blob "${WORKDIR}"/animation34.rgb \
--blob "${WORKDIR}"/animation35.rgb \
--blob "${WORKDIR}"/animation36.rgb \
--blob "${WORKDIR}"/animation37.rgb \
--blob "${WORKDIR}"/animation38.rgb \
--blob "${WORKDIR}"/animation39.rgb \
--blob "${WORKDIR}"/animation40.rgb \
--blob "${WORKDIR}"/animation41.rgb \
--blob "${WORKDIR}"/animation42.rgb \
--blob "${WORKDIR}"/animation43.rgb \
--blob "${WORKDIR}"/animation44.rgb \
--blob "${WORKDIR}"/animation45.rgb \
--blob "${WORKDIR}"/animation46.rgb \
--blob "${WORKDIR}"/animation47.rgb \
--blob "${WORKDIR}"/animation48.rgb \
--blob "${WORKDIR}"/animation49.rgb \
--blob "${WORKDIR}"/animation50.rgb \
--blob "${WORKDIR}"/animation51.rgb \
--blob "${WORKDIR}"/animation52.rgb \
--blob "${WORKDIR}"/animation53.rgb \
--blob "${WORKDIR}"/animation54.rgb \
--blob "${WORKDIR}"/animation55.rgb \
--blob "${WORKDIR}"/animation56.rgb \
--blob "${WORKDIR}"/animation57.rgb \
--blob "${WORKDIR}"/animation58.rgb \
--blob "${WORKDIR}"/animation59.rgb \
--blob "${WORKDIR}"/animation60.rgb \
--blob "${WORKDIR}"/animation61.rgb \
--blob "${WORKDIR}"/animation62.rgb \
--blob "${WORKDIR}"/animation63.rgb \
--blob "${WORKDIR}"/animation64.rgb \
--blob "${WORKDIR}"/animation65.rgb \
--blob "${WORKDIR}"/animation66.rgb \
--blob "${WORKDIR}"/animation67.rgb \
--blob "${WORKDIR}"/animation68.rgb \
--blob "${WORKDIR}"/animation69.rgb \
--blob "${WORKDIR}"/animation70.rgb \
--blob "${WORKDIR}"/animation71.rgb \
--blob "${WORKDIR}"/animation72.rgb \
--blob "${WORKDIR}"/animation73.rgb \
--blob "${WORKDIR}"/animation74.rgb \
bootsplash.armbian

rm -rf ${WORKDIR}