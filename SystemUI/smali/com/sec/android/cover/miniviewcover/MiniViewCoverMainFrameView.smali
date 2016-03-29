.class public Lcom/sec/android/cover/miniviewcover/MiniViewCoverMainFrameView;
.super Lcom/sec/android/cover/CoverMainFrameView;
.source "MiniViewCoverMainFrameView.java"

# interfaces
.implements Lcom/sec/android/cover/widget/PagedView$PageSwitchListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/cover/miniviewcover/MiniViewCoverMainFrameView$6;,
        Lcom/sec/android/cover/miniviewcover/MiniViewCoverMainFrameView$PageIndex;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private enableMissedEventPage:Z

.field private enableMusicPlayerPage:Z

.field private mCoverState:Lcom/samsung/android/cover/CoverState;

.field private mCurrentPageIndex:Lcom/sec/android/cover/miniviewcover/MiniViewCoverMainFrameView$PageIndex;

.field private mDefaultPageIndex:Lcom/sec/android/cover/miniviewcover/MiniViewCoverMainFrameView$PageIndex;

.field private mDelayedUpdatePageHandler:Landroid/os/Handler;

.field private mIsCharingState:Z

.field private mIsKidsMode:Z

.field private mMainPage:Lcom/sec/android/cover/miniviewcover/MiniViewCoverMainPage;

.field private mMiniBackGroundView:Landroid/widget/ImageView;

.field private mMissedEventManager:Lcom/sec/android/cover/manager/CoverMissedEventManager;

.field private mMissedEventPage:Lcom/sec/android/cover/miniviewcover/MiniViewCoverMissedEventPage;

.field private mMusicControllerPage:Lcom/sec/android/cover/miniviewcover/MiniViewCoverMusicPlayerPage;

.field private mNotificationOnLockscreen:Z

.field private mPageControlView:Lcom/sec/android/cover/miniviewcover/MiniViewCoverPageView;

.field private mPendingIntent:Landroid/app/PendingIntent;

.field private mPowerManager:Lcom/sec/android/cover/manager/CoverPowerManager;

.field private mScreenOffTimerHandler:Lcom/sec/android/cover/manager/CoverPowerManager$OnScreenOffTimerHandler;

.field private mSettingPage:Landroid/view/View;

.field private mSettingsDescriptionText:Landroid/widget/TextView;

.field private mUpdateMonitorCallback:Lcom/sec/android/cover/monitor/CoverUpdateMonitorCallback;

.field private mWeatherHealthPage:Lcom/sec/android/cover/miniviewcover/MiniViewCoverWeatherHealthPage;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 55
    const-class v0, Lcom/sec/android/cover/miniviewcover/MiniViewCoverMainFrameView;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/sec/android/cover/miniviewcover/MiniViewCoverMainFrameView;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v1, 0x0

    .line 217
    invoke-direct {p0, p1}, Lcom/sec/android/cover/CoverMainFrameView;-><init>(Landroid/content/Context;)V

    .line 70
    sget-object v0, Lcom/sec/android/cover/miniviewcover/MiniViewCoverMainFrameView$PageIndex;->HomePage:Lcom/sec/android/cover/miniviewcover/MiniViewCoverMainFrameView$PageIndex;

    iput-object v0, p0, Lcom/sec/android/cover/miniviewcover/MiniViewCoverMainFrameView;->mCurrentPageIndex:Lcom/sec/android/cover/miniviewcover/MiniViewCoverMainFrameView$PageIndex;

    .line 71
    sget-object v0, Lcom/sec/android/cover/miniviewcover/MiniViewCoverMainFrameView$PageIndex;->HomePage:Lcom/sec/android/cover/miniviewcover/MiniViewCoverMainFrameView$PageIndex;

    iput-object v0, p0, Lcom/sec/android/cover/miniviewcover/MiniViewCoverMainFrameView;->mDefaultPageIndex:Lcom/sec/android/cover/miniviewcover/MiniViewCoverMainFrameView$PageIndex;

    .line 76
    iput-boolean v1, p0, Lcom/sec/android/cover/miniviewcover/MiniViewCoverMainFrameView;->mIsKidsMode:Z

    .line 77
    iput-boolean v1, p0, Lcom/sec/android/cover/miniviewcover/MiniViewCoverMainFrameView;->enableMissedEventPage:Z

    .line 78
    iput-boolean v1, p0, Lcom/sec/android/cover/miniviewcover/MiniViewCoverMainFrameView;->enableMusicPlayerPage:Z

    .line 79
    iput-boolean v1, p0, Lcom/sec/android/cover/miniviewcover/MiniViewCoverMainFrameView;->mIsCharingState:Z

    .line 81
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/cover/miniviewcover/MiniViewCoverMainFrameView;->mPendingIntent:Landroid/app/PendingIntent;

    .line 82
    new-instance v0, Lcom/samsung/android/cover/CoverState;

    invoke-direct {v0}, Lcom/samsung/android/cover/CoverState;-><init>()V

    iput-object v0, p0, Lcom/sec/android/cover/miniviewcover/MiniViewCoverMainFrameView;->mCoverState:Lcom/samsung/android/cover/CoverState;

    .line 83
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sec/android/cover/miniviewcover/MiniViewCoverMainFrameView;->mNotificationOnLockscreen:Z

    .line 85
    new-instance v0, Lcom/sec/android/cover/miniviewcover/MiniViewCoverMainFrameView$1;

    invoke-direct {v0, p0}, Lcom/sec/android/cover/miniviewcover/MiniViewCoverMainFrameView$1;-><init>(Lcom/sec/android/cover/miniviewcover/MiniViewCoverMainFrameView;)V

    iput-object v0, p0, Lcom/sec/android/cover/miniviewcover/MiniViewCoverMainFrameView;->mDelayedUpdatePageHandler:Landroid/os/Handler;

    .line 92
    new-instance v0, Lcom/sec/android/cover/miniviewcover/MiniViewCoverMainFrameView$2;

    invoke-direct {v0, p0}, Lcom/sec/android/cover/miniviewcover/MiniViewCoverMainFrameView$2;-><init>(Lcom/sec/android/cover/miniviewcover/MiniViewCoverMainFrameView;)V

    iput-object v0, p0, Lcom/sec/android/cover/miniviewcover/MiniViewCoverMainFrameView;->mUpdateMonitorCallback:Lcom/sec/android/cover/monitor/CoverUpdateMonitorCallback;

    .line 204
    new-instance v0, Lcom/sec/android/cover/miniviewcover/MiniViewCoverMainFrameView$3;

    invoke-direct {v0, p0}, Lcom/sec/android/cover/miniviewcover/MiniViewCoverMainFrameView$3;-><init>(Lcom/sec/android/cover/miniviewcover/MiniViewCoverMainFrameView;)V

    iput-object v0, p0, Lcom/sec/android/cover/miniviewcover/MiniViewCoverMainFrameView;->mScreenOffTimerHandler:Lcom/sec/android/cover/manager/CoverPowerManager$OnScreenOffTimerHandler;

    .line 218
    invoke-direct {p0}, Lcom/sec/android/cover/miniviewcover/MiniViewCoverMainFrameView;->init()V

    .line 219
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    const/4 v1, 0x0

    .line 222
    invoke-direct {p0, p1, p2}, Lcom/sec/android/cover/CoverMainFrameView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 70
    sget-object v0, Lcom/sec/android/cover/miniviewcover/MiniViewCoverMainFrameView$PageIndex;->HomePage:Lcom/sec/android/cover/miniviewcover/MiniViewCoverMainFrameView$PageIndex;

    iput-object v0, p0, Lcom/sec/android/cover/miniviewcover/MiniViewCoverMainFrameView;->mCurrentPageIndex:Lcom/sec/android/cover/miniviewcover/MiniViewCoverMainFrameView$PageIndex;

    .line 71
    sget-object v0, Lcom/sec/android/cover/miniviewcover/MiniViewCoverMainFrameView$PageIndex;->HomePage:Lcom/sec/android/cover/miniviewcover/MiniViewCoverMainFrameView$PageIndex;

    iput-object v0, p0, Lcom/sec/android/cover/miniviewcover/MiniViewCoverMainFrameView;->mDefaultPageIndex:Lcom/sec/android/cover/miniviewcover/MiniViewCoverMainFrameView$PageIndex;

    .line 76
    iput-boolean v1, p0, Lcom/sec/android/cover/miniviewcover/MiniViewCoverMainFrameView;->mIsKidsMode:Z

    .line 77
    iput-boolean v1, p0, Lcom/sec/android/cover/miniviewcover/MiniViewCoverMainFrameView;->enableMissedEventPage:Z

    .line 78
    iput-boolean v1, p0, Lcom/sec/android/cover/miniviewcover/MiniViewCoverMainFrameView;->enableMusicPlayerPage:Z

    .line 79
    iput-boolean v1, p0, Lcom/sec/android/cover/miniviewcover/MiniViewCoverMainFrameView;->mIsCharingState:Z

    .line 81
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/cover/miniviewcover/MiniViewCoverMainFrameView;->mPendingIntent:Landroid/app/PendingIntent;

    .line 82
    new-instance v0, Lcom/samsung/android/cover/CoverState;

    invoke-direct {v0}, Lcom/samsung/android/cover/CoverState;-><init>()V

    iput-object v0, p0, Lcom/sec/android/cover/miniviewcover/MiniViewCoverMainFrameView;->mCoverState:Lcom/samsung/android/cover/CoverState;

    .line 83
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sec/android/cover/miniviewcover/MiniViewCoverMainFrameView;->mNotificationOnLockscreen:Z

    .line 85
    new-instance v0, Lcom/sec/android/cover/miniviewcover/MiniViewCoverMainFrameView$1;

    invoke-direct {v0, p0}, Lcom/sec/android/cover/miniviewcover/MiniViewCoverMainFrameView$1;-><init>(Lcom/sec/android/cover/miniviewcover/MiniViewCoverMainFrameView;)V

    iput-object v0, p0, Lcom/sec/android/cover/miniviewcover/MiniViewCoverMainFrameView;->mDelayedUpdatePageHandler:Landroid/os/Handler;

    .line 92
    new-instance v0, Lcom/sec/android/cover/miniviewcover/MiniViewCoverMainFrameView$2;

    invoke-direct {v0, p0}, Lcom/sec/android/cover/miniviewcover/MiniViewCoverMainFrameView$2;-><init>(Lcom/sec/android/cover/miniviewcover/MiniViewCoverMainFrameView;)V

    iput-object v0, p0, Lcom/sec/android/cover/miniviewcover/MiniViewCoverMainFrameView;->mUpdateMonitorCallback:Lcom/sec/android/cover/monitor/CoverUpdateMonitorCallback;

    .line 204
    new-instance v0, Lcom/sec/android/cover/miniviewcover/MiniViewCoverMainFrameView$3;

    invoke-direct {v0, p0}, Lcom/sec/android/cover/miniviewcover/MiniViewCoverMainFrameView$3;-><init>(Lcom/sec/android/cover/miniviewcover/MiniViewCoverMainFrameView;)V

    iput-object v0, p0, Lcom/sec/android/cover/miniviewcover/MiniViewCoverMainFrameView;->mScreenOffTimerHandler:Lcom/sec/android/cover/manager/CoverPowerManager$OnScreenOffTimerHandler;

    .line 223
    iput-object p1, p0, Lcom/sec/android/cover/miniviewcover/MiniViewCoverMainFrameView;->mContext:Landroid/content/Context;

    .line 224
    invoke-direct {p0}, Lcom/sec/android/cover/miniviewcover/MiniViewCoverMainFrameView;->init()V

    .line 225
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    const/4 v1, 0x0

    .line 228
    invoke-direct {p0, p1, p2, p3}, Lcom/sec/android/cover/CoverMainFrameView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 70
    sget-object v0, Lcom/sec/android/cover/miniviewcover/MiniViewCoverMainFrameView$PageIndex;->HomePage:Lcom/sec/android/cover/miniviewcover/MiniViewCoverMainFrameView$PageIndex;

    iput-object v0, p0, Lcom/sec/android/cover/miniviewcover/MiniViewCoverMainFrameView;->mCurrentPageIndex:Lcom/sec/android/cover/miniviewcover/MiniViewCoverMainFrameView$PageIndex;

    .line 71
    sget-object v0, Lcom/sec/android/cover/miniviewcover/MiniViewCoverMainFrameView$PageIndex;->HomePage:Lcom/sec/android/cover/miniviewcover/MiniViewCoverMainFrameView$PageIndex;

    iput-object v0, p0, Lcom/sec/android/cover/miniviewcover/MiniViewCoverMainFrameView;->mDefaultPageIndex:Lcom/sec/android/cover/miniviewcover/MiniViewCoverMainFrameView$PageIndex;

    .line 76
    iput-boolean v1, p0, Lcom/sec/android/cover/miniviewcover/MiniViewCoverMainFrameView;->mIsKidsMode:Z

    .line 77
    iput-boolean v1, p0, Lcom/sec/android/cover/miniviewcover/MiniViewCoverMainFrameView;->enableMissedEventPage:Z

    .line 78
    iput-boolean v1, p0, Lcom/sec/android/cover/miniviewcover/MiniViewCoverMainFrameView;->enableMusicPlayerPage:Z

    .line 79
    iput-boolean v1, p0, Lcom/sec/android/cover/miniviewcover/MiniViewCoverMainFrameView;->mIsCharingState:Z

    .line 81
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/cover/miniviewcover/MiniViewCoverMainFrameView;->mPendingIntent:Landroid/app/PendingIntent;

    .line 82
    new-instance v0, Lcom/samsung/android/cover/CoverState;

    invoke-direct {v0}, Lcom/samsung/android/cover/CoverState;-><init>()V

    iput-object v0, p0, Lcom/sec/android/cover/miniviewcover/MiniViewCoverMainFrameView;->mCoverState:Lcom/samsung/android/cover/CoverState;

    .line 83
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sec/android/cover/miniviewcover/MiniViewCoverMainFrameView;->mNotificationOnLockscreen:Z

    .line 85
    new-instance v0, Lcom/sec/android/cover/miniviewcover/MiniViewCoverMainFrameView$1;

    invoke-direct {v0, p0}, Lcom/sec/android/cover/miniviewcover/MiniViewCoverMainFrameView$1;-><init>(Lcom/sec/android/cover/miniviewcover/MiniViewCoverMainFrameView;)V

    iput-object v0, p0, Lcom/sec/android/cover/miniviewcover/MiniViewCoverMainFrameView;->mDelayedUpdatePageHandler:Landroid/os/Handler;

    .line 92
    new-instance v0, Lcom/sec/android/cover/miniviewcover/MiniViewCoverMainFrameView$2;

    invoke-direct {v0, p0}, Lcom/sec/android/cover/miniviewcover/MiniViewCoverMainFrameView$2;-><init>(Lcom/sec/android/cover/miniviewcover/MiniViewCoverMainFrameView;)V

    iput-object v0, p0, Lcom/sec/android/cover/miniviewcover/MiniViewCoverMainFrameView;->mUpdateMonitorCallback:Lcom/sec/android/cover/monitor/CoverUpdateMonitorCallback;

    .line 204
    new-instance v0, Lcom/sec/android/cover/miniviewcover/MiniViewCoverMainFrameView$3;

    invoke-direct {v0, p0}, Lcom/sec/android/cover/miniviewcover/MiniViewCoverMainFrameView$3;-><init>(Lcom/sec/android/cover/miniviewcover/MiniViewCoverMainFrameView;)V

    iput-object v0, p0, Lcom/sec/android/cover/miniviewcover/MiniViewCoverMainFrameView;->mScreenOffTimerHandler:Lcom/sec/android/cover/manager/CoverPowerManager$OnScreenOffTimerHandler;

    .line 229
    iput-object p1, p0, Lcom/sec/android/cover/miniviewcover/MiniViewCoverMainFrameView;->mContext:Landroid/content/Context;

    .line 230
    invoke-direct {p0}, Lcom/sec/android/cover/miniviewcover/MiniViewCoverMainFrameView;->init()V

    .line 231
    return-void
