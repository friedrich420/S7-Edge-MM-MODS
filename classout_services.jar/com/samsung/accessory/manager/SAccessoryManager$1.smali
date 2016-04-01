.class Lcom/samsung/accessory/manager/SAccessoryManager$1;
.super Ljava/lang/Object;
.source "SAccessoryManager.java"

# interfaces
.implements Lcom/samsung/accessory/manager/SAccessoryManager$AuthenticationTask;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/accessory/manager/SAccessoryManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/accessory/manager/SAccessoryManager;


# direct methods
.method constructor <init>(Lcom/samsung/accessory/manager/SAccessoryManager;)V
    .registers 2

    .prologue
    .line 80
    iput-object p1, p0, this$0:Lcom/samsung/accessory/manager/SAccessoryManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getSessionState(Lcom/samsung/accessory/manager/authentication/AuthenticationSession;)I
    .registers 4
    .param p1, "session"    # Lcom/samsung/accessory/manager/authentication/AuthenticationSession;

    .prologue
    .line 101
    iget-object v0, p0, this$0:Lcom/samsung/accessory/manager/SAccessoryManager;

    # getter for: Lcom/samsung/accessory/manager/SAccessoryManager;->mSessions:Ljava/util/HashMap;
    invoke-static {v0}, Lcom/samsung/accessory/manager/SAccessoryManager;->access$100(Lcom/samsung/accessory/manager/SAccessoryManager;)Ljava/util/HashMap;

    move-result-object v1

    monitor-enter v1

    .line 102
    :try_start_7
    iget-object v0, p0, this$0:Lcom/samsung/accessory/manager/SAccessoryManager;

    # getter for: Lcom/samsung/accessory/manager/SAccessoryManager;->mSessions:Ljava/util/HashMap;
    invoke-static {v0}, Lcom/samsung/accessory/manager/SAccessoryManager;->access$100(Lcom/samsung/accessory/manager/SAccessoryManager;)Ljava/util/HashMap;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_19

    .line 103
    invoke-virtual {p1}, Lcom/samsung/accessory/manager/authentication/AuthenticationSession;->getSessionState()I

    move-result v0

    monitor-exit v1

    .line 105
    :goto_18
    return v0

    :cond_19
    const/4 v0, 0x7

    monitor-exit v1

    goto :goto_18

    .line 106
    :catchall_1c
    move-exception v0

    monitor-exit v1
    :try_end_1e
    .catchall {:try_start_7 .. :try_end_1e} :catchall_1c

    throw v0
.end method

.method public start(Landroid/os/Message;Z)V
    .registers 7
    .param p1, "requestMsg"    # Landroid/os/Message;
    .param p2, "isInternal"    # Z

    .prologue
    .line 83
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    instance-of v1, v1, Lcom/samsung/accessory/manager/authentication/AuthenticationSession;

    if-eqz v1, :cond_17

    .line 84
    iget-object v1, p0, this$0:Lcom/samsung/accessory/manager/SAccessoryManager;

    # getter for: Lcom/samsung/accessory/manager/SAccessoryManager;->mAuthHandler:Landroid/os/Handler;
    invoke-static {v1}, Lcom/samsung/accessory/manager/SAccessoryManager;->access$000(Lcom/samsung/accessory/manager/SAccessoryManager;)Landroid/os/Handler;

    move-result-object v1

    const/4 v2, 0x3

    iget-object v3, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-virtual {v1, v2, v3}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    .line 92
    :goto_16
    return-void

    .line 86
    :cond_17
    iget-object v1, p0, this$0:Lcom/samsung/accessory/manager/SAccessoryManager;

    # getter for: Lcom/samsung/accessory/manager/SAccessoryManager;->mAuthHandler:Landroid/os/Handler;
    invoke-static {v1}, Lcom/samsung/accessory/manager/SAccessoryManager;->access$000(Lcom/samsung/accessory/manager/SAccessoryManager;)Landroid/os/Handler;

    move-result-object v2

    if-eqz p2, :cond_39

    const/4 v1, 0x2

    :goto_20
    invoke-virtual {v2, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 88
    .local v0, "message":Landroid/os/Message;
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    iput-object v1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 89
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 90
    iget-object v1, p0, this$0:Lcom/samsung/accessory/manager/SAccessoryManager;

    # getter for: Lcom/samsung/accessory/manager/SAccessoryManager;->mAuthHandler:Landroid/os/Handler;
    invoke-static {v1}, Lcom/samsung/accessory/manager/SAccessoryManager;->access$000(Lcom/samsung/accessory/manager/SAccessoryManager;)Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_16

    .line 86
    .end local v0    # "message":Landroid/os/Message;
    :cond_39
    const/4 v1, 0x1

    goto :goto_20
.end method

.method public stop(Lcom/samsung/accessory/manager/authentication/AuthenticationSession;)V
    .registers 4
    .param p1, "session"    # Lcom/samsung/accessory/manager/authentication/AuthenticationSession;

    .prologue
    .line 96
    iget-object v0, p0, this$0:Lcom/samsung/accessory/manager/SAccessoryManager;

    # getter for: Lcom/samsung/accessory/manager/SAccessoryManager;->mAuthHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/samsung/accessory/manager/SAccessoryManager;->access$000(Lcom/samsung/accessory/manager/SAccessoryManager;)Landroid/os/Handler;

    move-result-object v0

    const/4 v1, 0x4

    invoke-virtual {v0, v1, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 97
    return-void
.end method
