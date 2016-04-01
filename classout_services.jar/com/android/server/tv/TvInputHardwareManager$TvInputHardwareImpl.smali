.class Lcom/android/server/tv/TvInputHardwareManager$TvInputHardwareImpl;
.super Landroid/media/tv/ITvInputHardware$Stub;
.source "TvInputHardwareManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/tv/TvInputHardwareManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "TvInputHardwareImpl"
.end annotation


# instance fields
.field private mActiveConfig:Landroid/media/tv/TvStreamConfig;

.field private final mAudioListener:Landroid/media/AudioManager$OnAudioPortUpdateListener;

.field private mAudioPatch:Landroid/media/AudioPatch;

.field private mAudioSink:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/media/AudioDevicePort;",
            ">;"
        }
    .end annotation
.end field

.field private mAudioSource:Landroid/media/AudioDevicePort;

.field private mCommittedVolume:F

.field private mDesiredChannelMask:I

.field private mDesiredFormat:I

.field private mDesiredSamplingRate:I

.field private final mImplLock:Ljava/lang/Object;

.field private final mInfo:Landroid/media/tv/TvInputHardwareInfo;

.field private mOverrideAudioAddress:Ljava/lang/String;

.field private mOverrideAudioType:I

.field private mReleased:Z

.field private mSourceVolume:F

.field final synthetic this$0:Lcom/android/server/tv/TvInputHardwareManager;


# direct methods
.method public constructor <init>(Lcom/android/server/tv/TvInputHardwareManager;Landroid/media/tv/TvInputHardwareInfo;)V
    .registers 7
    .param p2, "info"    # Landroid/media/tv/TvInputHardwareInfo;

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 683
    iput-object p1, p0, this$0:Lcom/android/server/tv/TvInputHardwareManager;

    invoke-direct {p0}, Landroid/media/tv/ITvInputHardware$Stub;-><init>()V

    .line 641
    iput-boolean v1, p0, mReleased:Z

    .line 642
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, mImplLock:Ljava/lang/Object;

    .line 644
    new-instance v0, Lcom/android/server/tv/TvInputHardwareManager$TvInputHardwareImpl$1;

    invoke-direct {v0, p0}, Lcom/android/server/tv/TvInputHardwareManager$TvInputHardwareImpl$1;-><init>(Lcom/android/server/tv/TvInputHardwareManager$TvInputHardwareImpl;)V

    iput-object v0, p0, mAudioListener:Landroid/media/AudioManager$OnAudioPortUpdateListener;

    .line 667
    iput v1, p0, mOverrideAudioType:I

    .line 668
    const-string v0, ""

    iput-object v0, p0, mOverrideAudioAddress:Ljava/lang/String;

    .line 670
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, mAudioSink:Ljava/util/List;

    .line 671
    iput-object v3, p0, mAudioPatch:Landroid/media/AudioPatch;

    .line 674
    const/high16 v0, -0x40800000    # -1.0f

    iput v0, p0, mCommittedVolume:F

    .line 675
    const/4 v0, 0x0

    iput v0, p0, mSourceVolume:F

    .line 677
    iput-object v3, p0, mActiveConfig:Landroid/media/tv/TvStreamConfig;

    .line 679
    iput v1, p0, mDesiredSamplingRate:I

    .line 680
    iput v2, p0, mDesiredChannelMask:I

    .line 681
    iput v2, p0, mDesiredFormat:I

    .line 684
    iput-object p2, p0, mInfo:Landroid/media/tv/TvInputHardwareInfo;

    .line 685
    # getter for: Lcom/android/server/tv/TvInputHardwareManager;->mAudioManager:Landroid/media/AudioManager;
    invoke-static {p1}, Lcom/android/server/tv/TvInputHardwareManager;->access$1400(Lcom/android/server/tv/TvInputHardwareManager;)Landroid/media/AudioManager;

    move-result-object v0

    iget-object v1, p0, mAudioListener:Landroid/media/AudioManager$OnAudioPortUpdateListener;

    invoke-virtual {v0, v1}, Landroid/media/AudioManager;->registerAudioPortUpdateListener(Landroid/media/AudioManager$OnAudioPortUpdateListener;)V

    .line 686
    iget-object v0, p0, mInfo:Landroid/media/tv/TvInputHardwareInfo;

    invoke-virtual {v0}, Landroid/media/tv/TvInputHardwareInfo;->getAudioType()I

    move-result v0

    if-eqz v0, :cond_60

    .line 687
    iget-object v0, p0, mInfo:Landroid/media/tv/TvInputHardwareInfo;

    invoke-virtual {v0}, Landroid/media/tv/TvInputHardwareInfo;->getAudioType()I

    move-result v0

    iget-object v1, p0, mInfo:Landroid/media/tv/TvInputHardwareInfo;

    invoke-virtual {v1}, Landroid/media/tv/TvInputHardwareInfo;->getAudioAddress()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, findAudioDevicePort(ILjava/lang/String;)Landroid/media/AudioDevicePort;

    move-result-object v0

    iput-object v0, p0, mAudioSource:Landroid/media/AudioDevicePort;

    .line 688
    iget-object v0, p0, mAudioSink:Ljava/util/List;

    invoke-direct {p0, v0}, findAudioSinkFromAudioPolicy(Ljava/util/List;)V

    .line 690
    :cond_60
    return-void
.end method

.method static synthetic access$1000(Lcom/android/server/tv/TvInputHardwareManager$TvInputHardwareImpl;)V
    .registers 1
    .param p0, "x0"    # Lcom/android/server/tv/TvInputHardwareManager$TvInputHardwareImpl;

    .prologue
    .line 639
    invoke-direct {p0}, updateAudioConfigLocked()V

    return-void
.end method

.method static synthetic access$1102(Lcom/android/server/tv/TvInputHardwareManager$TvInputHardwareImpl;Landroid/media/AudioDevicePort;)Landroid/media/AudioDevicePort;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/tv/TvInputHardwareManager$TvInputHardwareImpl;
    .param p1, "x1"    # Landroid/media/AudioDevicePort;

    .prologue
    .line 639
    iput-object p1, p0, mAudioSource:Landroid/media/AudioDevicePort;

    return-object p1
.end method

.method static synthetic access$1200(Lcom/android/server/tv/TvInputHardwareManager$TvInputHardwareImpl;)Ljava/util/List;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/tv/TvInputHardwareManager$TvInputHardwareImpl;

    .prologue
    .line 639
    iget-object v0, p0, mAudioSink:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$1302(Lcom/android/server/tv/TvInputHardwareManager$TvInputHardwareImpl;Landroid/media/AudioPatch;)Landroid/media/AudioPatch;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/tv/TvInputHardwareManager$TvInputHardwareImpl;
    .param p1, "x1"    # Landroid/media/AudioPatch;

    .prologue
    .line 639
    iput-object p1, p0, mAudioPatch:Landroid/media/AudioPatch;

    return-object p1
.end method

.method static synthetic access$2900(Lcom/android/server/tv/TvInputHardwareManager$TvInputHardwareImpl;)V
    .registers 1
    .param p0, "x0"    # Lcom/android/server/tv/TvInputHardwareManager$TvInputHardwareImpl;

    .prologue
    .line 639
    invoke-direct {p0}, handleAudioSinkUpdated()V

    return-void
.end method

