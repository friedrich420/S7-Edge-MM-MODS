.class Lcom/android/settings/wifi/WifiSnsPoorConnectionActivity$3;
.super Ljava/lang/Object;
.source "WifiSnsPoorConnectionActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnKeyListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/wifi/WifiSnsPoorConnectionActivity;->showSnsPoorConnectionDialog()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/wifi/WifiSnsPoorConnectionActivity;


# direct methods
.method constructor <init>(Lcom/android/settings/wifi/WifiSnsPoorConnectionActivity;)V
    .locals 0

    .prologue
    .line 144
    iput-object p1, p0, Lcom/android/settings/wifi/WifiSnsPoorConnectionActivity$3;->this$0:Lcom/android/settings/wifi/WifiSnsPoorConnectionActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onKey(Landroid/content/DialogInterface;ILandroid/view/KeyEvent;)Z
    .locals 3
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "keyCode"    # I
    .param p3, "event"    # Landroid/view/KeyEvent;

    .prologue
    const/4 v0, 0x1

    .line 147
    const-string v1, "WifiSnsPoorConnectionActivity"

    const-string v2, "BACK key pressed"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 148
    const/4 v1, 0x4

    if-ne p2, v1, :cond_1

    invoke-virtual {p3}, Landroid/view/KeyEvent;->getAction()I

    move-result v1

    if-ne v1, v0, :cond_1

    invoke-virtual {p3}, Landroid/view/KeyEvent;->isCanceled()Z

    move-result v1

    if-nez v1, :cond_1

    .line 150
    iget-object v1, p0, Lcom/android/settings/wifi/WifiSnsPoorConnectionActivity$3;->this$0:Lcom/android/settings/wifi/WifiSnsPoorConnectionActivity;

    # getter for: Lcom/android/settings/wifi/WifiSnsPoorConnectionActivity;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/android/settings/wifi/WifiSnsPoorConnectionActivity;->access$000(Lcom/android/settings/wifi/WifiSnsPoorConnectionActivity;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "wifi_watchdog_poor_network_test_enabled"

    invoke-static {v1, v2, v0}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-ne v1, v0, :cond_0

    .line 152
    iget-object v1, p0, Lcom/android/settings/wifi/WifiSnsPoorConnectionActivity$3;->this$0:Lcom/android/settings/wifi/WifiSnsPoorConnectionActivity;

    const-string v2, "POOR_DIALOG_ON"

    invoke-virtual {v1, v2}, Lcom/android/settings/wifi/WifiSnsPoorConnectionActivity;->sendGSIMdata(Ljava/lang/String;)V

    .line 156
    :goto_0
    iget-object v1, p0, Lcom/android/settings/wifi/WifiSnsPoorConnectionActivity$3;->this$0:Lcom/android/settings/wifi/WifiSnsPoorConnectionActivity;

    invoke-virtual {v1}, Lcom/android/settings/wifi/WifiSnsPoorConnectionActivity;->finish()V

    .line 159
    :goto_1
    return v0

    .line 154
    :cond_0
    iget-object v1, p0, Lcom/android/settings/wifi/WifiSnsPoorConnectionActivity$3;->this$0:Lcom/android/settings/wifi/WifiSnsPoorConnectionActivity;

    const-string v2, "POOR_DIALOG_OFF"

    invoke-virtual {v1, v2}, Lcom/android/settings/wifi/WifiSnsPoorConnectionActivity;->sendGSIMdata(Ljava/lang/String;)V

    goto :goto_0

    .line 159
    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method
