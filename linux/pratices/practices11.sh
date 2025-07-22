echo "Lịch dương và âm từ năm 1990 đến 2020"
echo ""

SCRIPT_DIR="$(cd "$(dirname "$0")" && pwd)"
for year in {1990..2020}
do
    lunar_name="$("$SCRIPT_DIR/practices10.sh" $year)"
    printf "%-13s| %s\n" "$year" "$lunar_name"
done
