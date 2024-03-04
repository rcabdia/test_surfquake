# surfquake csv2xml -c [csv_file_path] -r [resp_files_path] -o [output_path] -n [stations_xml_name]
surfquake csv2xml -c /Volumes/LaCie/all_andorra/mini_test/inputs/metadata/coords.txt -r /Volumes/LaCie/all_andorra/mini_test/inputs/metadata/resp_files -o /Volumes/LaCie/all_andorra/mini_test/inputs/metadata -n WM.xml

# surfquake project -d [path to data files] -s [path to save directory] -n [project name] --verbose
surfquake project -d /Volumes/LaCie/all_andorra/mini_test/inputs/waveforms_cut -s /Volumes/LaCie/all_andorra/mini_test/project -n project_sh.pkl -v

# surfquake pick -f [path to your project file] -d [path to your pick saving directory] -p [P-wave threshoold] -s [S-wave threshold] --verbose"
surfquake pick -f /Volumes/LaCie/all_andorra/mini_test/project/project_sh.pkl -d /Volumes/LaCie/all_andorra/mini_test/outputs_sh/picks -p 0.3 -s 0.3 --verbose

# surfquake associate -i [inventory_file_path] -p [path to data picking folder] -c [path to real_config_file.ini] -w [work directory] -s [path to directory where project will be saved] --verbose
surfquake associate -i /Volumes/LaCie/all_andorra/mini_test/inputs/metadata/inv_all.xml -p /Volumes/LaCie/all_andorra/mini_test/outputs_sh/picks -c /Volumes/LaCie/all_andorra/mini_test/inputs/configs/real_config.ini -w /Volumes/LaCie/all_andorra/mini_test/outputs_sh/real/working_directory -s /Volumes/LaCie/all_andorra/mini_test/outputs_sh/real/output_directory --verbose

# surfquake locate -i [inventory_file_path] -c [path to nll_config_file.ini] -o [path_to output_path] -g [travel_time_generation] -s [stations corrections]
surfquake locate -i /Volumes/LaCie/all_andorra/mini_test/inputs/metadata/inv_all.xml -c /Volumes/LaCie/all_andorra/mini_test/inputs/configs/nll_config.ini -o /Volumes/LaCie/all_andorra/mini_test/outputs_sh/nll -g -s

# surfquake source -i [inventory file path] - p [path to project file] -c [path to source_config_file] -l [path to nll hyp files] -o [path to output folder]
surfquake source -i /Volumes/LaCie/all_andorra/mini_test/inputs/metadata/inv_all.xml -p /Volumes/LaCie/all_andorra/mini_test/project/project_sh.pkl -c /Volumes/LaCie/all_andorra/mini_test/inputs/configs/source_spec_narrow.conf -l /Volumes/LaCie/all_andorra/mini_test/outputs_sh/nll/all_loc -o /Volumes/LaCie/all_andorra/mini_test/outputs_sh/source_short

# surfquake buildmticonfig -c [catalog_file_path] -t [mti_config_template] -o [output_folder] -s [if starttime] -e [if endtime] -l [if lat_min] -a [ if lat_max] -d [if lon_min] -k [if lon_max] -w [if depth_min] -f [depth_max] -g [if mag_min] -p [if mag_max]
surfquake buildmticonfig --catalog_file_path /mti_config_test/catalog_obj.pkl --mti_config_template /mti_confis_test/template.ini --output_folder /mti_confis_test --starttime "30/09/2021, 00:00:00.0" --endtime "30/09/2022, 00:00:00.0" --lat_min 38.0 --lat_max 44.0 --lon_min -2.0 --lon_max 4.0 --depth_min -3.0 --depth_max 50 --mag_min 3.0 --mag_max 4.0

# surfquake mti -i [inventory_file_path] -p [path_to_project] -c [path to mti_config_file.ini] -o [output_path]  -s [if save plots]
surfquake mti -i /Volumes/LaCie/all_andorra/mini_test/inputs/metadata/inv_all.xml -p /Volumes/LaCie/all_andorra/mini_test/project/project_sh.pkl -c /Volumes/LaCie/all_andorra/mini_test/inputs/configs/mti_config_mini_test.ini -o /Volumes/LaCie/all_andorra/mini_test/outputs_sh/mti  -s

# surfquake buildcatalog -e [path_event_files_folder] -s [path_source_summary_file] -m [path_mti_summary_file] -f [catalog_format] -o [path_to_output_folder]
surfquake buildcatalog -e /Volumes/LaCie/all_andorra/mini_test/outputs_sh/nll/all_loc -s /Volumes/LaCie/all_andorra/mini_test/outputs_sh/source/source_summary.txt -m /Volumes/LaCie/all_andorra/mini_test/outputs_sh/mti/summary_mti.txt -f QUAKEML -o /Volumes/LaCie/all_andorra/mini_test/outputs_sh/catalog