.class public Lcom/sec/epdg/EpdgRilInterface$RxApiInterface;
.super Ljava/lang/Object;
.source "EpdgRilInterface.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/epdg/EpdgRilInterface;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "RxApiInterface"
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 115
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static onRecvApnAttachRequest(Lcom/sec/epdg/EpdgRilInterface$ApnAttachRequest;)V
    .registers 6
    .param p0, "req"    # Lcom/sec/epdg/EpdgRilInterface$ApnAttachRequest;

    .prologue
    const/4 v4, 0x0

    .line 123
    invoke-static {}, Lcom/sec/epdg/EpdgService;->getEpdgServiceHandler()Landroid/os/Handler;

    move-result-object v0

    invoke-static {}, Lcom/sec/epdg/EpdgService;->getEpdgServiceHandler()Landroid/os/Handler;

    move-result-object v1

    const/16 v2, 0x2b

    new-instance v3, Landroid/os/AsyncResult;

    invoke-direct {v3, v4, p0, v4}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    invoke-static {v1, v2, v3}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 127
    return-void
.end method

.method public static onRecvApnDetachRequest(Lcom/sec/epdg/EpdgRilInterface$ApnDetachRequest;)V
    .registers 6
    .param p0, "req"    # Lcom/sec/epdg/EpdgRilInterface$ApnDetachRequest;

    .prologue
    const/4 v4, 0x0

    .line 129
    invoke-static {}, Lcom/sec/epdg/EpdgService;->getEpdgServiceHandler()Landroid/os/Handler;

    move-result-object v0

    invoke-static {}, Lcom/sec/epdg/EpdgService;->getEpdgServiceHandler()Landroid/os/Handler;

    move-result-object v1

    const/16 v2, 0x2c

    new-instance v3, Landroid/os/AsyncResult;

    invoke-direct {v3, v4, p0, v4}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    invoke-static {v1, v2, v3}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 133
    return-void
.end method

.method public static onRecvApnHandoverResult(Lcom/sec/epdg/EpdgRilInterface$ApnHandoverResponse;)V
    .registers 6
    .param p0, "resp"    # Lcom/sec/epdg/EpdgRilInterface$ApnHandoverResponse;

    .prologue
    const/4 v4, 0x0

    .line 117
    invoke-static {}, Lcom/sec/epdg/EpdgService;->getEpdgServiceHandler()Landroid/os/Handler;

    move-result-object v0

    invoke-static {}, Lcom/sec/epdg/EpdgService;->getEpdgServiceHandler()Landroid/os/Handler;

    move-result-object v1

    const/16 v2, 0x2a

    new-instance v3, Landroid/os/AsyncResult;

    invoke-direct {v3, v4, p0, v4}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    invoke-static {v1, v2, v3}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 121
    return-void
.end method

.method public static onRecvEpdgStatusQuery(I)V
    .registers 5
    .param p0, "epdgAvailable"    # I

    .prologue
    .line 135
    invoke-static {}, Lcom/sec/epdg/EpdgService;->getEpdgServiceHandler()Landroid/os/Handler;

    move-result-object v0

    invoke-static {}, Lcom/sec/epdg/EpdgService;->getEpdgServiceHandler()Landroid/os/Handler;

    move-result-object v1

    const/16 v2, 0x35

    const/4 v3, 0x0

    invoke-static {v1, v2, p0, v3}, Landroid/os/Message;->obtain(Landroid/os/Handler;III)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 138
    return-void
.end method

.method public static onRecvIilSsacUpdate(Lcom/sec/epdg/EpdgRilInterface$IilSsacUpdate;)V
    .registers 6
    .param p0, "ssacInfo"    # Lcom/sec/epdg/EpdgRilInterface$IilSsacUpdate;

    .prologue
    const/4 v4, 0x0

    .line 141
    invoke-static {}, Lcom/sec/epdg/EpdgService;->getEpdgServiceHandler()Landroid/os/Handler;

    move-result-object v0

    invoke-static {}, Lcom/sec/epdg/EpdgService;->getEpdgServiceHandler()Landroid/os/Handler;

    move-result-object v1

    const/16 v2, 0x4a

    new-instance v3, Landroid/os/AsyncResult;

    invoke-direct {v3, v4, p0, v4}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    invoke-static {v1, v2, v3}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 145
    return-void
.end method
