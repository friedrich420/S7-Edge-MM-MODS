.class public Lcom/android/systemui/statusbar/phone/sub/SubPhoneStatusBar;
.super Lcom/android/systemui/statusbar/BaseStatusBar;
.source "SubPhoneStatusBar.java"


# static fields
.field public static final DEBUG:Z


# instance fields
.field private mAutoHidePending:Z

.field private final mAutohide:Ljava/lang/Runnable;

.field private mAutohideSuspended:Z

.field private mBroadcastReceiver:Landroid/content/BroadcastReceiver;

.field private final mCheckBarModes:Ljava/lang/Runnable;

.field private mDarkModeIconColorSingleTone:I

.field mExpandedVisible:Z

.field private mInteractingWindows:I

.field private mLightModeIconColorSingleTone:I

.field mNaturalBarHeight:I

.field private mStatusBarMode:I

.field mSubStatusBarDateView:Lcom/android/systemui/statusbar/policy/DateView;

.field private mSubStatusBarWindowManager:Lcom/android/systemui/statusbar/phone/sub/SubStatusBarWindowManager;

.field mSubStatusBarWindowView:Lcom/android/systemui/statusbar/phone/sub/SubStatusBarWindowView;

.field mSystemUiVisibility:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 60
    sget-boolean v0, Lcom/android/systemui/statusbar/BaseStatusBar;->DEBUG:Z

    sput-boolean v0, Lcom/android/systemui/statusbar/phone/sub/SubPhoneStatusBar;->DEBUG:Z

    return-void
.end method

.method private addSubStatusBarWindow()V
    .locals 3

    .prologue
    .line 401
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/sub/SubPhoneStatusBar;->makeSubStatusBarView()V

    .line 403
    new-instance v0, Lcom/android/systemui/statusbar/phone/sub/SubStatusBarWindowManager;

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/sub/SubPhoneStatusBar;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/android/systemui/statusbar/phone/sub/SubStatusBarWindowManager;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/sub/SubPhoneStatusBar;->mSubStatusBarWindowManager:Lcom/android/systemui/statusbar/phone/sub/SubStatusBarWindowManager;

    .line 404
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/sub/SubPhoneStatusBar;->mSubStatusBarWindowManager:Lcom/android/systemui/statusbar/phone/sub/SubStatusBarWindowManager;

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/sub/SubPhoneStatusBar;->mSubStatusBarWindowView:Lcom/android/systemui/statusbar/phone/sub/SubStatusBarWindowView;

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/sub/SubPhoneStatusBar;->getStatusBarHeight()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/android/systemui/statusbar/phone/sub/SubStatusBarWindowManager;->add(Landroid/view/View;I)V

    .line 405
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/sub/SubPhoneStatusBar;->mSubStatusBarWindowView:Lcom/android/systemui/statusbar/phone/sub/SubStatusBarWindowView;

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/sub/SubPhoneStatusBar;->mSubStatusBarWindowManager:Lcom/android/systemui/statusbar/phone/sub/SubStatusBarWindowManager;

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/phone/sub/SubStatusBarWindowView;->setSubStatusBarWindowManager(Lcom/android/systemui/statusbar/phone/sub/SubStatusBarWindowManager;)V

    .line 406
    return-void
.end method

.method private cancelAutohide()V
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 284
    iput-boolean v0, p0, Lcom/android/systemui/statusbar/phone/sub/SubPhoneStatusBar;->mAutohideSuspended:Z

    .line 285
    iput-boolean v0, p0, Lcom/android/systemui/statusbar/phone/sub/SubPhoneStatusBar;->mAutoHidePending:Z

    .line 286
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/sub/SubPhoneStatusBar;->mHandler:Lcom/android/systemui/statusbar/BaseStatusBar$H;

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/sub/SubPhoneStatusBar;->mAutohide:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/BaseStatusBar$H;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 287
    return-void
.end method

.method private checkBarModes()V
    .locals 0

    .prologue
    .line 222
    return-void
.end method

