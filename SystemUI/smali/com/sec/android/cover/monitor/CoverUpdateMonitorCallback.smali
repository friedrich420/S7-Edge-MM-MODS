.class public Lcom/sec/android/cover/monitor/CoverUpdateMonitorCallback;
.super Ljava/lang/Object;
.source "CoverUpdateMonitorCallback.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onBatteryLow()V
    .locals 0

    .prologue
    .line 21
    return-void
.end method

.method public onChangeCoverBackground()V
    .locals 0

    .prologue
    .line 48
    return-void
.end method

.method public onConfigurationChanged()V
    .locals 0

    .prologue
    .line 33
    return-void
.end method

.method public onContentChanged(Landroid/net/Uri;)V
    .locals 0
    .param p1, "uri"    # Landroid/net/Uri;

    .prologue
    .line 74
    return-void
.end method

.method public onCoverAppCovered(Z)V
    .locals 0
    .param p1, "covered"    # Z

    .prologue
    .line 108
    return-void
.end method

.method public onCoverDelayedTimout(I)V
    .locals 0
    .param p1, "seq"    # I

    .prologue
    .line 102
    return-void
.end method

.method public onCoverStateChanged(Lcom/samsung/android/cover/CoverState;)V
    .locals 0
    .param p1, "coverState"    # Lcom/samsung/android/cover/CoverState;

    .prologue
    .line 68
    return-void
.end method

.method public onDateFormatChanged()V
    .locals 0

    .prologue
    .line 77
    return-void
.end method

.method public onDisasterViewUpdated(Ljava/lang/String;)V
    .locals 0
    .param p1, "title"    # Ljava/lang/String;

    .prologue
    .line 39
    return-void
.end method

.method public onEmergencyStateChanged()V
    .locals 0

    .prologue
    .line 71
    return-void
.end method

.method public onFloatingMsgHided()V
    .locals 0

    .prologue
    .line 54
    return-void
.end method

.method public onFloatingMsgShowed()V
    .locals 0

    .prologue
    .line 51
    return-void
.end method

.method public onHomeCityChanged()V
    .locals 0

    .prologue
    .line 86
    return-void
.end method

.method public onInsertSPen(Z)V
    .locals 0
    .param p1, "penInserted"    # Z

    .prologue
    .line 45
    return-void
.end method

.method public onLocaleChanged()V
    .locals 0

    .prologue
    .line 30
    return-void
.end method

.method public onOpenThemeChanged(Ljava/lang/String;)V
    .locals 0
    .param p1, "packageName"    # Ljava/lang/String;

    .prologue
    .line 105
    return-void
.end method

.method public onPackageAdded(Ljava/lang/String;)V
    .locals 0
    .param p1, "packageName"    # Ljava/lang/String;

    .prologue
    .line 89
    return-void
.end method

.method public onPackageChanged(Ljava/lang/String;)V
    .locals 0
    .param p1, "packageName"    # Ljava/lang/String;

    .prologue
    .line 92
    return-void
.end method

.method public onPackageRemoved(Ljava/lang/String;)V
    .locals 0
    .param p1, "packageName"    # Ljava/lang/String;

    .prologue
    .line 95
    return-void
.end method

.method public onPickupCommonDay()V
    .locals 0

    .prologue
    .line 83
    return-void
.end method

.method public onPickupFestivalDay(Ljava/lang/String;)V
    .locals 0
    .param p1, "festivalString"    # Ljava/lang/String;

    .prologue
    .line 80
    return-void
.end method

.method public onPowerConnectionUpdate(Z)V
    .locals 0
    .param p1, "connected"    # Z

    .prologue
    .line 24
    return-void
.end method

.method public onPowerSavingModeChanged()V
    .locals 0

    .prologue
    .line 42
    return-void
.end method

.method public onRefreshBatteryInfo(Lcom/sec/android/cover/monitor/CoverUpdateMonitor$BatteryStatus;)V
    .locals 0
    .param p1, "status"    # Lcom/sec/android/cover/monitor/CoverUpdateMonitor$BatteryStatus;

    .prologue
    .line 27
    return-void
.end method

.method public onRemoteViewUpdated(Lcom/sec/android/cover/monitor/CoverUpdateMonitor$RemoteViewInfo;)V
    .locals 0
    .param p1, "remoteViewInfo"    # Lcom/sec/android/cover/monitor/CoverUpdateMonitor$RemoteViewInfo;

    .prologue
    .line 36
    return-void
.end method

.method public onRoamingStateChanged(Z)V
    .locals 0
    .param p1, "isNetworkRoaming"    # Z

    .prologue
    .line 111
    return-void
.end method

.method public onScreenTurnedOff()V
    .locals 0

    .prologue
    .line 18
    return-void
.end method

.method public onScreenTurnedOn()V
    .locals 0

    .prologue
    .line 15
    return-void
.end method

.method public onThemeFontChanged(Ljava/lang/String;)V
    .locals 0
    .param p1, "fontPath"    # Ljava/lang/String;

    .prologue
    .line 99
    return-void
.end method

.method public onTimeChanged()V
    .locals 0

    .prologue
    .line 12
    return-void
.end method

.method public onUserSwitched(II)V
    .locals 0
    .param p1, "newUserId"    # I
    .param p2, "oldUserId"    # I

    .prologue
    .line 60
    return-void
.end method

.method public onVolumeChanged()V
    .locals 0

    .prologue
    .line 57
    return-void
.end method
