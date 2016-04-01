.class Lcom/android/server/AlarmManagerService$BatchTimeOrder;
.super Ljava/lang/Object;
.source "AlarmManagerService.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/AlarmManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "BatchTimeOrder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator",
        "<",
        "Lcom/android/server/AlarmManagerService$Batch;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    .prologue
    .line 728
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public compare(Lcom/android/server/AlarmManagerService$Batch;Lcom/android/server/AlarmManagerService$Batch;)I
    .registers 11
    .param p1, "b1"    # Lcom/android/server/AlarmManagerService$Batch;
    .param p2, "b2"    # Lcom/android/server/AlarmManagerService$Batch;

    .prologue
    const-wide/16 v6, 0x0

    .line 730
    iget-wide v0, p1, Lcom/android/server/AlarmManagerService$Batch;->start:J

    .line 731
    .local v0, "when1":J
    iget-wide v2, p2, Lcom/android/server/AlarmManagerService$Batch;->start:J

    .line 732
    .local v2, "when2":J
    sub-long v4, v0, v2

    cmp-long v4, v4, v6

    if-lez v4, :cond_e

    .line 733
    const/4 v4, 0x1

    .line 738
    :goto_d
    return v4

    .line 735
    :cond_e
    sub-long v4, v0, v2

    cmp-long v4, v4, v6

    if-gez v4, :cond_16

    .line 736
    const/4 v4, -0x1

    goto :goto_d

    .line 738
    :cond_16
    const/4 v4, 0x0

    goto :goto_d
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .registers 4
    .param p1, "x0"    # Ljava/lang/Object;
    .param p2, "x1"    # Ljava/lang/Object;

    .prologue
    .line 728
    check-cast p1, Lcom/android/server/AlarmManagerService$Batch;

    .end local p1    # "x0":Ljava/lang/Object;
    check-cast p2, Lcom/android/server/AlarmManagerService$Batch;

    .end local p2    # "x1":Ljava/lang/Object;
    invoke-virtual {p0, p1, p2}, compare(Lcom/android/server/AlarmManagerService$Batch;Lcom/android/server/AlarmManagerService$Batch;)I

    move-result v0

    return v0
.end method