.method private notifyUiVisibilityChanged(I)V
    .locals 2
    .param p1, "vis"    # I

    .prologue
    .line 238
    :try_start_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/sub/SubPhoneStatusBar;->mWindowManagerService:Landroid/view/IWindowManager;

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/sub/SubPhoneStatusBar;->mScreen:Lcom/samsung/android/dualscreen/DualScreen;

    invoke-virtual {v1}, Lcom/samsung/android/dualscreen/DualScreen;->getDisplayId()I

    move-result v1

    invoke-interface {v0, p1, v1}, Landroid/view/IWindowManager;->statusBarVisibilityChangedToDisplay(II)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 241
    :goto_0
    return-void

    .line 239
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method private resumeSuspendedAutohide()V
    .locals 4

    .prologue
    .line 270
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/sub/SubPhoneStatusBar;->mAutohideSuspended:Z

    if-eqz v0, :cond_0

    .line 271
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/sub/SubPhoneStatusBar;->scheduleAutohide()V

    .line 272
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/sub/SubPhoneStatusBar;->mHandler:Lcom/android/systemui/statusbar/BaseStatusBar$H;

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/sub/SubPhoneStatusBar;->mCheckBarModes:Ljava/lang/Runnable;

    const-wide/16 v2, 0x1f4

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/systemui/statusbar/BaseStatusBar$H;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 274
    :cond_0
    return-void
.end method

.method private scheduleAutohide()V
    .locals 4

    .prologue
    .line 291
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/sub/SubPhoneStatusBar;->cancelAutohide()V

    .line 292
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/phone/sub/SubPhoneStatusBar;->mAutoHidePending:Z

    .line 293
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/sub/SubPhoneStatusBar;->mHandler:Lcom/android/systemui/statusbar/BaseStatusBar$H;

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/sub/SubPhoneStatusBar;->mAutohide:Ljava/lang/Runnable;

    const-wide/16 v2, 0xbb8

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/systemui/statusbar/BaseStatusBar$H;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 294
    return-void
.end method

.method private suspendAutohide()V
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 277
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/sub/SubPhoneStatusBar;->mHandler:Lcom/android/systemui/statusbar/BaseStatusBar$H;

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/sub/SubPhoneStatusBar;->mAutohide:Ljava/lang/Runnable;

    invoke-virtual {v1, v2}, Lcom/android/systemui/statusbar/BaseStatusBar$H;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 278
    iput-boolean v0, p0, Lcom/android/systemui/statusbar/phone/sub/SubPhoneStatusBar;->mAutoHidePending:Z

    .line 279
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/sub/SubPhoneStatusBar;->mHandler:Lcom/android/systemui/statusbar/BaseStatusBar$H;

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/sub/SubPhoneStatusBar;->mCheckBarModes:Ljava/lang/Runnable;

    invoke-virtual {v1, v2}, Lcom/android/systemui/statusbar/BaseStatusBar$H;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 280
    iget v1, p0, Lcom/android/systemui/statusbar/phone/sub/SubPhoneStatusBar;->mSystemUiVisibility:I

    const/high16 v2, 0xc000000

    and-int/2addr v1, v2

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    iput-boolean v0, p0, Lcom/android/systemui/statusbar/phone/sub/SubPhoneStatusBar;->mAutohideSuspended:Z

    .line 281
    return-void
.end method


# virtual methods
.method public addIcon(Ljava/lang/String;IILcom/android/internal/statusbar/StatusBarIcon;)V
    .locals 0
    .param p1, "slot"    # Ljava/lang/String;
    .param p2, "index"    # I
    .param p3, "viewIndex"    # I
    .param p4, "icon"    # Lcom/android/internal/statusbar/StatusBarIcon;

    .prologue
    .line 579
    return-void
.end method

.method public addNotification(Landroid/service/notification/StatusBarNotification;Landroid/service/notification/NotificationListenerService$RankingMap;Lcom/android/systemui/statusbar/NotificationData$Entry;)V
    .locals 0
    .param p1, "notification"    # Landroid/service/notification/StatusBarNotification;
    .param p2, "ranking"    # Landroid/service/notification/NotificationListenerService$RankingMap;
    .param p3, "entry"    # Lcom/android/systemui/statusbar/NotificationData$Entry;

    .prologue
    .line 593
    return-void
.end method

.method public animateCollapsePanels(I)V
    .locals 0
    .param p1, "flags"    # I

    .prologue
    .line 613
    return-void
.end method

.method public animateExpandNotificationsPanel()V
    .locals 0

    .prologue
    .line 609
    return-void
.end method

.method public animateExpandSettingsPanel()V
    .locals 0

    .prologue
    .line 681
    return-void
