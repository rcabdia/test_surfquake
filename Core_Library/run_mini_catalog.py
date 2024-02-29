import os

from surfquakecore.utils.manage_catalog import BuildCatalog, WriteCatalog

path_events_file = '/Volumes/LaCie/all_andorra/mini_test/outputs/nll/all_loc'
path_source_file = '/Volumes/LaCie/all_andorra/mini_test/outputs/source/source_summary.txt'
#path_mti_summary = "/Volumes/LaCie/all_andorra/mti/mti_summary.txt"
output_path = "/Volumes/LaCie/all_andorra/mini_test/outputs/catalog"

format = "QUAKEML"
bc = BuildCatalog(loc_folder=path_events_file, output_path=output_path,
                  source_summary_file=path_source_file, format=format)
bc.build_catalog_loc()

catalog_surf = os.path.join(output_path, "catalog_surf")
catalog_obj = os.path.join(output_path, "catalog_obj.pkl")
wc = WriteCatalog(catalog_obj)
wc.write_catalog_surf(catalog = None, output_path=catalog_surf)