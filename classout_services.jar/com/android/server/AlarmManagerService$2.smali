.class Lcom/android/server/AlarmManagerService$2;
.super Landroid/app/IAlarmManager$Stub;
.source "AlarmManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/AlarmManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/AlarmManagerService;


# direct methods
.method constructor <init>(Lcom/android/server/AlarmManagerService;)V
    .registers 2

    .prologue
    .line 1566
    iput-object p1, p0, this$0:Lcom/android/server/AlarmManagerService;

    invoke-direct {p0}, Landroid/app/IAlarmManager$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method protected dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .registers 6
    .param p1, "fd"    # Ljava/io/FileDescriptor;
    .param p2, "pw"    # Ljava/io/PrintWriter;
    .param p3, "args"    # [Ljava/lang/String;

    .prologue
    .line 1704
    iget-object v0, p0, this$0:Lcom/android/server/AlarmManagerService;

    invoke-virtual {v0}, Lcom/android/server/AlarmManagerService;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "android.permission.DUMP"

    invoke-virtual {v0, v1}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_37

    .line 1706
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Permission Denial: can\'t dump AlarmManager from from pid="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", uid="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1713
    :goto_36
    return-void

    .line 1712
    :cond_37
    iget-object v0, p0, this$0:Lcom/android/server/AlarmManagerService;

    invoke-virtual {v0, p2}, Lcom/android/server/AlarmManagerService;->dumpImpl(Ljava/io/PrintWriter;)V

    goto :goto_36
.end method

.method public getNextAlarmClock(I)Landroid/app/AlarmManager$AlarmClockInfo;
    .registers 9
    .param p1, "userId"    # I

    .prologue
    const/4 v3, 0x0

    .line 1695
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v0

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    const-string/jumbo v5, "getNextAlarmClock"

    const/4 v6, 0x0

    move v2, p1

    move v4, v3

    invoke-static/range {v0 .. v6}, Landroid/app/ActivityManager;->handleIncomingUser(IIIZZLjava/lang/String;Ljava/lang/String;)I

    move-result p1

    .line 1699
    iget-object v0, p0, this$0:Lcom/android/server/AlarmManagerService;

    invoke-virtual {v0, p1}, Lcom/android/server/AlarmManagerService;->getNextAlarmClockImpl(I)Landroid/app/AlarmManager$AlarmClockInfo;

    move-result-object v0

    return-object v0
.end method

.method public getNextWakeFromIdleTime()J
    .registers 3

    .prologue
    .line 1685
    iget-object v0, p0, this$0:Lcom/android/server/AlarmManagerService;

    invoke-virtual {v0}, Lcom/android/server/AlarmManagerService;->getNextWakeFromIdleTimeImpl()J

    move-result-wide v0

    return-wide v0
.end method

.method public remove(Landroid/app/PendingIntent;)V
    .registers 5
    .param p1, "operation"    # Landroid/app/PendingIntent;

    .prologue
    .line 1677
    if-eqz p1, :cond_1a

    .line 1678
    const-string v0, "AlarmManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " remove PendingIntent] "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1679
    :cond_1a
    iget-object v0, p0, this$0:Lcom/android/server/AlarmManagerService;

    invoke-virtual {v0, p1}, Lcom/android/server/AlarmManagerService;->removeImpl(Landroid/app/PendingIntent;)V

    .line 1681
    return-void
.end method

