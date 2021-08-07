#!/bin/bash

shellcheck ./*.sh ../Mechanic/MechanicOverview/*.sh | tee Shell_Script_Lint_Report.txt
