.class Lcom/android/server/tv/TvInputHardwareManager$ListenerHandler;
.super Landroid/os/Handler;
.source "TvInputHardwareManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/tv/TvInputHardwareManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ListenerHandler"
.end annotation


# static fields
.field private static final HARDWARE_DEVICE_ADDED:I = 0x2

.field private static final HARDWARE_DEVICE_REMOVED:I = 0x3

.field private static final HDMI_DEVICE_ADDED:I = 0x4

.field private static final HDMI_DEVICE_REMOVED:I = 0x5

.field private static final HDMI_DEVICE_UPDATED:I = 0x6

.field private static final STATE_CHANGED:I = 0x1


# instance fields
.field final synthetic this$0:Lcom/android/server/tv/TvInputHardwareManager;


# direct methods
.method private constructor <init>(Lcom/android/server/tv/TvInputHardwareManager;)V
    .registers 2

    .prologue
    .line 1038
    iput-object p1, p0, this$0:Lcom/android/server/tv/TvInputHardwareManager;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/tv/TvInputHardwareManager;Lcom/android/server/tv/TvInputHardwareManager$1;)V
    .registers 3
    .param p1, "x0"    # Lcom/android/server/tv/TvInputHardwareManager;
    .param p2, "x1"    # Lcom/android/server/tv/TvInputHardwareManager$1;

    .prologue
    .line 1038
    invoke-direct {p0, p1}, <init>(Lcom/android/server/tv/TvInputHardwareManager;)V

    return-void
.end method


