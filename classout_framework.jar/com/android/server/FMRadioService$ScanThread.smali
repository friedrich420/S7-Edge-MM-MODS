.class Lcom/android/server/FMRadioService$ScanThread;
.super Ljava/lang/Thread;
.source "FMRadioService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/FMRadioService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "ScanThread"
.end annotation


# instance fields
.field private scanCount:I

.field final synthetic this$0:Lcom/android/server/FMRadioService;


# direct methods
.method constructor <init>(Lcom/android/server/FMRadioService;)V
    .registers 2

    .prologue
    .line 2863
    iput-object p1, p0, this$0:Lcom/android/server/FMRadioService;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method

.method private doScan()V
    .registers 13
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .prologue
    const/4 v9, 0x4

    const-wide/16 v10, 0x0

    const/4 v8, 0x3

    const/4 v7, 0x0

    const/4 v6, 0x1

    .line 2869
    iget-object v2, p0, this$0:Lcom/android/server/FMRadioService;

    iget v2, v2, Lcom/android/server/FMRadioService;->mBand:I

    if-ne v2, v6, :cond_bb

    .line 2870
    iget-object v2, p0, this$0:Lcom/android/server/FMRadioService;

    # getter for: Lcom/android/server/FMRadioService;->mChipVendor:I
    invoke-static {v2}, Lcom/android/server/FMRadioService;->access$300(Lcom/android/server/FMRadioService;)I

    move-result v2

    const/4 v3, 0x2

    if-ne v2, v3, :cond_ad

    .line 2871
    iget-object v2, p0, this$0:Lcom/android/server/FMRadioService;

    # getter for: Lcom/android/server/FMRadioService;->mPlayerNative:Lcom/android/server/FMPlayerNative;
    invoke-static {v2}, Lcom/android/server/FMRadioService;->access$3000(Lcom/android/server/FMRadioService;)Lcom/android/server/FMPlayerNative;

    move-result-object v2

    const-wide/32 v4, 0x1a5e0

    invoke-virtual {v2, v4, v5}, Lcom/android/server/FMPlayerNative;->tune(J)V

    .line 2878
    :goto_21
    iget v2, p0, scanCount:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, scanCount:I

    .line 2880
    iget-object v2, p0, this$0:Lcom/android/server/FMRadioService;

    # getter for: Lcom/android/server/FMRadioService;->mChipVendor:I
    invoke-static {v2}, Lcom/android/server/FMRadioService;->access$300(Lcom/android/server/FMRadioService;)I

    move-result v2

    if-ne v2, v9, :cond_39

    .line 2881
    iget-object v2, p0, this$0:Lcom/android/server/FMRadioService;

    # setter for: Lcom/android/server/FMRadioService;->mPreviousFoundFreq:J
    invoke-static {v2, v10, v11}, Lcom/android/server/FMRadioService;->access$3502(Lcom/android/server/FMRadioService;J)J

    .line 2882
    iget-object v2, p0, this$0:Lcom/android/server/FMRadioService;

    # setter for: Lcom/android/server/FMRadioService;->mCurrentFoundFreq:J
    invoke-static {v2, v10, v11}, Lcom/android/server/FMRadioService;->access$3602(Lcom/android/server/FMRadioService;J)J

    .line 2884
    :cond_39
    sget-boolean v2, Lcom/android/server/FMRadioServiceFeature;->FEATURE_DISABLEDNS:Z

    if-nez v2, :cond_4e

    iget-object v2, p0, this$0:Lcom/android/server/FMRadioService;

    # getter for: Lcom/android/server/FMRadioService;->mWaitPidDuringScanning:Z
    invoke-static {v2}, Lcom/android/server/FMRadioService;->access$3700(Lcom/android/server/FMRadioService;)Z

    move-result v2

    if-eqz v2, :cond_4e

    .line 2885
    iget-object v2, p0, this$0:Lcom/android/server/FMRadioService;

    # getter for: Lcom/android/server/FMRadioService;->mPlayerNative:Lcom/android/server/FMPlayerNative;
    invoke-static {v2}, Lcom/android/server/FMRadioService;->access$3000(Lcom/android/server/FMRadioService;)Lcom/android/server/FMPlayerNative;

    move-result-object v2

    invoke-virtual {v2, v6}, Lcom/android/server/FMPlayerNative;->setScanning(Z)V

    .line 2887
    :cond_4e
    :goto_4e
    iget-object v2, p0, this$0:Lcom/android/server/FMRadioService;

    # getter for: Lcom/android/server/FMRadioService;->mScanProgress:Z
    invoke-static {v2}, Lcom/android/server/FMRadioService;->access$1500(Lcom/android/server/FMRadioService;)Z

    move-result v2

    if-eqz v2, :cond_10f

    .line 2889
    iget-object v2, p0, this$0:Lcom/android/server/FMRadioService;

    invoke-virtual {v2}, Lcom/android/server/FMRadioService;->searchAll()J

    move-result-wide v0

    .line 2890
    .local v0, "freq":J
    # getter for: Lcom/android/server/FMRadioService;->DEBUGGABLE:Z
    invoke-static {}, Lcom/android/server/FMRadioService;->access$500()Z

    move-result v2

    if-eqz v2, :cond_78

    .line 2891
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Found channel :"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/android/server/FMRadioService;->log(Ljava/lang/String;)V

    .line 2893
    :cond_78
    iget-object v2, p0, this$0:Lcom/android/server/FMRadioService;

    # getter for: Lcom/android/server/FMRadioService;->mChipVendor:I
    invoke-static {v2}, Lcom/android/server/FMRadioService;->access$300(Lcom/android/server/FMRadioService;)I

    move-result v2

    if-eq v2, v9, :cond_c9

    .line 2894
    iget-object v2, p0, this$0:Lcom/android/server/FMRadioService;

    # getter for: Lcom/android/server/FMRadioService;->mScanChannelList:Ljava/util/ArrayList;
    invoke-static {v2}, Lcom/android/server/FMRadioService;->access$3800(Lcom/android/server/FMRadioService;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_c9

    .line 2895
    # getter for: Lcom/android/server/FMRadioService;->DEBUGGABLE:Z
    invoke-static {}, Lcom/android/server/FMRadioService;->access$500()Z

    move-result v2

    if-eqz v2, :cond_4e

    .line 2896
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Duplicate channel :"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/android/server/FMRadioService;->log(Ljava/lang/String;)V

    goto :goto_4e

    .line 2873
    .end local v0    # "freq":J
    :cond_ad
    iget-object v2, p0, this$0:Lcom/android/server/FMRadioService;

    # getter for: Lcom/android/server/FMRadioService;->mPlayerNative:Lcom/android/server/FMPlayerNative;
    invoke-static {v2}, Lcom/android/server/FMRadioService;->access$3000(Lcom/android/server/FMRadioService;)Lcom/android/server/FMPlayerNative;

    move-result-object v2

    const-wide/32 v4, 0x155cc

    invoke-virtual {v2, v4, v5}, Lcom/android/server/FMPlayerNative;->tune(J)V

    goto/16 :goto_21

    .line 2876
    :cond_bb
    iget-object v2, p0, this$0:Lcom/android/server/FMRadioService;

    # getter for: Lcom/android/server/FMRadioService;->mPlayerNative:Lcom/android/server/FMPlayerNative;
    invoke-static {v2}, Lcom/android/server/FMRadioService;->access$3000(Lcom/android/server/FMRadioService;)Lcom/android/server/FMPlayerNative;

    move-result-object v2

    const-wide/32 v4, 0x128e0

    invoke-virtual {v2, v4, v5}, Lcom/android/server/FMPlayerNative;->tune(J)V

    goto/16 :goto_21

    .line 2902
    .restart local v0    # "freq":J
    :cond_c9
    cmp-long v2, v0, v10

    if-lez v2, :cond_1eb

    .line 2903
    iget-object v2, p0, this$0:Lcom/android/server/FMRadioService;

    # getter for: Lcom/android/server/FMRadioService;->mScanFreq:J
    invoke-static {v2}, Lcom/android/server/FMRadioService;->access$1700(Lcom/android/server/FMRadioService;)J

    move-result-wide v2

    cmp-long v2, v2, v10

    if-gtz v2, :cond_dc

    .line 2904
    iget-object v2, p0, this$0:Lcom/android/server/FMRadioService;

    # setter for: Lcom/android/server/FMRadioService;->mScanFreq:J
    invoke-static {v2, v0, v1}, Lcom/android/server/FMRadioService;->access$1702(Lcom/android/server/FMRadioService;J)J

    .line 2907
    :cond_dc
    iget-object v2, p0, this$0:Lcom/android/server/FMRadioService;

    # getter for: Lcom/android/server/FMRadioService;->mChipVendor:I
    invoke-static {v2}, Lcom/android/server/FMRadioService;->access$300(Lcom/android/server/FMRadioService;)I

    move-result v2

    if-ne v2, v9, :cond_172

    .line 2908
    iget-object v2, p0, this$0:Lcom/android/server/FMRadioService;

    # setter for: Lcom/android/server/FMRadioService;->mCurrentFoundFreq:J
    invoke-static {v2, v0, v1}, Lcom/android/server/FMRadioService;->access$3602(Lcom/android/server/FMRadioService;J)J

    .line 2909
    iget-object v2, p0, this$0:Lcom/android/server/FMRadioService;

    # getter for: Lcom/android/server/FMRadioService;->mPreviousFoundFreq:J
    invoke-static {v2}, Lcom/android/server/FMRadioService;->access$3500(Lcom/android/server/FMRadioService;)J

    move-result-wide v2

    iget-object v4, p0, this$0:Lcom/android/server/FMRadioService;

    # getter for: Lcom/android/server/FMRadioService;->mCurrentFoundFreq:J
    invoke-static {v4}, Lcom/android/server/FMRadioService;->access$3600(Lcom/android/server/FMRadioService;)J

    move-result-wide v4

    cmp-long v2, v2, v4

    if-ltz v2, :cond_125

    .line 2910
    iget-object v2, p0, this$0:Lcom/android/server/FMRadioService;

    iget-object v3, p0, this$0:Lcom/android/server/FMRadioService;

    # getter for: Lcom/android/server/FMRadioService;->mScanChannelList:Ljava/util/ArrayList;
    invoke-static {v3}, Lcom/android/server/FMRadioService;->access$3800(Lcom/android/server/FMRadioService;)Ljava/util/ArrayList;

    move-result-object v3

    new-array v4, v7, [Ljava/lang/Long;

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v2, v8, v3}, Lcom/android/server/FMRadioService;->notifyEvent(ILjava/lang/Object;)V

    .line 2914
    const-wide/16 v2, 0x14

    invoke-static {v2, v3}, Ljava/lang/Thread;->sleep(J)V

    .line 2956
    .end local v0    # "freq":J
    :cond_10f
    :goto_10f
    sget-boolean v2, Lcom/android/server/FMRadioServiceFeature;->FEATURE_DISABLEDNS:Z

    if-nez v2, :cond_124

    iget-object v2, p0, this$0:Lcom/android/server/FMRadioService;

    # getter for: Lcom/android/server/FMRadioService;->mWaitPidDuringScanning:Z
    invoke-static {v2}, Lcom/android/server/FMRadioService;->access$3700(Lcom/android/server/FMRadioService;)Z

    move-result v2

    if-eqz v2, :cond_124

    .line 2957
    iget-object v2, p0, this$0:Lcom/android/server/FMRadioService;

    # getter for: Lcom/android/server/FMRadioService;->mPlayerNative:Lcom/android/server/FMPlayerNative;
    invoke-static {v2}, Lcom/android/server/FMRadioService;->access$3000(Lcom/android/server/FMRadioService;)Lcom/android/server/FMPlayerNative;

    move-result-object v2

    invoke-virtual {v2, v7}, Lcom/android/server/FMPlayerNative;->setScanning(Z)V

    .line 2958
    :cond_124
    return-void

    .line 2917
    .restart local v0    # "freq":J
    :cond_125
    iget-object v2, p0, this$0:Lcom/android/server/FMRadioService;

    iget-object v3, p0, this$0:Lcom/android/server/FMRadioService;

    # getter for: Lcom/android/server/FMRadioService;->mCurrentFoundFreq:J
    invoke-static {v3}, Lcom/android/server/FMRadioService;->access$3600(Lcom/android/server/FMRadioService;)J

    move-result-wide v4

    # setter for: Lcom/android/server/FMRadioService;->mPreviousFoundFreq:J
    invoke-static {v2, v4, v5}, Lcom/android/server/FMRadioService;->access$3502(Lcom/android/server/FMRadioService;J)J

    .line 2918
    iget-object v2, p0, this$0:Lcom/android/server/FMRadioService;

    # getter for: Lcom/android/server/FMRadioService;->mScanChannelList:Ljava/util/ArrayList;
    invoke-static {v2}, Lcom/android/server/FMRadioService;->access$3800(Lcom/android/server/FMRadioService;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2919
    iget-object v2, p0, this$0:Lcom/android/server/FMRadioService;

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v2, v6, v3}, Lcom/android/server/FMRadioService;->notifyEvent(ILjava/lang/Object;)V

    .line 2920
    sget-boolean v2, Lcom/android/server/FMRadioServiceFeature;->FEATURE_DISABLEDNS:Z

    if-nez v2, :cond_4e

    iget-object v2, p0, this$0:Lcom/android/server/FMRadioService;

    # getter for: Lcom/android/server/FMRadioService;->mWaitPidDuringScanning:Z
    invoke-static {v2}, Lcom/android/server/FMRadioService;->access$3700(Lcom/android/server/FMRadioService;)Z

    move-result v2

    if-eqz v2, :cond_4e

    iget-object v2, p0, this$0:Lcom/android/server/FMRadioService;

    # getter for: Lcom/android/server/FMRadioService;->mScanThread:Ljava/lang/Thread;
    invoke-static {v2}, Lcom/android/server/FMRadioService;->access$3900(Lcom/android/server/FMRadioService;)Ljava/lang/Thread;

    move-result-object v2

    if-eqz v2, :cond_4e

    .line 2922
    iget-object v2, p0, this$0:Lcom/android/server/FMRadioService;

    # getter for: Lcom/android/server/FMRadioService;->mScanThread:Ljava/lang/Thread;
    invoke-static {v2}, Lcom/android/server/FMRadioService;->access$3900(Lcom/android/server/FMRadioService;)Ljava/lang/Thread;

    move-result-object v3

    monitor-enter v3

    .line 2923
    :try_start_161
    iget-object v2, p0, this$0:Lcom/android/server/FMRadioService;

    # getter for: Lcom/android/server/FMRadioService;->mScanThread:Ljava/lang/Thread;
    invoke-static {v2}, Lcom/android/server/FMRadioService;->access$3900(Lcom/android/server/FMRadioService;)Ljava/lang/Thread;

    move-result-object v2

    const-wide/16 v4, 0xfa

    invoke-virtual {v2, v4, v5}, Ljava/lang/Object;->wait(J)V

    .line 2924
    monitor-exit v3

    goto/16 :goto_4e

    :catchall_16f
    move-exception v2

    monitor-exit v3
    :try_end_171
    .catchall {:try_start_161 .. :try_end_171} :catchall_16f

    throw v2

    .line 2928
    :cond_172
    iget-object v2, p0, this$0:Lcom/android/server/FMRadioService;

    # getter for: Lcom/android/server/FMRadioService;->mScanChannelList:Ljava/util/ArrayList;
    invoke-static {v2}, Lcom/android/server/FMRadioService;->access$3800(Lcom/android/server/FMRadioService;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2929
    iget-object v2, p0, this$0:Lcom/android/server/FMRadioService;

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v2, v6, v3}, Lcom/android/server/FMRadioService;->notifyEvent(ILjava/lang/Object;)V

    .line 2930
    sget-boolean v2, Lcom/android/server/FMRadioServiceFeature;->FEATURE_DISABLEDNS:Z

    if-nez v2, :cond_1af

    iget-object v2, p0, this$0:Lcom/android/server/FMRadioService;

    # getter for: Lcom/android/server/FMRadioService;->mWaitPidDuringScanning:Z
    invoke-static {v2}, Lcom/android/server/FMRadioService;->access$3700(Lcom/android/server/FMRadioService;)Z

    move-result v2

    if-eqz v2, :cond_1af

    iget-object v2, p0, this$0:Lcom/android/server/FMRadioService;

    # getter for: Lcom/android/server/FMRadioService;->mScanThread:Ljava/lang/Thread;
    invoke-static {v2}, Lcom/android/server/FMRadioService;->access$3900(Lcom/android/server/FMRadioService;)Ljava/lang/Thread;

    move-result-object v2

    if-eqz v2, :cond_1af

    .line 2932
    iget-object v2, p0, this$0:Lcom/android/server/FMRadioService;

    # getter for: Lcom/android/server/FMRadioService;->mScanThread:Ljava/lang/Thread;
    invoke-static {v2}, Lcom/android/server/FMRadioService;->access$3900(Lcom/android/server/FMRadioService;)Ljava/lang/Thread;

    move-result-object v3

    monitor-enter v3

    .line 2933
    :try_start_1a3
    iget-object v2, p0, this$0:Lcom/android/server/FMRadioService;

    # getter for: Lcom/android/server/FMRadioService;->mScanThread:Ljava/lang/Thread;
    invoke-static {v2}, Lcom/android/server/FMRadioService;->access$3900(Lcom/android/server/FMRadioService;)Ljava/lang/Thread;

    move-result-object v2

    const-wide/16 v4, 0xfa

    invoke-virtual {v2, v4, v5}, Ljava/lang/Object;->wait(J)V

    .line 2934
    monitor-exit v3
    :try_end_1af
    .catchall {:try_start_1a3 .. :try_end_1af} :catchall_1e8

    .line 2936
    :cond_1af
    iget-object v2, p0, this$0:Lcom/android/server/FMRadioService;

    iget v2, v2, Lcom/android/server/FMRadioService;->mBand:I

    if-eq v2, v6, :cond_1bc

    iget-object v2, p0, this$0:Lcom/android/server/FMRadioService;

    iget v2, v2, Lcom/android/server/FMRadioService;->mBand:I

    const/4 v3, 0x2

    if-ne v2, v3, :cond_1c3

    :cond_1bc
    const-wide/32 v2, 0x1a5e0

    cmp-long v2, v0, v2

    if-eqz v2, :cond_1d0

    :cond_1c3
    iget-object v2, p0, this$0:Lcom/android/server/FMRadioService;

    iget v2, v2, Lcom/android/server/FMRadioService;->mBand:I

    if-ne v2, v8, :cond_4e

    const-wide/32 v2, 0x15f90

    cmp-long v2, v0, v2

    if-nez v2, :cond_4e

    .line 2938
    :cond_1d0
    iget-object v2, p0, this$0:Lcom/android/server/FMRadioService;

    iget-object v3, p0, this$0:Lcom/android/server/FMRadioService;

    # getter for: Lcom/android/server/FMRadioService;->mScanChannelList:Ljava/util/ArrayList;
    invoke-static {v3}, Lcom/android/server/FMRadioService;->access$3800(Lcom/android/server/FMRadioService;)Ljava/util/ArrayList;

    move-result-object v3

    new-array v4, v7, [Ljava/lang/Long;

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v2, v8, v3}, Lcom/android/server/FMRadioService;->notifyEvent(ILjava/lang/Object;)V

    .line 2942
    const-wide/16 v2, 0x14

    invoke-static {v2, v3}, Ljava/lang/Thread;->sleep(J)V

    goto/16 :goto_10f

    .line 2934
    :catchall_1e8
    move-exception v2

    :try_start_1e9
    monitor-exit v3
    :try_end_1ea
    .catchall {:try_start_1e9 .. :try_end_1ea} :catchall_1e8

    throw v2

    .line 2948
    :cond_1eb
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Testmode Skipp value : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, this$0:Lcom/android/server/FMRadioService;

    # getter for: Lcom/android/server/FMRadioService;->mIsSkipTunigVal:Z
    invoke-static {v3}, Lcom/android/server/FMRadioService;->access$4000(Lcom/android/server/FMRadioService;)Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/android/server/FMRadioService;->log(Ljava/lang/String;)V

    .line 2949
    iget-object v2, p0, this$0:Lcom/android/server/FMRadioService;

    iget-object v3, p0, this$0:Lcom/android/server/FMRadioService;

    # getter for: Lcom/android/server/FMRadioService;->mScanChannelList:Ljava/util/ArrayList;
    invoke-static {v3}, Lcom/android/server/FMRadioService;->access$3800(Lcom/android/server/FMRadioService;)Ljava/util/ArrayList;

    move-result-object v3

    new-array v4, v7, [Ljava/lang/Long;

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v2, v8, v3}, Lcom/android/server/FMRadioService;->notifyEvent(ILjava/lang/Object;)V

    .line 2952
    const-wide/16 v2, 0x14

    invoke-static {v2, v3}, Ljava/lang/Thread;->sleep(J)V

    goto/16 :goto_10f
.end method


# virtual methods
.method public run()V
    .registers 11

    .prologue
    const/4 v9, 0x0

    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 2964
    iget-object v3, p0, this$0:Lcom/android/server/FMRadioService;

    # getter for: Lcom/android/server/FMRadioService;->mPowerManager:Landroid/os/PowerManager;
    invoke-static {v3}, Lcom/android/server/FMRadioService;->access$4100(Lcom/android/server/FMRadioService;)Landroid/os/PowerManager;

    move-result-object v3

    const v4, 0x20000001

    const-string v5, "FMRadio Service Scan Thread"

    invoke-virtual {v3, v4, v5}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v2

    .line 2966
    .local v2, "wakelock":Landroid/os/PowerManager$WakeLock;
    invoke-virtual {v2}, Landroid/os/PowerManager$WakeLock;->acquire()V

    .line 2967
    const-string v3, "Scan thread gets the dimmed screen lock"

    invoke-static {v3}, Lcom/android/server/FMRadioService;->log(Ljava/lang/String;)V

    .line 2969
    :try_start_1a
    const-string v3, "Scanning Thread started..."

    invoke-static {v3}, Lcom/android/server/FMRadioService;->log(Ljava/lang/String;)V

    .line 2970
    iget-object v3, p0, this$0:Lcom/android/server/FMRadioService;

    const/4 v4, 0x2

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Lcom/android/server/FMRadioService;->notifyEvent(ILjava/lang/Object;)V

    .line 2972
    const-string v1, "fmradio_turnon=false"

    .line 2973
    .local v1, "keyValuePairs":Ljava/lang/String;
    iget-object v3, p0, this$0:Lcom/android/server/FMRadioService;

    # getter for: Lcom/android/server/FMRadioService;->mAudioManager:Landroid/media/AudioManager;
    invoke-static {v3}, Lcom/android/server/FMRadioService;->access$100(Lcom/android/server/FMRadioService;)Landroid/media/AudioManager;

    move-result-object v3

    invoke-virtual {v3, v1}, Landroid/media/AudioManager;->setParameters(Ljava/lang/String;)V

    .line 2974
    const-string v3, "Scanning Thread started... - Turning off FM"

    invoke-static {v3}, Lcom/android/server/FMRadioService;->log(Ljava/lang/String;)V

    .line 2976
    iget-object v3, p0, this$0:Lcom/android/server/FMRadioService;

    iget-object v4, p0, this$0:Lcom/android/server/FMRadioService;

    invoke-virtual {v4}, Lcom/android/server/FMRadioService;->getCurrentChannel()J

    move-result-wide v4

    # setter for: Lcom/android/server/FMRadioService;->mScanFreq:J
    invoke-static {v3, v4, v5}, Lcom/android/server/FMRadioService;->access$1702(Lcom/android/server/FMRadioService;J)J

    .line 2978
    iget-object v3, p0, this$0:Lcom/android/server/FMRadioService;

    # getter for: Lcom/android/server/FMRadioService;->mScanChannelList:Ljava/util/ArrayList;
    invoke-static {v3}, Lcom/android/server/FMRadioService;->access$3800(Lcom/android/server/FMRadioService;)Ljava/util/ArrayList;

    move-result-object v3

    if-nez v3, :cond_105

    .line 2979
    iget-object v3, p0, this$0:Lcom/android/server/FMRadioService;

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    # setter for: Lcom/android/server/FMRadioService;->mScanChannelList:Ljava/util/ArrayList;
    invoke-static {v3, v4}, Lcom/android/server/FMRadioService;->access$3802(Lcom/android/server/FMRadioService;Ljava/util/ArrayList;)Ljava/util/ArrayList;

    .line 2983
    :goto_53
    iget-object v3, p0, this$0:Lcom/android/server/FMRadioService;

    # getter for: Lcom/android/server/FMRadioService;->mIsSkipTunigVal:Z
    invoke-static {v3}, Lcom/android/server/FMRadioService;->access$4000(Lcom/android/server/FMRadioService;)Z

    move-result v3

    if-eqz v3, :cond_a2

    .line 2985
    iget-object v3, p0, this$0:Lcom/android/server/FMRadioService;

    iget-object v4, p0, this$0:Lcom/android/server/FMRadioService;

    # getter for: Lcom/android/server/FMRadioService;->mRssi_th:I
    invoke-static {v4}, Lcom/android/server/FMRadioService;->access$4200(Lcom/android/server/FMRadioService;)I

    move-result v4

    iget-object v5, p0, this$0:Lcom/android/server/FMRadioService;

    # getter for: Lcom/android/server/FMRadioService;->mSnr_th:I
    invoke-static {v5}, Lcom/android/server/FMRadioService;->access$4300(Lcom/android/server/FMRadioService;)I

    move-result v5

    iget-object v6, p0, this$0:Lcom/android/server/FMRadioService;

    # getter for: Lcom/android/server/FMRadioService;->mCnt_th:I
    invoke-static {v6}, Lcom/android/server/FMRadioService;->access$4400(Lcom/android/server/FMRadioService;)I

    move-result v6

    # invokes: Lcom/android/server/FMRadioService;->setSignalSetting(III)V
    invoke-static {v3, v4, v5, v6}, Lcom/android/server/FMRadioService;->access$4500(Lcom/android/server/FMRadioService;III)V

    .line 2986
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "first scan no block channel with "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, this$0:Lcom/android/server/FMRadioService;

    # getter for: Lcom/android/server/FMRadioService;->mRssi_th:I
    invoke-static {v4}, Lcom/android/server/FMRadioService;->access$4200(Lcom/android/server/FMRadioService;)I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, this$0:Lcom/android/server/FMRadioService;

    # getter for: Lcom/android/server/FMRadioService;->mSnr_th:I
    invoke-static {v4}, Lcom/android/server/FMRadioService;->access$4300(Lcom/android/server/FMRadioService;)I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, this$0:Lcom/android/server/FMRadioService;

    # getter for: Lcom/android/server/FMRadioService;->mCnt_th:I
    invoke-static {v4}, Lcom/android/server/FMRadioService;->access$4400(Lcom/android/server/FMRadioService;)I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/android/server/FMRadioService;->log(Ljava/lang/String;)V

    .line 2989
    :cond_a2
    invoke-direct {p0}, doScan()V
    :try_end_a5
    .catch Ljava/lang/Exception; {:try_start_1a .. :try_end_a5} :catch_110
    .catchall {:try_start_1a .. :try_end_a5} :catchall_16f

    .line 2995
    iget-object v3, p0, this$0:Lcom/android/server/FMRadioService;

    # setter for: Lcom/android/server/FMRadioService;->mScanProgress:Z
    invoke-static {v3, v7}, Lcom/android/server/FMRadioService;->access$1502(Lcom/android/server/FMRadioService;Z)Z

    .line 2996
    iget-object v3, p0, this$0:Lcom/android/server/FMRadioService;

    # setter for: Lcom/android/server/FMRadioService;->mScanThread:Ljava/lang/Thread;
    invoke-static {v3, v9}, Lcom/android/server/FMRadioService;->access$3902(Lcom/android/server/FMRadioService;Ljava/lang/Thread;)Ljava/lang/Thread;

    .line 2998
    iget-object v3, p0, this$0:Lcom/android/server/FMRadioService;

    iget-object v4, p0, this$0:Lcom/android/server/FMRadioService;

    # getter for: Lcom/android/server/FMRadioService;->mAudioManager:Landroid/media/AudioManager;
    invoke-static {v4}, Lcom/android/server/FMRadioService;->access$100(Lcom/android/server/FMRadioService;)Landroid/media/AudioManager;

    move-result-object v4

    invoke-static {v8}, Landroid/media/SamsungAudioManager;->stream(I)I

    move-result v5

    invoke-virtual {v4, v5}, Landroid/media/AudioManager;->getStreamVolume(I)I

    move-result v4

    # setter for: Lcom/android/server/FMRadioService;->mScanVolume:I
    invoke-static {v3, v4}, Lcom/android/server/FMRadioService;->access$4602(Lcom/android/server/FMRadioService;I)I

    .line 2999
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Scan Thread resuming volume :"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, this$0:Lcom/android/server/FMRadioService;

    # getter for: Lcom/android/server/FMRadioService;->mScanVolume:I
    invoke-static {v4}, Lcom/android/server/FMRadioService;->access$4600(Lcom/android/server/FMRadioService;)I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/android/server/FMRadioService;->log(Ljava/lang/String;)V

    .line 3000
    iget-object v3, p0, this$0:Lcom/android/server/FMRadioService;

    # getter for: Lcom/android/server/FMRadioService;->mAudioManager:Landroid/media/AudioManager;
    invoke-static {v3}, Lcom/android/server/FMRadioService;->access$100(Lcom/android/server/FMRadioService;)Landroid/media/AudioManager;

    move-result-object v3

    invoke-static {v8}, Landroid/media/SamsungAudioManager;->stream(I)I

    move-result v4

    iget-object v5, p0, this$0:Lcom/android/server/FMRadioService;

    # getter for: Lcom/android/server/FMRadioService;->mScanVolume:I
    invoke-static {v5}, Lcom/android/server/FMRadioService;->access$4600(Lcom/android/server/FMRadioService;)I

    move-result v5

    invoke-virtual {v3, v4, v5, v7}, Landroid/media/AudioManager;->setStreamVolume(III)V

    .line 3004
    invoke-virtual {v2}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v3

    if-eqz v3, :cond_ff

    .line 3005
    invoke-virtual {v2}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 3006
    const-string v3, "Scan thread released the dimmed screen lock"

    invoke-static {v3}, Lcom/android/server/FMRadioService;->log(Ljava/lang/String;)V

    .line 3009
    .end local v1    # "keyValuePairs":Ljava/lang/String;
    :cond_ff
    :goto_ff
    const-string v3, "Scanning Thread work is done..."

    invoke-static {v3}, Lcom/android/server/FMRadioService;->log(Ljava/lang/String;)V

    .line 3011
    return-void

    .line 2981
    .restart local v1    # "keyValuePairs":Ljava/lang/String;
    :cond_105
    :try_start_105
    iget-object v3, p0, this$0:Lcom/android/server/FMRadioService;

    # getter for: Lcom/android/server/FMRadioService;->mScanChannelList:Ljava/util/ArrayList;
    invoke-static {v3}, Lcom/android/server/FMRadioService;->access$3800(Lcom/android/server/FMRadioService;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/ArrayList;->clear()V
    :try_end_10e
    .catch Ljava/lang/Exception; {:try_start_105 .. :try_end_10e} :catch_110
    .catchall {:try_start_105 .. :try_end_10e} :catchall_16f

    goto/16 :goto_53

    .line 2991
    .end local v1    # "keyValuePairs":Ljava/lang/String;
    :catch_110
    move-exception v0

    .line 2993
    .local v0, "e":Ljava/lang/Exception;
    :try_start_111
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_114
    .catchall {:try_start_111 .. :try_end_114} :catchall_16f

    .line 2995
    iget-object v3, p0, this$0:Lcom/android/server/FMRadioService;

    # setter for: Lcom/android/server/FMRadioService;->mScanProgress:Z
    invoke-static {v3, v7}, Lcom/android/server/FMRadioService;->access$1502(Lcom/android/server/FMRadioService;Z)Z

    .line 2996
    iget-object v3, p0, this$0:Lcom/android/server/FMRadioService;

    # setter for: Lcom/android/server/FMRadioService;->mScanThread:Ljava/lang/Thread;
    invoke-static {v3, v9}, Lcom/android/server/FMRadioService;->access$3902(Lcom/android/server/FMRadioService;Ljava/lang/Thread;)Ljava/lang/Thread;

    .line 2998
    iget-object v3, p0, this$0:Lcom/android/server/FMRadioService;

    iget-object v4, p0, this$0:Lcom/android/server/FMRadioService;

    # getter for: Lcom/android/server/FMRadioService;->mAudioManager:Landroid/media/AudioManager;
    invoke-static {v4}, Lcom/android/server/FMRadioService;->access$100(Lcom/android/server/FMRadioService;)Landroid/media/AudioManager;

    move-result-object v4

    invoke-static {v8}, Landroid/media/SamsungAudioManager;->stream(I)I

    move-result v5

    invoke-virtual {v4, v5}, Landroid/media/AudioManager;->getStreamVolume(I)I

    move-result v4

    # setter for: Lcom/android/server/FMRadioService;->mScanVolume:I
    invoke-static {v3, v4}, Lcom/android/server/FMRadioService;->access$4602(Lcom/android/server/FMRadioService;I)I

    .line 2999
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Scan Thread resuming volume :"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, this$0:Lcom/android/server/FMRadioService;

    # getter for: Lcom/android/server/FMRadioService;->mScanVolume:I
    invoke-static {v4}, Lcom/android/server/FMRadioService;->access$4600(Lcom/android/server/FMRadioService;)I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/android/server/FMRadioService;->log(Ljava/lang/String;)V

    .line 3000
    iget-object v3, p0, this$0:Lcom/android/server/FMRadioService;

    # getter for: Lcom/android/server/FMRadioService;->mAudioManager:Landroid/media/AudioManager;
    invoke-static {v3}, Lcom/android/server/FMRadioService;->access$100(Lcom/android/server/FMRadioService;)Landroid/media/AudioManager;

    move-result-object v3

    invoke-static {v8}, Landroid/media/SamsungAudioManager;->stream(I)I

    move-result v4

    iget-object v5, p0, this$0:Lcom/android/server/FMRadioService;

    # getter for: Lcom/android/server/FMRadioService;->mScanVolume:I
    invoke-static {v5}, Lcom/android/server/FMRadioService;->access$4600(Lcom/android/server/FMRadioService;)I

    move-result v5

    invoke-virtual {v3, v4, v5, v7}, Landroid/media/AudioManager;->setStreamVolume(III)V

    .line 3004
    invoke-virtual {v2}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v3

    if-eqz v3, :cond_ff

    .line 3005
    invoke-virtual {v2}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 3006
    const-string v3, "Scan thread released the dimmed screen lock"

    invoke-static {v3}, Lcom/android/server/FMRadioService;->log(Ljava/lang/String;)V

    goto :goto_ff

    .line 2995
    .end local v0    # "e":Ljava/lang/Exception;
    :catchall_16f
    move-exception v3

    iget-object v4, p0, this$0:Lcom/android/server/FMRadioService;

    # setter for: Lcom/android/server/FMRadioService;->mScanProgress:Z
    invoke-static {v4, v7}, Lcom/android/server/FMRadioService;->access$1502(Lcom/android/server/FMRadioService;Z)Z

    .line 2996
    iget-object v4, p0, this$0:Lcom/android/server/FMRadioService;

    # setter for: Lcom/android/server/FMRadioService;->mScanThread:Ljava/lang/Thread;
    invoke-static {v4, v9}, Lcom/android/server/FMRadioService;->access$3902(Lcom/android/server/FMRadioService;Ljava/lang/Thread;)Ljava/lang/Thread;

    .line 2998
    iget-object v4, p0, this$0:Lcom/android/server/FMRadioService;

    iget-object v5, p0, this$0:Lcom/android/server/FMRadioService;

    # getter for: Lcom/android/server/FMRadioService;->mAudioManager:Landroid/media/AudioManager;
    invoke-static {v5}, Lcom/android/server/FMRadioService;->access$100(Lcom/android/server/FMRadioService;)Landroid/media/AudioManager;

    move-result-object v5

    invoke-static {v8}, Landroid/media/SamsungAudioManager;->stream(I)I

    move-result v6

    invoke-virtual {v5, v6}, Landroid/media/AudioManager;->getStreamVolume(I)I

    move-result v5

    # setter for: Lcom/android/server/FMRadioService;->mScanVolume:I
    invoke-static {v4, v5}, Lcom/android/server/FMRadioService;->access$4602(Lcom/android/server/FMRadioService;I)I

    .line 2999
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Scan Thread resuming volume :"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, this$0:Lcom/android/server/FMRadioService;

    # getter for: Lcom/android/server/FMRadioService;->mScanVolume:I
    invoke-static {v5}, Lcom/android/server/FMRadioService;->access$4600(Lcom/android/server/FMRadioService;)I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/android/server/FMRadioService;->log(Ljava/lang/String;)V

    .line 3000
    iget-object v4, p0, this$0:Lcom/android/server/FMRadioService;

    # getter for: Lcom/android/server/FMRadioService;->mAudioManager:Landroid/media/AudioManager;
    invoke-static {v4}, Lcom/android/server/FMRadioService;->access$100(Lcom/android/server/FMRadioService;)Landroid/media/AudioManager;

    move-result-object v4

    invoke-static {v8}, Landroid/media/SamsungAudioManager;->stream(I)I

    move-result v5

    iget-object v6, p0, this$0:Lcom/android/server/FMRadioService;

    # getter for: Lcom/android/server/FMRadioService;->mScanVolume:I
    invoke-static {v6}, Lcom/android/server/FMRadioService;->access$4600(Lcom/android/server/FMRadioService;)I

    move-result v6

    invoke-virtual {v4, v5, v6, v7}, Landroid/media/AudioManager;->setStreamVolume(III)V

    .line 3004
    invoke-virtual {v2}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v4

    if-eqz v4, :cond_1ca

    .line 3005
    invoke-virtual {v2}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 3006
    const-string v4, "Scan thread released the dimmed screen lock"

    invoke-static {v4}, Lcom/android/server/FMRadioService;->log(Ljava/lang/String;)V

    :cond_1ca
    throw v3
.end method
