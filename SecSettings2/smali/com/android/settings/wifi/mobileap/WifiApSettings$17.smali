.class Lcom/android/settings/wifi/mobileap/WifiApSettings$17;
.super Ljava/lang/Object;
.source "WifiApSettings.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/wifi/mobileap/WifiApSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/wifi/mobileap/WifiApSettings;


# direct methods
.method constructor <init>(Lcom/android/settings/wifi/mobileap/WifiApSettings;)V
    .locals 0

    .prologue
    .line 1480
    iput-object p1, p0, Lcom/android/settings/wifi/mobileap/WifiApSettings$17;->this$0:Lcom/android/settings/wifi/mobileap/WifiApSettings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 8
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "button"    # I

    .prologue
    .line 1483
    const/4 v5, -0x1

    if-ne p2, v5, :cond_1

    .line 1484
    iget-object v5, p0, Lcom/android/settings/wifi/mobileap/WifiApSettings$17;->this$0:Lcom/android/settings/wifi/mobileap/WifiApSettings;

    # getter for: Lcom/android/settings/wifi/mobileap/WifiApSettings;->mPinDialog:Lcom/android/settings/wifi/mobileap/PinDialog;
    invoke-static {v5}, Lcom/android/settings/wifi/mobileap/WifiApSettings;->access$3400(Lcom/android/settings/wifi/mobileap/WifiApSettings;)Lcom/android/settings/wifi/mobileap/PinDialog;

    move-result-object v5

    if-eqz v5, :cond_1

    .line 1485
    iget-object v5, p0, Lcom/android/settings/wifi/mobileap/WifiApSettings$17;->this$0:Lcom/android/settings/wifi/mobileap/WifiApSettings;

    # getter for: Lcom/android/settings/wifi/mobileap/WifiApSettings;->mPinDialog:Lcom/android/settings/wifi/mobileap/PinDialog;
    invoke-static {v5}, Lcom/android/settings/wifi/mobileap/WifiApSettings;->access$3400(Lcom/android/settings/wifi/mobileap/WifiApSettings;)Lcom/android/settings/wifi/mobileap/PinDialog;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/settings/wifi/mobileap/PinDialog;->getPin()Ljava/lang/String;

    move-result-object v4

    .line 1486
    .local v4, "wps_pin":Ljava/lang/String;
    new-instance v3, Landroid/os/Message;

    invoke-direct {v3}, Landroid/os/Message;-><init>()V

    .line 1487
    .local v3, "msg":Landroid/os/Message;
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 1488
    .local v1, "b":Landroid/os/Bundle;
    const/16 v5, 0xca

    iput v5, v3, Landroid/os/Message;->what:I

    .line 1489
    const-string v5, "cmd_type"

    const-string v6, "wps_check_pin"

    invoke-virtual {v1, v5, v6}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1490
    const-string v5, "wps_pin"

    invoke-virtual {v1, v5, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1491
    iput-object v1, v3, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 1492
    iget-object v5, p0, Lcom/android/settings/wifi/mobileap/WifiApSettings$17;->this$0:Lcom/android/settings/wifi/mobileap/WifiApSettings;

    # getter for: Lcom/android/settings/wifi/mobileap/WifiApSettings;->mWifiManager:Landroid/net/wifi/WifiManager;
    invoke-static {v5}, Lcom/android/settings/wifi/mobileap/WifiApSettings;->access$700(Lcom/android/settings/wifi/mobileap/WifiApSettings;)Landroid/net/wifi/WifiManager;

    move-result-object v5

    invoke-virtual {v5, v3}, Landroid/net/wifi/WifiManager;->callSECStringApi(Landroid/os/Message;)Ljava/lang/String;

    move-result-object v4

    .line 1493
    if-eqz v4, :cond_2

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v5

    const/16 v6, 0x8

    if-eq v5, v6, :cond_0

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v5

    const/4 v6, 0x4

    if-ne v5, v6, :cond_2

    .line 1494
    :cond_0
    iget-object v5, p0, Lcom/android/settings/wifi/mobileap/WifiApSettings$17;->this$0:Lcom/android/settings/wifi/mobileap/WifiApSettings;

    # setter for: Lcom/android/settings/wifi/mobileap/WifiApSettings;->wps_tether_pin:Ljava/lang/String;
    invoke-static {v5, v4}, Lcom/android/settings/wifi/mobileap/WifiApSettings;->access$3502(Lcom/android/settings/wifi/mobileap/WifiApSettings;Ljava/lang/String;)Ljava/lang/String;

    .line 1495
    const-string v5, "WifiApSettings"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "GOT THE VALUE "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/android/settings/wifi/mobileap/WifiApSettings$17;->this$0:Lcom/android/settings/wifi/mobileap/WifiApSettings;

    # getter for: Lcom/android/settings/wifi/mobileap/WifiApSettings;->wps_tether_pin:Ljava/lang/String;
    invoke-static {v7}, Lcom/android/settings/wifi/mobileap/WifiApSettings;->access$3500(Lcom/android/settings/wifi/mobileap/WifiApSettings;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1496
    iget-object v5, p0, Lcom/android/settings/wifi/mobileap/WifiApSettings$17;->this$0:Lcom/android/settings/wifi/mobileap/WifiApSettings;

    const/16 v6, 0x3a

    # invokes: Lcom/android/settings/wifi/mobileap/WifiApSettings;->showDialog(I)V
    invoke-static {v5, v6}, Lcom/android/settings/wifi/mobileap/WifiApSettings;->access$3600(Lcom/android/settings/wifi/mobileap/WifiApSettings;I)V

    .line 1512
    .end local v1    # "b":Landroid/os/Bundle;
    .end local v3    # "msg":Landroid/os/Message;
    .end local v4    # "wps_pin":Ljava/lang/String;
    :cond_1
    :goto_0
    return-void

    .line 1498
    .restart local v1    # "b":Landroid/os/Bundle;
    .restart local v3    # "msg":Landroid/os/Message;
    .restart local v4    # "wps_pin":Ljava/lang/String;
    :cond_2
    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v5, p0, Lcom/android/settings/wifi/mobileap/WifiApSettings$17;->this$0:Lcom/android/settings/wifi/mobileap/WifiApSettings;

    invoke-virtual {v5}, Lcom/android/settings/wifi/mobileap/WifiApSettings;->getActivity()Landroid/app/Activity;

    move-result-object v5

    invoke-direct {v0, v5}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 1499
    .local v0, "alertDialog":Landroid/app/AlertDialog$Builder;
    const v5, 0x7f0e03cd

    invoke-virtual {v0, v5}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 1500
    iget-object v5, p0, Lcom/android/settings/wifi/mobileap/WifiApSettings$17;->this$0:Lcom/android/settings/wifi/mobileap/WifiApSettings;

    const v6, 0x7f0e03c7

    invoke-virtual {v5, v6}, Lcom/android/settings/wifi/mobileap/WifiApSettings;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 1501
    const/4 v5, 0x1

    invoke-virtual {v0, v5}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    .line 1502
    const-string v5, "OK"

    new-instance v6, Lcom/android/settings/wifi/mobileap/WifiApSettings$17$1;

    invoke-direct {v6, p0}, Lcom/android/settings/wifi/mobileap/WifiApSettings$17$1;-><init>(Lcom/android/settings/wifi/mobileap/WifiApSettings$17;)V

    invoke-virtual {v0, v5, v6}, Landroid/app/AlertDialog$Builder;->setNeutralButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 1507
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v2

    .line 1508
    .local v2, "mAlertDialog":Landroid/app/AlertDialog;
    invoke-virtual {v2}, Landroid/app/AlertDialog;->show()V

    goto :goto_0
.end method
