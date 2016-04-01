.class Lcom/android/server/AlarmManagerService$AlarmStat;
.super Ljava/lang/Object;
.source "AlarmManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/AlarmManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "AlarmStat"
.end annotation


# instance fields
.field public count:I

.field public final pid:I

.field public final uid:I


# direct methods
.method public constructor <init>(II)V
    .registers 3
    .param p1, "uid"    # I
    .param p2, "pid"    # I

    .prologue
    .line 871
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 872
    iput p1, p0, uid:I

    .line 873
    iput p2, p0, pid:I

    .line 874
    return-void
.end method
