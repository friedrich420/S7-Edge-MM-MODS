.class Lcom/android/settings/wifi/WifiSecSetupActivity$CheckInternet;
.super Landroid/os/AsyncTask;
.source "WifiSecSetupActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/wifi/WifiSecSetupActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "CheckInternet"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Landroid/net/NetworkInfo;",
        "Ljava/lang/Void;",
        "Ljava/lang/Integer;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/wifi/WifiSecSetupActivity;


# direct methods
.method private constructor <init>(Lcom/android/settings/wifi/WifiSecSetupActivity;)V
    .locals 0

    .prologue
    .line 962
    iput-object p1, p0, Lcom/android/settings/wifi/WifiSecSetupActivity$CheckInternet;->this$0:Lcom/android/settings/wifi/WifiSecSetupActivity;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/settings/wifi/WifiSecSetupActivity;Lcom/android/settings/wifi/WifiSecSetupActivity$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/android/settings/wifi/WifiSecSetupActivity;
    .param p2, "x1"    # Lcom/android/settings/wifi/WifiSecSetupActivity$1;

    .prologue
    .line 962
    invoke-direct {p0, p1}, Lcom/android/settings/wifi/WifiSecSetupActivity$CheckInternet;-><init>(Lcom/android/settings/wifi/WifiSecSetupActivity;)V

    return-void
.end method