.end method

.method public appTransitionCancelled()V
    .locals 0

    .prologue
    .line 710
    return-void
.end method

.method public appTransitionPending()V
    .locals 0

    .prologue
    .line 706
    return-void
.end method

.method public appTransitionStarting(JJ)V
    .locals 0
    .param p1, "startTime"    # J
    .param p3, "duration"    # J

    .prologue
    .line 714
    return-void
.end method

.method public applyEDMPolicy()V
    .locals 0

    .prologue
    .line 742
    return-void
.end method

.method public buzzBeepBlinked()V
    .locals 0

    .prologue
    .line 638
    return-void
.end method

.method protected createAndAddWindows()V
    .locals 0

    .prologue
    .line 397
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/sub/SubPhoneStatusBar;->addSubStatusBarWindow()V

    .line 398
    return-void
.end method

.method public disable(IIZ)V
    .locals 0
    .param p1, "state1"    # I
    .param p2, "state2"    # I
    .param p3, "animate"    # Z

    .prologue
    .line 605
    return-void
.end method

.method public enableSignals(Z)V
    .locals 0
    .param p1, "enable"    # Z

    .prologue
    .line 738
    return-void
.end method

.method protected getMaxKeyguardNotifications()I
    .locals 1

    .prologue
    .line 676
    const/4 v0, 0x0

    return v0
.end method

.method public getStatusBarHeight()I
    .locals 2

    .prologue
    .line 409
    iget v1, p0, Lcom/android/systemui/statusbar/phone/sub/SubPhoneStatusBar;->mNaturalBarHeight:I

    if-gez v1, :cond_0

    .line 410
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/sub/SubPhoneStatusBar;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 411
    .local v0, "res":Landroid/content/res/Resources;
    const v1, 0x1050017

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/android/systemui/statusbar/phone/sub/SubPhoneStatusBar;->mNaturalBarHeight:I

    .line 414
    .end local v0    # "res":Landroid/content/res/Resources;
    :cond_0
    iget v1, p0, Lcom/android/systemui/statusbar/phone/sub/SubPhoneStatusBar;->mNaturalBarHeight:I

    return v1
.end method

.method public getStatusBarView()Landroid/view/View;
    .locals 1

    .prologue
    .line 662
    const/4 v0, 0x0

    return-object v0
.end method

.method protected isPanelFullyCollapsed()Z
    .locals 1

    .prologue
    .line 671
    const/4 v0, 0x0

    return v0
.end method

.method protected isSnoozedPackage(Landroid/service/notification/StatusBarNotification;)Z
    .locals 1
    .param p1, "sbn"    # Landroid/service/notification/StatusBarNotification;

    .prologue
    .line 730
    const/4 v0, 0x0

    return v0
.end method

.method makeExpandedInvisible()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 323
    const-string v0, "SubPhoneStatusBar"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "makeExpandedInvisible: mExpandedVisible="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/systemui/statusbar/phone/sub/SubPhoneStatusBar;->mExpandedVisible:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 335
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/sub/SubPhoneStatusBar;->mExpandedVisible:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/sub/SubPhoneStatusBar;->mSubStatusBarWindowView:Lcom/android/systemui/statusbar/phone/sub/SubStatusBarWindowView;

    if-nez v0, :cond_1

    .line 376
    :cond_0
    :goto_0
    return-void

    .line 353
    :cond_1
    iput-boolean v3, p0, Lcom/android/systemui/statusbar/phone/sub/SubPhoneStatusBar;->mExpandedVisible:Z

    .line 363
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/sub/SubPhoneStatusBar;->dismissPopups()V

    .line 366
    const/4 v0, 0x1

    invoke-virtual {p0, v0, v3}, Lcom/android/systemui/statusbar/phone/sub/SubPhoneStatusBar;->setInteracting(IZ)V

    .line 371
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/sub/SubPhoneStatusBar;->mAutoHidePending:Z

    if-eqz v0, :cond_0

    .line 372
    iput-boolean v3, p0, Lcom/android/systemui/statusbar/phone/sub/SubPhoneStatusBar;->mAutoHidePending:Z

    .line 373
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/sub/SubPhoneStatusBar;->mHandler:Lcom/android/systemui/statusbar/BaseStatusBar$H;

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/sub/SubPhoneStatusBar;->mAutohide:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/BaseStatusBar$H;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 374
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/sub/SubPhoneStatusBar;->mHandler:Lcom/android/systemui/statusbar/BaseStatusBar$H;

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/sub/SubPhoneStatusBar;->mAutohide:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/BaseStatusBar$H;->post(Ljava/lang/Runnable;)Z

    goto :goto_0
