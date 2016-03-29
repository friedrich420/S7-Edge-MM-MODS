.class public Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindowService;
.super Landroid/app/SallyService;
.source "CenterBarWindowService.java"


# instance fields
.field private final DEBUG:Z

.field private mAlarmStateReceiver:Landroid/content/BroadcastReceiver;

.field mCenterBarFocusDisplayReceiver:Landroid/content/BroadcastReceiver;

.field private mCenterBarWindow:Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow;

.field mController:Lcom/android/systemui/multiwindow/centerbarwindow/Controller;

.field private mFocusZoneInfo:I

.field private mHandler:Landroid/os/Handler;

.field private mIsFactoryMode:Z

.field mKnoxSettingProperty:Lcom/android/systemui/multiwindow/centerbarwindow/KnoxSettingProperty;

.field mKnoxSetupCompleteReceiver:Landroid/content/BroadcastReceiver;

.field private mLastMultiWindowTypeArray:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field mMultiUserReceiver:Landroid/content/BroadcastReceiver;

.field private mMultiWindowFacade:Lcom/samsung/android/multiwindow/MultiWindowFacade;

.field mMultiWindowServiceCallback:Landroid/sec/multiwindow/impl/IMultiWindowServiceCallback$Stub;

.field mMultiWindowStatusReceiver:Landroid/content/BroadcastReceiver;

.field mOpenThemeChangedReceiver:Landroid/content/BroadcastReceiver;

.field mOutsideTouchEventReceiver:Landroid/content/BroadcastReceiver;

.field private mRecentGuideLine:Lcom/android/systemui/multiwindow/centerbarwindow/GuideLine;

.field private mRemoveViewWindowCenterBar:Z

.field private mResources:Landroid/content/res/Resources;

.field mSealedReceiver:Landroid/content/BroadcastReceiver;

.field private mShowCenterbarButton:Z

.field mStatusBarAnimatingReceiver:Landroid/content/BroadcastReceiver;

.field mStatusBarExpandReceiver:Landroid/content/BroadcastReceiver;

.field mStopDragModeReceiver:Landroid/content/BroadcastReceiver;

.field mThemeChangedReceiver:Landroid/content/BroadcastReceiver;

.field mUsageStats:Landroid/app/usage/IUsageStatsManager;

.field private mUsageStatsWatcher:Landroid/app/usage/IUsageStatsWatcher$Stub;

.field private mUserId:I

.field private mWindowCenterBar:Landroid/view/Window;

.field private mWindowRecentGuideLine:Landroid/view/Window;


# direct methods
.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 86
    invoke-direct {p0}, Landroid/app/SallyService;-><init>()V

    .line 90
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindowService;->DEBUG:Z

    .line 92
    iput-object v1, p0, Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindowService;->mCenterBarWindow:Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow;

    .line 93
    iput-object v1, p0, Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindowService;->mRecentGuideLine:Lcom/android/systemui/multiwindow/centerbarwindow/GuideLine;

    .line 99
    iput-object v1, p0, Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindowService;->mWindowCenterBar:Landroid/view/Window;

    .line 100
    iput-object v1, p0, Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindowService;->mWindowRecentGuideLine:Landroid/view/Window;

    .line 102
    iput-object v1, p0, Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindowService;->mAlarmStateReceiver:Landroid/content/BroadcastReceiver;

    .line 104
    iput-boolean v2, p0, Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindowService;->mIsFactoryMode:Z

    .line 106
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindowService;->mHandler:Landroid/os/Handler;

    .line 116
    iput-object v1, p0, Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindowService;->mKnoxSettingProperty:Lcom/android/systemui/multiwindow/centerbarwindow/KnoxSettingProperty;

    .line 121
    iput-boolean v2, p0, Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindowService;->mRemoveViewWindowCenterBar:Z

    .line 123
    iput-boolean v2, p0, Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindowService;->mShowCenterbarButton:Z

    .line 131
    iput v2, p0, Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindowService;->mUserId:I

    .line 133
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindowService;->mLastMultiWindowTypeArray:Landroid/util/SparseArray;

    .line 136
    new-instance v0, Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindowService$1;

    invoke-direct {v0, p0}, Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindowService$1;-><init>(Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindowService;)V

    iput-object v0, p0, Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindowService;->mUsageStatsWatcher:Landroid/app/usage/IUsageStatsWatcher$Stub;

    .line 193
    new-instance v0, Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindowService$2;

    invoke-direct {v0, p0}, Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindowService$2;-><init>(Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindowService;)V

    iput-object v0, p0, Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindowService;->mCenterBarFocusDisplayReceiver:Landroid/content/BroadcastReceiver;

    .line 208
    new-instance v0, Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindowService$3;

    invoke-direct {v0, p0}, Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindowService$3;-><init>(Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindowService;)V

    iput-object v0, p0, Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindowService;->mMultiWindowStatusReceiver:Landroid/content/BroadcastReceiver;

    .line 225
    new-instance v0, Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindowService$4;

    invoke-direct {v0, p0}, Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindowService$4;-><init>(Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindowService;)V

    iput-object v0, p0, Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindowService;->mSealedReceiver:Landroid/content/BroadcastReceiver;

    .line 241
    new-instance v0, Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindowService$5;

    invoke-direct {v0, p0}, Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindowService$5;-><init>(Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindowService;)V

    iput-object v0, p0, Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindowService;->mStatusBarExpandReceiver:Landroid/content/BroadcastReceiver;

    .line 251
    new-instance v0, Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindowService$6;

    invoke-direct {v0, p0}, Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindowService$6;-><init>(Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindowService;)V

    iput-object v0, p0, Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindowService;->mStatusBarAnimatingReceiver:Landroid/content/BroadcastReceiver;

    .line 261
    new-instance v0, Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindowService$7;

    invoke-direct {v0, p0}, Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindowService$7;-><init>(Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindowService;)V

    iput-object v0, p0, Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindowService;->mMultiUserReceiver:Landroid/content/BroadcastReceiver;

    .line 271
    new-instance v0, Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindowService$8;

    invoke-direct {v0, p0}, Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindowService$8;-><init>(Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindowService;)V

    iput-object v0, p0, Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindowService;->mStopDragModeReceiver:Landroid/content/BroadcastReceiver;

    .line 285
    new-instance v0, Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindowService$9;

    invoke-direct {v0, p0}, Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindowService$9;-><init>(Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindowService;)V

    iput-object v0, p0, Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindowService;->mThemeChangedReceiver:Landroid/content/BroadcastReceiver;

    .line 297
    new-instance v0, Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindowService$10;

    invoke-direct {v0, p0}, Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindowService$10;-><init>(Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindowService;)V

    iput-object v0, p0, Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindowService;->mOpenThemeChangedReceiver:Landroid/content/BroadcastReceiver;

    .line 316
    new-instance v0, Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindowService$11;

    invoke-direct {v0, p0}, Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindowService$11;-><init>(Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindowService;)V

    iput-object v0, p0, Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindowService;->mKnoxSetupCompleteReceiver:Landroid/content/BroadcastReceiver;

    .line 333
    new-instance v0, Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindowService$12;

    invoke-direct {v0, p0}, Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindowService$12;-><init>(Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindowService;)V

    iput-object v0, p0, Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindowService;->mOutsideTouchEventReceiver:Landroid/content/BroadcastReceiver;

    .line 732
    new-instance v0, Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindowService$16;

    invoke-direct {v0, p0}, Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindowService$16;-><init>(Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindowService;)V

    iput-object v0, p0, Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindowService;->mMultiWindowServiceCallback:Landroid/sec/multiwindow/impl/IMultiWindowServiceCallback$Stub;

    return-void
