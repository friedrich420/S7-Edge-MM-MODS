.class Lcom/android/server/NetworkManagementService$NetdCallbackReceiver;
.super Ljava/lang/Object;
.source "NetworkManagementService.java"

# interfaces
.implements Lcom/android/server/INativeDaemonConnectorCallbacks;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/NetworkManagementService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "NetdCallbackReceiver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/NetworkManagementService;


# direct methods
.method private constructor <init>(Lcom/android/server/NetworkManagementService;)V
    .registers 2

    .prologue
    .line 810
    iput-object p1, p0, this$0:Lcom/android/server/NetworkManagementService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/NetworkManagementService;Lcom/android/server/NetworkManagementService$1;)V
    .registers 3
    .param p1, "x0"    # Lcom/android/server/NetworkManagementService;
    .param p2, "x1"    # Lcom/android/server/NetworkManagementService$1;

    .prologue
    .line 810
    invoke-direct {p0, p1}, <init>(Lcom/android/server/NetworkManagementService;)V

    return-void
.end method

.method private getWifiConnectedChannel(I)I
    .registers 7
    .param p1, "frequency"    # I

    .prologue
    const/16 v4, 0xf

    .line 1112
    const/4 v1, -0x1

    .line 1113
    .local v1, "channel":I
    const/16 v0, 0x96c

    .line 1114
    .local v0, "baseFrequency":I
    sub-int v2, p1, v0

    .line 1115
    .local v2, "freqDiff":I
    if-nez v2, :cond_b

    .line 1116
    const/4 v1, 0x1

    .line 1126
    :cond_a
    :goto_a
    return v1

    .line 1118
    :cond_b
    div-int/lit8 v3, v2, 0x5

    add-int/lit8 v1, v3, 0x1

    .line 1119
    const/16 v3, 0xd

    if-le v1, v3, :cond_17

    if-gt v1, v4, :cond_17

    .line 1120
    const/16 v1, 0xe

    .line 1122
    :cond_17
    if-le v1, v4, :cond_a

    .line 1123
    const/16 v1, 0x95

    goto :goto_a
.end method


# virtual methods
.method public onCheckHoldWakeLock(I)Z
    .registers 3
    .param p1, "code"    # I

    .prologue
    .line 830
    const/16 v0, 0x265

    if-ne p1, v0, :cond_6

    const/4 v0, 0x1

    :goto_5
    return v0

    :cond_6
    const/4 v0, 0x0

    goto :goto_5
.end method