# virtual methods
.method protected varargs doInBackground([Landroid/net/NetworkInfo;)Ljava/lang/Integer;
    .locals 12
    .param p1, "infos"    # [Landroid/net/NetworkInfo;

    .prologue
    const/16 v11, 0xcc

    const/4 v8, 0x1

    const/4 v10, -0x1

    const/4 v9, 0x0

    .line 997
    # getter for: Lcom/android/settings/wifi/WifiSecSetupActivity;->mContext:Landroid/content/Context;
    invoke-static {}, Lcom/android/settings/wifi/WifiSecSetupActivity;->access$1000()Landroid/content/Context;

    move-result-object v6

    if-nez v6, :cond_0

    .line 998
    const-string v6, "WifiSecSetupActivity"

    const-string v7, "doInBackground() : mContext is null !!!"

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 999
    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    .line 1035
    :goto_0
    return-object v6

    .line 1002
    :cond_0
    const/4 v0, 0x0

    .line 1003
    .local v0, "activeNetwork":Landroid/net/NetworkInfo;
    array-length v6, p1

    if-eqz v6, :cond_1

    aget-object v6, p1, v9

    if-eqz v6, :cond_1

    .line 1004
    aget-object v6, p1, v9

    .line 1007
    :cond_1
    # getter for: Lcom/android/settings/wifi/WifiSecSetupActivity;->mContext:Landroid/content/Context;
    invoke-static {}, Lcom/android/settings/wifi/WifiSecSetupActivity;->access$1000()Landroid/content/Context;

    move-result-object v6

    const-string v7, "connectivity"

    invoke-virtual {v6, v7}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/ConnectivityManager;

    .line 1008
    .local v1, "connectivityManager":Landroid/net/ConnectivityManager;
    if-nez v1, :cond_2

    .line 1009
    const-string v6, "WifiSecSetupActivity"

    const-string v7, "ConnectivityManager is unavailable."

    invoke-static {v6, v7}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1010
    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    goto :goto_0

    .line 1012
    :cond_2
    invoke-virtual {v1, v8}, Landroid/net/ConnectivityManager;->getNetworkInfo(I)Landroid/net/NetworkInfo;

    move-result-object v4

    .line 1013
    .local v4, "wifiNetwork":Landroid/net/NetworkInfo;
    invoke-virtual {v1, v9}, Landroid/net/ConnectivityManager;->getNetworkInfo(I)Landroid/net/NetworkInfo;

    move-result-object v3

    .line 1014
    .local v3, "mobileNetwork":Landroid/net/NetworkInfo;
    invoke-virtual {v1}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v0

    .line 1017
    # getter for: Lcom/android/settings/wifi/WifiSecSetupActivity;->mIsWifiConnected:Z
    invoke-static {}, Lcom/android/settings/wifi/WifiSecSetupActivity;->access$1100()Z

    move-result v6

    if-ne v6, v8, :cond_6

    if-eqz v4, :cond_6

    invoke-virtual {v4}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v6

    if-eqz v6, :cond_6

    .line 1018
    iget-object v6, p0, Lcom/android/settings/wifi/WifiSecSetupActivity$CheckInternet;->this$0:Lcom/android/settings/wifi/WifiSecSetupActivity;

    const-string v7, "wifi"

    invoke-virtual {v6, v7}, Lcom/android/settings/wifi/WifiSecSetupActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/net/wifi/WifiManager;

    .line 1019
    .local v5, "wm":Landroid/net/wifi/WifiManager;
    iget-object v6, p0, Lcom/android/settings/wifi/WifiSecSetupActivity$CheckInternet;->this$0:Lcom/android/settings/wifi/WifiSecSetupActivity;

    # invokes: Lcom/android/settings/wifi/WifiSecSetupActivity;->isCaptivePortal()I
    invoke-static {v6}, Lcom/android/settings/wifi/WifiSecSetupActivity;->access$1200(Lcom/android/settings/wifi/WifiSecSetupActivity;)I

    move-result v2

    .line 1020
    .local v2, "httpResponseCode":I
    const-string v6, "WifiSecSetupActivity"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Captive Portal response : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1021
    # setter for: Lcom/android/settings/wifi/WifiSecSetupActivity;->mIsWifiConnected:Z
    invoke-static {v9}, Lcom/android/settings/wifi/WifiSecSetupActivity;->access$1102(Z)Z

    .line 1022
    if-ne v2, v11, :cond_3

    .line 1023
    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    goto :goto_0

    .line 1024
    :cond_3
    if-eq v2, v11, :cond_4

    const/16 v6, 0xc8

    if-lt v2, v6, :cond_4

    const/16 v6, 0x18f

    if-gt v2, v6, :cond_4

    .line 1025
    const/4 v6, 0x2

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    goto :goto_0

    .line 1026
    :cond_4
    invoke-virtual {v5}, Landroid/net/wifi/WifiManager;->isWifiEnabled()Z

    move-result v6

    if-eqz v6, :cond_5

    invoke-virtual {v4}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v6

    if-eqz v6, :cond_5

    .line 1027
    const/4 v6, 0x3

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    goto/16 :goto_0

    .line 1029
    :cond_5
    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    goto/16 :goto_0

    .line 1030
    .end local v2    # "httpResponseCode":I
    .end local v5    # "wm":Landroid/net/wifi/WifiManager;
    :cond_6
    if-eqz v3, :cond_7

    invoke-virtual {v3}, Landroid/net/NetworkInfo;->isConnectedOrConnecting()Z

    move-result v6

    if-eqz v6, :cond_7

    .line 1031
    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    goto/16 :goto_0

    .line 1032
    :cond_7
    if-eqz v0, :cond_8

    invoke-virtual {v0}, Landroid/net/NetworkInfo;->isConnectedOrConnecting()Z

    move-result v6

    if-eqz v6, :cond_8

    .line 1033
    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    goto/16 :goto_0

    .line 1035
    :cond_8
    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    goto/16 :goto_0
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # [Ljava/lang/Object;

    .prologue
    .line 962
    check-cast p1, [Landroid/net/NetworkInfo;

    .end local p1    # "x0":[Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/android/settings/wifi/WifiSecSetupActivity$CheckInternet;->doInBackground([Landroid/net/NetworkInfo;)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method protected onPostExecute(Ljava/lang/Integer;)V
    .locals 2
    .param p1, "result"    # Ljava/lang/Integer;

    .prologue
    .line 1040
    invoke-super {p0, p1}, Landroid/os/AsyncTask;->onPostExecute(Ljava/lang/Object;)V

    .line 1041
    iget-object v0, p0, Lcom/android/settings/wifi/WifiSecSetupActivity$CheckInternet;->this$0:Lcom/android/settings/wifi/WifiSecSetupActivity;

    new-instance v1, Lcom/android/settings/wifi/WifiSecSetupActivity$CheckInternet$2;

    invoke-direct {v1, p0, p1}, Lcom/android/settings/wifi/WifiSecSetupActivity$CheckInternet$2;-><init>(Lcom/android/settings/wifi/WifiSecSetupActivity$CheckInternet;Ljava/lang/Integer;)V

    invoke-virtual {v0, v1}, Lcom/android/settings/wifi/WifiSecSetupActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 1067
    return-void
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 962
    check-cast p1, Ljava/lang/Integer;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/android/settings/wifi/WifiSecSetupActivity$CheckInternet;->onPostExecute(Ljava/lang/Integer;)V

    return-void
.end method

.method protected onPreExecute()V
    .locals 2

    .prologue
    .line 986
    invoke-super {p0}, Landroid/os/AsyncTask;->onPreExecute()V

    .line 987
    iget-object v0, p0, Lcom/android/settings/wifi/WifiSecSetupActivity$CheckInternet;->this$0:Lcom/android/settings/wifi/WifiSecSetupActivity;

    new-instance v1, Lcom/android/settings/wifi/WifiSecSetupActivity$CheckInternet$1;

    invoke-direct {v1, p0}, Lcom/android/settings/wifi/WifiSecSetupActivity$CheckInternet$1;-><init>(Lcom/android/settings/wifi/WifiSecSetupActivity$CheckInternet;)V

    invoke-virtual {v0, v1}, Lcom/android/settings/wifi/WifiSecSetupActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 993
    return-void
.end method
