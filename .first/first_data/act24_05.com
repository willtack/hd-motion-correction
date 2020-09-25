/usr/local/fsl/bin/run_first -i /home/will/Projects/hd_motion_correction/first/first_data/act24_05_t1 -t /home/will/Projects/hd_motion_correction/first/first_data/act24_05_t1_to_std_sub.mat -n 50 -o act24_05-L_Accu_first -m /usr/local/fsl/data/first/models_336_bin/L_Accu_bin.bmv; /usr/local/fsl/bin/first_boundary_corr -s act24_05-L_Accu_first -o act24_05-L_Accu_corr -i /home/will/Projects/hd_motion_correction/first/first_data/act24_05_t1 -b fast
/usr/local/fsl/bin/run_first -i /home/will/Projects/hd_motion_correction/first/first_data/act24_05_t1 -t /home/will/Projects/hd_motion_correction/first/first_data/act24_05_t1_to_std_sub.mat -n 50 -o act24_05-L_Amyg_first -m /usr/local/fsl/data/first/models_336_bin/intref_thal/L_Amyg.bmv -intref /usr/local/fsl/data/first/models_336_bin/05mm/L_Thal_05mm.bmv; /usr/local/fsl/bin/first_boundary_corr -s act24_05-L_Amyg_first -o act24_05-L_Amyg_corr -i /home/will/Projects/hd_motion_correction/first/first_data/act24_05_t1 -b fast
/usr/local/fsl/bin/run_first -i /home/will/Projects/hd_motion_correction/first/first_data/act24_05_t1 -t /home/will/Projects/hd_motion_correction/first/first_data/act24_05_t1_to_std_sub.mat -n 30 -o act24_05-L_Hipp_first -m /usr/local/fsl/data/first/models_336_bin/intref_thal/L_Hipp.bmv -intref /usr/local/fsl/data/first/models_336_bin/05mm/L_Thal_05mm.bmv; /usr/local/fsl/bin/first_boundary_corr -s act24_05-L_Hipp_first -o act24_05-L_Hipp_corr -i /home/will/Projects/hd_motion_correction/first/first_data/act24_05_t1 -b fast
/usr/local/fsl/bin/run_first -i /home/will/Projects/hd_motion_correction/first/first_data/act24_05_t1 -t /home/will/Projects/hd_motion_correction/first/first_data/act24_05_t1_to_std_sub.mat -n 40 -o act24_05-L_Pall_first -m /usr/local/fsl/data/first/models_336_bin/05mm/L_Pall_05mm.bmv; /usr/local/fsl/bin/first_boundary_corr -s act24_05-L_Pall_first -o act24_05-L_Pall_corr -i /home/will/Projects/hd_motion_correction/first/first_data/act24_05_t1 -b none
/usr/local/fsl/bin/run_first -i /home/will/Projects/hd_motion_correction/first/first_data/act24_05_t1 -t /home/will/Projects/hd_motion_correction/first/first_data/act24_05_t1_to_std_sub.mat -n 40 -o act24_05-L_Puta_first -m /usr/local/fsl/data/first/models_336_bin/05mm/L_Puta_05mm.bmv; /usr/local/fsl/bin/first_boundary_corr -s act24_05-L_Puta_first -o act24_05-L_Puta_corr -i /home/will/Projects/hd_motion_correction/first/first_data/act24_05_t1 -b none
/usr/local/fsl/bin/run_first -i /home/will/Projects/hd_motion_correction/first/first_data/act24_05_t1 -t /home/will/Projects/hd_motion_correction/first/first_data/act24_05_t1_to_std_sub.mat -n 40 -o act24_05-L_Thal_first -m /usr/local/fsl/data/first/models_336_bin/05mm/L_Thal_05mm.bmv; /usr/local/fsl/bin/first_boundary_corr -s act24_05-L_Thal_first -o act24_05-L_Thal_corr -i /home/will/Projects/hd_motion_correction/first/first_data/act24_05_t1 -b none
/usr/local/fsl/bin/run_first -i /home/will/Projects/hd_motion_correction/first/first_data/act24_05_t1 -t /home/will/Projects/hd_motion_correction/first/first_data/act24_05_t1_to_std_sub.mat -n 50 -o act24_05-R_Accu_first -m /usr/local/fsl/data/first/models_336_bin/R_Accu_bin.bmv; /usr/local/fsl/bin/first_boundary_corr -s act24_05-R_Accu_first -o act24_05-R_Accu_corr -i /home/will/Projects/hd_motion_correction/first/first_data/act24_05_t1 -b fast
/usr/local/fsl/bin/run_first -i /home/will/Projects/hd_motion_correction/first/first_data/act24_05_t1 -t /home/will/Projects/hd_motion_correction/first/first_data/act24_05_t1_to_std_sub.mat -n 50 -o act24_05-R_Amyg_first -m /usr/local/fsl/data/first/models_336_bin/intref_thal/R_Amyg.bmv -intref /usr/local/fsl/data/first/models_336_bin/05mm/R_Thal_05mm.bmv; /usr/local/fsl/bin/first_boundary_corr -s act24_05-R_Amyg_first -o act24_05-R_Amyg_corr -i /home/will/Projects/hd_motion_correction/first/first_data/act24_05_t1 -b fast
/usr/local/fsl/bin/run_first -i /home/will/Projects/hd_motion_correction/first/first_data/act24_05_t1 -t /home/will/Projects/hd_motion_correction/first/first_data/act24_05_t1_to_std_sub.mat -n 30 -o act24_05-R_Caud_first -m /usr/local/fsl/data/first/models_336_bin/intref_thal/R_Caud.bmv -intref /usr/local/fsl/data/first/models_336_bin/05mm/R_Thal_05mm.bmv; /usr/local/fsl/bin/first_boundary_corr -s act24_05-R_Caud_first -o act24_05-R_Caud_corr -i /home/will/Projects/hd_motion_correction/first/first_data/act24_05_t1 -b fast
/usr/local/fsl/bin/run_first -i /home/will/Projects/hd_motion_correction/first/first_data/act24_05_t1 -t /home/will/Projects/hd_motion_correction/first/first_data/act24_05_t1_to_std_sub.mat -n 30 -o act24_05-R_Hipp_first -m /usr/local/fsl/data/first/models_336_bin/intref_thal/R_Hipp.bmv -intref /usr/local/fsl/data/first/models_336_bin/05mm/R_Thal_05mm.bmv; /usr/local/fsl/bin/first_boundary_corr -s act24_05-R_Hipp_first -o act24_05-R_Hipp_corr -i /home/will/Projects/hd_motion_correction/first/first_data/act24_05_t1 -b fast
/usr/local/fsl/bin/run_first -i /home/will/Projects/hd_motion_correction/first/first_data/act24_05_t1 -t /home/will/Projects/hd_motion_correction/first/first_data/act24_05_t1_to_std_sub.mat -n 40 -o act24_05-R_Pall_first -m /usr/local/fsl/data/first/models_336_bin/05mm/R_Pall_05mm.bmv; /usr/local/fsl/bin/first_boundary_corr -s act24_05-R_Pall_first -o act24_05-R_Pall_corr -i /home/will/Projects/hd_motion_correction/first/first_data/act24_05_t1 -b none
/usr/local/fsl/bin/run_first -i /home/will/Projects/hd_motion_correction/first/first_data/act24_05_t1 -t /home/will/Projects/hd_motion_correction/first/first_data/act24_05_t1_to_std_sub.mat -n 40 -o act24_05-R_Puta_first -m /usr/local/fsl/data/first/models_336_bin/05mm/R_Puta_05mm.bmv; /usr/local/fsl/bin/first_boundary_corr -s act24_05-R_Puta_first -o act24_05-R_Puta_corr -i /home/will/Projects/hd_motion_correction/first/first_data/act24_05_t1 -b none
/usr/local/fsl/bin/run_first -i /home/will/Projects/hd_motion_correction/first/first_data/act24_05_t1 -t /home/will/Projects/hd_motion_correction/first/first_data/act24_05_t1_to_std_sub.mat -n 40 -o act24_05-R_Thal_first -m /usr/local/fsl/data/first/models_336_bin/05mm/R_Thal_05mm.bmv; /usr/local/fsl/bin/first_boundary_corr -s act24_05-R_Thal_first -o act24_05-R_Thal_corr -i /home/will/Projects/hd_motion_correction/first/first_data/act24_05_t1 -b none