.end method

.method protected makeSubStatusBarView()V
    .locals 5

    .prologue
    .line 486
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/sub/SubPhoneStatusBar;->mContext:Landroid/content/Context;

    .line 489
    .local v0, "context":Landroid/content/Context;
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/sub/SubPhoneStatusBar;->mContext:Landroid/content/Context;

    const v3, 0x7f0400ab

    const/4 v4, 0x0

    invoke-static {v2, v3, v4}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/android/systemui/statusbar/phone/sub/SubStatusBarWindowView;

    iput-object v2, p0, Lcom/android/systemui/statusbar/phone/sub/SubPhoneStatusBar;->mSubStatusBarWindowView:Lcom/android/systemui/statusbar/phone/sub/SubStatusBarWindowView;

    .line 491
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/sub/SubPhoneStatusBar;->mSubStatusBarWindowView:Lcom/android/systemui/statusbar/phone/sub/SubStatusBarWindowView;

    iput-object p0, v2, Lcom/android/systemui/statusbar/phone/sub/SubStatusBarWindowView;->mService:Lcom/android/systemui/statusbar/phone/sub/SubPhoneStatusBar;

    .line 498
    const v2, 0x7f0a00a0

    invoke-virtual {v0, v2}, Landroid/content/Context;->getColor(I)I

    move-result v2

    iput v2, p0, Lcom/android/systemui/statusbar/phone/sub/SubPhoneStatusBar;->mDarkModeIconColorSingleTone:I

    .line 499
    const v2, 0x7f0a00a4

    invoke-virtual {v0, v2}, Landroid/content/Context;->getColor(I)I

    move-result v2

    iput v2, p0, Lcom/android/systemui/statusbar/phone/sub/SubPhoneStatusBar;->mLightModeIconColorSingleTone:I

    .line 515
    new-instance v1, Landroid/content/IntentFilter;

    invoke-direct {v1}, Landroid/content/IntentFilter;-><init>()V

    .line 516
    .local v1, "filter":Landroid/content/IntentFilter;
    const-string v2, "android.intent.action.CLOSE_SYSTEM_DIALOGS"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 517
    const-string v2, "com.sec.android.action.FLOATING_BACK_KEY_VISIBILITY"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 518
    const-string v2, "com.sec.android.action.NOTIFY_COUPLEDTASK_RESUMED_STATUS"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 519
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/sub/SubPhoneStatusBar;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v2, v1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 521
    return-void
.end method

.method public maybeEscalateHeadsUp()V
    .locals 0

    .prologue
    .line 667
    return-void
.end method

.method public notificationLightOff()V
    .locals 0

    .prologue
    .line 642
    return-void
.end method

.method public notificationLightPulse(III)V
    .locals 0
    .param p1, "argb"    # I
    .param p2, "onMillis"    # I
    .param p3, "offMillis"    # I

    .prologue
    .line 646
    return-void
.end method

.method public notifyRecentPanelVisiblity(Z)V
    .locals 0
    .param p1, "state"    # Z

    .prologue
    .line 758
    return-void
.end method

.method public onActivated(Lcom/android/systemui/statusbar/ActivatableNotificationView;)V
    .locals 0
    .param p1, "view"    # Lcom/android/systemui/statusbar/ActivatableNotificationView;

    .prologue
    .line 693
    return-void
.end method

.method public onActivationReset(Lcom/android/systemui/statusbar/ActivatableNotificationView;Z)V
    .locals 0
    .param p1, "view"    # Lcom/android/systemui/statusbar/ActivatableNotificationView;
    .param p2, "timeout"    # Z

    .prologue
    .line 698
    return-void
.end method

.method public onBackPressed()Z
    .locals 1

    .prologue
    .line 533
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/sub/SubPhoneStatusBar;->makeExpandedInvisible()V

    .line 534
    const/4 v0, 0x1

    return v0
.end method

.method public onCameraLaunchGestureDetected(I)V
    .locals 0
    .param p1, "source"    # I

    .prologue
    .line 718
    return-void
