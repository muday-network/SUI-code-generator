public fun loop_example(): u64 {
    let mut sum: u64 = 0;
    let mut i: u64 = 0;
    while (i < 10) {
        sum = sum + i;
        i = i + 1;
    }
    sum
}
