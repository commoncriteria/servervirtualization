TRANS?=transforms
# Include if it exists (so people could do set their own settings
-include User.make
DIFF_TAGS="v1.1_draft1"

include $(TRANS)/module/Module.make
