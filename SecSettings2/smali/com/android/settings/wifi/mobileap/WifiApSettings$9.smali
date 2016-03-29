.class Lcom/android/settings/wifi/mobileap/WifiApSettings$9;
.super Ljava/lang/Object;
.source "WifiApSettings.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/wifi/mobileap/WifiApSettings;->onCreateDialog(I)Landroid/app/Dialog;
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
    .line 1270
    iput-object p1, p0, Lcom/android/settings/wifi/mobileap/WifiApSettings$9;->this$0:Lcom/android/settings/wifi/mobileap/WifiApSettings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 5
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 1272
    iget-object v2, p0, Lcom/android/settings/wifi/mobileap/WifiApSettings$9;->this$0:Lcom/android/settings/wifi/mobileap/WifiApSettings;

    add-int/lit8 v3, p2, -0x1

    # setter for: Lcom/android/settings/wifi/mobileap/WifiApSettings;->mSelectedTimeoutValue:I
    invoke-static {v2, v3}, Lcom/android/settings/wifi/mobileap/WifiApSettings;->access$1802(Lcom/android/settings/wifi/mobileap/WifiApSettings;I)I

    .line 1273
    iget-object v2, p0, Lcom/android/settings/wifi/mobileap/WifiApSettings$9;->this$0:Lcom/android/settings/wifi/mobileap/WifiApSettings;

    iget-object v3, p0, Lcom/android/settings/wifi/mobileap/WifiApSettings$9;->this$0:Lcom/android/settings/wifi/mobileap/WifiApSettings;

    iget-object v4, p0, Lcom/android/settings/wifi/mobileap/WifiApSettings$9;->this$0:Lcom/android/settings/wifi/mobileap/WifiApSettings;

    # getter for: Lcom/android/settings/wifi/mobileap/WifiApSettings;->mSelectedTimeoutValue:I
    invoke-static {v4}, Lcom/android/settings/wifi/mobileap/WifiApSettings;->access$1800(Lcom/android/settings/wifi/mobileap/WifiApSettings;)I

    move-result v4

    # invokes: Lcom/android/settings/wifi/mobileap/WifiApSettings;->getTimeoutValueFromIndex(I)I
    invoke-static {v3, v4}, Lcom/android/settings/wifi/mobileap/WifiApSettings;->access$1900(Lcom/android/settings/wifi/mobileap/WifiApSettings;I)I

    move-result v3

    # invokes: Lcom/android/settings/wifi/mobileap/WifiApSettings;->setTimeout(I)V
    invoke-static {v2, v3}, Lcom/android/settings/wifi/mobileap/WifiApSettings;->access$2000(Lcom/android/settings/wifi/mobileap/WifiApSettings;I)V

    .line 1275
    new-instance v1, Landroid/os/Message;

    invoke-direct {v1}, Landroid/os/Message;-><init>()V

    .line 1276
    .local v1, "msg":Landroid/os/Message;
    const/16 v2, 0x4d

    iput v2, v1, Landroid/os/Message;->what:I

    .line 1277
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 1278
    .local v0, "args":Landroid/os/Bundle;
    const-string v2, "feature"

    const-string v3, "MHTO"

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1279
    iget-object v2, p0, Lcom/android/settings/wifi/mobileap/WifiApSettings$9;->this$0:Lcom/android/settings/wifi/mobileap/WifiApSettings;

    # getter for: Lcom/android/settings/wifi/mobileap/WifiApSettings;->mSelectedTimeoutValue:I
    invoke-static {v2}, Lcom/android/settings/wifi/mobileap/WifiApSettings;->access$1800(Lcom/android/settings/wifi/mobileap/WifiApSettings;)I

    move-result v2

    if-nez v2, :cond_1

    const-string v2, "extra"

    const-string v3, "NEVER TIMEOUT"

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1285
    :cond_0
    :goto_0
    iput-object v0, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 1286
    iget-object v2, p0, Lcom/android/settings/wifi/mobileap/WifiApSettings$9;->this$0:Lcom/android/settings/wifi/mobileap/WifiApSettings;

    # getter for: Lcom/android/settings/wifi/mobileap/WifiApSettings;->mWifiManager:Landroid/net/wifi/WifiManager;
    invoke-static {v2}, Lcom/android/settings/wifi/mobileap/WifiApSettings;->access$700(Lcom/android/settings/wifi/mobileap/WifiApSettings;)Landroid/net/wifi/WifiManager;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/net/wifi/WifiManager;->callSECApi(Landroid/os/Message;)I

    .line 1288
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 1289
    return-void

    .line 1280
    :cond_1
    iget-object v2, p0, Lcom/android/settings/wifi/mobileap/WifiApSettings$9;->this$0:Lcom/android/settings/wifi/mobileap/WifiApSettings;

    # getter for: Lcom/android/settings/wifi/mobileap/WifiApSettings;->mSelectedTimeoutValue:I
    invoke-static {v2}, Lcom/android/settings/wifi/mobileap/WifiApSettings;->access$1800(Lcom/android/settings/wifi/mobileap/WifiApSettings;)I

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_2

    const-string v2, "extra"

    const-string v3, "5 MINS"

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 1281
    :cond_2
    iget-object v2, p0, Lcom/android/settings/wifi/mobileap/WifiApSettings$9;->this$0:Lcom/android/settings/wifi/mobileap/WifiApSettings;

    # getter for: Lcom/android/settings/wifi/mobileap/WifiApSettings;->mSelectedTimeoutValue:I
    invoke-static {v2}, Lcom/android/settings/wifi/mobileap/WifiApSettings;->access$1800(Lcom/android/settings/wifi/mobileap/WifiApSettings;)I

    move-result v2

    const/4 v3, 0x2

    if-ne v2, v3, :cond_3

    const-string v2, "extra"

    const-string v3, "10 MINS"

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 1282
    :cond_3
    iget-object v2, p0, Lcom/android/settings/wifi/mobileap/WifiApSettings$9;->this$0:Lcom/android/settings/wifi/mobileap/WifiApSettings;

    # getter for: Lcom/android/settings/wifi/mobileap/WifiApSettings;->mSelectedTimeoutValue:I
    invoke-static {v2}, Lcom/android/settings/wifi/mobileap/WifiApSettings;->access$1800(Lcom/android/settings/wifi/mobileap/WifiApSettings;)I

    move-result v2

    const/4 v3, 0x3

    if-ne v2, v3, :cond_4

    const-string v2, "extra"

    const-string v3, "20 MINS"

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 1283
    :cond_4
    iget-object v2, p0, Lcom/android/settings/wifi/mobileap/WifiApSettings$9;->this$0:Lcom/android/settings/wifi/mobileap/WifiApSettings;

    # getter for: Lcom/android/settings/wifi/mobileap/WifiApSettings;->mSelectedTimeoutValue:I
    invoke-static {v2}, Lcom/android/settings/wifi/mobileap/WifiApSettings;->access$1800(Lcom/android/settings/wifi/mobileap/WifiApSettings;)I

    move-result v2

    const/4 v3, 0x4

    if-ne v2, v3, :cond_5

    const-string v2, "extra"

    const-string v3, "30 MINS"

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 1284
    :cond_5
    iget-object v2, p0, Lcom/android/settings/wifi/mobileap/WifiApSettings$9;->this$0:Lcom/android/settings/wifi/mobileap/WifiApSettings;

    # getter for: Lcom/android/settings/wifi/mobileap/WifiApSettings;->mSelectedTimeoutValue:I
    invoke-static {v2}, Lcom/android/settings/wifi/mobileap/WifiApSettings;->access$1800(Lcom/android/settings/wifi/mobileap/WifiApSettings;)I

    move-result v2

    const/4 v3, 0x5

    if-ne v2, v3, :cond_0

    const-string v2, "extra"

    const-string v3, "60 MINS"

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method
