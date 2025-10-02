const std = @import("std");
const expect = std.testing.expect;

const ROCKCOUNTER: u3 = 4;
const ROCKSTRING: [4]u8 = [4]u8{ 'r', 'o', 'c', 'k' };
const ROCKS: [4]u32 = [4]u32{ 1, 2, 3, 4 };

fn rockFunction(numRocks: u32) bool {
    var x: u32 = 0;
    {
        defer x += 2;
    }

    return numRocks > ROCKCOUNTER;
}

test "if statement" {
    defer std.debug.print("\n", .{});

    for (ROCKS) |r| {
        try expect(rockFunction(@as(u32, r)));
    }
}
