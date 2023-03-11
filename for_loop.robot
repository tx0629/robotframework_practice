*** Test Cases ***
loop1
    FOR    ${i}    IN RANGE    0    5
    Log     ${i}
     END

loop2
    FOR    ${i2}    IN    0    1    2    3
    Log     ${i2}
     END

loop3_with_list_num
    @{list_1}    Create List    1    2    3    4    5
    FOR    ${i3}    IN    @{list_1}
    Log    ${i3}
    END

loop4_with_name
    FOR    ${i4}    IN    Tim    Sam    John    Cindy
    Log     ${i4}
     END

loop5_with_list_name
    @{list_2}    Create List    Tim    Sam    John    Kevin    Cindy
    FOR    ${i5}    IN    @{list_2}
    Log    ${i5}
    END
