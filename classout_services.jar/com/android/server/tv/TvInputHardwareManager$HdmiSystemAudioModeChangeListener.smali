.class final Lcom/android/server/tv/TvInputHardwareManager$HdmiSystemAudioModeChangeListener;
.super Landroid/hardware/hdmi/IHdmiSystemAudioModeChangeListener$Stub;
.source "TvInputHardwareManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/tv/TvInputHardwareManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "HdmiSystemAudioModeChangeListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/tv/TvInputHardwareManager;


# direct methods
.method private constructor <init>(Lcom/android/server/tv/TvInputHardwareManager;)V
    .registers 2

    .prologue
    .line 1180
    iput-object p1, p0, this$0:Lcom/android/server/tv/TvInputHardwareManager;

    invoke-direct {p0}, Landroid/hardware/hdmi/IHdmiSystemAudioModeChangeListener$Stub;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/tv/TvInputHardwareManager;Lcom/android/server/tv/TvInputHardwareManager$1;)V
    .registers 3
    .param p1, "x0"    # Lcom/android/server/tv/TvInputHardwareManager;
    .param p2, "x1"    # Lcom/android/server/tv/TvInputHardwareManager$1;

    .prologue
    .line 1180
    invoke-direct {p0, p1}, <init>(Lcom/android/server/tv/TvInputHardwareManager;)V

    return-void
.end method


# virtual methods
.method public onStatusChanged(Z)V
    .registers 6
    .param p1, "enabled"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 1184
    iget-object v2, p0, this$0:Lcom/android/server/tv/TvInputHardwareManager;

    # getter for: Lcom/android/server/tv/TvInputHardwareManager;->mLock:Ljava/lang/Object;
    invoke-static {v2}, Lcom/android/server/tv/TvInputHardwareManager;->access$800(Lcom/android/server/tv/TvInputHardwareManager;)Ljava/lang/Object;

    move-result-object v3

    monitor-enter v3

    .line 1185
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_8
    :try_start_8
    iget-object v2, p0, this$0:Lcom/android/server/tv/TvInputHardwareManager;

    # getter for: Lcom/android/server/tv/TvInputHardwareManager;->mConnections:Landroid/util/SparseArray;
    invoke-static {v2}, Lcom/android/server/tv/TvInputHardwareManager;->access$2800(Lcom/android/server/tv/TvInputHardwareManager;)Landroid/util/SparseArray;

    move-result-object v2

    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    move-result v2

    if-ge v0, v2, :cond_2c

    .line 1186
    iget-object v2, p0, this$0:Lcom/android/server/tv/TvInputHardwareManager;

    # getter for: Lcom/android/server/tv/TvInputHardwareManager;->mConnections:Landroid/util/SparseArray;
    invoke-static {v2}, Lcom/android/server/tv/TvInputHardwareManager;->access$2800(Lcom/android/server/tv/TvInputHardwareManager;)Landroid/util/SparseArray;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/tv/TvInputHardwareManager$Connection;

    invoke-virtual {v2}, Lcom/android/server/tv/TvInputHardwareManager$Connection;->getHardwareImplLocked()Lcom/android/server/tv/TvInputHardwareManager$TvInputHardwareImpl;

    move-result-object v1

    .line 1187
    .local v1, "impl":Lcom/android/server/tv/TvInputHardwareManager$TvInputHardwareImpl;
    if-eqz v1, :cond_29

    .line 1188
    # invokes: Lcom/android/server/tv/TvInputHardwareManager$TvInputHardwareImpl;->handleAudioSinkUpdated()V
    invoke-static {v1}, Lcom/android/server/tv/TvInputHardwareManager$TvInputHardwareImpl;->access$2900(Lcom/android/server/tv/TvInputHardwareManager$TvInputHardwareImpl;)V

    .line 1185
    :cond_29
    add-int/lit8 v0, v0, 0x1

    goto :goto_8

    .line 1191
    .end local v1    # "impl":Lcom/android/server/tv/TvInputHardwareManager$TvInputHardwareImpl;
    :cond_2c
    monitor-exit v3

    .line 1192
    return-void

    .line 1191
    :catchall_2e
    move-exception v2

    monitor-exit v3
    :try_end_30
    .catchall {:try_start_8 .. :try_end_30} :catchall_2e

    throw v2
.end method
