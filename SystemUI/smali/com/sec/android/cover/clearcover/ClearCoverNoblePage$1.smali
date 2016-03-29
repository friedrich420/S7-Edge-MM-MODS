.class Lcom/sec/android/cover/clearcover/ClearCoverNoblePage$1;
.super Lcom/sec/android/cover/monitor/CoverUpdateMonitorCallback;
.source "ClearCoverNoblePage.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/cover/clearcover/ClearCoverNoblePage;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/cover/clearcover/ClearCoverNoblePage;


# direct methods
.method constructor <init>(Lcom/sec/android/cover/clearcover/ClearCoverNoblePage;)V
    .locals 0

    .prologue
    .line 82
    iput-object p1, p0, Lcom/sec/android/cover/clearcover/ClearCoverNoblePage$1;->this$0:Lcom/sec/android/cover/clearcover/ClearCoverNoblePage;

    invoke-direct {p0}, Lcom/sec/android/cover/monitor/CoverUpdateMonitorCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onContentChanged(Landroid/net/Uri;)V
    .locals 2
    .param p1, "uri"    # Landroid/net/Uri;

    .prologue
    .line 85
    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "dualclock_menu_settings"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 86
    # getter for: Lcom/sec/android/cover/clearcover/ClearCoverNoblePage;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/sec/android/cover/clearcover/ClearCoverNoblePage;->access$000()Ljava/lang/String;

    move-result-object v0

    const-string v1, "DualClockSettingObserver.onChagne : DualClockSetting changed"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 87
    iget-object v0, p0, Lcom/sec/android/cover/clearcover/ClearCoverNoblePage$1;->this$0:Lcom/sec/android/cover/clearcover/ClearCoverNoblePage;

    # invokes: Lcom/sec/android/cover/clearcover/ClearCoverNoblePage;->setClockVisibility()V
    invoke-static {v0}, Lcom/sec/android/cover/clearcover/ClearCoverNoblePage;->access$100(Lcom/sec/android/cover/clearcover/ClearCoverNoblePage;)V

    .line 89
    :cond_0
    return-void
.end method

.method public onCoverStateChanged(Lcom/samsung/android/cover/CoverState;)V
    .locals 1
    .param p1, "coverState"    # Lcom/samsung/android/cover/CoverState;

    .prologue
    .line 112
    iget-object v0, p0, Lcom/sec/android/cover/clearcover/ClearCoverNoblePage$1;->this$0:Lcom/sec/android/cover/clearcover/ClearCoverNoblePage;

    # setter for: Lcom/sec/android/cover/clearcover/ClearCoverNoblePage;->mCoverState:Lcom/samsung/android/cover/CoverState;
    invoke-static {v0, p1}, Lcom/sec/android/cover/clearcover/ClearCoverNoblePage;->access$502(Lcom/sec/android/cover/clearcover/ClearCoverNoblePage;Lcom/samsung/android/cover/CoverState;)Lcom/samsung/android/cover/CoverState;

    .line 113
    return-void
.end method

.method public onLocaleChanged()V
    .locals 4

    .prologue
    .line 116
    iget-object v2, p0, Lcom/sec/android/cover/clearcover/ClearCoverNoblePage$1;->this$0:Lcom/sec/android/cover/clearcover/ClearCoverNoblePage;

    # getter for: Lcom/sec/android/cover/clearcover/ClearCoverNoblePage;->mContext:Landroid/content/Context;
    invoke-static {v2}, Lcom/sec/android/cover/clearcover/ClearCoverNoblePage;->access$600(Lcom/sec/android/cover/clearcover/ClearCoverNoblePage;)Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/sec/android/cover/manager/CoverBroadcastManager;->getInstance(Landroid/content/Context;)Lcom/sec/android/cover/manager/CoverBroadcastManager;

    move-result-object v1

    .line 119
    .local v1, "bcm":Lcom/sec/android/cover/manager/CoverBroadcastManager;
    const-string v2, "android.intent.action.BATTERY_CHANGED"

    invoke-virtual {v1, v2}, Lcom/sec/android/cover/manager/CoverBroadcastManager;->getLastBroadcastInfo(Ljava/lang/String;)Lcom/sec/android/cover/manager/CoverBroadcastManager$BroadcastInfo;

    move-result-object v0

    .line 120
    .local v0, "bcInfo":Lcom/sec/android/cover/manager/CoverBroadcastManager$BroadcastInfo;
    if-eqz v0, :cond_0

    .line 121
    iget-object v2, p0, Lcom/sec/android/cover/clearcover/ClearCoverNoblePage$1;->this$0:Lcom/sec/android/cover/clearcover/ClearCoverNoblePage;

    iget-object v3, v0, Lcom/sec/android/cover/manager/CoverBroadcastManager$BroadcastInfo;->mItem:Ljava/lang/Object;

    # invokes: Lcom/sec/android/cover/clearcover/ClearCoverNoblePage;->updateBatteryStateWidgetState(Ljava/lang/Object;)V
    invoke-static {v2, v3}, Lcom/sec/android/cover/clearcover/ClearCoverNoblePage;->access$400(Lcom/sec/android/cover/clearcover/ClearCoverNoblePage;Ljava/lang/Object;)V

    .line 123
    :cond_0
    return-void
