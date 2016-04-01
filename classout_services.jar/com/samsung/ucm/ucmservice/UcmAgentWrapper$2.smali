.class Lcom/samsung/ucm/ucmservice/UcmAgentWrapper$2;
.super Ljava/lang/Object;
.source "UcmAgentWrapper.java"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;


# direct methods
.method constructor <init>(Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;)V
    .registers 2

    .prologue
    .line 131
    iput-object p1, p0, this$0:Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .registers 6
    .param p1, "name"    # Landroid/content/ComponentName;
    .param p2, "service"    # Landroid/os/IBinder;

    .prologue
    .line 135
    const-string v0, "UcmAgentWrapper"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onServiceConnected "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 136
    iget-object v0, p0, this$0:Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;

    # getter for: Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;->access$100(Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;)Landroid/os/Handler;

    move-result-object v0

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 137
    iget-object v0, p0, this$0:Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;

    invoke-static {p2}, Lcom/sec/enterprise/knox/ucm/plugin/agent/IUcmAgentService$Stub;->asInterface(Landroid/os/IBinder;)Lcom/sec/enterprise/knox/ucm/plugin/agent/IUcmAgentService;

    move-result-object v1

    # setter for: Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;->mUcsAgentService:Lcom/sec/enterprise/knox/ucm/plugin/agent/IUcmAgentService;
    invoke-static {v0, v1}, Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;->access$202(Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;Lcom/sec/enterprise/knox/ucm/plugin/agent/IUcmAgentService;)Lcom/sec/enterprise/knox/ucm/plugin/agent/IUcmAgentService;

    .line 139
    return-void
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .registers 5
    .param p1, "name"    # Landroid/content/ComponentName;

    .prologue
    .line 143
    const-string v0, "UcmAgentWrapper"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onServiceDisconnected "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 144
    iget-object v0, p0, this$0:Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;

    const/4 v1, 0x0

    # setter for: Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;->mUcsAgentService:Lcom/sec/enterprise/knox/ucm/plugin/agent/IUcmAgentService;
    invoke-static {v0, v1}, Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;->access$202(Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;Lcom/sec/enterprise/knox/ucm/plugin/agent/IUcmAgentService;)Lcom/sec/enterprise/knox/ucm/plugin/agent/IUcmAgentService;

    .line 145
    iget-object v0, p0, this$0:Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;

    # getter for: Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;->mBound:Z
    invoke-static {v0}, Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;->access$300(Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;)Z

    move-result v0

    if-eqz v0, :cond_2c

    .line 146
    iget-object v0, p0, this$0:Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;

    # invokes: Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;->scheduleRestart()V
    invoke-static {v0}, Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;->access$400(Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;)V

    .line 149
    :cond_2c
    return-void
.end method
