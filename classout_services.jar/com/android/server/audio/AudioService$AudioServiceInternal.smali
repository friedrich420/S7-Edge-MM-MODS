.class final Lcom/android/server/audio/AudioService$AudioServiceInternal;
.super Landroid/media/AudioManagerInternal;
.source "AudioService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/audio/AudioService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "AudioServiceInternal"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/audio/AudioService;


# direct methods
.method constructor <init>(Lcom/android/server/audio/AudioService;)V
    .registers 2

    .prologue
    .line 8872
    iput-object p1, p0, this$0:Lcom/android/server/audio/AudioService;

    invoke-direct {p0}, Landroid/media/AudioManagerInternal;-><init>()V

    return-void
.end method


# virtual methods
.method public adjustStreamVolumeForUid(IIILjava/lang/String;I)V
    .registers 13
    .param p1, "streamType"    # I
    .param p2, "direction"    # I
    .param p3, "flags"    # I
    .param p4, "callingPackage"    # Ljava/lang/String;
    .param p5, "uid"    # I

    .prologue
    .line 8894
    iget-object v0, p0, this$0:Lcom/android/server/audio/AudioService;

    move v1, p1

    move v2, p2

    move v3, p3

    move-object v4, p4

    move-object v5, p4

    move v6, p5

    # invokes: Lcom/android/server/audio/AudioService;->adjustStreamVolume(IIILjava/lang/String;Ljava/lang/String;I)V
    invoke-static/range {v0 .. v6}, Lcom/android/server/audio/AudioService;->access$14900(Lcom/android/server/audio/AudioService;IIILjava/lang/String;Ljava/lang/String;I)V

    .line 8896
    return-void
.end method

.method public adjustSuggestedStreamVolumeForUid(IIILjava/lang/String;I)V
    .registers 13
    .param p1, "streamType"    # I
    .param p2, "direction"    # I
    .param p3, "flags"    # I
    .param p4, "callingPackage"    # Ljava/lang/String;
    .param p5, "uid"    # I

    .prologue
    .line 8887
    iget-object v0, p0, this$0:Lcom/android/server/audio/AudioService;

    move v1, p2

    move v2, p1

    move v3, p3

    move-object v4, p4

    move-object v5, p4

    move v6, p5

    # invokes: Lcom/android/server/audio/AudioService;->adjustSuggestedStreamVolume(IIILjava/lang/String;Ljava/lang/String;I)V
    invoke-static/range {v0 .. v6}, Lcom/android/server/audio/AudioService;->access$14800(Lcom/android/server/audio/AudioService;IIILjava/lang/String;Ljava/lang/String;I)V

    .line 8889
    return-void
.end method

.method public getRingerModeInternal()I
    .registers 2

    .prologue
    .line 8906
    iget-object v0, p0, this$0:Lcom/android/server/audio/AudioService;

    invoke-virtual {v0}, Lcom/android/server/audio/AudioService;->getRingerModeInternal()I

    move-result v0

    return v0
.end method

.method public getVolumeControllerUid()I
    .registers 2

    .prologue
    .line 8916
    iget-object v0, p0, this$0:Lcom/android/server/audio/AudioService;

    # getter for: Lcom/android/server/audio/AudioService;->mControllerService:Lcom/android/server/audio/AudioService$ControllerService;
    invoke-static {v0}, Lcom/android/server/audio/AudioService;->access$15100(Lcom/android/server/audio/AudioService;)Lcom/android/server/audio/AudioService$ControllerService;

    move-result-object v0

    # getter for: Lcom/android/server/audio/AudioService$ControllerService;->mUid:I
    invoke-static {v0}, Lcom/android/server/audio/AudioService$ControllerService;->access$14500(Lcom/android/server/audio/AudioService$ControllerService;)I

    move-result v0

    return v0
.end method

