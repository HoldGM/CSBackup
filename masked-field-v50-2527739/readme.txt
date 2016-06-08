MASKED FIELD, 5.0
=================
This plug-in allows a user to easily enter fixed width, formatted data (e.g. dates, phone numbers, SSN).
A mask is defined as a format made up of literals and mask definitions. Any character not in the
definitions list below is considered a mask literal and canÕt be modified by the user.

For example a mask of "(999) 999-9999" with a placeholder of "#" will be displayed to the user
as "(###) ###-####". As the user types in the value, the hashes will be replaced by the numbers
entered and the parenthesis, space, and dash will remain untouched. See help text of
attribute "Input Mask" for valid mask definitions.


TABLE OF CONTENTS
=================

* Installation and Update
* How to use
* Uninstall
* Credits, License and Terms of Use
* Support
* Change Log


INSTALLATION AND UPDATE
=======================
1. Ensure you are running Oracle APEX version 5.0 or higher
2. Unzip and extract all files
2. Access your target Workspace
3. Select the Application Builder
4. Select the Application where you wish to import the plug-in 
   (plug-ins belong to an application, not a workspace)
5. Access Shared Components > Plug-Ins
6. Click [Import >]
7. Browse and locate the installer file, item_type_plugin_com_oracle_apex_masked_field.sql
8. Complete the wizard

If the plug-in already exists in that application, you will need to confirm that you 
want to replace it.  Also, once imported, this plug-in can be installed into additional
applications within the same workspace.  Simply navigate to the Export Repository 
(Export > Export Repository), click Install, and then select the target application.
Once the install file is no longer needed, it can be removed from the Export Repository.


HOW TO USE
==========
1. Install the plug-in (see INSTALLATION AND UPDATE)
2. Create a new page item
3. Pick "Plug-Ins" as type
4. Select the plug-in "Masked Field"
5. Follow the wizard and use Item Level Help to get more information about the
   purpose and usage of the different settings.

Note that you can also update existing items to use this new item-type, once installed.


UNINSTALL
=========
To completely remove the plug-in:

1. Access the plug-in under Shared Components > Plug-Ins
2. Click [Delete]
   Note: If the [Delete] button doesn't show that indicates the plug-in is in use within the
         application.  Click on 'Utilization' under 'Tasks' to see where it is used.


CREDITS, LICENSE AND TERMS OF USE
=================================
Copyright 2010 - 2015, Oracle. All rights reserved.

This item type plug-in is based on the jQuery Masked Input Plugin v1.4.0 http://digitalbush.com/projects/masked-input-plugin/

It is licensed under the MIT license:

  * http://www.opensource.org/licenses/mit-license.php

Terms of use: http://apex.oracle.com/plugins#TERMS


SUPPORT
=======
This plug-in is not part of Oracle Application Express software and is therefore not supported by Oracle Support.
Any issues with it can be discussed on the Application Express Forum at http://forums.oracle.com/forums/forum.jspa?forumID=137


CHANGE LOG
==========
v1.0 (07-Oct-2010)
-) Initial edit

v5.0 (22-Apr-2015)
-) Upgrade jQuery Masked Input Plugin to v1.4.0
