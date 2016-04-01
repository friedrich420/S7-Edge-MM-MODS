.class Lcom/sec/epdg/EpdgService$SendEventToSMRunnable;
.super Ljava/lang/Object;
.source "EpdgService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/epdg/EpdgService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SendEventToSMRunnable"
.end annotation


# instance fields
.field private mEvent:I

.field private mNetworkType:I

.field final synthetic this$0:Lcom/sec/epdg/EpdgService;


# direct methods
.method constructor <init>(Lcom/sec/epdg/EpdgService;II)V
    .registers 4
    .param p2, "networkType"    # I
    .param p3, "event"    # I

    .prologue
    .line 4718
    iput-object p1, p0, this$0:Lcom/sec/epdg/EpdgService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4719
    iput p2, p0, mNetworkType:I

    .line 4720
    iput p3, p0, mEvent:I

    .line 4721
    return-void
.end method


# virtual methods
.method public run()V
    .registers 6

    .prologue
    .line 4725
    const-string v2, "[EPDGService]"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Posting Event "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, mEvent:I

    invoke-static {v4}, Lcom/sec/epdg/EpdgCommands$EpdgRxEvents;->toString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "to SM "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 4727
    iget v2, p0, mNetworkType:I

    invoke-static {v2}, Lcom/sec/epdg/EpdgUtils;->getProfileIDbyNetworkType(I)I

    move-result v0

    .line 4728
    .local v0, "cid":I
    if-gez v0, :cond_49

    .line 4729
    const-string v2, "[EPDGService]"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "invalid cid for : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, mNetworkType:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/sec/epdg/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 4752
    :goto_48
    return-void

    .line 4732
    :cond_49
    # getter for: Lcom/sec/epdg/EpdgService;->mHOStateMachines:[Lcom/sec/epdg/IPSecDataConnSM;
    invoke-static {}, Lcom/sec/epdg/EpdgService;->access$3300()[Lcom/sec/epdg/IPSecDataConnSM;

    move-result-object v2

    add-int/lit8 v3, v0, -0x1

    aget-object v2, v2, v3

    invoke-virtual {v2}, Lcom/sec/epdg/IPSecDataConnSM;->getHandler()Landroid/os/Handler;

    move-result-object v2

    invoke-static {v2}, Landroid/os/Message;->obtain(Landroid/os/Handler;)Landroid/os/Message;

    move-result-object v1

    .line 4734
    .local v1, "msgToSM":Landroid/os/Message;
    iget v2, p0, mEvent:I

    packed-switch v2, :pswitch_data_96

    .line 4739
    iget v2, p0, mEvent:I

    iput v2, v1, Landroid/os/Message;->what:I

    .line 4743
    :goto_62
    const/4 v2, 0x1

    if-lt v0, v2, :cond_8e

    .line 4744
    const-string v2, "[IPSEC->EPDGService]"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Event received for cid: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 4745
    iput v0, v1, Landroid/os/Message;->arg1:I

    .line 4746
    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    .line 4748
    iget-object v2, p0, this$0:Lcom/sec/epdg/EpdgService;

    iget v3, p0, mEvent:I

    # invokes: Lcom/sec/epdg/EpdgService;->sendIpsecConnResultToTestApp(II)V
    invoke-static {v2, v0, v3}, Lcom/sec/epdg/EpdgService;->access$4000(Lcom/sec/epdg/EpdgService;II)V

    goto :goto_48

    .line 4736
    :pswitch_8a
    const/4 v2, 0x7

    iput v2, v1, Landroid/os/Message;->what:I

    goto :goto_62

    .line 4750
    :cond_8e
    const-string v2, "[IPSEC->EPDGService]"

    const-string v3, "Event received for invalid cid neglect it"

    invoke-static {v2, v3}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_48

    .line 4734
    :pswitch_data_96
    .packed-switch 0x2f
        :pswitch_8a
    .end packed-switch
.end method
