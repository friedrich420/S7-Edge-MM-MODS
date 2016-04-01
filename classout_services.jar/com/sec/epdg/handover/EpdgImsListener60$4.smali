.class Lcom/sec/epdg/handover/EpdgImsListener60$4;
.super Lcom/sec/ims/IImsRegistrationListener$Stub;
.source "EpdgImsListener60.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/epdg/handover/EpdgImsListener60;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/epdg/handover/EpdgImsListener60;


# direct methods
.method constructor <init>(Lcom/sec/epdg/handover/EpdgImsListener60;)V
    .registers 2

    .prologue
    .line 249
    iput-object p1, p0, this$0:Lcom/sec/epdg/handover/EpdgImsListener60;

    invoke-direct {p0}, Lcom/sec/ims/IImsRegistrationListener$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public onDeregistered(Lcom/sec/ims/ImsRegistration;I)V
    .registers 6
    .param p1, "reg"    # Lcom/sec/ims/ImsRegistration;
    .param p2, "errorCode"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 259
    const-string v0, "[EpdgImsListener]"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onDeregistered() errorCode = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 260
    # getter for: Lcom/sec/epdg/handover/EpdgImsListener60;->mePdgHandler:Landroid/os/Handler;
    invoke-static {}, Lcom/sec/epdg/handover/EpdgImsListener60;->access$600()Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/sec/epdg/handover/EpdgImsListener60$OnDeRegistered;

    iget-object v2, p0, this$0:Lcom/sec/epdg/handover/EpdgImsListener60;

    invoke-direct {v1, v2, p1, p2}, Lcom/sec/epdg/handover/EpdgImsListener60$OnDeRegistered;-><init>(Lcom/sec/epdg/handover/EpdgImsListener60;Lcom/sec/ims/ImsRegistration;I)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 261
    return-void
.end method

.method public onRegistered(Lcom/sec/ims/ImsRegistration;)V
    .registers 5
    .param p1, "reg"    # Lcom/sec/ims/ImsRegistration;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 253
    const-string v0, "[EpdgImsListener]"

    const-string/jumbo v1, "onRegistered()"

    invoke-static {v0, v1}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 254
    # getter for: Lcom/sec/epdg/handover/EpdgImsListener60;->mePdgHandler:Landroid/os/Handler;
    invoke-static {}, Lcom/sec/epdg/handover/EpdgImsListener60;->access$600()Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/sec/epdg/handover/EpdgImsListener60$OnRegistered;

    iget-object v2, p0, this$0:Lcom/sec/epdg/handover/EpdgImsListener60;

    invoke-direct {v1, v2, p1}, Lcom/sec/epdg/handover/EpdgImsListener60$OnRegistered;-><init>(Lcom/sec/epdg/handover/EpdgImsListener60;Lcom/sec/ims/ImsRegistration;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 255
    return-void
.end method
