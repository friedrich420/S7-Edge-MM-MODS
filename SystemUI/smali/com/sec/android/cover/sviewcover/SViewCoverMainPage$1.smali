.class Lcom/sec/android/cover/sviewcover/SViewCoverMainPage$1;
.super Lcom/sec/android/cover/monitor/CoverUpdateMonitorCallback;
.source "SViewCoverMainPage.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/cover/sviewcover/SViewCoverMainPage;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/cover/sviewcover/SViewCoverMainPage;


# direct methods
.method constructor <init>(Lcom/sec/android/cover/sviewcover/SViewCoverMainPage;)V
    .locals 0

    .prologue
    .line 78
    iput-object p1, p0, Lcom/sec/android/cover/sviewcover/SViewCoverMainPage$1;->this$0:Lcom/sec/android/cover/sviewcover/SViewCoverMainPage;

    invoke-direct {p0}, Lcom/sec/android/cover/monitor/CoverUpdateMonitorCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onContentChanged(Landroid/net/Uri;)V
    .locals 2
    .param p1, "uri"    # Landroid/net/Uri;

    .prologue
    .line 98
    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "dualclock_menu_settings"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 99
    const-string v0, "SViewCoverMainPage"

    const-string v1, "DualClockSettingObserver.onChagne : DualClockSetting changed"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 100
    iget-object v0, p0, Lcom/sec/android/cover/sviewcover/SViewCoverMainPage$1;->this$0:Lcom/sec/android/cover/sviewcover/SViewCoverMainPage;

    # invokes: Lcom/sec/android/cover/sviewcover/SViewCoverMainPage;->setClockVisibility()V
    invoke-static {v0}, Lcom/sec/android/cover/sviewcover/SViewCoverMainPage;->access$300(Lcom/sec/android/cover/sviewcover/SViewCoverMainPage;)V

    .line 103
    :cond_0
    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "com.sec.android.cover.sviewcover.stylizedclock.STYLIZED_CLOCK_STYLE"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 104
    const-string v0, "SViewCoverMainPage"

    const-string v1, "StylizedClockSettingObserver.onChange : StylizedClockSetting changed"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 105
    iget-object v0, p0, Lcom/sec/android/cover/sviewcover/SViewCoverMainPage$1;->this$0:Lcom/sec/android/cover/sviewcover/SViewCoverMainPage;

    # invokes: Lcom/sec/android/cover/sviewcover/SViewCoverMainPage;->setupStylizedClockStyle()V
    invoke-static {v0}, Lcom/sec/android/cover/sviewcover/SViewCoverMainPage;->access$400(Lcom/sec/android/cover/sviewcover/SViewCoverMainPage;)V

    .line 106
    iget-object v0, p0, Lcom/sec/android/cover/sviewcover/SViewCoverMainPage$1;->this$0:Lcom/sec/android/cover/sviewcover/SViewCoverMainPage;

    # invokes: Lcom/sec/android/cover/sviewcover/SViewCoverMainPage;->adjustWidgetVisibility()V
    invoke-static {v0}, Lcom/sec/android/cover/sviewcover/SViewCoverMainPage;->access$500(Lcom/sec/android/cover/sviewcover/SViewCoverMainPage;)V

    .line 108
    :cond_1
    return-void
.end method

.method public onDisasterViewUpdated(Ljava/lang/String;)V
    .locals 1
    .param p1, "title"    # Ljava/lang/String;

    .prologue
    .line 80
    iget-object v0, p0, Lcom/sec/android/cover/sviewcover/SViewCoverMainPage$1;->this$0:Lcom/sec/android/cover/sviewcover/SViewCoverMainPage;

    # invokes: Lcom/sec/android/cover/sviewcover/SViewCoverMainPage;->updateDisasterAlertWidgetState(Ljava/lang/Object;)V
    invoke-static {v0, p1}, Lcom/sec/android/cover/sviewcover/SViewCoverMainPage;->access$000(Lcom/sec/android/cover/sviewcover/SViewCoverMainPage;Ljava/lang/Object;)V

    .line 81
    return-void
