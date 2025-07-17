#!/bin/bash
year=$1
can=("Giáp" "Ất" "Bính" "Đinh" "Mậu" "Kỷ" "Canh" "Tân" "Nhâm" "Quý")
chi=("Tý" "Sửu" "Dần" "Mão" "Thìn" "Tị" "Ngọ" "Mùi" "Thân" "Dậu" "Tuất" "Hợi")

can_index=$(( (year - 2015 + 1) % 10 ))
chi_index=$(( (year - 2015 + 7) % 12 ))

echo "${can[can_index]} ${chi[chi_index]}"