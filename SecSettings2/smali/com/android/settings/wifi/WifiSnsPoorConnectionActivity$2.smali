.class Lcom/android/settings/wifi/WifiSnsPoorConnectionActivity$2;
.super Ljava/lang/Object;
.source "WifiSnsPoorConnectionActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


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
    .line 129
    iput-object p1, p0, Lcom/android/settings/wifi/WifiSnsPoorConnectionActivity$2;->this$0:Lcom/android/settings/wifi/WifiSnsPoorConnectionActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "position"    # I

    .prologue
    const/4 v2, 0x1

    .line 132
    if-nez p1, :cond_0

    .line 142
    :goto_0
    return-void

    .line 134
    :cond_0
    const-string v0, "WifiSnsPoorConnectionActivity"

    const-string v1, "CANCEL pressed"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 135
    iget-object v0, p0, Lcom/android/settings/wifi/WifiSnsPoorConnectionActivity$2;->this$0:Lcom/android/settings/wifi/WifiSnsPoorConnectionActivity;

    # getter for: Lcom/android/settings/wifi/WifiSnsPoorConnectionActivity;->mContext:Landroid/content/Context;
    invoke-static {v0}, Lcom/android/settings/wifi/WifiSnsPoorConnectionActivity;->access$000(Lcom/android/settings/wifi/WifiSnsPoorConnectionActivity;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "wifi_watchdog_poor_network_test_enabled"

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-ne v0, v2, :cond_1

    .line 137
    iget-object v0, p0, Lcom/android/settings/wifi/WifiSnsPoorConnectionActivity$2;->this$0:Lcom/android/settings/wifi/WifiSnsPoorConnectionActivity;

    const-string v1, "POOR_DIALOG_ON"

    invoke-virtual {v0, v1}, Lcom/android/settings/wifi/WifiSnsPoorConnectionActivity;->sendGSIMdata(Ljava/lang/String;)V

    .line 141
    :goto_1
    iget-object v0, p0, Lcom/android/settings/wifi/WifiSnsPoorConnectionActivity$2;->this$0:Lcom/android/settings/wifi/WifiSnsPoorConnectionActivity;

    invoke-virtual {v0}, Lcom/android/settings/wifi/WifiSnsPoorConnectionActivity;->finish()V

    goto :goto_0

    .line 139
    :cond_1
    iget-object v0, p0, Lcom/android/settings/wifi/WifiSnsPoorConnectionActivity$2;->this$0:Lcom/android/settings/wifi/WifiSnsPoorConnectionActivity;

    const-string v1, "POOR_DIALOG_OFF"

    invoke-virtual {v0, v1}, Lcom/android/settings/wifi/WifiSnsPoorConnectionActivity;->sendGSIMdata(Ljava/lang/String;)V

    goto :goto_1
.end method
