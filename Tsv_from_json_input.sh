#!/bin/bash

jq -r \
        '["clmn1", "clmn2", "clmn3"], (.SecurityGroupRules[] | select(IsEgress==false) | [.GroupId, IsEgress, .FromPort, ToPort, ReferencedGroupInfo.GroupId]) | @tsv' groupid.json 
