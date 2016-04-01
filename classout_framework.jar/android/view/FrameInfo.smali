.class final Landroid/view/FrameInfo;
.super Ljava/lang/Object;
.source "FrameInfo.java"


# static fields
.field private static final ANIMATION_START:I = 0x6

.field private static final DRAW_START:I = 0x8

.field private static final FLAGS:I = 0x0

.field public static final FLAG_WINDOW_LAYOUT_CHANGED:J = 0x1L

.field private static final HANDLE_INPUT_START:I = 0x5

.field private static final INTENDED_VSYNC:I = 0x1

.field private static final NEWEST_INPUT_EVENT:I = 0x4

.field private static final OLDEST_INPUT_EVENT:I = 0x3

.field private static final PERFORM_TRAVERSALS_START:I = 0x7

.field private static final VSYNC:I = 0x2


# instance fields
.field mFrameInfo:[J


# direct methods
.method constructor <init>()V
    .registers 2

    .prologue
    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 43
    const/16 v0, 0x9

    new-array v0, v0, [J

    iput-object v0, p0, mFrameInfo:[J

    .line 51
    return-void
.end method


# virtual methods
.method public addFlags(J)V
    .registers 8
    .param p1, "flags"    # J

    .prologue
    .line 115
    iget-object v0, p0, mFrameInfo:[J

    const/4 v1, 0x0

    aget-wide v2, v0, v1

    or-long/2addr v2, p1

    aput-wide v2, v0, v1

    .line 116
    return-void
.end method

.method public markAnimationsStart()V
    .registers 5

    .prologue
    .line 103
    iget-object v0, p0, mFrameInfo:[J

    const/4 v1, 0x6

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v2

    aput-wide v2, v0, v1

    .line 104
    return-void
.end method

.method public markDrawStart()V
    .registers 5

    .prologue
    .line 111
    iget-object v0, p0, mFrameInfo:[J

    const/16 v1, 0x8

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v2

    aput-wide v2, v0, v1

    .line 112
    return-void
.end method

.method public markInputHandlingStart()V
    .registers 5

    .prologue
    .line 99
    iget-object v0, p0, mFrameInfo:[J

    const/4 v1, 0x5

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v2

    aput-wide v2, v0, v1

    .line 100
    return-void
.end method

.method public markPerformTraversalsStart()V
    .registers 5

    .prologue
    .line 107
    iget-object v0, p0, mFrameInfo:[J

    const/4 v1, 0x7

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v2

    aput-wide v2, v0, v1

    .line 108
    return-void
.end method

.method public setVsync(JJ)V
    .registers 12
    .param p1, "intendedVsync"    # J
    .param p3, "usedVsync"    # J

    .prologue
    const-wide/16 v4, 0x0

    .line 82
    iget-object v0, p0, mFrameInfo:[J

    const/4 v1, 0x1

    aput-wide p1, v0, v1

    .line 83
    iget-object v0, p0, mFrameInfo:[J

    const/4 v1, 0x2

    aput-wide p3, v0, v1

    .line 84
    iget-object v0, p0, mFrameInfo:[J

    const/4 v1, 0x3

    const-wide v2, 0x7fffffffffffffffL

    aput-wide v2, v0, v1

    .line 85
    iget-object v0, p0, mFrameInfo:[J

    const/4 v1, 0x4

    aput-wide v4, v0, v1

    .line 86
    iget-object v0, p0, mFrameInfo:[J

    const/4 v1, 0x0

    aput-wide v4, v0, v1

    .line 87
    return-void
.end method

.method public updateInputEventTime(JJ)V
    .registers 10
    .param p1, "inputEventTime"    # J
    .param p3, "inputEventOldestTime"    # J

    .prologue
    const/4 v3, 0x4

    const/4 v2, 0x3

    .line 90
    iget-object v0, p0, mFrameInfo:[J

    aget-wide v0, v0, v2

    cmp-long v0, p3, v0

    if-gez v0, :cond_e

    .line 91
    iget-object v0, p0, mFrameInfo:[J

    aput-wide p3, v0, v2

    .line 93
    :cond_e
    iget-object v0, p0, mFrameInfo:[J

    aget-wide v0, v0, v3

    cmp-long v0, p1, v0

    if-lez v0, :cond_1a

    .line 94
    iget-object v0, p0, mFrameInfo:[J

    aput-wide p1, v0, v3

    .line 96
    :cond_1a
    return-void
.end method
