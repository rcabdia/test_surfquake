# surfquake project -d [path to data files] -s [path to save directory] -n [project name] --verbose
surfquake project -d /Volumes/LaCie/test_surfquake/Granada/inputs/waveforms_cut -s /Volumes/LaCie/test_surfquake/Granada/project -n project_sh.pkl -v

# surfquake pick -f [path to your project file] -d [path to your pick saving directory] -p [P-wave threshoold] -s [S-wave threshold] --verbose"
surfquake pick -f /Volumes/LaCie/test_surfquake/Granada/project/project_sh.pkl -d /Volumes/LaCie/test_surfquake/Granada/outputs/picks -p 0.3 -s 0.3 --verbose

# surfquake associate -i [inventory_file_path] -p [path to data picking folder] -c [path to real_config_file.ini] -w [work directory] -s [path to directory where project will be saved] --verbose
surfquake associate -i /Volumes/LaCie/test_surfquake/Granada/inputs/metadata/ES_network.xml -p /Volumes/LaCie/test_surfquake/Granada/outputs/picks -c /Volumes/LaCie/test_surfquake/Granada/inputs/configs/real_config.ini -w /Volumes/LaCie/test_surfquake/Granada/outputs/real/working_directory -s /Volumes/LaCie/test_surfquake/Granada/outputs/real/output_directory --verbose

# surfquake locate -i [inventory_file_path] -c [path to nll_config_file.ini] -o [path_to output_path] -g [travel_time_generation] -s [stations corrections]
surfquake locate -i /Volumes/LaCie/test_surfquake/Granada/inputs/metadata/ES_network.xml -c /Volumes/LaCie/test_surfquake/Granada/inputs/configs/nll_config.ini -o /Volumes/LaCie/test_surfquake/Granada/outputs/nll -s

# surfquake source -i [inventory file path] - p [path to project file] -c [path to source_config_file] -l [path to nll hyp files] -o [path to output folder]
surfquake source -i /Volumes/LaCie/test_surfquake/Granada/inputs/metadata/ES_network.xml -p /Volumes/LaCie/test_surfquake/Granada/project/project_sh.pkl -c /Volumes/LaCie/test_surfquake/Granada/inputs/configs/source_spec.conf -l /Volumes/LaCie/test_surfquake/Granada/outputs/nll/all_loc -o /Volumes/LaCie/test_surfquake/Granada/source

# surfquake mti -i [inventory_file_path] -p [path_to_project] -c [path to mti_config_file.ini] -o [output_path]  -s [if save plots]
surfquake mti -i /Volumes/LaCie/test_surfquake/Granada/inputs/metadata/ES_network.xml -p /Volumes/LaCie/test_surfquake/Granada/project/project_sh.pkl -c /Volumes/LaCie/test_surfquake/Granada/inputs/configs_mti -o /Volumes/LaCie/test_surfquake/Granada/outputs/mti  -s 
