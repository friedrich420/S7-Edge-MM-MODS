.class Lcom/android/settings/wifi/WifiSettings$36;
.super Ljava/lang/Object;
.source "WifiSettings.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/wifi/WifiSettings;->showMaliciousHotspotDialog(Ljava/lang/String;Landroid/net/wifi/WifiConfiguration;ILandroid/net/wifi/WifiManager$ActionListener;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/wifi/WifiSettings;

.field final synthetic val$mBssid:Ljava/lang/String;

.field final synthetic val$mConfig:Landroid/net/wifi/WifiConfiguration;

.field final synthetic val$mListener:Landroid/net/wifi/WifiManager$ActionListener;

.field final synthetic val$mNetworkId:I


# direct methods
.method constructor <init>(Lcom/android/settings/wifi/WifiSettings;Ljava/lang/String;Landroid/net/wifi/WifiConfiguration;ILandroid/net/wifi/WifiManager$ActionListener;)V
    .locals 0

    .prologue
    .line 6070
    iput-object p1, p0, Lcom/android/settings/wifi/WifiSettings$36;->this$0:Lcom/android/settings/wifi/WifiSettings;

    iput-object p2, p0, Lcom/android/settings/wifi/WifiSettings$36;->val$mBssid:Ljava/lang/String;

    iput-object p3, p0, Lcom/android/settings/wifi/WifiSettings$36;->val$mConfig:Landroid/net/wifi/WifiConfiguration;

    iput p4, p0, Lcom/android/settings/wifi/WifiSettings$36;->val$mNetworkId:I

    iput-object p5, p0, Lcom/android/settings/wifi/WifiSettings$36;->val$mListener:Landroid/net/wifi/WifiManager$ActionListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 7
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "position"    # I

    .prologue
    .line 6073
    const-string v4, "WifiSettings"

    const-string v5, "showMaliciousHotspotDialog - CONNECT"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 6075
    iget-object v4, p0, Lcom/android/settings/wifi/WifiSettings$36;->this$0:Lcom/android/settings/wifi/WifiSettings;

    iget-object v4, v4, Lcom/android/settings/wifi/WifiSettings;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v4}, Landroid/net/wifi/WifiManager;->getSBlacklist()Ljava/lang/String;

    move-result-object v3

    .line 6076
    .local v3, "sBlackList":Ljava/lang/String;
    if-eqz v3, :cond_0

    iget-object v4, p0, Lcom/android/settings/wifi/WifiSettings$36;->val$mBssid:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 6077
    iget-object v4, p0, Lcom/android/settings/wifi/WifiSettings$36;->this$0:Lcom/android/settings/wifi/WifiSettings;

    iget-object v4, v4, Lcom/android/settings/wifi/WifiSettings;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v4}, Landroid/net/wifi/WifiManager;->clearSBlacklist()Z

    .line 6079
    :try_start_0
    new-instance v0, Ljava/io/BufferedReader;

    new-instance v4, Ljava/io/StringReader;

    invoke-direct {v4, v3}, Ljava/io/StringReader;-><init>(Ljava/lang/String;)V

    invoke-direct {v0, v4}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 6080
    .local v0, "br":Ljava/io/BufferedReader;
    const/4 v2, 0x0

    .line 6082
    .local v2, "line":Ljava/lang/String;
    :goto_0
    invoke-virtual {v0}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 6083
    if-nez v2, :cond_1

    .line 6094
    .end local v0    # "br":Ljava/io/BufferedReader;
    .end local v2    # "line":Ljava/lang/String;
    :cond_0
    :goto_1
    iget-object v4, p0, Lcom/android/settings/wifi/WifiSettings$36;->val$mConfig:Landroid/net/wifi/WifiConfiguration;

    if-nez v4, :cond_3

    .line 6095
    iget-object v4, p0, Lcom/android/settings/wifi/WifiSettings$36;->this$0:Lcom/android/settings/wifi/WifiSettings;

    iget v5, p0, Lcom/android/settings/wifi/WifiSettings$36;->val$mNetworkId:I

    iget-object v6, p0, Lcom/android/settings/wifi/WifiSettings$36;->val$mListener:Landroid/net/wifi/WifiManager$ActionListener;

    # invokes: Lcom/android/settings/wifi/WifiSettings;->connectNetwork(ILandroid/net/wifi/WifiManager$ActionListener;)V
    invoke-static {v4, v5, v6}, Lcom/android/settings/wifi/WifiSettings;->access$4700(Lcom/android/settings/wifi/WifiSettings;ILandroid/net/wifi/WifiManager$ActionListener;)V

    .line 6099
    :goto_2
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 6100
    return-void

    .line 6084
    .restart local v0    # "br":Ljava/io/BufferedReader;
    .restart local v2    # "line":Ljava/lang/String;
    :cond_1
    :try_start_1
    iget-object v4, p0, Lcom/android/settings/wifi/WifiSettings$36;->val$mBssid:Ljava/lang/String;

    invoke-virtual {v2, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_2

    .line 6085
    iget-object v4, p0, Lcom/android/settings/wifi/WifiSettings$36;->this$0:Lcom/android/settings/wifi/WifiSettings;

    iget-object v4, v4, Lcom/android/settings/wifi/WifiSettings;->mWifiManager:Landroid/net/wifi/WifiManager;

    iget-object v5, p0, Lcom/android/settings/wifi/WifiSettings$36;->val$mBssid:Ljava/lang/String;

    invoke-virtual {v4, v5}, Landroid/net/wifi/WifiManager;->addToSBlacklist(Ljava/lang/String;)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 6090
    .end local v0    # "br":Ljava/io/BufferedReader;
    .end local v2    # "line":Ljava/lang/String;
    :catch_0
    move-exception v1

    .line 6091
    .local v1, "e":Ljava/lang/Exception;
    const-string v4, "WifiSettings"

    invoke-virtual {v1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 6087
    .end local v1    # "e":Ljava/lang/Exception;
    .restart local v0    # "br":Ljava/io/BufferedReader;
    .restart local v2    # "line":Ljava/lang/String;
    :cond_2
    :try_start_2
    const-string v4, "WifiSettings"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Remove "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/android/settings/wifi/WifiSettings$36;->val$mBssid:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "from SBlackList"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_0

    .line 6097
    .end local v0    # "br":Ljava/io/BufferedReader;
    .end local v2    # "line":Ljava/lang/String;
    :cond_3
    iget-object v4, p0, Lcom/android/settings/wifi/WifiSettings$36;->this$0:Lcom/android/settings/wifi/WifiSettings;

    iget-object v5, p0, Lcom/android/settings/wifi/WifiSettings$36;->val$mConfig:Landroid/net/wifi/WifiConfiguration;

    iget-object v6, p0, Lcom/android/settings/wifi/WifiSettings$36;->val$mListener:Landroid/net/wifi/WifiManager$ActionListener;

    # invokes: Lcom/android/settings/wifi/WifiSettings;->connectNetwork(Landroid/net/wifi/WifiConfiguration;Landroid/net/wifi/WifiManager$ActionListener;)V
    invoke-static {v4, v5, v6}, Lcom/android/settings/wifi/WifiSettings;->access$4500(Lcom/android/settings/wifi/WifiSettings;Landroid/net/wifi/WifiConfiguration;Landroid/net/wifi/WifiManager$ActionListener;)V

    goto :goto_2
.end method