.method public set(IJJJILandroid/app/PendingIntent;Landroid/os/WorkSource;Landroid/app/AlarmManager$AlarmClockInfo;)V
    .registers 28
    .param p1, "type"    # I
    .param p2, "triggerAtTime"    # J
    .param p4, "windowLength"    # J
    .param p6, "interval"    # J
    .param p8, "flags"    # I
    .param p9, "operation"    # Landroid/app/PendingIntent;
    .param p10, "workSource"    # Landroid/os/WorkSource;
    .param p11, "alarmClock"    # Landroid/app/AlarmManager$AlarmClockInfo;

    .prologue
    .line 1571
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v14

    .line 1572
    .local v14, "callingUid":I
    if-eqz p10, :cond_19

    .line 1573
    move-object/from16 v0, p0

    iget-object v2, v0, this$0:Lcom/android/server/AlarmManagerService;

    invoke-virtual {v2}, Lcom/android/server/AlarmManagerService;->getContext()Landroid/content/Context;

    move-result-object v2

    const-string v3, "android.permission.UPDATE_DEVICE_STATS"

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v4

    const-string v5, "AlarmManager.set"

    invoke-virtual {v2, v3, v4, v14, v5}, Landroid/content/Context;->enforcePermission(Ljava/lang/String;IILjava/lang/String;)V

    .line 1580
    :cond_19
    and-int/lit8 p8, p8, -0xb

    .line 1585
    const/16 v2, 0x3e8

    if-eq v14, v2, :cond_21

    .line 1586
    and-int/lit8 p8, p8, -0x11

    .line 1593
    :cond_21
    const/16 v2, 0x2710

    if-ge v14, v2, :cond_29

    if-nez p10, :cond_29

    .line 1594
    or-int/lit8 p8, p8, 0x8

    .line 1598
    :cond_29
    const-wide/16 v2, 0x0

    cmp-long v2, p4, v2

    if-nez v2, :cond_31

    .line 1599
    or-int/lit8 p8, p8, 0x1

    .line 1604
    :cond_31
    if-eqz p11, :cond_35

    .line 1605
    or-int/lit8 p8, p8, 0x3

    .line 1609
    :cond_35
    if-eqz p9, :cond_6b

    move-object/from16 v0, p0

    iget-object v2, v0, this$0:Lcom/android/server/AlarmManagerService;

    # getter for: Lcom/android/server/AlarmManagerService;->mWhitelistPackages:Ljava/util/Set;
    invoke-static {v2}, Lcom/android/server/AlarmManagerService;->access$200(Lcom/android/server/AlarmManagerService;)Ljava/util/Set;

    move-result-object v2

    invoke-virtual/range {p9 .. p9}, Landroid/app/PendingIntent;->getCreatorPackage()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6b

    .line 1610
    and-int/lit8 v2, p8, 0x4

    if-eqz v2, :cond_6b

    .line 1611
    and-int/lit8 p8, p8, -0x5

    .line 1612
    or-int/lit8 p8, p8, 0x9

    .line 1613
    const-string v2, "AlarmManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Add whitelist package alarm :"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p9

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1618
    :cond_6b
    move-object/from16 v0, p0

    iget-object v2, v0, this$0:Lcom/android/server/AlarmManagerService;

    move/from16 v3, p1

    move-wide/from16 v4, p2

    move-wide/from16 v6, p4

    move-wide/from16 v8, p6

    move-object/from16 v10, p9

    move/from16 v11, p8

    move-object/from16 v12, p10

    move-object/from16 v13, p11

    invoke-virtual/range {v2 .. v14}, Lcom/android/server/AlarmManagerService;->setImpl(IJJJLandroid/app/PendingIntent;ILandroid/os/WorkSource;Landroid/app/AlarmManager$AlarmClockInfo;I)V

    .line 1620
    return-void
.end method

.method public setAutoPowerUp(Ljava/lang/String;)V
    .registers 6
    .param p1, "time"    # Ljava/lang/String;

    .prologue
    .line 1690
    iget-object v0, p0, this$0:Lcom/android/server/AlarmManagerService;

    iget-object v1, p0, this$0:Lcom/android/server/AlarmManagerService;

    iget-wide v2, v1, Lcom/android/server/AlarmManagerService;->mNativeData:J

    # invokes: Lcom/android/server/AlarmManagerService;->setBootAlarm(JLjava/lang/String;)V
    invoke-static {v0, v2, v3, p1}, Lcom/android/server/AlarmManagerService;->access$400(Lcom/android/server/AlarmManagerService;JLjava/lang/String;)V

    .line 1691
    return-void
.end method

