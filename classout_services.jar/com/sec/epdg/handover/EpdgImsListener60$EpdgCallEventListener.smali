.class Lcom/sec/epdg/handover/EpdgImsListener60$EpdgCallEventListener;
.super Lcom/sec/ims/volte2/ImsCallEventListener;
.source "EpdgImsListener60.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/epdg/handover/EpdgImsListener60;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "EpdgCallEventListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/epdg/handover/EpdgImsListener60;


# direct methods
.method private constructor <init>(Lcom/sec/epdg/handover/EpdgImsListener60;)V
    .registers 2

    .prologue
    .line 204
    iput-object p1, p0, this$0:Lcom/sec/epdg/handover/EpdgImsListener60;

    invoke-direct {p0}, Lcom/sec/ims/volte2/ImsCallEventListener;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/sec/epdg/handover/EpdgImsListener60;Lcom/sec/epdg/handover/EpdgImsListener60$1;)V
    .registers 3
    .param p1, "x0"    # Lcom/sec/epdg/handover/EpdgImsListener60;
    .param p2, "x1"    # Lcom/sec/epdg/handover/EpdgImsListener60$1;

    .prologue
    .line 204
    invoke-direct {p0, p1}, <init>(Lcom/sec/epdg/handover/EpdgImsListener60;)V

    return-void
.end method


