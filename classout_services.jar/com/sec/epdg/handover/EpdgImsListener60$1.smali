.class final Lcom/sec/epdg/handover/EpdgImsListener60$1;
.super Lcom/sec/ims/im/IImSessionListener$Stub;
.source "EpdgImsListener60.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/epdg/handover/EpdgImsListener60;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    .prologue
    .line 57
    invoke-direct {p0}, Lcom/sec/ims/im/IImSessionListener$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public onImSessionEstablished(Z)V
    .registers 6
    .param p1, "isExist"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 60
    new-instance v0, Landroid/os/Message;

    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    .line 61
    .local v0, "message":Landroid/os/Message;
    const-string v1, "[EpdgImsListener]"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "onImSessionEstablished() : isExist == "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 62
    # invokes: Lcom/sec/epdg/handover/EpdgImsListener60;->setIpmeStatus(Z)V
    invoke-static {p1}, Lcom/sec/epdg/handover/EpdgImsListener60;->access$000(Z)V

    .line 63
    # invokes: Lcom/sec/epdg/handover/EpdgImsListener60;->informIpmeStatusChangeToHandoverModule(Z)V
    invoke-static {p1}, Lcom/sec/epdg/handover/EpdgImsListener60;->access$100(Z)V

    .line 64
    return-void
.end method