.end method

.method public onRefreshBatteryInfo(Lcom/sec/android/cover/monitor/CoverUpdateMonitor$BatteryStatus;)V
    .locals 1
    .param p1, "status"    # Lcom/sec/android/cover/monitor/CoverUpdateMonitor$BatteryStatus;

    .prologue
    .line 108
    iget-object v0, p0, Lcom/sec/android/cover/clearcover/ClearCoverNoblePage$1;->this$0:Lcom/sec/android/cover/clearcover/ClearCoverNoblePage;

    # invokes: Lcom/sec/android/cover/clearcover/ClearCoverNoblePage;->updateBatteryStateWidgetState(Ljava/lang/Object;)V
    invoke-static {v0, p1}, Lcom/sec/android/cover/clearcover/ClearCoverNoblePage;->access$400(Lcom/sec/android/cover/clearcover/ClearCoverNoblePage;Ljava/lang/Object;)V

    .line 109
    return-void
.end method

.method public onRemoteViewUpdated(Lcom/sec/android/cover/monitor/CoverUpdateMonitor$RemoteViewInfo;)V
    .locals 4
    .param p1, "remoteViewInfo"    # Lcom/sec/android/cover/monitor/CoverUpdateMonitor$RemoteViewInfo;

    .prologue
    .line 92
    iget-object v0, p1, Lcom/sec/android/cover/monitor/CoverUpdateMonitor$RemoteViewInfo;->mType:Ljava/lang/String;

    .line 93
    .local v0, "type":Ljava/lang/String;
    # getter for: Lcom/sec/android/cover/clearcover/ClearCoverNoblePage;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/sec/android/cover/clearcover/ClearCoverNoblePage;->access$000()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onRemoteViewUpdated : Type="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 94
    const-string v1, "new_message"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "missed_call"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 96
    :cond_0
    iget-object v1, p0, Lcom/sec/android/cover/clearcover/ClearCoverNoblePage$1;->this$0:Lcom/sec/android/cover/clearcover/ClearCoverNoblePage;

    # invokes: Lcom/sec/android/cover/clearcover/ClearCoverNoblePage;->updateMissedEvent()V
    invoke-static {v1}, Lcom/sec/android/cover/clearcover/ClearCoverNoblePage;->access$200(Lcom/sec/android/cover/clearcover/ClearCoverNoblePage;)V

    .line 99
    :cond_1
    iget-object v1, p0, Lcom/sec/android/cover/clearcover/ClearCoverNoblePage$1;->this$0:Lcom/sec/android/cover/clearcover/ClearCoverNoblePage;

    # invokes: Lcom/sec/android/cover/clearcover/ClearCoverNoblePage;->updateRemoteViewContainerVisibility(Lcom/sec/android/cover/monitor/CoverUpdateMonitor$RemoteViewInfo;)V
    invoke-static {v1, p1}, Lcom/sec/android/cover/clearcover/ClearCoverNoblePage;->access$300(Lcom/sec/android/cover/clearcover/ClearCoverNoblePage;Lcom/sec/android/cover/monitor/CoverUpdateMonitor$RemoteViewInfo;)V

    .line 100
    return-void
.end method

.method public onRoamingStateChanged(Z)V
    .locals 2
    .param p1, "isNetworkRoaming"    # Z

    .prologue
    .line 103
    # getter for: Lcom/sec/android/cover/clearcover/ClearCoverNoblePage;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/sec/android/cover/clearcover/ClearCoverNoblePage;->access$000()Ljava/lang/String;

    move-result-object v0

    const-string v1, "onRoamingStateChanged()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 104
    iget-object v0, p0, Lcom/sec/android/cover/clearcover/ClearCoverNoblePage$1;->this$0:Lcom/sec/android/cover/clearcover/ClearCoverNoblePage;

    # invokes: Lcom/sec/android/cover/clearcover/ClearCoverNoblePage;->setClockVisibility()V
    invoke-static {v0}, Lcom/sec/android/cover/clearcover/ClearCoverNoblePage;->access$100(Lcom/sec/android/cover/clearcover/ClearCoverNoblePage;)V

    .line 105
    return-void
.end method
