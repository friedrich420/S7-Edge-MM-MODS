.class Lcom/android/server/hdmi/HdmiControlService$2;
.super Ljava/lang/Object;
.source "HdmiControlService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/hdmi/HdmiControlService;->addHotplugEventListener(Landroid/hardware/hdmi/IHdmiHotplugEventListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/hdmi/HdmiControlService;

.field final synthetic val$listener:Landroid/hardware/hdmi/IHdmiHotplugEventListener;

.field final synthetic val$record:Lcom/android/server/hdmi/HdmiControlService$HotplugEventListenerRecord;


# direct methods
.method constructor <init>(Lcom/android/server/hdmi/HdmiControlService;Lcom/android/server/hdmi/HdmiControlService$HotplugEventListenerRecord;Landroid/hardware/hdmi/IHdmiHotplugEventListener;)V
    .registers 4

    .prologue
    .line 1699
    iput-object p1, p0, this$0:Lcom/android/server/hdmi/HdmiControlService;

    iput-object p2, p0, val$record:Lcom/android/server/hdmi/HdmiControlService$HotplugEventListenerRecord;

    iput-object p3, p0, val$listener:Landroid/hardware/hdmi/IHdmiHotplugEventListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 7

    .prologue
    .line 1702
    iget-object v3, p0, this$0:Lcom/android/server/hdmi/HdmiControlService;

    # getter for: Lcom/android/server/hdmi/HdmiControlService;->mLock:Ljava/lang/Object;
    invoke-static {v3}, Lcom/android/server/hdmi/HdmiControlService;->access$2200(Lcom/android/server/hdmi/HdmiControlService;)Ljava/lang/Object;

    move-result-object v4

    monitor-enter v4

    .line 1703
    :try_start_7
    iget-object v3, p0, this$0:Lcom/android/server/hdmi/HdmiControlService;

    # getter for: Lcom/android/server/hdmi/HdmiControlService;->mHotplugEventListenerRecords:Ljava/util/ArrayList;
    invoke-static {v3}, Lcom/android/server/hdmi/HdmiControlService;->access$2300(Lcom/android/server/hdmi/HdmiControlService;)Ljava/util/ArrayList;

    move-result-object v3

    iget-object v5, p0, val$record:Lcom/android/server/hdmi/HdmiControlService$HotplugEventListenerRecord;

    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_17

    monitor-exit v4

    .line 1712
    :cond_16
    return-void

    .line 1704
    :cond_17
    monitor-exit v4
    :try_end_18
    .catchall {:try_start_7 .. :try_end_18} :catchall_58

    .line 1705
    iget-object v3, p0, this$0:Lcom/android/server/hdmi/HdmiControlService;

    # getter for: Lcom/android/server/hdmi/HdmiControlService;->mPortInfo:Ljava/util/List;
    invoke-static {v3}, Lcom/android/server/hdmi/HdmiControlService;->access$4500(Lcom/android/server/hdmi/HdmiControlService;)Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_22
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_16

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/hardware/hdmi/HdmiPortInfo;

    .line 1706
    .local v2, "port":Landroid/hardware/hdmi/HdmiPortInfo;
    new-instance v0, Landroid/hardware/hdmi/HdmiHotplugEvent;

    invoke-virtual {v2}, Landroid/hardware/hdmi/HdmiPortInfo;->getId()I

    move-result v3

    iget-object v4, p0, this$0:Lcom/android/server/hdmi/HdmiControlService;

    # getter for: Lcom/android/server/hdmi/HdmiControlService;->mCecController:Lcom/android/server/hdmi/HdmiCecController;
    invoke-static {v4}, Lcom/android/server/hdmi/HdmiControlService;->access$1300(Lcom/android/server/hdmi/HdmiControlService;)Lcom/android/server/hdmi/HdmiCecController;

    move-result-object v4

    invoke-virtual {v2}, Landroid/hardware/hdmi/HdmiPortInfo;->getId()I

    move-result v5

    invoke-virtual {v4, v5}, Lcom/android/server/hdmi/HdmiCecController;->isConnected(I)Z

    move-result v4

    invoke-direct {v0, v3, v4}, Landroid/hardware/hdmi/HdmiHotplugEvent;-><init>(IZ)V

    .line 1708
    .local v0, "event":Landroid/hardware/hdmi/HdmiHotplugEvent;
    iget-object v3, p0, this$0:Lcom/android/server/hdmi/HdmiControlService;

    # getter for: Lcom/android/server/hdmi/HdmiControlService;->mLock:Ljava/lang/Object;
    invoke-static {v3}, Lcom/android/server/hdmi/HdmiControlService;->access$2200(Lcom/android/server/hdmi/HdmiControlService;)Ljava/lang/Object;

    move-result-object v4

    monitor-enter v4

    .line 1709
    :try_start_4c
    iget-object v3, p0, this$0:Lcom/android/server/hdmi/HdmiControlService;

    iget-object v5, p0, val$listener:Landroid/hardware/hdmi/IHdmiHotplugEventListener;

    # invokes: Lcom/android/server/hdmi/HdmiControlService;->invokeHotplugEventListenerLocked(Landroid/hardware/hdmi/IHdmiHotplugEventListener;Landroid/hardware/hdmi/HdmiHotplugEvent;)V
    invoke-static {v3, v5, v0}, Lcom/android/server/hdmi/HdmiControlService;->access$4700(Lcom/android/server/hdmi/HdmiControlService;Landroid/hardware/hdmi/IHdmiHotplugEventListener;Landroid/hardware/hdmi/HdmiHotplugEvent;)V

    .line 1710
    monitor-exit v4

    goto :goto_22

    :catchall_55
    move-exception v3

    monitor-exit v4
    :try_end_57
    .catchall {:try_start_4c .. :try_end_57} :catchall_55

    throw v3

    .line 1704
    .end local v0    # "event":Landroid/hardware/hdmi/HdmiHotplugEvent;
    .end local v1    # "i$":Ljava/util/Iterator;
    .end local v2    # "port":Landroid/hardware/hdmi/HdmiPortInfo;
    :catchall_58
    move-exception v3

    :try_start_59
    monitor-exit v4
    :try_end_5a
    .catchall {:try_start_59 .. :try_end_5a} :catchall_58

    throw v3
.end method