.end method

.method public onLocaleChanged()V
    .locals 4

    .prologue
    .line 88
    iget-object v2, p0, Lcom/sec/android/cover/sviewcover/SViewCoverMainPage$1;->this$0:Lcom/sec/android/cover/sviewcover/SViewCoverMainPage;

    # getter for: Lcom/sec/android/cover/sviewcover/SViewCoverMainPage;->mContext:Landroid/content/Context;
    invoke-static {v2}, Lcom/sec/android/cover/sviewcover/SViewCoverMainPage;->access$200(Lcom/sec/android/cover/sviewcover/SViewCoverMainPage;)Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/sec/android/cover/manager/CoverBroadcastManager;->getInstance(Landroid/content/Context;)Lcom/sec/android/cover/manager/CoverBroadcastManager;

    move-result-object v1

    .line 91
    .local v1, "bcm":Lcom/sec/android/cover/manager/CoverBroadcastManager;
    const-string v2, "android.intent.action.BATTERY_CHANGED"

    invoke-virtual {v1, v2}, Lcom/sec/android/cover/manager/CoverBroadcastManager;->getLastBroadcastInfo(Ljava/lang/String;)Lcom/sec/android/cover/manager/CoverBroadcastManager$BroadcastInfo;

    move-result-object v0

    .line 92
    .local v0, "bcInfo":Lcom/sec/android/cover/manager/CoverBroadcastManager$BroadcastInfo;
    if-eqz v0, :cond_0

    .line 93
    iget-object v2, p0, Lcom/sec/android/cover/sviewcover/SViewCoverMainPage$1;->this$0:Lcom/sec/android/cover/sviewcover/SViewCoverMainPage;

    iget-object v3, v0, Lcom/sec/android/cover/manager/CoverBroadcastManager$BroadcastInfo;->mItem:Ljava/lang/Object;

    # invokes: Lcom/sec/android/cover/sviewcover/SViewCoverMainPage;->updateBatteryStateWidgetState(Ljava/lang/Object;)V
    invoke-static {v2, v3}, Lcom/sec/android/cover/sviewcover/SViewCoverMainPage;->access$100(Lcom/sec/android/cover/sviewcover/SViewCoverMainPage;Ljava/lang/Object;)V

    .line 95
    :cond_0
    return-void
.end method

.method public onRefreshBatteryInfo(Lcom/sec/android/cover/monitor/CoverUpdateMonitor$BatteryStatus;)V
    .locals 1
    .param p1, "status"    # Lcom/sec/android/cover/monitor/CoverUpdateMonitor$BatteryStatus;

    .prologue
    .line 84
    iget-object v0, p0, Lcom/sec/android/cover/sviewcover/SViewCoverMainPage$1;->this$0:Lcom/sec/android/cover/sviewcover/SViewCoverMainPage;

    # invokes: Lcom/sec/android/cover/sviewcover/SViewCoverMainPage;->updateBatteryStateWidgetState(Ljava/lang/Object;)V
    invoke-static {v0, p1}, Lcom/sec/android/cover/sviewcover/SViewCoverMainPage;->access$100(Lcom/sec/android/cover/sviewcover/SViewCoverMainPage;Ljava/lang/Object;)V

    .line 85
    return-void
.end method

.method public onRoamingStateChanged(Z)V
    .locals 2
    .param p1, "isNetworkRoaming"    # Z

    .prologue
    .line 111
    const-string v0, "SViewCoverMainPage"

    const-string v1, "onRoamingStateChanged()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 112
    iget-object v0, p0, Lcom/sec/android/cover/sviewcover/SViewCoverMainPage$1;->this$0:Lcom/sec/android/cover/sviewcover/SViewCoverMainPage;

    # invokes: Lcom/sec/android/cover/sviewcover/SViewCoverMainPage;->setClockVisibility()V
    invoke-static {v0}, Lcom/sec/android/cover/sviewcover/SViewCoverMainPage;->access$300(Lcom/sec/android/cover/sviewcover/SViewCoverMainPage;)V

    .line 113
    return-void
.end method
