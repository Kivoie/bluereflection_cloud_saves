# Blue Reflection Cloud Saves #

### How it works

1. Edit line 9 in `BLUE_REFLECTION_AIO.bat` to adjust target for Blue Reflection executable
2. Run `BLUE_REFLECTION_AIO.bat`

The batch file will poll every _n_ seconds to check for the blue reflection task (`tasklist | find`). When the user closes the game and the task is removed from the tasklist, the batch file will run git pull and push to repo, sychronizing the remote repository.

### Legal
Copyright (C) 2020 Danny Vuong. All rights reserved. No part of this repository may be altered and redistributed for commercial means or monetary gain, in any form or by any other means.
