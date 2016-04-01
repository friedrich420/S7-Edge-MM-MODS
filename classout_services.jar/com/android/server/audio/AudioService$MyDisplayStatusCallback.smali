.class Lcom/android/server/audio/AudioService$MyDisplayStatusCallback;
.super Ljava/lang/Object;
.source "AudioService.java"

# interfaces
.implements Landroid/hardware/hdmi/HdmiPlaybackClient$DisplayStatusCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/audio/AudioService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MyDisplayStatusCallback"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/audio/AudioService;


# direct methods
.method private constructor <init>(Lcom/android/server/audio/AudioService;)V
    .registers 2

    .prologue
    .line 8448
    iput-object p1, p0, this$0:Lcom/android/server/audio/AudioService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/audio/AudioService;Lcom/android/server/audio/AudioService$1;)V
    .registers 3
    .param p1, "x0"    # Lcom/android/server/audio/AudioService;
    .param p2, "x1"    # Lcom/android/server/audio/AudioService$1;

    .prologue
    .line 8448
    invoke-direct {p0, p1}, <init>(Lcom/android/server/audio/AudioService;)V

    return-void
.end method


# virtual methods
.method public onComplete(I)V
    .registers 5
    .param p1, "status"    # I

    .prologue
    .line 8450
    iget-object v0, p0, this$0:Lcom/android/server/audio/AudioService;

    # getter for: Lcom/android/server/audio/AudioService;->mHdmiManager:Landroid/hardware/hdmi/HdmiControlManager;
    invoke-static {v0}, Lcom/android/server/audio/AudioService;->access$14100(Lcom/android/server/audio/AudioService;)Landroid/hardware/hdmi/HdmiControlManager;

    move-result-object v0

    if-eqz v0, :cond_36

    .line 8451
    iget-object v0, p0, this$0:Lcom/android/server/audio/AudioService;

    # getter for: Lcom/android/server/audio/AudioService;->mHdmiManager:Landroid/hardware/hdmi/HdmiControlManager;
    invoke-static {v0}, Lcom/android/server/audio/AudioService;->access$14100(Lcom/android/server/audio/AudioService;)Landroid/hardware/hdmi/HdmiControlManager;

    move-result-object v1

    monitor-enter v1

    .line 8452
    :try_start_f
    iget-object v2, p0, this$0:Lcom/android/server/audio/AudioService;

    const/4 v0, -0x1

    if-eq p1, v0, :cond_37

    const/4 v0, 0x1

    :goto_15
    # setter for: Lcom/android/server/audio/AudioService;->mHdmiCecSink:Z
    invoke-static {v2, v0}, Lcom/android/server/audio/AudioService;->access$14202(Lcom/android/server/audio/AudioService;Z)Z

    .line 8454
    iget-object v0, p0, this$0:Lcom/android/server/audio/AudioService;

    # invokes: Lcom/android/server/audio/AudioService;->isPlatformTelevision()Z
    invoke-static {v0}, Lcom/android/server/audio/AudioService;->access$6100(Lcom/android/server/audio/AudioService;)Z

    move-result v0

    if-eqz v0, :cond_30

    iget-object v0, p0, this$0:Lcom/android/server/audio/AudioService;

    # getter for: Lcom/android/server/audio/AudioService;->mHdmiCecSink:Z
    invoke-static {v0}, Lcom/android/server/audio/AudioService;->access$14200(Lcom/android/server/audio/AudioService;)Z

    move-result v0

    if-nez v0, :cond_30

    .line 8455
    iget-object v0, p0, this$0:Lcom/android/server/audio/AudioService;

    iget v2, v0, Lcom/android/server/audio/AudioService;->mFixedVolumeDevices:I

    and-int/lit16 v2, v2, -0x401

    iput v2, v0, Lcom/android/server/audio/AudioService;->mFixedVolumeDevices:I

    .line 8457
    :cond_30
    iget-object v0, p0, this$0:Lcom/android/server/audio/AudioService;

    # invokes: Lcom/android/server/audio/AudioService;->checkAllFixedVolumeDevices()V
    invoke-static {v0}, Lcom/android/server/audio/AudioService;->access$14300(Lcom/android/server/audio/AudioService;)V

    .line 8458
    monitor-exit v1

    .line 8460
    :cond_36
    return-void

    .line 8452
    :cond_37
    const/4 v0, 0x0

    goto :goto_15

    .line 8458
    :catchall_39
    move-exception v0

    monitor-exit v1
    :try_end_3b
    .catchall {:try_start_f .. :try_end_3b} :catchall_39

    throw v0
.end method
