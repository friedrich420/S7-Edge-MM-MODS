.class public Lcom/sec/android/cover/miniviewcover/MiniViewCoverMainPage;
.super Landroid/widget/FrameLayout;
.source "MiniViewCoverMainPage.java"


# instance fields
.field private final NSEC:J

.field private batteryChargingTextVisibility:I

.field private batteryContainerVisibility:I

.field private clockWidgetVisibility:I

.field private isBatteryChargingShown:Z

.field private mBatteryChargingState:Z

.field private mBatteryCharingText:Landroid/widget/TextView;

.field public mHandler:Landroid/os/Handler;

.field private mMiniDefaultHomeWidget:Landroid/widget/LinearLayout;

.field private mMiniLowBatteryContainer:Lcom/sec/android/cover/widget/RemoteViewContainerView;

.field private mMiniPowerUIContainer:Lcom/sec/android/cover/widget/RemoteViewContainerView;

.field private mMiniViewCoverMainFrameView:Lcom/sec/android/cover/miniviewcover/MiniViewCoverMainFrameView;

.field private mPowerManager:Lcom/sec/android/cover/manager/CoverPowerManager;

.field private mUpdateMonitorCallback:Lcom/sec/android/cover/monitor/CoverUpdateMonitorCallback;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/16 v3, 0x8

    const/4 v2, 0x0

    .line 79
    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 40
    iput-boolean v2, p0, Lcom/sec/android/cover/miniviewcover/MiniViewCoverMainPage;->mBatteryChargingState:Z

    .line 41
    iput-boolean v2, p0, Lcom/sec/android/cover/miniviewcover/MiniViewCoverMainPage;->isBatteryChargingShown:Z

    .line 43
    const-wide/16 v0, 0x7d0

    iput-wide v0, p0, Lcom/sec/android/cover/miniviewcover/MiniViewCoverMainPage;->NSEC:J

    .line 45
    iput v2, p0, Lcom/sec/android/cover/miniviewcover/MiniViewCoverMainPage;->clockWidgetVisibility:I

    .line 46
    iput v3, p0, Lcom/sec/android/cover/miniviewcover/MiniViewCoverMainPage;->batteryContainerVisibility:I

    .line 47
    iput v3, p0, Lcom/sec/android/cover/miniviewcover/MiniViewCoverMainPage;->batteryChargingTextVisibility:I

    .line 49
    new-instance v0, Lcom/sec/android/cover/miniviewcover/MiniViewCoverMainPage$1;

    invoke-direct {v0, p0}, Lcom/sec/android/cover/miniviewcover/MiniViewCoverMainPage$1;-><init>(Lcom/sec/android/cover/miniviewcover/MiniViewCoverMainPage;)V

    iput-object v0, p0, Lcom/sec/android/cover/miniviewcover/MiniViewCoverMainPage;->mUpdateMonitorCallback:Lcom/sec/android/cover/monitor/CoverUpdateMonitorCallback;

    .line 57
    new-instance v0, Lcom/sec/android/cover/miniviewcover/MiniViewCoverMainPage$2;

    invoke-direct {v0, p0}, Lcom/sec/android/cover/miniviewcover/MiniViewCoverMainPage$2;-><init>(Lcom/sec/android/cover/miniviewcover/MiniViewCoverMainPage;)V

    iput-object v0, p0, Lcom/sec/android/cover/miniviewcover/MiniViewCoverMainPage;->mHandler:Landroid/os/Handler;

    .line 80
    invoke-direct {p0}, Lcom/sec/android/cover/miniviewcover/MiniViewCoverMainPage;->setupChildViews()V

    .line 81
    return-void
.end method

.method static synthetic access$000(Lcom/sec/android/cover/miniviewcover/MiniViewCoverMainPage;)Lcom/sec/android/cover/miniviewcover/MiniViewCoverMainFrameView;
    .locals 1
    .param p0, "x0"    # Lcom/sec/android/cover/miniviewcover/MiniViewCoverMainPage;

    .prologue
    .line 24
    iget-object v0, p0, Lcom/sec/android/cover/miniviewcover/MiniViewCoverMainPage;->mMiniViewCoverMainFrameView:Lcom/sec/android/cover/miniviewcover/MiniViewCoverMainFrameView;

    return-object v0
