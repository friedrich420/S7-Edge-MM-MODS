.class public Lcom/sec/epdg/EpdgCommands;
.super Ljava/lang/Object;
.source "EpdgCommands.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/epdg/EpdgCommands$EpdgRxEvents;,
        Lcom/sec/epdg/EpdgCommands$EpdgTxEvents;,
        Lcom/sec/epdg/EpdgCommands$ApnConnStatusData;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "[EPDGCommands]"


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 170
    return-void
.end method

.method public static postDelayedRegister(Ljava/lang/String;)V
    .registers 4
    .param p0, "apnType"    # Ljava/lang/String;

    .prologue
    .line 46
    invoke-static {}, Lcom/sec/epdg/EpdgService;->getEpdgServiceHandler()Landroid/os/Handler;

    move-result-object v0

    invoke-static {}, Lcom/sec/epdg/EpdgService;->getEpdgServiceHandler()Landroid/os/Handler;

    move-result-object v1

    const/16 v2, 0x46

    invoke-static {v1, v2, p0}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 50
    return-void
.end method

.method public static postDeregister(Ljava/lang/String;I)V
    .registers 6
    .param p0, "apnType"    # Ljava/lang/String;
    .param p1, "force"    # I

    .prologue
    .line 60
    invoke-static {}, Lcom/sec/epdg/EpdgService;->getEpdgServiceHandler()Landroid/os/Handler;

    move-result-object v0

    invoke-static {}, Lcom/sec/epdg/EpdgService;->getEpdgServiceHandler()Landroid/os/Handler;

    move-result-object v1

    const/16 v2, 0x47

    const/4 v3, 0x0

    invoke-static {v1, v2, p1, v3, p0}, Landroid/os/Message;->obtain(Landroid/os/Handler;IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 64
    return-void
.end method

.method public static postDnsRetryRequest(I)V
    .registers 5
    .param p0, "cid"    # I

    .prologue
    .line 17
    invoke-static {}, Lcom/sec/epdg/EpdgService;->getEpdgServiceHandler()Landroid/os/Handler;

    move-result-object v0

    invoke-static {}, Lcom/sec/epdg/EpdgService;->getEpdgServiceHandler()Landroid/os/Handler;

    move-result-object v1

    const/16 v2, 0x34

    const/4 v3, 0x0

    invoke-static {v1, v2, p0, v3}, Landroid/os/Message;->obtain(Landroid/os/Handler;III)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 21
    return-void
.end method

.method public static postEnableEpdgFailure(I)V
    .registers 5
    .param p0, "cid"    # I

    .prologue
    .line 24
    invoke-static {}, Lcom/sec/epdg/EpdgService;->getEpdgServiceHandler()Landroid/os/Handler;

    move-result-object v0

    invoke-static {}, Lcom/sec/epdg/EpdgService;->getEpdgServiceHandler()Landroid/os/Handler;

    move-result-object v1

    const/16 v2, 0x23

    const/4 v3, 0x0

    invoke-static {v1, v2, p0, v3}, Landroid/os/Message;->obtain(Landroid/os/Handler;III)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 28
    return-void
.end method

.method public static postEpdgNotAvailableForOnDemandFailure(Ljava/lang/String;)V
    .registers 4
    .param p0, "apnName"    # Ljava/lang/String;

    .prologue
    .line 53
    invoke-static {}, Lcom/sec/epdg/EpdgService;->getEpdgServiceHandler()Landroid/os/Handler;

    move-result-object v0

    invoke-static {}, Lcom/sec/epdg/EpdgService;->getEpdgServiceHandler()Landroid/os/Handler;

    move-result-object v1

    const/16 v2, 0x25

    invoke-static {v1, v2, p0}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 57
    return-void
.end method

.method public static postNotifyRegistrants(IILjava/lang/String;)V
    .registers 6
    .param p0, "result"    # I
    .param p1, "w2lOrL2w"    # I
    .param p2, "apnType"    # Ljava/lang/String;

    .prologue
    .line 39
    invoke-static {}, Lcom/sec/epdg/EpdgService;->getEpdgServiceHandler()Landroid/os/Handler;

    move-result-object v0

    invoke-static {}, Lcom/sec/epdg/EpdgService;->getEpdgServiceHandler()Landroid/os/Handler;

    move-result-object v1

    const/16 v2, 0x1e

    invoke-static {v1, v2, p0, p1, p2}, Landroid/os/Message;->obtain(Landroid/os/Handler;IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 43
    return-void
.end method

.method public static postRetryL2WIfRequired(Ljava/lang/String;)V
    .registers 4
    .param p0, "apnType"    # Ljava/lang/String;

    .prologue
    .line 31
    invoke-static {}, Lcom/sec/epdg/EpdgService;->getEpdgServiceHandler()Landroid/os/Handler;

    move-result-object v0

    invoke-static {}, Lcom/sec/epdg/EpdgService;->getEpdgServiceHandler()Landroid/os/Handler;

    move-result-object v1

    const/16 v2, 0x1f

    invoke-static {v1, v2, p0}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 35
    return-void
.end method

.method public static triggerHandover(ILjava/lang/Boolean;)V
    .registers 6
    .param p0, "cid"    # I
    .param p1, "handoverToWifi"    # Ljava/lang/Boolean;

    .prologue
    .line 11
    invoke-static {}, Lcom/sec/epdg/EpdgService;->getEpdgServiceHandler()Landroid/os/Handler;

    move-result-object v0

    invoke-static {}, Lcom/sec/epdg/EpdgService;->getEpdgServiceHandler()Landroid/os/Handler;

    move-result-object v1

    const/16 v2, 0x22

    const/4 v3, 0x0

    invoke-static {v1, v2, p0, v3, p1}, Landroid/os/Message;->obtain(Landroid/os/Handler;IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 14
    return-void
.end method
