import os
from surfquakecore.earthquake_location.run_nll import Nllcatalog, NllManager

if __name__ == "__main__":

    # Basic input: working_directory, inventory file path and config_file input
    working_directory = '/Volumes/LaCie//Granada/test_surfquake/outputs/nll'
    inventory_path = "/Volumes/LaCie/Granada/test_surfquake/inputs/metadata/inv_all.xml"
    path_to_configfiles = '/Volumes/LaCie/Granada/test_surfquake/inputs/configs/nll_config.ini'
    nll_manager = NllManager(path_to_configfiles, inventory_path, working_directory)
    nll_manager.vel_to_grid()
    nll_manager.grid_to_time()
    for iter in range(0, 20):
         print('Locating ', iter)
    nll_manager.run_nlloc()
    nll_catalog = Nllcatalog(working_directory)
    nll_catalog.run_catalog(working_directory)