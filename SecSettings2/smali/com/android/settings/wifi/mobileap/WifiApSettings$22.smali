.class Lcom/android/settings/wifi/mobileap/WifiApSettings$22;
.super Ljava/lang/Object;
.source "WifiApSettings.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/wifi/mobileap/WifiApSettings;->warnForOpenNetwork()V
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
    .line 1707
    iput-object p1, p0, Lcom/android/settings/wifi/mobileap/WifiApSettings$22;->this$0:Lcom/android/settings/wifi/mobileap/WifiApSettings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 1711
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 1712
    iget-object v0, p0, Lcom/android/settings/wifi/mobileap/WifiApSettings$22;->this$0:Lcom/android/settings/wifi/mobileap/WifiApSettings;

    # invokes: Lcom/android/settings/wifi/mobileap/WifiApSettings;->setWifiApConfigData()V
    invoke-static {v0}, Lcom/android/settings/wifi/mobileap/WifiApSettings;->access$4800(Lcom/android/settings/wifi/mobileap/WifiApSettings;)V

    .line 1713
    return-void
.end method
