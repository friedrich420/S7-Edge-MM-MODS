.class public Lcom/android/internal/logging/EventLogTags;
.super Ljava/lang/Object;
.source "EventLogTags.java"


# static fields
.field public static final SYSUI_ACTION:I = 0x80000

.field public static final SYSUI_COUNT:I = 0x80002

.field public static final SYSUI_HISTOGRAM:I = 0x80003

.field public static final SYSUI_VIEW_VISIBILITY:I = 0x7ffff


# direct methods
.method private constructor <init>()V
    .registers 1

    .prologue
    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static writeSysuiAction(ILjava/lang/String;)V
    .registers 6
    .param p0, "category"    # I
    .param p1, "pkg"    # Ljava/lang/String;

    .prologue
    .line 30
    const/high16 v0, 0x80000

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x1

    aput-object p1, v1, v2

    invoke-static {v0, v1}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    .line 31
    return-void
.end method

.method public static writeSysuiCount(Ljava/lang/String;I)V
    .registers 6
    .param p0, "name"    # Ljava/lang/String;
    .param p1, "increment"    # I

    .prologue
    .line 34
    const v0, 0x80002

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p0, v1, v2

    const/4 v2, 0x1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    .line 35
    return-void
.end method

.method public static writeSysuiHistogram(Ljava/lang/String;I)V
    .registers 6
    .param p0, "name"    # Ljava/lang/String;
    .param p1, "bucket"    # I

    .prologue
    .line 38
    const v0, 0x80003

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p0, v1, v2

    const/4 v2, 0x1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    .line 39
    return-void
.end method

.method public static writeSysuiViewVisibility(II)V
    .registers 6
    .param p0, "category"    # I
    .param p1, "visible"    # I

    .prologue
    .line 26
    const v0, 0x7ffff

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    .line 27
    return-void
.end method
