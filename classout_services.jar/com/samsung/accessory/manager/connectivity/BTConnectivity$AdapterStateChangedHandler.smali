.class Lcom/samsung/accessory/manager/connectivity/BTConnectivity$AdapterStateChangedHandler;
.super Ljava/lang/Object;
.source "BTConnectivity.java"

# interfaces
.implements Lcom/samsung/accessory/manager/connectivity/Connectivity$StateChangedHandler;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/accessory/manager/connectivity/BTConnectivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "AdapterStateChangedHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/accessory/manager/connectivity/BTConnectivity;


# direct methods
.method private constructor <init>(Lcom/samsung/accessory/manager/connectivity/BTConnectivity;)V
    .registers 2

    .prologue
    .line 40
    iput-object p1, p0, this$0:Lcom/samsung/accessory/manager/connectivity/BTConnectivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/samsung/accessory/manager/connectivity/BTConnectivity;Lcom/samsung/accessory/manager/connectivity/BTConnectivity$1;)V
    .registers 3
    .param p1, "x0"    # Lcom/samsung/accessory/manager/connectivity/BTConnectivity;
    .param p2, "x1"    # Lcom/samsung/accessory/manager/connectivity/BTConnectivity$1;

    .prologue
    .line 40
    invoke-direct {p0, p1}, <init>(Lcom/samsung/accessory/manager/connectivity/BTConnectivity;)V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 42
    const-string v1, "android.bluetooth.adapter.extra.STATE"

    const/high16 v2, -0x80000000

    invoke-virtual {p2, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    .line 44
    .local v0, "state":I
    packed-switch v0, :pswitch_data_1e

    .line 57
    :goto_b
    :pswitch_b
    return-void

    .line 49
    :pswitch_c
    iget-object v1, p0, this$0:Lcom/samsung/accessory/manager/connectivity/BTConnectivity;

    iget-object v1, v1, Lcom/samsung/accessory/manager/connectivity/BTConnectivity;->mStateChangedCallback:Lcom/samsung/accessory/manager/connectivity/Connectivity$StateChangedCallback;

    const/4 v2, 0x1

    invoke-interface {v1, v2}, Lcom/samsung/accessory/manager/connectivity/Connectivity$StateChangedCallback;->onStateChanged(I)V

    goto :goto_b

    .line 52
    :pswitch_15
    iget-object v1, p0, this$0:Lcom/samsung/accessory/manager/connectivity/BTConnectivity;

    iget-object v1, v1, Lcom/samsung/accessory/manager/connectivity/BTConnectivity;->mStateChangedCallback:Lcom/samsung/accessory/manager/connectivity/Connectivity$StateChangedCallback;

    const/4 v2, 0x2

    invoke-interface {v1, v2}, Lcom/samsung/accessory/manager/connectivity/Connectivity$StateChangedCallback;->onStateChanged(I)V

    goto :goto_b

    .line 44
    :pswitch_data_1e
    .packed-switch 0xa
        :pswitch_15
        :pswitch_b
        :pswitch_c
        :pswitch_b
    .end packed-switch
.end method
