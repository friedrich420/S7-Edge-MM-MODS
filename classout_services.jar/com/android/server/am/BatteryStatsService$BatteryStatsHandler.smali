.class Lcom/android/server/am/BatteryStatsService$BatteryStatsHandler;
.super Landroid/os/Handler;
.source "BatteryStatsService.java"

# interfaces
.implements Lcom/android/internal/os/BatteryStatsImpl$ExternalStatsSync;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/am/BatteryStatsService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "BatteryStatsHandler"
.end annotation


# static fields
.field public static final MSG_SYNC_EXTERNAL_STATS:I = 0x1

.field public static final MSG_WRITE_TO_DISK:I = 0x2


# instance fields
.field private mUidsToRemove:Landroid/util/IntArray;

.field private mUpdateFlags:I

.field final synthetic this$0:Lcom/android/server/am/BatteryStatsService;


# direct methods
.method public constructor <init>(Lcom/android/server/am/BatteryStatsService;Landroid/os/Looper;)V
    .registers 4
    .param p2, "looper"    # Landroid/os/Looper;

    .prologue
    .line 94
    iput-object p1, p0, this$0:Lcom/android/server/am/BatteryStatsService;

    .line 95
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 91
    const/4 v0, 0x0

    iput v0, p0, mUpdateFlags:I

    .line 92
    new-instance v0, Landroid/util/IntArray;

    invoke-direct {v0}, Landroid/util/IntArray;-><init>()V

    iput-object v0, p0, mUidsToRemove:Landroid/util/IntArray;

    .line 96
    return-void
.end method

.method private scheduleSyncLocked(Ljava/lang/String;I)V
    .registers 4
    .param p1, "reason"    # Ljava/lang/String;
    .param p2, "updateFlags"    # I

    .prologue
    .line 156
    iget v0, p0, mUpdateFlags:I

    if-nez v0, :cond_c

    .line 157
    const/4 v0, 0x1

    invoke-static {p0, v0, p1}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {p0, v0}, sendMessage(Landroid/os/Message;)Z

    .line 159
    :cond_c
    iget v0, p0, mUpdateFlags:I

    or-int/2addr v0, p2

    iput v0, p0, mUpdateFlags:I

    .line 160
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 8
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 100
    iget v3, p1, Landroid/os/Message;->what:I

    packed-switch v3, :pswitch_data_66

    .line 131
    :goto_5
    return-void

    .line 103
    :pswitch_6
    monitor-enter p0

    .line 104
    const/4 v3, 0x1

    :try_start_8
    invoke-virtual {p0, v3}, removeMessages(I)V

    .line 105
    iget v2, p0, mUpdateFlags:I

    .line 106
    .local v2, "updateFlags":I
    const/4 v3, 0x0

    iput v3, p0, mUpdateFlags:I

    .line 107
    monitor-exit p0
    :try_end_11
    .catchall {:try_start_8 .. :try_end_11} :catchall_39

    .line 108
    iget-object v4, p0, this$0:Lcom/android/server/am/BatteryStatsService;

    iget-object v3, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v4, v3, v2}, Lcom/android/server/am/BatteryStatsService;->updateExternalStats(Ljava/lang/String;I)V

    .line 113
    iget-object v3, p0, this$0:Lcom/android/server/am/BatteryStatsService;

    iget-object v4, v3, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    monitor-enter v4

    .line 114
    :try_start_1f
    monitor-enter p0
    :try_end_20
    .catchall {:try_start_1f .. :try_end_20} :catchall_44

    .line 115
    :try_start_20
    iget-object v3, p0, mUidsToRemove:Landroid/util/IntArray;

    invoke-virtual {v3}, Landroid/util/IntArray;->size()I

    move-result v1

    .line 116
    .local v1, "numUidsToRemove":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_27
    if-ge v0, v1, :cond_3c

    .line 117
    iget-object v3, p0, this$0:Lcom/android/server/am/BatteryStatsService;

    iget-object v3, v3, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    iget-object v5, p0, mUidsToRemove:Landroid/util/IntArray;

    invoke-virtual {v5, v0}, Landroid/util/IntArray;->get(I)I

    move-result v5

    invoke-virtual {v3, v5}, Lcom/android/internal/os/BatteryStatsImpl;->removeIsolatedUidLocked(I)V
    :try_end_36
    .catchall {:try_start_20 .. :try_end_36} :catchall_47

    .line 116
    add-int/lit8 v0, v0, 0x1

    goto :goto_27

    .line 107
    .end local v0    # "i":I
    .end local v1    # "numUidsToRemove":I
    .end local v2    # "updateFlags":I
    :catchall_39
    move-exception v3

    :try_start_3a
    monitor-exit p0
    :try_end_3b
    .catchall {:try_start_3a .. :try_end_3b} :catchall_39

    throw v3

    .line 119
    .restart local v0    # "i":I
    .restart local v1    # "numUidsToRemove":I
    .restart local v2    # "updateFlags":I
    :cond_3c
    :try_start_3c
    monitor-exit p0
    :try_end_3d
    .catchall {:try_start_3c .. :try_end_3d} :catchall_47

    .line 120
    :try_start_3d
    iget-object v3, p0, mUidsToRemove:Landroid/util/IntArray;

    invoke-virtual {v3}, Landroid/util/IntArray;->clear()V

    .line 121
    monitor-exit v4

    goto :goto_5

    .end local v0    # "i":I
    .end local v1    # "numUidsToRemove":I
    :catchall_44
    move-exception v3

    monitor-exit v4
    :try_end_46
    .catchall {:try_start_3d .. :try_end_46} :catchall_44

    throw v3

    .line 119
    :catchall_47
    move-exception v3

    :try_start_48
    monitor-exit p0
    :try_end_49
    .catchall {:try_start_48 .. :try_end_49} :catchall_47

    :try_start_49
    throw v3
    :try_end_4a
    .catchall {:try_start_49 .. :try_end_4a} :catchall_44

    .line 125
    .end local v2    # "updateFlags":I
    :pswitch_4a
    iget-object v3, p0, this$0:Lcom/android/server/am/BatteryStatsService;

    const-string/jumbo v4, "write"

    const/16 v5, 0xf

    invoke-virtual {v3, v4, v5}, Lcom/android/server/am/BatteryStatsService;->updateExternalStats(Ljava/lang/String;I)V

    .line 126
    iget-object v3, p0, this$0:Lcom/android/server/am/BatteryStatsService;

    iget-object v4, v3, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    monitor-enter v4

    .line 127
    :try_start_59
    iget-object v3, p0, this$0:Lcom/android/server/am/BatteryStatsService;

    iget-object v3, v3, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    invoke-virtual {v3}, Lcom/android/internal/os/BatteryStatsImpl;->writeAsyncLocked()V

    .line 128
    monitor-exit v4

    goto :goto_5

    :catchall_62
    move-exception v3

    monitor-exit v4
    :try_end_64
    .catchall {:try_start_59 .. :try_end_64} :catchall_62

    throw v3

    .line 100
    nop

    :pswitch_data_66
    .packed-switch 0x1
        :pswitch_6
        :pswitch_4a
    .end packed-switch
