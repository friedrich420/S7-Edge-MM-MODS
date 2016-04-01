.class public Lcom/android/server/audio/AudioService$VolumeStreamState;
.super Ljava/lang/Object;
.source "AudioService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/audio/AudioService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "VolumeStreamState"
.end annotation


# instance fields
.field private final mIndexMap:Landroid/util/SparseIntArray;

.field private final mIndexMax:I

.field private final mIndexMin:I

.field private mIsMuted:Z

.field private mObservedAddress:Ljava/lang/String;

.field private mObservedDevices:I

.field private final mStreamDevicesChanged:Landroid/content/Intent;

.field private final mStreamType:I

.field private mVolumeIndexSettingName:Ljava/lang/String;

.field final synthetic this$0:Lcom/android/server/audio/AudioService;


# direct methods
.method private constructor <init>(Lcom/android/server/audio/AudioService;Ljava/lang/String;I)V
    .registers 7
    .param p2, "settingName"    # Ljava/lang/String;
    .param p3, "streamType"    # I

    .prologue
    .line 5412
    iput-object p1, p0, this$0:Lcom/android/server/audio/AudioService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 5406
    new-instance v0, Landroid/util/SparseIntArray;

    const/16 v1, 0x8

    invoke-direct {v0, v1}, Landroid/util/SparseIntArray;-><init>(I)V

    iput-object v0, p0, mIndexMap:Landroid/util/SparseIntArray;

    .line 5414
    iput-object p2, p0, mVolumeIndexSettingName:Ljava/lang/String;

    .line 5416
    iput p3, p0, mStreamType:I

    .line 5417
    # getter for: Lcom/android/server/audio/AudioService;->MIN_STREAM_VOLUME:[I
    invoke-static {}, Lcom/android/server/audio/AudioService;->access$4000()[I

    move-result-object v0

    aget v0, v0, p3

    mul-int/lit8 v0, v0, 0xa

    iput v0, p0, mIndexMin:I

    .line 5423
    # getter for: Lcom/android/server/audio/AudioService;->MAX_STREAM_VOLUME2:[I
    invoke-static {p1}, Lcom/android/server/audio/AudioService;->access$4100(Lcom/android/server/audio/AudioService;)[I

    move-result-object v0

    aget v0, v0, p3

    mul-int/lit8 v0, v0, 0xa

    iput v0, p0, mIndexMax:I

    .line 5428
    iget v0, p0, mIndexMin:I

    div-int/lit8 v0, v0, 0xa

    iget v1, p0, mIndexMax:I

    div-int/lit8 v1, v1, 0xa

    invoke-static {p3, v0, v1}, Landroid/media/AudioSystem;->initStreamVolume(III)I

    .line 5430
    invoke-virtual {p0}, readSettings()V

    .line 5435
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.media.STREAM_DEVICES_CHANGED_ACTION"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, mStreamDevicesChanged:Landroid/content/Intent;

    .line 5436
    iget-object v0, p0, mStreamDevicesChanged:Landroid/content/Intent;

    const-string v1, "android.media.EXTRA_VOLUME_STREAM_TYPE"

    iget v2, p0, mStreamType:I

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 5437
    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/audio/AudioService;Ljava/lang/String;ILcom/android/server/audio/AudioService$1;)V
    .registers 5
    .param p1, "x0"    # Lcom/android/server/audio/AudioService;
    .param p2, "x1"    # Ljava/lang/String;
    .param p3, "x2"    # I
    .param p4, "x3"    # Lcom/android/server/audio/AudioService$1;

    .prologue
    .line 5396
    invoke-direct {p0, p1, p2, p3}, <init>(Lcom/android/server/audio/AudioService;Ljava/lang/String;I)V

    return-void
.end method

.method static synthetic access$1000(Lcom/android/server/audio/AudioService$VolumeStreamState;)Ljava/lang/String;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/audio/AudioService$VolumeStreamState;

    .prologue
    .line 5396
    iget-object v0, p0, mVolumeIndexSettingName:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1100(Lcom/android/server/audio/AudioService$VolumeStreamState;)Landroid/util/SparseIntArray;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/audio/AudioService$VolumeStreamState;

    .prologue
    .line 5396
    iget-object v0, p0, mIndexMap:Landroid/util/SparseIntArray;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/server/audio/AudioService$VolumeStreamState;)I
    .registers 2
    .param p0, "x0"    # Lcom/android/server/audio/AudioService$VolumeStreamState;

    .prologue
    .line 5396
    iget v0, p0, mIndexMax:I

    return v0
.end method

.method static synthetic access$500(Lcom/android/server/audio/AudioService$VolumeStreamState;)Z
    .registers 2
    .param p0, "x0"    # Lcom/android/server/audio/AudioService$VolumeStreamState;

    .prologue
    .line 5396
    iget-boolean v0, p0, mIsMuted:Z

    return v0
.end method

.method static synthetic access$502(Lcom/android/server/audio/AudioService$VolumeStreamState;Z)Z
    .registers 2
    .param p0, "x0"    # Lcom/android/server/audio/AudioService$VolumeStreamState;
    .param p1, "x1"    # Z

    .prologue
    .line 5396
    iput-boolean p1, p0, mIsMuted:Z

    return p1
.end method

.method static synthetic access$600(Lcom/android/server/audio/AudioService$VolumeStreamState;)I
    .registers 2
    .param p0, "x0"    # Lcom/android/server/audio/AudioService$VolumeStreamState;

    .prologue
    .line 5396
    iget v0, p0, mIndexMin:I

    return v0
.end method

.method static synthetic access$700(Lcom/android/server/audio/AudioService$VolumeStreamState;)I
    .registers 2
    .param p0, "x0"    # Lcom/android/server/audio/AudioService$VolumeStreamState;

    .prologue
    .line 5396
    iget v0, p0, mStreamType:I

    return v0
.end method

.method static synthetic access$900(Lcom/android/server/audio/AudioService$VolumeStreamState;Ljava/io/PrintWriter;)V
    .registers 2
    .param p0, "x0"    # Lcom/android/server/audio/AudioService$VolumeStreamState;
    .param p1, "x1"    # Ljava/io/PrintWriter;

    .prologue
    .line 5396
    invoke-direct {p0, p1}, dump(Ljava/io/PrintWriter;)V

    return-void
.end method