# virtual methods
.method public onCallEnded(Lcom/sec/ims/volte2/data/ImsCallInfo;I)V
    .registers 6
    .param p1, "callInfo"    # Lcom/sec/ims/volte2/data/ImsCallInfo;
    .param p2, "errorCode"    # I

    .prologue
    .line 234
    const-string v0, "[EpdgImsListener]"

    const-string/jumbo v1, "onCallEnded: "

    invoke-static {v0, v1}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 235
    # getter for: Lcom/sec/epdg/handover/EpdgImsListener60;->mePdgHandler:Landroid/os/Handler;
    invoke-static {}, Lcom/sec/epdg/handover/EpdgImsListener60;->access$600()Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/sec/epdg/handover/EpdgImsListener60$OnCallEnded;

    iget-object v2, p0, this$0:Lcom/sec/epdg/handover/EpdgImsListener60;

    invoke-direct {v1, v2, p1}, Lcom/sec/epdg/handover/EpdgImsListener60$OnCallEnded;-><init>(Lcom/sec/epdg/handover/EpdgImsListener60;Lcom/sec/ims/volte2/data/ImsCallInfo;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 236
    return-void
.end method

.method public onCallEstablished(Lcom/sec/ims/volte2/data/ImsCallInfo;)V
    .registers 5
    .param p1, "callInfo"    # Lcom/sec/ims/volte2/data/ImsCallInfo;

    .prologue
    .line 217
    const-string v0, "[EpdgImsListener]"

    const-string/jumbo v1, "onCallEstablish: "

    invoke-static {v0, v1}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 218
    # getter for: Lcom/sec/epdg/handover/EpdgImsListener60;->mePdgHandler:Landroid/os/Handler;
    invoke-static {}, Lcom/sec/epdg/handover/EpdgImsListener60;->access$600()Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/sec/epdg/handover/EpdgImsListener60$OnCallEstablish;

    iget-object v2, p0, this$0:Lcom/sec/epdg/handover/EpdgImsListener60;

    invoke-direct {v1, v2, p1}, Lcom/sec/epdg/handover/EpdgImsListener60$OnCallEstablish;-><init>(Lcom/sec/epdg/handover/EpdgImsListener60;Lcom/sec/ims/volte2/data/ImsCallInfo;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 219
    return-void
.end method

.method public onCallModified(Lcom/sec/ims/volte2/data/ImsCallInfo;)V
    .registers 5
    .param p1, "callInfo"    # Lcom/sec/ims/volte2/data/ImsCallInfo;

    .prologue
    .line 228
    const-string v0, "[EpdgImsListener]"

    const-string/jumbo v1, "onCallModified: "

    invoke-static {v0, v1}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 229
    # getter for: Lcom/sec/epdg/handover/EpdgImsListener60;->mePdgHandler:Landroid/os/Handler;
    invoke-static {}, Lcom/sec/epdg/handover/EpdgImsListener60;->access$600()Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/sec/epdg/handover/EpdgImsListener60$OnCallModified;

    iget-object v2, p0, this$0:Lcom/sec/epdg/handover/EpdgImsListener60;

    invoke-direct {v1, v2, p1}, Lcom/sec/epdg/handover/EpdgImsListener60$OnCallModified;-><init>(Lcom/sec/epdg/handover/EpdgImsListener60;Lcom/sec/ims/volte2/data/ImsCallInfo;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 230
    return-void
.end method

.method public onCallModifyRequested(Lcom/sec/ims/volte2/data/ImsCallInfo;I)V
    .registers 6
    .param p1, "callInfo"    # Lcom/sec/ims/volte2/data/ImsCallInfo;
    .param p2, "callType"    # I

    .prologue
    .line 223
    const-string v0, "[EpdgImsListener]"

    const-string/jumbo v1, "onCallModifyRequested: "

    invoke-static {v0, v1}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 224
    # getter for: Lcom/sec/epdg/handover/EpdgImsListener60;->mePdgHandler:Landroid/os/Handler;
    invoke-static {}, Lcom/sec/epdg/handover/EpdgImsListener60;->access$600()Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/sec/epdg/handover/EpdgImsListener60$OnCallModifyRequested;

    iget-object v2, p0, this$0:Lcom/sec/epdg/handover/EpdgImsListener60;

    invoke-direct {v1, v2, p1}, Lcom/sec/epdg/handover/EpdgImsListener60$OnCallModifyRequested;-><init>(Lcom/sec/epdg/handover/EpdgImsListener60;Lcom/sec/ims/volte2/data/ImsCallInfo;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 225
    return-void
.end method

.method public onCallStarted(Lcom/sec/ims/volte2/data/ImsCallInfo;)V
    .registers 5
    .param p1, "callInfo"    # Lcom/sec/ims/volte2/data/ImsCallInfo;

    .prologue
    .line 207
    const-string v0, "[EpdgImsListener]"

    const-string/jumbo v1, "onCallStarted: "

    invoke-static {v0, v1}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 208
    # getter for: Lcom/sec/epdg/handover/EpdgImsListener60;->mePdgHandler:Landroid/os/Handler;
    invoke-static {}, Lcom/sec/epdg/handover/EpdgImsListener60;->access$600()Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/sec/epdg/handover/EpdgImsListener60$OnCallStarted;

    iget-object v2, p0, this$0:Lcom/sec/epdg/handover/EpdgImsListener60;

    invoke-direct {v1, v2, p1}, Lcom/sec/epdg/handover/EpdgImsListener60$OnCallStarted;-><init>(Lcom/sec/epdg/handover/EpdgImsListener60;Lcom/sec/ims/volte2/data/ImsCallInfo;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 209
    return-void
.end method

.method public onDedicatedBearerEvent(Lcom/sec/ims/volte2/data/ImsCallInfo;II)V
    .registers 7
    .param p1, "callInfo"    # Lcom/sec/ims/volte2/data/ImsCallInfo;
    .param p2, "bearerstate"    # I
    .param p3, "qci"    # I

    .prologue
    .line 240
    const-string v0, "[EpdgImsListener]"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onDedicatedBearerEvent: bearerstate : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", qci : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 241
    # getter for: Lcom/sec/epdg/handover/EpdgImsListener60;->mePdgHandler:Landroid/os/Handler;
    invoke-static {}, Lcom/sec/epdg/handover/EpdgImsListener60;->access$600()Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/sec/epdg/handover/EpdgImsListener60$OnDedicatedBearerEvent;

    iget-object v2, p0, this$0:Lcom/sec/epdg/handover/EpdgImsListener60;

    invoke-direct {v1, v2, p1, p2, p3}, Lcom/sec/epdg/handover/EpdgImsListener60$OnDedicatedBearerEvent;-><init>(Lcom/sec/epdg/handover/EpdgImsListener60;Lcom/sec/ims/volte2/data/ImsCallInfo;II)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 242
    return-void
.end method

.method public onIncomingCall(Lcom/sec/ims/volte2/data/ImsCallInfo;Ljava/lang/String;)V
    .registers 6
    .param p1, "callInfo"    # Lcom/sec/ims/volte2/data/ImsCallInfo;
    .param p2, "remoteUri"    # Ljava/lang/String;

    .prologue
    .line 212
    const-string v0, "[EpdgImsListener]"

    const-string/jumbo v1, "onIncomingCall: "

    invoke-static {v0, v1}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 213
    # getter for: Lcom/sec/epdg/handover/EpdgImsListener60;->mePdgHandler:Landroid/os/Handler;
    invoke-static {}, Lcom/sec/epdg/handover/EpdgImsListener60;->access$600()Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/sec/epdg/handover/EpdgImsListener60$OnCallStarted;

    iget-object v2, p0, this$0:Lcom/sec/epdg/handover/EpdgImsListener60;

    invoke-direct {v1, v2, p1}, Lcom/sec/epdg/handover/EpdgImsListener60$OnCallStarted;-><init>(Lcom/sec/epdg/handover/EpdgImsListener60;Lcom/sec/ims/volte2/data/ImsCallInfo;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 214
    return-void
.end method
