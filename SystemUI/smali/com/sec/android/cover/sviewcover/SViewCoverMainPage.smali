.class public Lcom/sec/android/cover/sviewcover/SViewCoverMainPage;
.super Landroid/widget/LinearLayout;
.source "SViewCoverMainPage.java"

# interfaces
.implements Lcom/sec/android/cover/sviewcover/SViewCoverPager$SViewCoverPageCallback;


# instance fields
.field private mBasicWidgetContainer:Landroid/view/ViewGroup;

.field private mBatteryCharingText:Landroid/widget/TextView;

.field private mBatteryContainer:Lcom/sec/android/cover/widget/RemoteViewContainerView;

.field private mClockContainer:Landroid/widget/LinearLayout;

.field private mClockWidget:Landroid/view/View;

.field private mContext:Landroid/content/Context;

.field private mDisasterAlertText:Landroid/widget/TextView;

.field private mDualClockWidget:Landroid/view/View;

.field private mKidsMusicPlayerContainer:Lcom/sec/android/cover/widget/RemoteViewContainerView;

.field private mLastBatteryPluggedState:I

.field private mMusicPlayerContainer:Lcom/sec/android/cover/widget/RemoteViewContainerView;

.field private mOnHoverListener:Landroid/view/View$OnHoverListener;

.field private mSHealthContainer:Lcom/sec/android/cover/widget/RemoteViewContainerView;

.field private mStatusBarState:I

.field private mStylizedClockManager:Lcom/sec/android/cover/sviewcover/stylizedclock/SViewCoverStylizedClockManager;

.field private mStylizedClockView:Lcom/sec/android/cover/sviewcover/stylizedclock/SViewCoverStylizedClockView;

.field private mThemeDualImageClock:Landroid/view/View;

.field private mThemeImageClock:Landroid/view/View;

.field private mUnlockArea:Landroid/view/View;

.field private mUpdateMonitorCallback:Lcom/sec/android/cover/monitor/CoverUpdateMonitorCallback;

.field private mUseThemeClocks:Z

.field private mVoiceRecorderContainer:Lcom/sec/android/cover/widget/RemoteViewContainerView;

.field private mWeatherHealthContainer:Landroid/widget/LinearLayout;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x0

    .line 117
    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 53
    iput-object v1, p0, Lcom/sec/android/cover/sviewcover/SViewCoverMainPage;->mThemeImageClock:Landroid/view/View;

    .line 54
    iput-object v1, p0, Lcom/sec/android/cover/sviewcover/SViewCoverMainPage;->mThemeDualImageClock:Landroid/view/View;

    .line 55
    iput-boolean v0, p0, Lcom/sec/android/cover/sviewcover/SViewCoverMainPage;->mUseThemeClocks:Z

    .line 75
    iput v0, p0, Lcom/sec/android/cover/sviewcover/SViewCoverMainPage;->mStatusBarState:I

    .line 76
    iput v0, p0, Lcom/sec/android/cover/sviewcover/SViewCoverMainPage;->mLastBatteryPluggedState:I

    .line 78
    new-instance v0, Lcom/sec/android/cover/sviewcover/SViewCoverMainPage$1;

    invoke-direct {v0, p0}, Lcom/sec/android/cover/sviewcover/SViewCoverMainPage$1;-><init>(Lcom/sec/android/cover/sviewcover/SViewCoverMainPage;)V

    iput-object v0, p0, Lcom/sec/android/cover/sviewcover/SViewCoverMainPage;->mUpdateMonitorCallback:Lcom/sec/android/cover/monitor/CoverUpdateMonitorCallback;

    .line 292
    new-instance v0, Lcom/sec/android/cover/sviewcover/SViewCoverMainPage$7;

    invoke-direct {v0, p0}, Lcom/sec/android/cover/sviewcover/SViewCoverMainPage$7;-><init>(Lcom/sec/android/cover/sviewcover/SViewCoverMainPage;)V

    iput-object v0, p0, Lcom/sec/android/cover/sviewcover/SViewCoverMainPage;->mOnHoverListener:Landroid/view/View$OnHoverListener;

    .line 118
    invoke-direct {p0, p1}, Lcom/sec/android/cover/sviewcover/SViewCoverMainPage;->setupChildViews(Landroid/content/Context;)V

    .line 119
    return-void
.end method

.method static synthetic access$000(Lcom/sec/android/cover/sviewcover/SViewCoverMainPage;Ljava/lang/Object;)V
    .locals 0
    .param p0, "x0"    # Lcom/sec/android/cover/sviewcover/SViewCoverMainPage;
    .param p1, "x1"    # Ljava/lang/Object;

    .prologue
    .line 44
    invoke-direct {p0, p1}, Lcom/sec/android/cover/sviewcover/SViewCoverMainPage;->updateDisasterAlertWidgetState(Ljava/lang/Object;)V

    return-void
.end method

.method static synthetic access$100(Lcom/sec/android/cover/sviewcover/SViewCoverMainPage;Ljava/lang/Object;)V
    .locals 0
    .param p0, "x0"    # Lcom/sec/android/cover/sviewcover/SViewCoverMainPage;
    .param p1, "x1"    # Ljava/lang/Object;

    .prologue
    .line 44
    invoke-direct {p0, p1}, Lcom/sec/android/cover/sviewcover/SViewCoverMainPage;->updateBatteryStateWidgetState(Ljava/lang/Object;)V

    return-void
.end method

