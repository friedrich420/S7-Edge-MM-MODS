.class public Lcom/sec/android/cover/sviewcover/SViewCoverActivity;
.super Landroid/app/Activity;
.source "SViewCoverActivity.java"


# instance fields
.field protected mCoverManager:Lcom/samsung/android/sdk/cover/ScoverManager;

.field protected mCoverStateListener:Lcom/samsung/android/sdk/cover/ScoverManager$StateListener;

.field protected mNeedtoRemainActivity:Z

.field protected mScover:Lcom/samsung/android/sdk/cover/Scover;

.field private mStatusBarManager:Landroid/app/StatusBarManager;

.field private mUpdateMonitorCallback:Lcom/sec/android/cover/monitor/CoverUpdateMonitorCallback;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 26
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 34
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/android/cover/sviewcover/SViewCoverActivity;->mNeedtoRemainActivity:Z

    .line 36
    new-instance v0, Lcom/sec/android/cover/sviewcover/SViewCoverActivity$1;

    invoke-direct {v0, p0}, Lcom/sec/android/cover/sviewcover/SViewCoverActivity$1;-><init>(Lcom/sec/android/cover/sviewcover/SViewCoverActivity;)V

    iput-object v0, p0, Lcom/sec/android/cover/sviewcover/SViewCoverActivity;->mCoverStateListener:Lcom/samsung/android/sdk/cover/ScoverManager$StateListener;

    .line 46
    new-instance v0, Lcom/sec/android/cover/sviewcover/SViewCoverActivity$2;

    invoke-direct {v0, p0}, Lcom/sec/android/cover/sviewcover/SViewCoverActivity$2;-><init>(Lcom/sec/android/cover/sviewcover/SViewCoverActivity;)V

    iput-object v0, p0, Lcom/sec/android/cover/sviewcover/SViewCoverActivity;->mUpdateMonitorCallback:Lcom/sec/android/cover/monitor/CoverUpdateMonitorCallback;

    return-void
.end method


# virtual methods
.method protected coverCloseEvent()V
    .locals 0

    .prologue
    .line 164
    return-void
.end method

.method protected coverOpenEvent()V
    .locals 1

    .prologue
    .line 167
    sget-boolean v0, Lcom/sec/android/cover/CoverViewMediator;->mTestModeEnabled:Z

    if-nez v0, :cond_0

    .line 168
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/sec/android/cover/sviewcover/SViewCoverActivity;->moveTaskToBack(Z)Z

    .line 170
    :cond_0
    return-void
.end method

.method protected getCoverState()Lcom/samsung/android/sdk/cover/ScoverState;
    .locals 1

    .prologue
    .line 173
    iget-object v0, p0, Lcom/sec/android/cover/sviewcover/SViewCoverActivity;->mCoverManager:Lcom/samsung/android/sdk/cover/ScoverManager;

    if-eqz v0, :cond_0

    .line 174
    iget-object v0, p0, Lcom/sec/android/cover/sviewcover/SViewCoverActivity;->mCoverManager:Lcom/samsung/android/sdk/cover/ScoverManager;

    invoke-virtual {v0}, Lcom/samsung/android/sdk/cover/ScoverManager;->getCoverState()Lcom/samsung/android/sdk/cover/ScoverState;

    move-result-object v0

    .line 176
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected getWallpaperDrawble()Landroid/graphics/drawable/Drawable;
    .locals 2

    .prologue
    .line 159
    invoke-static {p0}, Lcom/sec/android/cover/manager/SViewCoverWallpaperManager;->getInstance(Landroid/content/Context;)Lcom/sec/android/cover/manager/SViewCoverWallpaperManager;

    move-result-object v0

    .line 160
    .local v0, "wallpaperManager":Lcom/sec/android/cover/manager/SViewCoverWallpaperManager;
    invoke-virtual {v0}, Lcom/sec/android/cover/manager/SViewCoverWallpaperManager;->getCurrentWallpaperDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    return-object v1
