# Copyright (C) 2017 Unlegacy-Android
# Copyright (C) 2017 The LineageOS Project
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

# -----------------------------------------------------------------
# Neox OTA update package

NEOX_TARGET_PACKAGE := $(PRODUCT_OUT)/$(NEOX_VERSION).zip

.PHONY: otapackage neox
otapackage: $(INTERNAL_OTA_PACKAGE_TARGET)
neox: otapackage
	$(hide) ln -f $(INTERNAL_OTA_PACKAGE_TARGET) $(NEOX_TARGET_PACKAGE)
	$(hide) $(MD5SUM) $(NEOX_TARGET_PACKAGE) > $(NEOX_TARGET_PACKAGE).md5sum
	@echo -e ${CL_CYN}"===================================================-Package complete-===================================================="${CL_RST}
	@echo -e ${CL_CYN}"File   : "${CL_MAG} $(PRODUCT_OUT)/$(NEOX_VERSION).zip${CL_RST}
	@echo -e ${CL_CYN}"MD5    : "${CL_MAG}" `cat $(NEOX_TARGET_PACKAGE).md5sum | cut -d ' ' -f 1`"${CL_RST}
	@echo -e ${CL_CYN}"Size   : "${CL_MAG}" `ls -lah $(NEOX_TARGET_PACKAGE) | cut -d ' ' -f 5`"${CL_RST}
	@echo -e ${CL_CYN}"========================================================================================================================="${CL_RST}

