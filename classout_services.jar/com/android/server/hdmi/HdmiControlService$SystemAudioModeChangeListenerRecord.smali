.class final Lcom/android/server/hdmi/HdmiControlService$SystemAudioModeChangeListenerRecord;
.super Ljava/lang/Object;
.source "HdmiControlService.java"

# interfaces
.implements Landroid/os/IBinder$DeathRecipient;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/hdmi/HdmiControlService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "SystemAudioModeChangeListenerRecord"
.end annotation


# instance fields
.field private final mListener:Landroid/hardware/hdmi/IHdmiSystemAudioModeChangeListener;

.field final synthetic this$0:Lcom/android/server/hdmi/HdmiControlService;


# direct methods
.method public constructor <init>(Lcom/android/server/hdmi/HdmiControlService;Landroid/hardware/hdmi/IHdmiSystemAudioModeChangeListener;)V
    .registers 3
    .param p2, "listener"    # Landroid/hardware/hdmi/IHdmiSystemAudioModeChangeListener;

    .prologue
    .line 1137
    iput-object p1, p0, this$0:Lcom/android/server/hdmi/HdmiControlService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1138
    iput-object p2, p0, mListener:Landroid/hardware/hdmi/IHdmiSystemAudioModeChangeListener;

    .line 1139
    return-void
.end method

.method static synthetic access$2000(Lcom/android/server/hdmi/HdmiControlService$SystemAudioModeChangeListenerRecord;)Landroid/hardware/hdmi/IHdmiSystemAudioModeChangeListener;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/hdmi/HdmiControlService$SystemAudioModeChangeListenerRecord;

    .prologue
    .line 1134
    iget-object v0, p0, mListener:Landroid/hardware/hdmi/IHdmiSystemAudioModeChangeListener;

    return-object v0
.end method


# virtual methods
.method public binderDied()V
    .registers 3

    .prologue
    .line 1143
    iget-object v0, p0, this$0:Lcom/android/server/hdmi/HdmiControlService;

    # getter for: Lcom/android/server/hdmi/HdmiControlService;->mLock:Ljava/lang/Object;
    invoke-static {v0}, Lcom/android/server/hdmi/HdmiControlService;->access$2200(Lcom/android/server/hdmi/HdmiControlService;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    .line 1144
    :try_start_7
    iget-object v0, p0, this$0:Lcom/android/server/hdmi/HdmiControlService;

    # getter for: Lcom/android/server/hdmi/HdmiControlService;->mSystemAudioModeChangeListenerRecords:Ljava/util/ArrayList;
    invoke-static {v0}, Lcom/android/server/hdmi/HdmiControlService;->access$2500(Lcom/android/server/hdmi/HdmiControlService;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 1145
    monitor-exit v1

    .line 1146
    return-void

    .line 1145
    :catchall_12
    move-exception v0

    monitor-exit v1
    :try_end_14
    .catchall {:try_start_7 .. :try_end_14} :catchall_12

    throw v0
.end method