.end method

.method protected isCoverOpen()Z
    .locals 3

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x1

    .line 181
    sget-boolean v2, Lcom/sec/android/cover/CoverViewMediator;->mTestModeEnabled:Z

    if-ne v2, v0, :cond_1

    move v0, v1

    .line 189
    :cond_0
    :goto_0
    return v0

    .line 185
    :cond_1
    iget-object v2, p0, Lcom/sec/android/cover/sviewcover/SViewCoverActivity;->mCoverManager:Lcom/samsung/android/sdk/cover/ScoverManager;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/sec/android/cover/sviewcover/SViewCoverActivity;->mCoverManager:Lcom/samsung/android/sdk/cover/ScoverManager;

    invoke-virtual {v2}, Lcom/samsung/android/sdk/cover/ScoverManager;->getCoverState()Lcom/samsung/android/sdk/cover/ScoverState;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 189
    iget-object v2, p0, Lcom/sec/android/cover/sviewcover/SViewCoverActivity;->mCoverManager:Lcom/samsung/android/sdk/cover/ScoverManager;

    invoke-virtual {v2}, Lcom/samsung/android/sdk/cover/ScoverManager;->getCoverState()Lcom/samsung/android/sdk/cover/ScoverState;

    move-result-object v2

    invoke-virtual {v2}, Lcom/samsung/android/sdk/cover/ScoverState;->getSwitchState()Z

    move-result v2

    if-eq v2, v0, :cond_0

    move v0, v1

    goto :goto_0
.end method

