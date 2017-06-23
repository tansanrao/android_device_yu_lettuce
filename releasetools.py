#
# Copyright (C) 2016 The CyanogenMod Project
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#      http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.
#

import os

TARGET_DIR = os.getenv('OUT')

def FullOTA_InstallEnd(self):
  self.output_zip.write(os.path.join(TARGET_DIR, "radio/NON-HLOS.bin"), "radio/NON-HLOS.bin")

  self.script.AppendExtra('ui_print("Flashing COS Modem...");')
  self.script.AppendExtra('package_extract_file("radio/NON-HLOS.bin", "/dev/block/platform/7824900.sdhci/by-name/modem");')
