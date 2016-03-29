.class Lcom/android/settings/wifi/mobileap/WifiApSettings$18$2;
.super Ljava/lang/Object;
.source "WifiApSettings.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/wifi/mobileap/WifiApSettings$18;->onClick(Landroid/content/DialogInterface;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/settings/wifi/mobileap/WifiApSettings$18;


# direct methods
.method constructor <init>(Lcom/android/settings/wifi/mobileap/WifiApSettings$18;)V
    .locals 0

    .prologue
    .line 1582
    iput-object p1, p0, Lcom/android/settings/wifi/mobileap/WifiApSettings$18$2;->this$1:Lcom/android/settings/wifi/mobileap/WifiApSettings$18;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 1585
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 1586
    iget-object v0, p0, Lcom/android/settings/wifi/mobileap/WifiApSettings$18$2;->this$1:Lcom/android/settings/wifi/mobileap/WifiApSettings$18;

    iget-object v0, v0, Lcom/android/settings/wifi/mobileap/WifiApSettings$18;->this$0:Lcom/android/settings/wifi/mobileap/WifiApSettings;

    iget-object v1, p0, Lcom/android/settings/wifi/mobileap/WifiApSettings$18$2;->this$1:Lcom/android/settings/wifi/mobileap/WifiApSettings$18;

    iget-object v1, v1, Lcom/android/settings/wifi/mobileap/WifiApSettings$18;->this$0:Lcom/android/settings/wifi/mobileap/WifiApSettings;

    # getter for: Lcom/android/settings/wifi/mobileap/WifiApSettings;->mOldWifiConfig:Landroid/net/wifi/WifiConfiguration;
    invoke-static {v1}, Lcom/android/settings/wifi/mobileap/WifiApSettings;->access$1200(Lcom/android/settings/wifi/mobileap/WifiApSettings;)Landroid/net/wifi/WifiConfiguration;

    move-result-object v1

    # setter for: Lcom/android/settings/wifi/mobileap/WifiApSettings;->mWifiConfig:Landroid/net/wifi/WifiConfiguration;
    invoke-static {v0, v1}, Lcom/android/settings/wifi/mobileap/WifiApSettings;->access$802(Lcom/android/settings/wifi/mobileap/WifiApSettings;Landroid/net/wifi/WifiConfiguration;)Landroid/net/wifi/WifiConfiguration;

    .line 1587
    return-void
.end method
