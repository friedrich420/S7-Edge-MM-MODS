.class Lcom/sec/epdg/ipc/EpdgModem$EpdgModemSender;
.super Landroid/os/Handler;
.source "EpdgModem.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/epdg/ipc/EpdgModem;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "EpdgModemSender"
.end annotation


# instance fields
.field private dataLength:[B

.field final synthetic this$0:Lcom/sec/epdg/ipc/EpdgModem;


# direct methods
.method public constructor <init>(Lcom/sec/epdg/ipc/EpdgModem;Landroid/os/Looper;)V
    .registers 4
    .param p2, "looper"    # Landroid/os/Looper;

    .prologue
    .line 101
    iput-object p1, p0, this$0:Lcom/sec/epdg/ipc/EpdgModem;

    .line 102
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 105
    const/4 v0, 0x4

    new-array v0, v0, [B

    iput-object v0, p0, dataLength:[B

    .line 103
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 9
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    const/4 v5, 0x1

    .line 114
    iget-object v4, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v4, [B

    move-object v0, v4

    check-cast v0, [B

    .line 116
    .local v0, "data":[B
    iget v4, p1, Landroid/os/Message;->what:I

    packed-switch v4, :pswitch_data_b8

    .line 148
    const-string v4, "[MODEM]"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "EpdgModemSender Handler received Unknown Message code:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p1, Landroid/os/Message;->what:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " Ignoring"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/sec/epdg/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 152
    :cond_2d
    :goto_2d
    return-void

    .line 120
    :pswitch_2e
    :try_start_2e
    iget-object v4, p0, this$0:Lcom/sec/epdg/ipc/EpdgModem;

    # getter for: Lcom/sec/epdg/ipc/EpdgModem;->mSupportVowifiDs:Z
    invoke-static {v4}, Lcom/sec/epdg/ipc/EpdgModem;->access$000(Lcom/sec/epdg/ipc/EpdgModem;)Z

    move-result v4

    if-ne v4, v5, :cond_85

    const/4 v4, 0x3

    invoke-static {v4}, Lcom/samsung/android/telephony/MultiSimManager;->getDefaultPhoneId(I)I

    move-result v4

    if-ne v4, v5, :cond_85

    .line 121
    # getter for: Lcom/sec/epdg/ipc/EpdgModem;->mSocket2:Landroid/net/LocalSocket;
    invoke-static {}, Lcom/sec/epdg/ipc/EpdgModem;->access$100()Landroid/net/LocalSocket;

    move-result-object v3

    .line 126
    .local v3, "s":Landroid/net/LocalSocket;
    :goto_41
    if-eqz v3, :cond_2d

    .line 130
    iget-object v4, p0, this$0:Lcom/sec/epdg/ipc/EpdgModem;

    # operator-- for: Lcom/sec/epdg/ipc/EpdgModem;->mRequestMessagesPending:I
    invoke-static {v4}, Lcom/sec/epdg/ipc/EpdgModem;->access$310(Lcom/sec/epdg/ipc/EpdgModem;)I

    .line 132
    array-length v4, v0

    const/16 v5, 0x2000

    if-le v4, v5, :cond_8a

    .line 133
    new-instance v4, Ljava/lang/IllegalArgumentException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Parcel or data length is larger than max bytes allowed! "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    array-length v6, v0

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4
    :try_end_67
    .catch Ljava/io/IOException; {:try_start_2e .. :try_end_67} :catch_67
    .catch Ljava/lang/IllegalArgumentException; {:try_start_2e .. :try_end_67} :catch_99

    .line 139
    .end local v3    # "s":Landroid/net/LocalSocket;
    :catch_67
    move-exception v1

    .line 140
    .local v1, "ex":Ljava/io/IOException;
    const-string v4, "[MODEM]"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "IOException "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/sec/epdg/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2d

    .line 123
    .end local v1    # "ex":Ljava/io/IOException;
    :cond_85
    :try_start_85
    # getter for: Lcom/sec/epdg/ipc/EpdgModem;->mSocket:Landroid/net/LocalSocket;
    invoke-static {}, Lcom/sec/epdg/ipc/EpdgModem;->access$200()Landroid/net/LocalSocket;

    move-result-object v3

    .restart local v3    # "s":Landroid/net/LocalSocket;
    goto :goto_41

    .line 137
    :cond_8a
    invoke-virtual {v3}, Landroid/net/LocalSocket;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/io/OutputStream;->write([B)V

    .line 138
    const-string v4, "[MODEM]"

    const-string v5, "Successfully written to RIL"

    invoke-static {v4, v5}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_98
    .catch Ljava/io/IOException; {:try_start_85 .. :try_end_98} :catch_67
    .catch Ljava/lang/IllegalArgumentException; {:try_start_85 .. :try_end_98} :catch_99

    goto :goto_2d

    .line 142
    .end local v3    # "s":Landroid/net/LocalSocket;
    :catch_99
    move-exception v2

    .line 143
    .local v2, "exc":Ljava/lang/IllegalArgumentException;
    const-string v4, "[MODEM]"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, " IllegalArgument exception "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v2}, Ljava/lang/IllegalArgumentException;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/sec/epdg/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_2d

    .line 116
    :pswitch_data_b8
    .packed-switch 0x1
        :pswitch_2e
    .end packed-switch
.end method

.method public run()V
    .registers 1

    .prologue
    .line 110
    return-void
.end method