.method protected needToRemainACtivity(Z)V
    .locals 0
    .param p1, "remain"    # Z

    .prologue
    .line 127
    iput-boolean p1, p0, Lcom/sec/android/cover/sviewcover/SViewCoverActivity;->mNeedtoRemainActivity:Z

    .line 128
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 9
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v7, 0x1

    const/4 v8, -0x1

    .line 58
    const-string v4, "SViewCoverActivity"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "onCreate : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 60
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 62
    invoke-static {p0}, Lcom/sec/android/cover/monitor/CoverUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/sec/android/cover/monitor/CoverUpdateMonitor;

    move-result-object v4

    iget-object v5, p0, Lcom/sec/android/cover/sviewcover/SViewCoverActivity;->mUpdateMonitorCallback:Lcom/sec/android/cover/monitor/CoverUpdateMonitorCallback;

    invoke-virtual {v4, v5}, Lcom/sec/android/cover/monitor/CoverUpdateMonitor;->registerCallback(Lcom/sec/android/cover/monitor/CoverUpdateMonitorCallback;)V

    .line 65
    const/4 v0, 0x1

    .line 66
    .local v0, "deviceSupportCoverSDK":Z
    new-instance v4, Lcom/samsung/android/sdk/cover/Scover;

    invoke-direct {v4}, Lcom/samsung/android/sdk/cover/Scover;-><init>()V

    iput-object v4, p0, Lcom/sec/android/cover/sviewcover/SViewCoverActivity;->mScover:Lcom/samsung/android/sdk/cover/Scover;

    .line 69
    :try_start_0
    iget-object v4, p0, Lcom/sec/android/cover/sviewcover/SViewCoverActivity;->mScover:Lcom/samsung/android/sdk/cover/Scover;

    invoke-virtual {v4, p0}, Lcom/samsung/android/sdk/cover/Scover;->initialize(Landroid/content/Context;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lcom/samsung/android/sdk/SsdkUnsupportedException; {:try_start_0 .. :try_end_0} :catch_1

    .line 76
    :goto_0
    if-eqz v0, :cond_0

    .line 77
    new-instance v4, Lcom/samsung/android/sdk/cover/ScoverManager;

    invoke-direct {v4, p0}, Lcom/samsung/android/sdk/cover/ScoverManager;-><init>(Landroid/content/Context;)V

    iput-object v4, p0, Lcom/sec/android/cover/sviewcover/SViewCoverActivity;->mCoverManager:Lcom/samsung/android/sdk/cover/ScoverManager;

    .line 79
    iget-object v4, p0, Lcom/sec/android/cover/sviewcover/SViewCoverActivity;->mCoverManager:Lcom/samsung/android/sdk/cover/ScoverManager;

    iget-object v5, p0, Lcom/sec/android/cover/sviewcover/SViewCoverActivity;->mCoverStateListener:Lcom/samsung/android/sdk/cover/ScoverManager$StateListener;

    invoke-virtual {v4, v5}, Lcom/samsung/android/sdk/cover/ScoverManager;->registerListener(Lcom/samsung/android/sdk/cover/ScoverManager$StateListener;)V

    .line 86
    const-string v4, "statusbar"

    invoke-virtual {p0, v4}, Lcom/sec/android/cover/sviewcover/SViewCoverActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/app/StatusBarManager;

    iput-object v4, p0, Lcom/sec/android/cover/sviewcover/SViewCoverActivity;->mStatusBarManager:Landroid/app/StatusBarManager;

    .line 90
    invoke-virtual {p0}, Lcom/sec/android/cover/sviewcover/SViewCoverActivity;->isCoverOpen()Z

    move-result v4

    if-ne v4, v7, :cond_1

    .line 91
    const-string v4, "SViewCoverActivity"

    const-string v5, "onCreate : The cover is opened! Finishing activity..."

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 92
    invoke-virtual {p0}, Lcom/sec/android/cover/sviewcover/SViewCoverActivity;->finish()V

    .line 115
    :goto_1
    return-void

    .line 70
    :catch_0
    move-exception v1

    .line 71
    .local v1, "e":Ljava/lang/IllegalArgumentException;
    const/4 v0, 0x0

    .line 74
    goto :goto_0

    .line 72
    .end local v1    # "e":Ljava/lang/IllegalArgumentException;
    :catch_1
    move-exception v1

    .line 73
    .local v1, "e":Lcom/samsung/android/sdk/SsdkUnsupportedException;
    const/4 v0, 0x0

    goto :goto_0

    .line 81
    .end local v1    # "e":Lcom/samsung/android/sdk/SsdkUnsupportedException;
    :cond_0
    const-string v4, "SViewCoverActivity"

    const-string v5, "This device does not support cover SDK!"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 82
    invoke-virtual {p0}, Lcom/sec/android/cover/sviewcover/SViewCoverActivity;->finish()V

    goto :goto_1

    .line 98
    :cond_1
    invoke-static {p0}, Lcom/sec/android/cover/CoverUtils;->isCallActive(Landroid/content/Context;)Z

    move-result v4

    if-ne v4, v7, :cond_2

    .line 99
    const-string v4, "SViewCoverActivity"

    const-string v5, "onCreate : Call is active. Finishing activity..."

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 100
    invoke-virtual {p0}, Lcom/sec/android/cover/sviewcover/SViewCoverActivity;->finish()V

    goto :goto_1

    .line 105
    :cond_2
    const/high16 v2, 0x4080000

    .line 107
    .local v2, "flag":I
    invoke-virtual {p0}, Lcom/sec/android/cover/sviewcover/SViewCoverActivity;->getWindow()Landroid/view/Window;

    move-result-object v3

    .line 109
    .local v3, "window":Landroid/view/Window;
    invoke-virtual {v3}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v4

    const-wide/16 v6, 0x1770

    iput-wide v6, v4, Landroid/view/WindowManager$LayoutParams;->userActivityTimeout:J

    .line 110
    invoke-virtual {v3}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v4

    const-wide/16 v6, 0x0

    iput-wide v6, v4, Landroid/view/WindowManager$LayoutParams;->screenDimDuration:J

    .line 111
    invoke-virtual {v3, v8, v8}, Landroid/view/Window;->setLayout(II)V

    .line 113
    invoke-virtual {v3, v2}, Landroid/view/Window;->addFlags(I)V

    .line 114
    const/4 v4, 0x2

    invoke-virtual {v3, v4}, Landroid/view/Window;->clearFlags(I)V

    goto :goto_1
.end method

.method protected onDestroy()V
    .locals 2

    .prologue
    .line 148
    const-string v0, "SViewCoverActivity"

    const-string v1, "onDestroy"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 149
    iget-object v0, p0, Lcom/sec/android/cover/sviewcover/SViewCoverActivity;->mCoverManager:Lcom/samsung/android/sdk/cover/ScoverManager;

    if-eqz v0, :cond_0

    .line 150
    iget-object v0, p0, Lcom/sec/android/cover/sviewcover/SViewCoverActivity;->mCoverManager:Lcom/samsung/android/sdk/cover/ScoverManager;

    iget-object v1, p0, Lcom/sec/android/cover/sviewcover/SViewCoverActivity;->mCoverStateListener:Lcom/samsung/android/sdk/cover/ScoverManager$StateListener;

    invoke-virtual {v0, v1}, Lcom/samsung/android/sdk/cover/ScoverManager;->unregisterListener(Lcom/samsung/android/sdk/cover/ScoverManager$StateListener;)V

    .line 153
    :cond_0
    invoke-static {p0}, Lcom/sec/android/cover/monitor/CoverUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/sec/android/cover/monitor/CoverUpdateMonitor;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/cover/sviewcover/SViewCoverActivity;->mUpdateMonitorCallback:Lcom/sec/android/cover/monitor/CoverUpdateMonitorCallback;

    invoke-virtual {v0, v1}, Lcom/sec/android/cover/monitor/CoverUpdateMonitor;->unregisterCallback(Lcom/sec/android/cover/monitor/CoverUpdateMonitorCallback;)V

    .line 155
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 156
    return-void
.end method

.method public onPause()V
    .locals 2

    .prologue
    .line 140
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 141
    iget-object v0, p0, Lcom/sec/android/cover/sviewcover/SViewCoverActivity;->mStatusBarManager:Landroid/app/StatusBarManager;

    if-eqz v0, :cond_0

    .line 142
    iget-object v0, p0, Lcom/sec/android/cover/sviewcover/SViewCoverActivity;->mStatusBarManager:Landroid/app/StatusBarManager;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/StatusBarManager;->disable(I)V

    .line 144
    :cond_0
    return-void
.end method

.method public onResume()V
    .locals 2

    .prologue
    .line 132
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 133
    iget-object v0, p0, Lcom/sec/android/cover/sviewcover/SViewCoverActivity;->mStatusBarManager:Landroid/app/StatusBarManager;

    if-eqz v0, :cond_0

    .line 134
    iget-object v0, p0, Lcom/sec/android/cover/sviewcover/SViewCoverActivity;->mStatusBarManager:Landroid/app/StatusBarManager;

    const/high16 v1, 0x10000

    invoke-virtual {v0, v1}, Landroid/app/StatusBarManager;->disable(I)V

    .line 136
    :cond_0
    return-void
.end method

.method public onWindowFocusChanged(Z)V
    .locals 1
    .param p1, "hasFocus"    # Z

    .prologue
    .line 119
    invoke-super {p0, p1}, Landroid/app/Activity;->onWindowFocusChanged(Z)V

    .line 121
    if-eqz p1, :cond_0

    .line 122
    invoke-virtual {p0}, Lcom/sec/android/cover/sviewcover/SViewCoverActivity;->getBaseContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/sec/android/cover/manager/CoverPowerManager;->getInstance(Landroid/content/Context;)Lcom/sec/android/cover/manager/CoverPowerManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/cover/manager/CoverPowerManager;->resetScreenOffTimer()V

    .line 124
    :cond_0
    return-void
.end method