.method public setRingerModeDelegate(Landroid/media/AudioManagerInternal$RingerModeDelegate;)V
    .registers 4
    .param p1, "delegate"    # Landroid/media/AudioManagerInternal$RingerModeDelegate;

    .prologue
    .line 8875
    iget-object v0, p0, this$0:Lcom/android/server/audio/AudioService;

    # setter for: Lcom/android/server/audio/AudioService;->mRingerModeDelegate:Landroid/media/AudioManagerInternal$RingerModeDelegate;
    invoke-static {v0, p1}, Lcom/android/server/audio/AudioService;->access$14702(Lcom/android/server/audio/AudioService;Landroid/media/AudioManagerInternal$RingerModeDelegate;)Landroid/media/AudioManagerInternal$RingerModeDelegate;

    .line 8876
    iget-object v0, p0, this$0:Lcom/android/server/audio/AudioService;

    # getter for: Lcom/android/server/audio/AudioService;->mRingerModeDelegate:Landroid/media/AudioManagerInternal$RingerModeDelegate;
    invoke-static {v0}, Lcom/android/server/audio/AudioService;->access$14700(Lcom/android/server/audio/AudioService;)Landroid/media/AudioManagerInternal$RingerModeDelegate;

    move-result-object v0

    if-eqz v0, :cond_1b

    .line 8877
    iget-object v0, p0, this$0:Lcom/android/server/audio/AudioService;

    # invokes: Lcom/android/server/audio/AudioService;->updateRingerModeAffectedStreams()Z
    invoke-static {v0}, Lcom/android/server/audio/AudioService;->access$9300(Lcom/android/server/audio/AudioService;)Z

    .line 8878
    invoke-virtual {p0}, getRingerModeInternal()I

    move-result v0

    const-string v1, "AudioService.setRingerModeDelegate"

    invoke-virtual {p0, v0, v1}, setRingerModeInternal(ILjava/lang/String;)V

    .line 8880
    :cond_1b
    return-void
.end method

.method public setRingerModeInternal(ILjava/lang/String;)V
    .registers 4
    .param p1, "ringerMode"    # I
    .param p2, "caller"    # Ljava/lang/String;

    .prologue
    .line 8911
    iget-object v0, p0, this$0:Lcom/android/server/audio/AudioService;

    invoke-virtual {v0, p1, p2}, Lcom/android/server/audio/AudioService;->setRingerModeInternal(ILjava/lang/String;)V

    .line 8912
    return-void
.end method

.method public setStreamVolumeForUid(IIILjava/lang/String;I)V
    .registers 13
    .param p1, "streamType"    # I
    .param p2, "direction"    # I
    .param p3, "flags"    # I
    .param p4, "callingPackage"    # Ljava/lang/String;
    .param p5, "uid"    # I

    .prologue
    .line 8901
    iget-object v0, p0, this$0:Lcom/android/server/audio/AudioService;

    move v1, p1

    move v2, p2

    move v3, p3

    move-object v4, p4

    move-object v5, p4

    move v6, p5

    # invokes: Lcom/android/server/audio/AudioService;->setStreamVolume(IIILjava/lang/String;Ljava/lang/String;I)V
    invoke-static/range {v0 .. v6}, Lcom/android/server/audio/AudioService;->access$15000(Lcom/android/server/audio/AudioService;IIILjava/lang/String;Ljava/lang/String;I)V

    .line 8902
    return-void
.end method

.method public updateRingerModeAffectedStreamsInternal()V
    .registers 5

    .prologue
    .line 8921
    iget-object v0, p0, this$0:Lcom/android/server/audio/AudioService;

    # getter for: Lcom/android/server/audio/AudioService;->mSettingsLock:Ljava/lang/Object;
    invoke-static {v0}, Lcom/android/server/audio/AudioService;->access$9200(Lcom/android/server/audio/AudioService;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    .line 8922
    :try_start_7
    iget-object v0, p0, this$0:Lcom/android/server/audio/AudioService;

    # invokes: Lcom/android/server/audio/AudioService;->updateRingerModeAffectedStreams()Z
    invoke-static {v0}, Lcom/android/server/audio/AudioService;->access$9300(Lcom/android/server/audio/AudioService;)Z

    move-result v0

    if-eqz v0, :cond_19

    .line 8923
    iget-object v0, p0, this$0:Lcom/android/server/audio/AudioService;

    invoke-virtual {p0}, getRingerModeInternal()I

    move-result v2

    const/4 v3, 0x0

    # invokes: Lcom/android/server/audio/AudioService;->setRingerModeInt(IZ)V
    invoke-static {v0, v2, v3}, Lcom/android/server/audio/AudioService;->access$9400(Lcom/android/server/audio/AudioService;IZ)V

    .line 8925
    :cond_19
    monitor-exit v1

    .line 8926
    return-void

    .line 8925
    :catchall_1b
    move-exception v0

    monitor-exit v1
    :try_end_1d
    .catchall {:try_start_7 .. :try_end_1d} :catchall_1b

    throw v0
.end method
