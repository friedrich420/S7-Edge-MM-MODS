.class Lcom/android/server/audio/AudioService$3;
.super Ljava/lang/Object;
.source "AudioService.java"

# interfaces
.implements Landroid/os/IBinder$DeathRecipient;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/audio/AudioService;->setVolumeController(Landroid/media/IVolumeController;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/audio/AudioService;

.field final synthetic val$controller:Landroid/media/IVolumeController;


# direct methods
.method constructor <init>(Lcom/android/server/audio/AudioService;Landroid/media/IVolumeController;)V
    .registers 3

    .prologue
    .line 8701
    iput-object p1, p0, this$0:Lcom/android/server/audio/AudioService;

    iput-object p2, p0, val$controller:Landroid/media/IVolumeController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public binderDied()V
    .registers 3

    .prologue
    .line 8704
    iget-object v0, p0, this$0:Lcom/android/server/audio/AudioService;

    # getter for: Lcom/android/server/audio/AudioService;->mVolumeController:Lcom/android/server/audio/AudioService$VolumeController;
    invoke-static {v0}, Lcom/android/server/audio/AudioService;->access$14600(Lcom/android/server/audio/AudioService;)Lcom/android/server/audio/AudioService$VolumeController;

    move-result-object v0

    iget-object v1, p0, val$controller:Landroid/media/IVolumeController;

    invoke-virtual {v0, v1}, Lcom/android/server/audio/AudioService$VolumeController;->isSameBinder(Landroid/media/IVolumeController;)Z

    move-result v0

    if-eqz v0, :cond_1b

    .line 8705
    const-string v0, "AudioService"

    const-string v1, "Current remote volume controller died, unregistering"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 8706
    iget-object v0, p0, this$0:Lcom/android/server/audio/AudioService;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/server/audio/AudioService;->setVolumeController(Landroid/media/IVolumeController;)V

    .line 8708
    :cond_1b
    return-void
.end method
