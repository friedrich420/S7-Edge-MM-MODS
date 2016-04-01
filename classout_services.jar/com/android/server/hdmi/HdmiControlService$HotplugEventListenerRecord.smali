.class final Lcom/android/server/hdmi/HdmiControlService$HotplugEventListenerRecord;
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
    name = "HotplugEventListenerRecord"
.end annotation


# instance fields
.field private final mListener:Landroid/hardware/hdmi/IHdmiHotplugEventListener;

.field final synthetic this$0:Lcom/android/server/hdmi/HdmiControlService;


# direct methods
.method public constructor <init>(Lcom/android/server/hdmi/HdmiControlService;Landroid/hardware/hdmi/IHdmiHotplugEventListener;)V
    .registers 3
    .param p2, "listener"    # Landroid/hardware/hdmi/IHdmiHotplugEventListener;

    .prologue
    .line 1094
    iput-object p1, p0, this$0:Lcom/android/server/hdmi/HdmiControlService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1095
    iput-object p2, p0, mListener:Landroid/hardware/hdmi/IHdmiHotplugEventListener;

    .line 1096
    return-void
.end method

.method static synthetic access$4800(Lcom/android/server/hdmi/HdmiControlService$HotplugEventListenerRecord;)Landroid/hardware/hdmi/IHdmiHotplugEventListener;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/hdmi/HdmiControlService$HotplugEventListenerRecord;

    .prologue
    .line 1091
    iget-object v0, p0, mListener:Landroid/hardware/hdmi/IHdmiHotplugEventListener;

    return-object v0
.end method


# virtual methods
.method public binderDied()V
    .registers 3

    .prologue
    .line 1100
    iget-object v0, p0, this$0:Lcom/android/server/hdmi/HdmiControlService;

    # getter for: Lcom/android/server/hdmi/HdmiControlService;->mLock:Ljava/lang/Object;
    invoke-static {v0}, Lcom/android/server/hdmi/HdmiControlService;->access$2200(Lcom/android/server/hdmi/HdmiControlService;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    .line 1101
    :try_start_7
    iget-object v0, p0, this$0:Lcom/android/server/hdmi/HdmiControlService;

    # getter for: Lcom/android/server/hdmi/HdmiControlService;->mHotplugEventListenerRecords:Ljava/util/ArrayList;
    invoke-static {v0}, Lcom/android/server/hdmi/HdmiControlService;->access$2300(Lcom/android/server/hdmi/HdmiControlService;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 1102
    monitor-exit v1

    .line 1103
    return-void

    .line 1102
    :catchall_12
    move-exception v0

    monitor-exit v1
    :try_end_14
    .catchall {:try_start_7 .. :try_end_14} :catchall_12

    throw v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 7
    .param p1, "obj"    # Ljava/lang/Object;

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 1107
    instance-of v3, p1, Lcom/android/server/hdmi/HdmiControlService$HotplugEventListenerRecord;

    if-nez v3, :cond_8

    move v1, v2

    .line 1110
    :cond_7
    :goto_7
    return v1

    .line 1108
    :cond_8
    if-eq p1, p0, :cond_7

    move-object v0, p1

    .line 1109
    check-cast v0, Lcom/android/server/hdmi/HdmiControlService$HotplugEventListenerRecord;

    .line 1110
    .local v0, "other":Lcom/android/server/hdmi/HdmiControlService$HotplugEventListenerRecord;
    iget-object v3, v0, mListener:Landroid/hardware/hdmi/IHdmiHotplugEventListener;

    iget-object v4, p0, mListener:Landroid/hardware/hdmi/IHdmiHotplugEventListener;

    if-eq v3, v4, :cond_7

    move v1, v2

    goto :goto_7
.end method

.method public hashCode()I
    .registers 2

    .prologue
    .line 1115
    iget-object v0, p0, mListener:Landroid/hardware/hdmi/IHdmiHotplugEventListener;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    return v0
.end method
