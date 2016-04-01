.class Lcom/android/server/am/ActivityStackSupervisor$1;
.super Ljava/lang/Object;
.source "ActivityStackSupervisor.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/am/ActivityStackSupervisor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator",
        "<",
        "Landroid/app/ActivityManager$RunningTaskInfo;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/am/ActivityStackSupervisor;


# direct methods
.method constructor <init>(Lcom/android/server/am/ActivityStackSupervisor;)V
    .registers 2

    .prologue
    .line 1796
    iput-object p1, p0, this$0:Lcom/android/server/am/ActivityStackSupervisor;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public compare(Landroid/app/ActivityManager$RunningTaskInfo;Landroid/app/ActivityManager$RunningTaskInfo;)I
    .registers 15
    .param p1, "lhs"    # Landroid/app/ActivityManager$RunningTaskInfo;
    .param p2, "rhs"    # Landroid/app/ActivityManager$RunningTaskInfo;

    .prologue
    .line 1800
    iget-wide v2, p1, Landroid/app/ActivityManager$RunningTaskInfo;->lastActiveElapsedTime:J

    .line 1801
    .local v2, "time1_elapsed":J
    iget-wide v6, p2, Landroid/app/ActivityManager$RunningTaskInfo;->lastActiveElapsedTime:J

    .line 1802
    .local v6, "time2_elapsed":J
    sub-long v8, v2, v6

    const-wide/16 v10, 0x0

    cmp-long v8, v8, v10

    if-lez v8, :cond_e

    .line 1803
    const/4 v8, -0x1

    .line 1817
    :goto_d
    return v8

    .line 1805
    :cond_e
    sub-long v8, v2, v6

    const-wide/16 v10, 0x0

    cmp-long v8, v8, v10

    if-gez v8, :cond_18

    .line 1806
    const/4 v8, 0x1

    goto :goto_d

    .line 1809
    :cond_18
    iget-wide v0, p1, Landroid/app/ActivityManager$RunningTaskInfo;->lastActiveTime:J

    .line 1810
    .local v0, "time1":J
    iget-wide v4, p2, Landroid/app/ActivityManager$RunningTaskInfo;->lastActiveTime:J

    .line 1811
    .local v4, "time2":J
    sub-long v8, v0, v4

    const-wide/16 v10, 0x0

    cmp-long v8, v8, v10

    if-lez v8, :cond_26

    .line 1812
    const/4 v8, -0x1

    goto :goto_d

    .line 1814
    :cond_26
    sub-long v8, v0, v4

    const-wide/16 v10, 0x0

    cmp-long v8, v8, v10

    if-gez v8, :cond_30

    .line 1815
    const/4 v8, 0x1

    goto :goto_d

    .line 1817
    :cond_30
    const/4 v8, 0x0

    goto :goto_d
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .registers 4
    .param p1, "x0"    # Ljava/lang/Object;
    .param p2, "x1"    # Ljava/lang/Object;

    .prologue
    .line 1796
    check-cast p1, Landroid/app/ActivityManager$RunningTaskInfo;

    .end local p1    # "x0":Ljava/lang/Object;
    check-cast p2, Landroid/app/ActivityManager$RunningTaskInfo;

    .end local p2    # "x1":Ljava/lang/Object;
    invoke-virtual {p0, p1, p2}, compare(Landroid/app/ActivityManager$RunningTaskInfo;Landroid/app/ActivityManager$RunningTaskInfo;)I

    move-result v0

    return v0
.end method
