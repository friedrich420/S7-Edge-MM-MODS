.class Lcom/android/settings/wifi/WifiEnabler$SwitchHandler;
.super Landroid/os/Handler;
.source "WifiEnabler.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/wifi/WifiEnabler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "SwitchHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/wifi/WifiEnabler;


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 511
    iget-object v0, p0, Lcom/android/settings/wifi/WifiEnabler$SwitchHandler;->this$0:Lcom/android/settings/wifi/WifiEnabler;

    # invokes: Lcom/android/settings/wifi/WifiEnabler;->isWifiBlocked()Z
    invoke-static {v0}, Lcom/android/settings/wifi/WifiEnabler;->access$600(Lcom/android/settings/wifi/WifiEnabler;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 524
    :goto_0
    return-void

    .line 515
    :cond_0
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 523
    :goto_1
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    goto :goto_0

    .line 517
    :pswitch_0
    iget-object v0, p0, Lcom/android/settings/wifi/WifiEnabler$SwitchHandler;->this$0:Lcom/android/settings/wifi/WifiEnabler;

    const/4 v1, 0x1

    # invokes: Lcom/android/settings/wifi/WifiEnabler;->setSwitchChecked(Z)V
    invoke-static {v0, v1}, Lcom/android/settings/wifi/WifiEnabler;->access$700(Lcom/android/settings/wifi/WifiEnabler;Z)V

    goto :goto_1

    .line 520
    :pswitch_1
    iget-object v0, p0, Lcom/android/settings/wifi/WifiEnabler$SwitchHandler;->this$0:Lcom/android/settings/wifi/WifiEnabler;

    const/4 v1, 0x0

    # invokes: Lcom/android/settings/wifi/WifiEnabler;->setSwitchChecked(Z)V
    invoke-static {v0, v1}, Lcom/android/settings/wifi/WifiEnabler;->access$700(Lcom/android/settings/wifi/WifiEnabler;Z)V

    goto :goto_1

    .line 515
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