.end method

.method static synthetic access$000(Lcom/sec/android/cover/miniviewcover/MiniViewCoverMainFrameView;)V
    .locals 0
    .param p0, "x0"    # Lcom/sec/android/cover/miniviewcover/MiniViewCoverMainFrameView;

    .prologue
    .line 53
    invoke-direct {p0}, Lcom/sec/android/cover/miniviewcover/MiniViewCoverMainFrameView;->updatePage()V

    return-void
.end method

.method static synthetic access$100(Lcom/sec/android/cover/miniviewcover/MiniViewCoverMainFrameView;)Lcom/sec/android/cover/manager/CoverPowerManager;
    .locals 1
    .param p0, "x0"    # Lcom/sec/android/cover/miniviewcover/MiniViewCoverMainFrameView;

    .prologue
    .line 53
    iget-object v0, p0, Lcom/sec/android/cover/miniviewcover/MiniViewCoverMainFrameView;->mPowerManager:Lcom/sec/android/cover/manager/CoverPowerManager;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/sec/android/cover/miniviewcover/MiniViewCoverMainFrameView;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/sec/android/cover/miniviewcover/MiniViewCoverMainFrameView;

    .prologue
    .line 53
    iget-object v0, p0, Lcom/sec/android/cover/miniviewcover/MiniViewCoverMainFrameView;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$1100(Lcom/sec/android/cover/miniviewcover/MiniViewCoverMainFrameView;Lcom/sec/android/cover/monitor/CoverUpdateMonitor$BatteryStatus;)V
    .locals 0
    .param p0, "x0"    # Lcom/sec/android/cover/miniviewcover/MiniViewCoverMainFrameView;
    .param p1, "x1"    # Lcom/sec/android/cover/monitor/CoverUpdateMonitor$BatteryStatus;

    .prologue
    .line 53
    invoke-direct {p0, p1}, Lcom/sec/android/cover/miniviewcover/MiniViewCoverMainFrameView;->updateBatteryChargingState(Lcom/sec/android/cover/monitor/CoverUpdateMonitor$BatteryStatus;)V

    return-void
.end method

.method static synthetic access$1200(Lcom/sec/android/cover/miniviewcover/MiniViewCoverMainFrameView;)Z
    .locals 1
    .param p0, "x0"    # Lcom/sec/android/cover/miniviewcover/MiniViewCoverMainFrameView;

    .prologue
    .line 53
    iget-boolean v0, p0, Lcom/sec/android/cover/miniviewcover/MiniViewCoverMainFrameView;->mIsKidsMode:Z

    return v0
.end method

.method static synthetic access$1300(Lcom/sec/android/cover/miniviewcover/MiniViewCoverMainFrameView;)V
    .locals 0
    .param p0, "x0"    # Lcom/sec/android/cover/miniviewcover/MiniViewCoverMainFrameView;

    .prologue
    .line 53
    invoke-direct {p0}, Lcom/sec/android/cover/miniviewcover/MiniViewCoverMainFrameView;->updateMusicPlayer()V

    return-void
.end method

.method static synthetic access$1400(Lcom/sec/android/cover/miniviewcover/MiniViewCoverMainFrameView;)V
    .locals 0
    .param p0, "x0"    # Lcom/sec/android/cover/miniviewcover/MiniViewCoverMainFrameView;

    .prologue
    .line 53
    invoke-direct {p0}, Lcom/sec/android/cover/miniviewcover/MiniViewCoverMainFrameView;->updateLowBatteryState()V

    return-void
.end method

.method static synthetic access$1500(Lcom/sec/android/cover/miniviewcover/MiniViewCoverMainFrameView;)V
    .locals 0
    .param p0, "x0"    # Lcom/sec/android/cover/miniviewcover/MiniViewCoverMainFrameView;

    .prologue
    .line 53
    invoke-direct {p0}, Lcom/sec/android/cover/miniviewcover/MiniViewCoverMainFrameView;->updateSettingsText()V

    return-void
.end method

.method static synthetic access$1600(Lcom/sec/android/cover/miniviewcover/MiniViewCoverMainFrameView;)Lcom/sec/android/cover/miniviewcover/MiniViewCoverPageView;
    .locals 1
    .param p0, "x0"    # Lcom/sec/android/cover/miniviewcover/MiniViewCoverMainFrameView;

    .prologue
    .line 53
    iget-object v0, p0, Lcom/sec/android/cover/miniviewcover/MiniViewCoverMainFrameView;->mPageControlView:Lcom/sec/android/cover/miniviewcover/MiniViewCoverPageView;

    return-object v0
.end method

.method static synthetic access$200(Lcom/sec/android/cover/miniviewcover/MiniViewCoverMainFrameView;)V
    .locals 0
    .param p0, "x0"    # Lcom/sec/android/cover/miniviewcover/MiniViewCoverMainFrameView;

    .prologue
    .line 53
    invoke-direct {p0}, Lcom/sec/android/cover/miniviewcover/MiniViewCoverMainFrameView;->checkKidsMode()V

    return-void
.end method

.method static synthetic access$300(Lcom/sec/android/cover/miniviewcover/MiniViewCoverMainFrameView;)Z
    .locals 1
    .param p0, "x0"    # Lcom/sec/android/cover/miniviewcover/MiniViewCoverMainFrameView;

    .prologue
    .line 53
    invoke-direct {p0}, Lcom/sec/android/cover/miniviewcover/MiniViewCoverMainFrameView;->checkCharging()Z

    move-result v0

    return v0
.end method

