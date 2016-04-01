.class public abstract Lcom/samsung/accessory/manager/authentication/Authenticator;
.super Ljava/lang/Object;
.source "Authenticator.java"


# instance fields
.field protected mConnectivity:Lcom/samsung/accessory/manager/connectivity/Connectivity;

.field protected mContext:Landroid/content/Context;

.field protected mType:I


# direct methods
.method constructor <init>(Landroid/content/Context;)V
    .registers 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    iput-object p1, p0, mContext:Landroid/content/Context;

    .line 28
    return-void
.end method

.method private setConnection(Lcom/samsung/accessory/manager/connectivity/Connectivity;)V
    .registers 2
    .param p1, "conn"    # Lcom/samsung/accessory/manager/connectivity/Connectivity;

    .prologue
    .line 19
    iput-object p1, p0, mConnectivity:Lcom/samsung/accessory/manager/connectivity/Connectivity;

    .line 20
    return-void
.end method


# virtual methods
.method close()V
    .registers 2

    .prologue
    .line 76
    iget-object v0, p0, mConnectivity:Lcom/samsung/accessory/manager/connectivity/Connectivity;

    if-eqz v0, :cond_9

    .line 77
    iget-object v0, p0, mConnectivity:Lcom/samsung/accessory/manager/connectivity/Connectivity;

    invoke-virtual {v0}, Lcom/samsung/accessory/manager/connectivity/Connectivity;->close()V

    .line 78
    :cond_9
    return-void
.end method

.method connect()V
    .registers 3

    .prologue
    .line 66
    iget-object v0, p0, mConnectivity:Lcom/samsung/accessory/manager/connectivity/Connectivity;

    if-eqz v0, :cond_a

    .line 67
    iget-object v0, p0, mConnectivity:Lcom/samsung/accessory/manager/connectivity/Connectivity;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/samsung/accessory/manager/connectivity/Connectivity;->connect(Ljava/lang/String;)Z

    .line 68
    :cond_a
    return-void
.end method

.method disconnect()V
    .registers 2

    .prologue
    .line 71
    iget-object v0, p0, mConnectivity:Lcom/samsung/accessory/manager/connectivity/Connectivity;

    if-eqz v0, :cond_9

    .line 72
    iget-object v0, p0, mConnectivity:Lcom/samsung/accessory/manager/connectivity/Connectivity;

    invoke-virtual {v0}, Lcom/samsung/accessory/manager/connectivity/Connectivity;->disconnect()Z

    .line 73
    :cond_9
    return-void
.end method

.method public getConnectivity()Lcom/samsung/accessory/manager/connectivity/Connectivity;
    .registers 2

    .prologue
    .line 46
    iget-object v0, p0, mConnectivity:Lcom/samsung/accessory/manager/connectivity/Connectivity;

    return-object v0
.end method

.method public getConnectivityType()I
    .registers 2

    .prologue
    .line 50
    iget v0, p0, mType:I

    return v0
.end method

.method abstract onAuthenticationChallenge(Lcom/samsung/accessory/manager/authentication/AuthenticationResult;)Z
.end method

.method abstract onInterrupted()V
.end method

.method public sendStartAuth()[B
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 54
    iget-object v0, p0, mConnectivity:Lcom/samsung/accessory/manager/connectivity/Connectivity;

    invoke-virtual {v0}, Lcom/samsung/accessory/manager/connectivity/Connectivity;->sendStartAuth()[B

    move-result-object v0

    return-object v0
.end method

.method public sendStopAuth()Z
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 58
    iget-object v0, p0, mConnectivity:Lcom/samsung/accessory/manager/connectivity/Connectivity;

    invoke-virtual {v0}, Lcom/samsung/accessory/manager/connectivity/Connectivity;->sendStopAuth()Z

    move-result v0

    return v0
.end method

.method public sendSynchronously([B)[B
    .registers 3
    .param p1, "payload"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 62
    iget-object v0, p0, mConnectivity:Lcom/samsung/accessory/manager/connectivity/Connectivity;

    invoke-virtual {v0, p1}, Lcom/samsung/accessory/manager/connectivity/Connectivity;->sendSynchronously([B)[B

    move-result-object v0

    return-object v0
.end method

.method setConnection()V
    .registers 3

    .prologue
    .line 31
    iget-object v0, p0, mConnectivity:Lcom/samsung/accessory/manager/connectivity/Connectivity;

    if-eqz v0, :cond_5

    .line 43
    :goto_4
    return-void

    .line 32
    :cond_5
    iget v0, p0, mType:I

    packed-switch v0, :pswitch_data_22

    goto :goto_4

    .line 34
    :pswitch_b
    new-instance v0, Lcom/samsung/accessory/manager/connectivity/NfcConnectivity;

    iget-object v1, p0, mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/samsung/accessory/manager/connectivity/NfcConnectivity;-><init>(Landroid/content/Context;)V

    invoke-direct {p0, v0}, setConnection(Lcom/samsung/accessory/manager/connectivity/Connectivity;)V

    goto :goto_4

    .line 37
    :pswitch_16
    new-instance v0, Lcom/samsung/accessory/manager/connectivity/BTConnectivity;

    iget-object v1, p0, mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/samsung/accessory/manager/connectivity/BTConnectivity;-><init>(Landroid/content/Context;)V

    invoke-direct {p0, v0}, setConnection(Lcom/samsung/accessory/manager/connectivity/Connectivity;)V

    goto :goto_4

    .line 32
    nop

    :pswitch_data_22
    .packed-switch 0x1
        :pswitch_b
        :pswitch_16
    .end packed-switch
.end method

.method setStateChangedCallback(Lcom/samsung/accessory/manager/connectivity/Connectivity$StateChangedCallback;)V
    .registers 3
    .param p1, "callback"    # Lcom/samsung/accessory/manager/connectivity/Connectivity$StateChangedCallback;

    .prologue
    .line 23
    iget-object v0, p0, mConnectivity:Lcom/samsung/accessory/manager/connectivity/Connectivity;

    invoke-virtual {v0, p1}, Lcom/samsung/accessory/manager/connectivity/Connectivity;->setStateChangedCallback(Lcom/samsung/accessory/manager/connectivity/Connectivity$StateChangedCallback;)V

    .line 24
    return-void
.end method
