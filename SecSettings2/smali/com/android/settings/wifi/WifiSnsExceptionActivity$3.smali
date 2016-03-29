.class Lcom/android/settings/wifi/WifiSnsExceptionActivity$3;
.super Ljava/lang/Object;
.source "WifiSnsExceptionActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/wifi/WifiSnsExceptionActivity;
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
    .line 132
    iput-object p1, p0, Lcom/android/settings/wifi/WifiSnsExceptionActivity$3;->this$0:Lcom/android/settings/wifi/WifiSnsExceptionActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 6
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "button"    # I

    .prologue
    const/4 v3, 0x0

    const/4 v5, -0x1

    .line 135
    if-nez p1, :cond_0

    .line 157
    :goto_0
    return-void

    .line 137
    :cond_0
    iget-object v2, p0, Lcom/android/settings/wifi/WifiSnsExceptionActivity$3;->this$0:Lcom/android/settings/wifi/WifiSnsExceptionActivity;

    # getter for: Lcom/android/settings/wifi/WifiSnsExceptionActivity;->mWifiManager:Landroid/net/wifi/WifiManager;
    invoke-static {v2}, Lcom/android/settings/wifi/WifiSnsExceptionActivity;->access$000(Lcom/android/settings/wifi/WifiSnsExceptionActivity;)Landroid/net/wifi/WifiManager;

    move-result-object v2

    if-eqz v2, :cond_3

    .line 138
    new-instance v1, Landroid/os/Message;

    invoke-direct {v1}, Landroid/os/Message;-><init>()V

    .line 139
    .local v1, "msg":Landroid/os/Message;
    const/16 v2, 0xc9

    iput v2, v1, Landroid/os/Message;->what:I

    .line 140
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 141
    .local v0, "args":Landroid/os/Bundle;
    const-string v4, "keep_connection"

    if-ne p2, v5, :cond_2

    const/4 v2, 0x1

    :goto_1
    invoke-virtual {v0, v4, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 142
    iput-object v0, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 143
    iget-object v2, p0, Lcom/android/settings/wifi/WifiSnsExceptionActivity$3;->this$0:Lcom/android/settings/wifi/WifiSnsExceptionActivity;

    # getter for: Lcom/android/settings/wifi/WifiSnsExceptionActivity;->mWifiManager:Landroid/net/wifi/WifiManager;
    invoke-static {v2}, Lcom/android/settings/wifi/WifiSnsExceptionActivity;->access$000(Lcom/android/settings/wifi/WifiSnsExceptionActivity;)Landroid/net/wifi/WifiManager;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/net/wifi/WifiManager;->callSECApi(Landroid/os/Message;)I

    .line 148
    .end local v0    # "args":Landroid/os/Bundle;
    .end local v1    # "msg":Landroid/os/Message;
    :cond_1
    :goto_2
    if-ne p2, v5, :cond_4

    .line 149
    iget-object v2, p0, Lcom/android/settings/wifi/WifiSnsExceptionActivity$3;->this$0:Lcom/android/settings/wifi/WifiSnsExceptionActivity;

    const-string v4, "AP_OFF"

    invoke-virtual {v2, v4}, Lcom/android/settings/wifi/WifiSnsExceptionActivity;->sendGSIMdata(Ljava/lang/String;)V

    .line 154
    :goto_3
    iget-object v2, p0, Lcom/android/settings/wifi/WifiSnsExceptionActivity$3;->this$0:Lcom/android/settings/wifi/WifiSnsExceptionActivity;

    # getter for: Lcom/android/settings/wifi/WifiSnsExceptionActivity;->mContext:Landroid/content/Context;
    invoke-static {v2}, Lcom/android/settings/wifi/WifiSnsExceptionActivity;->access$200(Lcom/android/settings/wifi/WifiSnsExceptionActivity;)Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v4, "wifi_sns_dialog_for_starting_settings"

    invoke-static {v2, v4, v3}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 156
    iget-object v2, p0, Lcom/android/settings/wifi/WifiSnsExceptionActivity$3;->this$0:Lcom/android/settings/wifi/WifiSnsExceptionActivity;

    invoke-virtual {v2}, Lcom/android/settings/wifi/WifiSnsExceptionActivity;->finish()V

    goto :goto_0

    .restart local v0    # "args":Landroid/os/Bundle;
    .restart local v1    # "msg":Landroid/os/Message;
    :cond_2
    move v2, v3

    .line 141
    goto :goto_1

    .line 145
    .end local v0    # "args":Landroid/os/Bundle;
    .end local v1    # "msg":Landroid/os/Message;
    :cond_3
    # getter for: Lcom/android/settings/wifi/WifiSnsExceptionActivity;->DBG:Z
    invoke-static {}, Lcom/android/settings/wifi/WifiSnsExceptionActivity;->access$100()Z

    move-result v2

    if-eqz v2, :cond_1

    const-string v2, "WifiSnsExceptionActivity"

    const-string v4, "WifiManager is null"

    invoke-static {v2, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 151
    :cond_4
    iget-object v2, p0, Lcom/android/settings/wifi/WifiSnsExceptionActivity$3;->this$0:Lcom/android/settings/wifi/WifiSnsExceptionActivity;

    const-string v4, "AP_ON"

    invoke-virtual {v2, v4}, Lcom/android/settings/wifi/WifiSnsExceptionActivity;->sendGSIMdata(Ljava/lang/String;)V

    goto :goto_3
.end method