.method public onDaemonConnected()V
    .registers 3

    .prologue
    .line 815
    iget-object v0, p0, this$0:Lcom/android/server/NetworkManagementService;

    # getter for: Lcom/android/server/NetworkManagementService;->mConnectedSignal:Ljava/util/concurrent/CountDownLatch;
    invoke-static {v0}, Lcom/android/server/NetworkManagementService;->access$300(Lcom/android/server/NetworkManagementService;)Ljava/util/concurrent/CountDownLatch;

    move-result-object v0

    if-eqz v0, :cond_18

    .line 816
    iget-object v0, p0, this$0:Lcom/android/server/NetworkManagementService;

    # getter for: Lcom/android/server/NetworkManagementService;->mConnectedSignal:Ljava/util/concurrent/CountDownLatch;
    invoke-static {v0}, Lcom/android/server/NetworkManagementService;->access$300(Lcom/android/server/NetworkManagementService;)Ljava/util/concurrent/CountDownLatch;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    .line 817
    iget-object v0, p0, this$0:Lcom/android/server/NetworkManagementService;

    const/4 v1, 0x0

    # setter for: Lcom/android/server/NetworkManagementService;->mConnectedSignal:Ljava/util/concurrent/CountDownLatch;
    invoke-static {v0, v1}, Lcom/android/server/NetworkManagementService;->access$302(Lcom/android/server/NetworkManagementService;Ljava/util/concurrent/CountDownLatch;)Ljava/util/concurrent/CountDownLatch;

    .line 826
    :goto_17
    return-void

    .line 819
    :cond_18
    iget-object v0, p0, this$0:Lcom/android/server/NetworkManagementService;

    # getter for: Lcom/android/server/NetworkManagementService;->mFgHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/android/server/NetworkManagementService;->access$500(Lcom/android/server/NetworkManagementService;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/android/server/NetworkManagementService$NetdCallbackReceiver$1;

    invoke-direct {v1, p0}, Lcom/android/server/NetworkManagementService$NetdCallbackReceiver$1;-><init>(Lcom/android/server/NetworkManagementService$NetdCallbackReceiver;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_17
.end method

.method public onEvent(ILjava/lang/String;[Ljava/lang/String;)Z
    .registers 44
    .param p1, "code"    # I
    .param p2, "raw"    # Ljava/lang/String;
    .param p3, "cooked"    # [Ljava/lang/String;

    .prologue
    .line 835
    const-string v4, "Invalid event from daemon (%s)"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    aput-object p2, v5, v6

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v19

    .line 836
    .local v19, "errorMessage":Ljava/lang/String;
    sparse-switch p1, :sswitch_data_5f6

    .line 1108
    :goto_f
    const/4 v4, 0x0

    :goto_10
    return v4

    .line 845
    :sswitch_11
    move-object/from16 v0, p3

    array-length v4, v0

    const/4 v5, 0x4

    if-lt v4, v5, :cond_22

    const/4 v4, 0x1

    aget-object v4, p3, v4

    const-string v5, "Iface"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_2a

    .line 846
    :cond_22
    new-instance v4, Ljava/lang/IllegalStateException;

    move-object/from16 v0, v19

    invoke-direct {v4, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 848
    :cond_2a
    const/4 v4, 0x2

    aget-object v4, p3, v4

    const-string v5, "added"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4f

    .line 849
    move-object/from16 v0, p0

    iget-object v4, v0, this$0:Lcom/android/server/NetworkManagementService;

    const/4 v5, 0x3

    aget-object v5, p3, v5

    # invokes: Lcom/android/server/NetworkManagementService;->notifyInterfaceAdded(Ljava/lang/String;)V
    invoke-static {v4, v5}, Lcom/android/server/NetworkManagementService;->access$600(Lcom/android/server/NetworkManagementService;Ljava/lang/String;)V

    .line 851
    const/4 v4, 0x5

    const/4 v5, 0x4

    const/4 v6, 0x1

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v7

    const-string v8, "NetworkManagementService"

    const-string v9, "Added Wi-Fi hotspot "

    invoke-static/range {v4 .. v9}, Landroid/sec/enterprise/auditlog/AuditLog;->log(IIZILjava/lang/String;Ljava/lang/String;)V

    .line 855
    const/4 v4, 0x1

    goto :goto_10

    .line 856
    :cond_4f
    const/4 v4, 0x2

    aget-object v4, p3, v4

    const-string/jumbo v5, "removed"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_75

    .line 857
    move-object/from16 v0, p0

    iget-object v4, v0, this$0:Lcom/android/server/NetworkManagementService;

    const/4 v5, 0x3

    aget-object v5, p3, v5

    # invokes: Lcom/android/server/NetworkManagementService;->notifyInterfaceRemoved(Ljava/lang/String;)V
    invoke-static {v4, v5}, Lcom/android/server/NetworkManagementService;->access$700(Lcom/android/server/NetworkManagementService;Ljava/lang/String;)V

    .line 859
    const/4 v4, 0x5

    const/4 v5, 0x4

    const/4 v6, 0x1

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v7

    const-string v8, "NetworkManagementService"

    const-string v9, "Removed Wi-Fi hotspot"

    invoke-static/range {v4 .. v9}, Landroid/sec/enterprise/auditlog/AuditLog;->log(IIZILjava/lang/String;Ljava/lang/String;)V

    .line 863
    const/4 v4, 0x1

    goto :goto_10

    .line 864
    :cond_75
    const/4 v4, 0x2

    aget-object v4, p3, v4

    const-string v5, "changed"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_ab

    move-object/from16 v0, p3

    array-length v4, v0

    const/4 v5, 0x5

    if-ne v4, v5, :cond_ab

    .line 865
    move-object/from16 v0, p0

    iget-object v4, v0, this$0:Lcom/android/server/NetworkManagementService;

    const/4 v5, 0x3

    aget-object v5, p3, v5

    const/4 v6, 0x4

    aget-object v6, p3, v6

    const-string/jumbo v7, "up"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    # invokes: Lcom/android/server/NetworkManagementService;->notifyInterfaceStatusChanged(Ljava/lang/String;Z)V
    invoke-static {v4, v5, v6}, Lcom/android/server/NetworkManagementService;->access$800(Lcom/android/server/NetworkManagementService;Ljava/lang/String;Z)V

    .line 867
    const/4 v4, 0x5

    const/4 v5, 0x4

    const/4 v6, 0x1

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v7

    const-string v8, "NetworkManagementService"

    const-string v9, "Changed Wi-Fi hotspot"

    invoke-static/range {v4 .. v9}, Landroid/sec/enterprise/auditlog/AuditLog;->log(IIZILjava/lang/String;Ljava/lang/String;)V

    .line 871
    const/4 v4, 0x1

    goto/16 :goto_10

    .line 872
    :cond_ab
    const/4 v4, 0x2

    aget-object v4, p3, v4

    const-string/jumbo v5, "linkstate"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_d4

    move-object/from16 v0, p3

    array-length v4, v0

    const/4 v5, 0x5

    if-ne v4, v5, :cond_d4

    .line 873
    move-object/from16 v0, p0

    iget-object v4, v0, this$0:Lcom/android/server/NetworkManagementService;

    const/4 v5, 0x3

    aget-object v5, p3, v5

    const/4 v6, 0x4

    aget-object v6, p3, v6

    const-string/jumbo v7, "up"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    # invokes: Lcom/android/server/NetworkManagementService;->notifyInterfaceLinkStateChanged(Ljava/lang/String;Z)V
    invoke-static {v4, v5, v6}, Lcom/android/server/NetworkManagementService;->access$900(Lcom/android/server/NetworkManagementService;Ljava/lang/String;Z)V

    .line 879
    const/4 v4, 0x1

    goto/16 :goto_10

    .line 881
    :cond_d4
    new-instance v4, Ljava/lang/IllegalStateException;

    move-object/from16 v0, v19

    invoke-direct {v4, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 888
    :sswitch_dc
    move-object/from16 v0, p3

    array-length v4, v0

    const/4 v5, 0x5

    if-lt v4, v5, :cond_ee

    const/4 v4, 0x1

    aget-object v4, p3, v4

    const-string/jumbo v5, "limit"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_f6

    .line 889
    :cond_ee
    new-instance v4, Ljava/lang/IllegalStateException;

    move-object/from16 v0, v19

    invoke-direct {v4, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 891
    :cond_f6
    const/4 v4, 0x2

    aget-object v4, p3, v4

    const-string v5, "alert"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_111

    .line 892
    move-object/from16 v0, p0

    iget-object v4, v0, this$0:Lcom/android/server/NetworkManagementService;

    const/4 v5, 0x3

    aget-object v5, p3, v5

    const/4 v6, 0x4

    aget-object v6, p3, v6

    # invokes: Lcom/android/server/NetworkManagementService;->notifyLimitReached(Ljava/lang/String;Ljava/lang/String;)V
    invoke-static {v4, v5, v6}, Lcom/android/server/NetworkManagementService;->access$1000(Lcom/android/server/NetworkManagementService;Ljava/lang/String;Ljava/lang/String;)V

    .line 893
    const/4 v4, 0x1

    goto/16 :goto_10

    .line 895
    :cond_111
    new-instance v4, Ljava/lang/IllegalStateException;

    move-object/from16 v0, v19

    invoke-direct {v4, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 902
    :sswitch_119
    move-object/from16 v0, p3

    array-length v4, v0

    const/4 v5, 0x3

    if-lt v4, v5, :cond_12a

    const/4 v4, 0x1

    aget-object v4, p3, v4

    const-string v5, "IfaceMessage"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_132

    .line 903
    :cond_12a
    new-instance v4, Ljava/lang/IllegalStateException;

    move-object/from16 v0, v19

    invoke-direct {v4, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 905
    :cond_132
    const-string v4, "NetworkManagement"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "onEvent: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p2

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 906
    const/4 v4, 0x4

    aget-object v4, p3, v4

    if-eqz v4, :cond_179

    .line 907
    move-object/from16 v0, p0

    iget-object v4, v0, this$0:Lcom/android/server/NetworkManagementService;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v6, 0x3

    aget-object v6, p3, v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const/4 v6, 0x4

    aget-object v6, p3, v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    # invokes: Lcom/android/server/NetworkManagementService;->notifyInterfaceMessage(Ljava/lang/String;)V
    invoke-static {v4, v5}, Lcom/android/server/NetworkManagementService;->access$1100(Lcom/android/server/NetworkManagementService;Ljava/lang/String;)V

    .line 911
    :goto_176
    const/4 v4, 0x1

    goto/16 :goto_10

    .line 909
    :cond_179
    move-object/from16 v0, p0

    iget-object v4, v0, this$0:Lcom/android/server/NetworkManagementService;

    const/4 v5, 0x3

    aget-object v5, p3, v5

    # invokes: Lcom/android/server/NetworkManagementService;->notifyInterfaceMessage(Ljava/lang/String;)V
    invoke-static {v4, v5}, Lcom/android/server/NetworkManagementService;->access$1100(Lcom/android/server/NetworkManagementService;Ljava/lang/String;)V

    goto :goto_176

    .line 918
    :sswitch_184
    move-object/from16 v0, p3

    array-length v4, v0

    const/4 v5, 0x4

    if-lt v4, v5, :cond_195

    const/4 v4, 0x1

    aget-object v4, p3, v4

    const-string v5, "IfaceClass"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_19d

    .line 919
    :cond_195
    new-instance v4, Ljava/lang/IllegalStateException;

    move-object/from16 v0, v19

    invoke-direct {v4, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 921
    :cond_19d
    const-wide/16 v8, 0x0

    .line 922
    .local v8, "timestampNanos":J
    move-object/from16 v0, p3

    array-length v4, v0

    const/4 v5, 0x5

    if-ne v4, v5, :cond_1cb

    .line 924
    const/4 v4, 0x4

    :try_start_1a6
    aget-object v4, p3, v4

    invoke-static {v4}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J
    :try_end_1ab
    .catch Ljava/lang/NumberFormatException; {:try_start_1a6 .. :try_end_1ab} :catch_5f3

    move-result-wide v8

    .line 929
    :goto_1ac
    const/4 v4, 0x2

    aget-object v4, p3, v4

    const-string v5, "active"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v26

    .line 930
    .local v26, "isActive":Z
    move-object/from16 v0, p0

    iget-object v5, v0, this$0:Lcom/android/server/NetworkManagementService;

    const/4 v4, 0x3

    aget-object v4, p3, v4

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    if-eqz v26, :cond_1d0

    sget v7, Landroid/telephony/DataConnectionRealTimeInfo;->DC_POWER_STATE_HIGH:I

    :goto_1c4
    const/4 v10, 0x0

    # invokes: Lcom/android/server/NetworkManagementService;->notifyInterfaceClassActivity(IIJZ)V
    invoke-static/range {v5 .. v10}, Lcom/android/server/NetworkManagementService;->access$200(Lcom/android/server/NetworkManagementService;IIJZ)V

    .line 933
    const/4 v4, 0x1

    goto/16 :goto_10

    .line 927
    .end local v26    # "isActive":Z
    :cond_1cb
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtimeNanos()J

    move-result-wide v8

    goto :goto_1ac

    .line 930
    .restart local v26    # "isActive":Z
    :cond_1d0
    sget v7, Landroid/telephony/DataConnectionRealTimeInfo;->DC_POWER_STATE_LOW:I

    goto :goto_1c4

    .line 941
    .end local v8    # "timestampNanos":J
    .end local v26    # "isActive":Z
    :sswitch_1d3
    move-object/from16 v0, p3

    array-length v4, v0

    const/4 v5, 0x7

    if-lt v4, v5, :cond_1e4

    const/4 v4, 0x1

    aget-object v4, p3, v4

    const-string v5, "Address"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1ec

    .line 942
    :cond_1e4
    new-instance v4, Ljava/lang/IllegalStateException;

    move-object/from16 v0, v19

    invoke-direct {v4, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 945
    :cond_1ec
    const/4 v4, 0x4

    aget-object v24, p3, v4

    .line 948
    .local v24, "iface":Ljava/lang/String;
    const/4 v4, 0x5

    :try_start_1f0
    aget-object v4, p3, v4

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v21

    .line 949
    .local v21, "flags":I
    const/4 v4, 0x6

    aget-object v4, p3, v4

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v33

    .line 950
    .local v33, "scope":I
    new-instance v16, Landroid/net/LinkAddress;

    const/4 v4, 0x3

    aget-object v4, p3, v4

    move-object/from16 v0, v16

    move/from16 v1, v21

    move/from16 v2, v33

    invoke-direct {v0, v4, v1, v2}, Landroid/net/LinkAddress;-><init>(Ljava/lang/String;II)V
    :try_end_20b
    .catch Ljava/lang/NumberFormatException; {:try_start_1f0 .. :try_end_20b} :catch_225
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1f0 .. :try_end_20b} :catch_230

    .line 957
    .local v16, "address":Landroid/net/LinkAddress;
    const/4 v4, 0x2

    aget-object v4, p3, v4

    const-string/jumbo v5, "updated"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_23b

    .line 958
    move-object/from16 v0, p0

    iget-object v4, v0, this$0:Lcom/android/server/NetworkManagementService;

    move-object/from16 v0, v24

    move-object/from16 v1, v16

    # invokes: Lcom/android/server/NetworkManagementService;->notifyAddressUpdated(Ljava/lang/String;Landroid/net/LinkAddress;)V
    invoke-static {v4, v0, v1}, Lcom/android/server/NetworkManagementService;->access$1200(Lcom/android/server/NetworkManagementService;Ljava/lang/String;Landroid/net/LinkAddress;)V

    .line 962
    :goto_222
    const/4 v4, 0x1

    goto/16 :goto_10

    .line 951
    .end local v16    # "address":Landroid/net/LinkAddress;
    .end local v21    # "flags":I
    .end local v33    # "scope":I
    :catch_225
    move-exception v18

    .line 952
    .local v18, "e":Ljava/lang/NumberFormatException;
    new-instance v4, Ljava/lang/IllegalStateException;

    move-object/from16 v0, v19

    move-object/from16 v1, v18

    invoke-direct {v4, v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v4

    .line 953
    .end local v18    # "e":Ljava/lang/NumberFormatException;
    :catch_230
    move-exception v18

    .line 954
    .local v18, "e":Ljava/lang/IllegalArgumentException;
    new-instance v4, Ljava/lang/IllegalStateException;

    move-object/from16 v0, v19

    move-object/from16 v1, v18

    invoke-direct {v4, v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v4

    .line 960
    .end local v18    # "e":Ljava/lang/IllegalArgumentException;
    .restart local v16    # "address":Landroid/net/LinkAddress;
    .restart local v21    # "flags":I
    .restart local v33    # "scope":I
    :cond_23b
    move-object/from16 v0, p0

    iget-object v4, v0, this$0:Lcom/android/server/NetworkManagementService;

    move-object/from16 v0, v24

    move-object/from16 v1, v16

    # invokes: Lcom/android/server/NetworkManagementService;->notifyAddressRemoved(Ljava/lang/String;Landroid/net/LinkAddress;)V
    invoke-static {v4, v0, v1}, Lcom/android/server/NetworkManagementService;->access$1300(Lcom/android/server/NetworkManagementService;Ljava/lang/String;Landroid/net/LinkAddress;)V

    goto :goto_222

    .line 971
    .end local v16    # "address":Landroid/net/LinkAddress;
    .end local v21    # "flags":I
    .end local v24    # "iface":Ljava/lang/String;
    .end local v33    # "scope":I
    :sswitch_247
    move-object/from16 v0, p3

    array-length v4, v0

    const/4 v5, 0x6

    if-ne v4, v5, :cond_282

    const/4 v4, 0x1

    aget-object v4, p3, v4

    const-string v5, "DnsInfo"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_282

    const/4 v4, 0x2

    aget-object v4, p3, v4

    const-string/jumbo v5, "servers"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_282

    .line 975
    const/4 v4, 0x4

    :try_start_265
    aget-object v4, p3, v4

    invoke-static {v4}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J
    :try_end_26a
    .catch Ljava/lang/NumberFormatException; {:try_start_265 .. :try_end_26a} :catch_285

    move-result-wide v28

    .line 979
    .local v28, "lifetime":J
    const/4 v4, 0x5

    aget-object v4, p3, v4

    const-string v5, ","

    invoke-virtual {v4, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v34

    .line 980
    .local v34, "servers":[Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v4, v0, this$0:Lcom/android/server/NetworkManagementService;

    const/4 v5, 0x3

    aget-object v5, p3, v5

    move-wide/from16 v0, v28

    move-object/from16 v2, v34

    # invokes: Lcom/android/server/NetworkManagementService;->notifyInterfaceDnsServerInfo(Ljava/lang/String;J[Ljava/lang/String;)V
    invoke-static {v4, v5, v0, v1, v2}, Lcom/android/server/NetworkManagementService;->access$1400(Lcom/android/server/NetworkManagementService;Ljava/lang/String;J[Ljava/lang/String;)V

    .line 982
    .end local v28    # "lifetime":J
    .end local v34    # "servers":[Ljava/lang/String;
    :cond_282
    const/4 v4, 0x1

    goto/16 :goto_10

    .line 976
    :catch_285
    move-exception v18

    .line 977
    .local v18, "e":Ljava/lang/NumberFormatException;
    new-instance v4, Ljava/lang/IllegalStateException;

    move-object/from16 v0, v19

    invoke-direct {v4, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 989
    .end local v18    # "e":Ljava/lang/NumberFormatException;
    :sswitch_28e
    const/4 v4, 0x1

    aget-object v4, p3, v4

    const-string v5, "Route"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_29f

    move-object/from16 v0, p3

    array-length v4, v0

    const/4 v5, 0x6

    if-ge v4, v5, :cond_2a7

    .line 990
    :cond_29f
    new-instance v4, Ljava/lang/IllegalStateException;

    move-object/from16 v0, v19

    invoke-direct {v4, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 993
    :cond_2a7
    const/16 v39, 0x0

    .line 994
    .local v39, "via":Ljava/lang/String;
    const/16 v17, 0x0

    .line 995
    .local v17, "dev":Ljava/lang/String;
    const/16 v38, 0x1

    .line 996
    .local v38, "valid":Z
    const/16 v23, 0x4

    .local v23, "i":I
    :goto_2af
    add-int/lit8 v4, v23, 0x1

    move-object/from16 v0, p3

    array-length v5, v0

    if-ge v4, v5, :cond_2e7

    if-eqz v38, :cond_2e7

    .line 997
    aget-object v4, p3, v23

    const-string/jumbo v5, "dev"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2cf

    .line 998
    if-nez v17, :cond_2cc

    .line 999
    add-int/lit8 v4, v23, 0x1

    aget-object v17, p3, v4

    .line 996
    :goto_2c9
    add-int/lit8 v23, v23, 0x2

    goto :goto_2af

    .line 1001
    :cond_2cc
    const/16 v38, 0x0

    goto :goto_2c9

    .line 1003
    :cond_2cf
    aget-object v4, p3, v23

    const-string/jumbo v5, "via"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2e4

    .line 1004
    if-nez v39, :cond_2e1

    .line 1005
    add-int/lit8 v4, v23, 0x1

    aget-object v39, p3, v4

    goto :goto_2c9

    .line 1007
    :cond_2e1
    const/16 v38, 0x0

    goto :goto_2c9

    .line 1010
    :cond_2e4
    const/16 v38, 0x0

    goto :goto_2c9

    .line 1013
    :cond_2e7
    if-eqz v38, :cond_314

    .line 1016
    const/16 v22, 0x0

    .line 1017
    .local v22, "gateway":Ljava/net/InetAddress;
    if-eqz v39, :cond_2f1

    :try_start_2ed
    invoke-static/range {v39 .. v39}, Ljava/net/InetAddress;->parseNumericAddress(Ljava/lang/String;)Ljava/net/InetAddress;

    move-result-object v22

    .line 1018
    :cond_2f1
    new-instance v32, Landroid/net/RouteInfo;

    new-instance v4, Landroid/net/IpPrefix;

    const/4 v5, 0x3

    aget-object v5, p3, v5

    invoke-direct {v4, v5}, Landroid/net/IpPrefix;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v32

    move-object/from16 v1, v22

    move-object/from16 v2, v17

    invoke-direct {v0, v4, v1, v2}, Landroid/net/RouteInfo;-><init>(Landroid/net/IpPrefix;Ljava/net/InetAddress;Ljava/lang/String;)V

    .line 1019
    .local v32, "route":Landroid/net/RouteInfo;
    move-object/from16 v0, p0

    iget-object v4, v0, this$0:Lcom/android/server/NetworkManagementService;

    const/4 v5, 0x2

    aget-object v5, p3, v5

    move-object/from16 v0, v32

    # invokes: Lcom/android/server/NetworkManagementService;->notifyRouteChange(Ljava/lang/String;Landroid/net/RouteInfo;)V
    invoke-static {v4, v5, v0}, Lcom/android/server/NetworkManagementService;->access$1500(Lcom/android/server/NetworkManagementService;Ljava/lang/String;Landroid/net/RouteInfo;)V
    :try_end_310
    .catch Ljava/lang/IllegalArgumentException; {:try_start_2ed .. :try_end_310} :catch_313

    .line 1020
    const/4 v4, 0x1

    goto/16 :goto_10

    .line 1021
    .end local v32    # "route":Landroid/net/RouteInfo;
    :catch_313
    move-exception v4

    .line 1023
    .end local v22    # "gateway":Ljava/net/InetAddress;
    :cond_314
    new-instance v4, Ljava/lang/IllegalStateException;

    move-object/from16 v0, v19

    invoke-direct {v4, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 1026
    .end local v17    # "dev":Ljava/lang/String;
    .end local v23    # "i":I
    .end local v38    # "valid":Z
    .end local v39    # "via":Ljava/lang/String;
    :sswitch_31c
    const/4 v4, 0x1

    aget-object v4, p3, v4

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v37

    .line 1027
    .local v37, "uid":I
    const/4 v4, 0x2

    aget-object v4, p3, v4

    invoke-static {v4}, Lcom/android/internal/util/HexDump;->hexStringToByteArray(Ljava/lang/String;)[B

    move-result-object v20

    .line 1029
    .local v20, "firstPacket":[B
    :try_start_32a
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v4

    move/from16 v0, v37

    move-object/from16 v1, v20

    invoke-interface {v4, v0, v1}, Landroid/app/IActivityManager;->notifyCleartextNetwork(I[B)V
    :try_end_335
    .catch Landroid/os/RemoteException; {:try_start_32a .. :try_end_335} :catch_337

    goto/16 :goto_f

    .line 1030
    :catch_337
    move-exception v4

    goto/16 :goto_f

    .line 1035
    .end local v20    # "firstPacket":[B
    .end local v37    # "uid":I
    :sswitch_33a
    const/4 v4, 0x2

    aget-object v4, p3, v4

    const-string/jumbo v5, "sta_join"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_352

    const/4 v4, 0x2

    aget-object v4, p3, v4

    const-string/jumbo v5, "sta_leave"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_411

    .line 1037
    :cond_352
    const/4 v4, 0x2

    aget-object v4, p3, v4

    const-string/jumbo v5, "sta_join"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3f5

    .line 1038
    const/4 v10, 0x5

    const/4 v11, 0x4

    const/4 v12, 0x1

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v13

    const-string v14, "NetworkManagementService"

    const-string v15, "Client device connected to Wi-Fi hotspot"

    invoke-static/range {v10 .. v15}, Landroid/sec/enterprise/auditlog/AuditLog;->log(IIZILjava/lang/String;Ljava/lang/String;)V

    .line 1047
    :cond_36c
    :goto_36c
    new-instance v25, Landroid/content/Intent;

    const-string v4, "com.samsung.android.net.wifi.WIFI_AP_STA_STATUS_CHANGED"

    move-object/from16 v0, v25

    invoke-direct {v0, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1048
    .local v25, "intent":Landroid/content/Intent;
    const-string v4, "EVENT"

    const/4 v5, 0x2

    aget-object v5, p3, v5

    move-object/from16 v0, v25

    invoke-virtual {v0, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1049
    const-string v4, "NetworkManagement"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "WifiAp Sta Event, EVENT = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const/4 v6, 0x2

    aget-object v6, p3, v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1050
    move-object/from16 v0, p3

    array-length v4, v0

    const/4 v5, 0x3

    if-le v4, v5, :cond_3c9

    .line 1051
    const-string v4, "NUM"

    const/4 v5, 0x3

    aget-object v5, p3, v5

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    move-object/from16 v0, v25

    invoke-virtual {v0, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1052
    const-string v4, "NetworkManagement"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "NUM = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const/4 v6, 0x3

    aget-object v6, p3, v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1054
    :cond_3c9
    const/4 v4, 0x2

    aget-object v4, p3, v4

    const-string/jumbo v5, "sta_leave"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3e5

    move-object/from16 v0, p3

    array-length v4, v0

    const/4 v5, 0x4

    if-le v4, v5, :cond_3e5

    .line 1055
    const-string v4, "MAC"

    const/4 v5, 0x4

    aget-object v5, p3, v5

    move-object/from16 v0, v25

    invoke-virtual {v0, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1057
    :cond_3e5
    move-object/from16 v0, p0

    iget-object v4, v0, this$0:Lcom/android/server/NetworkManagementService;

    # getter for: Lcom/android/server/NetworkManagementService;->mContext:Landroid/content/Context;
    invoke-static {v4}, Lcom/android/server/NetworkManagementService;->access$1600(Lcom/android/server/NetworkManagementService;)Landroid/content/Context;

    move-result-object v4

    move-object/from16 v0, v25

    invoke-virtual {v4, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 1058
    const/4 v4, 0x1

    goto/16 :goto_10

    .line 1041
    .end local v25    # "intent":Landroid/content/Intent;
    :cond_3f5
    const/4 v4, 0x2

    aget-object v4, p3, v4

    const-string/jumbo v5, "sta_leave"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_36c

    .line 1042
    const/4 v10, 0x5

    const/4 v11, 0x4

    const/4 v12, 0x1

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v13

    const-string v14, "NetworkManagementService"

    const-string v15, "Client device disconnected from Wi-Fi hotspot"

    invoke-static/range {v10 .. v15}, Landroid/sec/enterprise/auditlog/AuditLog;->log(IIZILjava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_36c

    .line 1060
    :cond_411
    const/4 v4, 0x2

    aget-object v4, p3, v4

    const-string/jumbo v5, "sta_assoc"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_46b

    .line 1061
    new-instance v25, Landroid/content/Intent;

    const-string v4, "android.net.wifi.WIFI_AP_STA_ASSOCIATED_ACTION"

    move-object/from16 v0, v25

    invoke-direct {v0, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1062
    .restart local v25    # "intent":Landroid/content/Intent;
    const-string v4, "EVENT"

    const/4 v5, 0x2

    aget-object v5, p3, v5

    move-object/from16 v0, v25

    invoke-virtual {v0, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1063
    const-string v4, "NetworkManagement"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "WifiAp Sta Event, EVENT = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const/4 v6, 0x2

    aget-object v6, p3, v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1064
    move-object/from16 v0, p3

    array-length v4, v0

    const/4 v5, 0x3

    if-le v4, v5, :cond_45b

    .line 1065
    const-string v4, "MAC"

    const/4 v5, 0x3

    aget-object v5, p3, v5

    move-object/from16 v0, v25

    invoke-virtual {v0, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1067
    :cond_45b
    move-object/from16 v0, p0

    iget-object v4, v0, this$0:Lcom/android/server/NetworkManagementService;

    # getter for: Lcom/android/server/NetworkManagementService;->mContext:Landroid/content/Context;
    invoke-static {v4}, Lcom/android/server/NetworkManagementService;->access$1600(Lcom/android/server/NetworkManagementService;)Landroid/content/Context;

    move-result-object v4

    move-object/from16 v0, v25

    invoke-virtual {v4, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 1068
    const/4 v4, 0x1

    goto/16 :goto_10

    .line 1070
    .end local v25    # "intent":Landroid/content/Intent;
    :cond_46b
    const/4 v4, 0x2

    aget-object v4, p3, v4

    const-string/jumbo v5, "wps_success"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_4a7

    const/4 v4, 0x2

    aget-object v4, p3, v4

    const-string/jumbo v5, "wps_fail"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_4a7

    const/4 v4, 0x2

    aget-object v4, p3, v4

    const-string/jumbo v5, "wps_timeout"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_4a7

    const/4 v4, 0x2

    aget-object v4, p3, v4

    const-string/jumbo v5, "wps_overlap"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_4a7

    const/4 v4, 0x2

    aget-object v4, p3, v4

    const-string/jumbo v5, "wps_pin_needed"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4e5

    .line 1071
    :cond_4a7
    const-string v4, "NetworkManagement"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Wps State Action : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const/4 v6, 0x2

    aget-object v6, p3, v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1072
    new-instance v25, Landroid/content/Intent;

    const-string v4, "android.net.wifi.WIFI_AP_WPS_STATE_ACTION"

    move-object/from16 v0, v25

    invoke-direct {v0, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1073
    .restart local v25    # "intent":Landroid/content/Intent;
    const-string v4, "EVENT"

    const/4 v5, 0x2

    aget-object v5, p3, v5

    move-object/from16 v0, v25

    invoke-virtual {v0, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1074
    move-object/from16 v0, p0

    iget-object v4, v0, this$0:Lcom/android/server/NetworkManagementService;

    # getter for: Lcom/android/server/NetworkManagementService;->mContext:Landroid/content/Context;
    invoke-static {v4}, Lcom/android/server/NetworkManagementService;->access$1600(Lcom/android/server/NetworkManagementService;)Landroid/content/Context;

    move-result-object v4

    move-object/from16 v0, v25

    invoke-virtual {v4, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 1075
    const/4 v4, 0x1

    goto/16 :goto_10

    .line 1078
    .end local v25    # "intent":Landroid/content/Intent;
    :cond_4e5
    const/4 v4, 0x2

    aget-object v4, p3, v4

    const-string/jumbo v5, "driver_state"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_515

    const/4 v4, 0x3

    aget-object v4, p3, v4

    const-string v5, "HANGED"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_515

    .line 1079
    new-instance v25, Landroid/content/Intent;

    const-string v4, "com.samsung.android.net.wifi.WIFI_AP_DRIVER_STATE_HANGED"

    move-object/from16 v0, v25

    invoke-direct {v0, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1080
    .restart local v25    # "intent":Landroid/content/Intent;
    move-object/from16 v0, p0

    iget-object v4, v0, this$0:Lcom/android/server/NetworkManagementService;

    # getter for: Lcom/android/server/NetworkManagementService;->mContext:Landroid/content/Context;
    invoke-static {v4}, Lcom/android/server/NetworkManagementService;->access$1600(Lcom/android/server/NetworkManagementService;)Landroid/content/Context;

    move-result-object v4

    move-object/from16 v0, v25

    invoke-virtual {v4, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 1081
    const/4 v4, 0x1

    goto/16 :goto_10

    .line 1084
    .end local v25    # "intent":Landroid/content/Intent;
    :cond_515
    const/4 v4, 0x2

    aget-object v4, p3, v4

    const-string v5, "channel_switch"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_5e1

    .line 1085
    const-string v4, "NetworkManagement"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, " channel switch event "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const/4 v6, 0x2

    aget-object v6, p3, v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1086
    move-object/from16 v0, p3

    array-length v4, v0

    const/4 v5, 0x3

    if-le v4, v5, :cond_55c

    .line 1087
    const-string v4, "NetworkManagement"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, " on channel "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const/4 v6, 0x3

    aget-object v6, p3, v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1088
    :cond_55c
    const/4 v4, 0x3

    aget-object v4, p3, v4

    const-string v5, "="

    invoke-virtual {v4, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v35

    .line 1089
    .local v35, "temp":[Ljava/lang/String;
    move-object/from16 v0, v35

    array-length v4, v0

    const/4 v5, 0x1

    if-le v4, v5, :cond_5de

    const/4 v4, 0x1

    aget-object v4, v35, v4

    if-eqz v4, :cond_5de

    .line 1090
    const/4 v4, 0x1

    aget-object v4, v35, v4

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v31

    .line 1091
    .local v31, "newFreq":I
    move-object/from16 v0, p0

    iget-object v4, v0, this$0:Lcom/android/server/NetworkManagementService;

    # getter for: Lcom/android/server/NetworkManagementService;->mContext:Landroid/content/Context;
    invoke-static {v4}, Lcom/android/server/NetworkManagementService;->access$1600(Lcom/android/server/NetworkManagementService;)Landroid/content/Context;

    move-result-object v4

    const-string/jumbo v5, "wifi"

    invoke-virtual {v4, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v36

    check-cast v36, Landroid/net/wifi/WifiManager;

    .line 1092
    .local v36, "tempWifiManager":Landroid/net/wifi/WifiManager;
    invoke-virtual/range {v36 .. v36}, Landroid/net/wifi/WifiManager;->getWifiApConfiguration()Landroid/net/wifi/WifiConfiguration;

    move-result-object v27

    .line 1093
    .local v27, "mOldWifiConfig":Landroid/net/wifi/WifiConfiguration;
    move-object/from16 v0, p0

    move/from16 v1, v31

    invoke-direct {v0, v1}, getWifiConnectedChannel(I)I

    move-result v30

    .line 1094
    .local v30, "newChannel":I
    const-string v4, "NetworkManagement"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "old channel "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, v27

    iget v6, v0, Landroid/net/wifi/WifiConfiguration;->channel:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "  new channel "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move/from16 v0, v30

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1095
    move-object/from16 v0, v27

    iget v4, v0, Landroid/net/wifi/WifiConfiguration;->channel:I

    move/from16 v0, v30

    if-eq v4, v0, :cond_5de

    const/4 v4, -0x1

    move/from16 v0, v30

    if-eq v0, v4, :cond_5de

    .line 1096
    move/from16 v0, v30

    move-object/from16 v1, v27

    iput v0, v1, Landroid/net/wifi/WifiConfiguration;->channel:I

    .line 1097
    move-object/from16 v0, v36

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Landroid/net/wifi/WifiManager;->setWifiApConfiguration(Landroid/net/wifi/WifiConfiguration;)Z

    .line 1098
    const-string v4, "NetworkManagement"

    const-string v5, "call se wifiap config with new channel"

    invoke-static {v4, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1101
    .end local v27    # "mOldWifiConfig":Landroid/net/wifi/WifiConfiguration;
    .end local v30    # "newChannel":I
    .end local v31    # "newFreq":I
    .end local v36    # "tempWifiManager":Landroid/net/wifi/WifiManager;
    :cond_5de
    const/4 v4, 0x1

    goto/16 :goto_10

    .line 1103
    .end local v35    # "temp":[Ljava/lang/String;
    :cond_5e1
    new-instance v4, Ljava/lang/IllegalStateException;

    const-string v5, "Invalid event from daemon (%s)"

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    aput-object p2, v6, v7

    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 925
    .restart local v8    # "timestampNanos":J
    :catch_5f3
    move-exception v4

    goto/16 :goto_1ac

    .line 836
    :sswitch_data_5f6
    .sparse-switch
        0x258 -> :sswitch_11
        0x259 -> :sswitch_dc
        0x265 -> :sswitch_184
        0x266 -> :sswitch_1d3
        0x267 -> :sswitch_247
        0x268 -> :sswitch_28e
        0x269 -> :sswitch_31c
        0x26a -> :sswitch_119
        0x28b -> :sswitch_33a
    .end sparse-switch
.end method