# virtual methods
.method public final handleMessage(Landroid/os/Message;)V
    .registers 8
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 1048
    iget v3, p1, Landroid/os/Message;->what:I

    packed-switch v3, :pswitch_data_9e

    .line 1090
    # getter for: Lcom/android/server/tv/TvInputHardwareManager;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/tv/TvInputHardwareManager;->access$700()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Unhandled message: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1094
    :goto_1f
    return-void

    .line 1050
    :pswitch_20
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Ljava/lang/String;

    .line 1051
    .local v1, "inputId":Ljava/lang/String;
    iget v2, p1, Landroid/os/Message;->arg1:I

    .line 1052
    .local v2, "state":I
    iget-object v3, p0, this$0:Lcom/android/server/tv/TvInputHardwareManager;

    # getter for: Lcom/android/server/tv/TvInputHardwareManager;->mListener:Lcom/android/server/tv/TvInputHardwareManager$Listener;
    invoke-static {v3}, Lcom/android/server/tv/TvInputHardwareManager;->access$1900(Lcom/android/server/tv/TvInputHardwareManager;)Lcom/android/server/tv/TvInputHardwareManager$Listener;

    move-result-object v3

    invoke-interface {v3, v1, v2}, Lcom/android/server/tv/TvInputHardwareManager$Listener;->onStateChanged(Ljava/lang/String;I)V

    goto :goto_1f

    .line 1056
    .end local v1    # "inputId":Ljava/lang/String;
    .end local v2    # "state":I
    :pswitch_30
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/media/tv/TvInputHardwareInfo;

    .line 1057
    .local v0, "info":Landroid/media/tv/TvInputHardwareInfo;
    iget-object v3, p0, this$0:Lcom/android/server/tv/TvInputHardwareManager;

    # getter for: Lcom/android/server/tv/TvInputHardwareManager;->mListener:Lcom/android/server/tv/TvInputHardwareManager$Listener;
    invoke-static {v3}, Lcom/android/server/tv/TvInputHardwareManager;->access$1900(Lcom/android/server/tv/TvInputHardwareManager;)Lcom/android/server/tv/TvInputHardwareManager$Listener;

    move-result-object v3

    invoke-interface {v3, v0}, Lcom/android/server/tv/TvInputHardwareManager$Listener;->onHardwareDeviceAdded(Landroid/media/tv/TvInputHardwareInfo;)V

    goto :goto_1f

    .line 1061
    .end local v0    # "info":Landroid/media/tv/TvInputHardwareInfo;
    :pswitch_3e
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/media/tv/TvInputHardwareInfo;

    .line 1062
    .restart local v0    # "info":Landroid/media/tv/TvInputHardwareInfo;
    iget-object v3, p0, this$0:Lcom/android/server/tv/TvInputHardwareManager;

    # getter for: Lcom/android/server/tv/TvInputHardwareManager;->mListener:Lcom/android/server/tv/TvInputHardwareManager$Listener;
    invoke-static {v3}, Lcom/android/server/tv/TvInputHardwareManager;->access$1900(Lcom/android/server/tv/TvInputHardwareManager;)Lcom/android/server/tv/TvInputHardwareManager$Listener;

    move-result-object v3

    invoke-interface {v3, v0}, Lcom/android/server/tv/TvInputHardwareManager$Listener;->onHardwareDeviceRemoved(Landroid/media/tv/TvInputHardwareInfo;)V

    goto :goto_1f

    .line 1066
    .end local v0    # "info":Landroid/media/tv/TvInputHardwareInfo;
    :pswitch_4c
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/hardware/hdmi/HdmiDeviceInfo;

    .line 1067
    .local v0, "info":Landroid/hardware/hdmi/HdmiDeviceInfo;
    iget-object v3, p0, this$0:Lcom/android/server/tv/TvInputHardwareManager;

    # getter for: Lcom/android/server/tv/TvInputHardwareManager;->mListener:Lcom/android/server/tv/TvInputHardwareManager$Listener;
    invoke-static {v3}, Lcom/android/server/tv/TvInputHardwareManager;->access$1900(Lcom/android/server/tv/TvInputHardwareManager;)Lcom/android/server/tv/TvInputHardwareManager$Listener;

    move-result-object v3

    invoke-interface {v3, v0}, Lcom/android/server/tv/TvInputHardwareManager$Listener;->onHdmiDeviceAdded(Landroid/hardware/hdmi/HdmiDeviceInfo;)V

    goto :goto_1f

    .line 1071
    .end local v0    # "info":Landroid/hardware/hdmi/HdmiDeviceInfo;
    :pswitch_5a
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/hardware/hdmi/HdmiDeviceInfo;

    .line 1072
    .restart local v0    # "info":Landroid/hardware/hdmi/HdmiDeviceInfo;
    iget-object v3, p0, this$0:Lcom/android/server/tv/TvInputHardwareManager;

    # getter for: Lcom/android/server/tv/TvInputHardwareManager;->mListener:Lcom/android/server/tv/TvInputHardwareManager$Listener;
    invoke-static {v3}, Lcom/android/server/tv/TvInputHardwareManager;->access$1900(Lcom/android/server/tv/TvInputHardwareManager;)Lcom/android/server/tv/TvInputHardwareManager$Listener;

    move-result-object v3

    invoke-interface {v3, v0}, Lcom/android/server/tv/TvInputHardwareManager$Listener;->onHdmiDeviceRemoved(Landroid/hardware/hdmi/HdmiDeviceInfo;)V

    goto :goto_1f

    .line 1076
    .end local v0    # "info":Landroid/hardware/hdmi/HdmiDeviceInfo;
    :pswitch_68
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/hardware/hdmi/HdmiDeviceInfo;

    .line 1078
    .restart local v0    # "info":Landroid/hardware/hdmi/HdmiDeviceInfo;
    iget-object v3, p0, this$0:Lcom/android/server/tv/TvInputHardwareManager;

    # getter for: Lcom/android/server/tv/TvInputHardwareManager;->mLock:Ljava/lang/Object;
    invoke-static {v3}, Lcom/android/server/tv/TvInputHardwareManager;->access$800(Lcom/android/server/tv/TvInputHardwareManager;)Ljava/lang/Object;

    move-result-object v4

    monitor-enter v4

    .line 1079
    :try_start_73
    iget-object v3, p0, this$0:Lcom/android/server/tv/TvInputHardwareManager;

    # getter for: Lcom/android/server/tv/TvInputHardwareManager;->mHdmiInputIdMap:Landroid/util/SparseArray;
    invoke-static {v3}, Lcom/android/server/tv/TvInputHardwareManager;->access$2000(Lcom/android/server/tv/TvInputHardwareManager;)Landroid/util/SparseArray;

    move-result-object v3

    invoke-virtual {v0}, Landroid/hardware/hdmi/HdmiDeviceInfo;->getId()I

    move-result v5

    invoke-virtual {v3, v5}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 1080
    .restart local v1    # "inputId":Ljava/lang/String;
    monitor-exit v4
    :try_end_84
    .catchall {:try_start_73 .. :try_end_84} :catchall_90

    .line 1081
    if-eqz v1, :cond_93

    .line 1082
    iget-object v3, p0, this$0:Lcom/android/server/tv/TvInputHardwareManager;

    # getter for: Lcom/android/server/tv/TvInputHardwareManager;->mListener:Lcom/android/server/tv/TvInputHardwareManager$Listener;
    invoke-static {v3}, Lcom/android/server/tv/TvInputHardwareManager;->access$1900(Lcom/android/server/tv/TvInputHardwareManager;)Lcom/android/server/tv/TvInputHardwareManager$Listener;

    move-result-object v3

    invoke-interface {v3, v1, v0}, Lcom/android/server/tv/TvInputHardwareManager$Listener;->onHdmiDeviceUpdated(Ljava/lang/String;Landroid/hardware/hdmi/HdmiDeviceInfo;)V

    goto :goto_1f

    .line 1080
    .end local v1    # "inputId":Ljava/lang/String;
    :catchall_90
    move-exception v3

    :try_start_91
    monitor-exit v4
    :try_end_92
    .catchall {:try_start_91 .. :try_end_92} :catchall_90

    throw v3

    .line 1084
    .restart local v1    # "inputId":Ljava/lang/String;
    :cond_93
    # getter for: Lcom/android/server/tv/TvInputHardwareManager;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/tv/TvInputHardwareManager;->access$700()Ljava/lang/String;

    move-result-object v3

    const-string v4, "Could not resolve input ID matching the device info; ignoring."

    invoke-static {v3, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1f

    .line 1048
    nop

    :pswitch_data_9e
    .packed-switch 0x1
        :pswitch_20
        :pswitch_30
        :pswitch_3e
        :pswitch_4c
        :pswitch_5a
        :pswitch_68
    .end packed-switch
.end method