.end method

.method public onMenuPressed()Z
    .locals 1

    .prologue
    .line 529
    const/4 v0, 0x1

    return v0
.end method

.method protected refreshLayout(I)V
    .locals 0
    .param p1, "layoutDirection"    # I

    .prologue
    .line 689
    return-void
.end method

.method public removeIcon(Ljava/lang/String;II)V
    .locals 0
    .param p1, "slot"    # Ljava/lang/String;
    .param p2, "index"    # I
    .param p3, "viewIndex"    # I

    .prologue
    .line 588
    return-void
.end method

.method public removeNotification(Ljava/lang/String;Landroid/service/notification/NotificationListenerService$RankingMap;)V
    .locals 0
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "ranking"    # Landroid/service/notification/NotificationListenerService$RankingMap;

    .prologue
    .line 601
    return-void
.end method

.method protected setAreThereNotifications()V
    .locals 0

    .prologue
    .line 650
    return-void
.end method

.method public setCallBackground(I)V
    .locals 0
    .param p1, "mode"    # I

    .prologue
    .line 750
    return-void
.end method

.method protected setHeadsUpUser(I)V
    .locals 0
    .param p1, "newUserId"    # I

    .prologue
    .line 727
    return-void
.end method

.method public setImeWindowStatus(Landroid/os/IBinder;IIZ)V
    .locals 0
    .param p1, "token"    # Landroid/os/IBinder;
    .param p2, "vis"    # I
    .param p3, "backDisposition"    # I
    .param p4, "showImeSwitcher"    # Z

    .prologue
    .line 626
    return-void
.end method

.method public setInteracting(IZ)V
    .locals 2
    .param p1, "barWindow"    # I
    .param p2, "interacting"    # Z

    .prologue
    .line 258
    if-eqz p2, :cond_0

    iget v0, p0, Lcom/android/systemui/statusbar/phone/sub/SubPhoneStatusBar;->mInteractingWindows:I

    or-int/2addr v0, p1

    :goto_0
    iput v0, p0, Lcom/android/systemui/statusbar/phone/sub/SubPhoneStatusBar;->mInteractingWindows:I

    .line 261
    iget v0, p0, Lcom/android/systemui/statusbar/phone/sub/SubPhoneStatusBar;->mInteractingWindows:I

    if-eqz v0, :cond_1

    .line 262
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/sub/SubPhoneStatusBar;->suspendAutohide()V

    .line 266
    :goto_1
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/sub/SubPhoneStatusBar;->checkBarModes()V

    .line 267
    return-void

    .line 258
    :cond_0
    iget v0, p0, Lcom/android/systemui/statusbar/phone/sub/SubPhoneStatusBar;->mInteractingWindows:I

    xor-int/lit8 v1, p1, -0x1

    and-int/2addr v0, v1

    goto :goto_0

    .line 264
    :cond_1
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/sub/SubPhoneStatusBar;->resumeSuspendedAutohide()V

    goto :goto_1
.end method

.method public setMultiWindowBg(Z)V
    .locals 0
    .param p1, "on"    # Z

    .prologue
    .line 754
    return-void
.end method

