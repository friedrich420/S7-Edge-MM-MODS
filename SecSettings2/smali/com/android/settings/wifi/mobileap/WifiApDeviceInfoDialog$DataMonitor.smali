.class Lcom/android/settings/wifi/mobileap/WifiApDeviceInfoDialog$DataMonitor;
.super Landroid/os/Handler;
.source "WifiApDeviceInfoDialog.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/wifi/mobileap/WifiApDeviceInfoDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "DataMonitor"
.end annotation


# instance fields
.field private running:Z

.field final synthetic this$0:Lcom/android/settings/wifi/mobileap/WifiApDeviceInfoDialog;


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 4
    .param p1, "message"    # Landroid/os/Message;

    .prologue
    const/4 v1, 0x1

    .line 149
    sget-boolean v0, Lcom/android/settings/wifi/mobileap/WifiApSettings;->mApDeviceInfoDialogShow:Z

    if-ne v0, v1, :cond_0

    iget-boolean v0, p0, Lcom/android/settings/wifi/mobileap/WifiApDeviceInfoDialog$DataMonitor;->running:Z

    if-ne v0, v1, :cond_0

    .line 150
    iget-object v0, p0, Lcom/android/settings/wifi/mobileap/WifiApDeviceInfoDialog$DataMonitor;->this$0:Lcom/android/settings/wifi/mobileap/WifiApDeviceInfoDialog;

    # invokes: Lcom/android/settings/wifi/mobileap/WifiApDeviceInfoDialog;->updateRestData()V
    invoke-static {v0}, Lcom/android/settings/wifi/mobileap/WifiApDeviceInfoDialog;->access$000(Lcom/android/settings/wifi/mobileap/WifiApDeviceInfoDialog;)V

    .line 151
    const/4 v0, 0x0

    const-wide/16 v2, 0x3e8

    invoke-virtual {p0, v0, v2, v3}, Lcom/android/settings/wifi/mobileap/WifiApDeviceInfoDialog$DataMonitor;->sendEmptyMessageDelayed(IJ)Z

    .line 154
    :goto_0
    return-void

    .line 153
    :cond_0
    invoke-virtual {p0}, Lcom/android/settings/wifi/mobileap/WifiApDeviceInfoDialog$DataMonitor;->pause()V

    goto :goto_0
.end method

.method pause()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 139
    iput-boolean v0, p0, Lcom/android/settings/wifi/mobileap/WifiApDeviceInfoDialog$DataMonitor;->running:Z

    .line 140
    invoke-virtual {p0, v0}, Lcom/android/settings/wifi/mobileap/WifiApDeviceInfoDialog$DataMonitor;->removeMessages(I)V

    .line 141
    return-void
.end method