.method static synthetic access$500(Lcom/android/server/tv/TvInputHardwareManager$TvInputHardwareImpl;Landroid/view/Surface;Landroid/media/tv/TvStreamConfig;)Z
    .registers 4
    .param p0, "x0"    # Lcom/android/server/tv/TvInputHardwareManager$TvInputHardwareImpl;
    .param p1, "x1"    # Landroid/view/Surface;
    .param p2, "x2"    # Landroid/media/tv/TvStreamConfig;

    .prologue
    .line 639
    invoke-direct {p0, p1, p2}, startCapture(Landroid/view/Surface;Landroid/media/tv/TvStreamConfig;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$600(Lcom/android/server/tv/TvInputHardwareManager$TvInputHardwareImpl;Landroid/media/tv/TvStreamConfig;)Z
    .registers 3
    .param p0, "x0"    # Lcom/android/server/tv/TvInputHardwareManager$TvInputHardwareImpl;
    .param p1, "x1"    # Landroid/media/tv/TvStreamConfig;

    .prologue
    .line 639
    invoke-direct {p0, p1}, stopCapture(Landroid/media/tv/TvStreamConfig;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$900(Lcom/android/server/tv/TvInputHardwareManager$TvInputHardwareImpl;)Ljava/lang/Object;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/tv/TvInputHardwareManager$TvInputHardwareImpl;

    .prologue
    .line 639
    iget-object v0, p0, mImplLock:Ljava/lang/Object;

    return-object v0
.end method

.method private findAudioDevicePort(ILjava/lang/String;)Landroid/media/AudioDevicePort;
    .registers 8
    .param p1, "type"    # I
    .param p2, "address"    # Ljava/lang/String;

    .prologue
    const/4 v3, 0x0

    .line 707
    if-nez p1, :cond_5

    move-object v2, v3

    .line 719
    :goto_4
    return-object v2

    .line 710
    :cond_5
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 711
    .local v0, "devicePorts":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/media/AudioDevicePort;>;"
    iget-object v4, p0, this$0:Lcom/android/server/tv/TvInputHardwareManager;

    # getter for: Lcom/android/server/tv/TvInputHardwareManager;->mAudioManager:Landroid/media/AudioManager;
    invoke-static {v4}, Lcom/android/server/tv/TvInputHardwareManager;->access$1400(Lcom/android/server/tv/TvInputHardwareManager;)Landroid/media/AudioManager;

    invoke-static {v0}, Landroid/media/AudioManager;->listAudioDevicePorts(Ljava/util/ArrayList;)I

    move-result v4

    if-eqz v4, :cond_17

    move-object v2, v3

    .line 712
    goto :goto_4

    .line 714
    :cond_17
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_1b
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_38

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/media/AudioDevicePort;

    .line 715
    .local v2, "port":Landroid/media/AudioDevicePort;
    invoke-virtual {v2}, Landroid/media/AudioDevicePort;->type()I

    move-result v4

    if-ne v4, p1, :cond_1b

    invoke-virtual {v2}, Landroid/media/AudioDevicePort;->address()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1b

    goto :goto_4

    .end local v2    # "port":Landroid/media/AudioDevicePort;
    :cond_38
    move-object v2, v3

    .line 719
    goto :goto_4
.end method

.method private findAudioSinkFromAudioPolicy(Ljava/util/List;)V
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/media/AudioDevicePort;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 693
    .local p1, "sinks":Ljava/util/List;, "Ljava/util/List<Landroid/media/AudioDevicePort;>;"
    invoke-interface {p1}, Ljava/util/List;->clear()V

    .line 694
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 695
    .local v0, "devicePorts":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/media/AudioDevicePort;>;"
    iget-object v4, p0, this$0:Lcom/android/server/tv/TvInputHardwareManager;

    # getter for: Lcom/android/server/tv/TvInputHardwareManager;->mAudioManager:Landroid/media/AudioManager;
    invoke-static {v4}, Lcom/android/server/tv/TvInputHardwareManager;->access$1400(Lcom/android/server/tv/TvInputHardwareManager;)Landroid/media/AudioManager;

    invoke-static {v0}, Landroid/media/AudioManager;->listAudioDevicePorts(Ljava/util/ArrayList;)I

    move-result v4

    if-eqz v4, :cond_14

    .line 704
    :cond_13
    return-void

    .line 698
    :cond_14
    iget-object v4, p0, this$0:Lcom/android/server/tv/TvInputHardwareManager;

    # getter for: Lcom/android/server/tv/TvInputHardwareManager;->mAudioManager:Landroid/media/AudioManager;
    invoke-static {v4}, Lcom/android/server/tv/TvInputHardwareManager;->access$1400(Lcom/android/server/tv/TvInputHardwareManager;)Landroid/media/AudioManager;

    move-result-object v4

    const/4 v5, 0x3

    invoke-virtual {v4, v5}, Landroid/media/AudioManager;->getDevicesForStream(I)I

    move-result v3

    .line 699
    .local v3, "sinkDevice":I
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_23
    :goto_23
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_13

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/media/AudioDevicePort;

    .line 700
    .local v2, "port":Landroid/media/AudioDevicePort;
    invoke-virtual {v2}, Landroid/media/AudioDevicePort;->type()I

    move-result v4

    and-int/2addr v4, v3

    if-eqz v4, :cond_23

    .line 701
    invoke-interface {p1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_23
.end method

.method private handleAudioSinkUpdated()V
    .registers 3

    .prologue
    .line 1002
    iget-object v1, p0, mImplLock:Ljava/lang/Object;

    monitor-enter v1

    .line 1003
    :try_start_3
    invoke-direct {p0}, updateAudioConfigLocked()V

    .line 1004
    monitor-exit v1

    .line 1005
    return-void

    .line 1004
    :catchall_8
    move-exception v0

    monitor-exit v1
    :try_end_a
    .catchall {:try_start_3 .. :try_end_a} :catchall_8

    throw v0
.end method

.method private startCapture(Landroid/view/Surface;Landroid/media/tv/TvStreamConfig;)Z
    .registers 8
    .param p1, "surface"    # Landroid/view/Surface;
    .param p2, "config"    # Landroid/media/tv/TvStreamConfig;

    .prologue
    const/4 v1, 0x0

    .line 937
    iget-object v2, p0, mImplLock:Ljava/lang/Object;

    monitor-enter v2

    .line 938
    :try_start_4
    iget-boolean v3, p0, mReleased:Z

    if-eqz v3, :cond_a

    .line 939
    monitor-exit v2

    .line 949
    :goto_9
    return v1

    .line 941
    :cond_a
    if-eqz p1, :cond_e

    if-nez p2, :cond_13

    .line 942
    :cond_e
    monitor-exit v2

    goto :goto_9

    .line 950
    :catchall_10
    move-exception v1

    monitor-exit v2
    :try_end_12
    .catchall {:try_start_4 .. :try_end_12} :catchall_10

    throw v1

    .line 944
    :cond_13
    :try_start_13
    invoke-virtual {p2}, Landroid/media/tv/TvStreamConfig;->getType()I

    move-result v3

    const/4 v4, 0x2

    if-eq v3, v4, :cond_1c

    .line 945
    monitor-exit v2

    goto :goto_9

    .line 948
    :cond_1c
    iget-object v3, p0, this$0:Lcom/android/server/tv/TvInputHardwareManager;

    # getter for: Lcom/android/server/tv/TvInputHardwareManager;->mHal:Lcom/android/server/tv/TvInputHal;
    invoke-static {v3}, Lcom/android/server/tv/TvInputHardwareManager;->access$1500(Lcom/android/server/tv/TvInputHardwareManager;)Lcom/android/server/tv/TvInputHal;

    move-result-object v3

    iget-object v4, p0, mInfo:Landroid/media/tv/TvInputHardwareInfo;

    invoke-virtual {v4}, Landroid/media/tv/TvInputHardwareInfo;->getDeviceId()I

    move-result v4

    invoke-virtual {v3, v4, p1, p2}, Lcom/android/server/tv/TvInputHal;->addOrUpdateStream(ILandroid/view/Surface;Landroid/media/tv/TvStreamConfig;)I

    move-result v0

    .line 949
    .local v0, "result":I
    if-nez v0, :cond_2f

    const/4 v1, 0x1

    :cond_2f
    monitor-exit v2
    :try_end_30
    .catchall {:try_start_13 .. :try_end_30} :catchall_10

    goto :goto_9
.end method

.method private stopCapture(Landroid/media/tv/TvStreamConfig;)Z
    .registers 7
    .param p1, "config"    # Landroid/media/tv/TvStreamConfig;

    .prologue
    const/4 v1, 0x0

    .line 954
    iget-object v2, p0, mImplLock:Ljava/lang/Object;

    monitor-enter v2

    .line 955
    :try_start_4
    iget-boolean v3, p0, mReleased:Z

    if-eqz v3, :cond_a

    .line 956
    monitor-exit v2

    .line 963
    :goto_9
    return v1

    .line 958
    :cond_a
    if-nez p1, :cond_11

    .line 959
    monitor-exit v2

    goto :goto_9

    .line 964
    :catchall_e
    move-exception v1

    monitor-exit v2
    :try_end_10
    .catchall {:try_start_4 .. :try_end_10} :catchall_e

    throw v1

    .line 962
    :cond_11
    :try_start_11
    iget-object v3, p0, this$0:Lcom/android/server/tv/TvInputHardwareManager;

    # getter for: Lcom/android/server/tv/TvInputHardwareManager;->mHal:Lcom/android/server/tv/TvInputHal;
    invoke-static {v3}, Lcom/android/server/tv/TvInputHardwareManager;->access$1500(Lcom/android/server/tv/TvInputHardwareManager;)Lcom/android/server/tv/TvInputHal;

    move-result-object v3

    iget-object v4, p0, mInfo:Landroid/media/tv/TvInputHardwareInfo;

    invoke-virtual {v4}, Landroid/media/tv/TvInputHardwareInfo;->getDeviceId()I

    move-result v4

    invoke-virtual {v3, v4, p1}, Lcom/android/server/tv/TvInputHal;->removeStream(ILandroid/media/tv/TvStreamConfig;)I

    move-result v0

    .line 963
    .local v0, "result":I
    if-nez v0, :cond_24

    const/4 v1, 0x1

    :cond_24
    monitor-exit v2
    :try_end_25
    .catchall {:try_start_11 .. :try_end_25} :catchall_e

    goto :goto_9
.end method

.method private updateAudioConfigLocked()V
    .registers 37

    .prologue
    .line 783
    invoke-direct/range {p0 .. p0}, updateAudioSinkLocked()Z

    move-result v21

    .line 784
    .local v21, "sinkUpdated":Z
    invoke-direct/range {p0 .. p0}, updateAudioSourceLocked()Z

    move-result v28

    .line 788
    .local v28, "sourceUpdated":Z
    move-object/from16 v0, p0

    iget-object v0, v0, mAudioSource:Landroid/media/AudioDevicePort;

    move-object/from16 v31, v0

    if-eqz v31, :cond_24

    move-object/from16 v0, p0

    iget-object v0, v0, mAudioSink:Ljava/util/List;

    move-object/from16 v31, v0

    invoke-interface/range {v31 .. v31}, Ljava/util/List;->isEmpty()Z

    move-result v31

    if-nez v31, :cond_24

    move-object/from16 v0, p0

    iget-object v0, v0, mActiveConfig:Landroid/media/tv/TvStreamConfig;

    move-object/from16 v31, v0

    if-nez v31, :cond_47

    .line 789
    :cond_24
    move-object/from16 v0, p0

    iget-object v0, v0, mAudioPatch:Landroid/media/AudioPatch;

    move-object/from16 v31, v0

    if-eqz v31, :cond_46

    .line 790
    move-object/from16 v0, p0

    iget-object v0, v0, this$0:Lcom/android/server/tv/TvInputHardwareManager;

    move-object/from16 v31, v0

    # getter for: Lcom/android/server/tv/TvInputHardwareManager;->mAudioManager:Landroid/media/AudioManager;
    invoke-static/range {v31 .. v31}, Lcom/android/server/tv/TvInputHardwareManager;->access$1400(Lcom/android/server/tv/TvInputHardwareManager;)Landroid/media/AudioManager;

    move-object/from16 v0, p0

    iget-object v0, v0, mAudioPatch:Landroid/media/AudioPatch;

    move-object/from16 v31, v0

    invoke-static/range {v31 .. v31}, Landroid/media/AudioManager;->releaseAudioPatch(Landroid/media/AudioPatch;)I

    .line 791
    const/16 v31, 0x0

    move-object/from16 v0, v31

    move-object/from16 v1, p0

    iput-object v0, v1, mAudioPatch:Landroid/media/AudioPatch;

    .line 909
    :cond_46
    :goto_46
    return-void

    .line 796
    :cond_47
    move-object/from16 v0, p0

    iget-object v0, v0, this$0:Lcom/android/server/tv/TvInputHardwareManager;

    move-object/from16 v31, v0

    # invokes: Lcom/android/server/tv/TvInputHardwareManager;->updateVolume()V
    invoke-static/range {v31 .. v31}, Lcom/android/server/tv/TvInputHardwareManager;->access$1600(Lcom/android/server/tv/TvInputHardwareManager;)V

    .line 797
    move-object/from16 v0, p0

    iget v0, v0, mSourceVolume:F

    move/from16 v31, v0

    move-object/from16 v0, p0

    iget-object v0, v0, this$0:Lcom/android/server/tv/TvInputHardwareManager;

    move-object/from16 v32, v0

    # invokes: Lcom/android/server/tv/TvInputHardwareManager;->getMediaStreamVolume()F
    invoke-static/range {v32 .. v32}, Lcom/android/server/tv/TvInputHardwareManager;->access$1700(Lcom/android/server/tv/TvInputHardwareManager;)F

    move-result v32

    mul-float v30, v31, v32

    .line 798
    .local v30, "volume":F
    const/16 v26, 0x0

    .line 799
    .local v26, "sourceGainConfig":Landroid/media/AudioGainConfig;
    move-object/from16 v0, p0

    iget-object v0, v0, mAudioSource:Landroid/media/AudioDevicePort;

    move-object/from16 v31, v0

    invoke-virtual/range {v31 .. v31}, Landroid/media/AudioDevicePort;->gains()[Landroid/media/AudioGain;

    move-result-object v31

    move-object/from16 v0, v31

    array-length v0, v0

    move/from16 v31, v0

    if-lez v31, :cond_f2

    move-object/from16 v0, p0

    iget v0, v0, mCommittedVolume:F

    move/from16 v31, v0

    cmpl-float v31, v30, v31

    if-eqz v31, :cond_f2

    .line 800
    const/16 v25, 0x0

    .line 801
    .local v25, "sourceGain":Landroid/media/AudioGain;
    move-object/from16 v0, p0

    iget-object v0, v0, mAudioSource:Landroid/media/AudioDevicePort;

    move-object/from16 v31, v0

    invoke-virtual/range {v31 .. v31}, Landroid/media/AudioDevicePort;->gains()[Landroid/media/AudioGain;

    move-result-object v6

    .local v6, "arr$":[Landroid/media/AudioGain;
    array-length v14, v6

    .local v14, "len$":I
    const/4 v12, 0x0

    .local v12, "i$":I
    :goto_8d
    if-ge v12, v14, :cond_9b

    aget-object v9, v6, v12

    .line 802
    .local v9, "gain":Landroid/media/AudioGain;
    invoke-virtual {v9}, Landroid/media/AudioGain;->mode()I

    move-result v31

    and-int/lit8 v31, v31, 0x1

    if-eqz v31, :cond_1db

    .line 803
    move-object/from16 v25, v9

    .line 808
    .end local v9    # "gain":Landroid/media/AudioGain;
    :cond_9b
    if-eqz v25, :cond_1e5

    .line 809
    invoke-virtual/range {v25 .. v25}, Landroid/media/AudioGain;->maxValue()I

    move-result v31

    invoke-virtual/range {v25 .. v25}, Landroid/media/AudioGain;->minValue()I

    move-result v32

    sub-int v31, v31, v32

    invoke-virtual/range {v25 .. v25}, Landroid/media/AudioGain;->stepValue()I

    move-result v32

    div-int v29, v31, v32

    .line 811
    .local v29, "steps":I
    invoke-virtual/range {v25 .. v25}, Landroid/media/AudioGain;->minValue()I

    move-result v10

    .line 812
    .local v10, "gainValue":I
    const/high16 v31, 0x3f800000    # 1.0f

    cmpg-float v31, v30, v31

    if-gez v31, :cond_1df

    .line 813
    invoke-virtual/range {v25 .. v25}, Landroid/media/AudioGain;->stepValue()I

    move-result v31

    move/from16 v0, v29

    int-to-float v0, v0

    move/from16 v32, v0

    mul-float v32, v32, v30

    move/from16 v0, v32

    float-to-double v0, v0

    move-wide/from16 v32, v0

    const-wide/high16 v34, 0x3fe0000000000000L    # 0.5

    add-double v32, v32, v34

    move-wide/from16 v0, v32

    double-to-int v0, v0

    move/from16 v32, v0

    mul-int v31, v31, v32

    add-int v10, v10, v31

    .line 818
    :goto_d4
    const/16 v31, 0x1

    move/from16 v0, v31

    new-array v11, v0, [I

    const/16 v31, 0x0

    aput v10, v11, v31

    .line 819
    .local v11, "gainValues":[I
    const/16 v31, 0x1

    invoke-virtual/range {v25 .. v25}, Landroid/media/AudioGain;->channelMask()I

    move-result v32

    const/16 v33, 0x0

    move-object/from16 v0, v25

    move/from16 v1, v31

    move/from16 v2, v32

    move/from16 v3, v33

    invoke-virtual {v0, v1, v2, v11, v3}, Landroid/media/AudioGain;->buildConfig(II[II)Landroid/media/AudioGainConfig;

    move-result-object v26

    .line 826
    .end local v6    # "arr$":[Landroid/media/AudioGain;
    .end local v10    # "gainValue":I
    .end local v11    # "gainValues":[I
    .end local v12    # "i$":I
    .end local v14    # "len$":I
    .end local v25    # "sourceGain":Landroid/media/AudioGain;
    .end local v29    # "steps":I
    :cond_f2
    :goto_f2
    move-object/from16 v0, p0

    iget-object v0, v0, mAudioSource:Landroid/media/AudioDevicePort;

    move-object/from16 v31, v0

    invoke-virtual/range {v31 .. v31}, Landroid/media/AudioDevicePort;->activeConfig()Landroid/media/AudioPortConfig;

    move-result-object v23

    .line 827
    .local v23, "sourceConfig":Landroid/media/AudioPortConfig;
    new-instance v18, Ljava/util/ArrayList;

    invoke-direct/range {v18 .. v18}, Ljava/util/ArrayList;-><init>()V

    .line 828
    .local v18, "sinkConfigs":Ljava/util/List;, "Ljava/util/List<Landroid/media/AudioPortConfig;>;"
    const/16 v31, 0x1

    move/from16 v0, v31

    new-array v7, v0, [Landroid/media/AudioPatch;

    const/16 v31, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, mAudioPatch:Landroid/media/AudioPatch;

    move-object/from16 v32, v0

    aput-object v32, v7, v31

    .line 829
    .local v7, "audioPatchArray":[Landroid/media/AudioPatch;
    if-nez v28, :cond_115

    if-eqz v21, :cond_1f0

    :cond_115
    const/4 v15, 0x1

    .line 831
    .local v15, "shouldRecreateAudioPatch":Z
    :goto_116
    move-object/from16 v0, p0

    iget-object v0, v0, mAudioSink:Ljava/util/List;

    move-object/from16 v31, v0

    invoke-interface/range {v31 .. v31}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v12

    .local v12, "i$":Ljava/util/Iterator;
    :goto_120
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v31

    if-eqz v31, :cond_1f3

    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/media/AudioDevicePort;

    .line 832
    .local v8, "audioSink":Landroid/media/AudioDevicePort;
    invoke-virtual {v8}, Landroid/media/AudioDevicePort;->activeConfig()Landroid/media/AudioPortConfig;

    move-result-object v17

    .line 833
    .local v17, "sinkConfig":Landroid/media/AudioPortConfig;
    move-object/from16 v0, p0

    iget v0, v0, mDesiredSamplingRate:I

    move/from16 v20, v0

    .line 834
    .local v20, "sinkSamplingRate":I
    move-object/from16 v0, p0

    iget v0, v0, mDesiredChannelMask:I

    move/from16 v16, v0

    .line 835
    .local v16, "sinkChannelMask":I
    move-object/from16 v0, p0

    iget v0, v0, mDesiredFormat:I

    move/from16 v19, v0

    .line 838
    .local v19, "sinkFormat":I
    if-eqz v17, :cond_162

    .line 839
    if-nez v20, :cond_14a

    .line 840
    invoke-virtual/range {v17 .. v17}, Landroid/media/AudioPortConfig;->samplingRate()I

    move-result v20

    .line 842
    :cond_14a
    const/16 v31, 0x1

    move/from16 v0, v16

    move/from16 v1, v31

    if-ne v0, v1, :cond_156

    .line 843
    invoke-virtual/range {v17 .. v17}, Landroid/media/AudioPortConfig;->channelMask()I

    move-result v16

    .line 845
    :cond_156
    const/16 v31, 0x1

    move/from16 v0, v19

    move/from16 v1, v31

    if-ne v0, v1, :cond_162

    .line 846
    invoke-virtual/range {v17 .. v17}, Landroid/media/AudioPortConfig;->format()I

    move-result v16

    .line 850
    :cond_162
    if-eqz v17, :cond_182

    invoke-virtual/range {v17 .. v17}, Landroid/media/AudioPortConfig;->samplingRate()I

    move-result v31

    move/from16 v0, v31

    move/from16 v1, v20

    if-ne v0, v1, :cond_182

    invoke-virtual/range {v17 .. v17}, Landroid/media/AudioPortConfig;->channelMask()I

    move-result v31

    move/from16 v0, v31

    move/from16 v1, v16

    if-ne v0, v1, :cond_182

    invoke-virtual/range {v17 .. v17}, Landroid/media/AudioPortConfig;->format()I

    move-result v31

    move/from16 v0, v31

    move/from16 v1, v19

    if-eq v0, v1, :cond_1d2

    .line 855
    :cond_182
    invoke-virtual {v8}, Landroid/media/AudioDevicePort;->samplingRates()[I

    move-result-object v31

    move-object/from16 v0, v31

    move/from16 v1, v20

    # invokes: Lcom/android/server/tv/TvInputHardwareManager;->intArrayContains([II)Z
    invoke-static {v0, v1}, Lcom/android/server/tv/TvInputHardwareManager;->access$1800([II)Z

    move-result v31

    if-nez v31, :cond_1a3

    invoke-virtual {v8}, Landroid/media/AudioDevicePort;->samplingRates()[I

    move-result-object v31

    move-object/from16 v0, v31

    array-length v0, v0

    move/from16 v31, v0

    if-lez v31, :cond_1a3

    .line 857
    invoke-virtual {v8}, Landroid/media/AudioDevicePort;->samplingRates()[I

    move-result-object v31

    const/16 v32, 0x0

    aget v20, v31, v32

    .line 859
    :cond_1a3
    invoke-virtual {v8}, Landroid/media/AudioDevicePort;->channelMasks()[I

    move-result-object v31

    move-object/from16 v0, v31

    move/from16 v1, v16

    # invokes: Lcom/android/server/tv/TvInputHardwareManager;->intArrayContains([II)Z
    invoke-static {v0, v1}, Lcom/android/server/tv/TvInputHardwareManager;->access$1800([II)Z

    move-result v31

    if-nez v31, :cond_1b3

    .line 860
    const/16 v16, 0x1

    .line 862
    :cond_1b3
    invoke-virtual {v8}, Landroid/media/AudioDevicePort;->formats()[I

    move-result-object v31

    move-object/from16 v0, v31

    move/from16 v1, v19

    # invokes: Lcom/android/server/tv/TvInputHardwareManager;->intArrayContains([II)Z
    invoke-static {v0, v1}, Lcom/android/server/tv/TvInputHardwareManager;->access$1800([II)Z

    move-result v31

    if-nez v31, :cond_1c3

    .line 863
    const/16 v19, 0x1

    .line 865
    :cond_1c3
    const/16 v31, 0x0

    move/from16 v0, v20

    move/from16 v1, v16

    move/from16 v2, v19

    move-object/from16 v3, v31

    invoke-virtual {v8, v0, v1, v2, v3}, Landroid/media/AudioDevicePort;->buildConfig(IIILandroid/media/AudioGainConfig;)Landroid/media/AudioDevicePortConfig;

    move-result-object v17

    .line 867
    const/4 v15, 0x1

    .line 869
    :cond_1d2
    move-object/from16 v0, v18

    move-object/from16 v1, v17

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_120

    .line 801
    .end local v7    # "audioPatchArray":[Landroid/media/AudioPatch;
    .end local v8    # "audioSink":Landroid/media/AudioDevicePort;
    .end local v15    # "shouldRecreateAudioPatch":Z
    .end local v16    # "sinkChannelMask":I
    .end local v17    # "sinkConfig":Landroid/media/AudioPortConfig;
    .end local v18    # "sinkConfigs":Ljava/util/List;, "Ljava/util/List<Landroid/media/AudioPortConfig;>;"
    .end local v19    # "sinkFormat":I
    .end local v20    # "sinkSamplingRate":I
    .end local v23    # "sourceConfig":Landroid/media/AudioPortConfig;
    .restart local v6    # "arr$":[Landroid/media/AudioGain;
    .restart local v9    # "gain":Landroid/media/AudioGain;
    .local v12, "i$":I
    .restart local v14    # "len$":I
    .restart local v25    # "sourceGain":Landroid/media/AudioGain;
    :cond_1db
    add-int/lit8 v12, v12, 0x1

    goto/16 :goto_8d

    .line 815
    .end local v9    # "gain":Landroid/media/AudioGain;
    .restart local v10    # "gainValue":I
    .restart local v29    # "steps":I
    :cond_1df
    invoke-virtual/range {v25 .. v25}, Landroid/media/AudioGain;->maxValue()I

    move-result v10

    goto/16 :goto_d4

    .line 822
    .end local v10    # "gainValue":I
    .end local v29    # "steps":I
    :cond_1e5
    # getter for: Lcom/android/server/tv/TvInputHardwareManager;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/tv/TvInputHardwareManager;->access$700()Ljava/lang/String;

    move-result-object v31

    const-string v32, "No audio source gain with MODE_JOINT support exists."

    invoke-static/range {v31 .. v32}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_f2

    .line 829
    .end local v6    # "arr$":[Landroid/media/AudioGain;
    .end local v12    # "i$":I
    .end local v14    # "len$":I
    .end local v25    # "sourceGain":Landroid/media/AudioGain;
    .restart local v7    # "audioPatchArray":[Landroid/media/AudioPatch;
    .restart local v18    # "sinkConfigs":Ljava/util/List;, "Ljava/util/List<Landroid/media/AudioPortConfig;>;"
    .restart local v23    # "sourceConfig":Landroid/media/AudioPortConfig;
    :cond_1f0
    const/4 v15, 0x0

    goto/16 :goto_116

    .line 873
    .local v12, "i$":Ljava/util/Iterator;
    .restart local v15    # "shouldRecreateAudioPatch":Z
    :cond_1f3
    const/16 v31, 0x0

    move-object/from16 v0, v18

    move/from16 v1, v31

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Landroid/media/AudioPortConfig;

    .line 874
    .restart local v17    # "sinkConfig":Landroid/media/AudioPortConfig;
    if-eqz v23, :cond_203

    if-eqz v26, :cond_272

    .line 875
    :cond_203
    const/16 v27, 0x0

    .line 876
    .local v27, "sourceSamplingRate":I
    move-object/from16 v0, p0

    iget-object v0, v0, mAudioSource:Landroid/media/AudioDevicePort;

    move-object/from16 v31, v0

    invoke-virtual/range {v31 .. v31}, Landroid/media/AudioDevicePort;->samplingRates()[I

    move-result-object v31

    invoke-virtual/range {v17 .. v17}, Landroid/media/AudioPortConfig;->samplingRate()I

    move-result v32

    # invokes: Lcom/android/server/tv/TvInputHardwareManager;->intArrayContains([II)Z
    invoke-static/range {v31 .. v32}, Lcom/android/server/tv/TvInputHardwareManager;->access$1800([II)Z

    move-result v31

    if-eqz v31, :cond_2ce

    .line 877
    invoke-virtual/range {v17 .. v17}, Landroid/media/AudioPortConfig;->samplingRate()I

    move-result v27

    .line 882
    :cond_21d
    :goto_21d
    const/16 v22, 0x1

    .line 883
    .local v22, "sourceChannelMask":I
    move-object/from16 v0, p0

    iget-object v0, v0, mAudioSource:Landroid/media/AudioDevicePort;

    move-object/from16 v31, v0

    invoke-virtual/range {v31 .. v31}, Landroid/media/AudioDevicePort;->channelMasks()[I

    move-result-object v6

    .local v6, "arr$":[I
    array-length v14, v6

    .restart local v14    # "len$":I
    const/4 v12, 0x0

    .local v12, "i$":I
    :goto_22b
    if-ge v12, v14, :cond_243

    aget v13, v6, v12

    .line 884
    .local v13, "inChannelMask":I
    invoke-virtual/range {v17 .. v17}, Landroid/media/AudioPortConfig;->channelMask()I

    move-result v31

    invoke-static/range {v31 .. v31}, Landroid/media/AudioFormat;->channelCountFromOutChannelMask(I)I

    move-result v31

    invoke-static {v13}, Landroid/media/AudioFormat;->channelCountFromInChannelMask(I)I

    move-result v32

    move/from16 v0, v31

    move/from16 v1, v32

    if-ne v0, v1, :cond_2ef

    .line 886
    move/from16 v22, v13

    .line 890
    .end local v13    # "inChannelMask":I
    :cond_243
    const/16 v24, 0x1

    .line 891
    .local v24, "sourceFormat":I
    move-object/from16 v0, p0

    iget-object v0, v0, mAudioSource:Landroid/media/AudioDevicePort;

    move-object/from16 v31, v0

    invoke-virtual/range {v31 .. v31}, Landroid/media/AudioDevicePort;->formats()[I

    move-result-object v31

    invoke-virtual/range {v17 .. v17}, Landroid/media/AudioPortConfig;->format()I

    move-result v32

    # invokes: Lcom/android/server/tv/TvInputHardwareManager;->intArrayContains([II)Z
    invoke-static/range {v31 .. v32}, Lcom/android/server/tv/TvInputHardwareManager;->access$1800([II)Z

    move-result v31

    if-eqz v31, :cond_25d

    .line 892
    invoke-virtual/range {v17 .. v17}, Landroid/media/AudioPortConfig;->format()I

    move-result v24

    .line 894
    :cond_25d
    move-object/from16 v0, p0

    iget-object v0, v0, mAudioSource:Landroid/media/AudioDevicePort;

    move-object/from16 v31, v0

    move-object/from16 v0, v31

    move/from16 v1, v27

    move/from16 v2, v22

    move/from16 v3, v24

    move-object/from16 v4, v26

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/media/AudioDevicePort;->buildConfig(IIILandroid/media/AudioGainConfig;)Landroid/media/AudioDevicePortConfig;

    move-result-object v23

    .line 896
    const/4 v15, 0x1

    .line 898
    .end local v6    # "arr$":[I
    .end local v12    # "i$":I
    .end local v14    # "len$":I
    .end local v22    # "sourceChannelMask":I
    .end local v24    # "sourceFormat":I
    .end local v27    # "sourceSamplingRate":I
    :cond_272
    if-eqz v15, :cond_46

    .line 899
    move/from16 v0, v30

    move-object/from16 v1, p0

    iput v0, v1, mCommittedVolume:F

    .line 900
    move-object/from16 v0, p0

    iget-object v0, v0, this$0:Lcom/android/server/tv/TvInputHardwareManager;

    move-object/from16 v31, v0

    # getter for: Lcom/android/server/tv/TvInputHardwareManager;->mAudioManager:Landroid/media/AudioManager;
    invoke-static/range {v31 .. v31}, Lcom/android/server/tv/TvInputHardwareManager;->access$1400(Lcom/android/server/tv/TvInputHardwareManager;)Landroid/media/AudioManager;

    const/16 v31, 0x1

    move/from16 v0, v31

    new-array v0, v0, [Landroid/media/AudioPortConfig;

    move-object/from16 v32, v0

    const/16 v31, 0x0

    aput-object v23, v32, v31

    invoke-interface/range {v18 .. v18}, Ljava/util/List;->size()I

    move-result v31

    move/from16 v0, v31

    new-array v0, v0, [Landroid/media/AudioPortConfig;

    move-object/from16 v31, v0

    move-object/from16 v0, v18

    move-object/from16 v1, v31

    invoke-interface {v0, v1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v31

    check-cast v31, [Landroid/media/AudioPortConfig;

    move-object/from16 v0, v32

    move-object/from16 v1, v31

    invoke-static {v7, v0, v1}, Landroid/media/AudioManager;->createAudioPatch([Landroid/media/AudioPatch;[Landroid/media/AudioPortConfig;[Landroid/media/AudioPortConfig;)I

    .line 904
    const/16 v31, 0x0

    aget-object v31, v7, v31

    move-object/from16 v0, v31

    move-object/from16 v1, p0

    iput-object v0, v1, mAudioPatch:Landroid/media/AudioPatch;

    .line 905
    if-eqz v26, :cond_46

    .line 906
    move-object/from16 v0, p0

    iget-object v0, v0, this$0:Lcom/android/server/tv/TvInputHardwareManager;

    move-object/from16 v31, v0

    # getter for: Lcom/android/server/tv/TvInputHardwareManager;->mAudioManager:Landroid/media/AudioManager;
    invoke-static/range {v31 .. v31}, Lcom/android/server/tv/TvInputHardwareManager;->access$1400(Lcom/android/server/tv/TvInputHardwareManager;)Landroid/media/AudioManager;

    move-object/from16 v0, p0

    iget-object v0, v0, mAudioSource:Landroid/media/AudioDevicePort;

    move-object/from16 v31, v0

    move-object/from16 v0, v31

    move-object/from16 v1, v26

    invoke-static {v0, v1}, Landroid/media/AudioManager;->setAudioPortGain(Landroid/media/AudioPort;Landroid/media/AudioGainConfig;)I

    goto/16 :goto_46

    .line 878
    .local v12, "i$":Ljava/util/Iterator;
    .restart local v27    # "sourceSamplingRate":I
    :cond_2ce
    move-object/from16 v0, p0

    iget-object v0, v0, mAudioSource:Landroid/media/AudioDevicePort;

    move-object/from16 v31, v0

    invoke-virtual/range {v31 .. v31}, Landroid/media/AudioDevicePort;->samplingRates()[I

    move-result-object v31

    move-object/from16 v0, v31

    array-length v0, v0

    move/from16 v31, v0

    if-lez v31, :cond_21d

    .line 880
    move-object/from16 v0, p0

    iget-object v0, v0, mAudioSource:Landroid/media/AudioDevicePort;

    move-object/from16 v31, v0

    invoke-virtual/range {v31 .. v31}, Landroid/media/AudioDevicePort;->samplingRates()[I

    move-result-object v31

    const/16 v32, 0x0

    aget v27, v31, v32

    goto/16 :goto_21d

    .line 883
    .restart local v6    # "arr$":[I
    .local v12, "i$":I
    .restart local v13    # "inChannelMask":I
    .restart local v14    # "len$":I
    .restart local v22    # "sourceChannelMask":I
    :cond_2ef
    add-int/lit8 v12, v12, 0x1

    goto/16 :goto_22b
.end method

.method private updateAudioSinkLocked()Z
    .registers 7

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 978
    iget-object v4, p0, mInfo:Landroid/media/tv/TvInputHardwareInfo;

    invoke-virtual {v4}, Landroid/media/tv/TvInputHardwareInfo;->getAudioType()I

    move-result v4

    if-nez v4, :cond_c

    move v2, v3

    .line 998
    :cond_b
    :goto_b
    return v2

    .line 981
    :cond_c
    iget-object v1, p0, mAudioSink:Ljava/util/List;

    .line 982
    .local v1, "previousSink":Ljava/util/List;, "Ljava/util/List<Landroid/media/AudioDevicePort;>;"
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    iput-object v4, p0, mAudioSink:Ljava/util/List;

    .line 983
    iget v4, p0, mOverrideAudioType:I

    if-nez v4, :cond_37

    .line 984
    iget-object v4, p0, mAudioSink:Ljava/util/List;

    invoke-direct {p0, v4}, findAudioSinkFromAudioPolicy(Ljava/util/List;)V

    .line 994
    :cond_1e
    :goto_1e
    iget-object v4, p0, mAudioSink:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v5

    if-ne v4, v5, :cond_b

    .line 997
    iget-object v4, p0, mAudioSink:Ljava/util/List;

    invoke-interface {v1, v4}, Ljava/util/List;->removeAll(Ljava/util/Collection;)Z

    .line 998
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_b

    move v2, v3

    goto :goto_b

    .line 986
    :cond_37
    iget v4, p0, mOverrideAudioType:I

    iget-object v5, p0, mOverrideAudioAddress:Ljava/lang/String;

    invoke-direct {p0, v4, v5}, findAudioDevicePort(ILjava/lang/String;)Landroid/media/AudioDevicePort;

    move-result-object v0

    .line 988
    .local v0, "audioSink":Landroid/media/AudioDevicePort;
    if-eqz v0, :cond_1e

    .line 989
    iget-object v4, p0, mAudioSink:Ljava/util/List;

    invoke-interface {v4, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1e
.end method

.method private updateAudioSourceLocked()Z
    .registers 6

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 968
    iget-object v3, p0, mInfo:Landroid/media/tv/TvInputHardwareInfo;

    invoke-virtual {v3}, Landroid/media/tv/TvInputHardwareInfo;->getAudioType()I

    move-result v3

    if-nez v3, :cond_b

    .line 973
    :goto_a
    return v2

    .line 971
    :cond_b
    iget-object v0, p0, mAudioSource:Landroid/media/AudioDevicePort;

    .line 972
    .local v0, "previousSource":Landroid/media/AudioDevicePort;
    iget-object v3, p0, mInfo:Landroid/media/tv/TvInputHardwareInfo;

    invoke-virtual {v3}, Landroid/media/tv/TvInputHardwareInfo;->getAudioType()I

    move-result v3

    iget-object v4, p0, mInfo:Landroid/media/tv/TvInputHardwareInfo;

    invoke-virtual {v4}, Landroid/media/tv/TvInputHardwareInfo;->getAudioAddress()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v3, v4}, findAudioDevicePort(ILjava/lang/String;)Landroid/media/AudioDevicePort;

    move-result-object v3

    iput-object v3, p0, mAudioSource:Landroid/media/AudioDevicePort;

    .line 973
    iget-object v3, p0, mAudioSource:Landroid/media/AudioDevicePort;

    if-nez v3, :cond_29

    if-eqz v0, :cond_27

    :cond_25
    :goto_25
    move v2, v1

    goto :goto_a

    :cond_27
    move v1, v2

    goto :goto_25

    :cond_29
    iget-object v3, p0, mAudioSource:Landroid/media/AudioDevicePort;

    invoke-virtual {v3, v0}, Landroid/media/AudioDevicePort;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_25

    move v1, v2

    goto :goto_25
.end method


# virtual methods
.method public dispatchKeyEventToHdmi(Landroid/view/KeyEvent;)Z
    .registers 5
    .param p1, "event"    # Landroid/view/KeyEvent;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 924
    iget-object v1, p0, mImplLock:Ljava/lang/Object;

    monitor-enter v1

    .line 925
    :try_start_4
    iget-boolean v0, p0, mReleased:Z

    if-eqz v0, :cond_13

    .line 926
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v2, "Device already released."

    invoke-direct {v0, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 928
    :catchall_10
    move-exception v0

    monitor-exit v1
    :try_end_12
    .catchall {:try_start_4 .. :try_end_12} :catchall_10

    throw v0

    :cond_13
    :try_start_13
    monitor-exit v1
    :try_end_14
    .catchall {:try_start_13 .. :try_end_14} :catchall_10

    .line 929
    iget-object v0, p0, mInfo:Landroid/media/tv/TvInputHardwareInfo;

    invoke-virtual {v0}, Landroid/media/tv/TvInputHardwareInfo;->getType()I

    move-result v0

    const/16 v1, 0x9

    if-eq v0, v1, :cond_1e

    .line 933
    :cond_1e
    return v2
.end method

.method public onMediaStreamVolumeChanged()V
    .registers 3

    .prologue
    .line 1023
    iget-object v1, p0, mImplLock:Ljava/lang/Object;

    monitor-enter v1

    .line 1024
    :try_start_3
    invoke-direct {p0}, updateAudioConfigLocked()V

    .line 1025
    monitor-exit v1

    .line 1026
    return-void

    .line 1025
    :catchall_8
    move-exception v0

    monitor-exit v1
    :try_end_a
    .catchall {:try_start_3 .. :try_end_a} :catchall_8

    throw v0
.end method

.method public overrideAudioSink(ILjava/lang/String;III)V
    .registers 8
    .param p1, "audioType"    # I
    .param p2, "audioAddress"    # Ljava/lang/String;
    .param p3, "samplingRate"    # I
    .param p4, "channelMask"    # I
    .param p5, "format"    # I

    .prologue
    .line 1010
    iget-object v1, p0, mImplLock:Ljava/lang/Object;

    monitor-enter v1

    .line 1011
    :try_start_3
    iput p1, p0, mOverrideAudioType:I

    .line 1012
    iput-object p2, p0, mOverrideAudioAddress:Ljava/lang/String;

    .line 1014
    iput p3, p0, mDesiredSamplingRate:I

    .line 1015
    iput p4, p0, mDesiredChannelMask:I

    .line 1016
    iput p5, p0, mDesiredFormat:I

    .line 1018
    invoke-direct {p0}, updateAudioConfigLocked()V

    .line 1019
    monitor-exit v1

    .line 1020
    return-void

    .line 1019
    :catchall_12
    move-exception v0

    monitor-exit v1
    :try_end_14
    .catchall {:try_start_3 .. :try_end_14} :catchall_12

    throw v0
.end method

.method public release()V
    .registers 4

    .prologue
    .line 723
    iget-object v1, p0, mImplLock:Ljava/lang/Object;

    monitor-enter v1

    .line 724
    :try_start_3
    iget-object v0, p0, this$0:Lcom/android/server/tv/TvInputHardwareManager;

    # getter for: Lcom/android/server/tv/TvInputHardwareManager;->mAudioManager:Landroid/media/AudioManager;
    invoke-static {v0}, Lcom/android/server/tv/TvInputHardwareManager;->access$1400(Lcom/android/server/tv/TvInputHardwareManager;)Landroid/media/AudioManager;

    move-result-object v0

    iget-object v2, p0, mAudioListener:Landroid/media/AudioManager$OnAudioPortUpdateListener;

    invoke-virtual {v0, v2}, Landroid/media/AudioManager;->unregisterAudioPortUpdateListener(Landroid/media/AudioManager$OnAudioPortUpdateListener;)V

    .line 725
    iget-object v0, p0, mAudioPatch:Landroid/media/AudioPatch;

    if-eqz v0, :cond_1f

    .line 726
    iget-object v0, p0, this$0:Lcom/android/server/tv/TvInputHardwareManager;

    # getter for: Lcom/android/server/tv/TvInputHardwareManager;->mAudioManager:Landroid/media/AudioManager;
    invoke-static {v0}, Lcom/android/server/tv/TvInputHardwareManager;->access$1400(Lcom/android/server/tv/TvInputHardwareManager;)Landroid/media/AudioManager;

    iget-object v0, p0, mAudioPatch:Landroid/media/AudioPatch;

    invoke-static {v0}, Landroid/media/AudioManager;->releaseAudioPatch(Landroid/media/AudioPatch;)I

    .line 727
    const/4 v0, 0x0

    iput-object v0, p0, mAudioPatch:Landroid/media/AudioPatch;

    .line 729
    :cond_1f
    const/4 v0, 0x1

    iput-boolean v0, p0, mReleased:Z

    .line 730
    monitor-exit v1

    .line 731
    return-void

    .line 730
    :catchall_24
    move-exception v0

    monitor-exit v1
    :try_end_26
    .catchall {:try_start_3 .. :try_end_26} :catchall_24

    throw v0
.end method

.method public setStreamVolume(F)V
    .registers 5
    .param p1, "volume"    # F
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 913
    iget-object v1, p0, mImplLock:Ljava/lang/Object;

    monitor-enter v1

    .line 914
    :try_start_3
    iget-boolean v0, p0, mReleased:Z

    if-eqz v0, :cond_12

    .line 915
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v2, "Device already released."

    invoke-direct {v0, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 919
    :catchall_f
    move-exception v0

    monitor-exit v1
    :try_end_11
    .catchall {:try_start_3 .. :try_end_11} :catchall_f

    throw v0

    .line 917
    :cond_12
    :try_start_12
    iput p1, p0, mSourceVolume:F

    .line 918
    invoke-direct {p0}, updateAudioConfigLocked()V

    .line 919
    monitor-exit v1
    :try_end_18
    .catchall {:try_start_12 .. :try_end_18} :catchall_f

    .line 920
    return-void
.end method

.method public setSurface(Landroid/view/Surface;Landroid/media/tv/TvStreamConfig;)Z
    .registers 10
    .param p1, "surface"    # Landroid/view/Surface;
    .param p2, "config"    # Landroid/media/tv/TvStreamConfig;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 739
    iget-object v3, p0, mImplLock:Ljava/lang/Object;

    monitor-enter v3

    .line 740
    :try_start_5
    iget-boolean v4, p0, mReleased:Z

    if-eqz v4, :cond_14

    .line 741
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "Device already released."

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 776
    :catchall_11
    move-exception v1

    monitor-exit v3
    :try_end_13
    .catchall {:try_start_5 .. :try_end_13} :catchall_11

    throw v1

    .line 744
    :cond_14
    const/4 v0, 0x0

    .line 745
    .local v0, "result":I
    if-nez p1, :cond_39

    .line 747
    :try_start_17
    iget-object v4, p0, mActiveConfig:Landroid/media/tv/TvStreamConfig;

    if-eqz v4, :cond_37

    .line 748
    iget-object v4, p0, this$0:Lcom/android/server/tv/TvInputHardwareManager;

    # getter for: Lcom/android/server/tv/TvInputHardwareManager;->mHal:Lcom/android/server/tv/TvInputHal;
    invoke-static {v4}, Lcom/android/server/tv/TvInputHardwareManager;->access$1500(Lcom/android/server/tv/TvInputHardwareManager;)Lcom/android/server/tv/TvInputHal;

    move-result-object v4

    iget-object v5, p0, mInfo:Landroid/media/tv/TvInputHardwareInfo;

    invoke-virtual {v5}, Landroid/media/tv/TvInputHardwareInfo;->getDeviceId()I

    move-result v5

    iget-object v6, p0, mActiveConfig:Landroid/media/tv/TvStreamConfig;

    invoke-virtual {v4, v5, v6}, Lcom/android/server/tv/TvInputHal;->removeStream(ILandroid/media/tv/TvStreamConfig;)I

    move-result v0

    .line 749
    const/4 v4, 0x0

    iput-object v4, p0, mActiveConfig:Landroid/media/tv/TvStreamConfig;

    .line 774
    :cond_30
    :goto_30
    invoke-direct {p0}, updateAudioConfigLocked()V

    .line 775
    if-nez v0, :cond_78

    :goto_35
    monitor-exit v3

    :goto_36
    return v1

    .line 752
    :cond_37
    monitor-exit v3

    goto :goto_36

    .line 756
    :cond_39
    if-nez p2, :cond_3e

    .line 757
    monitor-exit v3

    move v1, v2

    goto :goto_36

    .line 760
    :cond_3e
    iget-object v4, p0, mActiveConfig:Landroid/media/tv/TvStreamConfig;

    if-eqz v4, :cond_61

    iget-object v4, p0, mActiveConfig:Landroid/media/tv/TvStreamConfig;

    invoke-virtual {p2, v4}, Landroid/media/tv/TvStreamConfig;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_61

    .line 761
    iget-object v4, p0, this$0:Lcom/android/server/tv/TvInputHardwareManager;

    # getter for: Lcom/android/server/tv/TvInputHardwareManager;->mHal:Lcom/android/server/tv/TvInputHal;
    invoke-static {v4}, Lcom/android/server/tv/TvInputHardwareManager;->access$1500(Lcom/android/server/tv/TvInputHardwareManager;)Lcom/android/server/tv/TvInputHal;

    move-result-object v4

    iget-object v5, p0, mInfo:Landroid/media/tv/TvInputHardwareInfo;

    invoke-virtual {v5}, Landroid/media/tv/TvInputHardwareInfo;->getDeviceId()I

    move-result v5

    iget-object v6, p0, mActiveConfig:Landroid/media/tv/TvStreamConfig;

    invoke-virtual {v4, v5, v6}, Lcom/android/server/tv/TvInputHal;->removeStream(ILandroid/media/tv/TvStreamConfig;)I

    move-result v0

    .line 762
    if-eqz v0, :cond_61

    .line 763
    const/4 v4, 0x0

    iput-object v4, p0, mActiveConfig:Landroid/media/tv/TvStreamConfig;

    .line 767
    :cond_61
    if-nez v0, :cond_30

    .line 768
    iget-object v4, p0, this$0:Lcom/android/server/tv/TvInputHardwareManager;

    # getter for: Lcom/android/server/tv/TvInputHardwareManager;->mHal:Lcom/android/server/tv/TvInputHal;
    invoke-static {v4}, Lcom/android/server/tv/TvInputHardwareManager;->access$1500(Lcom/android/server/tv/TvInputHardwareManager;)Lcom/android/server/tv/TvInputHal;

    move-result-object v4

    iget-object v5, p0, mInfo:Landroid/media/tv/TvInputHardwareInfo;

    invoke-virtual {v5}, Landroid/media/tv/TvInputHardwareInfo;->getDeviceId()I

    move-result v5

    invoke-virtual {v4, v5, p1, p2}, Lcom/android/server/tv/TvInputHal;->addOrUpdateStream(ILandroid/view/Surface;Landroid/media/tv/TvStreamConfig;)I

    move-result v0

    .line 769
    if-nez v0, :cond_30

    .line 770
    iput-object p2, p0, mActiveConfig:Landroid/media/tv/TvStreamConfig;
    :try_end_77
    .catchall {:try_start_17 .. :try_end_77} :catchall_11

    goto :goto_30

    :cond_78
    move v1, v2

    .line 775
    goto :goto_35
.end method
