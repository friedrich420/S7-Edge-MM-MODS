.class Lcom/android/settings/TetherSettings$13;
.super Ljava/lang/Object;
.source "TetherSettings.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/TetherSettings;->onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/TetherSettings;


# direct methods
.method constructor <init>(Lcom/android/settings/TetherSettings;)V
    .locals 0

    .prologue
    .line 1186
    iput-object p1, p0, Lcom/android/settings/TetherSettings$13;->this$0:Lcom/android/settings/TetherSettings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3
    .param p1, "arg0"    # Landroid/content/DialogInterface;
    .param p2, "arg1"    # I

    .prologue
    .line 1189
    iget-object v1, p0, Lcom/android/settings/TetherSettings$13;->this$0:Lcom/android/settings/TetherSettings;

    iget-object v0, p0, Lcom/android/settings/TetherSettings$13;->this$0:Lcom/android/settings/TetherSettings;

    const-string v2, "wifi"

    invoke-virtual {v0, v2}, Lcom/android/settings/TetherSettings;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiManager;

    # setter for: Lcom/android/settings/TetherSettings;->mWifiManager:Landroid/net/wifi/WifiManager;
    invoke-static {v1, v0}, Lcom/android/settings/TetherSettings;->access$802(Lcom/android/settings/TetherSettings;Landroid/net/wifi/WifiManager;)Landroid/net/wifi/WifiManager;

    .line 1190
    iget-object v0, p0, Lcom/android/settings/TetherSettings$13;->this$0:Lcom/android/settings/TetherSettings;

    # getter for: Lcom/android/settings/TetherSettings;->mWifiManager:Landroid/net/wifi/WifiManager;
    invoke-static {v0}, Lcom/android/settings/TetherSettings;->access$800(Lcom/android/settings/TetherSettings;)Landroid/net/wifi/WifiManager;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/net/wifi/WifiManager;->setWifiEnabled(Z)Z

    .line 1191
    iget-object v0, p0, Lcom/android/settings/TetherSettings$13;->this$0:Lcom/android/settings/TetherSettings;

    const/4 v1, 0x1

    # invokes: Lcom/android/settings/TetherSettings;->startProvisioningIfNecessary(I)V
    invoke-static {v0, v1}, Lcom/android/settings/TetherSettings;->access$400(Lcom/android/settings/TetherSettings;I)V

    .line 1192
    return-void
.end method
