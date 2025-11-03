pub const routes = [_]zx.App.Meta.Route{
    .{
        .path = "/",
        .page = @import("./.zigx/page.zig").Page,
        .layout = @import("./.zigx/layout.zig").Layout,
        .routes = &.{
            .{
                .path = "/about",
                .page = @import("./.zigx/about/page.zig").Page,
            },
            .{
                .path = "/time",
                .page = @import("./.zigx/time/page.zig").Page,
            },
            .{
                .path = "/blog",
                .page = @import("./.zigx/blog/page.zig").Page,
            },
        },
    },
};

pub const meta = zx.App.Meta{
    .routes = &routes,
};

const zx = @import("zx");
