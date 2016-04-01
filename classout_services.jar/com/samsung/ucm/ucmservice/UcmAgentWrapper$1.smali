.class Lcom/samsung/ucm/ucmservice/UcmAgentWrapper$1;
.super Landroid/os/Handler;
.source "UcmAgentWrapper.java"


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
    .line 46
    iput-object p1, p0, this$0:Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 4
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 49
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_1e

    .line 57
    :goto_5
    return-void

    .line 51
    :pswitch_6
    iget-object v0, p0, this$0:Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;

    invoke-virtual {v0}, Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;->unbind()V

    .line 52
    const-string v0, "UcmAgentWrapper"

    const-string v1, "MSG_RESTART_TIMEOUT"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 54
    iget-object v0, p0, this$0:Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;

    # getter for: Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;->mService:Lcom/samsung/ucm/ucmservice/CredentialManagerService;
    invoke-static {v0}, Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;->access$000(Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;)Lcom/samsung/ucm/ucmservice/CredentialManagerService;

    move-result-object v0

    iget-object v1, p0, this$0:Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;

    invoke-virtual {v0, v1}, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->deletAndRefreshAgents(Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;)V

    goto :goto_5

    .line 49
    :pswitch_data_1e
    .packed-switch 0x4
        :pswitch_6
    .end packed-switch
.end method
