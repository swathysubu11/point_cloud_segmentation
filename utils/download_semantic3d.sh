BASE_DIR='/home/swathy/Documents/project/point_cloud/RandLA-Net-pytorch/data/semantic3d/original_data'

###../data/semantic3d/original_data

mkdir -p $BASE_DIR

# Training data


command -v 7z > /dev/null || { echo '7z not installed. Aborted.'; exit 1; }

for entry in "$BASE_DIR"/*
do
  7z x "$entry" -o$(dirname "$entry") -y
done

mv $BASE_DIR/station1_xyz_intensity_rgb.txt $BASE_DIR/neugasse_station1_xyz_intensity_rgb.txt

# for entry in "$BASE_DIR"/*.7z
# do
#   rm "$entry"
# done

exit 0