.end method

.method static synthetic access$000(Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindowService;)Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindowService;

    .prologue
    .line 86
    iget-object v0, p0, Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindowService;->mCenterBarWindow:Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindowService;)Lcom/samsung/android/multiwindow/MultiWindowFacade;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindowService;

    .prologue
    .line 86
    iget-object v0, p0, Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindowService;->mMultiWindowFacade:Lcom/samsung/android/multiwindow/MultiWindowFacade;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindowService;)Landroid/view/WindowManager;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindowService;

    .prologue
    .line 86
    iget-object v0, p0, Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindowService;->mWindowManager:Landroid/view/WindowManager;

    return-object v0
.end method

.method static synthetic access$1100(Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindowService;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindowService;

    .prologue
    .line 86
    iget-boolean v0, p0, Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindowService;->mShowCenterbarButton:Z

    return v0
.end method

.method static synthetic access$1102(Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindowService;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindowService;
    .param p1, "x1"    # Z

    .prologue
    .line 86
    iput-boolean p1, p0, Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindowService;->mShowCenterbarButton:Z

    return p1
.end method

.method static synthetic access$1200(Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindowService;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindowService;

    .prologue
    .line 86
    iget-object v0, p0, Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindowService;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$1300(Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindowService;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindowService;

    .prologue
    .line 86
    iget-object v0, p0, Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindowService;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$1400(Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindowService;I)V
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindowService;
    .param p1, "x1"    # I

    .prologue
    .line 86
    invoke-direct {p0, p1}, Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindowService;->makeCenterBarWindow(I)V

    return-void
.end method

.method static synthetic access$200(Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindowService;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindowService;

    .prologue
    .line 86
    iget v0, p0, Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindowService;->mUserId:I

    return v0
.end method

.method static synthetic access$300(Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindowService;)Landroid/util/SparseArray;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindowService;

    .prologue
    .line 86
    iget-object v0, p0, Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindowService;->mLastMultiWindowTypeArray:Landroid/util/SparseArray;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindowService;)Landroid/os/Handler;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindowService;

    .prologue
    .line 86
    iget-object v0, p0, Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindowService;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindowService;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindowService;

    .prologue
    .line 86
    iget v0, p0, Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindowService;->mFocusZoneInfo:I

    return v0
.end method

.method static synthetic access$502(Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindowService;I)I
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindowService;
    .param p1, "x1"    # I

    .prologue
    .line 86
    iput p1, p0, Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindowService;->mFocusZoneInfo:I

    return p1
.end method

.method static synthetic access$600(Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindowService;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindowService;

    .prologue
    .line 86
    invoke-direct {p0}, Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindowService;->userSwitched()V

    return-void
.end method

.method static synthetic access$700(Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindowService;)Landroid/view/Window;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindowService;

    .prologue
    .line 86
    iget-object v0, p0, Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindowService;->mWindowCenterBar:Landroid/view/Window;

    return-object v0
.end method

.method static synthetic access$702(Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindowService;Landroid/view/Window;)Landroid/view/Window;
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindowService;
    .param p1, "x1"    # Landroid/view/Window;

    .prologue
    .line 86
    iput-object p1, p0, Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindowService;->mWindowCenterBar:Landroid/view/Window;

    return-object p1
.end method

.method static synthetic access$800(Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindowService;)Landroid/view/WindowManager;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindowService;

    .prologue
    .line 86
    iget-object v0, p0, Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindowService;->mWindowManager:Landroid/view/WindowManager;

    return-object v0
.end method

.method static synthetic access$900(Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindowService;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindowService;

    .prologue
    .line 86
    iget-boolean v0, p0, Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindowService;->mRemoveViewWindowCenterBar:Z

    return v0
.end method

.method static synthetic access$902(Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindowService;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindowService;
    .param p1, "x1"    # Z

    .prologue
    .line 86
    iput-boolean p1, p0, Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindowService;->mRemoveViewWindowCenterBar:Z

    return p1
.end method

.method private handleIntent(Landroid/content/Intent;)V
    .locals 6
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    const/4 v5, -0x1

    .line 563
    if-eqz p1, :cond_0

    .line 564
    const-string v1, "com.sec.android.action.RECENT_LONG_PRESS_LAUNCH"

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 565
    iget-object v1, p0, Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindowService;->mRecentGuideLine:Lcom/android/systemui/multiwindow/centerbarwindow/GuideLine;

    if-eqz v1, :cond_0

    .line 566
    invoke-virtual {p1}, Landroid/content/Intent;->getMultiWindowStyle()Lcom/samsung/android/multiwindow/MultiWindowStyle;

    move-result-object v0

    .line 567
    .local v0, "mwStyle":Lcom/samsung/android/multiwindow/MultiWindowStyle;
    iget-object v2, p0, Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindowService;->mRecentGuideLine:Lcom/android/systemui/multiwindow/centerbarwindow/GuideLine;

    const-string v1, "com.sec.android.multiwindow.extra.intent"

    invoke-virtual {p1, v1}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Landroid/content/Intent;

    const-string v3, "com.sec.android.multiwindow.extra.taskId"

    invoke-virtual {p1, v3, v5}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v3

    const-string v4, "com.sec.android.multiwindow.extra.screenOrientation"

    invoke-virtual {p1, v4, v5}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v4

    invoke-virtual {v2, v1, v3, v4, v0}, Lcom/android/systemui/multiwindow/centerbarwindow/GuideLine;->show(Landroid/content/Intent;IILcom/samsung/android/multiwindow/MultiWindowStyle;)V

    .line 573
    .end local v0    # "mwStyle":Lcom/samsung/android/multiwindow/MultiWindowStyle;
    :cond_0
    return-void
.end method

.method private initAlarmEventReceiver()V
    .locals 2

    .prologue
    .line 696
    iget-object v1, p0, Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindowService;->mAlarmStateReceiver:Landroid/content/BroadcastReceiver;

    if-nez v1, :cond_0

    .line 697
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 698
    .local v0, "filter":Landroid/content/IntentFilter;
    const-string v1, "com.samsung.sec.android.clockpackage.alarm.ALARM_ALERT_FROM_ALARM"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 700
    new-instance v1, Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindowService$15;

    invoke-direct {v1, p0}, Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindowService$15;-><init>(Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindowService;)V

    iput-object v1, p0, Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindowService;->mAlarmStateReceiver:Landroid/content/BroadcastReceiver;

    .line 708
    iget-object v1, p0, Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindowService;->mAlarmStateReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v1, v0}, Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindowService;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 710
    .end local v0    # "filter":Landroid/content/IntentFilter;
    :cond_0
    return-void
.end method

.method private isCompleteUserSetup()Z
    .locals 4

    .prologue
    const/4 v0, 0x1

    .line 576
    iget-object v1, p0, Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindowService;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "user_setup_complete"

    const/4 v3, -0x2

    invoke-static {v1, v2, v0, v3}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v1

    if-ne v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isFactoryMode()Z
    .locals 5

    .prologue
    .line 664
    const/4 v0, 0x0

    .line 666
    .local v0, "isFactoryMode":Z
    invoke-virtual {p0}, Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindowService;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    const-string v3, "phone"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telephony/TelephonyManager;

    .line 668
    .local v1, "tm":Landroid/telephony/TelephonyManager;
    if-nez v0, :cond_0

    .line 669
    iget-object v2, p0, Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindowService;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "SHOULD_SHUT_DOWN"

    const/4 v4, 0x0

    invoke-static {v2, v3, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_0

    .line 670
    const-string v2, "CenterBarWindowService"

    const-string v3, "Factory mode is enabled by Case #1"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 671
    const/4 v0, 0x1

    .line 676
    :cond_0
    if-nez v0, :cond_1

    .line 677
    const-string v2, "999999999999999"

    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->getSubscriberId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 678
    const-string v2, "CenterBarWindowService"

    const-string v3, "Factory mode is enabled by Case #2"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 679
    const/4 v0, 0x1

    .line 684
    :cond_1
    if-nez v0, :cond_2

    .line 685
    invoke-static {}, Landroid/os/FactoryTest;->isFactoryMode()Z

    move-result v0

    .line 686
    const-string v2, "CenterBarWindowService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Factory mode is "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 687
    if-eqz v0, :cond_2

    .line 688
    const-string v2, "CenterBarWindowService"

    const-string v3, "Factory mode is enabled by Case #3"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 692
    :cond_2
    return v0
.end method

.method private isKidsModeRunning()Z
    .locals 4

    .prologue
    const/4 v0, 0x0

    .line 581
    iget-object v1, p0, Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindowService;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "kids_home_mode"

    const/4 v3, -0x2

    invoke-static {v1, v2, v0, v3}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method private isOtaRegistrationMode()Z
    .locals 1

    .prologue
    .line 645
    const/4 v0, 0x0

    return v0
.end method

.method private makeCenterBarWindow(I)V
    .locals 7
    .param p1, "arrageMode"    # I

    .prologue
    const/4 v2, 0x0

    .line 595
    iget-object v0, p0, Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindowService;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v6

    .line 596
    .local v6, "inflater":Landroid/view/LayoutInflater;
    const v0, 0x7f04000a

    const/4 v3, 0x0

    invoke-virtual {v6, v0, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 597
    .local v1, "centerBarView":Landroid/view/View;
    const/16 v4, 0x898

    .line 599
    .local v4, "windowType":I
    iget-object v0, p0, Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindowService;->mCenterBarWindow:Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow;

    if-nez v0, :cond_0

    .line 600
    new-instance v0, Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow;

    iget-object v3, p0, Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindowService;->mContext:Landroid/content/Context;

    invoke-direct {v0, v3, p0}, Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow;-><init>(Landroid/content/Context;Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindowService;)V

    iput-object v0, p0, Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindowService;->mCenterBarWindow:Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow;

    .line 603
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindowService;->mWindowCenterBar:Landroid/view/Window;

    if-nez v0, :cond_1

    .line 604
    const/16 v5, 0x8

    move-object v0, p0

    move v3, v2

    invoke-virtual/range {v0 .. v5}, Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindowService;->addWindow(Landroid/view/View;IIII)Landroid/view/Window;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindowService;->mWindowCenterBar:Landroid/view/Window;

    .line 605
    iget-object v0, p0, Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindowService;->mCenterBarWindow:Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow;

    invoke-virtual {v0, v1}, Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow;->setView(Landroid/view/View;)V

    .line 606
    iget-object v0, p0, Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindowService;->mWindowCenterBar:Landroid/view/Window;

    if-eqz v0, :cond_1

    .line 607
    iget-object v0, p0, Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindowService;->mCenterBarWindow:Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow;

    iget-object v2, p0, Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindowService;->mWindowCenterBar:Landroid/view/Window;

    invoke-virtual {v0, v2, p1}, Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow;->setWindow(Landroid/view/Window;I)V

    .line 610
    :cond_1
    iget-object v0, p0, Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindowService;->mWindowCenterBar:Landroid/view/Window;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindowService;->mWindowCenterBar:Landroid/view/Window;

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 611
    iget-object v0, p0, Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindowService;->mWindowCenterBar:Landroid/view/Window;

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    new-instance v2, Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindowService$14;

    invoke-direct {v2, p0}, Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindowService$14;-><init>(Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindowService;)V

    invoke-virtual {v0, v2}, Landroid/view/View;->addOnAttachStateChangeListener(Landroid/view/View$OnAttachStateChangeListener;)V

    .line 631
    :cond_2
    return-void
.end method

.method private regsterReceivers()V
    .locals 45

    .prologue
    .line 375
    invoke-direct/range {p0 .. p0}, Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindowService;->initAlarmEventReceiver()V

    .line 377
    new-instance v5, Landroid/content/IntentFilter;

    const-string v2, "com.sec.android.action.NOTIFY_FOCUS_WINDOWS"

    invoke-direct {v5, v2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 378
    .local v5, "centerBarfocusFilter":Landroid/content/IntentFilter;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindowService;->mCenterBarFocusDisplayReceiver:Landroid/content/BroadcastReceiver;

    sget-object v4, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object/from16 v2, p0

    invoke-virtual/range {v2 .. v7}, Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindowService;->registerReceiverAsUser(Landroid/content/BroadcastReceiver;Landroid/os/UserHandle;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 380
    new-instance v9, Landroid/content/IntentFilter;

    const-string v2, "com.sec.android.action.NOTIFY_MULTIWINDOW_STATUS"

    invoke-direct {v9, v2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 381
    .local v9, "multiwindowStatusFilter":Landroid/content/IntentFilter;
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindowService;->mMultiWindowStatusReceiver:Landroid/content/BroadcastReceiver;

    sget-object v8, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    const/4 v10, 0x0

    const/4 v11, 0x0

    move-object/from16 v6, p0

    invoke-virtual/range {v6 .. v11}, Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindowService;->registerReceiverAsUser(Landroid/content/BroadcastReceiver;Landroid/os/UserHandle;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 385
    new-instance v44, Landroid/content/IntentFilter;

    const-string v2, "com.sec.android.multiwindow.SEALED_MODE"

    move-object/from16 v0, v44

    invoke-direct {v0, v2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 386
    .local v44, "sealedIntentFilter":Landroid/content/IntentFilter;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindowService;->mSealedReceiver:Landroid/content/BroadcastReceiver;

    move-object/from16 v0, p0

    move-object/from16 v1, v44

    invoke-virtual {v0, v2, v1}, Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindowService;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 390
    new-instance v13, Landroid/content/IntentFilter;

    const-string v2, "com.samsung.systemui.statusbar.EXPANDED"

    invoke-direct {v13, v2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 391
    .local v13, "statusBarExpandReceiver":Landroid/content/IntentFilter;
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindowService;->mStatusBarExpandReceiver:Landroid/content/BroadcastReceiver;

    sget-object v12, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    const/4 v14, 0x0

    const/4 v15, 0x0

    move-object/from16 v10, p0

    invoke-virtual/range {v10 .. v15}, Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindowService;->registerReceiverAsUser(Landroid/content/BroadcastReceiver;Landroid/os/UserHandle;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 393
    new-instance v17, Landroid/content/IntentFilter;

    const-string v2, "com.samsung.systemui.statusbar.ANIMATING"

    move-object/from16 v0, v17

    invoke-direct {v0, v2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 394
    .local v17, "statusBarAnimatingReceiver":Landroid/content/IntentFilter;
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindowService;->mStatusBarAnimatingReceiver:Landroid/content/BroadcastReceiver;

    sget-object v16, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    const/16 v18, 0x0

    const/16 v19, 0x0

    move-object/from16 v14, p0

    invoke-virtual/range {v14 .. v19}, Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindowService;->registerReceiverAsUser(Landroid/content/BroadcastReceiver;Landroid/os/UserHandle;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 396
    new-instance v21, Landroid/content/IntentFilter;

    const-string v2, "android.intent.action.USER_SWITCHED"

    move-object/from16 v0, v21

    invoke-direct {v0, v2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 397
    .local v21, "multiUserReceiver":Landroid/content/IntentFilter;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindowService;->mMultiUserReceiver:Landroid/content/BroadcastReceiver;

    move-object/from16 v19, v0

    sget-object v20, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    const/16 v22, 0x0

    const/16 v23, 0x0

    move-object/from16 v18, p0

    invoke-virtual/range {v18 .. v23}, Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindowService;->registerReceiverAsUser(Landroid/content/BroadcastReceiver;Landroid/os/UserHandle;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 399
    new-instance v25, Landroid/content/IntentFilter;

    const-string v2, "com.sec.android.action.NOTIFY_STOP_DRAG_MODE"

    move-object/from16 v0, v25

    invoke-direct {v0, v2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 400
    .local v25, "stopDragModeReceiver":Landroid/content/IntentFilter;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindowService;->mStopDragModeReceiver:Landroid/content/BroadcastReceiver;

    move-object/from16 v23, v0

    sget-object v24, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    const/16 v26, 0x0

    const/16 v27, 0x0

    move-object/from16 v22, p0

    invoke-virtual/range {v22 .. v27}, Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindowService;->registerReceiverAsUser(Landroid/content/BroadcastReceiver;Landroid/os/UserHandle;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 402
    new-instance v29, Landroid/content/IntentFilter;

    const-string v2, "com.sec.android.app.themechooser.HOME_THEME_CHANGED"

    move-object/from16 v0, v29

    invoke-direct {v0, v2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 403
    .local v29, "themeChangedReceiver":Landroid/content/IntentFilter;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindowService;->mThemeChangedReceiver:Landroid/content/BroadcastReceiver;

    move-object/from16 v27, v0

    sget-object v28, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    const/16 v30, 0x0

    const/16 v31, 0x0

    move-object/from16 v26, p0

    invoke-virtual/range {v26 .. v31}, Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindowService;->registerReceiverAsUser(Landroid/content/BroadcastReceiver;Landroid/os/UserHandle;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 405
    new-instance v33, Landroid/content/IntentFilter;

    const-string v2, "com.sec.knox.SETUP_COMPLETE"

    move-object/from16 v0, v33

    invoke-direct {v0, v2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 406
    .local v33, "knoxSetupCompleteReceiver":Landroid/content/IntentFilter;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindowService;->mKnoxSetupCompleteReceiver:Landroid/content/BroadcastReceiver;

    move-object/from16 v31, v0

    sget-object v32, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    const/16 v34, 0x0

    const/16 v35, 0x0

    move-object/from16 v30, p0

    invoke-virtual/range {v30 .. v35}, Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindowService;->registerReceiverAsUser(Landroid/content/BroadcastReceiver;Landroid/os/UserHandle;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 408
    new-instance v37, Landroid/content/IntentFilter;

    const-string v2, "com.sec.android.OUTSIDE_TOUCH"

    move-object/from16 v0, v37

    invoke-direct {v0, v2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 409
    .local v37, "outsideTouchEventFilter":Landroid/content/IntentFilter;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindowService;->mOutsideTouchEventReceiver:Landroid/content/BroadcastReceiver;

    move-object/from16 v35, v0

    sget-object v36, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    const/16 v38, 0x0

    const/16 v39, 0x0

    move-object/from16 v34, p0

    invoke-virtual/range {v34 .. v39}, Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindowService;->registerReceiverAsUser(Landroid/content/BroadcastReceiver;Landroid/os/UserHandle;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 411
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindowService;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/samsung/android/multiwindow/MultiWindowFeatures;->isSupportOpenTheme(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 412
    new-instance v41, Landroid/content/IntentFilter;

    invoke-direct/range {v41 .. v41}, Landroid/content/IntentFilter;-><init>()V

    .line 413
    .local v41, "openThemeFilter":Landroid/content/IntentFilter;
    const-string v2, "com.samsung.android.theme.themecenter.THEME_APPLY"

    move-object/from16 v0, v41

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 414
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindowService;->mOpenThemeChangedReceiver:Landroid/content/BroadcastReceiver;

    move-object/from16 v39, v0

    sget-object v40, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    const/16 v42, 0x0

    const/16 v43, 0x0

    move-object/from16 v38, p0

    invoke-virtual/range {v38 .. v43}, Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindowService;->registerReceiverAsUser(Landroid/content/BroadcastReceiver;Landroid/os/UserHandle;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 416
    .end local v41    # "openThemeFilter":Landroid/content/IntentFilter;
    :cond_0
    return-void
.end method

.method private unregisterReceiverSafe(Landroid/content/BroadcastReceiver;)V
    .locals 1
    .param p1, "receiver"    # Landroid/content/BroadcastReceiver;

    .prologue
    .line 419
    if-eqz p1, :cond_0

    .line 421
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindowService;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 425
    :cond_0
    :goto_0
    return-void

    .line 422
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method private userSwitched()V
    .locals 1

    .prologue
    .line 836
    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v0

    iput v0, p0, Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindowService;->mUserId:I

    .line 837
    return-void
.end method


# virtual methods
.method public canShow()Z
    .locals 1

    .prologue
    .line 649
    invoke-virtual {p0}, Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindowService;->isMultiWindowSettingEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    .line 650
    const/4 v0, 0x0

    .line 653
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public getCenterBarPoint()Landroid/graphics/Point;
    .locals 1

    .prologue
    .line 785
    iget-object v0, p0, Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindowService;->mCenterBarWindow:Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow;

    if-eqz v0, :cond_0

    .line 786
    iget-object v0, p0, Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindowService;->mCenterBarWindow:Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow;

    invoke-virtual {v0}, Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow;->getCenterBarPoint()Landroid/graphics/Point;

    move-result-object v0

    .line 789
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public initCenterBarButtonAnim()V
    .locals 1

    .prologue
    .line 774
    iget-object v0, p0, Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindowService;->mCenterBarWindow:Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindowService;->mWindowCenterBar:Landroid/view/Window;

    if-eqz v0, :cond_0

    .line 775
    iget-object v0, p0, Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindowService;->mWindowCenterBar:Landroid/view/Window;

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindowService;->mWindowCenterBar:Landroid/view/Window;

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->isAttachedToWindow()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 777
    iget-object v0, p0, Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindowService;->mCenterBarWindow:Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow;

    invoke-virtual {v0}, Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow;->initCenterBarButtonAnim()V

    .line 782
    :cond_0
    :goto_0
    return-void

    .line 779
    :cond_1
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindowService;->mShowCenterbarButton:Z

    goto :goto_0
.end method

.method public initCenterBarIfNeed()V
    .locals 1

    .prologue
    .line 768
    iget-object v0, p0, Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindowService;->mCenterBarWindow:Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow;

    if-eqz v0, :cond_0

    .line 769
    iget-object v0, p0, Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindowService;->mCenterBarWindow:Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow;

    invoke-virtual {v0}, Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow;->initCenterBarIfNeed()V

    .line 771
    :cond_0
    return-void
.end method

.method isMultiWindowSettingEnabled()Z
    .locals 4

    .prologue
    const/4 v0, 0x1

    .line 657
    iget-object v1, p0, Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindowService;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "multi_window_enabled"

    const/4 v3, -0x2

    invoke-static {v1, v2, v0, v3}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v1

    if-ne v1, v0, :cond_0

    .line 658
    .local v0, "enable":Z
    :goto_0
    const-string v1, "CenterBarWindowService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "MultiWindow enabled "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 659
    return v0

    .line 657
    .end local v0    # "enable":Z
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public makeRecentGuideLineWindow(Lcom/android/systemui/multiwindow/centerbarwindow/Controller;)V
    .locals 7
    .param p1, "controller"    # Lcom/android/systemui/multiwindow/centerbarwindow/Controller;

    .prologue
    const/4 v2, 0x0

    .line 634
    iget-object v0, p0, Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindowService;->mWindowRecentGuideLine:Landroid/view/Window;

    if-nez v0, :cond_0

    .line 635
    iget-object v0, p0, Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindowService;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v6

    .line 636
    .local v6, "inflater":Landroid/view/LayoutInflater;
    const v0, 0x7f040064

    const/4 v3, 0x0

    invoke-virtual {v6, v0, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 638
    .local v1, "recentGuideLine":Landroid/view/View;
    const/16 v4, 0x7e0

    .line 639
    .local v4, "windowType":I
    const/16 v5, 0x8

    move-object v0, p0

    move v3, v2

    invoke-virtual/range {v0 .. v5}, Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindowService;->addWindow(Landroid/view/View;IIII)Landroid/view/Window;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindowService;->mWindowRecentGuideLine:Landroid/view/Window;

    .line 640
    iget-object v0, p0, Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindowService;->mRecentGuideLine:Lcom/android/systemui/multiwindow/centerbarwindow/GuideLine;

    iget-object v2, p0, Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindowService;->mWindowRecentGuideLine:Landroid/view/Window;

    invoke-virtual {v0, v2, p1}, Lcom/android/systemui/multiwindow/centerbarwindow/GuideLine;->setWindow(Landroid/view/Window;Lcom/android/systemui/multiwindow/centerbarwindow/Controller;)V

    .line 642
    .end local v1    # "recentGuideLine":Landroid/view/View;
    .end local v4    # "windowType":I
    .end local v6    # "inflater":Landroid/view/LayoutInflater;
    :cond_0
    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 1
    .param p1, "newConfig"    # Landroid/content/res/Configuration;

    .prologue
    .line 586
    iget-object v0, p0, Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindowService;->mCenterBarWindow:Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindowService;->mWindowCenterBar:Landroid/view/Window;

    if-eqz v0, :cond_0

    .line 587
    iget-object v0, p0, Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindowService;->mCenterBarWindow:Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow;

    invoke-virtual {v0, p1}, Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 589
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindowService;->mController:Lcom/android/systemui/multiwindow/centerbarwindow/Controller;

    if-eqz v0, :cond_1

    .line 590
    iget-object v0, p0, Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindowService;->mController:Lcom/android/systemui/multiwindow/centerbarwindow/Controller;

    invoke-virtual {v0, p1}, Lcom/android/systemui/multiwindow/centerbarwindow/Controller;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 592
    :cond_1
    return-void
.end method

.method public onCreate()V
    .locals 3

    .prologue
    .line 346
    invoke-super {p0}, Landroid/app/SallyService;->onCreate()V

    .line 348
    invoke-direct {p0}, Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindowService;->isFactoryMode()Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindowService;->mIsFactoryMode:Z

    .line 349
    iget-boolean v1, p0, Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindowService;->mIsFactoryMode:Z

    if-eqz v1, :cond_0

    .line 369
    :goto_0
    return-void

    .line 353
    :cond_0
    iget-object v1, p0, Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindowService;->mContext:Landroid/content/Context;

    const-string v2, "multiwindow_facade"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/multiwindow/MultiWindowFacade;

    iput-object v1, p0, Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindowService;->mMultiWindowFacade:Lcom/samsung/android/multiwindow/MultiWindowFacade;

    .line 354
    new-instance v1, Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow;

    iget-object v2, p0, Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindowService;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2, p0}, Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow;-><init>(Landroid/content/Context;Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindowService;)V

    iput-object v1, p0, Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindowService;->mCenterBarWindow:Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow;

    .line 355
    new-instance v1, Lcom/android/systemui/multiwindow/centerbarwindow/GuideLine;

    iget-object v2, p0, Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindowService;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2}, Lcom/android/systemui/multiwindow/centerbarwindow/GuideLine;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindowService;->mRecentGuideLine:Lcom/android/systemui/multiwindow/centerbarwindow/GuideLine;

    .line 356
    new-instance v1, Lcom/android/systemui/multiwindow/centerbarwindow/Controller;

    iget-object v2, p0, Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindowService;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2, p0}, Lcom/android/systemui/multiwindow/centerbarwindow/Controller;-><init>(Landroid/content/Context;Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindowService;)V

    iput-object v1, p0, Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindowService;->mController:Lcom/android/systemui/multiwindow/centerbarwindow/Controller;

    .line 358
    iget-object v1, p0, Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindowService;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    iput-object v1, p0, Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindowService;->mResources:Landroid/content/res/Resources;

    .line 360
    const/16 v0, 0x899

    .line 361
    .local v0, "windowType":I
    const/high16 v1, 0x7f040000

    invoke-virtual {p0, v1}, Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindowService;->setContentView(I)V

    .line 365
    new-instance v1, Lcom/android/systemui/multiwindow/centerbarwindow/KnoxSettingProperty;

    iget-object v2, p0, Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindowService;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2}, Lcom/android/systemui/multiwindow/centerbarwindow/KnoxSettingProperty;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindowService;->mKnoxSettingProperty:Lcom/android/systemui/multiwindow/centerbarwindow/KnoxSettingProperty;

    .line 368
    invoke-direct {p0}, Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindowService;->regsterReceivers()V

    goto :goto_0
.end method

.method public onDestroy()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 429
    iget-object v0, p0, Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindowService;->mCenterBarWindow:Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow;

    if-eqz v0, :cond_0

    .line 430
    iget-object v0, p0, Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindowService;->mCenterBarWindow:Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow;

    invoke-virtual {v0}, Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow;->onDestroy()V

    .line 433
    :cond_0
    invoke-virtual {p0}, Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindowService;->unregisterUsageStatsWatcher()V

    .line 435
    iget-object v0, p0, Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindowService;->mCenterBarFocusDisplayReceiver:Landroid/content/BroadcastReceiver;

    invoke-direct {p0, v0}, Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindowService;->unregisterReceiverSafe(Landroid/content/BroadcastReceiver;)V

    .line 436
    iput-object v3, p0, Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindowService;->mCenterBarFocusDisplayReceiver:Landroid/content/BroadcastReceiver;

    .line 438
    iget-object v0, p0, Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindowService;->mMultiWindowStatusReceiver:Landroid/content/BroadcastReceiver;

    invoke-direct {p0, v0}, Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindowService;->unregisterReceiverSafe(Landroid/content/BroadcastReceiver;)V

    .line 439
    iput-object v3, p0, Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindowService;->mMultiWindowStatusReceiver:Landroid/content/BroadcastReceiver;

    .line 443
    iget-object v0, p0, Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindowService;->mSealedReceiver:Landroid/content/BroadcastReceiver;

    invoke-direct {p0, v0}, Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindowService;->unregisterReceiverSafe(Landroid/content/BroadcastReceiver;)V

    .line 444
    iput-object v3, p0, Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindowService;->mSealedReceiver:Landroid/content/BroadcastReceiver;

    .line 445
    iget-object v0, p0, Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindowService;->mKnoxSettingProperty:Lcom/android/systemui/multiwindow/centerbarwindow/KnoxSettingProperty;

    if-eqz v0, :cond_1

    .line 446
    iget-object v0, p0, Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindowService;->mKnoxSettingProperty:Lcom/android/systemui/multiwindow/centerbarwindow/KnoxSettingProperty;

    invoke-virtual {v0}, Lcom/android/systemui/multiwindow/centerbarwindow/KnoxSettingProperty;->onDestroy()V

    .line 447
    iput-object v3, p0, Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindowService;->mKnoxSettingProperty:Lcom/android/systemui/multiwindow/centerbarwindow/KnoxSettingProperty;

    .line 452
    :cond_1
    iget-object v0, p0, Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindowService;->mAlarmStateReceiver:Landroid/content/BroadcastReceiver;

    invoke-direct {p0, v0}, Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindowService;->unregisterReceiverSafe(Landroid/content/BroadcastReceiver;)V

    .line 453
    iput-object v3, p0, Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindowService;->mAlarmStateReceiver:Landroid/content/BroadcastReceiver;

    .line 455
    iget-object v0, p0, Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindowService;->mMultiUserReceiver:Landroid/content/BroadcastReceiver;

    invoke-direct {p0, v0}, Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindowService;->unregisterReceiverSafe(Landroid/content/BroadcastReceiver;)V

    .line 456
    iput-object v3, p0, Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindowService;->mMultiUserReceiver:Landroid/content/BroadcastReceiver;

    .line 458
    iget-object v0, p0, Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindowService;->mStopDragModeReceiver:Landroid/content/BroadcastReceiver;

    invoke-direct {p0, v0}, Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindowService;->unregisterReceiverSafe(Landroid/content/BroadcastReceiver;)V

    .line 459
    iput-object v3, p0, Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindowService;->mStopDragModeReceiver:Landroid/content/BroadcastReceiver;

    .line 461
    iget-object v0, p0, Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindowService;->mThemeChangedReceiver:Landroid/content/BroadcastReceiver;

    invoke-direct {p0, v0}, Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindowService;->unregisterReceiverSafe(Landroid/content/BroadcastReceiver;)V

    .line 462
    iput-object v3, p0, Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindowService;->mThemeChangedReceiver:Landroid/content/BroadcastReceiver;

    .line 464
    iget-object v0, p0, Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindowService;->mKnoxSetupCompleteReceiver:Landroid/content/BroadcastReceiver;

    invoke-direct {p0, v0}, Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindowService;->unregisterReceiverSafe(Landroid/content/BroadcastReceiver;)V

    .line 465
    iput-object v3, p0, Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindowService;->mKnoxSetupCompleteReceiver:Landroid/content/BroadcastReceiver;

    .line 467
    iget-object v0, p0, Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindowService;->mStatusBarExpandReceiver:Landroid/content/BroadcastReceiver;

    invoke-direct {p0, v0}, Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindowService;->unregisterReceiverSafe(Landroid/content/BroadcastReceiver;)V

    .line 468
    iput-object v3, p0, Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindowService;->mStatusBarExpandReceiver:Landroid/content/BroadcastReceiver;

    .line 470
    iget-object v0, p0, Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindowService;->mStatusBarAnimatingReceiver:Landroid/content/BroadcastReceiver;

    invoke-direct {p0, v0}, Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindowService;->unregisterReceiverSafe(Landroid/content/BroadcastReceiver;)V

    .line 471
    iput-object v3, p0, Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindowService;->mStatusBarAnimatingReceiver:Landroid/content/BroadcastReceiver;

    .line 473
    iget-object v0, p0, Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindowService;->mOutsideTouchEventReceiver:Landroid/content/BroadcastReceiver;

    invoke-direct {p0, v0}, Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindowService;->unregisterReceiverSafe(Landroid/content/BroadcastReceiver;)V

    .line 474
    iput-object v3, p0, Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindowService;->mOutsideTouchEventReceiver:Landroid/content/BroadcastReceiver;

    .line 476
    iget-object v0, p0, Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindowService;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/samsung/android/multiwindow/MultiWindowFeatures;->isSupportOpenTheme(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 477
    iget-object v0, p0, Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindowService;->mOpenThemeChangedReceiver:Landroid/content/BroadcastReceiver;

    invoke-direct {p0, v0}, Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindowService;->unregisterReceiverSafe(Landroid/content/BroadcastReceiver;)V

    .line 478
    iput-object v3, p0, Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindowService;->mOpenThemeChangedReceiver:Landroid/content/BroadcastReceiver;

    .line 481
    :cond_2
    iget-object v0, p0, Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindowService;->mWindowCenterBar:Landroid/view/Window;

    if-eqz v0, :cond_3

    .line 482
    iget-object v0, p0, Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindowService;->mWindowCenterBar:Landroid/view/Window;

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindowService;->mWindowCenterBar:Landroid/view/Window;

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->isAttachedToWindow()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 483
    iget-object v0, p0, Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindowService;->mWindowManager:Landroid/view/WindowManager;

    iget-object v1, p0, Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindowService;->mWindowCenterBar:Landroid/view/Window;

    invoke-virtual {v1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v1

    invoke-interface {v0, v1}, Landroid/view/WindowManager;->removeViewImmediate(Landroid/view/View;)V

    .line 484
    iput-object v3, p0, Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindowService;->mWindowCenterBar:Landroid/view/Window;

    .line 491
    :cond_3
    :goto_0
    iget-object v0, p0, Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindowService;->mWindowRecentGuideLine:Landroid/view/Window;

    if-eqz v0, :cond_5

    .line 492
    iget-object v0, p0, Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindowService;->mWindowRecentGuideLine:Landroid/view/Window;

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindowService;->mWindowRecentGuideLine:Landroid/view/Window;

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->isAttachedToWindow()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 493
    iget-object v0, p0, Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindowService;->mWindowManager:Landroid/view/WindowManager;

    iget-object v1, p0, Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindowService;->mWindowRecentGuideLine:Landroid/view/Window;

    invoke-virtual {v1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v1

    invoke-interface {v0, v1}, Landroid/view/WindowManager;->removeViewImmediate(Landroid/view/View;)V

    .line 495
    :cond_4
    iput-object v3, p0, Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindowService;->mWindowRecentGuideLine:Landroid/view/Window;

    .line 498
    :cond_5
    invoke-super {p0}, Landroid/app/SallyService;->onDestroy()V

    .line 499
    return-void

    .line 486
    :cond_6
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindowService;->mRemoveViewWindowCenterBar:Z

    .line 487
    const-string v0, "CenterBarWindowService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Warning : need removeView after attached, mRemoveViewWindowCenterBar="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindowService;->mRemoveViewWindowCenterBar:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public onStartCommand(Landroid/content/Intent;II)I
    .locals 9
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "flags"    # I
    .param p3, "startId"    # I

    .prologue
    const/4 v7, 0x0

    const/4 v8, 0x2

    .line 506
    const-string v4, "CenterBarWindowService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "mIsFactoryMode : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-boolean v6, p0, Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindowService;->mIsFactoryMode:Z

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "  isOtaRegistrationMode : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-direct {p0}, Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindowService;->isOtaRegistrationMode()Z

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "  isMultiWindowSettingEnabled : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {p0}, Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindowService;->isMultiWindowSettingEnabled()Z

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 511
    iget-boolean v4, p0, Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindowService;->mIsFactoryMode:Z

    if-nez v4, :cond_0

    invoke-direct {p0}, Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindowService;->isOtaRegistrationMode()Z

    move-result v4

    if-nez v4, :cond_0

    invoke-direct {p0}, Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindowService;->isCompleteUserSetup()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-direct {p0}, Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindowService;->isKidsModeRunning()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 559
    :cond_0
    :goto_0
    return v8

    .line 520
    :cond_1
    invoke-virtual {p0}, Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindowService;->canShow()Z

    move-result v4

    if-nez v4, :cond_4

    .line 521
    const/4 v0, 0x1

    .line 522
    .local v0, "allOff":Z
    invoke-static {}, Landroid/os/UserManager;->supportsMultipleUsers()Z

    move-result v4

    if-eqz v4, :cond_3

    .line 524
    :try_start_0
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v4

    invoke-interface {v4}, Landroid/app/IActivityManager;->getRunningUserIds()[I

    move-result-object v3

    .line 525
    .local v3, "userIds":[I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_1
    array-length v4, v3

    if-ge v2, v4, :cond_3

    .line 526
    iget-object v4, p0, Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindowService;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "multi_window_enabled"

    const/4 v6, 0x0

    aget v7, v3, v2

    invoke-static {v4, v5, v6, v7}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 527
    .local v1, "enable":I
    const/4 v4, 0x1

    if-ne v1, v4, :cond_2

    .line 528
    const/4 v0, 0x0

    .line 525
    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 532
    .end local v1    # "enable":I
    .end local v2    # "i":I
    .end local v3    # "userIds":[I
    :catch_0
    move-exception v4

    .line 536
    :cond_3
    if-eqz v0, :cond_0

    .line 537
    iget-object v4, p0, Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindowService;->mHandler:Landroid/os/Handler;

    new-instance v5, Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindowService$13;

    invoke-direct {v5, p0}, Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindowService$13;-><init>(Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindowService;)V

    invoke-virtual {v4, v5}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    .line 548
    .end local v0    # "allOff":Z
    :cond_4
    iget-object v4, p0, Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindowService;->mWindowCenterBar:Landroid/view/Window;

    if-nez v4, :cond_5

    .line 549
    invoke-virtual {p0}, Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindowService;->registerUsageStatsWatcher()V

    .line 550
    invoke-direct {p0, v7}, Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindowService;->makeCenterBarWindow(I)V

    .line 553
    :cond_5
    iget-object v4, p0, Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindowService;->mWindowRecentGuideLine:Landroid/view/Window;

    if-nez v4, :cond_6

    .line 554
    iget-object v4, p0, Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindowService;->mController:Lcom/android/systemui/multiwindow/centerbarwindow/Controller;

    invoke-virtual {p0, v4}, Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindowService;->makeRecentGuideLineWindow(Lcom/android/systemui/multiwindow/centerbarwindow/Controller;)V

    .line 557
    :cond_6
    invoke-direct {p0, p1}, Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindowService;->handleIntent(Landroid/content/Intent;)V

    goto :goto_0
.end method

.method registerUsageStatsWatcher()V
    .locals 4

    .prologue
    .line 813
    const-string v1, "usagestats"

    invoke-static {v1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Landroid/app/usage/IUsageStatsManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/usage/IUsageStatsManager;

    move-result-object v1

    iput-object v1, p0, Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindowService;->mUsageStats:Landroid/app/usage/IUsageStatsManager;

    .line 814
    iget-object v1, p0, Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindowService;->mUsageStats:Landroid/app/usage/IUsageStatsManager;

    if-eqz v1, :cond_0

    .line 816
    :try_start_0
    iget-object v1, p0, Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindowService;->mUsageStats:Landroid/app/usage/IUsageStatsManager;

    iget-object v2, p0, Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindowService;->mUsageStatsWatcher:Landroid/app/usage/IUsageStatsWatcher$Stub;

    invoke-interface {v1, v2}, Landroid/app/usage/IUsageStatsManager;->registerUsageStatsWatcher(Landroid/app/usage/IUsageStatsWatcher;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 822
    :cond_0
    :goto_0
    return-void

    .line 817
    :catch_0
    move-exception v0

    .line 818
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "CenterBarWindowService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Exception : registerUsageStatsWatcher - "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->secE(Ljava/lang/String;Ljava/lang/String;)I

    .line 819
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method unregisterUsageStatsWatcher()V
    .locals 4

    .prologue
    .line 825
    iget-object v1, p0, Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindowService;->mUsageStats:Landroid/app/usage/IUsageStatsManager;

    if-eqz v1, :cond_0

    .line 827
    :try_start_0
    iget-object v1, p0, Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindowService;->mUsageStats:Landroid/app/usage/IUsageStatsManager;

    iget-object v2, p0, Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindowService;->mUsageStatsWatcher:Landroid/app/usage/IUsageStatsWatcher$Stub;

    invoke-interface {v1, v2}, Landroid/app/usage/IUsageStatsManager;->unregisterUsageStatsWatcher(Landroid/app/usage/IUsageStatsWatcher;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 833
    :cond_0
    :goto_0
    return-void

    .line 828
    :catch_0
    move-exception v0

    .line 829
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "CenterBarWindowService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Exception : unregisterUsageStatsWatcher - "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->secE(Ljava/lang/String;Ljava/lang/String;)I

    .line 830
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public updateCenterBarPoint(Landroid/graphics/Point;)V
    .locals 1
    .param p1, "centerBarPoint"    # Landroid/graphics/Point;

    .prologue
    .line 793
    iget-object v0, p0, Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindowService;->mCenterBarWindow:Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow;

    if-eqz v0, :cond_0

    .line 794
    iget-object v0, p0, Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindowService;->mCenterBarWindow:Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow;

    invoke-virtual {v0, p1}, Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow;->updateCenterBarPoint(Landroid/graphics/Point;)V

    .line 796
    :cond_0
    return-void
.end method
