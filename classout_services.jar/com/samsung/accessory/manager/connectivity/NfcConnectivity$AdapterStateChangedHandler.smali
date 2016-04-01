.class Lcom/samsung/accessory/manager/connectivity/NfcConnectivity$AdapterStateChangedHandler;
.super Ljava/lang/Object;
.source "NfcConnectivity.java"

# interfaces
.implements Lcom/samsung/accessory/manager/connectivity/Connectivity$StateChangedHandler;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/accessory/manager/connectivity/NfcConnectivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "AdapterStateChangedHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/accessory/manager/connectivity/NfcConnectivity;


# direct methods
.method private constructor <init>(Lcom/samsung/accessory/manager/connectivity/NfcConnectivity;)V
    .registers 2

    .prologue
    .line 61
    iput-object p1, p0, this$0:Lcom/samsung/accessory/manager/connectivity/NfcConnectivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/samsung/accessory/manager/connectivity/NfcConnectivity;Lcom/samsung/accessory/manager/connectivity/NfcConnectivity$1;)V
    .registers 3
    .param p1, "x0"    # Lcom/samsung/accessory/manager/connectivity/NfcConnectivity;
    .param p2, "x1"    # Lcom/samsung/accessory/manager/connectivity/NfcConnectivity$1;

    .prologue
    .line 61
    invoke-direct {p0, p1}, <init>(Lcom/samsung/accessory/manager/connectivity/NfcConnectivity;)V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 8
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    const/4 v4, -0x1

    .line 63
    const-string v1, "android.nfc.extra.ADAPTER_STATE"

    invoke-virtual {p2, v1, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    .line 64
    .local v0, "state":I
    # getter for: Lcom/samsung/accessory/manager/connectivity/NfcConnectivity;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/samsung/accessory/manager/connectivity/NfcConnectivity;->access$100()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "ACTION_ADAPTER_STATE_CHANGED state = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 65
    iget-object v1, p0, this$0:Lcom/samsung/accessory/manager/connectivity/NfcConnectivity;

    # setter for: Lcom/samsung/accessory/manager/connectivity/NfcConnectivity;->mState:I
    invoke-static {v1, v0}, Lcom/samsung/accessory/manager/connectivity/NfcConnectivity;->access$402(Lcom/samsung/accessory/manager/connectivity/NfcConnectivity;I)I

    .line 66
    packed-switch v0, :pswitch_data_58

    .line 91
    :cond_29
    :goto_29
    :pswitch_29
    return-void

    .line 69
    :pswitch_2a
    iget-object v1, p0, this$0:Lcom/samsung/accessory/manager/connectivity/NfcConnectivity;

    const/4 v2, 0x3

    # invokes: Lcom/samsung/accessory/manager/connectivity/NfcConnectivity;->sendStateChanged(I)V
    invoke-static {v1, v2}, Lcom/samsung/accessory/manager/connectivity/NfcConnectivity;->access$300(Lcom/samsung/accessory/manager/connectivity/NfcConnectivity;I)V

    goto :goto_29

    .line 78
    :pswitch_31
    iget-object v1, p0, this$0:Lcom/samsung/accessory/manager/connectivity/NfcConnectivity;

    # getter for: Lcom/samsung/accessory/manager/connectivity/NfcConnectivity;->mEnableRequest:Ljava/util/concurrent/atomic/AtomicBoolean;
    invoke-static {v1}, Lcom/samsung/accessory/manager/connectivity/NfcConnectivity;->access$200(Lcom/samsung/accessory/manager/connectivity/NfcConnectivity;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v1

    if-eqz v1, :cond_43

    .line 79
    iget-object v1, p0, this$0:Lcom/samsung/accessory/manager/connectivity/NfcConnectivity;

    const/4 v2, 0x0

    # invokes: Lcom/samsung/accessory/manager/connectivity/NfcConnectivity;->enableInternal(Z)Z
    invoke-static {v1, v2}, Lcom/samsung/accessory/manager/connectivity/NfcConnectivity;->access$500(Lcom/samsung/accessory/manager/connectivity/NfcConnectivity;Z)Z

    .line 83
    :cond_43
    :pswitch_43
    iget-object v1, p0, this$0:Lcom/samsung/accessory/manager/connectivity/NfcConnectivity;

    # getter for: Lcom/samsung/accessory/manager/connectivity/NfcConnectivity;->mPrevState:I
    invoke-static {v1}, Lcom/samsung/accessory/manager/connectivity/NfcConnectivity;->access$600(Lcom/samsung/accessory/manager/connectivity/NfcConnectivity;)I

    move-result v1

    if-ne v1, v0, :cond_29

    .line 84
    iget-object v1, p0, this$0:Lcom/samsung/accessory/manager/connectivity/NfcConnectivity;

    const/4 v2, 0x2

    # invokes: Lcom/samsung/accessory/manager/connectivity/NfcConnectivity;->sendStateChanged(I)V
    invoke-static {v1, v2}, Lcom/samsung/accessory/manager/connectivity/NfcConnectivity;->access$300(Lcom/samsung/accessory/manager/connectivity/NfcConnectivity;I)V

    .line 85
    iget-object v1, p0, this$0:Lcom/samsung/accessory/manager/connectivity/NfcConnectivity;

    # setter for: Lcom/samsung/accessory/manager/connectivity/NfcConnectivity;->mPrevState:I
    invoke-static {v1, v4}, Lcom/samsung/accessory/manager/connectivity/NfcConnectivity;->access$602(Lcom/samsung/accessory/manager/connectivity/NfcConnectivity;I)I

    goto :goto_29

    .line 66
    nop

    :pswitch_data_58
    .packed-switch 0x1
        :pswitch_43
        :pswitch_29
        :pswitch_29
        :pswitch_2a
        :pswitch_31
        :pswitch_29
        :pswitch_29
        :pswitch_29
        :pswitch_29
        :pswitch_29
        :pswitch_43
        :pswitch_29
        :pswitch_29
        :pswitch_2a
    .end packed-switch
.end method