.method static synthetic access$200(Lcom/sec/android/cover/sviewcover/SViewCoverMainPage;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/sec/android/cover/sviewcover/SViewCoverMainPage;

    .prologue
    .line 44
    iget-object v0, p0, Lcom/sec/android/cover/sviewcover/SViewCoverMainPage;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$300(Lcom/sec/android/cover/sviewcover/SViewCoverMainPage;)V
    .locals 0
    .param p0, "x0"    # Lcom/sec/android/cover/sviewcover/SViewCoverMainPage;

    .prologue
    .line 44
    invoke-direct {p0}, Lcom/sec/android/cover/sviewcover/SViewCoverMainPage;->setClockVisibility()V

    return-void
.end method

.method static synthetic access$400(Lcom/sec/android/cover/sviewcover/SViewCoverMainPage;)V
    .locals 0
    .param p0, "x0"    # Lcom/sec/android/cover/sviewcover/SViewCoverMainPage;

    .prologue
    .line 44
    invoke-direct {p0}, Lcom/sec/android/cover/sviewcover/SViewCoverMainPage;->setupStylizedClockStyle()V

    return-void
.end method

.method static synthetic access$500(Lcom/sec/android/cover/sviewcover/SViewCoverMainPage;)V
    .locals 0
    .param p0, "x0"    # Lcom/sec/android/cover/sviewcover/SViewCoverMainPage;

    .prologue
    .line 44
    invoke-direct {p0}, Lcom/sec/android/cover/sviewcover/SViewCoverMainPage;->adjustWidgetVisibility()V

    return-void
.end method

.method private adjustWidgetVisibility()V
    .locals 21

    .prologue
    .line 498
    invoke-static {}, Lcom/sec/android/cover/FeatureUtils;->isSupportNotificationOnCover()Z

    move-result v18

    if-eqz v18, :cond_0

    .line 602
    :goto_0
    return-void

    .line 501
    :cond_0
    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/cover/sviewcover/SViewCoverMainPage;->getContext()Landroid/content/Context;

    move-result-object v4

    .line 502
    .local v4, "context":Landroid/content/Context;
    invoke-static {v4}, Lcom/sec/android/cover/CoverUtils;->isEmergencyMode(Landroid/content/Context;)Z

    move-result v7

    .line 503
    .local v7, "isEmergencyMode":Z
    invoke-static {v4}, Lcom/sec/android/cover/CoverUtils;->isKidsMode(Landroid/content/Context;)Z

    move-result v8

    .line 504
    .local v8, "isKidsMode":Z
    invoke-static {v4}, Lcom/sec/android/cover/CoverUtils;->isCarMode(Landroid/content/Context;)Z

    move-result v6

    .line 506
    .local v6, "isCarMode":Z
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/cover/sviewcover/SViewCoverMainPage;->mContext:Landroid/content/Context;

    move-object/from16 v18, v0

    invoke-static/range {v18 .. v18}, Lcom/sec/android/cover/manager/CoverRemoteViewManager;->getInstance(Landroid/content/Context;)Lcom/sec/android/cover/manager/CoverRemoteViewManager;

    move-result-object v12

    .line 507
    .local v12, "mgr":Lcom/sec/android/cover/manager/CoverRemoteViewManager;
    const-string v18, "music_controller"

    move-object/from16 v0, v18

    invoke-virtual {v12, v0}, Lcom/sec/android/cover/manager/CoverRemoteViewManager;->isRemoteViewAvailable(Ljava/lang/String;)Z

    move-result v13

    .line 508
    .local v13, "musicPlayerAvailable":Z
    const-string v18, "kids_music_controller"

    move-object/from16 v0, v18

    invoke-virtual {v12, v0}, Lcom/sec/android/cover/manager/CoverRemoteViewManager;->isRemoteViewAvailable(Ljava/lang/String;)Z

    move-result v10

    .line 509
    .local v10, "kidsMusicPlayerAvailable":Z
    const-string v18, "voice_recorder"

    move-object/from16 v0, v18

    invoke-virtual {v12, v0}, Lcom/sec/android/cover/manager/CoverRemoteViewManager;->isRemoteViewAvailable(Ljava/lang/String;)Z

    move-result v16

    .line 510
    .local v16, "voiceRecorderAvailable":Z
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/cover/sviewcover/SViewCoverMainPage;->mStylizedClockManager:Lcom/sec/android/cover/sviewcover/stylizedclock/SViewCoverStylizedClockManager;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Lcom/sec/android/cover/sviewcover/stylizedclock/SViewCoverStylizedClockManager;->isEnabled()Z

    move-result v14

    .line 512
    .local v14, "stylizedClockAvailable":Z
    const/16 v17, 0x0

    .line 513
    .local v17, "weatherHealthContatinerVisibility":I
    const/4 v3, 0x0

    .line 514
    .local v3, "batteryContainerVisibility":I
    const/4 v2, 0x0

    .line 515
    .local v2, "basicWidgetContainerVisibility":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/cover/sviewcover/SViewCoverMainPage;->mStylizedClockManager:Lcom/sec/android/cover/sviewcover/stylizedclock/SViewCoverStylizedClockManager;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Lcom/sec/android/cover/sviewcover/stylizedclock/SViewCoverStylizedClockManager;->isEnabled()Z

    move-result v18

    if-eqz v18, :cond_a

    const/4 v15, 0x0

    .line 517
    .local v15, "stylizedClockVisibility":I
    :goto_1
    if-eqz v7, :cond_b

    .line 518
    const/16 v17, 0x8

    .line 519
    const/16 v3, 0x8

    .line 520
    const/16 v15, 0x8

    .line 521
    const/4 v13, 0x0

    .line 523
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/cover/sviewcover/SViewCoverMainPage;->mMusicPlayerContainer:Lcom/sec/android/cover/widget/RemoteViewContainerView;

    move-object/from16 v18, v0

    if-eqz v18, :cond_1

    .line 524
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/cover/sviewcover/SViewCoverMainPage;->mMusicPlayerContainer:Lcom/sec/android/cover/widget/RemoteViewContainerView;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Lcom/sec/android/cover/widget/RemoteViewContainerView;->removeRemoteView()V

    .line 574
    :cond_1
    :goto_2
    const/16 v18, 0x1

    move/from16 v0, v18

    if-eq v13, v0, :cond_2

    const/16 v18, 0x1

    move/from16 v0, v18

    if-eq v10, v0, :cond_2

    const/16 v18, 0x1

    move/from16 v0, v16

    move/from16 v1, v18

    if-ne v0, v1, :cond_3

    .line 575
    :cond_2
    const/16 v15, 0x8

    .line 576
    const/16 v2, 0x8

    .line 579
    :cond_3
    if-nez v17, :cond_4

    invoke-static {}, Lcom/sec/android/cover/FeatureUtils;->isTProject()Z

    move-result v18

    if-eqz v18, :cond_4

    .line 580
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/cover/sviewcover/SViewCoverMainPage;->mContext:Landroid/content/Context;

    move-object/from16 v18, v0

    invoke-static/range {v18 .. v18}, Lcom/sec/android/cover/manager/CoverDatabaseManager;->getInstance(Landroid/content/Context;)Lcom/sec/android/cover/manager/CoverDatabaseManager;

    move-result-object v18

    const-string v19, "lock_show_info"

    const/16 v20, 0x1

    invoke-virtual/range {v18 .. v20}, Lcom/sec/android/cover/manager/CoverDatabaseManager;->getInt(Ljava/lang/String;I)I

    move-result v18

    const/16 v19, 0x1

    move/from16 v0, v18

    move/from16 v1, v19

    if-ne v0, v1, :cond_14

    const/4 v9, 0x1

    .line 583
    .local v9, "isShowInformationEnabled":Z
    :goto_3
    if-nez v9, :cond_4

    .line 584
    const/16 v17, 0x8

    .line 588
    .end local v9    # "isShowInformationEnabled":Z
    :cond_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/cover/sviewcover/SViewCoverMainPage;->mWeatherHealthContainer:Landroid/widget/LinearLayout;

    move-object/from16 v18, v0

    if-eqz v18, :cond_5

    .line 589
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/cover/sviewcover/SViewCoverMainPage;->mWeatherHealthContainer:Landroid/widget/LinearLayout;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 590
    :cond_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/cover/sviewcover/SViewCoverMainPage;->mBatteryContainer:Lcom/sec/android/cover/widget/RemoteViewContainerView;

    move-object/from16 v18, v0

    if-eqz v18, :cond_6

    .line 591
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/cover/sviewcover/SViewCoverMainPage;->mBatteryContainer:Lcom/sec/android/cover/widget/RemoteViewContainerView;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-virtual {v0, v3}, Lcom/sec/android/cover/widget/RemoteViewContainerView;->setVisibility(I)V

    .line 592
    :cond_6
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/cover/sviewcover/SViewCoverMainPage;->mBasicWidgetContainer:Landroid/view/ViewGroup;

    move-object/from16 v18, v0

    if-eqz v18, :cond_7

    .line 593
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/cover/sviewcover/SViewCoverMainPage;->mBasicWidgetContainer:Landroid/view/ViewGroup;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 594
    :cond_7
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/cover/sviewcover/SViewCoverMainPage;->mStylizedClockView:Lcom/sec/android/cover/sviewcover/stylizedclock/SViewCoverStylizedClockView;

    move-object/from16 v18, v0

    if-eqz v18, :cond_8

    .line 595
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/cover/sviewcover/SViewCoverMainPage;->mStylizedClockView:Lcom/sec/android/cover/sviewcover/stylizedclock/SViewCoverStylizedClockView;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-virtual {v0, v15}, Lcom/sec/android/cover/sviewcover/stylizedclock/SViewCoverStylizedClockView;->setVisibility(I)V

    .line 597
    :cond_8
    if-nez v17, :cond_9

    .line 598
    invoke-direct/range {p0 .. p0}, Lcom/sec/android/cover/sviewcover/SViewCoverMainPage;->updateWeatherHealthContainer()V

    .line 601
    :cond_9
    invoke-direct/range {p0 .. p0}, Lcom/sec/android/cover/sviewcover/SViewCoverMainPage;->getTTSonlyTime()Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/sec/android/cover/sviewcover/SViewCoverMainPage;->setContentDescription(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    .line 515
    .end local v15    # "stylizedClockVisibility":I
    :cond_a
    const/16 v15, 0x8

    goto/16 :goto_1

    .line 526
    .restart local v15    # "stylizedClockVisibility":I
    :cond_b
    const/16 v18, 0x1

    move/from16 v0, v18

    if-ne v13, v0, :cond_c

    .line 527
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/cover/sviewcover/SViewCoverMainPage;->mMusicPlayerContainer:Lcom/sec/android/cover/widget/RemoteViewContainerView;

    move-object/from16 v18, v0

    if-eqz v18, :cond_c

    .line 528
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/cover/sviewcover/SViewCoverMainPage;->mMusicPlayerContainer:Lcom/sec/android/cover/widget/RemoteViewContainerView;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Lcom/sec/android/cover/widget/RemoteViewContainerView;->showRemoteView()V

    .line 531
    :cond_c
    if-eqz v8, :cond_d

    .line 532
    const/16 v17, 0x8

    .line 533
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/cover/sviewcover/SViewCoverMainPage;->mMusicPlayerContainer:Lcom/sec/android/cover/widget/RemoteViewContainerView;

    move-object/from16 v18, v0

    if-eqz v18, :cond_d

    .line 534
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/cover/sviewcover/SViewCoverMainPage;->mMusicPlayerContainer:Lcom/sec/android/cover/widget/RemoteViewContainerView;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Lcom/sec/android/cover/widget/RemoteViewContainerView;->removeRemoteView()V

    .line 537
    :cond_d
    if-eqz v6, :cond_e

    .line 538
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/cover/sviewcover/SViewCoverMainPage;->mMusicPlayerContainer:Lcom/sec/android/cover/widget/RemoteViewContainerView;

    move-object/from16 v18, v0

    if-eqz v18, :cond_e

    .line 539
    const-string v18, "SViewCoverMainPage"

    const-string v19, "Hide MusicPlayerContainer by Carmode"

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 540
    const/4 v13, 0x0

    .line 541
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/cover/sviewcover/SViewCoverMainPage;->mMusicPlayerContainer:Lcom/sec/android/cover/widget/RemoteViewContainerView;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Lcom/sec/android/cover/widget/RemoteViewContainerView;->removeRemoteView()V

    .line 545
    :cond_e
    const-string v18, "battery"

    move-object/from16 v0, v18

    invoke-virtual {v12, v0}, Lcom/sec/android/cover/manager/CoverRemoteViewManager;->getRemoteViewInfo(Ljava/lang/String;)Lcom/sec/android/cover/monitor/CoverUpdateMonitor$RemoteViewInfo;

    move-result-object v11

    .line 546
    .local v11, "lowBattery":Lcom/sec/android/cover/monitor/CoverUpdateMonitor$RemoteViewInfo;
    if-eqz v11, :cond_f

    iget-boolean v0, v11, Lcom/sec/android/cover/monitor/CoverUpdateMonitor$RemoteViewInfo;->mVisibility:Z

    move/from16 v18, v0

    const/16 v19, 0x1

    move/from16 v0, v18

    move/from16 v1, v19

    if-ne v0, v1, :cond_f

    .line 547
    const/16 v17, 0x8

    .line 550
    :cond_f
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/cover/sviewcover/SViewCoverMainPage;->mSHealthContainer:Lcom/sec/android/cover/widget/RemoteViewContainerView;

    move-object/from16 v18, v0

    if-eqz v18, :cond_10

    .line 551
    invoke-direct/range {p0 .. p0}, Lcom/sec/android/cover/sviewcover/SViewCoverMainPage;->isSHealthInstalled()Z

    move-result v18

    if-nez v18, :cond_11

    .line 552
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/cover/sviewcover/SViewCoverMainPage;->mSHealthContainer:Lcom/sec/android/cover/widget/RemoteViewContainerView;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Lcom/sec/android/cover/widget/RemoteViewContainerView;->hideRemoteView()V

    .line 567
    :cond_10
    :goto_4
    if-eqz v14, :cond_1

    .line 568
    const/16 v2, 0x8

    goto/16 :goto_2

    .line 554
    :cond_11
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/cover/sviewcover/SViewCoverMainPage;->mContext:Landroid/content/Context;

    move-object/from16 v18, v0

    invoke-static/range {v18 .. v18}, Lcom/sec/android/cover/manager/CoverDatabaseManager;->getInstance(Landroid/content/Context;)Lcom/sec/android/cover/manager/CoverDatabaseManager;

    move-result-object v18

    const-string v19, "lock_additional_steps"

    const/16 v20, 0x0

    invoke-virtual/range {v18 .. v20}, Lcom/sec/android/cover/manager/CoverDatabaseManager;->getInt(Ljava/lang/String;I)I

    move-result v18

    if-eqz v18, :cond_12

    const/4 v5, 0x1

    .line 557
    .local v5, "healthWidgetEnabled":Z
    :goto_5
    const-string v18, "SViewCoverMainPage"

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "Is checked S_health ="

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 559
    if-eqz v5, :cond_13

    .line 560
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/cover/sviewcover/SViewCoverMainPage;->mSHealthContainer:Lcom/sec/android/cover/widget/RemoteViewContainerView;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Lcom/sec/android/cover/widget/RemoteViewContainerView;->showRemoteView()V

    goto :goto_4

    .line 554
    .end local v5    # "healthWidgetEnabled":Z
    :cond_12
    const/4 v5, 0x0

    goto :goto_5

    .line 562
    .restart local v5    # "healthWidgetEnabled":Z
    :cond_13
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/cover/sviewcover/SViewCoverMainPage;->mSHealthContainer:Lcom/sec/android/cover/widget/RemoteViewContainerView;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Lcom/sec/android/cover/widget/RemoteViewContainerView;->hideRemoteView()V

    goto :goto_4

    .line 580
    .end local v5    # "healthWidgetEnabled":Z
    .end local v11    # "lowBattery":Lcom/sec/android/cover/monitor/CoverUpdateMonitor$RemoteViewInfo;
    :cond_14
    const/4 v9, 0x0

    goto/16 :goto_3
.end method

.method private getTTSonlyTime()Ljava/lang/String;
    .locals 8

    .prologue
    .line 139
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v2

    .line 140
    .local v2, "mCalendar":Ljava/util/Calendar;
    const-string v0, ""

    .line 145
    .local v0, "TTSMessage":Ljava/lang/String;
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    invoke-virtual {v2, v6, v7}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 146
    const/4 v3, 0x0

    .line 147
    .local v3, "mIs24HTime":Z
    iget-object v5, p0, Lcom/sec/android/cover/sviewcover/SViewCoverMainPage;->mContext:Landroid/content/Context;

    if-eqz v5, :cond_0

    .line 148
    iget-object v5, p0, Lcom/sec/android/cover/sviewcover/SViewCoverMainPage;->mContext:Landroid/content/Context;

    invoke-static {v5}, Landroid/text/format/DateFormat;->is24HourFormat(Landroid/content/Context;)Z

    move-result v3

    .line 150
    :cond_0
    if-eqz v3, :cond_1

    .line 151
    const-string v5, "kk:mm"

    invoke-static {v5, v2}, Landroid/text/format/DateFormat;->format(Ljava/lang/CharSequence;Ljava/util/Calendar;)Ljava/lang/CharSequence;

    move-result-object v5

    invoke-interface {v5}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v4

    .line 162
    .local v4, "mTTSTime":Ljava/lang/String;
    :goto_0
    move-object v0, v4

    .line 163
    return-object v0

    .line 153
    .end local v4    # "mTTSTime":Ljava/lang/String;
    :cond_1
    sget-object v5, Lcom/sec/android/cover/sviewcover/widget/SViewCoverClockWidget;->mTimeFormat:Ljava/lang/String;

    invoke-static {v5, v2}, Landroid/text/format/DateFormat;->format(Ljava/lang/CharSequence;Ljava/util/Calendar;)Ljava/lang/CharSequence;

    move-result-object v5

    invoke-interface {v5}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v4

    .line 154
    .restart local v4    # "mTTSTime":Ljava/lang/String;
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v5

    invoke-virtual {v5}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v1

    .line 156
    .local v1, "currentLanguage":Ljava/lang/String;
    sget-object v5, Ljava/util/Locale;->KOREAN:Ljava/util/Locale;

    invoke-virtual {v5}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 157
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "AA"

    invoke-static {v6, v2}, Landroid/text/format/DateFormat;->format(Ljava/lang/CharSequence;Ljava/util/Calendar;)Ljava/lang/CharSequence;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    goto :goto_0

    .line 159
    :cond_2
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "AA"

    invoke-static {v6, v2}, Landroid/text/format/DateFormat;->format(Ljava/lang/CharSequence;Ljava/util/Calendar;)Ljava/lang/CharSequence;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    goto :goto_0
.end method

.method private isSHealthInstalled()Z
    .locals 3

    .prologue
    .line 486
    invoke-virtual {p0}, Lcom/sec/android/cover/sviewcover/SViewCoverMainPage;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "com.sec.android.app.shealth"

    invoke-static {v1, v2}, Lcom/sec/android/cover/CoverUtils;->isPackageInstalled(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    .line 488
    .local v0, "isInstalled":Z
    if-nez v0, :cond_0

    .line 489
    const-string v1, "SViewCoverMainPage"

    const-string v2, "isSHealthInstalled : SHealth is not installed"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 494
    :goto_0
    return v0

    .line 491
    :cond_0
    const-string v1, "SViewCoverMainPage"

    const-string v2, "isSHealthInstalled : SHealth is installed"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private setClockVisibility()V
    .locals 7

    .prologue
    const/4 v0, 0x1

    const/4 v2, 0x0

    const/16 v6, 0x8

    .line 302
    invoke-static {}, Lcom/sec/android/cover/FeatureUtils;->isSupportNotificationOnCover()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 347
    :cond_0
    :goto_0
    return-void

    .line 305
    :cond_1
    iget-object v3, p0, Lcom/sec/android/cover/sviewcover/SViewCoverMainPage;->mContext:Landroid/content/Context;

    invoke-static {v3}, Lcom/sec/android/cover/manager/CoverDatabaseManager;->getInstance(Landroid/content/Context;)Lcom/sec/android/cover/manager/CoverDatabaseManager;

    move-result-object v3

    const-string v4, "dualclock_menu_settings"

    invoke-virtual {v3, v4, v2}, Lcom/sec/android/cover/manager/CoverDatabaseManager;->getInt(Ljava/lang/String;I)I

    move-result v3

    if-ne v3, v0, :cond_3

    .line 308
    .local v0, "isDualClock":Z
    :goto_1
    iget-object v3, p0, Lcom/sec/android/cover/sviewcover/SViewCoverMainPage;->mContext:Landroid/content/Context;

    invoke-static {v3}, Lcom/sec/android/cover/CoverUtils;->isNetworkRoaming(Landroid/content/Context;)Z

    move-result v1

    .line 310
    .local v1, "isRoaming":Z
    const-string v3, "SViewCoverMainPage"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "setClockVisibility : isDualClock="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " isRoaming="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 312
    if-eqz v0, :cond_5

    if-eqz v1, :cond_5

    .line 314
    iget-object v3, p0, Lcom/sec/android/cover/sviewcover/SViewCoverMainPage;->mClockWidget:Landroid/view/View;

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/sec/android/cover/sviewcover/SViewCoverMainPage;->mDualClockWidget:Landroid/view/View;

    if-eqz v3, :cond_0

    .line 315
    iget-object v3, p0, Lcom/sec/android/cover/sviewcover/SViewCoverMainPage;->mClockWidget:Landroid/view/View;

    invoke-virtual {v3, v6}, Landroid/view/View;->setVisibility(I)V

    .line 316
    iget-object v3, p0, Lcom/sec/android/cover/sviewcover/SViewCoverMainPage;->mThemeImageClock:Landroid/view/View;

    if-eqz v3, :cond_2

    .line 317
    iget-object v3, p0, Lcom/sec/android/cover/sviewcover/SViewCoverMainPage;->mThemeImageClock:Landroid/view/View;

    invoke-virtual {v3, v6}, Landroid/view/View;->setVisibility(I)V

    .line 319
    :cond_2
    iget-boolean v3, p0, Lcom/sec/android/cover/sviewcover/SViewCoverMainPage;->mUseThemeClocks:Z

    if-eqz v3, :cond_4

    .line 320
    iget-object v3, p0, Lcom/sec/android/cover/sviewcover/SViewCoverMainPage;->mDualClockWidget:Landroid/view/View;

    invoke-virtual {v3, v6}, Landroid/view/View;->setVisibility(I)V

    .line 321
    iget-object v3, p0, Lcom/sec/android/cover/sviewcover/SViewCoverMainPage;->mThemeDualImageClock:Landroid/view/View;

    if-eqz v3, :cond_0

    .line 322
    iget-object v3, p0, Lcom/sec/android/cover/sviewcover/SViewCoverMainPage;->mThemeDualImageClock:Landroid/view/View;

    invoke-virtual {v3, v2}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    .end local v0    # "isDualClock":Z
    .end local v1    # "isRoaming":Z
    :cond_3
    move v0, v2

    .line 305
    goto :goto_1

    .line 324
    .restart local v0    # "isDualClock":Z
    .restart local v1    # "isRoaming":Z
    :cond_4
    iget-object v3, p0, Lcom/sec/android/cover/sviewcover/SViewCoverMainPage;->mDualClockWidget:Landroid/view/View;

    invoke-virtual {v3, v2}, Landroid/view/View;->setVisibility(I)V

    .line 325
    iget-object v2, p0, Lcom/sec/android/cover/sviewcover/SViewCoverMainPage;->mThemeDualImageClock:Landroid/view/View;

    if-eqz v2, :cond_0

    .line 326
    iget-object v2, p0, Lcom/sec/android/cover/sviewcover/SViewCoverMainPage;->mThemeDualImageClock:Landroid/view/View;

    invoke-virtual {v2, v6}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    .line 330
    :cond_5
    iget-object v3, p0, Lcom/sec/android/cover/sviewcover/SViewCoverMainPage;->mClockWidget:Landroid/view/View;

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/sec/android/cover/sviewcover/SViewCoverMainPage;->mDualClockWidget:Landroid/view/View;

    if-eqz v3, :cond_0

    .line 331
    iget-object v3, p0, Lcom/sec/android/cover/sviewcover/SViewCoverMainPage;->mDualClockWidget:Landroid/view/View;

    invoke-virtual {v3, v6}, Landroid/view/View;->setVisibility(I)V

    .line 332
    iget-object v3, p0, Lcom/sec/android/cover/sviewcover/SViewCoverMainPage;->mThemeDualImageClock:Landroid/view/View;

    if-eqz v3, :cond_6

    .line 333
    iget-object v3, p0, Lcom/sec/android/cover/sviewcover/SViewCoverMainPage;->mThemeDualImageClock:Landroid/view/View;

    invoke-virtual {v3, v6}, Landroid/view/View;->setVisibility(I)V

    .line 335
    :cond_6
    iget-boolean v3, p0, Lcom/sec/android/cover/sviewcover/SViewCoverMainPage;->mUseThemeClocks:Z

    if-eqz v3, :cond_7

    .line 336
    iget-object v3, p0, Lcom/sec/android/cover/sviewcover/SViewCoverMainPage;->mClockWidget:Landroid/view/View;

    invoke-virtual {v3, v6}, Landroid/view/View;->setVisibility(I)V

    .line 337
    iget-object v3, p0, Lcom/sec/android/cover/sviewcover/SViewCoverMainPage;->mThemeImageClock:Landroid/view/View;

    if-eqz v3, :cond_0

    .line 338
    iget-object v3, p0, Lcom/sec/android/cover/sviewcover/SViewCoverMainPage;->mThemeImageClock:Landroid/view/View;

    invoke-virtual {v3, v2}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_0

    .line 340
    :cond_7
    iget-object v3, p0, Lcom/sec/android/cover/sviewcover/SViewCoverMainPage;->mClockWidget:Landroid/view/View;

    invoke-virtual {v3, v2}, Landroid/view/View;->setVisibility(I)V

    .line 341
    iget-object v2, p0, Lcom/sec/android/cover/sviewcover/SViewCoverMainPage;->mThemeImageClock:Landroid/view/View;

    if-eqz v2, :cond_0

    .line 342
    iget-object v2, p0, Lcom/sec/android/cover/sviewcover/SViewCoverMainPage;->mThemeImageClock:Landroid/view/View;

    invoke-virtual {v2, v6}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_0
.end method

.method private setupChildViews(Landroid/content/Context;)V
    .locals 9
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v3, 0x0

    const/4 v8, -0x1

    const/4 v4, 0x1

    .line 167
    iput-object p1, p0, Lcom/sec/android/cover/sviewcover/SViewCoverMainPage;->mContext:Landroid/content/Context;

    .line 169
    iget-object v5, p0, Lcom/sec/android/cover/sviewcover/SViewCoverMainPage;->mContext:Landroid/content/Context;

    sget v6, Lcom/sec/android/sviewcover/R$layout;->s_view_cover_home_widget:I

    const/4 v7, 0x0

    invoke-static {v5, v6, v7}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    .line 170
    .local v2, "mainPage":Landroid/view/View;
    invoke-virtual {p0, v2, v8, v8}, Lcom/sec/android/cover/sviewcover/SViewCoverMainPage;->addView(Landroid/view/View;II)V

    .line 173
    invoke-static {}, Lcom/sec/android/cover/FeatureUtils;->isSupportElasticPlugin()Z

    move-result v5

    if-eqz v5, :cond_e

    .line 174
    iget-object v5, p0, Lcom/sec/android/cover/sviewcover/SViewCoverMainPage;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    sget v6, Lcom/sec/android/sviewcover/R$bool;->sview_cover_theme_clock_image_type:I

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v5

    if-eqz v5, :cond_0

    move v3, v4

    :cond_0
    iput-boolean v3, p0, Lcom/sec/android/cover/sviewcover/SViewCoverMainPage;->mUseThemeClocks:Z

    .line 179
    :goto_0
    sget v3, Lcom/sec/android/sviewcover/R$id;->theme_clock_time_and_date:I

    invoke-virtual {p0, v3}, Lcom/sec/android/cover/sviewcover/SViewCoverMainPage;->findViewById(I)Landroid/view/View;

    move-result-object v3

    iput-object v3, p0, Lcom/sec/android/cover/sviewcover/SViewCoverMainPage;->mThemeImageClock:Landroid/view/View;

    .line 180
    sget v3, Lcom/sec/android/sviewcover/R$id;->theme_dual_clock_time_and_date:I

    invoke-virtual {p0, v3}, Lcom/sec/android/cover/sviewcover/SViewCoverMainPage;->findViewById(I)Landroid/view/View;

    move-result-object v3

    iput-object v3, p0, Lcom/sec/android/cover/sviewcover/SViewCoverMainPage;->mThemeDualImageClock:Landroid/view/View;

    .line 181
    iget-object v3, p0, Lcom/sec/android/cover/sviewcover/SViewCoverMainPage;->mThemeImageClock:Landroid/view/View;

    if-eqz v3, :cond_1

    .line 182
    iget-object v3, p0, Lcom/sec/android/cover/sviewcover/SViewCoverMainPage;->mThemeImageClock:Landroid/view/View;

    iget-object v5, p0, Lcom/sec/android/cover/sviewcover/SViewCoverMainPage;->mOnHoverListener:Landroid/view/View$OnHoverListener;

    invoke-virtual {v3, v5}, Landroid/view/View;->setOnHoverListener(Landroid/view/View$OnHoverListener;)V

    .line 183
    :cond_1
    iget-object v3, p0, Lcom/sec/android/cover/sviewcover/SViewCoverMainPage;->mThemeDualImageClock:Landroid/view/View;

    if-eqz v3, :cond_2

    .line 184
    iget-object v3, p0, Lcom/sec/android/cover/sviewcover/SViewCoverMainPage;->mThemeDualImageClock:Landroid/view/View;

    iget-object v5, p0, Lcom/sec/android/cover/sviewcover/SViewCoverMainPage;->mOnHoverListener:Landroid/view/View$OnHoverListener;

    invoke-virtual {v3, v5}, Landroid/view/View;->setOnHoverListener(Landroid/view/View$OnHoverListener;)V

    .line 187
    :cond_2
    sget v3, Lcom/sec/android/sviewcover/R$id;->clock_time_and_date:I

    invoke-virtual {p0, v3}, Lcom/sec/android/cover/sviewcover/SViewCoverMainPage;->findViewById(I)Landroid/view/View;

    move-result-object v3

    iput-object v3, p0, Lcom/sec/android/cover/sviewcover/SViewCoverMainPage;->mClockWidget:Landroid/view/View;

    .line 188
    sget v3, Lcom/sec/android/sviewcover/R$id;->dual_clock_time_and_date:I

    invoke-virtual {p0, v3}, Lcom/sec/android/cover/sviewcover/SViewCoverMainPage;->findViewById(I)Landroid/view/View;

    move-result-object v3

    iput-object v3, p0, Lcom/sec/android/cover/sviewcover/SViewCoverMainPage;->mDualClockWidget:Landroid/view/View;

    .line 189
    sget v3, Lcom/sec/android/sviewcover/R$id;->default_home_widget:I

    invoke-virtual {p0, v3}, Lcom/sec/android/cover/sviewcover/SViewCoverMainPage;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/view/ViewGroup;

    iput-object v3, p0, Lcom/sec/android/cover/sviewcover/SViewCoverMainPage;->mBasicWidgetContainer:Landroid/view/ViewGroup;

    .line 191
    iget-object v3, p0, Lcom/sec/android/cover/sviewcover/SViewCoverMainPage;->mClockWidget:Landroid/view/View;

    if-eqz v3, :cond_3

    .line 192
    iget-object v3, p0, Lcom/sec/android/cover/sviewcover/SViewCoverMainPage;->mClockWidget:Landroid/view/View;

    iget-object v5, p0, Lcom/sec/android/cover/sviewcover/SViewCoverMainPage;->mOnHoverListener:Landroid/view/View$OnHoverListener;

    invoke-virtual {v3, v5}, Landroid/view/View;->setOnHoverListener(Landroid/view/View$OnHoverListener;)V

    .line 193
    :cond_3
    iget-object v3, p0, Lcom/sec/android/cover/sviewcover/SViewCoverMainPage;->mDualClockWidget:Landroid/view/View;

    if-eqz v3, :cond_4

    .line 194
    iget-object v3, p0, Lcom/sec/android/cover/sviewcover/SViewCoverMainPage;->mDualClockWidget:Landroid/view/View;

    iget-object v5, p0, Lcom/sec/android/cover/sviewcover/SViewCoverMainPage;->mOnHoverListener:Landroid/view/View$OnHoverListener;

    invoke-virtual {v3, v5}, Landroid/view/View;->setOnHoverListener(Landroid/view/View$OnHoverListener;)V

    .line 196
    :cond_4
    invoke-direct {p0}, Lcom/sec/android/cover/sviewcover/SViewCoverMainPage;->setClockVisibility()V

    .line 198
    iget-object v3, p0, Lcom/sec/android/cover/sviewcover/SViewCoverMainPage;->mContext:Landroid/content/Context;

    invoke-static {v3}, Lcom/sec/android/cover/manager/CoverBroadcastManager;->getInstance(Landroid/content/Context;)Lcom/sec/android/cover/manager/CoverBroadcastManager;

    move-result-object v1

    .line 202
    .local v1, "bcm":Lcom/sec/android/cover/manager/CoverBroadcastManager;
    sget v3, Lcom/sec/android/sviewcover/R$id;->disaster_alert:I

    invoke-virtual {p0, v3}, Lcom/sec/android/cover/sviewcover/SViewCoverMainPage;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, p0, Lcom/sec/android/cover/sviewcover/SViewCoverMainPage;->mDisasterAlertText:Landroid/widget/TextView;

    .line 203
    const-string v3, "com.samsung.accessory.intent.action.DISASTER_SVIEW_COVER"

    invoke-virtual {v1, v3}, Lcom/sec/android/cover/manager/CoverBroadcastManager;->getLastBroadcastInfo(Ljava/lang/String;)Lcom/sec/android/cover/manager/CoverBroadcastManager$BroadcastInfo;

    move-result-object v0

    .line 204
    .local v0, "bcInfo":Lcom/sec/android/cover/manager/CoverBroadcastManager$BroadcastInfo;
    if-eqz v0, :cond_5

    .line 205
    iget-object v3, v0, Lcom/sec/android/cover/manager/CoverBroadcastManager$BroadcastInfo;->mItem:Ljava/lang/Object;

    invoke-direct {p0, v3}, Lcom/sec/android/cover/sviewcover/SViewCoverMainPage;->updateDisasterAlertWidgetState(Ljava/lang/Object;)V

    .line 209
    :cond_5
    sget v3, Lcom/sec/android/sviewcover/R$id;->battery_charging:I

    invoke-virtual {p0, v3}, Lcom/sec/android/cover/sviewcover/SViewCoverMainPage;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, p0, Lcom/sec/android/cover/sviewcover/SViewCoverMainPage;->mBatteryCharingText:Landroid/widget/TextView;

    .line 210
    const-string v3, "android.intent.action.BATTERY_CHANGED"

    invoke-virtual {v1, v3}, Lcom/sec/android/cover/manager/CoverBroadcastManager;->getLastBroadcastInfo(Ljava/lang/String;)Lcom/sec/android/cover/manager/CoverBroadcastManager$BroadcastInfo;

    move-result-object v0

    .line 211
    if-eqz v0, :cond_6

    .line 212
    iget-object v3, v0, Lcom/sec/android/cover/manager/CoverBroadcastManager$BroadcastInfo;->mItem:Ljava/lang/Object;

    invoke-direct {p0, v3}, Lcom/sec/android/cover/sviewcover/SViewCoverMainPage;->updateBatteryStateWidgetState(Ljava/lang/Object;)V

    .line 215
    :cond_6
    sget v3, Lcom/sec/android/sviewcover/R$id;->s_view_cover_weather_health_container:I

    invoke-virtual {p0, v3}, Lcom/sec/android/cover/sviewcover/SViewCoverMainPage;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/LinearLayout;

    iput-object v3, p0, Lcom/sec/android/cover/sviewcover/SViewCoverMainPage;->mWeatherHealthContainer:Landroid/widget/LinearLayout;

    .line 218
    sget v3, Lcom/sec/android/sviewcover/R$id;->clear_shealth_contatiner:I

    invoke-virtual {p0, v3}, Lcom/sec/android/cover/sviewcover/SViewCoverMainPage;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/sec/android/cover/widget/RemoteViewContainerView;

    iput-object v3, p0, Lcom/sec/android/cover/sviewcover/SViewCoverMainPage;->mSHealthContainer:Lcom/sec/android/cover/widget/RemoteViewContainerView;

    .line 219
    iget-object v3, p0, Lcom/sec/android/cover/sviewcover/SViewCoverMainPage;->mSHealthContainer:Lcom/sec/android/cover/widget/RemoteViewContainerView;

    if-eqz v3, :cond_7

    .line 220
    iget-object v3, p0, Lcom/sec/android/cover/sviewcover/SViewCoverMainPage;->mSHealthContainer:Lcom/sec/android/cover/widget/RemoteViewContainerView;

    const-string v5, "shealth"

    invoke-virtual {v3, v5, v4}, Lcom/sec/android/cover/widget/RemoteViewContainerView;->init(Ljava/lang/String;Z)V

    .line 221
    iget-object v3, p0, Lcom/sec/android/cover/sviewcover/SViewCoverMainPage;->mSHealthContainer:Lcom/sec/android/cover/widget/RemoteViewContainerView;

    new-instance v5, Lcom/sec/android/cover/sviewcover/SViewCoverMainPage$2;

    invoke-direct {v5, p0}, Lcom/sec/android/cover/sviewcover/SViewCoverMainPage$2;-><init>(Lcom/sec/android/cover/sviewcover/SViewCoverMainPage;)V

    invoke-virtual {v3, v5}, Lcom/sec/android/cover/widget/RemoteViewContainerView;->setOnUpdateListener(Lcom/sec/android/cover/widget/RemoteViewContainerView$OnUpdateListener;)V

    .line 229
    :cond_7
    sget v3, Lcom/sec/android/sviewcover/R$id;->clear_battery_contatiner:I

    invoke-virtual {p0, v3}, Lcom/sec/android/cover/sviewcover/SViewCoverMainPage;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/sec/android/cover/widget/RemoteViewContainerView;

    iput-object v3, p0, Lcom/sec/android/cover/sviewcover/SViewCoverMainPage;->mBatteryContainer:Lcom/sec/android/cover/widget/RemoteViewContainerView;

    .line 230
    iget-object v3, p0, Lcom/sec/android/cover/sviewcover/SViewCoverMainPage;->mBatteryContainer:Lcom/sec/android/cover/widget/RemoteViewContainerView;

    if-eqz v3, :cond_8

    .line 231
    iget-object v3, p0, Lcom/sec/android/cover/sviewcover/SViewCoverMainPage;->mBatteryContainer:Lcom/sec/android/cover/widget/RemoteViewContainerView;

    const-string v5, "battery"

    invoke-virtual {v3, v5, v4}, Lcom/sec/android/cover/widget/RemoteViewContainerView;->init(Ljava/lang/String;Z)V

    .line 232
    iget-object v3, p0, Lcom/sec/android/cover/sviewcover/SViewCoverMainPage;->mBatteryContainer:Lcom/sec/android/cover/widget/RemoteViewContainerView;

    new-instance v5, Lcom/sec/android/cover/sviewcover/SViewCoverMainPage$3;

    invoke-direct {v5, p0}, Lcom/sec/android/cover/sviewcover/SViewCoverMainPage$3;-><init>(Lcom/sec/android/cover/sviewcover/SViewCoverMainPage;)V

    invoke-virtual {v3, v5}, Lcom/sec/android/cover/widget/RemoteViewContainerView;->setOnUpdateListener(Lcom/sec/android/cover/widget/RemoteViewContainerView$OnUpdateListener;)V

    .line 240
    :cond_8
    sget v3, Lcom/sec/android/sviewcover/R$id;->music_player_contatiner:I

    invoke-virtual {p0, v3}, Lcom/sec/android/cover/sviewcover/SViewCoverMainPage;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/sec/android/cover/widget/RemoteViewContainerView;

    iput-object v3, p0, Lcom/sec/android/cover/sviewcover/SViewCoverMainPage;->mMusicPlayerContainer:Lcom/sec/android/cover/widget/RemoteViewContainerView;

    .line 241
    iget-object v3, p0, Lcom/sec/android/cover/sviewcover/SViewCoverMainPage;->mMusicPlayerContainer:Lcom/sec/android/cover/widget/RemoteViewContainerView;

    if-eqz v3, :cond_9

    .line 242
    iget-object v3, p0, Lcom/sec/android/cover/sviewcover/SViewCoverMainPage;->mMusicPlayerContainer:Lcom/sec/android/cover/widget/RemoteViewContainerView;

    const-string v5, "music_controller"

    invoke-virtual {v3, v5, v4}, Lcom/sec/android/cover/widget/RemoteViewContainerView;->init(Ljava/lang/String;Z)V

    .line 243
    iget-object v3, p0, Lcom/sec/android/cover/sviewcover/SViewCoverMainPage;->mMusicPlayerContainer:Lcom/sec/android/cover/widget/RemoteViewContainerView;

    new-instance v5, Lcom/sec/android/cover/sviewcover/SViewCoverMainPage$4;

    invoke-direct {v5, p0}, Lcom/sec/android/cover/sviewcover/SViewCoverMainPage$4;-><init>(Lcom/sec/android/cover/sviewcover/SViewCoverMainPage;)V

    invoke-virtual {v3, v5}, Lcom/sec/android/cover/widget/RemoteViewContainerView;->setOnUpdateListener(Lcom/sec/android/cover/widget/RemoteViewContainerView$OnUpdateListener;)V

    .line 252
    :cond_9
    sget v3, Lcom/sec/android/sviewcover/R$id;->kids_music_player_contatiner:I

    invoke-virtual {p0, v3}, Lcom/sec/android/cover/sviewcover/SViewCoverMainPage;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/sec/android/cover/widget/RemoteViewContainerView;

    iput-object v3, p0, Lcom/sec/android/cover/sviewcover/SViewCoverMainPage;->mKidsMusicPlayerContainer:Lcom/sec/android/cover/widget/RemoteViewContainerView;

    .line 253
    iget-object v3, p0, Lcom/sec/android/cover/sviewcover/SViewCoverMainPage;->mKidsMusicPlayerContainer:Lcom/sec/android/cover/widget/RemoteViewContainerView;

    if-eqz v3, :cond_a

    .line 254
    iget-object v3, p0, Lcom/sec/android/cover/sviewcover/SViewCoverMainPage;->mKidsMusicPlayerContainer:Lcom/sec/android/cover/widget/RemoteViewContainerView;

    const-string v5, "kids_music_controller"

    invoke-virtual {v3, v5, v4}, Lcom/sec/android/cover/widget/RemoteViewContainerView;->init(Ljava/lang/String;Z)V

    .line 255
    iget-object v3, p0, Lcom/sec/android/cover/sviewcover/SViewCoverMainPage;->mKidsMusicPlayerContainer:Lcom/sec/android/cover/widget/RemoteViewContainerView;

    new-instance v5, Lcom/sec/android/cover/sviewcover/SViewCoverMainPage$5;

    invoke-direct {v5, p0}, Lcom/sec/android/cover/sviewcover/SViewCoverMainPage$5;-><init>(Lcom/sec/android/cover/sviewcover/SViewCoverMainPage;)V

    invoke-virtual {v3, v5}, Lcom/sec/android/cover/widget/RemoteViewContainerView;->setOnUpdateListener(Lcom/sec/android/cover/widget/RemoteViewContainerView$OnUpdateListener;)V

    .line 263
    :cond_a
    sget v3, Lcom/sec/android/sviewcover/R$id;->voice_recorder_contatiner:I

    invoke-virtual {p0, v3}, Lcom/sec/android/cover/sviewcover/SViewCoverMainPage;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/sec/android/cover/widget/RemoteViewContainerView;

    iput-object v3, p0, Lcom/sec/android/cover/sviewcover/SViewCoverMainPage;->mVoiceRecorderContainer:Lcom/sec/android/cover/widget/RemoteViewContainerView;

    .line 264
    iget-object v3, p0, Lcom/sec/android/cover/sviewcover/SViewCoverMainPage;->mVoiceRecorderContainer:Lcom/sec/android/cover/widget/RemoteViewContainerView;

    if-eqz v3, :cond_b

    .line 265
    iget-object v3, p0, Lcom/sec/android/cover/sviewcover/SViewCoverMainPage;->mVoiceRecorderContainer:Lcom/sec/android/cover/widget/RemoteViewContainerView;

    const-string v5, "voice_recorder"

    invoke-virtual {v3, v5, v4}, Lcom/sec/android/cover/widget/RemoteViewContainerView;->init(Ljava/lang/String;Z)V

    .line 266
    iget-object v3, p0, Lcom/sec/android/cover/sviewcover/SViewCoverMainPage;->mVoiceRecorderContainer:Lcom/sec/android/cover/widget/RemoteViewContainerView;

    new-instance v4, Lcom/sec/android/cover/sviewcover/SViewCoverMainPage$6;

    invoke-direct {v4, p0}, Lcom/sec/android/cover/sviewcover/SViewCoverMainPage$6;-><init>(Lcom/sec/android/cover/sviewcover/SViewCoverMainPage;)V

    invoke-virtual {v3, v4}, Lcom/sec/android/cover/widget/RemoteViewContainerView;->setOnUpdateListener(Lcom/sec/android/cover/widget/RemoteViewContainerView$OnUpdateListener;)V

    .line 274
    :cond_b
    sget v3, Lcom/sec/android/sviewcover/R$id;->s_view_cover_unlock_area:I

    invoke-virtual {p0, v3}, Lcom/sec/android/cover/sviewcover/SViewCoverMainPage;->findViewById(I)Landroid/view/View;

    move-result-object v3

    iput-object v3, p0, Lcom/sec/android/cover/sviewcover/SViewCoverMainPage;->mUnlockArea:Landroid/view/View;

    .line 276
    sget v3, Lcom/sec/android/sviewcover/R$id;->clock_container:I

    invoke-virtual {p0, v3}, Lcom/sec/android/cover/sviewcover/SViewCoverMainPage;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/LinearLayout;

    iput-object v3, p0, Lcom/sec/android/cover/sviewcover/SViewCoverMainPage;->mClockContainer:Landroid/widget/LinearLayout;

    .line 278
    iget-object v3, p0, Lcom/sec/android/cover/sviewcover/SViewCoverMainPage;->mContext:Landroid/content/Context;

    invoke-static {v3}, Lcom/sec/android/cover/sviewcover/stylizedclock/SViewCoverStylizedClockManager;->getInstance(Landroid/content/Context;)Lcom/sec/android/cover/sviewcover/stylizedclock/SViewCoverStylizedClockManager;

    move-result-object v3

    iput-object v3, p0, Lcom/sec/android/cover/sviewcover/SViewCoverMainPage;->mStylizedClockManager:Lcom/sec/android/cover/sviewcover/stylizedclock/SViewCoverStylizedClockManager;

    .line 280
    invoke-static {}, Lcom/sec/android/cover/FeatureUtils;->isSupportNotificationOnCover()Z

    move-result v3

    if-nez v3, :cond_c

    .line 281
    new-instance v3, Lcom/sec/android/cover/sviewcover/stylizedclock/SViewCoverStylizedClockView;

    iget-object v4, p0, Lcom/sec/android/cover/sviewcover/SViewCoverMainPage;->mContext:Landroid/content/Context;

    invoke-direct {v3, v4}, Lcom/sec/android/cover/sviewcover/stylizedclock/SViewCoverStylizedClockView;-><init>(Landroid/content/Context;)V

    iput-object v3, p0, Lcom/sec/android/cover/sviewcover/SViewCoverMainPage;->mStylizedClockView:Lcom/sec/android/cover/sviewcover/stylizedclock/SViewCoverStylizedClockView;

    .line 283
    :cond_c
    iget-object v3, p0, Lcom/sec/android/cover/sviewcover/SViewCoverMainPage;->mClockContainer:Landroid/widget/LinearLayout;

    if-eqz v3, :cond_d

    .line 284
    iget-object v3, p0, Lcom/sec/android/cover/sviewcover/SViewCoverMainPage;->mClockContainer:Landroid/widget/LinearLayout;

    iget-object v4, p0, Lcom/sec/android/cover/sviewcover/SViewCoverMainPage;->mStylizedClockView:Lcom/sec/android/cover/sviewcover/stylizedclock/SViewCoverStylizedClockView;

    invoke-virtual {v3, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 286
    :cond_d
    invoke-direct {p0}, Lcom/sec/android/cover/sviewcover/SViewCoverMainPage;->setupStylizedClockStyle()V

    .line 288
    invoke-direct {p0}, Lcom/sec/android/cover/sviewcover/SViewCoverMainPage;->adjustWidgetVisibility()V

    .line 290
    return-void

    .line 176
    .end local v0    # "bcInfo":Lcom/sec/android/cover/manager/CoverBroadcastManager$BroadcastInfo;
    .end local v1    # "bcm":Lcom/sec/android/cover/manager/CoverBroadcastManager;
    :cond_e
    iput-boolean v3, p0, Lcom/sec/android/cover/sviewcover/SViewCoverMainPage;->mUseThemeClocks:Z

    goto/16 :goto_0
.end method

.method private setupStylizedClockStyle()V
    .locals 2

    .prologue
    .line 636
    invoke-static {}, Lcom/sec/android/cover/FeatureUtils;->isSupportNotificationOnCover()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 648
    :cond_0
    :goto_0
    return-void

    .line 639
    :cond_1
    iget-object v0, p0, Lcom/sec/android/cover/sviewcover/SViewCoverMainPage;->mStylizedClockView:Lcom/sec/android/cover/sviewcover/stylizedclock/SViewCoverStylizedClockView;

    if-eqz v0, :cond_0

    .line 642
    iget-object v0, p0, Lcom/sec/android/cover/sviewcover/SViewCoverMainPage;->mStylizedClockManager:Lcom/sec/android/cover/sviewcover/stylizedclock/SViewCoverStylizedClockManager;

    invoke-virtual {v0}, Lcom/sec/android/cover/sviewcover/stylizedclock/SViewCoverStylizedClockManager;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 643
    iget-object v0, p0, Lcom/sec/android/cover/sviewcover/SViewCoverMainPage;->mStylizedClockView:Lcom/sec/android/cover/sviewcover/stylizedclock/SViewCoverStylizedClockView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/sec/android/cover/sviewcover/stylizedclock/SViewCoverStylizedClockView;->setVisibility(I)V

    .line 644
    iget-object v0, p0, Lcom/sec/android/cover/sviewcover/SViewCoverMainPage;->mStylizedClockView:Lcom/sec/android/cover/sviewcover/stylizedclock/SViewCoverStylizedClockView;

    invoke-virtual {v0}, Lcom/sec/android/cover/sviewcover/stylizedclock/SViewCoverStylizedClockView;->updateStyle()V

    goto :goto_0

    .line 646
    :cond_2
    iget-object v0, p0, Lcom/sec/android/cover/sviewcover/SViewCoverMainPage;->mStylizedClockView:Lcom/sec/android/cover/sviewcover/stylizedclock/SViewCoverStylizedClockView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/sec/android/cover/sviewcover/stylizedclock/SViewCoverStylizedClockView;->setVisibility(I)V

    goto :goto_0
.end method

.method private updateBatteryStateWidgetState(Ljava/lang/Object;)V
    .locals 11
    .param p1, "bcItem"    # Ljava/lang/Object;

    .prologue
    const/16 v10, 0x8

    const/4 v9, 0x0

    const/4 v8, 0x1

    .line 350
    iget-object v5, p0, Lcom/sec/android/cover/sviewcover/SViewCoverMainPage;->mBatteryCharingText:Landroid/widget/TextView;

    if-nez v5, :cond_0

    .line 351
    const-string v5, "SViewCoverMainPage"

    const-string v6, "mBatteryCharingText is null"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 411
    :goto_0
    return-void

    .line 355
    :cond_0
    if-nez p1, :cond_1

    .line 356
    const-string v5, "SViewCoverMainPage"

    const-string v6, "updateBatteryStateWidget : Intent is null"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 357
    iget-object v5, p0, Lcom/sec/android/cover/sviewcover/SViewCoverMainPage;->mBatteryCharingText:Landroid/widget/TextView;

    invoke-virtual {v5, v10}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0

    .line 361
    :cond_1
    const/4 v1, 0x0

    .line 363
    .local v1, "batteryStatus":Lcom/sec/android/cover/monitor/CoverUpdateMonitor$BatteryStatus;
    instance-of v5, p1, Lcom/sec/android/cover/monitor/CoverUpdateMonitor$BatteryStatus;

    if-eqz v5, :cond_2

    move-object v1, p1

    .line 364
    check-cast v1, Lcom/sec/android/cover/monitor/CoverUpdateMonitor$BatteryStatus;

    .line 367
    :cond_2
    if-nez v1, :cond_3

    .line 368
    const-string v5, "SViewCoverMainPage"

    const-string v6, "batteryStatus is null"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 369
    iget-object v5, p0, Lcom/sec/android/cover/sviewcover/SViewCoverMainPage;->mBatteryCharingText:Landroid/widget/TextView;

    invoke-virtual {v5, v10}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0

    .line 373
    :cond_3
    iget v2, v1, Lcom/sec/android/cover/monitor/CoverUpdateMonitor$BatteryStatus;->level:I

    .line 374
    .local v2, "level":I
    iget v3, v1, Lcom/sec/android/cover/monitor/CoverUpdateMonitor$BatteryStatus;->plugged:I

    iput v3, p0, Lcom/sec/android/cover/sviewcover/SViewCoverMainPage;->mLastBatteryPluggedState:I

    .line 375
    .local v3, "plugged":I
    iget v4, v1, Lcom/sec/android/cover/monitor/CoverUpdateMonitor$BatteryStatus;->status:I

    .line 376
    .local v4, "status":I
    const-string v5, "SViewCoverMainPage"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "updateBatteryStateWidget : Plugged = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " Level="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 378
    if-eqz v3, :cond_8

    .line 379
    const/4 v0, 0x0

    .line 380
    .local v0, "batteryCharging":Ljava/lang/String;
    const/16 v5, 0x64

    if-lt v2, v5, :cond_4

    const/4 v5, 0x5

    if-ne v4, v5, :cond_4

    .line 381
    invoke-virtual {p0}, Lcom/sec/android/cover/sviewcover/SViewCoverMainPage;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    sget v6, Lcom/sec/android/sviewcover/R$string;->battery_charged:I

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 406
    :goto_1
    iget-object v5, p0, Lcom/sec/android/cover/sviewcover/SViewCoverMainPage;->mBatteryCharingText:Landroid/widget/TextView;

    invoke-virtual {v5, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 407
    iget-object v5, p0, Lcom/sec/android/cover/sviewcover/SViewCoverMainPage;->mBatteryCharingText:Landroid/widget/TextView;

    invoke-virtual {v5, v9}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0

    .line 383
    :cond_4
    invoke-virtual {v1}, Lcom/sec/android/cover/monitor/CoverUpdateMonitor$BatteryStatus;->isWirelssCharged()Z

    move-result v5

    if-ne v5, v8, :cond_6

    .line 384
    invoke-static {}, Lcom/sec/android/cover/FeatureUtils;->isVZWModel()Z

    move-result v5

    if-nez v5, :cond_5

    invoke-virtual {v1}, Lcom/sec/android/cover/monitor/CoverUpdateMonitor$BatteryStatus;->isWirelssFastCharged()Z

    move-result v5

    if-ne v5, v8, :cond_5

    .line 385
    const-string v5, "SViewCoverMainPage"

    const-string v6, "Detected fast wireless charging"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 386
    invoke-virtual {p0}, Lcom/sec/android/cover/sviewcover/SViewCoverMainPage;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    sget v6, Lcom/sec/android/sviewcover/R$string;->battery_wireless_fast_charging_percent:I

    new-array v7, v8, [Ljava/lang/Object;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v7, v9

    invoke-virtual {v5, v6, v7}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    .line 389
    :cond_5
    const-string v5, "SViewCoverMainPage"

    const-string v6, "Detected wireless charging"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 390
    invoke-virtual {p0}, Lcom/sec/android/cover/sviewcover/SViewCoverMainPage;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    sget v6, Lcom/sec/android/sviewcover/R$string;->battery_wireless_charging_percent:I

    new-array v7, v8, [Ljava/lang/Object;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v7, v9

    invoke-virtual {v5, v6, v7}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    .line 394
    :cond_6
    invoke-static {}, Lcom/sec/android/cover/FeatureUtils;->isVZWModel()Z

    move-result v5

    if-nez v5, :cond_7

    invoke-virtual {v1}, Lcom/sec/android/cover/monitor/CoverUpdateMonitor$BatteryStatus;->isFastCharging()Z

    move-result v5

    if-ne v5, v8, :cond_7

    .line 395
    const-string v5, "SViewCoverMainPage"

    const-string v6, "Detected fast wire charging"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 396
    invoke-virtual {p0}, Lcom/sec/android/cover/sviewcover/SViewCoverMainPage;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    sget v6, Lcom/sec/android/sviewcover/R$string;->battery_fast_charging_percent:I

    new-array v7, v8, [Ljava/lang/Object;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v7, v9

    invoke-virtual {v5, v6, v7}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    .line 399
    :cond_7
    const-string v5, "SViewCoverMainPage"

    const-string v6, "Detected wire charging"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 400
    invoke-virtual {p0}, Lcom/sec/android/cover/sviewcover/SViewCoverMainPage;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    sget v6, Lcom/sec/android/sviewcover/R$string;->battery_charging_percent:I

    new-array v7, v8, [Ljava/lang/Object;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v7, v9

    invoke-virtual {v5, v6, v7}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_1

    .line 409
    .end local v0    # "batteryCharging":Ljava/lang/String;
    :cond_8
    iget-object v5, p0, Lcom/sec/android/cover/sviewcover/SViewCoverMainPage;->mBatteryCharingText:Landroid/widget/TextView;

    invoke-virtual {v5, v10}, Landroid/widget/TextView;->setVisibility(I)V

    goto/16 :goto_0
.end method

.method private updateDisasterAlertWidgetState(Ljava/lang/Object;)V
    .locals 4
    .param p1, "bcItem"    # Ljava/lang/Object;

    .prologue
    const/16 v3, 0x8

    .line 414
    invoke-static {}, Lcom/sec/android/cover/FeatureUtils;->isSupportNotificationOnCover()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 442
    :goto_0
    return-void

    .line 417
    :cond_0
    iget-object v1, p0, Lcom/sec/android/cover/sviewcover/SViewCoverMainPage;->mDisasterAlertText:Landroid/widget/TextView;

    if-nez v1, :cond_1

    .line 418
    const-string v1, "SViewCoverMainPage"

    const-string v2, "mDisasterAlertText is null"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 422
    :cond_1
    if-nez p1, :cond_2

    .line 423
    iget-object v1, p0, Lcom/sec/android/cover/sviewcover/SViewCoverMainPage;->mDisasterAlertText:Landroid/widget/TextView;

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0

    .line 427
    :cond_2
    const/4 v0, 0x0

    .line 429
    .local v0, "alertText":Ljava/lang/String;
    instance-of v1, p1, Ljava/lang/String;

    if-eqz v1, :cond_3

    move-object v0, p1

    .line 430
    check-cast v0, Ljava/lang/String;

    .line 433
    :cond_3
    if-nez v0, :cond_4

    .line 434
    const-string v1, "SViewCoverMainPage"

    const-string v2, "alertText is null"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 435
    iget-object v1, p0, Lcom/sec/android/cover/sviewcover/SViewCoverMainPage;->mDisasterAlertText:Landroid/widget/TextView;

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0

    .line 439
    :cond_4
    const-string v1, "SViewCoverMainPage"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "updateAlertVisibility show = true, alert text = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 440
    iget-object v1, p0, Lcom/sec/android/cover/sviewcover/SViewCoverMainPage;->mDisasterAlertText:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 441
    iget-object v1, p0, Lcom/sec/android/cover/sviewcover/SViewCoverMainPage;->mDisasterAlertText:Landroid/widget/TextView;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0
.end method

.method private updateWeatherHealthContainer()V
    .locals 6

    .prologue
    const/4 v2, 0x0

    .line 605
    invoke-static {}, Lcom/sec/android/cover/FeatureUtils;->isSupportNotificationOnCover()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 633
    :cond_0
    :goto_0
    return-void

    .line 608
    :cond_1
    iget-object v3, p0, Lcom/sec/android/cover/sviewcover/SViewCoverMainPage;->mWeatherHealthContainer:Landroid/widget/LinearLayout;

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/sec/android/cover/sviewcover/SViewCoverMainPage;->mSHealthContainer:Lcom/sec/android/cover/widget/RemoteViewContainerView;

    if-eqz v3, :cond_0

    .line 611
    iget-object v3, p0, Lcom/sec/android/cover/sviewcover/SViewCoverMainPage;->mWeatherHealthContainer:Landroid/widget/LinearLayout;

    sget v4, Lcom/sec/android/sviewcover/R$id;->s_view_cover_contextual_holder:I

    invoke-virtual {v3, v4}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 613
    .local v1, "weatherView":Landroid/view/View;
    iget-object v3, p0, Lcom/sec/android/cover/sviewcover/SViewCoverMainPage;->mContext:Landroid/content/Context;

    invoke-static {v3}, Lcom/sec/android/cover/manager/CoverDatabaseManager;->getInstance(Landroid/content/Context;)Lcom/sec/android/cover/manager/CoverDatabaseManager;

    move-result-object v3

    const-string v4, "lock_additional_steps"

    invoke-virtual {v3, v4, v2}, Lcom/sec/android/cover/manager/CoverDatabaseManager;->getInt(Ljava/lang/String;I)I

    move-result v3

    if-eqz v3, :cond_2

    const/4 v0, 0x1

    .line 616
    .local v0, "isHealthWidgetEnabled":Z
    :goto_1
    const-string v3, "SViewCoverMainPage"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Is checked S_health ="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 618
    if-eqz v0, :cond_3

    .line 619
    iget-object v3, p0, Lcom/sec/android/cover/sviewcover/SViewCoverMainPage;->mSHealthContainer:Lcom/sec/android/cover/widget/RemoteViewContainerView;

    invoke-virtual {v3}, Lcom/sec/android/cover/widget/RemoteViewContainerView;->showRemoteView()V

    .line 624
    :goto_2
    if-eqz v1, :cond_4

    invoke-virtual {v1}, Landroid/view/View;->getVisibility()I

    move-result v3

    if-nez v3, :cond_4

    iget-object v3, p0, Lcom/sec/android/cover/sviewcover/SViewCoverMainPage;->mSHealthContainer:Lcom/sec/android/cover/widget/RemoteViewContainerView;

    invoke-virtual {v3}, Lcom/sec/android/cover/widget/RemoteViewContainerView;->getRemoteView()Landroid/view/View;

    move-result-object v3

    if-eqz v3, :cond_4

    iget-object v3, p0, Lcom/sec/android/cover/sviewcover/SViewCoverMainPage;->mSHealthContainer:Lcom/sec/android/cover/widget/RemoteViewContainerView;

    invoke-virtual {v3}, Lcom/sec/android/cover/widget/RemoteViewContainerView;->getRemoteView()Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/View;->getVisibility()I

    move-result v3

    if-nez v3, :cond_4

    .line 628
    iget-object v3, p0, Lcom/sec/android/cover/sviewcover/SViewCoverMainPage;->mSHealthContainer:Lcom/sec/android/cover/widget/RemoteViewContainerView;

    invoke-virtual {p0}, Lcom/sec/android/cover/sviewcover/SViewCoverMainPage;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    sget v5, Lcom/sec/android/sviewcover/R$dimen;->sview_cover_shealth_margin_left:I

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    invoke-virtual {v3, v4, v2, v2, v2}, Lcom/sec/android/cover/widget/RemoteViewContainerView;->setPaddingRelative(IIII)V

    goto :goto_0

    .end local v0    # "isHealthWidgetEnabled":Z
    :cond_2
    move v0, v2

    .line 613
    goto :goto_1

    .line 621
    .restart local v0    # "isHealthWidgetEnabled":Z
    :cond_3
    iget-object v3, p0, Lcom/sec/android/cover/sviewcover/SViewCoverMainPage;->mSHealthContainer:Lcom/sec/android/cover/widget/RemoteViewContainerView;

    invoke-virtual {v3}, Lcom/sec/android/cover/widget/RemoteViewContainerView;->hideRemoteView()V

    goto :goto_2

    .line 631
    :cond_4
    iget-object v3, p0, Lcom/sec/android/cover/sviewcover/SViewCoverMainPage;->mSHealthContainer:Lcom/sec/android/cover/widget/RemoteViewContainerView;

    invoke-virtual {v3, v2, v2, v2, v2}, Lcom/sec/android/cover/widget/RemoteViewContainerView;->setPadding(IIII)V

    goto :goto_0
.end method


# virtual methods
.method public getMissedCallCount()I
    .locals 4

    .prologue
    .line 449
    iget-object v1, p0, Lcom/sec/android/cover/sviewcover/SViewCoverMainPage;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/sec/android/cover/manager/CoverMissedEventManager;->getInstance(Landroid/content/Context;)Lcom/sec/android/cover/manager/CoverMissedEventManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/cover/manager/CoverMissedEventManager;->getMissedEventCallCount()I

    move-result v0

    .line 450
    .local v0, "missedCallCount":I
    const-string v1, "SViewCoverMainPage"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "missedCallCount : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 451
    return v0
.end method

.method public getMissedEventCount()I
    .locals 2

    .prologue
    .line 445
    invoke-virtual {p0}, Lcom/sec/android/cover/sviewcover/SViewCoverMainPage;->getMissedCallCount()I

    move-result v0

    invoke-virtual {p0}, Lcom/sec/android/cover/sviewcover/SViewCoverMainPage;->getUnreadMessageCount()I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public getUnreadMessageCount()I
    .locals 4

    .prologue
    .line 455
    iget-object v1, p0, Lcom/sec/android/cover/sviewcover/SViewCoverMainPage;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/sec/android/cover/manager/CoverMissedEventManager;->getInstance(Landroid/content/Context;)Lcom/sec/android/cover/manager/CoverMissedEventManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/cover/manager/CoverMissedEventManager;->getMissedEventMessageCount()I

    move-result v0

    .line 456
    .local v0, "unreadMessageCount":I
    const-string v1, "SViewCoverMainPage"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "unreadMessageCount : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 457
    return v0
.end method

.method public onActive(Z)V
    .locals 0
    .param p1, "isActive"    # Z

    .prologue
    .line 653
    return-void
.end method

.method protected onAttachedToWindow()V
    .locals 2

    .prologue
    .line 462
    invoke-super {p0}, Landroid/widget/LinearLayout;->onAttachedToWindow()V

    .line 463
    const-string v0, "SViewCoverMainPage"

    const-string v1, "onAttachedToWindow : "

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 464
    iget v0, p0, Lcom/sec/android/cover/sviewcover/SViewCoverMainPage;->mStatusBarState:I

    if-nez v0, :cond_0

    .line 465
    iget-object v0, p0, Lcom/sec/android/cover/sviewcover/SViewCoverMainPage;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/sec/android/cover/monitor/CoverUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/sec/android/cover/monitor/CoverUpdateMonitor;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/cover/sviewcover/SViewCoverMainPage;->mUpdateMonitorCallback:Lcom/sec/android/cover/monitor/CoverUpdateMonitorCallback;

    invoke-virtual {v0, v1}, Lcom/sec/android/cover/monitor/CoverUpdateMonitor;->registerCallback(Lcom/sec/android/cover/monitor/CoverUpdateMonitorCallback;)V

    .line 466
    :cond_0
    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 2

    .prologue
    .line 470
    invoke-super {p0}, Landroid/widget/LinearLayout;->onDetachedFromWindow()V

    .line 471
    const-string v0, "SViewCoverMainPage"

    const-string v1, "onDetachedFromWindow : "

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 472
    iget v0, p0, Lcom/sec/android/cover/sviewcover/SViewCoverMainPage;->mStatusBarState:I

    if-nez v0, :cond_0

    .line 473
    iget-object v0, p0, Lcom/sec/android/cover/sviewcover/SViewCoverMainPage;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/sec/android/cover/monitor/CoverUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/sec/android/cover/monitor/CoverUpdateMonitor;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/cover/sviewcover/SViewCoverMainPage;->mUpdateMonitorCallback:Lcom/sec/android/cover/monitor/CoverUpdateMonitorCallback;

    invoke-virtual {v0, v1}, Lcom/sec/android/cover/monitor/CoverUpdateMonitor;->unregisterCallback(Lcom/sec/android/cover/monitor/CoverUpdateMonitorCallback;)V

    .line 474
    :cond_0
    return-void
.end method

.method public onPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V
    .locals 2
    .param p1, "event"    # Landroid/view/accessibility/AccessibilityEvent;

    .prologue
    .line 133
    const-string v0, "SViewCoverMainPage"

    const-string v1, "main onPopulateAccessibilityEvent"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 134
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->onPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V

    .line 135
    invoke-direct {p0}, Lcom/sec/android/cover/sviewcover/SViewCoverMainPage;->getTTSonlyTime()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityEvent;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 136
    return-void
.end method

.method public onStatusBarStateChanged(I)V
    .locals 3
    .param p1, "statusBarState"    # I

    .prologue
    .line 656
    invoke-static {}, Lcom/sec/android/cover/FeatureUtils;->isSupportNotificationOnCover()Z

    move-result v1

    if-nez v1, :cond_1

    .line 677
    :cond_0
    :goto_0
    return-void

    .line 659
    :cond_1
    iput p1, p0, Lcom/sec/android/cover/sviewcover/SViewCoverMainPage;->mStatusBarState:I

    .line 661
    const/4 v0, 0x0

    .line 662
    .local v0, "selectedVisibility":I
    const/16 v1, 0xa

    if-ne p1, v1, :cond_2

    .line 663
    const/16 v0, 0x8

    .line 666
    :cond_2
    iget-object v1, p0, Lcom/sec/android/cover/sviewcover/SViewCoverMainPage;->mUnlockArea:Landroid/view/View;

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/sec/android/cover/sviewcover/SViewCoverMainPage;->mUnlockArea:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getVisibility()I

    move-result v1

    if-eq v1, v0, :cond_3

    .line 667
    iget-object v1, p0, Lcom/sec/android/cover/sviewcover/SViewCoverMainPage;->mUnlockArea:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 670
    :cond_3
    iget-object v1, p0, Lcom/sec/android/cover/sviewcover/SViewCoverMainPage;->mBatteryCharingText:Landroid/widget/TextView;

    if-eqz v1, :cond_0

    .line 671
    iget v1, p0, Lcom/sec/android/cover/sviewcover/SViewCoverMainPage;->mLastBatteryPluggedState:I

    if-eqz v1, :cond_4

    .line 672
    iget-object v1, p0, Lcom/sec/android/cover/sviewcover/SViewCoverMainPage;->mBatteryCharingText:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0

    .line 674
    :cond_4
    iget-object v1, p0, Lcom/sec/android/cover/sviewcover/SViewCoverMainPage;->mBatteryCharingText:Landroid/widget/TextView;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0
.end method

.method public onWindowFocusChanged(Z)V
    .locals 3
    .param p1, "hasWindowFocus"    # Z

    .prologue
    .line 478
    if-eqz p1, :cond_0

    .line 479
    invoke-direct {p0}, Lcom/sec/android/cover/sviewcover/SViewCoverMainPage;->adjustWidgetVisibility()V

    .line 481
    :cond_0
    const-string v0, "SViewCoverMainPage"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onWindowFocusChanged :hasWindowFocus : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 482
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->onWindowFocusChanged(Z)V

    .line 483
    return-void
.end method

.method public setCoverUiAlpha(F)V
    .locals 1
    .param p1, "alpha"    # F

    .prologue
    .line 680
    iget-object v0, p0, Lcom/sec/android/cover/sviewcover/SViewCoverMainPage;->mUnlockArea:Landroid/view/View;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/cover/sviewcover/SViewCoverMainPage;->mUnlockArea:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    .line 681
    iget-object v0, p0, Lcom/sec/android/cover/sviewcover/SViewCoverMainPage;->mUnlockArea:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->setAlpha(F)V

    .line 684
    :cond_0
    iget-object v0, p0, Lcom/sec/android/cover/sviewcover/SViewCoverMainPage;->mBatteryCharingText:Landroid/widget/TextView;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/sec/android/cover/sviewcover/SViewCoverMainPage;->mBatteryCharingText:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getVisibility()I

    move-result v0

    if-nez v0, :cond_1

    .line 685
    iget-object v0, p0, Lcom/sec/android/cover/sviewcover/SViewCoverMainPage;->mBatteryCharingText:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setAlpha(F)V

    .line 687
    :cond_1
    return-void
.end method
