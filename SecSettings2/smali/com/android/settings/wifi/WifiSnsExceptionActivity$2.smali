.class Lcom/android/settings/wifi/WifiSnsExceptionActivity$2;
.super Ljava/lang/Object;
.source "WifiSnsExceptionActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnKeyListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/wifi/WifiSnsExceptionActivity;->showWifiSnsExceptionDialog()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/wifi/WifiSnsExceptionActivity;


# direct methods
.method constructor <init>(Lcom/android/settings/wifi/WifiSnsExceptionActivity;)V
    .locals 0

    .prologue
    .line 100
    iput-object p1, p0, Lcom/android/settings/wifi/WifiSnsExceptionActivity$2;->this$0:Lcom/android/settings/wifi/WifiSnsExceptionActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onKey(Landroid/content/DialogInterface;ILandroid/view/KeyEvent;)Z
    .locals 6
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "keyCode"    # I
    .param p3, "event"    # Landroid/view/KeyEvent;

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 103
    const/4 v4, 0x4

    if-ne p2, v4, :cond_2

    invoke-virtual {p3}, Landroid/view/KeyEvent;->getAction()I

    move-result v4

    if-ne v4, v2, :cond_2

    invoke-virtual {p3}, Landroid/view/KeyEvent;->isCanceled()Z

    move-result v4

    if-nez v4, :cond_2

    .line 104
    iget-object v4, p0, Lcom/android/settings/wifi/WifiSnsExceptionActivity$2;->this$0:Lcom/android/settings/wifi/WifiSnsExceptionActivity;

    # getter for: Lcom/android/settings/wifi/WifiSnsExceptionActivity;->mWifiManager:Landroid/net/wifi/WifiManager;
    invoke-static {v4}, Lcom/android/settings/wifi/WifiSnsExceptionActivity;->access$000(Lcom/android/settings/wifi/WifiSnsExceptionActivity;)Landroid/net/wifi/WifiManager;

    move-result-object v4

    if-eqz v4, :cond_1

    .line 105
    new-instance v1, Landroid/os/Message;

    invoke-direct {v1}, Landroid/os/Message;-><init>()V

    .line 106
    .local v1, "msg":Landroid/os/Message;
    const/16 v4, 0xc9

    iput v4, v1, Landroid/os/Message;->what:I

    .line 107
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 108
    .local v0, "args":Landroid/os/Bundle;
    const-string v4, "keep_connection"

    invoke-virtual {v0, v4, v3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 109
    iput-object v0, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 110
    iget-object v4, p0, Lcom/android/settings/wifi/WifiSnsExceptionActivity$2;->this$0:Lcom/android/settings/wifi/WifiSnsExceptionActivity;

    # getter for: Lcom/android/settings/wifi/WifiSnsExceptionActivity;->mWifiManager:Landroid/net/wifi/WifiManager;
    invoke-static {v4}, Lcom/android/settings/wifi/WifiSnsExceptionActivity;->access$000(Lcom/android/settings/wifi/WifiSnsExceptionActivity;)Landroid/net/wifi/WifiManager;

    move-result-object v4

    invoke-virtual {v4, v1}, Landroid/net/wifi/WifiManager;->callSECApi(Landroid/os/Message;)I

    .line 114
    .end local v0    # "args":Landroid/os/Bundle;
    .end local v1    # "msg":Landroid/os/Message;
    :cond_0
    :goto_0
    iget-object v4, p0, Lcom/android/settings/wifi/WifiSnsExceptionActivity$2;->this$0:Lcom/android/settings/wifi/WifiSnsExceptionActivity;

    const-string v5, "AP_ON"

    invoke-virtual {v4, v5}, Lcom/android/settings/wifi/WifiSnsExceptionActivity;->sendGSIMdata(Ljava/lang/String;)V

    .line 115
    iget-object v4, p0, Lcom/android/settings/wifi/WifiSnsExceptionActivity$2;->this$0:Lcom/android/settings/wifi/WifiSnsExceptionActivity;

    # getter for: Lcom/android/settings/wifi/WifiSnsExceptionActivity;->mContext:Landroid/content/Context;
    invoke-static {v4}, Lcom/android/settings/wifi/WifiSnsExceptionActivity;->access$200(Lcom/android/settings/wifi/WifiSnsExceptionActivity;)Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "wifi_sns_dialog_for_starting_settings"

    invoke-static {v4, v5, v3}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 117
    iget-object v3, p0, Lcom/android/settings/wifi/WifiSnsExceptionActivity$2;->this$0:Lcom/android/settings/wifi/WifiSnsExceptionActivity;

    invoke-virtual {v3}, Lcom/android/settings/wifi/WifiSnsExceptionActivity;->finish()V

    .line 120
    :goto_1
    return v2

    .line 112
    :cond_1
    # getter for: Lcom/android/settings/wifi/WifiSnsExceptionActivity;->DBG:Z
    invoke-static {}, Lcom/android/settings/wifi/WifiSnsExceptionActivity;->access$100()Z

    move-result v4

    if-eqz v4, :cond_0

    const-string v4, "WifiSnsExceptionActivity"

    const-string v5, "WifiManager is null"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_2
    move v2, v3

    .line 120
    goto :goto_1
.end method
