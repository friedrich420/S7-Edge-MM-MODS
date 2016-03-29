.class Lcom/android/settings/wifi/WifiSettings$21;
.super Ljava/lang/Object;
.source "WifiSettings.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/wifi/WifiSettings;->showPasspointWarningDialog()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/wifi/WifiSettings;


# direct methods
.method constructor <init>(Lcom/android/settings/wifi/WifiSettings;)V
    .locals 0

    .prologue
    .line 2492
    iput-object p1, p0, Lcom/android/settings/wifi/WifiSettings$21;->this$0:Lcom/android/settings/wifi/WifiSettings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "position"    # I

    .prologue
    .line 2496
    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettings$21;->this$0:Lcom/android/settings/wifi/WifiSettings;

    iget-object v0, v0, Lcom/android/settings/wifi/WifiSettings;->mWifiManager:Landroid/net/wifi/WifiManager;

    const-string v1, "USER_ON"

    invoke-static {v0, v1}, Lcom/android/settings/wifi/WifiSettings;->insertPasspointLogging(Landroid/net/wifi/WifiManager;Ljava/lang/String;)V

    .line 2497
    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettings$21;->this$0:Lcom/android/settings/wifi/WifiSettings;

    const/4 v1, 0x1

    # invokes: Lcom/android/settings/wifi/WifiSettings;->changeHotspot20(Z)V
    invoke-static {v0, v1}, Lcom/android/settings/wifi/WifiSettings;->access$3200(Lcom/android/settings/wifi/WifiSettings;Z)V

    .line 2498
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 2499
    return-void
.end method
