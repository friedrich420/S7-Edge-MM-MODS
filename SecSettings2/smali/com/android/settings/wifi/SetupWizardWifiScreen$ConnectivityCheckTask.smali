.class Lcom/android/settings/wifi/SetupWizardWifiScreen$ConnectivityCheckTask;
.super Landroid/os/AsyncTask;
.source "SetupWizardWifiScreen.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/wifi/SetupWizardWifiScreen;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ConnectivityCheckTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/wifi/SetupWizardWifiScreen;


# direct methods
.method private constructor <init>(Lcom/android/settings/wifi/SetupWizardWifiScreen;)V
    .locals 0

    .prologue
    .line 121
    iput-object p1, p0, Lcom/android/settings/wifi/SetupWizardWifiScreen$ConnectivityCheckTask;->this$0:Lcom/android/settings/wifi/SetupWizardWifiScreen;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/settings/wifi/SetupWizardWifiScreen;Lcom/android/settings/wifi/SetupWizardWifiScreen$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/android/settings/wifi/SetupWizardWifiScreen;
    .param p2, "x1"    # Lcom/android/settings/wifi/SetupWizardWifiScreen$1;

    .prologue
    .line 121
    invoke-direct {p0, p1}, Lcom/android/settings/wifi/SetupWizardWifiScreen$ConnectivityCheckTask;-><init>(Lcom/android/settings/wifi/SetupWizardWifiScreen;)V

    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # [Ljava/lang/Object;

    .prologue
    .line 121
    check-cast p1, [Ljava/lang/Void;

    .end local p1    # "x0":[Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/android/settings/wifi/SetupWizardWifiScreen$ConnectivityCheckTask;->doInBackground([Ljava/lang/Void;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Void;
    .locals 8
    .param p1, "params"    # [Ljava/lang/Void;

    .prologue
    const/4 v7, 0x0

    .line 132
    const/4 v0, 0x2

    .line 133
    .local v0, "counter":I
    const/4 v4, 0x2

    new-array v3, v4, [I

    fill-array-data v3, :array_0

    .line 137
    .local v3, "sleepTime":[I
    :try_start_0
    const-string v4, "SetupWizard --> SetupWizardWifiScreen"

    const-string v5, "Waiting for 2 seconds to ensure DNS is setup to avoid UnknownHostException"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 138
    const-wide/16 v4, 0x7d0

    invoke-static {v4, v5}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 144
    :cond_0
    :goto_0
    iget-object v4, p0, Lcom/android/settings/wifi/SetupWizardWifiScreen$ConnectivityCheckTask;->this$0:Lcom/android/settings/wifi/SetupWizardWifiScreen;

    # getter for: Lcom/android/settings/wifi/SetupWizardWifiScreen;->mContext:Landroid/content/Context;
    invoke-static {v4}, Lcom/android/settings/wifi/SetupWizardWifiScreen;->access$100(Lcom/android/settings/wifi/SetupWizardWifiScreen;)Landroid/content/Context;

    move-result-object v4

    invoke-static {v4}, Lcom/android/settings/wifi/WifiConnectivityUtils;->isWiFiConnAvailable(Landroid/content/Context;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 146
    invoke-static {}, Lcom/android/settings/wifi/WifiConnectivityUtils;->isCaptivePortalNetwork()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 147
    iget-object v4, p0, Lcom/android/settings/wifi/SetupWizardWifiScreen$ConnectivityCheckTask;->this$0:Lcom/android/settings/wifi/SetupWizardWifiScreen;

    # getter for: Lcom/android/settings/wifi/SetupWizardWifiScreen;->mIsGoogleFRPLocked:Z
    invoke-static {v4}, Lcom/android/settings/wifi/SetupWizardWifiScreen;->access$200(Lcom/android/settings/wifi/SetupWizardWifiScreen;)Z

    move-result v4

    if-eqz v4, :cond_1

    iget-object v4, p0, Lcom/android/settings/wifi/SetupWizardWifiScreen$ConnectivityCheckTask;->this$0:Lcom/android/settings/wifi/SetupWizardWifiScreen;

    # getter for: Lcom/android/settings/wifi/SetupWizardWifiScreen;->mContext:Landroid/content/Context;
    invoke-static {v4}, Lcom/android/settings/wifi/SetupWizardWifiScreen;->access$100(Lcom/android/settings/wifi/SetupWizardWifiScreen;)Landroid/content/Context;

    move-result-object v4

    # invokes: Lcom/android/settings/wifi/SetupWizardWifiScreen;->isDeviceProvisioned(Landroid/content/Context;)Z
    invoke-static {v4}, Lcom/android/settings/wifi/SetupWizardWifiScreen;->access$300(Landroid/content/Context;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 148
    iget-object v4, p0, Lcom/android/settings/wifi/SetupWizardWifiScreen$ConnectivityCheckTask;->this$0:Lcom/android/settings/wifi/SetupWizardWifiScreen;

    const/4 v5, 0x4

    # setter for: Lcom/android/settings/wifi/SetupWizardWifiScreen;->mConnectionResult:I
    invoke-static {v4, v5}, Lcom/android/settings/wifi/SetupWizardWifiScreen;->access$002(Lcom/android/settings/wifi/SetupWizardWifiScreen;I)I

    .line 167
    :goto_1
    return-object v7

    .line 139
    :catch_0
    move-exception v1

    .line 140
    .local v1, "e":Ljava/lang/InterruptedException;
    const-string v4, "SetupWizard --> SetupWizardWifiScreen"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, " Exception in Thread sleep "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 150
    .end local v1    # "e":Ljava/lang/InterruptedException;
    :cond_1
    iget-object v4, p0, Lcom/android/settings/wifi/SetupWizardWifiScreen$ConnectivityCheckTask;->this$0:Lcom/android/settings/wifi/SetupWizardWifiScreen;

    const/4 v5, 0x1

    # setter for: Lcom/android/settings/wifi/SetupWizardWifiScreen;->mConnectionResult:I
    invoke-static {v4, v5}, Lcom/android/settings/wifi/SetupWizardWifiScreen;->access$002(Lcom/android/settings/wifi/SetupWizardWifiScreen;I)I

    goto :goto_1

    .line 153
    :cond_2
    iget-object v4, p0, Lcom/android/settings/wifi/SetupWizardWifiScreen$ConnectivityCheckTask;->this$0:Lcom/android/settings/wifi/SetupWizardWifiScreen;

    const/4 v5, 0x0

    # setter for: Lcom/android/settings/wifi/SetupWizardWifiScreen;->mConnectionResult:I
    invoke-static {v4, v5}, Lcom/android/settings/wifi/SetupWizardWifiScreen;->access$002(Lcom/android/settings/wifi/SetupWizardWifiScreen;I)I

    goto :goto_1

    .line 158
    :cond_3
    add-int/lit8 v0, v0, -0x1

    .line 159
    if-ltz v0, :cond_4

    .line 160
    :try_start_1
    aget v4, v3, v0

    int-to-long v4, v4

    invoke-static {v4, v5}, Ljava/lang/Thread;->sleep(J)V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_1

    .line 165
    :cond_4
    :goto_2
    if-gez v0, :cond_0

    .line 166
    iget-object v4, p0, Lcom/android/settings/wifi/SetupWizardWifiScreen$ConnectivityCheckTask;->this$0:Lcom/android/settings/wifi/SetupWizardWifiScreen;

    const/4 v5, -0x1

    # setter for: Lcom/android/settings/wifi/SetupWizardWifiScreen;->mConnectionResult:I
    invoke-static {v4, v5}, Lcom/android/settings/wifi/SetupWizardWifiScreen;->access$002(Lcom/android/settings/wifi/SetupWizardWifiScreen;I)I

    goto :goto_1

    .line 162
    :catch_1
    move-exception v2

    .line 163
    .local v2, "ex":Ljava/lang/InterruptedException;
    const-string v4, "SetupWizard --> SetupWizardWifiScreen"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, " Exception in Thread sleep "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 133
    :array_0
    .array-data 4
        0x7d0
        0x64
    .end array-data
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 121
    check-cast p1, Ljava/lang/Void;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/android/settings/wifi/SetupWizardWifiScreen$ConnectivityCheckTask;->onPostExecute(Ljava/lang/Void;)V

    return-void
.end method

.method protected onPostExecute(Ljava/lang/Void;)V
    .locals 3
    .param p1, "result"    # Ljava/lang/Void;

    .prologue
    .line 126
    const-string v0, "SetupWizard --> SetupWizardWifiScreen"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " What is the Connection result : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings/wifi/SetupWizardWifiScreen$ConnectivityCheckTask;->this$0:Lcom/android/settings/wifi/SetupWizardWifiScreen;

    # getter for: Lcom/android/settings/wifi/SetupWizardWifiScreen;->mConnectionResult:I
    invoke-static {v2}, Lcom/android/settings/wifi/SetupWizardWifiScreen;->access$000(Lcom/android/settings/wifi/SetupWizardWifiScreen;)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 127
    iget-object v0, p0, Lcom/android/settings/wifi/SetupWizardWifiScreen$ConnectivityCheckTask;->this$0:Lcom/android/settings/wifi/SetupWizardWifiScreen;

    iget-object v0, v0, Lcom/android/settings/wifi/SetupWizardWifiScreen;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/settings/wifi/SetupWizardWifiScreen$ConnectivityCheckTask;->this$0:Lcom/android/settings/wifi/SetupWizardWifiScreen;

    iget-object v1, v1, Lcom/android/settings/wifi/SetupWizardWifiScreen;->mHandler:Landroid/os/Handler;

    iget-object v2, p0, Lcom/android/settings/wifi/SetupWizardWifiScreen$ConnectivityCheckTask;->this$0:Lcom/android/settings/wifi/SetupWizardWifiScreen;

    # getter for: Lcom/android/settings/wifi/SetupWizardWifiScreen;->mConnectionResult:I
    invoke-static {v2}, Lcom/android/settings/wifi/SetupWizardWifiScreen;->access$000(Lcom/android/settings/wifi/SetupWizardWifiScreen;)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 128
    return-void
.end method