.end method

.method static synthetic access$100(Lcom/sec/android/cover/miniviewcover/MiniViewCoverMainPage;)Lcom/sec/android/cover/manager/CoverPowerManager;
    .locals 1
    .param p0, "x0"    # Lcom/sec/android/cover/miniviewcover/MiniViewCoverMainPage;

    .prologue
    .line 24
    iget-object v0, p0, Lcom/sec/android/cover/miniviewcover/MiniViewCoverMainPage;->mPowerManager:Lcom/sec/android/cover/manager/CoverPowerManager;

    return-object v0
.end method

.method static synthetic access$202(Lcom/sec/android/cover/miniviewcover/MiniViewCoverMainPage;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/sec/android/cover/miniviewcover/MiniViewCoverMainPage;
    .param p1, "x1"    # Z

    .prologue
    .line 24
    iput-boolean p1, p0, Lcom/sec/android/cover/miniviewcover/MiniViewCoverMainPage;->isBatteryChargingShown:Z

    return p1
.end method

.method static synthetic access$300(Lcom/sec/android/cover/miniviewcover/MiniViewCoverMainPage;)V
    .locals 0
    .param p0, "x0"    # Lcom/sec/android/cover/miniviewcover/MiniViewCoverMainPage;

    .prologue
    .line 24
    invoke-direct {p0}, Lcom/sec/android/cover/miniviewcover/MiniViewCoverMainPage;->adjustWidgetVisibility()V

    return-void
.end method

.method private adjustWidgetVisibility()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    const/16 v3, 0x8

    .line 115
    iget-object v2, p0, Lcom/sec/android/cover/miniviewcover/MiniViewCoverMainPage;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/sec/android/cover/manager/CoverRemoteViewManager;->getInstance(Landroid/content/Context;)Lcom/sec/android/cover/manager/CoverRemoteViewManager;

    move-result-object v1

    .line 116
    .local v1, "mgr":Lcom/sec/android/cover/manager/CoverRemoteViewManager;
    const-string v2, "battery"

    invoke-virtual {v1, v2}, Lcom/sec/android/cover/manager/CoverRemoteViewManager;->isRemoteViewAvailable(Ljava/lang/String;)Z

    move-result v0

    .line 118
    .local v0, "lowBatteryAvailable":Z
    iput v4, p0, Lcom/sec/android/cover/miniviewcover/MiniViewCoverMainPage;->clockWidgetVisibility:I

    .line 119
    iput v3, p0, Lcom/sec/android/cover/miniviewcover/MiniViewCoverMainPage;->batteryContainerVisibility:I

    .line 120
    iput v3, p0, Lcom/sec/android/cover/miniviewcover/MiniViewCoverMainPage;->batteryChargingTextVisibility:I

    .line 122
    iget-boolean v2, p0, Lcom/sec/android/cover/miniviewcover/MiniViewCoverMainPage;->mBatteryChargingState:Z

    if-eqz v2, :cond_0

    iget-boolean v2, p0, Lcom/sec/android/cover/miniviewcover/MiniViewCoverMainPage;->isBatteryChargingShown:Z

    if-nez v2, :cond_0

    .line 123
    iput v3, p0, Lcom/sec/android/cover/miniviewcover/MiniViewCoverMainPage;->clockWidgetVisibility:I

    .line 124
    iput v3, p0, Lcom/sec/android/cover/miniviewcover/MiniViewCoverMainPage;->batteryContainerVisibility:I

    .line 125
    iput v4, p0, Lcom/sec/android/cover/miniviewcover/MiniViewCoverMainPage;->batteryChargingTextVisibility:I

    .line 128
    :cond_0
    if-eqz v0, :cond_1

    .line 129
    iput v3, p0, Lcom/sec/android/cover/miniviewcover/MiniViewCoverMainPage;->clockWidgetVisibility:I

    .line 130
    iput v4, p0, Lcom/sec/android/cover/miniviewcover/MiniViewCoverMainPage;->batteryContainerVisibility:I

    .line 131
    iput v3, p0, Lcom/sec/android/cover/miniviewcover/MiniViewCoverMainPage;->batteryChargingTextVisibility:I

    .line 134
    :cond_1
    iget-object v2, p0, Lcom/sec/android/cover/miniviewcover/MiniViewCoverMainPage;->mMiniDefaultHomeWidget:Landroid/widget/LinearLayout;

    iget v3, p0, Lcom/sec/android/cover/miniviewcover/MiniViewCoverMainPage;->clockWidgetVisibility:I

    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 135
    iget-object v2, p0, Lcom/sec/android/cover/miniviewcover/MiniViewCoverMainPage;->mMiniLowBatteryContainer:Lcom/sec/android/cover/widget/RemoteViewContainerView;

    iget v3, p0, Lcom/sec/android/cover/miniviewcover/MiniViewCoverMainPage;->batteryContainerVisibility:I

    invoke-virtual {v2, v3}, Lcom/sec/android/cover/widget/RemoteViewContainerView;->setVisibility(I)V

    .line 136
    iget-object v2, p0, Lcom/sec/android/cover/miniviewcover/MiniViewCoverMainPage;->mBatteryCharingText:Landroid/widget/TextView;

    iget v3, p0, Lcom/sec/android/cover/miniviewcover/MiniViewCoverMainPage;->batteryChargingTextVisibility:I

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 137
    return-void
.end method

.method private setupChildViews()V
    .locals 6

    .prologue
    const/4 v5, 0x1

    const/4 v4, -0x1

    .line 95
    iget-object v1, p0, Lcom/sec/android/cover/miniviewcover/MiniViewCoverMainPage;->mContext:Landroid/content/Context;

    sget v2, Lcom/sec/android/sviewcover/R$layout;->mini_view_cover_main_page:I

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 96
    .local v0, "mainPage":Landroid/view/View;
    invoke-virtual {p0, v0, v4, v4}, Lcom/sec/android/cover/miniviewcover/MiniViewCoverMainPage;->addView(Landroid/view/View;II)V

    .line 98
    iget-object v1, p0, Lcom/sec/android/cover/miniviewcover/MiniViewCoverMainPage;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/sec/android/cover/manager/CoverPowerManager;->getInstance(Landroid/content/Context;)Lcom/sec/android/cover/manager/CoverPowerManager;

    move-result-object v1

    iput-object v1, p0, Lcom/sec/android/cover/miniviewcover/MiniViewCoverMainPage;->mPowerManager:Lcom/sec/android/cover/manager/CoverPowerManager;

    .line 100
    sget v1, Lcom/sec/android/sviewcover/R$id;->mini_default_home_widget:I

    invoke-virtual {p0, v1}, Lcom/sec/android/cover/miniviewcover/MiniViewCoverMainPage;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    iput-object v1, p0, Lcom/sec/android/cover/miniviewcover/MiniViewCoverMainPage;->mMiniDefaultHomeWidget:Landroid/widget/LinearLayout;

    .line 101
    iget-object v1, p0, Lcom/sec/android/cover/miniviewcover/MiniViewCoverMainPage;->mMiniDefaultHomeWidget:Landroid/widget/LinearLayout;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 103
    sget v1, Lcom/sec/android/sviewcover/R$id;->mini_battery_charging:I

    invoke-virtual {p0, v1}, Lcom/sec/android/cover/miniviewcover/MiniViewCoverMainPage;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/sec/android/cover/miniviewcover/MiniViewCoverMainPage;->mBatteryCharingText:Landroid/widget/TextView;

    .line 105
    sget v1, Lcom/sec/android/sviewcover/R$id;->mini_battery_contatiner:I

    invoke-virtual {p0, v1}, Lcom/sec/android/cover/miniviewcover/MiniViewCoverMainPage;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/sec/android/cover/widget/RemoteViewContainerView;

    iput-object v1, p0, Lcom/sec/android/cover/miniviewcover/MiniViewCoverMainPage;->mMiniLowBatteryContainer:Lcom/sec/android/cover/widget/RemoteViewContainerView;

    .line 106
    iget-object v1, p0, Lcom/sec/android/cover/miniviewcover/MiniViewCoverMainPage;->mMiniLowBatteryContainer:Lcom/sec/android/cover/widget/RemoteViewContainerView;

    const-string v2, "battery"

    invoke-virtual {v1, v2, v5}, Lcom/sec/android/cover/widget/RemoteViewContainerView;->init(Ljava/lang/String;Z)V

    .line 108
    sget v1, Lcom/sec/android/sviewcover/R$id;->mini_powerui_contatiner:I

    invoke-virtual {p0, v1}, Lcom/sec/android/cover/miniviewcover/MiniViewCoverMainPage;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/sec/android/cover/widget/RemoteViewContainerView;

    iput-object v1, p0, Lcom/sec/android/cover/miniviewcover/MiniViewCoverMainPage;->mMiniPowerUIContainer:Lcom/sec/android/cover/widget/RemoteViewContainerView;

    .line 109
    iget-object v1, p0, Lcom/sec/android/cover/miniviewcover/MiniViewCoverMainPage;->mMiniPowerUIContainer:Lcom/sec/android/cover/widget/RemoteViewContainerView;

    const-string v2, "powerui_dialog"

    invoke-virtual {v1, v2, v5}, Lcom/sec/android/cover/widget/RemoteViewContainerView;->init(Ljava/lang/String;Z)V

    .line 111
    invoke-direct {p0}, Lcom/sec/android/cover/miniviewcover/MiniViewCoverMainPage;->adjustWidgetVisibility()V

    .line 112
    return-void
.end method


# virtual methods
.method public hideBatteryCharingTextAfterNSEC()V
    .locals 5

    .prologue
    const/16 v4, 0x4e21

    .line 201
    const-string v0, "MiniViewCoverMainPage"

    const-string v1, "hideBatteryCharingTextAfterNSEC()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 202
    iget-object v0, p0, Lcom/sec/android/cover/miniviewcover/MiniViewCoverMainPage;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v4}, Landroid/os/Handler;->removeMessages(I)V

    .line 203
    iget-object v0, p0, Lcom/sec/android/cover/miniviewcover/MiniViewCoverMainPage;->mHandler:Landroid/os/Handler;

    const-wide/16 v2, 0x7d0

    invoke-virtual {v0, v4, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 204
    return-void
.end method

.method public isBatteryChargingShown()Z
    .locals 1

    .prologue
    .line 217
    iget-boolean v0, p0, Lcom/sec/android/cover/miniviewcover/MiniViewCoverMainPage;->isBatteryChargingShown:Z

    return v0
.end method

.method protected onAttachedToWindow()V
    .locals 2

    .prologue
    .line 222
    invoke-super {p0}, Landroid/widget/FrameLayout;->onAttachedToWindow()V

    .line 224
    iget-object v0, p0, Lcom/sec/android/cover/miniviewcover/MiniViewCoverMainPage;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/sec/android/cover/monitor/CoverUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/sec/android/cover/monitor/CoverUpdateMonitor;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/cover/miniviewcover/MiniViewCoverMainPage;->mUpdateMonitorCallback:Lcom/sec/android/cover/monitor/CoverUpdateMonitorCallback;

    invoke-virtual {v0, v1}, Lcom/sec/android/cover/monitor/CoverUpdateMonitor;->registerCallback(Lcom/sec/android/cover/monitor/CoverUpdateMonitorCallback;)V

    .line 225
    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 2

    .prologue
    .line 229
    iget-object v0, p0, Lcom/sec/android/cover/miniviewcover/MiniViewCoverMainPage;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x4e21

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 230
    iget-object v0, p0, Lcom/sec/android/cover/miniviewcover/MiniViewCoverMainPage;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/sec/android/cover/monitor/CoverUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/sec/android/cover/monitor/CoverUpdateMonitor;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/cover/miniviewcover/MiniViewCoverMainPage;->mUpdateMonitorCallback:Lcom/sec/android/cover/monitor/CoverUpdateMonitorCallback;

    invoke-virtual {v0, v1}, Lcom/sec/android/cover/monitor/CoverUpdateMonitor;->unregisterCallback(Lcom/sec/android/cover/monitor/CoverUpdateMonitorCallback;)V

    .line 232
    invoke-super {p0}, Landroid/widget/FrameLayout;->onDetachedFromWindow()V

    .line 233
    return-void
.end method

.method public setMiniCoverView(Lcom/sec/android/cover/miniviewcover/MiniViewCoverMainFrameView;)V
    .locals 0
    .param p1, "view"    # Lcom/sec/android/cover/miniviewcover/MiniViewCoverMainFrameView;

    .prologue
    .line 236
    iput-object p1, p0, Lcom/sec/android/cover/miniviewcover/MiniViewCoverMainPage;->mMiniViewCoverMainFrameView:Lcom/sec/android/cover/miniviewcover/MiniViewCoverMainFrameView;

    .line 237
    return-void
.end method

.method public updateBatteryChargingState(Lcom/sec/android/cover/monitor/CoverUpdateMonitor$BatteryStatus;Z)V
    .locals 9
    .param p1, "batteryStatus"    # Lcom/sec/android/cover/monitor/CoverUpdateMonitor$BatteryStatus;
    .param p2, "show"    # Z

    .prologue
    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 144
    if-nez p1, :cond_1

    .line 145
    const-string v3, "MiniViewCoverMainPage"

    const-string v4, "updateBatteryStateWidget : Intent is null"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 146
    iget-object v3, p0, Lcom/sec/android/cover/miniviewcover/MiniViewCoverMainPage;->mBatteryCharingText:Landroid/widget/TextView;

    const/16 v4, 0x8

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 147
    iput-boolean v7, p0, Lcom/sec/android/cover/miniviewcover/MiniViewCoverMainPage;->mBatteryChargingState:Z

    .line 148
    iput-boolean v7, p0, Lcom/sec/android/cover/miniviewcover/MiniViewCoverMainPage;->isBatteryChargingShown:Z

    .line 198
    :cond_0
    :goto_0
    return-void

    .line 152
    :cond_1
    iget v1, p1, Lcom/sec/android/cover/monitor/CoverUpdateMonitor$BatteryStatus;->level:I

    .line 153
    .local v1, "level":I
    iget v2, p1, Lcom/sec/android/cover/monitor/CoverUpdateMonitor$BatteryStatus;->plugged:I

    .line 155
    .local v2, "plugged":I
    const-string v3, "MiniViewCoverMainPage"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "updateBatteryStateWidget : Plugged = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " Level="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 156
    iget-object v3, p0, Lcom/sec/android/cover/miniviewcover/MiniViewCoverMainPage;->mContext:Landroid/content/Context;

    invoke-static {v3}, Lcom/sec/android/cover/CoverUtils;->isEmergencyMode(Landroid/content/Context;)Z

    move-result v3

    if-nez v3, :cond_7

    .line 157
    if-eqz v2, :cond_6

    .line 158
    const/4 v0, 0x0

    .line 159
    .local v0, "batteryCharging":Ljava/lang/String;
    const/16 v3, 0x64

    if-lt v1, v3, :cond_2

    .line 160
    invoke-virtual {p0}, Lcom/sec/android/cover/miniviewcover/MiniViewCoverMainPage;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget v4, Lcom/sec/android/sviewcover/R$string;->battery_charged:I

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 184
    :goto_1
    iget-object v3, p0, Lcom/sec/android/cover/miniviewcover/MiniViewCoverMainPage;->mBatteryCharingText:Landroid/widget/TextView;

    invoke-virtual {v3, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 185
    iput-boolean v8, p0, Lcom/sec/android/cover/miniviewcover/MiniViewCoverMainPage;->mBatteryChargingState:Z

    .line 193
    .end local v0    # "batteryCharging":Ljava/lang/String;
    :goto_2
    if-eqz p2, :cond_0

    .line 194
    invoke-direct {p0}, Lcom/sec/android/cover/miniviewcover/MiniViewCoverMainPage;->adjustWidgetVisibility()V

    .line 195
    iget v3, p0, Lcom/sec/android/cover/miniviewcover/MiniViewCoverMainPage;->batteryChargingTextVisibility:I

    if-nez v3, :cond_0

    .line 196
    invoke-virtual {p0}, Lcom/sec/android/cover/miniviewcover/MiniViewCoverMainPage;->hideBatteryCharingTextAfterNSEC()V

    goto :goto_0

    .line 162
    .restart local v0    # "batteryCharging":Ljava/lang/String;
    :cond_2
    invoke-virtual {p1}, Lcom/sec/android/cover/monitor/CoverUpdateMonitor$BatteryStatus;->isWirelssCharged()Z

    move-result v3

    if-ne v3, v8, :cond_4

    .line 163
    invoke-static {}, Lcom/sec/android/cover/FeatureUtils;->isVZWModel()Z

    move-result v3

    if-nez v3, :cond_3

    invoke-virtual {p1}, Lcom/sec/android/cover/monitor/CoverUpdateMonitor$BatteryStatus;->isWirelssFastCharged()Z

    move-result v3

    if-ne v3, v8, :cond_3

    .line 164
    const-string v3, "MiniViewCoverMainPage"

    const-string v4, "Detected fast wireless charging"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 165
    invoke-virtual {p0}, Lcom/sec/android/cover/miniviewcover/MiniViewCoverMainPage;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget v4, Lcom/sec/android/sviewcover/R$string;->battery_wireless_fast_charging_percent:I

    new-array v5, v8, [Ljava/lang/Object;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v7

    invoke-virtual {v3, v4, v5}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    .line 168
    :cond_3
    const-string v3, "MiniViewCoverMainPage"

    const-string v4, "Detected wireless charging"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 169
    invoke-virtual {p0}, Lcom/sec/android/cover/miniviewcover/MiniViewCoverMainPage;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget v4, Lcom/sec/android/sviewcover/R$string;->battery_wireless_charging_percent:I

    new-array v5, v8, [Ljava/lang/Object;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v7

    invoke-virtual {v3, v4, v5}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    .line 173
    :cond_4
    invoke-static {}, Lcom/sec/android/cover/FeatureUtils;->isVZWModel()Z

    move-result v3

    if-nez v3, :cond_5

    invoke-virtual {p1}, Lcom/sec/android/cover/monitor/CoverUpdateMonitor$BatteryStatus;->isFastCharging()Z

    move-result v3

    if-ne v3, v8, :cond_5

    .line 174
    const-string v3, "MiniViewCoverMainPage"

    const-string v4, "Detected fast wire charging"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 175
    invoke-virtual {p0}, Lcom/sec/android/cover/miniviewcover/MiniViewCoverMainPage;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget v4, Lcom/sec/android/sviewcover/R$string;->battery_fast_charging_percent:I

    new-array v5, v8, [Ljava/lang/Object;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v7

    invoke-virtual {v3, v4, v5}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    .line 178
    :cond_5
    const-string v3, "MiniViewCoverMainPage"

    const-string v4, "Detected wire charging"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 179
    invoke-virtual {p0}, Lcom/sec/android/cover/miniviewcover/MiniViewCoverMainPage;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget v4, Lcom/sec/android/sviewcover/R$string;->battery_charging_percent:I

    new-array v5, v8, [Ljava/lang/Object;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v7

    invoke-virtual {v3, v4, v5}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_1

    .line 187
    .end local v0    # "batteryCharging":Ljava/lang/String;
    :cond_6
    iput-boolean v7, p0, Lcom/sec/android/cover/miniviewcover/MiniViewCoverMainPage;->mBatteryChargingState:Z

    goto/16 :goto_2

    .line 190
    :cond_7
    iput-boolean v7, p0, Lcom/sec/android/cover/miniviewcover/MiniViewCoverMainPage;->mBatteryChargingState:Z

    goto/16 :goto_2
.end method

.method public updateLowBatteryState()V
    .locals 0

    .prologue
    .line 140
    invoke-direct {p0}, Lcom/sec/android/cover/miniviewcover/MiniViewCoverMainPage;->adjustWidgetVisibility()V

    .line 141
    return-void
.end method

.method public updateMainPageLayout()V
    .locals 2

    .prologue
    .line 207
    iget-object v0, p0, Lcom/sec/android/cover/miniviewcover/MiniViewCoverMainPage;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x4e21

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 208
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/android/cover/miniviewcover/MiniViewCoverMainPage;->isBatteryChargingShown:Z

    .line 209
    invoke-direct {p0}, Lcom/sec/android/cover/miniviewcover/MiniViewCoverMainPage;->adjustWidgetVisibility()V

    .line 210
    return-void
.end method
