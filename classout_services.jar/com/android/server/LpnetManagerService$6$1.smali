.class Lcom/android/server/LpnetManagerService$6$1;
.super Ljava/lang/Object;
.source "LpnetManagerService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/LpnetManagerService$6;->onReceive(Landroid/content/Context;Landroid/content/Intent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/server/LpnetManagerService$6;


# direct methods
.method constructor <init>(Lcom/android/server/LpnetManagerService$6;)V
    .registers 2

    .prologue
    .line 874
    iput-object p1, p0, this$1:Lcom/android/server/LpnetManagerService$6;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 11

    .prologue
    const-wide/16 v4, 0x1

    const-wide/16 v8, 0x7d0

    .line 877
    iget-object v0, p0, this$1:Lcom/android/server/LpnetManagerService$6;

    iget-object v0, v0, Lcom/android/server/LpnetManagerService$6;->this$0:Lcom/android/server/LpnetManagerService;

    iget-object v1, p0, this$1:Lcom/android/server/LpnetManagerService$6;

    iget-object v1, v1, Lcom/android/server/LpnetManagerService$6;->this$0:Lcom/android/server/LpnetManagerService;

    # getter for: Lcom/android/server/LpnetManagerService;->mScreenOffActionTime:J
    invoke-static {v1}, Lcom/android/server/LpnetManagerService;->access$2000(Lcom/android/server/LpnetManagerService;)J

    move-result-wide v2

    # invokes: Lcom/android/server/LpnetManagerService;->screenOffAction(J)V
    invoke-static {v0, v2, v3}, Lcom/android/server/LpnetManagerService;->access$2100(Lcom/android/server/LpnetManagerService;J)V

    .line 878
    iget-object v0, p0, this$1:Lcom/android/server/LpnetManagerService$6;

    iget-object v0, v0, Lcom/android/server/LpnetManagerService$6;->this$0:Lcom/android/server/LpnetManagerService;

    # getter for: Lcom/android/server/LpnetManagerService;->mAutoFreezeEnabled:Z
    invoke-static {v0}, Lcom/android/server/LpnetManagerService;->access$2200(Lcom/android/server/LpnetManagerService;)Z

    move-result v0

    if-eqz v0, :cond_96

    .line 879
    # getter for: Lcom/android/server/LpnetManagerService;->APP_FREEZER_LOG:Z
    invoke-static {}, Lcom/android/server/LpnetManagerService;->access$000()Z

    move-result v0

    if-eqz v0, :cond_44

    const-string v0, "LpnetManagerService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "mMissedLRUFiring ?:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, this$1:Lcom/android/server/LpnetManagerService$6;

    iget-object v2, v2, Lcom/android/server/LpnetManagerService$6;->this$0:Lcom/android/server/LpnetManagerService;

    # getter for: Lcom/android/server/LpnetManagerService;->mMissedLRUFiring:Z
    invoke-static {v2}, Lcom/android/server/LpnetManagerService;->access$2300(Lcom/android/server/LpnetManagerService;)Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 881
    :cond_44
    iget-object v0, p0, this$1:Lcom/android/server/LpnetManagerService$6;

    iget-object v0, v0, Lcom/android/server/LpnetManagerService$6;->this$0:Lcom/android/server/LpnetManagerService;

    # getter for: Lcom/android/server/LpnetManagerService;->mAutoRunBasedFreeze:Z
    invoke-static {v0}, Lcom/android/server/LpnetManagerService;->access$1800(Lcom/android/server/LpnetManagerService;)Z

    move-result v0

    if-eqz v0, :cond_ac

    .line 882
    iget-object v0, p0, this$1:Lcom/android/server/LpnetManagerService$6;

    iget-object v0, v0, Lcom/android/server/LpnetManagerService$6;->this$0:Lcom/android/server/LpnetManagerService;

    # getter for: Lcom/android/server/LpnetManagerService;->mLRUTrafficMapLock:Ljava/lang/Object;
    invoke-static {v0}, Lcom/android/server/LpnetManagerService;->access$2400(Lcom/android/server/LpnetManagerService;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    .line 883
    :try_start_57
    iget-object v0, p0, this$1:Lcom/android/server/LpnetManagerService$6;

    iget-object v0, v0, Lcom/android/server/LpnetManagerService$6;->this$0:Lcom/android/server/LpnetManagerService;

    # getter for: Lcom/android/server/LpnetManagerService;->mTrafficStatMap_LRU_TX:Ljava/util/Map;
    invoke-static {v0}, Lcom/android/server/LpnetManagerService;->access$2500(Lcom/android/server/LpnetManagerService;)Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 884
    iget-object v0, p0, this$1:Lcom/android/server/LpnetManagerService$6;

    iget-object v0, v0, Lcom/android/server/LpnetManagerService$6;->this$0:Lcom/android/server/LpnetManagerService;

    # getter for: Lcom/android/server/LpnetManagerService;->mTrafficStatMap_LRU_RX:Ljava/util/Map;
    invoke-static {v0}, Lcom/android/server/LpnetManagerService;->access$2600(Lcom/android/server/LpnetManagerService;)Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 885
    monitor-exit v1
    :try_end_6e
    .catchall {:try_start_57 .. :try_end_6e} :catchall_97

    .line 886
    iget-object v0, p0, this$1:Lcom/android/server/LpnetManagerService$6;

    iget-object v0, v0, Lcom/android/server/LpnetManagerService$6;->this$0:Lcom/android/server/LpnetManagerService;

    # getter for: Lcom/android/server/LpnetManagerService;->mFreezeWithOwnLRU:Z
    invoke-static {v0}, Lcom/android/server/LpnetManagerService;->access$2700(Lcom/android/server/LpnetManagerService;)Z

    move-result v0

    if-eqz v0, :cond_9a

    iget-object v0, p0, this$1:Lcom/android/server/LpnetManagerService$6;

    iget-object v0, v0, Lcom/android/server/LpnetManagerService$6;->this$0:Lcom/android/server/LpnetManagerService;

    # getter for: Lcom/android/server/LpnetManagerService;->mLruMissedImmediateFreezeTime:J
    invoke-static {v0}, Lcom/android/server/LpnetManagerService;->access$2800(Lcom/android/server/LpnetManagerService;)J

    move-result-wide v0

    cmp-long v0, v0, v8

    if-lez v0, :cond_9a

    .line 887
    iget-object v0, p0, this$1:Lcom/android/server/LpnetManagerService$6;

    iget-object v0, v0, Lcom/android/server/LpnetManagerService$6;->this$0:Lcom/android/server/LpnetManagerService;

    const-string v1, "NETWORK_STAT_LRU"

    iget-object v2, p0, this$1:Lcom/android/server/LpnetManagerService$6;

    iget-object v2, v2, Lcom/android/server/LpnetManagerService$6;->this$0:Lcom/android/server/LpnetManagerService;

    # getter for: Lcom/android/server/LpnetManagerService;->mLruMissedImmediateFreezeTime:J
    invoke-static {v2}, Lcom/android/server/LpnetManagerService;->access$2800(Lcom/android/server/LpnetManagerService;)J

    move-result-wide v2

    sub-long/2addr v2, v8

    # invokes: Lcom/android/server/LpnetManagerService;->setAlarm(Ljava/lang/String;JJ)V
    invoke-static/range {v0 .. v5}, Lcom/android/server/LpnetManagerService;->access$2900(Lcom/android/server/LpnetManagerService;Ljava/lang/String;JJ)V

    .line 915
    :cond_96
    :goto_96
    return-void

    .line 885
    :catchall_97
    move-exception v0

    :try_start_98
    monitor-exit v1
    :try_end_99
    .catchall {:try_start_98 .. :try_end_99} :catchall_97

    throw v0

    .line 889
    :cond_9a
    iget-object v0, p0, this$1:Lcom/android/server/LpnetManagerService$6;

    iget-object v0, v0, Lcom/android/server/LpnetManagerService$6;->this$0:Lcom/android/server/LpnetManagerService;

    const-string v1, "ACTION_TRIGGER_UNUSED_APP_LRU "

    iget-object v2, p0, this$1:Lcom/android/server/LpnetManagerService$6;

    iget-object v2, v2, Lcom/android/server/LpnetManagerService$6;->this$0:Lcom/android/server/LpnetManagerService;

    # getter for: Lcom/android/server/LpnetManagerService;->mLruMissedImmediateFreezeTime:J
    invoke-static {v2}, Lcom/android/server/LpnetManagerService;->access$2800(Lcom/android/server/LpnetManagerService;)J

    move-result-wide v2

    # invokes: Lcom/android/server/LpnetManagerService;->setAlarm(Ljava/lang/String;JJ)V
    invoke-static/range {v0 .. v5}, Lcom/android/server/LpnetManagerService;->access$2900(Lcom/android/server/LpnetManagerService;Ljava/lang/String;JJ)V

    goto :goto_96

    .line 892
    :cond_ac
    iget-object v0, p0, this$1:Lcom/android/server/LpnetManagerService$6;

    iget-object v0, v0, Lcom/android/server/LpnetManagerService$6;->this$0:Lcom/android/server/LpnetManagerService;

    # getter for: Lcom/android/server/LpnetManagerService;->mMissedLRUFiring:Z
    invoke-static {v0}, Lcom/android/server/LpnetManagerService;->access$2300(Lcom/android/server/LpnetManagerService;)Z

    move-result v0

    if-eqz v0, :cond_11c

    .line 893
    iget-object v0, p0, this$1:Lcom/android/server/LpnetManagerService$6;

    iget-object v0, v0, Lcom/android/server/LpnetManagerService$6;->this$0:Lcom/android/server/LpnetManagerService;

    # getter for: Lcom/android/server/LpnetManagerService;->mLRUTrafficMapLock:Ljava/lang/Object;
    invoke-static {v0}, Lcom/android/server/LpnetManagerService;->access$2400(Lcom/android/server/LpnetManagerService;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    .line 894
    :try_start_bf
    iget-object v0, p0, this$1:Lcom/android/server/LpnetManagerService$6;

    iget-object v0, v0, Lcom/android/server/LpnetManagerService$6;->this$0:Lcom/android/server/LpnetManagerService;

    # getter for: Lcom/android/server/LpnetManagerService;->mTrafficStatMap_LRU_TX:Ljava/util/Map;
    invoke-static {v0}, Lcom/android/server/LpnetManagerService;->access$2500(Lcom/android/server/LpnetManagerService;)Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 895
    iget-object v0, p0, this$1:Lcom/android/server/LpnetManagerService$6;

    iget-object v0, v0, Lcom/android/server/LpnetManagerService$6;->this$0:Lcom/android/server/LpnetManagerService;

    # getter for: Lcom/android/server/LpnetManagerService;->mTrafficStatMap_LRU_RX:Ljava/util/Map;
    invoke-static {v0}, Lcom/android/server/LpnetManagerService;->access$2600(Lcom/android/server/LpnetManagerService;)Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 896
    monitor-exit v1
    :try_end_d6
    .catchall {:try_start_bf .. :try_end_d6} :catchall_107

    .line 897
    iget-object v0, p0, this$1:Lcom/android/server/LpnetManagerService$6;

    iget-object v0, v0, Lcom/android/server/LpnetManagerService$6;->this$0:Lcom/android/server/LpnetManagerService;

    # getter for: Lcom/android/server/LpnetManagerService;->mFreezeWithOwnLRU:Z
    invoke-static {v0}, Lcom/android/server/LpnetManagerService;->access$2700(Lcom/android/server/LpnetManagerService;)Z

    move-result v0

    if-eqz v0, :cond_10a

    iget-object v0, p0, this$1:Lcom/android/server/LpnetManagerService$6;

    iget-object v0, v0, Lcom/android/server/LpnetManagerService$6;->this$0:Lcom/android/server/LpnetManagerService;

    # getter for: Lcom/android/server/LpnetManagerService;->mLruMissedImmediateFreezeTime:J
    invoke-static {v0}, Lcom/android/server/LpnetManagerService;->access$2800(Lcom/android/server/LpnetManagerService;)J

    move-result-wide v0

    cmp-long v0, v0, v8

    if-lez v0, :cond_10a

    .line 898
    iget-object v0, p0, this$1:Lcom/android/server/LpnetManagerService$6;

    iget-object v0, v0, Lcom/android/server/LpnetManagerService$6;->this$0:Lcom/android/server/LpnetManagerService;

    const-string v1, "NETWORK_STAT_LRU"

    iget-object v2, p0, this$1:Lcom/android/server/LpnetManagerService$6;

    iget-object v2, v2, Lcom/android/server/LpnetManagerService$6;->this$0:Lcom/android/server/LpnetManagerService;

    # getter for: Lcom/android/server/LpnetManagerService;->mLruMissedImmediateFreezeTime:J
    invoke-static {v2}, Lcom/android/server/LpnetManagerService;->access$2800(Lcom/android/server/LpnetManagerService;)J

    move-result-wide v2

    sub-long/2addr v2, v8

    # invokes: Lcom/android/server/LpnetManagerService;->setAlarm(Ljava/lang/String;JJ)V
    invoke-static/range {v0 .. v5}, Lcom/android/server/LpnetManagerService;->access$2900(Lcom/android/server/LpnetManagerService;Ljava/lang/String;JJ)V

    .line 902
    :goto_fe
    iget-object v0, p0, this$1:Lcom/android/server/LpnetManagerService$6;

    iget-object v0, v0, Lcom/android/server/LpnetManagerService$6;->this$0:Lcom/android/server/LpnetManagerService;

    const/4 v1, 0x0

    # setter for: Lcom/android/server/LpnetManagerService;->mMissedLRUFiring:Z
    invoke-static {v0, v1}, Lcom/android/server/LpnetManagerService;->access$2302(Lcom/android/server/LpnetManagerService;Z)Z

    goto :goto_96

    .line 896
    :catchall_107
    move-exception v0

    :try_start_108
    monitor-exit v1
    :try_end_109
    .catchall {:try_start_108 .. :try_end_109} :catchall_107

    throw v0

    .line 900
    :cond_10a
    iget-object v0, p0, this$1:Lcom/android/server/LpnetManagerService$6;

    iget-object v0, v0, Lcom/android/server/LpnetManagerService$6;->this$0:Lcom/android/server/LpnetManagerService;

    const-string v1, "ACTION_TRIGGER_UNUSED_APP_LRU "

    iget-object v2, p0, this$1:Lcom/android/server/LpnetManagerService$6;

    iget-object v2, v2, Lcom/android/server/LpnetManagerService$6;->this$0:Lcom/android/server/LpnetManagerService;

    # getter for: Lcom/android/server/LpnetManagerService;->mLruMissedImmediateFreezeTime:J
    invoke-static {v2}, Lcom/android/server/LpnetManagerService;->access$2800(Lcom/android/server/LpnetManagerService;)J

    move-result-wide v2

    # invokes: Lcom/android/server/LpnetManagerService;->setAlarm(Ljava/lang/String;JJ)V
    invoke-static/range {v0 .. v5}, Lcom/android/server/LpnetManagerService;->access$2900(Lcom/android/server/LpnetManagerService;Ljava/lang/String;JJ)V

    goto :goto_fe

    .line 904
    :cond_11c
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    .line 905
    .local v6, "currentTime":J
    # getter for: Lcom/android/server/LpnetManagerService;->APP_FREEZER_LOG:Z
    invoke-static {}, Lcom/android/server/LpnetManagerService;->access$000()Z

    move-result v0

    if-eqz v0, :cond_151

    const-string v0, "LpnetManagerService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "currentTime:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", mPreviousLRUfreezedTime:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, this$1:Lcom/android/server/LpnetManagerService$6;

    iget-object v2, v2, Lcom/android/server/LpnetManagerService$6;->this$0:Lcom/android/server/LpnetManagerService;

    # getter for: Lcom/android/server/LpnetManagerService;->mPreviousLRUfreezedTime:J
    invoke-static {v2}, Lcom/android/server/LpnetManagerService;->access$3000(Lcom/android/server/LpnetManagerService;)J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 906
    :cond_151
    const-string v0, "LpnetManagerService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "mMissedLRUFiring diff:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, this$1:Lcom/android/server/LpnetManagerService$6;

    iget-object v2, v2, Lcom/android/server/LpnetManagerService$6;->this$0:Lcom/android/server/LpnetManagerService;

    # getter for: Lcom/android/server/LpnetManagerService;->mPreviousLRUfreezedTime:J
    invoke-static {v2}, Lcom/android/server/LpnetManagerService;->access$3000(Lcom/android/server/LpnetManagerService;)J

    move-result-wide v2

    sub-long v2, v6, v2

    const-wide/32 v4, 0xea60

    div-long/2addr v2, v4

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 907
    iget-object v0, p0, this$1:Lcom/android/server/LpnetManagerService$6;

    iget-object v0, v0, Lcom/android/server/LpnetManagerService$6;->this$0:Lcom/android/server/LpnetManagerService;

    # getter for: Lcom/android/server/LpnetManagerService;->mPreviousLRUfreezedTime:J
    invoke-static {v0}, Lcom/android/server/LpnetManagerService;->access$3000(Lcom/android/server/LpnetManagerService;)J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_96

    iget-object v0, p0, this$1:Lcom/android/server/LpnetManagerService$6;

    iget-object v0, v0, Lcom/android/server/LpnetManagerService$6;->this$0:Lcom/android/server/LpnetManagerService;

    # getter for: Lcom/android/server/LpnetManagerService;->mPreviousLRUfreezedTime:J
    invoke-static {v0}, Lcom/android/server/LpnetManagerService;->access$3000(Lcom/android/server/LpnetManagerService;)J

    move-result-wide v0

    sub-long v0, v6, v0

    sub-long/2addr v0, v8

    iget-object v2, p0, this$1:Lcom/android/server/LpnetManagerService$6;

    iget-object v2, v2, Lcom/android/server/LpnetManagerService$6;->this$0:Lcom/android/server/LpnetManagerService;

    # getter for: Lcom/android/server/LpnetManagerService;->mUnusedAutoFreezeTime:J
    invoke-static {v2}, Lcom/android/server/LpnetManagerService;->access$3100(Lcom/android/server/LpnetManagerService;)J

    move-result-wide v2

    cmp-long v0, v0, v2

    if-lez v0, :cond_96

    .line 908
    iget-object v0, p0, this$1:Lcom/android/server/LpnetManagerService$6;

    iget-object v0, v0, Lcom/android/server/LpnetManagerService$6;->this$0:Lcom/android/server/LpnetManagerService;

    # getter for: Lcom/android/server/LpnetManagerService;->mNetworkStatIntent_LRU:Landroid/app/PendingIntent;
    invoke-static {v0}, Lcom/android/server/LpnetManagerService;->access$3200(Lcom/android/server/LpnetManagerService;)Landroid/app/PendingIntent;

    move-result-object v0

    if-eqz v0, :cond_1ba

    iget-object v0, p0, this$1:Lcom/android/server/LpnetManagerService$6;

    iget-object v0, v0, Lcom/android/server/LpnetManagerService$6;->this$0:Lcom/android/server/LpnetManagerService;

    # getter for: Lcom/android/server/LpnetManagerService;->mAlarm:Landroid/app/AlarmManager;
    invoke-static {v0}, Lcom/android/server/LpnetManagerService;->access$1600(Lcom/android/server/LpnetManagerService;)Landroid/app/AlarmManager;

    move-result-object v0

    iget-object v1, p0, this$1:Lcom/android/server/LpnetManagerService$6;

    iget-object v1, v1, Lcom/android/server/LpnetManagerService$6;->this$0:Lcom/android/server/LpnetManagerService;

    # getter for: Lcom/android/server/LpnetManagerService;->mNetworkStatIntent_LRU:Landroid/app/PendingIntent;
    invoke-static {v1}, Lcom/android/server/LpnetManagerService;->access$3200(Lcom/android/server/LpnetManagerService;)Landroid/app/PendingIntent;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V

    .line 909
    :cond_1ba
    iget-object v0, p0, this$1:Lcom/android/server/LpnetManagerService$6;

    iget-object v0, v0, Lcom/android/server/LpnetManagerService$6;->this$0:Lcom/android/server/LpnetManagerService;

    # getter for: Lcom/android/server/LpnetManagerService;->mLRUIntent:Landroid/app/PendingIntent;
    invoke-static {v0}, Lcom/android/server/LpnetManagerService;->access$1900(Lcom/android/server/LpnetManagerService;)Landroid/app/PendingIntent;

    move-result-object v0

    if-eqz v0, :cond_1d7

    iget-object v0, p0, this$1:Lcom/android/server/LpnetManagerService$6;

    iget-object v0, v0, Lcom/android/server/LpnetManagerService$6;->this$0:Lcom/android/server/LpnetManagerService;

    # getter for: Lcom/android/server/LpnetManagerService;->mAlarm:Landroid/app/AlarmManager;
    invoke-static {v0}, Lcom/android/server/LpnetManagerService;->access$1600(Lcom/android/server/LpnetManagerService;)Landroid/app/AlarmManager;

    move-result-object v0

    iget-object v1, p0, this$1:Lcom/android/server/LpnetManagerService$6;

    iget-object v1, v1, Lcom/android/server/LpnetManagerService$6;->this$0:Lcom/android/server/LpnetManagerService;

    # getter for: Lcom/android/server/LpnetManagerService;->mLRUIntent:Landroid/app/PendingIntent;
    invoke-static {v1}, Lcom/android/server/LpnetManagerService;->access$1900(Lcom/android/server/LpnetManagerService;)Landroid/app/PendingIntent;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V

    .line 910
    :cond_1d7
    iget-object v0, p0, this$1:Lcom/android/server/LpnetManagerService$6;

    iget-object v0, v0, Lcom/android/server/LpnetManagerService$6;->this$0:Lcom/android/server/LpnetManagerService;

    const/4 v1, 0x1

    # setter for: Lcom/android/server/LpnetManagerService;->mMissedLRUFiring:Z
    invoke-static {v0, v1}, Lcom/android/server/LpnetManagerService;->access$2302(Lcom/android/server/LpnetManagerService;Z)Z

    goto/16 :goto_96
.end method