.method public setTime(J)Z
    .registers 10
    .param p1, "millis"    # J

    .prologue
    const/4 v1, 0x0

    .line 1624
    iget-object v2, p0, this$0:Lcom/android/server/AlarmManagerService;

    invoke-virtual {v2}, Lcom/android/server/AlarmManagerService;->getContext()Landroid/content/Context;

    move-result-object v2

    const-string v3, "android.permission.SET_TIME"

    const-string/jumbo v4, "setTime"

    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 1628
    iget-object v2, p0, this$0:Lcom/android/server/AlarmManagerService;

    iget-wide v2, v2, Lcom/android/server/AlarmManagerService;->mNativeData:J

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-nez v2, :cond_21

    .line 1629
    const-string v2, "AlarmManager"

    const-string v3, "Not setting time since no alarm driver is available."

    invoke-static {v2, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1646
    :goto_20
    return v1

    .line 1634
    :cond_21
    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v2

    const/16 v3, 0x2710

    if-lt v2, v3, :cond_52

    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v2

    const/16 v3, 0x4e1f

    if-gt v2, v3, :cond_52

    .line 1636
    iget-object v2, p0, this$0:Lcom/android/server/AlarmManagerService;

    invoke-virtual {v2}, Lcom/android/server/AlarmManagerService;->getContext()Landroid/content/Context;

    move-result-object v2

    const-string/jumbo v3, "enterprise_policy"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/enterprise/EnterpriseDeviceManager;

    .line 1637
    .local v0, "edm":Landroid/app/enterprise/EnterpriseDeviceManager;
    invoke-virtual {v0}, Landroid/app/enterprise/EnterpriseDeviceManager;->getDateTimePolicy()Landroid/app/enterprise/DateTimePolicy;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/enterprise/DateTimePolicy;->isDateTimeChangeEnabled()Z

    move-result v2

    if-nez v2, :cond_52

    .line 1638
    const-string v2, "AlarmManager"

    const-string v3, "Not setting time since EDM doesn\'t allow date & time change."

    invoke-static {v2, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_20

    .line 1644
    .end local v0    # "edm":Landroid/app/enterprise/EnterpriseDeviceManager;
    :cond_52
    const-string v2, "AlarmManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "setTime : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " calling from uid: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {}, getCallingUid()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " pid :"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {}, getCallingPid()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1645
    iget-object v2, p0, this$0:Lcom/android/server/AlarmManagerService;

    iget-object v2, v2, Lcom/android/server/AlarmManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v2

    .line 1646
    :try_start_8c
    iget-object v3, p0, this$0:Lcom/android/server/AlarmManagerService;

    iget-object v4, p0, this$0:Lcom/android/server/AlarmManagerService;

    iget-wide v4, v4, Lcom/android/server/AlarmManagerService;->mNativeData:J

    # invokes: Lcom/android/server/AlarmManagerService;->setKernelTime(JJ)I
    invoke-static {v3, v4, v5, p1, p2}, Lcom/android/server/AlarmManagerService;->access$300(Lcom/android/server/AlarmManagerService;JJ)I

    move-result v3

    if-nez v3, :cond_99

    const/4 v1, 0x1

    :cond_99
    monitor-exit v2

    goto :goto_20

    .line 1647
    :catchall_9b
    move-exception v1

    monitor-exit v2
    :try_end_9d
    .catchall {:try_start_8c .. :try_end_9d} :catchall_9b

    throw v1
.end method

.method public setTimeZone(Ljava/lang/String;)V
    .registers 8
    .param p1, "tz"    # Ljava/lang/String;

    .prologue
    .line 1652
    iget-object v1, p0, this$0:Lcom/android/server/AlarmManagerService;

    invoke-virtual {v1}, Lcom/android/server/AlarmManagerService;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v4, "android.permission.SET_TIME_ZONE"

    const-string/jumbo v5, "setTimeZone"

    invoke-virtual {v1, v4, v5}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 1656
    const-string v1, "AlarmManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "setTimeZone : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " calling from uid: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {}, getCallingUid()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " pid :"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {}, getCallingPid()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1658
    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v1

    const/16 v4, 0x2710

    if-lt v1, v4, :cond_6d

    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v1

    const/16 v4, 0x4e1f

    if-gt v1, v4, :cond_6d

    .line 1660
    iget-object v1, p0, this$0:Lcom/android/server/AlarmManagerService;

    invoke-virtual {v1}, Lcom/android/server/AlarmManagerService;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string/jumbo v4, "enterprise_policy"

    invoke-virtual {v1, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/enterprise/EnterpriseDeviceManager;

    .line 1661
    .local v0, "edm":Landroid/app/enterprise/EnterpriseDeviceManager;
    invoke-virtual {v0}, Landroid/app/enterprise/EnterpriseDeviceManager;->getDateTimePolicy()Landroid/app/enterprise/DateTimePolicy;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/enterprise/DateTimePolicy;->isDateTimeChangeEnabled()Z

    move-result v1

    if-nez v1, :cond_6d

    .line 1673
    .end local v0    # "edm":Landroid/app/enterprise/EnterpriseDeviceManager;
    :goto_6c
    return-void

    .line 1667
    :cond_6d
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    .line 1669
    .local v2, "oldId":J
    :try_start_71
    iget-object v1, p0, this$0:Lcom/android/server/AlarmManagerService;

    invoke-virtual {v1, p1}, Lcom/android/server/AlarmManagerService;->setTimeZoneImpl(Ljava/lang/String;)V
    :try_end_76
    .catchall {:try_start_71 .. :try_end_76} :catchall_7a

    .line 1671
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto :goto_6c

    :catchall_7a
    move-exception v1

    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v1
.end method

.method public updateBlockedUids(IZ)V
    .registers 6
    .param p1, "uid"    # I
    .param p2, "isBlocked"    # Z

    .prologue
    .line 1724
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    const/16 v1, 0x3e8

    if-eq v0, v1, :cond_9

    .line 1746
    :goto_8
    return-void

    .line 1729
    :cond_9
    iget-object v0, p0, this$0:Lcom/android/server/AlarmManagerService;

    iget-object v1, v0, Lcom/android/server/AlarmManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 1730
    if-eqz p2, :cond_3c

    .line 1731
    :try_start_10
    iget-object v0, p0, this$0:Lcom/android/server/AlarmManagerService;

    # getter for: Lcom/android/server/AlarmManagerService;->mBlockedUids:Ljava/util/ArrayList;
    invoke-static {v0}, Lcom/android/server/AlarmManagerService;->access$500(Lcom/android/server/AlarmManagerService;)Ljava/util/ArrayList;

    move-result-object v0

    new-instance v2, Ljava/lang/Integer;

    invoke-direct {v2, p1}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1732
    iget-object v0, p0, this$0:Lcom/android/server/AlarmManagerService;

    invoke-virtual {v0}, Lcom/android/server/AlarmManagerService;->checkReleaseWakeLock()Z

    move-result v0

    if-eqz v0, :cond_37

    .line 1736
    iget-object v0, p0, this$0:Lcom/android/server/AlarmManagerService;

    iget-object v0, v0, Lcom/android/server/AlarmManagerService;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v0

    if-eqz v0, :cond_37

    .line 1737
    iget-object v0, p0, this$0:Lcom/android/server/AlarmManagerService;

    iget-object v0, v0, Lcom/android/server/AlarmManagerService;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 1745
    :cond_37
    :goto_37
    monitor-exit v1

    goto :goto_8

    :catchall_39
    move-exception v0

    monitor-exit v1
    :try_end_3b
    .catchall {:try_start_10 .. :try_end_3b} :catchall_39

    throw v0

    .line 1743
    :cond_3c
    :try_start_3c
    iget-object v0, p0, this$0:Lcom/android/server/AlarmManagerService;

    # getter for: Lcom/android/server/AlarmManagerService;->mBlockedUids:Ljava/util/ArrayList;
    invoke-static {v0}, Lcom/android/server/AlarmManagerService;->access$500(Lcom/android/server/AlarmManagerService;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V
    :try_end_45
    .catchall {:try_start_3c .. :try_end_45} :catchall_39

    goto :goto_37
.end method