.method private dump(Ljava/io/PrintWriter;)V
    .registers 12
    .param p1, "pw"    # Ljava/io/PrintWriter;

    .prologue
    const/high16 v9, 0x40000000    # 2.0f

    .line 5775
    const-string v7, "   Muted: "

    invoke-virtual {p1, v7}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 5776
    iget-boolean v7, p0, mIsMuted:Z

    invoke-virtual {p1, v7}, Ljava/io/PrintWriter;->println(Z)V

    .line 5777
    const-string v7, "   Min: "

    invoke-virtual {p1, v7}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 5778
    iget v7, p0, mIndexMin:I

    add-int/lit8 v7, v7, 0x5

    div-int/lit8 v7, v7, 0xa

    invoke-virtual {p1, v7}, Ljava/io/PrintWriter;->println(I)V

    .line 5779
    const-string v7, "   Max: "

    invoke-virtual {p1, v7}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 5780
    iget v7, p0, mIndexMax:I

    add-int/lit8 v7, v7, 0x5

    div-int/lit8 v7, v7, 0xa

    invoke-virtual {p1, v7}, Ljava/io/PrintWriter;->println(I)V

    .line 5781
    const-string v7, "   Current: "

    invoke-virtual {p1, v7}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 5782
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_2e
    iget-object v7, p0, mIndexMap:Landroid/util/SparseIntArray;

    invoke-virtual {v7}, Landroid/util/SparseIntArray;->size()I

    move-result v7

    if-ge v3, v7, :cond_7c

    .line 5783
    if-lez v3, :cond_3d

    .line 5784
    const-string v7, ", "

    invoke-virtual {p1, v7}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 5786
    :cond_3d
    iget-object v7, p0, mIndexMap:Landroid/util/SparseIntArray;

    invoke-virtual {v7, v3}, Landroid/util/SparseIntArray;->keyAt(I)I

    move-result v0

    .line 5787
    .local v0, "device":I
    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p1, v7}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 5788
    if-ne v0, v9, :cond_77

    const-string/jumbo v1, "default"

    .line 5790
    .local v1, "deviceName":Ljava/lang/String;
    :goto_4f
    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v7

    if-nez v7, :cond_62

    .line 5791
    const-string v7, " ("

    invoke-virtual {p1, v7}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 5792
    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 5793
    const-string v7, ")"

    invoke-virtual {p1, v7}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 5795
    :cond_62
    const-string v7, ": "

    invoke-virtual {p1, v7}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 5796
    iget-object v7, p0, mIndexMap:Landroid/util/SparseIntArray;

    invoke-virtual {v7, v3}, Landroid/util/SparseIntArray;->valueAt(I)I

    move-result v7

    add-int/lit8 v7, v7, 0x5

    div-int/lit8 v4, v7, 0xa

    .line 5797
    .local v4, "index":I
    invoke-virtual {p1, v4}, Ljava/io/PrintWriter;->print(I)V

    .line 5782
    add-int/lit8 v3, v3, 0x1

    goto :goto_2e

    .line 5788
    .end local v1    # "deviceName":Ljava/lang/String;
    .end local v4    # "index":I
    :cond_77
    invoke-static {v0}, Landroid/media/AudioSystem;->getOutputDeviceName(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_4f

    .line 5799
    .end local v0    # "device":I
    :cond_7c
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    .line 5800
    const-string v7, "   Devices: "

    invoke-virtual {p1, v7}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 5801
    iget-object v7, p0, this$0:Lcom/android/server/audio/AudioService;

    iget v8, p0, mStreamType:I

    # invokes: Lcom/android/server/audio/AudioService;->getDevicesForStream(I)I
    invoke-static {v7, v8}, Lcom/android/server/audio/AudioService;->access$5900(Lcom/android/server/audio/AudioService;I)I

    move-result v2

    .line 5802
    .local v2, "devices":I
    const/4 v3, 0x0

    const/4 v5, 0x0

    .local v5, "n":I
    move v6, v5

    .line 5805
    .end local v5    # "n":I
    .local v6, "n":I
    :goto_8f
    const/4 v7, 0x1

    shl-int v0, v7, v3

    .restart local v0    # "device":I
    if-eq v0, v9, :cond_ac

    .line 5806
    and-int v7, v2, v0

    if-eqz v7, :cond_bd

    .line 5807
    add-int/lit8 v5, v6, 0x1

    .end local v6    # "n":I
    .restart local v5    # "n":I
    if-lez v6, :cond_a1

    .line 5808
    const-string v7, ", "

    invoke-virtual {p1, v7}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 5810
    :cond_a1
    invoke-static {v0}, Landroid/media/AudioSystem;->getOutputDeviceName(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p1, v7}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 5812
    :goto_a8
    add-int/lit8 v3, v3, 0x1

    move v6, v5

    .end local v5    # "n":I
    .restart local v6    # "n":I
    goto :goto_8f

    .line 5815
    :cond_ac
    const-string v7, "   SCO Device : "

    invoke-virtual {p1, v7}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 5816
    iget-object v7, p0, this$0:Lcom/android/server/audio/AudioService;

    const/16 v8, 0x10

    # invokes: Lcom/android/server/audio/AudioService;->checkDeviceConnected(I)Z
    invoke-static {v7, v8}, Lcom/android/server/audio/AudioService;->access$3200(Lcom/android/server/audio/AudioService;I)Z

    move-result v7

    invoke-virtual {p1, v7}, Ljava/io/PrintWriter;->println(Z)V

    .line 5818
    return-void

    :cond_bd
    move v5, v6

    .end local v6    # "n":I
    .restart local v5    # "n":I
    goto :goto_a8
.end method

.method private getValidIndex(I)I
    .registers 3
    .param p1, "index"    # I

    .prologue
    .line 5765
    iget v0, p0, mIndexMin:I

    if-ge p1, v0, :cond_7

    .line 5766
    iget p1, p0, mIndexMin:I

    .line 5771
    .end local p1    # "index":I
    :cond_6
    :goto_6
    return p1

    .line 5767
    .restart local p1    # "index":I
    :cond_7
    iget-object v0, p0, this$0:Lcom/android/server/audio/AudioService;

    # getter for: Lcom/android/server/audio/AudioService;->mUseFixedVolume:Z
    invoke-static {v0}, Lcom/android/server/audio/AudioService;->access$4600(Lcom/android/server/audio/AudioService;)Z

    move-result v0

    if-nez v0, :cond_13

    iget v0, p0, mIndexMax:I

    if-le p1, v0, :cond_6

    .line 5768
    :cond_13
    iget p1, p0, mIndexMax:I

    goto :goto_6
.end method


# virtual methods
.method public adjustIndex(IILjava/lang/String;)Z
    .registers 5
    .param p1, "deltaIndex"    # I
    .param p2, "device"    # I
    .param p3, "caller"    # Ljava/lang/String;

    .prologue
    .line 5608
    invoke-virtual {p0, p2}, getIndex(I)I

    move-result v0

    add-int/2addr v0, p1

    invoke-virtual {p0, v0, p2, p3}, setIndex(IILjava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public applyAllVolumes()V
    .registers 10

    .prologue
    const/4 v6, 0x0

    const/high16 v8, 0x40000000    # 2.0f

    const/4 v7, 0x2

    const/4 v5, 0x1

    .line 5559
    iget-object v4, p0, this$0:Lcom/android/server/audio/AudioService;

    # getter for: Lcom/android/server/audio/AudioService;->SOUND_EFFECTS_PATH_THEME:Ljava/lang/String;
    invoke-static {v4}, Lcom/android/server/audio/AudioService;->access$5100(Lcom/android/server/audio/AudioService;)Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_34

    iget-object v4, p0, this$0:Lcom/android/server/audio/AudioService;

    # getter for: Lcom/android/server/audio/AudioService;->mPrevRingerMode:I
    invoke-static {v4}, Lcom/android/server/audio/AudioService;->access$5200(Lcom/android/server/audio/AudioService;)I

    move-result v4

    if-ne v4, v7, :cond_34

    iget-object v4, p0, this$0:Lcom/android/server/audio/AudioService;

    # getter for: Lcom/android/server/audio/AudioService;->mRingerMode:I
    invoke-static {v4}, Lcom/android/server/audio/AudioService;->access$5300(Lcom/android/server/audio/AudioService;)I

    move-result v4

    if-eq v4, v5, :cond_25

    iget-object v4, p0, this$0:Lcom/android/server/audio/AudioService;

    # getter for: Lcom/android/server/audio/AudioService;->mRingerMode:I
    invoke-static {v4}, Lcom/android/server/audio/AudioService;->access$5300(Lcom/android/server/audio/AudioService;)I

    move-result v4

    if-nez v4, :cond_34

    :cond_25
    invoke-static {v5, v6}, Landroid/media/AudioSystem;->isStreamActive(II)Z

    move-result v4

    if-eqz v4, :cond_34

    iget v4, p0, mStreamType:I

    if-ne v4, v5, :cond_34

    .line 5565
    const-wide/16 v4, 0xc8

    :try_start_31
    invoke-static {v4, v5}, Ljava/lang/Thread;->sleep(J)V
    :try_end_34
    .catch Ljava/lang/Exception; {:try_start_31 .. :try_end_34} :catch_79

    .line 5571
    :cond_34
    :goto_34
    const-class v5, Lcom/android/server/audio/AudioService$VolumeStreamState;

    monitor-enter v5

    .line 5575
    :try_start_37
    iget-boolean v4, p0, mIsMuted:Z

    if-eqz v4, :cond_93

    .line 5576
    const/4 v3, 0x0

    .line 5581
    .local v3, "index":I
    :goto_3c
    iget v4, p0, mStreamType:I

    if-ne v4, v7, :cond_54

    const/4 v4, 0x2

    const/4 v6, 0x0

    invoke-static {v4, v6}, Landroid/media/AudioSystem;->isStreamActive(II)Z

    move-result v4

    if-eqz v4, :cond_54

    iget-object v4, p0, this$0:Lcom/android/server/audio/AudioService;

    # invokes: Lcom/android/server/audio/AudioService;->getCurOutDevice()I
    invoke-static {v4}, Lcom/android/server/audio/AudioService;->access$5400(Lcom/android/server/audio/AudioService;)I

    move-result v4

    const v6, 0x200003f0

    and-int/2addr v4, v6

    if-eqz v4, :cond_5b

    .line 5585
    :cond_54
    iget v4, p0, mStreamType:I

    const/high16 v6, 0x40000000    # 2.0f

    invoke-static {v4, v3, v6}, Landroid/media/AudioSystem;->setStreamVolumeIndex(III)I

    .line 5588
    :cond_5b
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_5c
    iget-object v4, p0, mIndexMap:Landroid/util/SparseIntArray;

    invoke-virtual {v4}, Landroid/util/SparseIntArray;->size()I

    move-result v4

    if-ge v2, v4, :cond_c5

    .line 5589
    iget-object v4, p0, mIndexMap:Landroid/util/SparseIntArray;

    invoke-virtual {v4, v2}, Landroid/util/SparseIntArray;->keyAt(I)I

    move-result v0

    .line 5590
    .local v0, "device":I
    if-eq v0, v8, :cond_76

    .line 5591
    iget-boolean v4, p0, mIsMuted:Z

    if-eqz v4, :cond_9e

    .line 5592
    const/4 v3, 0x0

    .line 5601
    :goto_71
    iget v4, p0, mStreamType:I

    invoke-static {v4, v3, v0}, Landroid/media/AudioSystem;->setStreamVolumeIndex(III)I
    :try_end_76
    .catchall {:try_start_37 .. :try_end_76} :catchall_c7

    .line 5588
    :cond_76
    add-int/lit8 v2, v2, 0x1

    goto :goto_5c

    .line 5566
    .end local v0    # "device":I
    .end local v2    # "i":I
    .end local v3    # "index":I
    :catch_79
    move-exception v1

    .line 5567
    .local v1, "e":Ljava/lang/Exception;
    const-string v4, "AudioService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Error in Thread.sleep() : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_34

    .line 5578
    .end local v1    # "e":Ljava/lang/Exception;
    :cond_93
    const/high16 v4, 0x40000000    # 2.0f

    :try_start_95
    invoke-virtual {p0, v4}, getIndex(I)I

    move-result v4

    add-int/lit8 v4, v4, 0x5

    div-int/lit8 v3, v4, 0xa

    .restart local v3    # "index":I
    goto :goto_3c

    .line 5593
    .restart local v0    # "device":I
    .restart local v2    # "i":I
    :cond_9e
    const v4, 0x20000380

    and-int/2addr v4, v0

    if-eqz v4, :cond_ac

    iget-object v4, p0, this$0:Lcom/android/server/audio/AudioService;

    # getter for: Lcom/android/server/audio/AudioService;->mAvrcpAbsVolSupported:Z
    invoke-static {v4}, Lcom/android/server/audio/AudioService;->access$4800(Lcom/android/server/audio/AudioService;)Z

    move-result v4

    if-nez v4, :cond_b3

    :cond_ac
    iget-object v4, p0, this$0:Lcom/android/server/audio/AudioService;

    iget v4, v4, Lcom/android/server/audio/AudioService;->mFullVolumeDevices:I

    and-int/2addr v4, v0

    if-eqz v4, :cond_ba

    .line 5597
    :cond_b3
    iget v4, p0, mIndexMax:I

    add-int/lit8 v4, v4, 0x5

    div-int/lit8 v3, v4, 0xa

    goto :goto_71

    .line 5599
    :cond_ba
    iget-object v4, p0, mIndexMap:Landroid/util/SparseIntArray;

    invoke-virtual {v4, v2}, Landroid/util/SparseIntArray;->valueAt(I)I

    move-result v4

    add-int/lit8 v4, v4, 0x5

    div-int/lit8 v3, v4, 0xa

    goto :goto_71

    .line 5604
    .end local v0    # "device":I
    :cond_c5
    monitor-exit v5

    .line 5605
    return-void

    .line 5604
    .end local v2    # "i":I
    .end local v3    # "index":I
    :catchall_c7
    move-exception v4

    monitor-exit v5
    :try_end_c9
    .catchall {:try_start_95 .. :try_end_c9} :catchall_c7

    throw v4
.end method

.method public applyDeviceVolume_syncVSS(I)V
    .registers 6
    .param p1, "device"    # I

    .prologue
    const/4 v3, 0x0

    .line 5534
    iget-boolean v1, p0, mIsMuted:Z

    if-eqz v1, :cond_35

    .line 5535
    const/4 v0, 0x0

    .line 5544
    .local v0, "index":I
    :goto_6
    iget v1, p0, mStreamType:I

    const/4 v2, 0x3

    if-ne v1, v2, :cond_2f

    iget-object v1, p0, this$0:Lcom/android/server/audio/AudioService;

    invoke-virtual {v1}, Lcom/android/server/audio/AudioService;->isMediaSilentMode()Z

    move-result v1

    if-eqz v1, :cond_2f

    invoke-virtual {p0, p1}, getIndex(I)I

    move-result v1

    add-int/lit8 v1, v1, 0x5

    div-int/lit8 v1, v1, 0xa

    if-eqz v1, :cond_2f

    .line 5547
    const-string v1, "AudioService"

    const-string/jumbo v2, "setStreamVolumeIndex reset mMediaSilentMode"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 5548
    iget-object v1, p0, this$0:Lcom/android/server/audio/AudioService;

    # setter for: Lcom/android/server/audio/AudioService;->mMediaSilentMode:Z
    invoke-static {v1, v3}, Lcom/android/server/audio/AudioService;->access$4902(Lcom/android/server/audio/AudioService;Z)Z

    .line 5549
    iget-object v1, p0, this$0:Lcom/android/server/audio/AudioService;

    # setter for: Lcom/android/server/audio/AudioService;->mMediaLastAudibleIndex:I
    invoke-static {v1, v3}, Lcom/android/server/audio/AudioService;->access$5002(Lcom/android/server/audio/AudioService;I)I

    .line 5553
    :cond_2f
    iget v1, p0, mStreamType:I

    invoke-static {v1, v0, p1}, Landroid/media/AudioSystem;->setStreamVolumeIndex(III)I

    .line 5554
    return-void

    .line 5536
    .end local v0    # "index":I
    :cond_35
    const v1, 0x20000380

    and-int/2addr v1, p1

    if-eqz v1, :cond_43

    iget-object v1, p0, this$0:Lcom/android/server/audio/AudioService;

    # getter for: Lcom/android/server/audio/AudioService;->mAvrcpAbsVolSupported:Z
    invoke-static {v1}, Lcom/android/server/audio/AudioService;->access$4800(Lcom/android/server/audio/AudioService;)Z

    move-result v1

    if-nez v1, :cond_4a

    :cond_43
    iget-object v1, p0, this$0:Lcom/android/server/audio/AudioService;

    iget v1, v1, Lcom/android/server/audio/AudioService;->mFullVolumeDevices:I

    and-int/2addr v1, p1

    if-eqz v1, :cond_51

    .line 5538
    :cond_4a
    iget v1, p0, mIndexMax:I

    add-int/lit8 v1, v1, 0x5

    div-int/lit8 v0, v1, 0xa

    .restart local v0    # "index":I
    goto :goto_6

    .line 5540
    .end local v0    # "index":I
    :cond_51
    invoke-virtual {p0, p1}, getIndex(I)I

    move-result v1

    add-int/lit8 v1, v1, 0x5

    div-int/lit8 v0, v1, 0xa

    .restart local v0    # "index":I
    goto :goto_6
.end method

.method public checkFixedVolumeDevices()V
    .registers 7

    .prologue
    .line 5748
    const-class v4, Lcom/android/server/audio/AudioService$VolumeStreamState;

    monitor-enter v4

    .line 5750
    :try_start_3
    iget-object v3, p0, this$0:Lcom/android/server/audio/AudioService;

    # getter for: Lcom/android/server/audio/AudioService;->mStreamVolumeAlias:[I
    invoke-static {v3}, Lcom/android/server/audio/AudioService;->access$4400(Lcom/android/server/audio/AudioService;)[I

    move-result-object v3

    iget v5, p0, mStreamType:I

    aget v3, v3, v5

    const/4 v5, 0x3

    if-ne v3, v5, :cond_42

    .line 5751
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_11
    iget-object v3, p0, mIndexMap:Landroid/util/SparseIntArray;

    invoke-virtual {v3}, Landroid/util/SparseIntArray;->size()I

    move-result v3

    if-ge v1, v3, :cond_42

    .line 5752
    iget-object v3, p0, mIndexMap:Landroid/util/SparseIntArray;

    invoke-virtual {v3, v1}, Landroid/util/SparseIntArray;->keyAt(I)I

    move-result v0

    .line 5753
    .local v0, "device":I
    iget-object v3, p0, mIndexMap:Landroid/util/SparseIntArray;

    invoke-virtual {v3, v1}, Landroid/util/SparseIntArray;->valueAt(I)I

    move-result v2

    .line 5754
    .local v2, "index":I
    iget-object v3, p0, this$0:Lcom/android/server/audio/AudioService;

    iget v3, v3, Lcom/android/server/audio/AudioService;->mFullVolumeDevices:I

    and-int/2addr v3, v0

    if-nez v3, :cond_35

    iget-object v3, p0, this$0:Lcom/android/server/audio/AudioService;

    iget v3, v3, Lcom/android/server/audio/AudioService;->mFixedVolumeDevices:I

    and-int/2addr v3, v0

    if-eqz v3, :cond_3c

    if-eqz v2, :cond_3c

    .line 5756
    :cond_35
    iget-object v3, p0, mIndexMap:Landroid/util/SparseIntArray;

    iget v5, p0, mIndexMax:I

    invoke-virtual {v3, v0, v5}, Landroid/util/SparseIntArray;->put(II)V

    .line 5758
    :cond_3c
    invoke-virtual {p0, v0}, applyDeviceVolume_syncVSS(I)V

    .line 5751
    add-int/lit8 v1, v1, 0x1

    goto :goto_11

    .line 5761
    .end local v0    # "device":I
    .end local v1    # "i":I
    .end local v2    # "index":I
    :cond_42
    monitor-exit v4

    .line 5762
    return-void

    .line 5761
    :catchall_44
    move-exception v3

    monitor-exit v4
    :try_end_46
    .catchall {:try_start_3 .. :try_end_46} :catchall_44

    throw v3
.end method

.method public getIndex(I)I
    .registers 7
    .param p1, "device"    # I

    .prologue
    const/4 v4, -0x1

    .line 5668
    const-class v2, Lcom/android/server/audio/AudioService$VolumeStreamState;

    monitor-enter v2

    .line 5669
    :try_start_4
    iget-object v1, p0, mIndexMap:Landroid/util/SparseIntArray;

    const/4 v3, -0x1

    invoke-virtual {v1, p1, v3}, Landroid/util/SparseIntArray;->get(II)I

    move-result v0

    .line 5670
    .local v0, "index":I
    if-ne v0, v4, :cond_15

    .line 5672
    iget-object v1, p0, mIndexMap:Landroid/util/SparseIntArray;

    const/high16 v3, 0x40000000    # 2.0f

    invoke-virtual {v1, v3}, Landroid/util/SparseIntArray;->get(I)I

    move-result v0

    .line 5674
    :cond_15
    monitor-exit v2

    return v0

    .line 5675
    .end local v0    # "index":I
    :catchall_17
    move-exception v1

    monitor-exit v2
    :try_end_19
    .catchall {:try_start_4 .. :try_end_19} :catchall_17

    throw v1
.end method

.method public getMaxIndex()I
    .registers 2

    .prologue
    .line 5679
    iget v0, p0, mIndexMax:I

    return v0
.end method

.method public getMinIndex()I
    .registers 2

    .prologue
    .line 5683
    iget v0, p0, mIndexMin:I

    return v0
.end method

.method public getSettingNameForDevice(I)Ljava/lang/String;
    .registers 6
    .param p1, "device"    # I

    .prologue
    .line 5470
    iget-object v0, p0, mVolumeIndexSettingName:Ljava/lang/String;

    .line 5471
    .local v0, "name":Ljava/lang/String;
    invoke-static {p1}, Landroid/media/AudioSystem;->getOutputDeviceName(I)Ljava/lang/String;

    move-result-object v1

    .line 5472
    .local v1, "suffix":Ljava/lang/String;
    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_d

    .line 5475
    .end local v0    # "name":Ljava/lang/String;
    :goto_c
    return-object v0

    .restart local v0    # "name":Ljava/lang/String;
    :cond_d
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "_"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_c
.end method

.method public getStreamType()I
    .registers 2

    .prologue
    .line 5744
    iget v0, p0, mStreamType:I

    return v0
.end method

.method public mute(Z)V
    .registers 12
    .param p1, "state"    # Z

    .prologue
    .line 5717
    const/4 v7, 0x0

    .line 5718
    .local v7, "changed":Z
    const-class v9, Lcom/android/server/audio/AudioService$VolumeStreamState;

    monitor-enter v9

    .line 5719
    :try_start_4
    iget-boolean v0, p0, mIsMuted:Z

    if-eq p1, v0, :cond_1b

    .line 5720
    const/4 v7, 0x1

    .line 5721
    iput-boolean p1, p0, mIsMuted:Z

    .line 5726
    iget-object v0, p0, this$0:Lcom/android/server/audio/AudioService;

    # getter for: Lcom/android/server/audio/AudioService;->mAudioHandler:Lcom/android/server/audio/AudioService$AudioHandler;
    invoke-static {v0}, Lcom/android/server/audio/AudioService;->access$000(Lcom/android/server/audio/AudioService;)Lcom/android/server/audio/AudioService$AudioHandler;

    move-result-object v0

    const/16 v1, 0xa

    const/4 v2, 0x2

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v6, 0x0

    move-object v5, p0

    # invokes: Lcom/android/server/audio/AudioService;->sendMsg(Landroid/os/Handler;IIIILjava/lang/Object;I)V
    invoke-static/range {v0 .. v6}, Lcom/android/server/audio/AudioService;->access$100(Landroid/os/Handler;IIIILjava/lang/Object;I)V

    .line 5733
    :cond_1b
    monitor-exit v9
    :try_end_1c
    .catchall {:try_start_4 .. :try_end_1c} :catchall_37

    .line 5734
    if-eqz v7, :cond_36

    .line 5736
    new-instance v8, Landroid/content/Intent;

    const-string v0, "android.media.STREAM_MUTE_CHANGED_ACTION"

    invoke-direct {v8, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 5737
    .local v8, "intent":Landroid/content/Intent;
    const-string v0, "android.media.EXTRA_VOLUME_STREAM_TYPE"

    iget v1, p0, mStreamType:I

    invoke-virtual {v8, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 5738
    const-string v0, "android.media.EXTRA_STREAM_VOLUME_MUTED"

    invoke-virtual {v8, v0, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 5739
    iget-object v0, p0, this$0:Lcom/android/server/audio/AudioService;

    # invokes: Lcom/android/server/audio/AudioService;->sendBroadcastToAll(Landroid/content/Intent;)V
    invoke-static {v0, v8}, Lcom/android/server/audio/AudioService;->access$4500(Lcom/android/server/audio/AudioService;Landroid/content/Intent;)V

    .line 5741
    .end local v8    # "intent":Landroid/content/Intent;
    :cond_36
    return-void

    .line 5733
    :catchall_37
    move-exception v0

    :try_start_38
    monitor-exit v9
    :try_end_39
    .catchall {:try_start_38 .. :try_end_39} :catchall_37

    throw v0
.end method

.method public observeDevicesForStream_syncVSS(Z)I
    .registers 8
    .param p1, "checkOthers"    # Z

    .prologue
    .line 5440
    iget v3, p0, mStreamType:I

    invoke-static {v3}, Landroid/media/AudioSystem;->getDevicesForStream(I)I

    move-result v1

    .line 5441
    .local v1, "devices":I
    iget-object v3, p0, this$0:Lcom/android/server/audio/AudioService;

    # invokes: Lcom/android/server/audio/AudioService;->getAddressForDevice(I)Ljava/lang/String;
    invoke-static {v3, v1}, Lcom/android/server/audio/AudioService;->access$4200(Lcom/android/server/audio/AudioService;I)Ljava/lang/String;

    move-result-object v0

    .line 5442
    .local v0, "address":Ljava/lang/String;
    iget v3, p0, mObservedDevices:I

    if-ne v1, v3, :cond_19

    .line 5443
    iget-object v3, p0, mObservedAddress:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_19

    .line 5466
    :goto_18
    return v1

    .line 5447
    :cond_19
    iget v2, p0, mObservedDevices:I

    .line 5449
    .local v2, "prevDevices":I
    iput v1, p0, mObservedDevices:I

    .line 5450
    iput-object v0, p0, mObservedAddress:Ljava/lang/String;

    .line 5452
    if-eqz p1, :cond_28

    .line 5454
    iget-object v3, p0, this$0:Lcom/android/server/audio/AudioService;

    iget v4, p0, mStreamType:I

    # invokes: Lcom/android/server/audio/AudioService;->observeDevicesForStreams(I)V
    invoke-static {v3, v4}, Lcom/android/server/audio/AudioService;->access$4300(Lcom/android/server/audio/AudioService;I)V

    .line 5457
    :cond_28
    iget-object v3, p0, this$0:Lcom/android/server/audio/AudioService;

    # getter for: Lcom/android/server/audio/AudioService;->mStreamVolumeAlias:[I
    invoke-static {v3}, Lcom/android/server/audio/AudioService;->access$4400(Lcom/android/server/audio/AudioService;)[I

    move-result-object v3

    iget v4, p0, mStreamType:I

    aget v3, v3, v4

    iget v4, p0, mStreamType:I

    if-ne v3, v4, :cond_3b

    .line 5458
    iget v3, p0, mStreamType:I

    invoke-static {v3, v2, v1}, Lcom/android/server/EventLogTags;->writeStreamDevicesChanged(III)V

    .line 5461
    :cond_3b
    iget-object v3, p0, this$0:Lcom/android/server/audio/AudioService;

    iget-object v4, p0, mStreamDevicesChanged:Landroid/content/Intent;

    const-string v5, "android.media.EXTRA_PREV_VOLUME_STREAM_DEVICES"

    invoke-virtual {v4, v5, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    move-result-object v4

    const-string v5, "android.media.EXTRA_VOLUME_STREAM_DEVICES"

    invoke-virtual {v4, v5, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    move-result-object v4

    const-string v5, "android.media.EXTRA_VOLUME_STREAM_MUSIC_ADDRESS"

    invoke-virtual {v4, v5, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v4

    # invokes: Lcom/android/server/audio/AudioService;->sendBroadcastToAll(Landroid/content/Intent;)V
    invoke-static {v3, v4}, Lcom/android/server/audio/AudioService;->access$4500(Lcom/android/server/audio/AudioService;Landroid/content/Intent;)V

    goto :goto_18
.end method

.method public readSettings()V
    .registers 12

    .prologue
    const/high16 v10, 0x40000000    # 2.0f

    const/4 v6, -0x1

    .line 5479
    const-class v7, Lcom/android/server/audio/AudioService$VolumeStreamState;

    monitor-enter v7

    .line 5481
    :try_start_6
    iget-object v8, p0, this$0:Lcom/android/server/audio/AudioService;

    # getter for: Lcom/android/server/audio/AudioService;->mUseFixedVolume:Z
    invoke-static {v8}, Lcom/android/server/audio/AudioService;->access$4600(Lcom/android/server/audio/AudioService;)Z

    move-result v8

    if-eqz v8, :cond_19

    .line 5482
    iget-object v6, p0, mIndexMap:Landroid/util/SparseIntArray;

    const/high16 v8, 0x40000000    # 2.0f

    iget v9, p0, mIndexMax:I

    invoke-virtual {v6, v8, v9}, Landroid/util/SparseIntArray;->put(II)V

    .line 5483
    monitor-exit v7

    .line 5529
    :goto_18
    return-void

    .line 5505
    :cond_19
    const v5, 0x7fffffff

    .line 5507
    .local v5, "remainingDevices":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_1d
    if-eqz v5, :cond_56

    .line 5508
    const/4 v8, 0x1

    shl-int v1, v8, v2

    .line 5509
    .local v1, "device":I
    and-int v8, v1, v5

    if-nez v8, :cond_29

    .line 5507
    :cond_26
    :goto_26
    add-int/lit8 v2, v2, 0x1

    goto :goto_1d

    .line 5512
    :cond_29
    xor-int/lit8 v8, v1, -0x1

    and-int/2addr v5, v8

    .line 5515
    invoke-virtual {p0, v1}, getSettingNameForDevice(I)Ljava/lang/String;

    move-result-object v4

    .line 5518
    .local v4, "name":Ljava/lang/String;
    if-ne v1, v10, :cond_54

    sget-object v8, Landroid/media/AudioSystem;->DEFAULT_STREAM_VOLUME:[I

    iget v9, p0, mStreamType:I

    aget v0, v8, v9

    .line 5520
    .local v0, "defaultIndex":I
    :goto_38
    iget-object v8, p0, this$0:Lcom/android/server/audio/AudioService;

    # getter for: Lcom/android/server/audio/AudioService;->mContentResolver:Landroid/content/ContentResolver;
    invoke-static {v8}, Lcom/android/server/audio/AudioService;->access$4700(Lcom/android/server/audio/AudioService;)Landroid/content/ContentResolver;

    move-result-object v8

    const/4 v9, -0x2

    invoke-static {v8, v4, v0, v9}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v3

    .line 5522
    .local v3, "index":I
    if-eq v3, v6, :cond_26

    .line 5526
    iget-object v8, p0, mIndexMap:Landroid/util/SparseIntArray;

    mul-int/lit8 v9, v3, 0xa

    invoke-direct {p0, v9}, getValidIndex(I)I

    move-result v9

    invoke-virtual {v8, v1, v9}, Landroid/util/SparseIntArray;->put(II)V

    goto :goto_26

    .line 5528
    .end local v0    # "defaultIndex":I
    .end local v1    # "device":I
    .end local v2    # "i":I
    .end local v3    # "index":I
    .end local v4    # "name":Ljava/lang/String;
    .end local v5    # "remainingDevices":I
    :catchall_51
    move-exception v6

    monitor-exit v7
    :try_end_53
    .catchall {:try_start_6 .. :try_end_53} :catchall_51

    throw v6

    .restart local v1    # "device":I
    .restart local v2    # "i":I
    .restart local v4    # "name":Ljava/lang/String;
    .restart local v5    # "remainingDevices":I
    :cond_54
    move v0, v6

    .line 5518
    goto :goto_38

    .line 5528
    .end local v1    # "device":I
    .end local v4    # "name":Ljava/lang/String;
    :cond_56
    :try_start_56
    monitor-exit v7
    :try_end_57
    .catchall {:try_start_56 .. :try_end_57} :catchall_51

    goto :goto_18
.end method

.method public setAllIndexes(Lcom/android/server/audio/AudioService$VolumeStreamState;Ljava/lang/String;)V
    .registers 11
    .param p1, "srcStream"    # Lcom/android/server/audio/AudioService$VolumeStreamState;
    .param p2, "caller"    # Ljava/lang/String;

    .prologue
    .line 5687
    const-class v6, Lcom/android/server/audio/AudioService$VolumeStreamState;

    monitor-enter v6

    .line 5688
    :try_start_3
    invoke-virtual {p1}, getStreamType()I

    move-result v4

    .line 5691
    .local v4, "srcStreamType":I
    const/high16 v5, 0x40000000    # 2.0f

    invoke-virtual {p1, v5}, getIndex(I)I

    move-result v2

    .line 5692
    .local v2, "index":I
    iget-object v5, p0, this$0:Lcom/android/server/audio/AudioService;

    iget v7, p0, mStreamType:I

    # invokes: Lcom/android/server/audio/AudioService;->rescaleIndex(III)I
    invoke-static {v5, v2, v4, v7}, Lcom/android/server/audio/AudioService;->access$5700(Lcom/android/server/audio/AudioService;III)I

    move-result v2

    .line 5693
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_16
    iget-object v5, p0, mIndexMap:Landroid/util/SparseIntArray;

    invoke-virtual {v5}, Landroid/util/SparseIntArray;->size()I

    move-result v5

    if-ge v1, v5, :cond_2c

    .line 5694
    iget-object v5, p0, mIndexMap:Landroid/util/SparseIntArray;

    iget-object v7, p0, mIndexMap:Landroid/util/SparseIntArray;

    invoke-virtual {v7, v1}, Landroid/util/SparseIntArray;->keyAt(I)I

    move-result v7

    invoke-virtual {v5, v7, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 5693
    add-int/lit8 v1, v1, 0x1

    goto :goto_16

    .line 5697
    :cond_2c
    iget-object v3, p1, mIndexMap:Landroid/util/SparseIntArray;

    .line 5698
    .local v3, "srcMap":Landroid/util/SparseIntArray;
    const/4 v1, 0x0

    :goto_2f
    invoke-virtual {v3}, Landroid/util/SparseIntArray;->size()I

    move-result v5

    if-ge v1, v5, :cond_4b

    .line 5699
    invoke-virtual {v3, v1}, Landroid/util/SparseIntArray;->keyAt(I)I

    move-result v0

    .line 5700
    .local v0, "device":I
    invoke-virtual {v3, v1}, Landroid/util/SparseIntArray;->valueAt(I)I

    move-result v2

    .line 5701
    iget-object v5, p0, this$0:Lcom/android/server/audio/AudioService;

    iget v7, p0, mStreamType:I

    # invokes: Lcom/android/server/audio/AudioService;->rescaleIndex(III)I
    invoke-static {v5, v2, v4, v7}, Lcom/android/server/audio/AudioService;->access$5700(Lcom/android/server/audio/AudioService;III)I

    move-result v2

    .line 5703
    invoke-virtual {p0, v2, v0, p2}, setIndex(IILjava/lang/String;)Z

    .line 5698
    add-int/lit8 v1, v1, 0x1

    goto :goto_2f

    .line 5705
    .end local v0    # "device":I
    :cond_4b
    monitor-exit v6

    .line 5706
    return-void

    .line 5705
    .end local v1    # "i":I
    .end local v2    # "index":I
    .end local v3    # "srcMap":Landroid/util/SparseIntArray;
    .end local v4    # "srcStreamType":I
    :catchall_4d
    move-exception v5

    monitor-exit v6
    :try_end_4f
    .catchall {:try_start_3 .. :try_end_4f} :catchall_4d

    throw v5
.end method

.method public setAllIndexesToMax()V
    .registers 6

    .prologue
    .line 5709
    const-class v2, Lcom/android/server/audio/AudioService$VolumeStreamState;

    monitor-enter v2

    .line 5710
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_4
    :try_start_4
    iget-object v1, p0, mIndexMap:Landroid/util/SparseIntArray;

    invoke-virtual {v1}, Landroid/util/SparseIntArray;->size()I

    move-result v1

    if-ge v0, v1, :cond_1c

    .line 5711
    iget-object v1, p0, mIndexMap:Landroid/util/SparseIntArray;

    iget-object v3, p0, mIndexMap:Landroid/util/SparseIntArray;

    invoke-virtual {v3, v0}, Landroid/util/SparseIntArray;->keyAt(I)I

    move-result v3

    iget v4, p0, mIndexMax:I

    invoke-virtual {v1, v3, v4}, Landroid/util/SparseIntArray;->put(II)V

    .line 5710
    add-int/lit8 v0, v0, 0x1

    goto :goto_4

    .line 5713
    :cond_1c
    monitor-exit v2

    .line 5714
    return-void

    .line 5713
    :catchall_1e
    move-exception v1

    monitor-exit v2
    :try_end_20
    .catchall {:try_start_4 .. :try_end_20} :catchall_1e

    throw v1
.end method

.method public setIndex(IILjava/lang/String;)Z
    .registers 15
    .param p1, "index"    # I
    .param p2, "device"    # I
    .param p3, "caller"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x1

    const/4 v6, 0x0

    .line 5612
    const/4 v0, 0x0

    .line 5614
    .local v0, "changed":Z
    const-class v7, Lcom/android/server/audio/AudioService$VolumeStreamState;

    monitor-enter v7

    .line 5615
    :try_start_6
    invoke-virtual {p0, p2}, getIndex(I)I

    move-result v3

    .line 5616
    .local v3, "oldIndex":I
    invoke-direct {p0, p1}, getValidIndex(I)I

    move-result p1

    .line 5617
    iget-object v8, p0, this$0:Lcom/android/server/audio/AudioService;

    # getter for: Lcom/android/server/audio/AudioService;->mCameraSoundForced:Ljava/lang/Boolean;
    invoke-static {v8}, Lcom/android/server/audio/AudioService;->access$5500(Lcom/android/server/audio/AudioService;)Ljava/lang/Boolean;

    move-result-object v8

    monitor-enter v8
    :try_end_15
    .catchall {:try_start_6 .. :try_end_15} :catchall_81

    .line 5618
    :try_start_15
    iget v9, p0, mStreamType:I

    const/4 v10, 0x7

    if-ne v9, v10, :cond_28

    iget-object v9, p0, this$0:Lcom/android/server/audio/AudioService;

    # getter for: Lcom/android/server/audio/AudioService;->mCameraSoundForced:Ljava/lang/Boolean;
    invoke-static {v9}, Lcom/android/server/audio/AudioService;->access$5500(Lcom/android/server/audio/AudioService;)Ljava/lang/Boolean;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v9

    if-eqz v9, :cond_28

    .line 5619
    iget p1, p0, mIndexMax:I

    .line 5621
    :cond_28
    monitor-exit v8
    :try_end_29
    .catchall {:try_start_15 .. :try_end_29} :catchall_7e

    .line 5622
    :try_start_29
    iget-object v8, p0, mIndexMap:Landroid/util/SparseIntArray;

    invoke-virtual {v8, p2, p1}, Landroid/util/SparseIntArray;->put(II)V

    .line 5624
    if-eq v3, p1, :cond_84

    move v0, v1

    .line 5625
    :goto_31
    if-eqz v0, :cond_88

    .line 5629
    iget-object v8, p0, this$0:Lcom/android/server/audio/AudioService;

    iget v9, p0, mStreamType:I

    # invokes: Lcom/android/server/audio/AudioService;->getDeviceForStream(I)I
    invoke-static {v8, v9}, Lcom/android/server/audio/AudioService;->access$5600(Lcom/android/server/audio/AudioService;I)I

    move-result v8

    if-ne p2, v8, :cond_86

    .line 5630
    .local v1, "currentDevice":Z
    :goto_3d
    invoke-static {}, Landroid/media/AudioSystem;->getNumStreamTypes()I

    move-result v2

    .line 5631
    .local v2, "numStreamTypes":I
    add-int/lit8 v5, v2, -0x1

    .local v5, "streamType":I
    :goto_43
    if-ltz v5, :cond_88

    .line 5632
    iget v6, p0, mStreamType:I

    if-eq v5, v6, :cond_7b

    iget-object v6, p0, this$0:Lcom/android/server/audio/AudioService;

    # getter for: Lcom/android/server/audio/AudioService;->mStreamVolumeAlias:[I
    invoke-static {v6}, Lcom/android/server/audio/AudioService;->access$4400(Lcom/android/server/audio/AudioService;)[I

    move-result-object v6

    aget v6, v6, v5

    iget v8, p0, mStreamType:I

    if-ne v6, v8, :cond_7b

    .line 5634
    iget-object v6, p0, this$0:Lcom/android/server/audio/AudioService;

    iget v8, p0, mStreamType:I

    # invokes: Lcom/android/server/audio/AudioService;->rescaleIndex(III)I
    invoke-static {v6, p1, v8, v5}, Lcom/android/server/audio/AudioService;->access$5700(Lcom/android/server/audio/AudioService;III)I

    move-result v4

    .line 5635
    .local v4, "scaledIndex":I
    iget-object v6, p0, this$0:Lcom/android/server/audio/AudioService;

    # getter for: Lcom/android/server/audio/AudioService;->mStreamStates:[Lcom/android/server/audio/AudioService$VolumeStreamState;
    invoke-static {v6}, Lcom/android/server/audio/AudioService;->access$5800(Lcom/android/server/audio/AudioService;)[Lcom/android/server/audio/AudioService$VolumeStreamState;

    move-result-object v6

    aget-object v6, v6, v5

    invoke-virtual {v6, v4, p2, p3}, setIndex(IILjava/lang/String;)Z

    .line 5636
    if-eqz v1, :cond_7b

    .line 5637
    iget-object v6, p0, this$0:Lcom/android/server/audio/AudioService;

    # getter for: Lcom/android/server/audio/AudioService;->mStreamStates:[Lcom/android/server/audio/AudioService$VolumeStreamState;
    invoke-static {v6}, Lcom/android/server/audio/AudioService;->access$5800(Lcom/android/server/audio/AudioService;)[Lcom/android/server/audio/AudioService$VolumeStreamState;

    move-result-object v6

    aget-object v6, v6, v5

    iget-object v8, p0, this$0:Lcom/android/server/audio/AudioService;

    # invokes: Lcom/android/server/audio/AudioService;->getDeviceForStream(I)I
    invoke-static {v8, v5}, Lcom/android/server/audio/AudioService;->access$5600(Lcom/android/server/audio/AudioService;I)I

    move-result v8

    invoke-virtual {v6, v4, v8, p3}, setIndex(IILjava/lang/String;)Z
    :try_end_7b
    .catchall {:try_start_29 .. :try_end_7b} :catchall_81

    .line 5631
    .end local v4    # "scaledIndex":I
    :cond_7b
    add-int/lit8 v5, v5, -0x1

    goto :goto_43

    .line 5621
    .end local v1    # "currentDevice":Z
    .end local v2    # "numStreamTypes":I
    .end local v5    # "streamType":I
    :catchall_7e
    move-exception v6

    :try_start_7f
    monitor-exit v8
    :try_end_80
    .catchall {:try_start_7f .. :try_end_80} :catchall_7e

    :try_start_80
    throw v6

    .line 5643
    .end local v3    # "oldIndex":I
    :catchall_81
    move-exception v6

    monitor-exit v7
    :try_end_83
    .catchall {:try_start_80 .. :try_end_83} :catchall_81

    throw v6

    .restart local v3    # "oldIndex":I
    :cond_84
    move v0, v6

    .line 5624
    goto :goto_31

    :cond_86
    move v1, v6

    .line 5629
    goto :goto_3d

    .line 5643
    :cond_88
    :try_start_88
    monitor-exit v7
    :try_end_89
    .catchall {:try_start_88 .. :try_end_89} :catchall_81

    .line 5664
    return v0
.end method
