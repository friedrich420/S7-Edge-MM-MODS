.class Lcom/android/settings/wifi/WifiSettings$23;
.super Ljava/lang/Object;
.source "WifiSettings.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/wifi/WifiSettings;->onPasspointPressed()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/wifi/WifiSettings;

.field final synthetic val$mPasspointSelected:I


# direct methods
.method constructor <init>(Lcom/android/settings/wifi/WifiSettings;I)V
    .locals 0

    .prologue
    .line 2520
    iput-object p1, p0, Lcom/android/settings/wifi/WifiSettings$23;->this$0:Lcom/android/settings/wifi/WifiSettings;

    iput p2, p0, Lcom/android/settings/wifi/WifiSettings$23;->val$mPasspointSelected:I

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

    .line 2523
    if-nez p1, :cond_0

    .line 2542
    :goto_0
    return-void

    .line 2526
    :cond_0
    if-ne p2, v2, :cond_2

    .line 2528
    const-string v0, "DCM"

    sget-object v1, Lcom/android/settings/Utils;->CONFIG_OP_BRANDING:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget v0, p0, Lcom/android/settings/wifi/WifiSettings$23;->val$mPasspointSelected:I

    if-nez v0, :cond_1

    .line 2529
    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettings$23;->this$0:Lcom/android/settings/wifi/WifiSettings;

    invoke-virtual {v0}, Lcom/android/settings/wifi/WifiSettings;->showPasspointWarningDialog()V

    .line 2541
    :goto_1
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    goto :goto_0

    .line 2532
    :cond_1
    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettings$23;->this$0:Lcom/android/settings/wifi/WifiSettings;

    iget-object v0, v0, Lcom/android/settings/wifi/WifiSettings;->mWifiManager:Landroid/net/wifi/WifiManager;

    const-string v1, "USER_ON"

    invoke-static {v0, v1}, Lcom/android/settings/wifi/WifiSettings;->insertPasspointLogging(Landroid/net/wifi/WifiManager;Ljava/lang/String;)V

    .line 2533
    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettings$23;->this$0:Lcom/android/settings/wifi/WifiSettings;

    # invokes: Lcom/android/settings/wifi/WifiSettings;->changeHotspot20(Z)V
    invoke-static {v0, v2}, Lcom/android/settings/wifi/WifiSettings;->access$3200(Lcom/android/settings/wifi/WifiSettings;Z)V

    goto :goto_1

    .line 2538
    :cond_2
    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettings$23;->this$0:Lcom/android/settings/wifi/WifiSettings;

    iget-object v0, v0, Lcom/android/settings/wifi/WifiSettings;->mWifiManager:Landroid/net/wifi/WifiManager;

    const-string v1, "USER_OFF"

    invoke-static {v0, v1}, Lcom/android/settings/wifi/WifiSettings;->insertPasspointLogging(Landroid/net/wifi/WifiManager;Ljava/lang/String;)V

    .line 2539
    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettings$23;->this$0:Lcom/android/settings/wifi/WifiSettings;

    const/4 v1, 0x0

    # invokes: Lcom/android/settings/wifi/WifiSettings;->changeHotspot20(Z)V
    invoke-static {v0, v1}, Lcom/android/settings/wifi/WifiSettings;->access$3200(Lcom/android/settings/wifi/WifiSettings;Z)V

    goto :goto_1
.end method
