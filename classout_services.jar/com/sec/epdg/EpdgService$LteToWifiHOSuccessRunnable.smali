.class Lcom/sec/epdg/EpdgService$LteToWifiHOSuccessRunnable;
.super Lcom/sec/epdg/EpdgService$HORunnable;
.source "EpdgService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/epdg/EpdgService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "LteToWifiHOSuccessRunnable"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/epdg/EpdgService;


# direct methods
.method constructor <init>(Lcom/sec/epdg/EpdgService;I)V
    .registers 3
    .param p2, "networkType"    # I

    .prologue
    .line 3537
    iput-object p1, p0, this$0:Lcom/sec/epdg/EpdgService;

    .line 3538
    invoke-direct {p0, p1, p2}, Lcom/sec/epdg/EpdgService$HORunnable;-><init>(Lcom/sec/epdg/EpdgService;I)V

    .line 3539
    return-void
.end method


# virtual methods
.method public run()V
    .registers 7

    .prologue
    .line 3543
    invoke-virtual {p0}, getNetworkType()I

    move-result v3

    invoke-static {v3}, Lcom/sec/epdg/EpdgUtils;->getProfileIDbyNetworkType(I)I

    move-result v3

    add-int/lit8 v0, v3, -0x1

    .line 3544
    .local v0, "cid":I
    const-string v3, "[EPDGService]"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "LteToWifiHOSuccessRunnable.run: Cid : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 3545
    if-gez v0, :cond_41

    .line 3546
    const-string v3, "[EPDGService]"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "WifiToLteHOSuccessRunnable() invalid cid : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p0}, getNetworkType()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/sec/epdg/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 3569
    :goto_40
    return-void

    .line 3550
    :cond_41
    # getter for: Lcom/sec/epdg/EpdgService;->mHOStateMachines:[Lcom/sec/epdg/IPSecDataConnSM;
    invoke-static {}, Lcom/sec/epdg/EpdgService;->access$3300()[Lcom/sec/epdg/IPSecDataConnSM;

    move-result-object v3

    aget-object v3, v3, v0

    invoke-virtual {v3}, Lcom/sec/epdg/IPSecDataConnSM;->getDataConnectionHandler()Landroid/os/Handler;

    move-result-object v2

    .line 3552
    .local v2, "smHandler":Landroid/os/Handler;
    if-nez v2, :cond_6c

    .line 3553
    const-string v3, "[EPDGService]"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "LteToWifiHOSuccessRunnable: SM handler for cid "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " is null. Should never happen."

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/sec/epdg/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_40

    .line 3557
    :cond_6c
    invoke-static {v2}, Landroid/os/Message;->obtain(Landroid/os/Handler;)Landroid/os/Message;

    move-result-object v1

    .line 3558
    .local v1, "msg":Landroid/os/Message;
    if-eqz v1, :cond_86

    .line 3559
    const-string v3, "[EPDGService]"

    const-string v4, "LteToWifiHOSuccessRunnable: Sending START_HO_L2W to state machine"

    invoke-static {v3, v4}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 3561
    const/4 v3, 0x0

    iput v3, v1, Landroid/os/Message;->what:I

    .line 3562
    invoke-virtual {p0}, getNetworkType()I

    move-result v3

    iput v3, v1, Landroid/os/Message;->arg1:I

    .line 3563
    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    goto :goto_40

    .line 3565
    :cond_86
    const-string v3, "[EPDGService]"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "LteToWifiHOSuccessRunnable: Unable to obtain message for SM: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/sec/epdg/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_40
.end method
