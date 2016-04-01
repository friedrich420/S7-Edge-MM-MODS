.class Lcom/android/server/audio/AudioService$RmtSbmxFullVolDeathHandler;
.super Ljava/lang/Object;
.source "AudioService.java"

# interfaces
.implements Landroid/os/IBinder$DeathRecipient;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/audio/AudioService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "RmtSbmxFullVolDeathHandler"
.end annotation


# instance fields
.field private mICallback:Landroid/os/IBinder;

.field final synthetic this$0:Lcom/android/server/audio/AudioService;


# direct methods
.method constructor <init>(Lcom/android/server/audio/AudioService;Landroid/os/IBinder;)V
    .registers 6
    .param p2, "cb"    # Landroid/os/IBinder;

    .prologue
    .line 2736
    iput-object p1, p0, this$0:Lcom/android/server/audio/AudioService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2737
    iput-object p2, p0, mICallback:Landroid/os/IBinder;

    .line 2739
    const/4 v1, 0x0

    :try_start_8
    invoke-interface {p2, p0, v1}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V
    :try_end_b
    .catch Landroid/os/RemoteException; {:try_start_8 .. :try_end_b} :catch_c

    .line 2743
    :goto_b
    return-void

    .line 2740
    :catch_c
    move-exception v0

    .line 2741
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "AudioService"

    const-string v2, "can\'t link to death"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_b
.end method


# virtual methods
.method public binderDied()V
    .registers 4

    .prologue
    .line 2758
    const-string v0, "AudioService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Recorder with remote submix at full volume died "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, mICallback:Landroid/os/IBinder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2759
    iget-object v0, p0, this$0:Lcom/android/server/audio/AudioService;

    const/4 v1, 0x0

    iget-object v2, p0, mICallback:Landroid/os/IBinder;

    invoke-virtual {v0, v1, v2}, Lcom/android/server/audio/AudioService;->forceRemoteSubmixFullVolume(ZLandroid/os/IBinder;)V

    .line 2760
    return-void
.end method

.method forget()V
    .registers 4

    .prologue
    .line 2751
    :try_start_0
    iget-object v1, p0, mICallback:Landroid/os/IBinder;

    const/4 v2, 0x0

    invoke-interface {v1, p0, v2}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z
    :try_end_6
    .catch Ljava/util/NoSuchElementException; {:try_start_0 .. :try_end_6} :catch_7

    .line 2755
    :goto_6
    return-void

    .line 2752
    :catch_7
    move-exception v0

    .line 2753
    .local v0, "e":Ljava/util/NoSuchElementException;
    const-string v1, "AudioService"

    const-string/jumbo v2, "error unlinking to death"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_6
.end method

.method isHandlerFor(Landroid/os/IBinder;)Z
    .registers 3
    .param p1, "cb"    # Landroid/os/IBinder;

    .prologue
    .line 2746
    iget-object v0, p0, mICallback:Landroid/os/IBinder;

    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method