.end method

.method public scheduleCpuSyncDueToRemovedUid(I)V
    .registers 4
    .param p1, "uid"    # I

    .prologue
    .line 149
    monitor-enter p0

    .line 150
    :try_start_1
    const-string/jumbo v0, "remove-uid"

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, scheduleSyncLocked(Ljava/lang/String;I)V

    .line 151
    iget-object v0, p0, mUidsToRemove:Landroid/util/IntArray;

    invoke-virtual {v0, p1}, Landroid/util/IntArray;->add(I)V

    .line 152
    monitor-exit p0

    .line 153
    return-void

    .line 152
    :catchall_f
    move-exception v0

    monitor-exit p0
    :try_end_11
    .catchall {:try_start_1 .. :try_end_11} :catchall_f

    throw v0
.end method

.method public scheduleSync(Ljava/lang/String;)V
    .registers 3
    .param p1, "reason"    # Ljava/lang/String;

    .prologue
    .line 135
    monitor-enter p0

    .line 136
    const/16 v0, 0xf

    :try_start_3
    invoke-direct {p0, p1, v0}, scheduleSyncLocked(Ljava/lang/String;I)V

    .line 137
    monitor-exit p0

    .line 138
    return-void

    .line 137
    :catchall_8
    move-exception v0

    monitor-exit p0
    :try_end_a
    .catchall {:try_start_3 .. :try_end_a} :catchall_8

    throw v0
.end method

.method public scheduleWifiSync(Ljava/lang/String;)V
    .registers 3
    .param p1, "reason"    # Ljava/lang/String;

    .prologue
    .line 142
    monitor-enter p0

    .line 143
    const/4 v0, 0x2

    :try_start_2
    invoke-direct {p0, p1, v0}, scheduleSyncLocked(Ljava/lang/String;I)V

    .line 144
    monitor-exit p0

    .line 145
    return-void

    .line 144
    :catchall_7
    move-exception v0

    monitor-exit p0
    :try_end_9
    .catchall {:try_start_2 .. :try_end_9} :catchall_7

    throw v0
.end method