.method public setSystemUiVisibility(II)V
    .locals 12
    .param p1, "vis"    # I
    .param p2, "mask"    # I

    .prologue
    .line 114
    iget v5, p0, Lcom/android/systemui/statusbar/phone/sub/SubPhoneStatusBar;->mSystemUiVisibility:I

    .line 115
    .local v5, "oldVal":I
    xor-int/lit8 v7, p2, -0x1

    and-int/2addr v7, v5

    and-int v8, p1, p2

    or-int v4, v7, v8

    .line 116
    .local v4, "newVal":I
    xor-int v1, v4, v5

    .line 117
    .local v1, "diff":I
    sget-boolean v7, Lcom/android/systemui/statusbar/phone/sub/SubPhoneStatusBar;->DEBUG:Z

    if-eqz v7, :cond_0

    const-string v7, "SubPhoneStatusBar"

    const-string v8, "SUB - setSystemUiVisibility vis=%s mask=%s oldVal=%s newVal=%s diff=%s"

    const/4 v9, 0x5

    new-array v9, v9, [Ljava/lang/Object;

    const/4 v10, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v11

    aput-object v11, v9, v10

    const/4 v10, 0x1

    invoke-static {p2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v11

    aput-object v11, v9, v10

    const/4 v10, 0x2

    invoke-static {v5}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v11

    aput-object v11, v9, v10

    const/4 v10, 0x3

    invoke-static {v4}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v11

    aput-object v11, v9, v10

    const/4 v10, 0x4

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v11

    aput-object v11, v9, v10

    invoke-static {v8, v9}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 122
    :cond_0
    if-eqz v1, :cond_6

    .line 125
    iget v7, p0, Lcom/android/systemui/statusbar/phone/sub/SubPhoneStatusBar;->mSystemUiVisibility:I

    and-int/lit16 v7, v7, 0x4000

    if-lez v7, :cond_7

    const/4 v6, 0x1

    .line 127
    .local v6, "wasRecentsVisible":Z
    :goto_0
    iput v4, p0, Lcom/android/systemui/statusbar/phone/sub/SubPhoneStatusBar;->mSystemUiVisibility:I

    .line 166
    const/high16 v7, 0x10000000

    and-int/2addr v7, p1

    if-eqz v7, :cond_1

    .line 167
    iget v7, p0, Lcom/android/systemui/statusbar/phone/sub/SubPhoneStatusBar;->mSystemUiVisibility:I

    const v8, -0x10000001

    and-int/2addr v7, v8

    iput v7, p0, Lcom/android/systemui/statusbar/phone/sub/SubPhoneStatusBar;->mSystemUiVisibility:I

    .line 170
    :cond_1
    const/high16 v7, 0x20000000

    and-int/2addr v7, p1

    if-eqz v7, :cond_2

    .line 171
    iget v7, p0, Lcom/android/systemui/statusbar/phone/sub/SubPhoneStatusBar;->mSystemUiVisibility:I

    const v8, -0x20000001

    and-int/2addr v7, v8

    iput v7, p0, Lcom/android/systemui/statusbar/phone/sub/SubPhoneStatusBar;->mSystemUiVisibility:I

    .line 181
    :cond_2
    iget-object v7, p0, Lcom/android/systemui/statusbar/phone/sub/SubPhoneStatusBar;->mSubStatusBarDateView:Lcom/android/systemui/statusbar/policy/DateView;

    if-eqz v7, :cond_4

    and-int/lit16 v7, v1, 0x2000

    if-eqz v7, :cond_4

    .line 182
    iget v7, p0, Lcom/android/systemui/statusbar/phone/sub/SubPhoneStatusBar;->mStatusBarMode:I

    const/4 v8, 0x4

    if-eq v7, v8, :cond_3

    iget v7, p0, Lcom/android/systemui/statusbar/phone/sub/SubPhoneStatusBar;->mStatusBarMode:I

    const/4 v8, 0x6

    if-ne v7, v8, :cond_8

    :cond_3
    const/4 v2, 0x1

    .line 184
    .local v2, "isTransparentBar":Z
    :goto_1
    move v0, v2

    .line 185
    .local v0, "allowLight":Z
    and-int/lit16 v7, p1, 0x2000

    if-eqz v7, :cond_9

    const/4 v3, 0x1

    .line 186
    .local v3, "light":Z
    :goto_2
    iget-object v8, p0, Lcom/android/systemui/statusbar/phone/sub/SubPhoneStatusBar;->mSubStatusBarDateView:Lcom/android/systemui/statusbar/policy/DateView;

    if-eqz v0, :cond_a

    if-eqz v3, :cond_a

    iget v7, p0, Lcom/android/systemui/statusbar/phone/sub/SubPhoneStatusBar;->mDarkModeIconColorSingleTone:I

    :goto_3
    invoke-virtual {v8, v7}, Lcom/android/systemui/statusbar/policy/DateView;->setTextColor(I)V

    .line 192
    .end local v0    # "allowLight":Z
    .end local v2    # "isTransparentBar":Z
    .end local v3    # "light":Z
    :cond_4
    if-eqz v6, :cond_5

    .line 193
    iget v7, p0, Lcom/android/systemui/statusbar/phone/sub/SubPhoneStatusBar;->mSystemUiVisibility:I

    or-int/lit16 v7, v7, 0x4000

    iput v7, p0, Lcom/android/systemui/statusbar/phone/sub/SubPhoneStatusBar;->mSystemUiVisibility:I

    .line 197
    :cond_5
    iget v7, p0, Lcom/android/systemui/statusbar/phone/sub/SubPhoneStatusBar;->mSystemUiVisibility:I

    invoke-direct {p0, v7}, Lcom/android/systemui/statusbar/phone/sub/SubPhoneStatusBar;->notifyUiVisibilityChanged(I)V

    .line 199
    .end local v6    # "wasRecentsVisible":Z
    :cond_6
    return-void

    .line 125
    :cond_7
    const/4 v6, 0x0

    goto :goto_0

    .line 182
    .restart local v6    # "wasRecentsVisible":Z
    :cond_8
    const/4 v2, 0x0

    goto :goto_1

    .line 185
    .restart local v0    # "allowLight":Z
    .restart local v2    # "isTransparentBar":Z
    :cond_9
    const/4 v3, 0x0

    goto :goto_2

    .line 186
    .restart local v3    # "light":Z
    :cond_a
    iget v7, p0, Lcom/android/systemui/statusbar/phone/sub/SubPhoneStatusBar;->mLightModeIconColorSingleTone:I

    goto :goto_3
.end method

.method public setWindowState(II)V
    .locals 0
    .param p1, "window"    # I
    .param p2, "state"    # I

    .prologue
    .line 634
    return-void
.end method

.method public showScreenPinningRequest()V
    .locals 0

    .prologue
    .line 702
    return-void
.end method

.method public start()V
    .locals 0

    .prologue
    .line 108
    invoke-super {p0}, Lcom/android/systemui/statusbar/BaseStatusBar;->start()V

    .line 110
    return-void
.end method

.method public startActivityAndDismiss(Landroid/content/Intent;)V
    .locals 4
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 538
    const/high16 v1, 0x14000000

    :try_start_0
    invoke-virtual {p1, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 540
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/sub/SubPhoneStatusBar;->mContext:Landroid/content/Context;

    new-instance v2, Landroid/os/UserHandle;

    const/4 v3, -0x2

    invoke-direct {v2, v3}, Landroid/os/UserHandle;-><init>(I)V

    invoke-virtual {v1, p1, v2}, Landroid/content/Context;->startActivityAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 542
    const-string v1, "SubPhoneStatusBar"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Launching intent : intent = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 546
    :goto_0
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/sub/SubPhoneStatusBar;->makeExpandedInvisible()V

    .line 547
    return-void

    .line 543
    :catch_0
    move-exception v0

    .line 544
    .local v0, "e":Landroid/content/ActivityNotFoundException;
    const-string v1, "SubPhoneStatusBar"

    const-string v2, "activity not found"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public toggleNotificationPanel()V
    .locals 0

    .prologue
    .line 746
    return-void
.end method

.method public toggleRecentApps()V
    .locals 0

    .prologue
    .line 630
    return-void
.end method

.method public topAppWindowChanged(Z)V
    .locals 0
    .param p1, "visible"    # Z

    .prologue
    .line 621
    return-void
.end method

.method protected updateHeadsUp(Ljava/lang/String;Lcom/android/systemui/statusbar/NotificationData$Entry;ZZ)V
    .locals 0
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "entry"    # Lcom/android/systemui/statusbar/NotificationData$Entry;
    .param p3, "shouldInterrupt"    # Z
    .param p4, "alertAgain"    # Z

    .prologue
    .line 723
    return-void
.end method

.method public updateIcon(Ljava/lang/String;IILcom/android/internal/statusbar/StatusBarIcon;Lcom/android/internal/statusbar/StatusBarIcon;)V
    .locals 0
    .param p1, "slot"    # Ljava/lang/String;
    .param p2, "index"    # I
    .param p3, "viewIndex"    # I
    .param p4, "old"    # Lcom/android/internal/statusbar/StatusBarIcon;
    .param p5, "icon"    # Lcom/android/internal/statusbar/StatusBarIcon;

    .prologue
    .line 584
    return-void
.end method

.method protected updateNotificationRanking(Landroid/service/notification/NotificationListenerService$RankingMap;)V
    .locals 0
    .param p1, "ranking"    # Landroid/service/notification/NotificationListenerService$RankingMap;

    .prologue
    .line 597
    return-void
.end method

.method protected updateNotifications()V
    .locals 0

    .prologue
    .line 654
    return-void
.end method