.method static synthetic access$400()Ljava/lang/String;
    .locals 1

    .prologue
    .line 53
    sget-object v0, Lcom/sec/android/cover/miniviewcover/MiniViewCoverMainFrameView;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$500(Lcom/sec/android/cover/miniviewcover/MiniViewCoverMainFrameView;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/sec/android/cover/miniviewcover/MiniViewCoverMainFrameView;

    .prologue
    .line 53
    iget-object v0, p0, Lcom/sec/android/cover/miniviewcover/MiniViewCoverMainFrameView;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$600(Lcom/sec/android/cover/miniviewcover/MiniViewCoverMainFrameView;)Lcom/sec/android/cover/miniviewcover/MiniViewCoverMusicPlayerPage;
    .locals 1
    .param p0, "x0"    # Lcom/sec/android/cover/miniviewcover/MiniViewCoverMainFrameView;

    .prologue
    .line 53
    iget-object v0, p0, Lcom/sec/android/cover/miniviewcover/MiniViewCoverMainFrameView;->mMusicControllerPage:Lcom/sec/android/cover/miniviewcover/MiniViewCoverMusicPlayerPage;

    return-object v0
.end method

.method static synthetic access$700(Lcom/sec/android/cover/miniviewcover/MiniViewCoverMainFrameView;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/sec/android/cover/miniviewcover/MiniViewCoverMainFrameView;

    .prologue
    .line 53
    iget-object v0, p0, Lcom/sec/android/cover/miniviewcover/MiniViewCoverMainFrameView;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$800(Lcom/sec/android/cover/miniviewcover/MiniViewCoverMainFrameView;)Landroid/os/Handler;
    .locals 1
    .param p0, "x0"    # Lcom/sec/android/cover/miniviewcover/MiniViewCoverMainFrameView;

    .prologue
    .line 53
    iget-object v0, p0, Lcom/sec/android/cover/miniviewcover/MiniViewCoverMainFrameView;->mDelayedUpdatePageHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$900(Lcom/sec/android/cover/miniviewcover/MiniViewCoverMainFrameView;)V
    .locals 0
    .param p0, "x0"    # Lcom/sec/android/cover/miniviewcover/MiniViewCoverMainFrameView;

    .prologue
    .line 53
    invoke-direct {p0}, Lcom/sec/android/cover/miniviewcover/MiniViewCoverMainFrameView;->setMiniCoverWallpaper()V

    return-void
.end method

.method private checkCharging()Z
    .locals 1

    .prologue
    .line 421
    iget-object v0, p0, Lcom/sec/android/cover/miniviewcover/MiniViewCoverMainFrameView;->mMainPage:Lcom/sec/android/cover/miniviewcover/MiniViewCoverMainPage;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/cover/miniviewcover/MiniViewCoverMainFrameView;->mMainPage:Lcom/sec/android/cover/miniviewcover/MiniViewCoverMainPage;

    invoke-virtual {v0}, Lcom/sec/android/cover/miniviewcover/MiniViewCoverMainPage;->isBatteryChargingShown()Z

    move-result v0

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/sec/android/cover/miniviewcover/MiniViewCoverMainFrameView;->mIsCharingState:Z

    if-eqz v0, :cond_0

    .line 422
    invoke-virtual {p0}, Lcom/sec/android/cover/miniviewcover/MiniViewCoverMainFrameView;->moveToMainPage()V

    .line 423
    iget-object v0, p0, Lcom/sec/android/cover/miniviewcover/MiniViewCoverMainFrameView;->mMainPage:Lcom/sec/android/cover/miniviewcover/MiniViewCoverMainPage;

    invoke-virtual {v0}, Lcom/sec/android/cover/miniviewcover/MiniViewCoverMainPage;->hideBatteryCharingTextAfterNSEC()V

    .line 424
    const/4 v0, 0x1

    .line 426
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private checkKidsMode()V
    .locals 2

    .prologue
    .line 430
    iget-object v1, p0, Lcom/sec/android/cover/miniviewcover/MiniViewCoverMainFrameView;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/sec/android/cover/CoverUtils;->isKidsMode(Landroid/content/Context;)Z

    move-result v0

    .line 431
    .local v0, "isKidsMode":Z
    iget-boolean v1, p0, Lcom/sec/android/cover/miniviewcover/MiniViewCoverMainFrameView;->mIsKidsMode:Z

    if-eq v1, v0, :cond_0

    .line 432
    iget-object v1, p0, Lcom/sec/android/cover/miniviewcover/MiniViewCoverMainFrameView;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/sec/android/cover/CoverUtils;->isKidsMode(Landroid/content/Context;)Z

    move-result v1

    iput-boolean v1, p0, Lcom/sec/android/cover/miniviewcover/MiniViewCoverMainFrameView;->mIsKidsMode:Z

    .line 433
    invoke-direct {p0}, Lcom/sec/android/cover/miniviewcover/MiniViewCoverMainFrameView;->updatePage()V

    .line 434
    invoke-direct {p0}, Lcom/sec/android/cover/miniviewcover/MiniViewCoverMainFrameView;->setMiniCoverWallpaper()V

    .line 436
    :cond_0
    return-void
.end method

.method private checkNotificationState()V
    .locals 5

    .prologue
    const/4 v1, 0x1

    .line 440
    :try_start_0
    iget-object v2, p0, Lcom/sec/android/cover/miniviewcover/MiniViewCoverMainFrameView;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "lock_screen_show_notifications"

    const/4 v4, -0x2

    invoke-static {v2, v3, v4}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-ne v2, v1, :cond_1

    .line 442
    .local v1, "isEnabled":Z
    :goto_0
    iget-boolean v2, p0, Lcom/sec/android/cover/miniviewcover/MiniViewCoverMainFrameView;->mNotificationOnLockscreen:Z

    if-eq v1, v2, :cond_0

    .line 443
    iput-boolean v1, p0, Lcom/sec/android/cover/miniviewcover/MiniViewCoverMainFrameView;->mNotificationOnLockscreen:Z

    .line 444
    invoke-direct {p0}, Lcom/sec/android/cover/miniviewcover/MiniViewCoverMainFrameView;->updatePage()V
    :try_end_0
    .catch Landroid/provider/Settings$SettingNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 449
    .end local v1    # "isEnabled":Z
    :cond_0
    :goto_1
    return-void

    .line 440
    :cond_1
    const/4 v1, 0x0

    goto :goto_0

    .line 446
    :catch_0
    move-exception v0

    .line 447
    .local v0, "e":Landroid/provider/Settings$SettingNotFoundException;
    invoke-virtual {v0}, Landroid/provider/Settings$SettingNotFoundException;->printStackTrace()V

    goto :goto_1
.end method

.method private hideCoverUi()V
    .locals 5

    .prologue
    .line 482
    sget-object v2, Lcom/sec/android/cover/miniviewcover/MiniViewCoverMainFrameView;->TAG:Ljava/lang/String;

    const-string v3, "hideCoverUi"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 484
    iget-object v2, p0, Lcom/sec/android/cover/miniviewcover/MiniViewCoverMainFrameView;->mPageControlView:Lcom/sec/android/cover/miniviewcover/MiniViewCoverPageView;

    if-eqz v2, :cond_0

    .line 485
    sget-object v2, Lcom/sec/android/cover/miniviewcover/MiniViewCoverMainFrameView;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "hideCoverUi : SViewPager Count : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/sec/android/cover/miniviewcover/MiniViewCoverMainFrameView;->mPageControlView:Lcom/sec/android/cover/miniviewcover/MiniViewCoverPageView;

    invoke-virtual {v4}, Lcom/sec/android/cover/miniviewcover/MiniViewCoverPageView;->getChildCount()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 489
    :cond_0
    iget-object v2, p0, Lcom/sec/android/cover/miniviewcover/MiniViewCoverMainFrameView;->mPageControlView:Lcom/sec/android/cover/miniviewcover/MiniViewCoverPageView;

    if-eqz v2, :cond_1

    invoke-virtual {p0}, Lcom/sec/android/cover/miniviewcover/MiniViewCoverMainFrameView;->isCoverOpen()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 491
    invoke-virtual {p0}, Lcom/sec/android/cover/miniviewcover/MiniViewCoverMainFrameView;->moveToDefaultPage()V

    .line 494
    :cond_1
    iget-object v2, p0, Lcom/sec/android/cover/miniviewcover/MiniViewCoverMainFrameView;->mPowerManager:Lcom/sec/android/cover/manager/CoverPowerManager;

    invoke-virtual {v2}, Lcom/sec/android/cover/manager/CoverPowerManager;->isScreenOn()Z

    move-result v2

    if-nez v2, :cond_3

    .line 495
    iget-object v2, p0, Lcom/sec/android/cover/miniviewcover/MiniViewCoverMainFrameView;->mContext:Landroid/content/Context;

    const-string v3, "phone"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telephony/TelephonyManager;

    .line 497
    .local v1, "telephonyManager":Landroid/telephony/TelephonyManager;
    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->getCallState()I

    move-result v0

    .line 498
    .local v0, "callState":I
    sget-object v2, Lcom/sec/android/cover/miniviewcover/MiniViewCoverMainFrameView;->TAG:Ljava/lang/String;

    const-string v3, "handleMessage : Screen is off"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 499
    sget-object v2, Lcom/sec/android/cover/miniviewcover/MiniViewCoverMainFrameView;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Call state = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 500
    if-nez v0, :cond_2

    .line 501
    iget-object v2, p0, Lcom/sec/android/cover/miniviewcover/MiniViewCoverMainFrameView;->mPowerManager:Lcom/sec/android/cover/manager/CoverPowerManager;

    invoke-virtual {v2}, Lcom/sec/android/cover/manager/CoverPowerManager;->wakeUpWithReason()V

    .line 508
    .end local v0    # "callState":I
    .end local v1    # "telephonyManager":Landroid/telephony/TelephonyManager;
    :cond_2
    :goto_0
    iget-object v2, p0, Lcom/sec/android/cover/miniviewcover/MiniViewCoverMainFrameView;->mPowerManager:Lcom/sec/android/cover/manager/CoverPowerManager;

    invoke-virtual {v2}, Lcom/sec/android/cover/manager/CoverPowerManager;->releaseWakeLock()V

    .line 509
    return-void

    .line 504
    :cond_3
    sget-object v2, Lcom/sec/android/cover/miniviewcover/MiniViewCoverMainFrameView;->TAG:Ljava/lang/String;

    const-string v3, "handleMessage : Screen is on"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 505
    iget-object v2, p0, Lcom/sec/android/cover/miniviewcover/MiniViewCoverMainFrameView;->mPowerManager:Lcom/sec/android/cover/manager/CoverPowerManager;

    invoke-virtual {v2}, Lcom/sec/android/cover/manager/CoverPowerManager;->userActivity()V

    goto :goto_0
.end method

.method private init()V
    .locals 1

    .prologue
    .line 234
    iget-object v0, p0, Lcom/sec/android/cover/miniviewcover/MiniViewCoverMainFrameView;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/sec/android/cover/manager/CoverMissedEventManager;->getInstance(Landroid/content/Context;)Lcom/sec/android/cover/manager/CoverMissedEventManager;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/cover/miniviewcover/MiniViewCoverMainFrameView;->mMissedEventManager:Lcom/sec/android/cover/manager/CoverMissedEventManager;

    .line 235
    iget-object v0, p0, Lcom/sec/android/cover/miniviewcover/MiniViewCoverMainFrameView;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/sec/android/cover/manager/CoverPowerManager;->getInstance(Landroid/content/Context;)Lcom/sec/android/cover/manager/CoverPowerManager;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/cover/miniviewcover/MiniViewCoverMainFrameView;->mPowerManager:Lcom/sec/android/cover/manager/CoverPowerManager;

    .line 236
    return-void
.end method

.method private makeSViewMeasureSpec()V
    .locals 8

    .prologue
    const/high16 v7, 0x40000000    # 2.0f

    .line 512
    iget-object v4, p0, Lcom/sec/android/cover/miniviewcover/MiniViewCoverMainFrameView;->mPageControlView:Lcom/sec/android/cover/miniviewcover/MiniViewCoverPageView;

    if-eqz v4, :cond_0

    .line 516
    iget-object v4, p0, Lcom/sec/android/cover/miniviewcover/MiniViewCoverMainFrameView;->mPageControlView:Lcom/sec/android/cover/miniviewcover/MiniViewCoverPageView;

    invoke-virtual {v4}, Lcom/sec/android/cover/miniviewcover/MiniViewCoverPageView;->getParent()Landroid/view/ViewParent;

    move-result-object v4

    check-cast v4, Landroid/widget/FrameLayout;

    invoke-virtual {v4}, Landroid/widget/FrameLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/widget/FrameLayout$LayoutParams;

    .line 518
    .local v1, "lp":Landroid/widget/FrameLayout$LayoutParams;
    iget-object v4, p0, Lcom/sec/android/cover/miniviewcover/MiniViewCoverMainFrameView;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    .line 520
    .local v2, "res":Landroid/content/res/Resources;
    sget v4, Lcom/sec/android/sviewcover/R$dimen;->mini_view_cover_pager_width:I

    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    iget v5, v1, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    sub-int/2addr v4, v5

    iget v5, v1, Landroid/widget/FrameLayout$LayoutParams;->rightMargin:I

    sub-int v3, v4, v5

    .line 522
    .local v3, "width":I
    iget v0, v1, Landroid/widget/FrameLayout$LayoutParams;->height:I

    .line 524
    .local v0, "height":I
    sget-object v4, Lcom/sec/android/cover/miniviewcover/MiniViewCoverMainFrameView;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "makeSViewMeasureSpec width :"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " height : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 526
    iget-object v4, p0, Lcom/sec/android/cover/miniviewcover/MiniViewCoverMainFrameView;->mPageControlView:Lcom/sec/android/cover/miniviewcover/MiniViewCoverPageView;

    invoke-static {v3, v7}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v5

    invoke-static {v0, v7}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v6

    invoke-virtual {v4, v5, v6}, Lcom/sec/android/cover/miniviewcover/MiniViewCoverPageView;->measure(II)V

    .line 529
    .end local v0    # "height":I
    .end local v1    # "lp":Landroid/widget/FrameLayout$LayoutParams;
    .end local v2    # "res":Landroid/content/res/Resources;
    .end local v3    # "width":I
    :cond_0
    return-void
.end method

.method private needAddDeleteWeatherHealthPage()Z
    .locals 2

    .prologue
    .line 844
    sget-object v0, Lcom/sec/android/cover/miniviewcover/MiniViewCoverMainFrameView;->TAG:Ljava/lang/String;

    const-string v1, "needAddDeleteWeatherHealthPage()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 845
    iget-object v0, p0, Lcom/sec/android/cover/miniviewcover/MiniViewCoverMainFrameView;->mWeatherHealthPage:Lcom/sec/android/cover/miniviewcover/MiniViewCoverWeatherHealthPage;

    if-nez v0, :cond_0

    .line 846
    const/4 v0, 0x0

    .line 847
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/sec/android/cover/miniviewcover/MiniViewCoverMainFrameView;->mWeatherHealthPage:Lcom/sec/android/cover/miniviewcover/MiniViewCoverWeatherHealthPage;

    invoke-virtual {v0}, Lcom/sec/android/cover/miniviewcover/MiniViewCoverWeatherHealthPage;->needAddOrDeletePage()Z

    move-result v0

    goto :goto_0
.end method

.method private requestRemoteViews()V
    .locals 3

    .prologue
    .line 851
    sget-object v1, Lcom/sec/android/cover/miniviewcover/MiniViewCoverMainFrameView;->TAG:Ljava/lang/String;

    const-string v2, "requestRemoteViews : Requesting latest remote views to apps.."

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 852
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.samsung.cover.REQUEST_REMOTEVIEWS"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 853
    .local v0, "intent":Landroid/content/Intent;
    iget-object v1, p0, Lcom/sec/android/cover/miniviewcover/MiniViewCoverMainFrameView;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 854
    return-void
.end method

.method private setDefaultPageIndex()V
    .locals 1

    .prologue
    .line 717
    iget-boolean v0, p0, Lcom/sec/android/cover/miniviewcover/MiniViewCoverMainFrameView;->enableMusicPlayerPage:Z

    if-eqz v0, :cond_0

    .line 718
    sget-object v0, Lcom/sec/android/cover/miniviewcover/MiniViewCoverMainFrameView$PageIndex;->MusicControllerPage:Lcom/sec/android/cover/miniviewcover/MiniViewCoverMainFrameView$PageIndex;

    iput-object v0, p0, Lcom/sec/android/cover/miniviewcover/MiniViewCoverMainFrameView;->mDefaultPageIndex:Lcom/sec/android/cover/miniviewcover/MiniViewCoverMainFrameView$PageIndex;

    .line 724
    :goto_0
    return-void

    .line 719
    :cond_0
    iget-boolean v0, p0, Lcom/sec/android/cover/miniviewcover/MiniViewCoverMainFrameView;->enableMusicPlayerPage:Z

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lcom/sec/android/cover/miniviewcover/MiniViewCoverMainFrameView;->enableMissedEventPage:Z

    if-eqz v0, :cond_1

    .line 720
    sget-object v0, Lcom/sec/android/cover/miniviewcover/MiniViewCoverMainFrameView$PageIndex;->MissedEventPage:Lcom/sec/android/cover/miniviewcover/MiniViewCoverMainFrameView$PageIndex;

    iput-object v0, p0, Lcom/sec/android/cover/miniviewcover/MiniViewCoverMainFrameView;->mDefaultPageIndex:Lcom/sec/android/cover/miniviewcover/MiniViewCoverMainFrameView$PageIndex;

    goto :goto_0

    .line 722
    :cond_1
    sget-object v0, Lcom/sec/android/cover/miniviewcover/MiniViewCoverMainFrameView$PageIndex;->HomePage:Lcom/sec/android/cover/miniviewcover/MiniViewCoverMainFrameView$PageIndex;

    iput-object v0, p0, Lcom/sec/android/cover/miniviewcover/MiniViewCoverMainFrameView;->mDefaultPageIndex:Lcom/sec/android/cover/miniviewcover/MiniViewCoverMainFrameView$PageIndex;

    goto :goto_0
.end method

.method private setMiniCoverWallpaper()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 727
    sget-object v1, Lcom/sec/android/cover/miniviewcover/MiniViewCoverMainFrameView;->TAG:Ljava/lang/String;

    const-string v2, "setMiniCoverWallpaper"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 728
    sget v1, Lcom/sec/android/sviewcover/R$id;->mini_cover_setting_root_wallpaper:I

    invoke-virtual {p0, v1}, Lcom/sec/android/cover/miniviewcover/MiniViewCoverMainFrameView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/sec/android/cover/miniviewcover/MiniViewCoverMainFrameView;->mMiniBackGroundView:Landroid/widget/ImageView;

    .line 729
    iget-object v1, p0, Lcom/sec/android/cover/miniviewcover/MiniViewCoverMainFrameView;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/sec/android/cover/manager/MiniViewCoverWallpaperManager;->getInstance(Landroid/content/Context;)Lcom/sec/android/cover/manager/MiniViewCoverWallpaperManager;

    move-result-object v0

    .line 731
    .local v0, "wallpaperManager":Lcom/sec/android/cover/manager/MiniViewCoverWallpaperManager;
    iget-object v1, p0, Lcom/sec/android/cover/miniviewcover/MiniViewCoverMainFrameView;->mMiniBackGroundView:Landroid/widget/ImageView;

    if-eqz v1, :cond_0

    if-nez v0, :cond_1

    .line 741
    :cond_0
    :goto_0
    return-void

    .line 734
    :cond_1
    iget-object v1, p0, Lcom/sec/android/cover/miniviewcover/MiniViewCoverMainFrameView;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/sec/android/cover/CoverUtils;->isEmergencyMode(Landroid/content/Context;)Z

    move-result v1

    if-ne v1, v3, :cond_2

    .line 735
    iget-object v1, p0, Lcom/sec/android/cover/miniviewcover/MiniViewCoverMainFrameView;->mMiniBackGroundView:Landroid/widget/ImageView;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setBackgroundColor(I)V

    goto :goto_0

    .line 736
    :cond_2
    iget-boolean v1, p0, Lcom/sec/android/cover/miniviewcover/MiniViewCoverMainFrameView;->mIsKidsMode:Z

    if-ne v1, v3, :cond_3

    .line 737
    iget-object v1, p0, Lcom/sec/android/cover/miniviewcover/MiniViewCoverMainFrameView;->mMiniBackGroundView:Landroid/widget/ImageView;

    invoke-virtual {p0}, Lcom/sec/android/cover/miniviewcover/MiniViewCoverMainFrameView;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/sec/android/sviewcover/R$drawable;->bg_lockscreen_night_mini:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    .line 739
    :cond_3
    iget-object v1, p0, Lcom/sec/android/cover/miniviewcover/MiniViewCoverMainFrameView;->mMiniBackGroundView:Landroid/widget/ImageView;

    invoke-virtual {p0}, Lcom/sec/android/cover/miniviewcover/MiniViewCoverMainFrameView;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v0}, Lcom/sec/android/cover/manager/MiniViewCoverWallpaperManager;->getCurrentWallpaperResId()I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setBackgroundColor(I)V

    goto :goto_0
.end method

.method private showCoverUi()V
    .locals 3

    .prologue
    .line 452
    sget-object v0, Lcom/sec/android/cover/miniviewcover/MiniViewCoverMainFrameView;->TAG:Ljava/lang/String;

    const-string v1, "showCoverUi"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 454
    invoke-virtual {p0}, Lcom/sec/android/cover/miniviewcover/MiniViewCoverMainFrameView;->isCoverOpen()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 455
    sget-object v0, Lcom/sec/android/cover/miniviewcover/MiniViewCoverMainFrameView;->TAG:Ljava/lang/String;

    const-string v1, "showCoverUi : Cover is opend -> Ignore showCoverUi()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 457
    iget-object v0, p0, Lcom/sec/android/cover/miniviewcover/MiniViewCoverMainFrameView;->mPowerManager:Lcom/sec/android/cover/manager/CoverPowerManager;

    invoke-virtual {v0}, Lcom/sec/android/cover/manager/CoverPowerManager;->releaseWakeLock()V

    .line 479
    :goto_0
    return-void

    .line 461
    :cond_0
    iget-object v0, p0, Lcom/sec/android/cover/miniviewcover/MiniViewCoverMainFrameView;->mPageControlView:Lcom/sec/android/cover/miniviewcover/MiniViewCoverPageView;

    if-eqz v0, :cond_1

    .line 462
    sget-object v0, Lcom/sec/android/cover/miniviewcover/MiniViewCoverMainFrameView;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "SViewPager Count : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/android/cover/miniviewcover/MiniViewCoverMainFrameView;->mPageControlView:Lcom/sec/android/cover/miniviewcover/MiniViewCoverPageView;

    invoke-virtual {v2}, Lcom/sec/android/cover/miniviewcover/MiniViewCoverPageView;->getChildCount()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 463
    invoke-direct {p0}, Lcom/sec/android/cover/miniviewcover/MiniViewCoverMainFrameView;->makeSViewMeasureSpec()V

    .line 466
    :cond_1
    invoke-direct {p0}, Lcom/sec/android/cover/miniviewcover/MiniViewCoverMainFrameView;->updateWeatherHealthVisibility()V

    .line 467
    invoke-direct {p0}, Lcom/sec/android/cover/miniviewcover/MiniViewCoverMainFrameView;->checkKidsMode()V

    .line 468
    invoke-direct {p0}, Lcom/sec/android/cover/miniviewcover/MiniViewCoverMainFrameView;->checkNotificationState()V

    .line 470
    invoke-direct {p0}, Lcom/sec/android/cover/miniviewcover/MiniViewCoverMainFrameView;->checkCharging()Z

    move-result v0

    if-nez v0, :cond_2

    .line 471
    invoke-virtual {p0}, Lcom/sec/android/cover/miniviewcover/MiniViewCoverMainFrameView;->moveToDefaultPage()V

    .line 473
    :cond_2
    iget-object v0, p0, Lcom/sec/android/cover/miniviewcover/MiniViewCoverMainFrameView;->mPowerManager:Lcom/sec/android/cover/manager/CoverPowerManager;

    invoke-virtual {v0}, Lcom/sec/android/cover/manager/CoverPowerManager;->isScreenOn()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 474
    iget-object v0, p0, Lcom/sec/android/cover/miniviewcover/MiniViewCoverMainFrameView;->mPowerManager:Lcom/sec/android/cover/manager/CoverPowerManager;

    invoke-virtual {v0}, Lcom/sec/android/cover/manager/CoverPowerManager;->wakeUp()V

    .line 475
    iget-object v0, p0, Lcom/sec/android/cover/miniviewcover/MiniViewCoverMainFrameView;->mPowerManager:Lcom/sec/android/cover/manager/CoverPowerManager;

    invoke-virtual {v0}, Lcom/sec/android/cover/manager/CoverPowerManager;->startScreenOffTimer()V

    .line 478
    :cond_3
    iget-object v0, p0, Lcom/sec/android/cover/miniviewcover/MiniViewCoverMainFrameView;->mPowerManager:Lcom/sec/android/cover/manager/CoverPowerManager;

    invoke-virtual {v0}, Lcom/sec/android/cover/manager/CoverPowerManager;->releaseWakeLock()V

    goto :goto_0
.end method

.method private updateBatteryChargingState(Lcom/sec/android/cover/monitor/CoverUpdateMonitor$BatteryStatus;)V
    .locals 6
    .param p1, "batteryStatus"    # Lcom/sec/android/cover/monitor/CoverUpdateMonitor$BatteryStatus;

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 806
    sget-object v4, Lcom/sec/android/cover/miniviewcover/MiniViewCoverMainFrameView;->TAG:Ljava/lang/String;

    const-string v5, "updateBatteryStateWidgetState()"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 807
    iget-object v4, p0, Lcom/sec/android/cover/miniviewcover/MiniViewCoverMainFrameView;->mContext:Landroid/content/Context;

    invoke-static {v4}, Lcom/sec/android/cover/CoverUtils;->isEmergencyMode(Landroid/content/Context;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 822
    :cond_0
    :goto_0
    return-void

    .line 810
    :cond_1
    iget-object v4, p0, Lcom/sec/android/cover/miniviewcover/MiniViewCoverMainFrameView;->mMainPage:Lcom/sec/android/cover/miniviewcover/MiniViewCoverMainPage;

    if-eqz v4, :cond_0

    .line 814
    iget v4, p1, Lcom/sec/android/cover/monitor/CoverUpdateMonitor$BatteryStatus;->plugged:I

    if-eqz v4, :cond_3

    move v0, v2

    .line 815
    .local v0, "bPlugged":Z
    :goto_1
    iget-object v4, p0, Lcom/sec/android/cover/miniviewcover/MiniViewCoverMainFrameView;->mMainPage:Lcom/sec/android/cover/miniviewcover/MiniViewCoverMainPage;

    invoke-virtual {v4}, Lcom/sec/android/cover/miniviewcover/MiniViewCoverMainPage;->isBatteryChargingShown()Z

    move-result v4

    if-nez v4, :cond_4

    iget-object v4, p0, Lcom/sec/android/cover/miniviewcover/MiniViewCoverMainFrameView;->mPowerManager:Lcom/sec/android/cover/manager/CoverPowerManager;

    invoke-virtual {v4}, Lcom/sec/android/cover/manager/CoverPowerManager;->isScreenOn()Z

    move-result v4

    if-eqz v4, :cond_4

    invoke-virtual {p0}, Lcom/sec/android/cover/miniviewcover/MiniViewCoverMainFrameView;->isCoverOpen()Z

    move-result v4

    if-nez v4, :cond_4

    iget-boolean v4, p0, Lcom/sec/android/cover/miniviewcover/MiniViewCoverMainFrameView;->mIsCharingState:Z

    if-eq v4, v0, :cond_4

    move v1, v2

    .line 817
    .local v1, "show":Z
    :goto_2
    if-ne v1, v2, :cond_2

    .line 818
    invoke-virtual {p0}, Lcom/sec/android/cover/miniviewcover/MiniViewCoverMainFrameView;->moveToMainPage()V

    .line 820
    :cond_2
    iget-object v2, p0, Lcom/sec/android/cover/miniviewcover/MiniViewCoverMainFrameView;->mMainPage:Lcom/sec/android/cover/miniviewcover/MiniViewCoverMainPage;

    invoke-virtual {v2, p1, v1}, Lcom/sec/android/cover/miniviewcover/MiniViewCoverMainPage;->updateBatteryChargingState(Lcom/sec/android/cover/monitor/CoverUpdateMonitor$BatteryStatus;Z)V

    .line 821
    iput-boolean v0, p0, Lcom/sec/android/cover/miniviewcover/MiniViewCoverMainFrameView;->mIsCharingState:Z

    goto :goto_0

    .end local v0    # "bPlugged":Z
    .end local v1    # "show":Z
    :cond_3
    move v0, v3

    .line 814
    goto :goto_1

    .restart local v0    # "bPlugged":Z
    :cond_4
    move v1, v3

    .line 815
    goto :goto_2
.end method

.method private updateLowBatteryState()V
    .locals 3

    .prologue
    .line 794
    sget-object v0, Lcom/sec/android/cover/miniviewcover/MiniViewCoverMainFrameView;->TAG:Ljava/lang/String;

    const-string v1, "updateLowBatteryState()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 795
    iget-object v0, p0, Lcom/sec/android/cover/miniviewcover/MiniViewCoverMainFrameView;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/sec/android/cover/CoverUtils;->isEmergencyMode(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 803
    :cond_0
    :goto_0
    return-void

    .line 797
    :cond_1
    iget-object v0, p0, Lcom/sec/android/cover/miniviewcover/MiniViewCoverMainFrameView;->mMainPage:Lcom/sec/android/cover/miniviewcover/MiniViewCoverMainPage;

    if-eqz v0, :cond_0

    .line 799
    iget-object v0, p0, Lcom/sec/android/cover/miniviewcover/MiniViewCoverMainFrameView;->mMainPage:Lcom/sec/android/cover/miniviewcover/MiniViewCoverMainPage;

    iget-object v1, p0, Lcom/sec/android/cover/miniviewcover/MiniViewCoverMainFrameView;->mPageControlView:Lcom/sec/android/cover/miniviewcover/MiniViewCoverPageView;

    iget-object v2, p0, Lcom/sec/android/cover/miniviewcover/MiniViewCoverMainFrameView;->mPageControlView:Lcom/sec/android/cover/miniviewcover/MiniViewCoverPageView;

    invoke-virtual {v2}, Lcom/sec/android/cover/miniviewcover/MiniViewCoverPageView;->getCurrentPage()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/sec/android/cover/miniviewcover/MiniViewCoverPageView;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    if-eq v0, v1, :cond_2

    .line 800
    invoke-virtual {p0}, Lcom/sec/android/cover/miniviewcover/MiniViewCoverMainFrameView;->moveToMainPage()V

    .line 802
    :cond_2
    iget-object v0, p0, Lcom/sec/android/cover/miniviewcover/MiniViewCoverMainFrameView;->mMainPage:Lcom/sec/android/cover/miniviewcover/MiniViewCoverMainPage;

    invoke-virtual {v0}, Lcom/sec/android/cover/miniviewcover/MiniViewCoverMainPage;->updateLowBatteryState()V

    goto :goto_0
.end method

.method private updateMusicPlayer()V
    .locals 2

    .prologue
    .line 777
    sget-object v0, Lcom/sec/android/cover/miniviewcover/MiniViewCoverMainFrameView;->TAG:Ljava/lang/String;

    const-string v1, "updateMusicPlayer()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 778
    iget-object v0, p0, Lcom/sec/android/cover/miniviewcover/MiniViewCoverMainFrameView;->mMusicControllerPage:Lcom/sec/android/cover/miniviewcover/MiniViewCoverMusicPlayerPage;

    if-nez v0, :cond_0

    .line 782
    :goto_0
    return-void

    .line 781
    :cond_0
    iget-object v0, p0, Lcom/sec/android/cover/miniviewcover/MiniViewCoverMainFrameView;->mMusicControllerPage:Lcom/sec/android/cover/miniviewcover/MiniViewCoverMusicPlayerPage;

    invoke-virtual {v0}, Lcom/sec/android/cover/miniviewcover/MiniViewCoverMusicPlayerPage;->updateMusicPlayerView()V

    goto :goto_0
.end method

.method private updatePage()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 652
    sget-object v0, Lcom/sec/android/cover/miniviewcover/MiniViewCoverMainFrameView;->TAG:Ljava/lang/String;

    const-string v1, "updatePage()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 653
    iget-object v0, p0, Lcom/sec/android/cover/miniviewcover/MiniViewCoverMainFrameView;->mPageControlView:Lcom/sec/android/cover/miniviewcover/MiniViewCoverPageView;

    if-eqz v0, :cond_3

    .line 654
    iget-object v0, p0, Lcom/sec/android/cover/miniviewcover/MiniViewCoverMainFrameView;->mPageControlView:Lcom/sec/android/cover/miniviewcover/MiniViewCoverPageView;

    invoke-virtual {v0, v3}, Lcom/sec/android/cover/miniviewcover/MiniViewCoverPageView;->setEnableTouchEvent(Z)V

    .line 655
    iget-object v0, p0, Lcom/sec/android/cover/miniviewcover/MiniViewCoverMainFrameView;->mContext:Landroid/content/Context;

    if-eqz v0, :cond_2

    .line 656
    iget-object v0, p0, Lcom/sec/android/cover/miniviewcover/MiniViewCoverMainFrameView;->mPageControlView:Lcom/sec/android/cover/miniviewcover/MiniViewCoverPageView;

    invoke-virtual {v0}, Lcom/sec/android/cover/miniviewcover/MiniViewCoverPageView;->removeAllViews()V

    .line 657
    iput-boolean v3, p0, Lcom/sec/android/cover/miniviewcover/MiniViewCoverMainFrameView;->enableMissedEventPage:Z

    .line 658
    iput-boolean v3, p0, Lcom/sec/android/cover/miniviewcover/MiniViewCoverMainFrameView;->enableMusicPlayerPage:Z

    .line 660
    iget-object v0, p0, Lcom/sec/android/cover/miniviewcover/MiniViewCoverMainFrameView;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/sec/android/cover/CoverUtils;->isEmergencyMode(Landroid/content/Context;)Z

    move-result v0

    if-ne v0, v2, :cond_4

    .line 661
    iget-boolean v0, p0, Lcom/sec/android/cover/miniviewcover/MiniViewCoverMainFrameView;->mNotificationOnLockscreen:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/cover/miniviewcover/MiniViewCoverMainFrameView;->mMissedEventPage:Lcom/sec/android/cover/miniviewcover/MiniViewCoverMissedEventPage;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/cover/miniviewcover/MiniViewCoverMainFrameView;->mMissedEventManager:Lcom/sec/android/cover/manager/CoverMissedEventManager;

    invoke-virtual {v0}, Lcom/sec/android/cover/manager/CoverMissedEventManager;->getMissedEventCount()I

    move-result v0

    if-lez v0, :cond_0

    .line 662
    iget-object v0, p0, Lcom/sec/android/cover/miniviewcover/MiniViewCoverMainFrameView;->mPageControlView:Lcom/sec/android/cover/miniviewcover/MiniViewCoverPageView;

    iget-object v1, p0, Lcom/sec/android/cover/miniviewcover/MiniViewCoverMainFrameView;->mMissedEventPage:Lcom/sec/android/cover/miniviewcover/MiniViewCoverMissedEventPage;

    invoke-virtual {v0, v1}, Lcom/sec/android/cover/miniviewcover/MiniViewCoverPageView;->addView(Landroid/view/View;)V

    .line 663
    iput-boolean v2, p0, Lcom/sec/android/cover/miniviewcover/MiniViewCoverMainFrameView;->enableMissedEventPage:Z

    .line 666
    :cond_0
    iget-object v0, p0, Lcom/sec/android/cover/miniviewcover/MiniViewCoverMainFrameView;->mMainPage:Lcom/sec/android/cover/miniviewcover/MiniViewCoverMainPage;

    if-eqz v0, :cond_1

    .line 667
    iget-object v0, p0, Lcom/sec/android/cover/miniviewcover/MiniViewCoverMainFrameView;->mPageControlView:Lcom/sec/android/cover/miniviewcover/MiniViewCoverPageView;

    iget-object v1, p0, Lcom/sec/android/cover/miniviewcover/MiniViewCoverMainFrameView;->mMainPage:Lcom/sec/android/cover/miniviewcover/MiniViewCoverMainPage;

    invoke-virtual {v0, v1}, Lcom/sec/android/cover/miniviewcover/MiniViewCoverPageView;->addView(Landroid/view/View;)V

    .line 670
    :cond_1
    invoke-direct {p0}, Lcom/sec/android/cover/miniviewcover/MiniViewCoverMainFrameView;->setDefaultPageIndex()V

    .line 702
    :cond_2
    :goto_0
    iget-object v0, p0, Lcom/sec/android/cover/miniviewcover/MiniViewCoverMainFrameView;->mPageControlView:Lcom/sec/android/cover/miniviewcover/MiniViewCoverPageView;

    invoke-virtual {v0}, Lcom/sec/android/cover/miniviewcover/MiniViewCoverPageView;->invalidate()V

    .line 704
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    new-instance v1, Lcom/sec/android/cover/miniviewcover/MiniViewCoverMainFrameView$5;

    invoke-direct {v1, p0}, Lcom/sec/android/cover/miniviewcover/MiniViewCoverMainFrameView$5;-><init>(Lcom/sec/android/cover/miniviewcover/MiniViewCoverMainFrameView;)V

    const-wide/16 v2, 0x64

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 714
    :cond_3
    return-void

    .line 672
    :cond_4
    iget-boolean v0, p0, Lcom/sec/android/cover/miniviewcover/MiniViewCoverMainFrameView;->mIsKidsMode:Z

    if-nez v0, :cond_6

    .line 673
    iget-object v0, p0, Lcom/sec/android/cover/miniviewcover/MiniViewCoverMainFrameView;->mSettingPage:Landroid/view/View;

    if-eqz v0, :cond_5

    .line 674
    iget-object v0, p0, Lcom/sec/android/cover/miniviewcover/MiniViewCoverMainFrameView;->mPageControlView:Lcom/sec/android/cover/miniviewcover/MiniViewCoverPageView;

    iget-object v1, p0, Lcom/sec/android/cover/miniviewcover/MiniViewCoverMainFrameView;->mSettingPage:Landroid/view/View;

    invoke-virtual {v0, v1}, Lcom/sec/android/cover/miniviewcover/MiniViewCoverPageView;->addView(Landroid/view/View;)V

    .line 676
    :cond_5
    iget-boolean v0, p0, Lcom/sec/android/cover/miniviewcover/MiniViewCoverMainFrameView;->mNotificationOnLockscreen:Z

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/sec/android/cover/miniviewcover/MiniViewCoverMainFrameView;->mMissedEventPage:Lcom/sec/android/cover/miniviewcover/MiniViewCoverMissedEventPage;

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/sec/android/cover/miniviewcover/MiniViewCoverMainFrameView;->mMissedEventManager:Lcom/sec/android/cover/manager/CoverMissedEventManager;

    invoke-virtual {v0}, Lcom/sec/android/cover/manager/CoverMissedEventManager;->getMissedEventCount()I

    move-result v0

    if-lez v0, :cond_6

    .line 678
    iget-object v0, p0, Lcom/sec/android/cover/miniviewcover/MiniViewCoverMainFrameView;->mPageControlView:Lcom/sec/android/cover/miniviewcover/MiniViewCoverPageView;

    iget-object v1, p0, Lcom/sec/android/cover/miniviewcover/MiniViewCoverMainFrameView;->mMissedEventPage:Lcom/sec/android/cover/miniviewcover/MiniViewCoverMissedEventPage;

    invoke-virtual {v0, v1}, Lcom/sec/android/cover/miniviewcover/MiniViewCoverPageView;->addView(Landroid/view/View;)V

    .line 679
    iput-boolean v2, p0, Lcom/sec/android/cover/miniviewcover/MiniViewCoverMainFrameView;->enableMissedEventPage:Z

    .line 683
    :cond_6
    iget-object v0, p0, Lcom/sec/android/cover/miniviewcover/MiniViewCoverMainFrameView;->mMainPage:Lcom/sec/android/cover/miniviewcover/MiniViewCoverMainPage;

    if-eqz v0, :cond_7

    .line 684
    iget-object v0, p0, Lcom/sec/android/cover/miniviewcover/MiniViewCoverMainFrameView;->mPageControlView:Lcom/sec/android/cover/miniviewcover/MiniViewCoverPageView;

    iget-object v1, p0, Lcom/sec/android/cover/miniviewcover/MiniViewCoverMainFrameView;->mMainPage:Lcom/sec/android/cover/miniviewcover/MiniViewCoverMainPage;

    invoke-virtual {v0, v1}, Lcom/sec/android/cover/miniviewcover/MiniViewCoverPageView;->addView(Landroid/view/View;)V

    .line 687
    :cond_7
    iget-object v0, p0, Lcom/sec/android/cover/miniviewcover/MiniViewCoverMainFrameView;->mMusicControllerPage:Lcom/sec/android/cover/miniviewcover/MiniViewCoverMusicPlayerPage;

    if-eqz v0, :cond_8

    iget-object v0, p0, Lcom/sec/android/cover/miniviewcover/MiniViewCoverMainFrameView;->mMusicControllerPage:Lcom/sec/android/cover/miniviewcover/MiniViewCoverMusicPlayerPage;

    invoke-virtual {v0}, Lcom/sec/android/cover/miniviewcover/MiniViewCoverMusicPlayerPage;->getMusicPlayerState()Z

    move-result v0

    if-eqz v0, :cond_8

    .line 688
    iget-object v0, p0, Lcom/sec/android/cover/miniviewcover/MiniViewCoverMainFrameView;->mPageControlView:Lcom/sec/android/cover/miniviewcover/MiniViewCoverPageView;

    iget-object v1, p0, Lcom/sec/android/cover/miniviewcover/MiniViewCoverMainFrameView;->mMusicControllerPage:Lcom/sec/android/cover/miniviewcover/MiniViewCoverMusicPlayerPage;

    invoke-virtual {v0, v1}, Lcom/sec/android/cover/miniviewcover/MiniViewCoverPageView;->addView(Landroid/view/View;)V

    .line 689
    iput-boolean v2, p0, Lcom/sec/android/cover/miniviewcover/MiniViewCoverMainFrameView;->enableMusicPlayerPage:Z

    .line 692
    :cond_8
    iget-boolean v0, p0, Lcom/sec/android/cover/miniviewcover/MiniViewCoverMainFrameView;->mIsKidsMode:Z

    if-nez v0, :cond_9

    .line 693
    iget-object v0, p0, Lcom/sec/android/cover/miniviewcover/MiniViewCoverMainFrameView;->mWeatherHealthPage:Lcom/sec/android/cover/miniviewcover/MiniViewCoverWeatherHealthPage;

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/sec/android/cover/miniviewcover/MiniViewCoverMainFrameView;->mWeatherHealthPage:Lcom/sec/android/cover/miniviewcover/MiniViewCoverWeatherHealthPage;

    invoke-virtual {v0}, Lcom/sec/android/cover/miniviewcover/MiniViewCoverWeatherHealthPage;->getPageState()Z

    move-result v0

    if-eqz v0, :cond_9

    .line 694
    sget-object v0, Lcom/sec/android/cover/miniviewcover/MiniViewCoverMainFrameView;->TAG:Ljava/lang/String;

    const-string v1, "mPageControlView.addView(mWeatherHealthPage)"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 695
    iget-object v0, p0, Lcom/sec/android/cover/miniviewcover/MiniViewCoverMainFrameView;->mPageControlView:Lcom/sec/android/cover/miniviewcover/MiniViewCoverPageView;

    iget-object v1, p0, Lcom/sec/android/cover/miniviewcover/MiniViewCoverMainFrameView;->mWeatherHealthPage:Lcom/sec/android/cover/miniviewcover/MiniViewCoverWeatherHealthPage;

    invoke-virtual {v0, v1}, Lcom/sec/android/cover/miniviewcover/MiniViewCoverPageView;->addView(Landroid/view/View;)V

    .line 699
    :cond_9
    invoke-direct {p0}, Lcom/sec/android/cover/miniviewcover/MiniViewCoverMainFrameView;->setDefaultPageIndex()V

    goto :goto_0
.end method

.method private updateSettingsText()V
    .locals 3

    .prologue
    .line 857
    sget-object v0, Lcom/sec/android/cover/miniviewcover/MiniViewCoverMainFrameView;->TAG:Ljava/lang/String;

    const-string v1, "updateSettingsText()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 858
    iget-object v0, p0, Lcom/sec/android/cover/miniviewcover/MiniViewCoverMainFrameView;->mSettingsDescriptionText:Landroid/widget/TextView;

    if-nez v0, :cond_0

    .line 863
    :goto_0
    return-void

    .line 861
    :cond_0
    iget-object v0, p0, Lcom/sec/android/cover/miniviewcover/MiniViewCoverMainFrameView;->mSettingsDescriptionText:Landroid/widget/TextView;

    sget v1, Lcom/sec/android/sviewcover/R$string;->mini_view_cover_settings_description:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 862
    iget-object v0, p0, Lcom/sec/android/cover/miniviewcover/MiniViewCoverMainFrameView;->mSettingsDescriptionText:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/sec/android/cover/miniviewcover/MiniViewCoverMainFrameView;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/sec/android/sviewcover/R$string;->mini_view_cover_settings_description:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setContentDescription(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method private updateWeatherHealthVisibility()V
    .locals 2

    .prologue
    .line 834
    sget-object v0, Lcom/sec/android/cover/miniviewcover/MiniViewCoverMainFrameView;->TAG:Ljava/lang/String;

    const-string v1, "updateWeatherHealthVisibility()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 835
    iget-object v0, p0, Lcom/sec/android/cover/miniviewcover/MiniViewCoverMainFrameView;->mWeatherHealthPage:Lcom/sec/android/cover/miniviewcover/MiniViewCoverWeatherHealthPage;

    if-nez v0, :cond_0

    .line 841
    :goto_0
    return-void

    .line 837
    :cond_0
    invoke-direct {p0}, Lcom/sec/android/cover/miniviewcover/MiniViewCoverMainFrameView;->needAddDeleteWeatherHealthPage()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 838
    invoke-direct {p0}, Lcom/sec/android/cover/miniviewcover/MiniViewCoverMainFrameView;->updatePage()V

    .line 840
    :cond_1
    iget-object v0, p0, Lcom/sec/android/cover/miniviewcover/MiniViewCoverMainFrameView;->mWeatherHealthPage:Lcom/sec/android/cover/miniviewcover/MiniViewCoverWeatherHealthPage;

    invoke-virtual {v0}, Lcom/sec/android/cover/miniviewcover/MiniViewCoverWeatherHealthPage;->updateWeatherHealthVisibility()V

    goto :goto_0
.end method


# virtual methods
.method public getCurrentPageIndex()Lcom/sec/android/cover/miniviewcover/MiniViewCoverMainFrameView$PageIndex;
    .locals 1

    .prologue
    .line 648
    iget-object v0, p0, Lcom/sec/android/cover/miniviewcover/MiniViewCoverMainFrameView;->mCurrentPageIndex:Lcom/sec/android/cover/miniviewcover/MiniViewCoverMainFrameView$PageIndex;

    return-object v0
.end method

.method public isCoverOpen()Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 532
    iget-object v1, p0, Lcom/sec/android/cover/miniviewcover/MiniViewCoverMainFrameView;->mCoverState:Lcom/samsung/android/cover/CoverState;

    invoke-virtual {v1}, Lcom/samsung/android/cover/CoverState;->getSwitchState()Z

    move-result v1

    if-ne v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public moveToDefaultPage()V
    .locals 2

    .prologue
    .line 573
    iget-object v0, p0, Lcom/sec/android/cover/miniviewcover/MiniViewCoverMainFrameView;->mDefaultPageIndex:Lcom/sec/android/cover/miniviewcover/MiniViewCoverMainFrameView$PageIndex;

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/sec/android/cover/miniviewcover/MiniViewCoverMainFrameView;->moveToPage(Lcom/sec/android/cover/miniviewcover/MiniViewCoverMainFrameView$PageIndex;Z)V

    .line 574
    return-void
.end method

.method public moveToMainPage()V
    .locals 2

    .prologue
    .line 569
    sget-object v0, Lcom/sec/android/cover/miniviewcover/MiniViewCoverMainFrameView$PageIndex;->HomePage:Lcom/sec/android/cover/miniviewcover/MiniViewCoverMainFrameView$PageIndex;

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/sec/android/cover/miniviewcover/MiniViewCoverMainFrameView;->moveToPage(Lcom/sec/android/cover/miniviewcover/MiniViewCoverMainFrameView$PageIndex;Z)V

    .line 570
    return-void
.end method

.method public moveToPage(Lcom/sec/android/cover/miniviewcover/MiniViewCoverMainFrameView$PageIndex;Z)V
    .locals 4
    .param p1, "pageIndex"    # Lcom/sec/android/cover/miniviewcover/MiniViewCoverMainFrameView$PageIndex;
    .param p2, "isSnapToPage"    # Z

    .prologue
    .line 593
    iget-object v1, p0, Lcom/sec/android/cover/miniviewcover/MiniViewCoverMainFrameView;->mPageControlView:Lcom/sec/android/cover/miniviewcover/MiniViewCoverPageView;

    if-nez v1, :cond_0

    .line 645
    :goto_0
    return-void

    .line 596
    :cond_0
    sget-object v1, Lcom/sec/android/cover/miniviewcover/MiniViewCoverMainFrameView;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Move to page : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 598
    iput-object p1, p0, Lcom/sec/android/cover/miniviewcover/MiniViewCoverMainFrameView;->mCurrentPageIndex:Lcom/sec/android/cover/miniviewcover/MiniViewCoverMainFrameView$PageIndex;

    .line 600
    const/4 v0, 0x0

    .line 602
    .local v0, "movePageIndex":I
    sget-object v1, Lcom/sec/android/cover/miniviewcover/MiniViewCoverMainFrameView$6;->$SwitchMap$com$sec$android$cover$miniviewcover$MiniViewCoverMainFrameView$PageIndex:[I

    invoke-virtual {p1}, Lcom/sec/android/cover/miniviewcover/MiniViewCoverMainFrameView$PageIndex;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    .line 629
    iget-object v1, p0, Lcom/sec/android/cover/miniviewcover/MiniViewCoverMainFrameView;->mMainPage:Lcom/sec/android/cover/miniviewcover/MiniViewCoverMainPage;

    if-eqz v1, :cond_1

    .line 630
    iget-object v1, p0, Lcom/sec/android/cover/miniviewcover/MiniViewCoverMainFrameView;->mPageControlView:Lcom/sec/android/cover/miniviewcover/MiniViewCoverPageView;

    iget-object v2, p0, Lcom/sec/android/cover/miniviewcover/MiniViewCoverMainFrameView;->mMainPage:Lcom/sec/android/cover/miniviewcover/MiniViewCoverMainPage;

    invoke-virtual {v1, v2}, Lcom/sec/android/cover/miniviewcover/MiniViewCoverPageView;->indexOfChild(Landroid/view/View;)I

    move-result v0

    .line 634
    :cond_1
    :goto_1
    const/4 v1, -0x1

    if-ne v0, v1, :cond_2

    .line 635
    sget-object v1, Lcom/sec/android/cover/miniviewcover/MiniViewCoverMainFrameView;->TAG:Ljava/lang/String;

    const-string v2, "Index page not found!"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 636
    const/4 v0, 0x0

    .line 639
    :cond_2
    const/4 v1, 0x1

    if-ne p2, v1, :cond_3

    .line 640
    iget-object v1, p0, Lcom/sec/android/cover/miniviewcover/MiniViewCoverMainFrameView;->mPageControlView:Lcom/sec/android/cover/miniviewcover/MiniViewCoverPageView;

    invoke-virtual {v1, v0}, Lcom/sec/android/cover/miniviewcover/MiniViewCoverPageView;->snapToPage(I)V

    goto :goto_0

    .line 604
    :pswitch_0
    iget-object v1, p0, Lcom/sec/android/cover/miniviewcover/MiniViewCoverMainFrameView;->mMainPage:Lcom/sec/android/cover/miniviewcover/MiniViewCoverMainPage;

    if-eqz v1, :cond_1

    .line 605
    iget-object v1, p0, Lcom/sec/android/cover/miniviewcover/MiniViewCoverMainFrameView;->mPageControlView:Lcom/sec/android/cover/miniviewcover/MiniViewCoverPageView;

    iget-object v2, p0, Lcom/sec/android/cover/miniviewcover/MiniViewCoverMainFrameView;->mMainPage:Lcom/sec/android/cover/miniviewcover/MiniViewCoverMainPage;

    invoke-virtual {v1, v2}, Lcom/sec/android/cover/miniviewcover/MiniViewCoverPageView;->indexOfChild(Landroid/view/View;)I

    move-result v0

    goto :goto_1

    .line 609
    :pswitch_1
    iget-object v1, p0, Lcom/sec/android/cover/miniviewcover/MiniViewCoverMainFrameView;->mSettingPage:Landroid/view/View;

    if-eqz v1, :cond_1

    .line 610
    iget-object v1, p0, Lcom/sec/android/cover/miniviewcover/MiniViewCoverMainFrameView;->mPageControlView:Lcom/sec/android/cover/miniviewcover/MiniViewCoverPageView;

    iget-object v2, p0, Lcom/sec/android/cover/miniviewcover/MiniViewCoverMainFrameView;->mSettingPage:Landroid/view/View;

    invoke-virtual {v1, v2}, Lcom/sec/android/cover/miniviewcover/MiniViewCoverPageView;->indexOfChild(Landroid/view/View;)I

    move-result v0

    goto :goto_1

    .line 614
    :pswitch_2
    iget-object v1, p0, Lcom/sec/android/cover/miniviewcover/MiniViewCoverMainFrameView;->mMissedEventPage:Lcom/sec/android/cover/miniviewcover/MiniViewCoverMissedEventPage;

    if-eqz v1, :cond_1

    .line 615
    iget-object v1, p0, Lcom/sec/android/cover/miniviewcover/MiniViewCoverMainFrameView;->mPageControlView:Lcom/sec/android/cover/miniviewcover/MiniViewCoverPageView;

    iget-object v2, p0, Lcom/sec/android/cover/miniviewcover/MiniViewCoverMainFrameView;->mMissedEventPage:Lcom/sec/android/cover/miniviewcover/MiniViewCoverMissedEventPage;

    invoke-virtual {v1, v2}, Lcom/sec/android/cover/miniviewcover/MiniViewCoverPageView;->indexOfChild(Landroid/view/View;)I

    move-result v0

    goto :goto_1

    .line 619
    :pswitch_3
    iget-object v1, p0, Lcom/sec/android/cover/miniviewcover/MiniViewCoverMainFrameView;->mMusicControllerPage:Lcom/sec/android/cover/miniviewcover/MiniViewCoverMusicPlayerPage;

    if-eqz v1, :cond_1

    .line 620
    iget-object v1, p0, Lcom/sec/android/cover/miniviewcover/MiniViewCoverMainFrameView;->mPageControlView:Lcom/sec/android/cover/miniviewcover/MiniViewCoverPageView;

    iget-object v2, p0, Lcom/sec/android/cover/miniviewcover/MiniViewCoverMainFrameView;->mMusicControllerPage:Lcom/sec/android/cover/miniviewcover/MiniViewCoverMusicPlayerPage;

    invoke-virtual {v1, v2}, Lcom/sec/android/cover/miniviewcover/MiniViewCoverPageView;->indexOfChild(Landroid/view/View;)I

    move-result v0

    goto :goto_1

    .line 624
    :pswitch_4
    iget-object v1, p0, Lcom/sec/android/cover/miniviewcover/MiniViewCoverMainFrameView;->mWeatherHealthPage:Lcom/sec/android/cover/miniviewcover/MiniViewCoverWeatherHealthPage;

    if-eqz v1, :cond_1

    .line 625
    iget-object v1, p0, Lcom/sec/android/cover/miniviewcover/MiniViewCoverMainFrameView;->mPageControlView:Lcom/sec/android/cover/miniviewcover/MiniViewCoverPageView;

    iget-object v2, p0, Lcom/sec/android/cover/miniviewcover/MiniViewCoverMainFrameView;->mWeatherHealthPage:Lcom/sec/android/cover/miniviewcover/MiniViewCoverWeatherHealthPage;

    invoke-virtual {v1, v2}, Lcom/sec/android/cover/miniviewcover/MiniViewCoverPageView;->indexOfChild(Landroid/view/View;)I

    move-result v0

    goto :goto_1

    .line 642
    :cond_3
    iget-object v1, p0, Lcom/sec/android/cover/miniviewcover/MiniViewCoverMainFrameView;->mPageControlView:Lcom/sec/android/cover/miniviewcover/MiniViewCoverPageView;

    invoke-virtual {v1, v0}, Lcom/sec/android/cover/miniviewcover/MiniViewCoverPageView;->setCurrentPage(I)V

    goto/16 :goto_0

    .line 602
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method protected onAttachedToWindow()V
    .locals 2

    .prologue
    .line 301
    sget-object v0, Lcom/sec/android/cover/miniviewcover/MiniViewCoverMainFrameView;->TAG:Ljava/lang/String;

    const-string v1, "onAttachedToWindow"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 302
    invoke-super {p0}, Lcom/sec/android/cover/CoverMainFrameView;->onAttachedToWindow()V

    .line 304
    iget-object v0, p0, Lcom/sec/android/cover/miniviewcover/MiniViewCoverMainFrameView;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/sec/android/cover/monitor/CoverUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/sec/android/cover/monitor/CoverUpdateMonitor;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/cover/miniviewcover/MiniViewCoverMainFrameView;->mUpdateMonitorCallback:Lcom/sec/android/cover/monitor/CoverUpdateMonitorCallback;

    invoke-virtual {v0, v1}, Lcom/sec/android/cover/monitor/CoverUpdateMonitor;->registerCallback(Lcom/sec/android/cover/monitor/CoverUpdateMonitorCallback;)V

    .line 305
    return-void
.end method

.method public onCoverEvent(Lcom/samsung/android/cover/CoverState;)V
    .locals 12
    .param p1, "state"    # Lcom/samsung/android/cover/CoverState;

    .prologue
    const/high16 v11, 0x10000000

    const/4 v6, 0x0

    const/4 v5, 0x1

    const/4 v10, 0x0

    .line 322
    invoke-super {p0, p1}, Lcom/sec/android/cover/CoverMainFrameView;->onCoverEvent(Lcom/samsung/android/cover/CoverState;)V

    .line 323
    iput-object p1, p0, Lcom/sec/android/cover/miniviewcover/MiniViewCoverMainFrameView;->mCoverState:Lcom/samsung/android/cover/CoverState;

    .line 325
    invoke-virtual {p1}, Lcom/samsung/android/cover/CoverState;->getSwitchState()Z

    move-result v7

    if-ne v7, v5, :cond_3

    move v3, v5

    .line 327
    .local v3, "isCoverOpen":Z
    :goto_0
    sget-object v7, Lcom/sec/android/cover/miniviewcover/MiniViewCoverMainFrameView;->TAG:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "onCoverEvent :  isCoverOpen:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " coverType:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {p1}, Lcom/samsung/android/cover/CoverState;->getType()I

    move-result v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " coverColor:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {p1}, Lcom/samsung/android/cover/CoverState;->getColor()I

    move-result v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " PageIndex:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {p0}, Lcom/sec/android/cover/miniviewcover/MiniViewCoverMainFrameView;->getCurrentPageIndex()Lcom/sec/android/cover/miniviewcover/MiniViewCoverMainFrameView$PageIndex;

    move-result-object v9

    invoke-virtual {v9}, Lcom/sec/android/cover/miniviewcover/MiniViewCoverMainFrameView$PageIndex;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 332
    iget-object v7, p0, Lcom/sec/android/cover/miniviewcover/MiniViewCoverMainFrameView;->mPowerManager:Lcom/sec/android/cover/manager/CoverPowerManager;

    invoke-virtual {v7}, Lcom/sec/android/cover/manager/CoverPowerManager;->cancelScreenOffTimer()V

    .line 334
    iget-object v7, p0, Lcom/sec/android/cover/miniviewcover/MiniViewCoverMainFrameView;->mContext:Landroid/content/Context;

    invoke-static {v7}, Lcom/sec/android/cover/manager/CoverPopupManager;->getInstance(Landroid/content/Context;)Lcom/sec/android/cover/manager/CoverPopupManager;

    move-result-object v7

    invoke-virtual {v7}, Lcom/sec/android/cover/manager/CoverPopupManager;->isShowingPopupDialog()Z

    move-result v4

    .line 337
    .local v4, "isCoverPopupShowing":Z
    if-eqz v3, :cond_8

    .line 338
    iget-object v7, p0, Lcom/sec/android/cover/miniviewcover/MiniViewCoverMainFrameView;->mPowerManager:Lcom/sec/android/cover/manager/CoverPowerManager;

    invoke-virtual {v7}, Lcom/sec/android/cover/manager/CoverPowerManager;->isScreenOn()Z

    move-result v7

    if-eqz v7, :cond_1

    invoke-virtual {p0}, Lcom/sec/android/cover/miniviewcover/MiniViewCoverMainFrameView;->hasWindowFocus()Z

    move-result v7

    if-nez v7, :cond_0

    if-eqz v4, :cond_1

    .line 339
    :cond_0
    iget-object v7, p0, Lcom/sec/android/cover/miniviewcover/MiniViewCoverMainFrameView;->mPendingIntent:Landroid/app/PendingIntent;

    if-eqz v7, :cond_4

    .line 341
    :try_start_0
    iget-object v5, p0, Lcom/sec/android/cover/miniviewcover/MiniViewCoverMainFrameView;->mPendingIntent:Landroid/app/PendingIntent;

    invoke-virtual {v5}, Landroid/app/PendingIntent;->send()V
    :try_end_0
    .catch Landroid/app/PendingIntent$CanceledException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 345
    iput-object v10, p0, Lcom/sec/android/cover/miniviewcover/MiniViewCoverMainFrameView;->mPendingIntent:Landroid/app/PendingIntent;

    .line 401
    :cond_1
    :goto_1
    invoke-direct {p0}, Lcom/sec/android/cover/miniviewcover/MiniViewCoverMainFrameView;->hideCoverUi()V

    .line 407
    :goto_2
    invoke-virtual {p1}, Lcom/samsung/android/cover/CoverState;->getAttachState()Z

    move-result v5

    if-nez v5, :cond_2

    iget-object v5, p0, Lcom/sec/android/cover/miniviewcover/MiniViewCoverMainFrameView;->mWeatherHealthPage:Lcom/sec/android/cover/miniviewcover/MiniViewCoverWeatherHealthPage;

    if-eqz v5, :cond_2

    .line 408
    iget-object v5, p0, Lcom/sec/android/cover/miniviewcover/MiniViewCoverMainFrameView;->mWeatherHealthPage:Lcom/sec/android/cover/miniviewcover/MiniViewCoverWeatherHealthPage;

    invoke-virtual {v5}, Lcom/sec/android/cover/miniviewcover/MiniViewCoverWeatherHealthPage;->unregistBroadcast()V

    .line 412
    :cond_2
    return-void

    .end local v3    # "isCoverOpen":Z
    .end local v4    # "isCoverPopupShowing":Z
    :cond_3
    move v3, v6

    .line 325
    goto/16 :goto_0

    .line 342
    .restart local v3    # "isCoverOpen":Z
    .restart local v4    # "isCoverPopupShowing":Z
    :catch_0
    move-exception v0

    .line 343
    .local v0, "e":Landroid/app/PendingIntent$CanceledException;
    :try_start_1
    invoke-virtual {v0}, Landroid/app/PendingIntent$CanceledException;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 345
    iput-object v10, p0, Lcom/sec/android/cover/miniviewcover/MiniViewCoverMainFrameView;->mPendingIntent:Landroid/app/PendingIntent;

    goto :goto_1

    .end local v0    # "e":Landroid/app/PendingIntent$CanceledException;
    :catchall_0
    move-exception v5

    iput-object v10, p0, Lcom/sec/android/cover/miniviewcover/MiniViewCoverMainFrameView;->mPendingIntent:Landroid/app/PendingIntent;

    throw v5

    .line 348
    :cond_4
    iput-object v10, p0, Lcom/sec/android/cover/miniviewcover/MiniViewCoverMainFrameView;->mPendingIntent:Landroid/app/PendingIntent;

    .line 349
    invoke-virtual {p0}, Lcom/sec/android/cover/miniviewcover/MiniViewCoverMainFrameView;->getCurrentPageIndex()Lcom/sec/android/cover/miniviewcover/MiniViewCoverMainFrameView$PageIndex;

    move-result-object v7

    sget-object v8, Lcom/sec/android/cover/miniviewcover/MiniViewCoverMainFrameView$PageIndex;->SettingPage:Lcom/sec/android/cover/miniviewcover/MiniViewCoverMainFrameView$PageIndex;

    if-ne v7, v8, :cond_5

    .line 350
    sget-object v5, Lcom/sec/android/cover/miniviewcover/MiniViewCoverMainFrameView;->TAG:Ljava/lang/String;

    const-string v6, "Goto Settings app Dock display"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 351
    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    .line 352
    .local v2, "intent":Landroid/content/Intent;
    const-string v5, "com.android.settings"

    const-string v6, "com.android.settings.Settings$DockSettingsActivity"

    invoke-virtual {v2, v5, v6}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 354
    invoke-virtual {v2, v11}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 356
    :try_start_2
    iget-object v5, p0, Lcom/sec/android/cover/miniviewcover/MiniViewCoverMainFrameView;->mContext:Landroid/content/Context;

    sget-object v6, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    invoke-virtual {v5, v2, v6}, Landroid/content/Context;->startActivityAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V
    :try_end_2
    .catch Landroid/content/ActivityNotFoundException; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_1

    .line 357
    :catch_1
    move-exception v1

    .line 358
    .local v1, "exception":Landroid/content/ActivityNotFoundException;
    sget-object v5, Lcom/sec/android/cover/miniviewcover/MiniViewCoverMainFrameView;->TAG:Ljava/lang/String;

    const-string v6, "ActivityNotFoundException !!"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 360
    .end local v1    # "exception":Landroid/content/ActivityNotFoundException;
    .end local v2    # "intent":Landroid/content/Intent;
    :cond_5
    invoke-virtual {p0}, Lcom/sec/android/cover/miniviewcover/MiniViewCoverMainFrameView;->getCurrentPageIndex()Lcom/sec/android/cover/miniviewcover/MiniViewCoverMainFrameView$PageIndex;

    move-result-object v7

    sget-object v8, Lcom/sec/android/cover/miniviewcover/MiniViewCoverMainFrameView$PageIndex;->MissedEventPage:Lcom/sec/android/cover/miniviewcover/MiniViewCoverMainFrameView$PageIndex;

    if-ne v7, v8, :cond_1

    .line 361
    iget-object v7, p0, Lcom/sec/android/cover/miniviewcover/MiniViewCoverMainFrameView;->mMissedEventManager:Lcom/sec/android/cover/manager/CoverMissedEventManager;

    invoke-virtual {v7}, Lcom/sec/android/cover/manager/CoverMissedEventManager;->getMissedEventCallCount()I

    move-result v7

    if-lez v7, :cond_7

    .line 362
    iget-object v5, p0, Lcom/sec/android/cover/miniviewcover/MiniViewCoverMainFrameView;->mContext:Landroid/content/Context;

    invoke-static {v5}, Lcom/sec/android/cover/CoverUtils;->isTPhoneEnabled(Landroid/content/Context;)Z

    move-result v5

    if-eqz v5, :cond_6

    .line 363
    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    .line 364
    .restart local v2    # "intent":Landroid/content/Intent;
    const-string v5, "com.skt.prod.dialer"

    const-string v7, "com.skt.prod.dialer.activities.main.MainActivity"

    invoke-virtual {v2, v5, v7}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 366
    const/high16 v5, 0x34000000

    invoke-virtual {v2, v5}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 369
    const-string v5, "INIT_MAIN_TYPE"

    invoke-virtual {v2, v5, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 370
    const-string v5, "GOTO_ACTIVITY"

    const/4 v6, 0x2

    invoke-virtual {v2, v5, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 372
    :try_start_3
    iget-object v5, p0, Lcom/sec/android/cover/miniviewcover/MiniViewCoverMainFrameView;->mContext:Landroid/content/Context;

    sget-object v6, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    invoke-virtual {v5, v2, v6}, Landroid/content/Context;->startActivityAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V
    :try_end_3
    .catch Landroid/content/ActivityNotFoundException; {:try_start_3 .. :try_end_3} :catch_2

    goto/16 :goto_1

    .line 373
    :catch_2
    move-exception v1

    .line 374
    .restart local v1    # "exception":Landroid/content/ActivityNotFoundException;
    sget-object v5, Lcom/sec/android/cover/miniviewcover/MiniViewCoverMainFrameView;->TAG:Ljava/lang/String;

    const-string v6, "ActivityNotFoundException !!"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 377
    .end local v1    # "exception":Landroid/content/ActivityNotFoundException;
    .end local v2    # "intent":Landroid/content/Intent;
    :cond_6
    new-instance v2, Landroid/content/Intent;

    const-string v5, "com.android.phone.action.RECENT_CALLS"

    invoke-direct {v2, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 378
    .restart local v2    # "intent":Landroid/content/Intent;
    const v5, 0x10008000

    invoke-virtual {v2, v5}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 381
    :try_start_4
    iget-object v5, p0, Lcom/sec/android/cover/miniviewcover/MiniViewCoverMainFrameView;->mContext:Landroid/content/Context;

    sget-object v6, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    invoke-virtual {v5, v2, v6}, Landroid/content/Context;->startActivityAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V
    :try_end_4
    .catch Landroid/content/ActivityNotFoundException; {:try_start_4 .. :try_end_4} :catch_3

    goto/16 :goto_1

    .line 382
    :catch_3
    move-exception v1

    .line 383
    .restart local v1    # "exception":Landroid/content/ActivityNotFoundException;
    sget-object v5, Lcom/sec/android/cover/miniviewcover/MiniViewCoverMainFrameView;->TAG:Ljava/lang/String;

    const-string v6, "ActivityNotFoundException !!"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 387
    .end local v1    # "exception":Landroid/content/ActivityNotFoundException;
    .end local v2    # "intent":Landroid/content/Intent;
    :cond_7
    new-instance v2, Landroid/content/Intent;

    const-string v6, "android.intent.action.MAIN"

    invoke-direct {v2, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 388
    .restart local v2    # "intent":Landroid/content/Intent;
    invoke-virtual {v2, v11}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 389
    const-string v6, "com.android.mms"

    invoke-virtual {v2, v6}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 390
    const-string v6, "vnd.android-dir/mms-sms"

    invoke-virtual {v2, v6}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 391
    const-string v6, "fromScover"

    invoke-virtual {v2, v6, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 393
    :try_start_5
    iget-object v5, p0, Lcom/sec/android/cover/miniviewcover/MiniViewCoverMainFrameView;->mContext:Landroid/content/Context;

    sget-object v6, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    invoke-virtual {v5, v2, v6}, Landroid/content/Context;->startActivityAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V
    :try_end_5
    .catch Landroid/content/ActivityNotFoundException; {:try_start_5 .. :try_end_5} :catch_4

    goto/16 :goto_1

    .line 394
    :catch_4
    move-exception v1

    .line 395
    .restart local v1    # "exception":Landroid/content/ActivityNotFoundException;
    sget-object v5, Lcom/sec/android/cover/miniviewcover/MiniViewCoverMainFrameView;->TAG:Ljava/lang/String;

    const-string v6, "ActivityNotFoundException !!"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 403
    .end local v1    # "exception":Landroid/content/ActivityNotFoundException;
    .end local v2    # "intent":Landroid/content/Intent;
    :cond_8
    invoke-direct {p0}, Lcom/sec/android/cover/miniviewcover/MiniViewCoverMainFrameView;->showCoverUi()V

    .line 404
    invoke-static {}, Landroid/hardware/input/InputManager;->getInstance()Landroid/hardware/input/InputManager;

    move-result-object v5

    invoke-virtual {v5}, Landroid/hardware/input/InputManager;->coverEventFinished()V

    goto/16 :goto_2
.end method

.method protected onDetachedFromWindow()V
    .locals 2

    .prologue
    .line 309
    sget-object v0, Lcom/sec/android/cover/miniviewcover/MiniViewCoverMainFrameView;->TAG:Ljava/lang/String;

    const-string v1, "onDetachedFromWindow"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 310
    invoke-super {p0}, Lcom/sec/android/cover/CoverMainFrameView;->onDetachedFromWindow()V

    .line 312
    iget-object v0, p0, Lcom/sec/android/cover/miniviewcover/MiniViewCoverMainFrameView;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/sec/android/cover/monitor/CoverUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/sec/android/cover/monitor/CoverUpdateMonitor;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/cover/miniviewcover/MiniViewCoverMainFrameView;->mUpdateMonitorCallback:Lcom/sec/android/cover/monitor/CoverUpdateMonitorCallback;

    invoke-virtual {v0, v1}, Lcom/sec/android/cover/monitor/CoverUpdateMonitor;->unregisterCallback(Lcom/sec/android/cover/monitor/CoverUpdateMonitorCallback;)V

    .line 313
    iget-object v0, p0, Lcom/sec/android/cover/miniviewcover/MiniViewCoverMainFrameView;->mPowerManager:Lcom/sec/android/cover/manager/CoverPowerManager;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/sec/android/cover/manager/CoverPowerManager;->setTimerExpireHandler(Lcom/sec/android/cover/manager/CoverPowerManager$OnScreenOffTimerHandler;)V

    .line 314
    return-void
.end method

.method protected onFinishInflate()V
    .locals 5

    .prologue
    const/4 v2, 0x1

    .line 240
    invoke-super {p0}, Lcom/sec/android/cover/CoverMainFrameView;->onFinishInflate()V

    .line 241
    sget-object v1, Lcom/sec/android/cover/miniviewcover/MiniViewCoverMainFrameView;->TAG:Ljava/lang/String;

    const-string v3, "onFinishInflate()"

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 242
    iget-object v1, p0, Lcom/sec/android/cover/miniviewcover/MiniViewCoverMainFrameView;->mPowerManager:Lcom/sec/android/cover/manager/CoverPowerManager;

    iget-object v3, p0, Lcom/sec/android/cover/miniviewcover/MiniViewCoverMainFrameView;->mScreenOffTimerHandler:Lcom/sec/android/cover/manager/CoverPowerManager$OnScreenOffTimerHandler;

    invoke-virtual {v1, v3}, Lcom/sec/android/cover/manager/CoverPowerManager;->setTimerExpireHandler(Lcom/sec/android/cover/manager/CoverPowerManager$OnScreenOffTimerHandler;)V

    .line 244
    iget-object v1, p0, Lcom/sec/android/cover/miniviewcover/MiniViewCoverMainFrameView;->mPageControlView:Lcom/sec/android/cover/miniviewcover/MiniViewCoverPageView;

    if-eqz v1, :cond_0

    .line 245
    iget-object v1, p0, Lcom/sec/android/cover/miniviewcover/MiniViewCoverMainFrameView;->mPageControlView:Lcom/sec/android/cover/miniviewcover/MiniViewCoverPageView;

    invoke-virtual {v1}, Lcom/sec/android/cover/miniviewcover/MiniViewCoverPageView;->removeAllViews()V

    .line 247
    :cond_0
    sget v1, Lcom/sec/android/sviewcover/R$id;->mini_view_cover_pager:I

    invoke-virtual {p0, v1}, Lcom/sec/android/cover/miniviewcover/MiniViewCoverMainFrameView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/sec/android/cover/miniviewcover/MiniViewCoverPageView;

    iput-object v1, p0, Lcom/sec/android/cover/miniviewcover/MiniViewCoverMainFrameView;->mPageControlView:Lcom/sec/android/cover/miniviewcover/MiniViewCoverPageView;

    .line 248
    iget-object v1, p0, Lcom/sec/android/cover/miniviewcover/MiniViewCoverMainFrameView;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/sec/android/cover/CoverUtils;->isKidsMode(Landroid/content/Context;)Z

    move-result v1

    iput-boolean v1, p0, Lcom/sec/android/cover/miniviewcover/MiniViewCoverMainFrameView;->mIsKidsMode:Z

    .line 250
    :try_start_0
    iget-object v1, p0, Lcom/sec/android/cover/miniviewcover/MiniViewCoverMainFrameView;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v3, "lock_screen_show_notifications"

    const/4 v4, -0x2

    invoke-static {v1, v3, v4}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-ne v1, v2, :cond_2

    move v1, v2

    :goto_0
    iput-boolean v1, p0, Lcom/sec/android/cover/miniviewcover/MiniViewCoverMainFrameView;->mNotificationOnLockscreen:Z
    :try_end_0
    .catch Landroid/provider/Settings$SettingNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 257
    :goto_1
    iget-object v1, p0, Lcom/sec/android/cover/miniviewcover/MiniViewCoverMainFrameView;->mPageControlView:Lcom/sec/android/cover/miniviewcover/MiniViewCoverPageView;

    if-eqz v1, :cond_1

    .line 259
    new-instance v1, Lcom/sec/android/cover/miniviewcover/MiniViewCoverMainPage;

    iget-object v3, p0, Lcom/sec/android/cover/miniviewcover/MiniViewCoverMainFrameView;->mContext:Landroid/content/Context;

    invoke-direct {v1, v3}, Lcom/sec/android/cover/miniviewcover/MiniViewCoverMainPage;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/sec/android/cover/miniviewcover/MiniViewCoverMainFrameView;->mMainPage:Lcom/sec/android/cover/miniviewcover/MiniViewCoverMainPage;

    .line 260
    new-instance v1, Lcom/sec/android/cover/miniviewcover/MiniViewCoverMusicPlayerPage;

    iget-object v3, p0, Lcom/sec/android/cover/miniviewcover/MiniViewCoverMainFrameView;->mContext:Landroid/content/Context;

    invoke-direct {v1, v3}, Lcom/sec/android/cover/miniviewcover/MiniViewCoverMusicPlayerPage;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/sec/android/cover/miniviewcover/MiniViewCoverMainFrameView;->mMusicControllerPage:Lcom/sec/android/cover/miniviewcover/MiniViewCoverMusicPlayerPage;

    .line 262
    iget-object v1, p0, Lcom/sec/android/cover/miniviewcover/MiniViewCoverMainFrameView;->mContext:Landroid/content/Context;

    sget v3, Lcom/sec/android/sviewcover/R$layout;->mini_view_cover_setting_page:I

    const/4 v4, 0x0

    invoke-static {v1, v3, v4}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/sec/android/cover/miniviewcover/MiniViewCoverMainFrameView;->mSettingPage:Landroid/view/View;

    .line 263
    iget-object v1, p0, Lcom/sec/android/cover/miniviewcover/MiniViewCoverMainFrameView;->mSettingPage:Landroid/view/View;

    sget v3, Lcom/sec/android/sviewcover/R$id;->mini_cover_settings_description:I

    invoke-virtual {v1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/sec/android/cover/miniviewcover/MiniViewCoverMainFrameView;->mSettingsDescriptionText:Landroid/widget/TextView;

    .line 264
    new-instance v1, Lcom/sec/android/cover/miniviewcover/MiniViewCoverMissedEventPage;

    iget-object v3, p0, Lcom/sec/android/cover/miniviewcover/MiniViewCoverMainFrameView;->mContext:Landroid/content/Context;

    invoke-direct {v1, v3}, Lcom/sec/android/cover/miniviewcover/MiniViewCoverMissedEventPage;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/sec/android/cover/miniviewcover/MiniViewCoverMainFrameView;->mMissedEventPage:Lcom/sec/android/cover/miniviewcover/MiniViewCoverMissedEventPage;

    .line 265
    new-instance v1, Lcom/sec/android/cover/miniviewcover/MiniViewCoverWeatherHealthPage;

    iget-object v3, p0, Lcom/sec/android/cover/miniviewcover/MiniViewCoverMainFrameView;->mContext:Landroid/content/Context;

    invoke-direct {v1, v3}, Lcom/sec/android/cover/miniviewcover/MiniViewCoverWeatherHealthPage;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/sec/android/cover/miniviewcover/MiniViewCoverMainFrameView;->mWeatherHealthPage:Lcom/sec/android/cover/miniviewcover/MiniViewCoverWeatherHealthPage;

    .line 267
    iget-object v1, p0, Lcom/sec/android/cover/miniviewcover/MiniViewCoverMainFrameView;->mPageControlView:Lcom/sec/android/cover/miniviewcover/MiniViewCoverPageView;

    invoke-virtual {v1, p0}, Lcom/sec/android/cover/miniviewcover/MiniViewCoverPageView;->setSViewCoverView(Lcom/sec/android/cover/miniviewcover/MiniViewCoverMainFrameView;)V

    .line 268
    iget-object v1, p0, Lcom/sec/android/cover/miniviewcover/MiniViewCoverMainFrameView;->mPageControlView:Lcom/sec/android/cover/miniviewcover/MiniViewCoverPageView;

    invoke-virtual {v1, p0}, Lcom/sec/android/cover/miniviewcover/MiniViewCoverPageView;->setPageSwitchListener(Lcom/sec/android/cover/widget/PagedView$PageSwitchListener;)V

    .line 269
    iget-object v1, p0, Lcom/sec/android/cover/miniviewcover/MiniViewCoverMainFrameView;->mPageControlView:Lcom/sec/android/cover/miniviewcover/MiniViewCoverPageView;

    invoke-virtual {v1, v2}, Lcom/sec/android/cover/miniviewcover/MiniViewCoverPageView;->setEnableTouchEvent(Z)V

    .line 271
    iget-object v1, p0, Lcom/sec/android/cover/miniviewcover/MiniViewCoverMainFrameView;->mMainPage:Lcom/sec/android/cover/miniviewcover/MiniViewCoverMainPage;

    invoke-virtual {v1, p0}, Lcom/sec/android/cover/miniviewcover/MiniViewCoverMainPage;->setMiniCoverView(Lcom/sec/android/cover/miniviewcover/MiniViewCoverMainFrameView;)V

    .line 272
    iget-object v1, p0, Lcom/sec/android/cover/miniviewcover/MiniViewCoverMainFrameView;->mMissedEventPage:Lcom/sec/android/cover/miniviewcover/MiniViewCoverMissedEventPage;

    invoke-virtual {v1, p0}, Lcom/sec/android/cover/miniviewcover/MiniViewCoverMissedEventPage;->setMiniCoverView(Lcom/sec/android/cover/miniviewcover/MiniViewCoverMainFrameView;)V

    .line 273
    iget-object v1, p0, Lcom/sec/android/cover/miniviewcover/MiniViewCoverMainFrameView;->mMusicControllerPage:Lcom/sec/android/cover/miniviewcover/MiniViewCoverMusicPlayerPage;

    invoke-virtual {v1, p0}, Lcom/sec/android/cover/miniviewcover/MiniViewCoverMusicPlayerPage;->setMiniCoverView(Lcom/sec/android/cover/miniviewcover/MiniViewCoverMainFrameView;)V

    .line 275
    iget-object v1, p0, Lcom/sec/android/cover/miniviewcover/MiniViewCoverMainFrameView;->mMissedEventPage:Lcom/sec/android/cover/miniviewcover/MiniViewCoverMissedEventPage;

    new-instance v2, Lcom/sec/android/cover/miniviewcover/MiniViewCoverMainFrameView$4;

    invoke-direct {v2, p0}, Lcom/sec/android/cover/miniviewcover/MiniViewCoverMainFrameView$4;-><init>(Lcom/sec/android/cover/miniviewcover/MiniViewCoverMainFrameView;)V

    invoke-virtual {v1, v2}, Lcom/sec/android/cover/miniviewcover/MiniViewCoverMissedEventPage;->setOnMissedEventClickListener(Lcom/sec/android/cover/miniviewcover/MiniViewCoverMissedEventPage$OnMissedEventClickListenr;)V

    .line 281
    invoke-virtual {p0}, Lcom/sec/android/cover/miniviewcover/MiniViewCoverMainFrameView;->updateMissedEvent()V

    .line 282
    invoke-direct {p0}, Lcom/sec/android/cover/miniviewcover/MiniViewCoverMainFrameView;->updatePage()V

    .line 283
    invoke-direct {p0}, Lcom/sec/android/cover/miniviewcover/MiniViewCoverMainFrameView;->setMiniCoverWallpaper()V

    .line 284
    invoke-direct {p0}, Lcom/sec/android/cover/miniviewcover/MiniViewCoverMainFrameView;->checkCharging()Z

    .line 285
    invoke-direct {p0}, Lcom/sec/android/cover/miniviewcover/MiniViewCoverMainFrameView;->updateSettingsText()V

    .line 288
    :cond_1
    invoke-direct {p0}, Lcom/sec/android/cover/miniviewcover/MiniViewCoverMainFrameView;->requestRemoteViews()V

    .line 289
    return-void

    .line 250
    :cond_2
    const/4 v1, 0x0

    goto :goto_0

    .line 252
    :catch_0
    move-exception v0

    .line 253
    .local v0, "e":Landroid/provider/Settings$SettingNotFoundException;
    invoke-virtual {v0}, Landroid/provider/Settings$SettingNotFoundException;->printStackTrace()V

    goto :goto_1
.end method

.method public onPageSwitched(Landroid/view/View;I)V
    .locals 1
    .param p1, "newPage"    # Landroid/view/View;
    .param p2, "newPageIndex"    # I

    .prologue
    .line 547
    iget-object v0, p0, Lcom/sec/android/cover/miniviewcover/MiniViewCoverMainFrameView;->mSettingPage:Landroid/view/View;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/sec/android/cover/miniviewcover/MiniViewCoverMainFrameView;->mSettingPage:Landroid/view/View;

    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 548
    sget-object v0, Lcom/sec/android/cover/miniviewcover/MiniViewCoverMainFrameView$PageIndex;->SettingPage:Lcom/sec/android/cover/miniviewcover/MiniViewCoverMainFrameView$PageIndex;

    iput-object v0, p0, Lcom/sec/android/cover/miniviewcover/MiniViewCoverMainFrameView;->mCurrentPageIndex:Lcom/sec/android/cover/miniviewcover/MiniViewCoverMainFrameView$PageIndex;

    .line 559
    :goto_0
    invoke-virtual {p0}, Lcom/sec/android/cover/miniviewcover/MiniViewCoverMainFrameView;->isCoverOpen()Z

    move-result v0

    if-nez v0, :cond_0

    .line 560
    iget-object v0, p0, Lcom/sec/android/cover/miniviewcover/MiniViewCoverMainFrameView;->mPowerManager:Lcom/sec/android/cover/manager/CoverPowerManager;

    invoke-virtual {v0}, Lcom/sec/android/cover/manager/CoverPowerManager;->resetScreenOffTimer()V

    .line 562
    :cond_0
    return-void

    .line 549
    :cond_1
    iget-object v0, p0, Lcom/sec/android/cover/miniviewcover/MiniViewCoverMainFrameView;->mMissedEventPage:Lcom/sec/android/cover/miniviewcover/MiniViewCoverMissedEventPage;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/sec/android/cover/miniviewcover/MiniViewCoverMainFrameView;->mMissedEventPage:Lcom/sec/android/cover/miniviewcover/MiniViewCoverMissedEventPage;

    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 550
    sget-object v0, Lcom/sec/android/cover/miniviewcover/MiniViewCoverMainFrameView$PageIndex;->MissedEventPage:Lcom/sec/android/cover/miniviewcover/MiniViewCoverMainFrameView$PageIndex;

    iput-object v0, p0, Lcom/sec/android/cover/miniviewcover/MiniViewCoverMainFrameView;->mCurrentPageIndex:Lcom/sec/android/cover/miniviewcover/MiniViewCoverMainFrameView$PageIndex;

    goto :goto_0

    .line 551
    :cond_2
    iget-object v0, p0, Lcom/sec/android/cover/miniviewcover/MiniViewCoverMainFrameView;->mMusicControllerPage:Lcom/sec/android/cover/miniviewcover/MiniViewCoverMusicPlayerPage;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/sec/android/cover/miniviewcover/MiniViewCoverMainFrameView;->mMusicControllerPage:Lcom/sec/android/cover/miniviewcover/MiniViewCoverMusicPlayerPage;

    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 552
    sget-object v0, Lcom/sec/android/cover/miniviewcover/MiniViewCoverMainFrameView$PageIndex;->MusicControllerPage:Lcom/sec/android/cover/miniviewcover/MiniViewCoverMainFrameView$PageIndex;

    iput-object v0, p0, Lcom/sec/android/cover/miniviewcover/MiniViewCoverMainFrameView;->mCurrentPageIndex:Lcom/sec/android/cover/miniviewcover/MiniViewCoverMainFrameView$PageIndex;

    goto :goto_0

    .line 553
    :cond_3
    iget-object v0, p0, Lcom/sec/android/cover/miniviewcover/MiniViewCoverMainFrameView;->mWeatherHealthPage:Lcom/sec/android/cover/miniviewcover/MiniViewCoverWeatherHealthPage;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/sec/android/cover/miniviewcover/MiniViewCoverMainFrameView;->mWeatherHealthPage:Lcom/sec/android/cover/miniviewcover/MiniViewCoverWeatherHealthPage;

    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 554
    sget-object v0, Lcom/sec/android/cover/miniviewcover/MiniViewCoverMainFrameView$PageIndex;->WeatherHealthPage:Lcom/sec/android/cover/miniviewcover/MiniViewCoverMainFrameView$PageIndex;

    iput-object v0, p0, Lcom/sec/android/cover/miniviewcover/MiniViewCoverMainFrameView;->mCurrentPageIndex:Lcom/sec/android/cover/miniviewcover/MiniViewCoverMainFrameView$PageIndex;

    goto :goto_0

    .line 556
    :cond_4
    sget-object v0, Lcom/sec/android/cover/miniviewcover/MiniViewCoverMainFrameView$PageIndex;->HomePage:Lcom/sec/android/cover/miniviewcover/MiniViewCoverMainFrameView$PageIndex;

    iput-object v0, p0, Lcom/sec/android/cover/miniviewcover/MiniViewCoverMainFrameView;->mCurrentPageIndex:Lcom/sec/android/cover/miniviewcover/MiniViewCoverMainFrameView$PageIndex;

    goto :goto_0
.end method

.method public onPageSwitching(Landroid/view/View;I)V
    .locals 0
    .param p1, "newPage"    # Landroid/view/View;
    .param p2, "newPageIndex"    # I

    .prologue
    .line 566
    return-void
.end method

.method public onWindowFocusChanged(Z)V
    .locals 1
    .param p1, "hasWindowFocus"    # Z

    .prologue
    .line 293
    if-eqz p1, :cond_0

    .line 294
    iget-object v0, p0, Lcom/sec/android/cover/miniviewcover/MiniViewCoverMainFrameView;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/sec/android/cover/manager/CoverPowerManager;->getInstance(Landroid/content/Context;)Lcom/sec/android/cover/manager/CoverPowerManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/cover/manager/CoverPowerManager;->resetScreenOffTimer()V

    .line 296
    :cond_0
    invoke-super {p0, p1}, Lcom/sec/android/cover/CoverMainFrameView;->onWindowFocusChanged(Z)V

    .line 297
    return-void
.end method

.method public setPendingIntent(Landroid/app/PendingIntent;)V
    .locals 0
    .param p1, "i"    # Landroid/app/PendingIntent;

    .prologue
    .line 317
    iput-object p1, p0, Lcom/sec/android/cover/miniviewcover/MiniViewCoverMainFrameView;->mPendingIntent:Landroid/app/PendingIntent;

    .line 318
    return-void
.end method

.method public updateMissedEvent()V
    .locals 12

    .prologue
    const/4 v3, 0x1

    .line 744
    sget-object v2, Lcom/sec/android/cover/miniviewcover/MiniViewCoverMainFrameView;->TAG:Ljava/lang/String;

    const-string v4, "updateMissedEvent()"

    invoke-static {v2, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 745
    iget-object v2, p0, Lcom/sec/android/cover/miniviewcover/MiniViewCoverMainFrameView;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/sec/android/cover/manager/CoverRemoteViewManager;->getInstance(Landroid/content/Context;)Lcom/sec/android/cover/manager/CoverRemoteViewManager;

    move-result-object v10

    .line 748
    .local v10, "coverRemoteViewManager":Lcom/sec/android/cover/manager/CoverRemoteViewManager;
    const-string v2, "new_message"

    invoke-virtual {v10, v2}, Lcom/sec/android/cover/manager/CoverRemoteViewManager;->getRemoteViewInfo(Ljava/lang/String;)Lcom/sec/android/cover/monitor/CoverUpdateMonitor$RemoteViewInfo;

    move-result-object v11

    .line 750
    .local v11, "messageRemoteViewInfo":Lcom/sec/android/cover/monitor/CoverUpdateMonitor$RemoteViewInfo;
    const-string v2, "missed_call"

    invoke-virtual {v10, v2}, Lcom/sec/android/cover/manager/CoverRemoteViewManager;->getRemoteViewInfo(Ljava/lang/String;)Lcom/sec/android/cover/monitor/CoverUpdateMonitor$RemoteViewInfo;

    move-result-object v0

    .line 753
    .local v0, "callRemoteViewInfo":Lcom/sec/android/cover/monitor/CoverUpdateMonitor$RemoteViewInfo;
    iget-object v2, p0, Lcom/sec/android/cover/miniviewcover/MiniViewCoverMainFrameView;->mMissedEventManager:Lcom/sec/android/cover/manager/CoverMissedEventManager;

    invoke-virtual {v2}, Lcom/sec/android/cover/manager/CoverMissedEventManager;->clearMissedEvent()V

    .line 756
    if-eqz v11, :cond_0

    iget-boolean v2, v11, Lcom/sec/android/cover/monitor/CoverUpdateMonitor$RemoteViewInfo;->mVisibility:Z

    if-eqz v2, :cond_0

    .line 757
    new-instance v1, Lcom/sec/android/cover/manager/CoverMissedEventManager$RemoteViewsItem;

    iget-object v2, p0, Lcom/sec/android/cover/miniviewcover/MiniViewCoverMainFrameView;->mMissedEventManager:Lcom/sec/android/cover/manager/CoverMissedEventManager;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-wide/16 v4, 0x1

    iget-object v6, v11, Lcom/sec/android/cover/monitor/CoverUpdateMonitor$RemoteViewInfo;->mRemoteViews:Landroid/widget/RemoteViews;

    iget-object v7, v11, Lcom/sec/android/cover/monitor/CoverUpdateMonitor$RemoteViewInfo;->mPendingIntent:Landroid/app/PendingIntent;

    iget v8, v11, Lcom/sec/android/cover/monitor/CoverUpdateMonitor$RemoteViewInfo;->mCount:I

    iget-object v9, v11, Lcom/sec/android/cover/monitor/CoverUpdateMonitor$RemoteViewInfo;->mType:Ljava/lang/String;

    invoke-direct/range {v1 .. v9}, Lcom/sec/android/cover/manager/CoverMissedEventManager$RemoteViewsItem;-><init>(Lcom/sec/android/cover/manager/CoverMissedEventManager;IJLandroid/widget/RemoteViews;Landroid/app/PendingIntent;ILjava/lang/String;)V

    .line 761
    .local v1, "remoteViewsItem":Lcom/sec/android/cover/manager/CoverMissedEventManager$RemoteViewsItem;
    iget-object v2, p0, Lcom/sec/android/cover/miniviewcover/MiniViewCoverMainFrameView;->mMissedEventManager:Lcom/sec/android/cover/manager/CoverMissedEventManager;

    invoke-virtual {v2, v1}, Lcom/sec/android/cover/manager/CoverMissedEventManager;->addMissedEvent(Lcom/sec/android/cover/manager/CoverMissedEventManager$MissedEventItem;)V

    .line 765
    .end local v1    # "remoteViewsItem":Lcom/sec/android/cover/manager/CoverMissedEventManager$RemoteViewsItem;
    :cond_0
    if-eqz v0, :cond_1

    iget-boolean v2, v0, Lcom/sec/android/cover/monitor/CoverUpdateMonitor$RemoteViewInfo;->mVisibility:Z

    if-eqz v2, :cond_1

    .line 766
    new-instance v1, Lcom/sec/android/cover/manager/CoverMissedEventManager$RemoteViewsItem;

    iget-object v2, p0, Lcom/sec/android/cover/miniviewcover/MiniViewCoverMainFrameView;->mMissedEventManager:Lcom/sec/android/cover/manager/CoverMissedEventManager;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-wide/16 v4, 0x64

    iget-object v6, v0, Lcom/sec/android/cover/monitor/CoverUpdateMonitor$RemoteViewInfo;->mRemoteViews:Landroid/widget/RemoteViews;

    iget-object v7, v0, Lcom/sec/android/cover/monitor/CoverUpdateMonitor$RemoteViewInfo;->mPendingIntent:Landroid/app/PendingIntent;

    iget v8, v0, Lcom/sec/android/cover/monitor/CoverUpdateMonitor$RemoteViewInfo;->mCount:I

    iget-object v9, v0, Lcom/sec/android/cover/monitor/CoverUpdateMonitor$RemoteViewInfo;->mType:Ljava/lang/String;

    invoke-direct/range {v1 .. v9}, Lcom/sec/android/cover/manager/CoverMissedEventManager$RemoteViewsItem;-><init>(Lcom/sec/android/cover/manager/CoverMissedEventManager;IJLandroid/widget/RemoteViews;Landroid/app/PendingIntent;ILjava/lang/String;)V

    .line 770
    .restart local v1    # "remoteViewsItem":Lcom/sec/android/cover/manager/CoverMissedEventManager$RemoteViewsItem;
    iget-object v2, p0, Lcom/sec/android/cover/miniviewcover/MiniViewCoverMainFrameView;->mMissedEventManager:Lcom/sec/android/cover/manager/CoverMissedEventManager;

    invoke-virtual {v2, v1}, Lcom/sec/android/cover/manager/CoverMissedEventManager;->addMissedEvent(Lcom/sec/android/cover/manager/CoverMissedEventManager$MissedEventItem;)V

    .line 774
    .end local v1    # "remoteViewsItem":Lcom/sec/android/cover/manager/CoverMissedEventManager$RemoteViewsItem;
    :cond_1
    return-void
.end method
