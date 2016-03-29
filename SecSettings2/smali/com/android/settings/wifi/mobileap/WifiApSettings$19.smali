.class Lcom/android/settings/wifi/mobileap/WifiApSettings$19;
.super Ljava/lang/Object;
.source "WifiApSettings.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/wifi/mobileap/WifiApSettings;->warnForHiddenNetwork()V
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
    .line 1668
    iput-object p1, p0, Lcom/android/settings/wifi/mobileap/WifiApSettings$19;->this$0:Lcom/android/settings/wifi/mobileap/WifiApSettings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 1672
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 1673
    iget-object v0, p0, Lcom/android/settings/wifi/mobileap/WifiApSettings$19;->this$0:Lcom/android/settings/wifi/mobileap/WifiApSettings;

    # getter for: Lcom/android/settings/wifi/mobileap/WifiApSettings;->mWifiConfig:Landroid/net/wifi/WifiConfiguration;
    invoke-static {v0}, Lcom/android/settings/wifi/mobileap/WifiApSettings;->access$800(Lcom/android/settings/wifi/mobileap/WifiApSettings;)Landroid/net/wifi/WifiConfiguration;

    move-result-object v0

    iget-object v0, v0, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/BitSet;->get(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1674
    iget-object v0, p0, Lcom/android/settings/wifi/mobileap/WifiApSettings$19;->this$0:Lcom/android/settings/wifi/mobileap/WifiApSettings;

    # invokes: Lcom/android/settings/wifi/mobileap/WifiApSettings;->warnForOpenNetwork()V
    invoke-static {v0}, Lcom/android/settings/wifi/mobileap/WifiApSettings;->access$3900(Lcom/android/settings/wifi/mobileap/WifiApSettings;)V

    .line 1679
    :goto_0
    return-void

    .line 1676
    :cond_0
    iget-object v0, p0, Lcom/android/settings/wifi/mobileap/WifiApSettings$19;->this$0:Lcom/android/settings/wifi/mobileap/WifiApSettings;

    # invokes: Lcom/android/settings/wifi/mobileap/WifiApSettings;->setWifiApConfigData()V
    invoke-static {v0}, Lcom/android/settings/wifi/mobileap/WifiApSettings;->access$4800(Lcom/android/settings/wifi/mobileap/WifiApSettings;)V

    goto :goto_0
.end method
