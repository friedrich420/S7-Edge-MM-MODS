.class public Lcom/sec/android/cover/sviewcover/SViewCoverView;
.super Lcom/sec/android/cover/CoverMainFrameView;
.source "SViewCoverView.java"

# interfaces
.implements Lcom/sec/android/cover/widget/CoverHideEffectView$SViewCoverHideAnimationListener;
.implements Lcom/sec/android/cover/widget/PagedView$PageSwitchListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/cover/sviewcover/SViewCoverView$6;,
        Lcom/sec/android/cover/sviewcover/SViewCoverView$PageIndex;
    }
.end annotation


# instance fields
.field private mActivityManager:Landroid/app/ActivityManager;

.field private mCameraPage:Lcom/sec/android/cover/sviewcover/SViewCoverCameraArea;

.field private mCoverState:Lcom/samsung/android/cover/CoverState;

.field private mCurrentPageIndex:Lcom/sec/android/cover/sviewcover/SViewCoverView$PageIndex;

.field private mCurrentUiAlpha:F

.field private mIsAddedMissedEventWidget:Z

.field private mKeyguardUpdateMonitorCallback:Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

.field private mMainPage:Lcom/sec/android/cover/sviewcover/SViewCoverMainPage;

.field private mNeedToAddMissedEventWidget:Z

.field private mNormalContentRootView:Landroid/view/ViewGroup;

.field private mPendingIntent:Landroid/content/Intent;

.field private mPinWindowContentRootView:Landroid/view/ViewGroup;

.field private mSViewCoverHideEffectView:Lcom/sec/android/cover/widget/CoverHideEffectView;

.field private mSViewCoverPagerNavigation:Lcom/sec/android/cover/sviewcover/SViewCoverPagerNavigation;

.field private mSViewCoverUnlockArea:Lcom/sec/android/cover/sviewcover/SViewCoverAbstractUnlockArea;

.field private mSViewPager:Lcom/sec/android/cover/sviewcover/SViewCoverPager;

.field private mScreenOffTimerHandler:Lcom/sec/android/cover/manager/CoverPowerManager$OnScreenOffTimerHandler;

.field private mShortcuts:Lcom/sec/android/cover/sviewcover/SViewCoverShortcuts;

.field private mStatusBarState:I

.field private mUpdateMonitorCallback:Lcom/sec/android/cover/monitor/CoverUpdateMonitorCallback;

.field private mVoiceRecorderDialogContainer:Lcom/sec/android/cover/widget/RemoteViewContainerView;

.field private mVolumeWarningRemoteViewContainer:Lcom/sec/android/cover/widget/RemoteViewContainerView;

.field private mWallpaperView:Lcom/sec/android/cover/sviewcover/SViewCoverWallpaperView;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 302
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/sec/android/cover/sviewcover/SViewCoverView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 303
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 306
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/sec/android/cover/sviewcover/SViewCoverView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 307
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 310
    invoke-direct {p0, p1, p2, p3}, Lcom/sec/android/cover/CoverMainFrameView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 72
    iput-object v2, p0, Lcom/sec/android/cover/sviewcover/SViewCoverView;->mActivityManager:Landroid/app/ActivityManager;

    .line 74
    iput-boolean v1, p0, Lcom/sec/android/cover/sviewcover/SViewCoverView;->mNeedToAddMissedEventWidget:Z

    .line 75
    iput-boolean v1, p0, Lcom/sec/android/cover/sviewcover/SViewCoverView;->mIsAddedMissedEventWidget:Z

    .line 94
    sget-object v0, Lcom/sec/android/cover/sviewcover/SViewCoverView$PageIndex;->HomePage:Lcom/sec/android/cover/sviewcover/SViewCoverView$PageIndex;

    iput-object v0, p0, Lcom/sec/android/cover/sviewcover/SViewCoverView;->mCurrentPageIndex:Lcom/sec/android/cover/sviewcover/SViewCoverView$PageIndex;

    .line 95
    new-instance v0, Lcom/samsung/android/cover/CoverState;

    invoke-direct {v0}, Lcom/samsung/android/cover/CoverState;-><init>()V

    iput-object v0, p0, Lcom/sec/android/cover/sviewcover/SViewCoverView;->mCoverState:Lcom/samsung/android/cover/CoverState;

    .line 96
    iput-object v2, p0, Lcom/sec/android/cover/sviewcover/SViewCoverView;->mPendingIntent:Landroid/content/Intent;

    .line 98
    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Lcom/sec/android/cover/sviewcover/SViewCoverView;->mCurrentUiAlpha:F

    .line 100
    iput v1, p0, Lcom/sec/android/cover/sviewcover/SViewCoverView;->mStatusBarState:I

    .line 102
    new-instance v0, Lcom/sec/android/cover/sviewcover/SViewCoverView$1;

    invoke-direct {v0, p0}, Lcom/sec/android/cover/sviewcover/SViewCoverView$1;-><init>(Lcom/sec/android/cover/sviewcover/SViewCoverView;)V

    iput-object v0, p0, Lcom/sec/android/cover/sviewcover/SViewCoverView;->mUpdateMonitorCallback:Lcom/sec/android/cover/monitor/CoverUpdateMonitorCallback;

    .line 275
    new-instance v0, Lcom/sec/android/cover/sviewcover/SViewCoverView$2;

    invoke-direct {v0, p0}, Lcom/sec/android/cover/sviewcover/SViewCoverView$2;-><init>(Lcom/sec/android/cover/sviewcover/SViewCoverView;)V

    iput-object v0, p0, Lcom/sec/android/cover/sviewcover/SViewCoverView;->mKeyguardUpdateMonitorCallback:Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

    .line 284
    new-instance v0, Lcom/sec/android/cover/sviewcover/SViewCoverView$3;

    invoke-direct {v0, p0}, Lcom/sec/android/cover/sviewcover/SViewCoverView$3;-><init>(Lcom/sec/android/cover/sviewcover/SViewCoverView;)V

    iput-object v0, p0, Lcom/sec/android/cover/sviewcover/SViewCoverView;->mScreenOffTimerHandler:Lcom/sec/android/cover/manager/CoverPowerManager$OnScreenOffTimerHandler;

    .line 312
    iput-object p1, p0, Lcom/sec/android/cover/sviewcover/SViewCoverView;->mContext:Landroid/content/Context;

    .line 313
    iget-object v0, p0, Lcom/sec/android/cover/sviewcover/SViewCoverView;->mContext:Landroid/content/Context;

    const-string v1, "activity"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    iput-object v0, p0, Lcom/sec/android/cover/sviewcover/SViewCoverView;->mActivityManager:Landroid/app/ActivityManager;

    .line 314
    return-void
.end method

.method static synthetic access$000(Lcom/sec/android/cover/sviewcover/SViewCoverView;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/sec/android/cover/sviewcover/SViewCoverView;

    .prologue
    .line 63
    iget-object v0, p0, Lcom/sec/android/cover/sviewcover/SViewCoverView;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$100(Lcom/sec/android/cover/sviewcover/SViewCoverView;)V
    .locals 0
    .param p0, "x0"    # Lcom/sec/android/cover/sviewcover/SViewCoverView;

    .prologue
    .line 63
    invoke-direct {p0}, Lcom/sec/android/cover/sviewcover/SViewCoverView;->requestRemoteViews()V

    return-void
.end method

.method static synthetic access$1000(Lcom/sec/android/cover/sviewcover/SViewCoverView;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/sec/android/cover/sviewcover/SViewCoverView;

    .prologue
    .line 63
    iget-object v0, p0, Lcom/sec/android/cover/sviewcover/SViewCoverView;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$1100(Lcom/sec/android/cover/sviewcover/SViewCoverView;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/sec/android/cover/sviewcover/SViewCoverView;

    .prologue
    .line 63
    iget-object v0, p0, Lcom/sec/android/cover/sviewcover/SViewCoverView;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$1200(Lcom/sec/android/cover/sviewcover/SViewCoverView;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/sec/android/cover/sviewcover/SViewCoverView;

    .prologue
    .line 63
    iget-object v0, p0, Lcom/sec/android/cover/sviewcover/SViewCoverView;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$1300(Lcom/sec/android/cover/sviewcover/SViewCoverView;)Lcom/sec/android/cover/sviewcover/SViewCoverWallpaperView;
    .locals 1
    .param p0, "x0"    # Lcom/sec/android/cover/sviewcover/SViewCoverView;

    .prologue
    .line 63
    iget-object v0, p0, Lcom/sec/android/cover/sviewcover/SViewCoverView;->mWallpaperView:Lcom/sec/android/cover/sviewcover/SViewCoverWallpaperView;

    return-object v0
.end method

.method static synthetic access$1400(Lcom/sec/android/cover/sviewcover/SViewCoverView;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/sec/android/cover/sviewcover/SViewCoverView;

    .prologue
    .line 63
    iget-object v0, p0, Lcom/sec/android/cover/sviewcover/SViewCoverView;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$1500(Lcom/sec/android/cover/sviewcover/SViewCoverView;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/sec/android/cover/sviewcover/SViewCoverView;

    .prologue
    .line 63
    iget-object v0, p0, Lcom/sec/android/cover/sviewcover/SViewCoverView;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$1600(Lcom/sec/android/cover/sviewcover/SViewCoverView;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/sec/android/cover/sviewcover/SViewCoverView;

    .prologue
    .line 63
    iget-object v0, p0, Lcom/sec/android/cover/sviewcover/SViewCoverView;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$1700(Lcom/sec/android/cover/sviewcover/SViewCoverView;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/sec/android/cover/sviewcover/SViewCoverView;

    .prologue
    .line 63
    iget-object v0, p0, Lcom/sec/android/cover/sviewcover/SViewCoverView;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$1800(Lcom/sec/android/cover/sviewcover/SViewCoverView;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/sec/android/cover/sviewcover/SViewCoverView;

    .prologue
    .line 63
    iget-object v0, p0, Lcom/sec/android/cover/sviewcover/SViewCoverView;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$1900(Lcom/sec/android/cover/sviewcover/SViewCoverView;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/sec/android/cover/sviewcover/SViewCoverView;

    .prologue
    .line 63
    iget-object v0, p0, Lcom/sec/android/cover/sviewcover/SViewCoverView;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$200(Lcom/sec/android/cover/sviewcover/SViewCoverView;)Lcom/sec/android/cover/sviewcover/SViewCoverPager;
    .locals 1
    .param p0, "x0"    # Lcom/sec/android/cover/sviewcover/SViewCoverView;

    .prologue
    .line 63
    iget-object v0, p0, Lcom/sec/android/cover/sviewcover/SViewCoverView;->mSViewPager:Lcom/sec/android/cover/sviewcover/SViewCoverPager;

    return-object v0
.end method

.method static synthetic access$2000(Lcom/sec/android/cover/sviewcover/SViewCoverView;)I
    .locals 1
    .param p0, "x0"    # Lcom/sec/android/cover/sviewcover/SViewCoverView;

    .prologue
    .line 63
    iget v0, p0, Lcom/sec/android/cover/sviewcover/SViewCoverView;->mStatusBarState:I

    return v0
.end method

.method static synthetic access$2100(Lcom/sec/android/cover/sviewcover/SViewCoverView;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/sec/android/cover/sviewcover/SViewCoverView;

    .prologue
    .line 63
    iget-object v0, p0, Lcom/sec/android/cover/sviewcover/SViewCoverView;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$2200(Lcom/sec/android/cover/sviewcover/SViewCoverView;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/sec/android/cover/sviewcover/SViewCoverView;

    .prologue
    .line 63
    iget-object v0, p0, Lcom/sec/android/cover/sviewcover/SViewCoverView;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$2300(Lcom/sec/android/cover/sviewcover/SViewCoverView;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/sec/android/cover/sviewcover/SViewCoverView;

    .prologue
    .line 63
    iget-object v0, p0, Lcom/sec/android/cover/sviewcover/SViewCoverView;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$2400(Lcom/sec/android/cover/sviewcover/SViewCoverView;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/sec/android/cover/sviewcover/SViewCoverView;

    .prologue
    .line 63
    iget-object v0, p0, Lcom/sec/android/cover/sviewcover/SViewCoverView;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$2500()I
    .locals 1

    .prologue
    .line 63
    sget v0, Lcom/sec/android/cover/sviewcover/SViewCoverView;->mDelayedShowingSequence:I

    return v0
.end method

.method static synthetic access$2600()I
    .locals 1

    .prologue
    .line 63
    sget v0, Lcom/sec/android/cover/sviewcover/SViewCoverView;->mDelayedShowingSequence:I

    return v0
.end method

.method static synthetic access$2700(Lcom/sec/android/cover/sviewcover/SViewCoverView;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/sec/android/cover/sviewcover/SViewCoverView;

    .prologue
    .line 63
    iget-object v0, p0, Lcom/sec/android/cover/sviewcover/SViewCoverView;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$2800(Lcom/sec/android/cover/sviewcover/SViewCoverView;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/sec/android/cover/sviewcover/SViewCoverView;

    .prologue
    .line 63
    iget-object v0, p0, Lcom/sec/android/cover/sviewcover/SViewCoverView;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$300(Lcom/sec/android/cover/sviewcover/SViewCoverView;)Lcom/sec/android/cover/widget/CoverHideEffectView;
    .locals 1
    .param p0, "x0"    # Lcom/sec/android/cover/sviewcover/SViewCoverView;

    .prologue
    .line 63
    iget-object v0, p0, Lcom/sec/android/cover/sviewcover/SViewCoverView;->mSViewCoverHideEffectView:Lcom/sec/android/cover/widget/CoverHideEffectView;

    return-object v0
.end method

.method static synthetic access$400(Lcom/sec/android/cover/sviewcover/SViewCoverView;)V
    .locals 0
    .param p0, "x0"    # Lcom/sec/android/cover/sviewcover/SViewCoverView;

    .prologue
    .line 63
    invoke-direct {p0}, Lcom/sec/android/cover/sviewcover/SViewCoverView;->makeSViewMeasureSpec()V

    return-void
.end method

.method static synthetic access$500(Lcom/sec/android/cover/sviewcover/SViewCoverView;)V
    .locals 0
    .param p0, "x0"    # Lcom/sec/android/cover/sviewcover/SViewCoverView;

    .prologue
    .line 63
    invoke-direct {p0}, Lcom/sec/android/cover/sviewcover/SViewCoverView;->updateViewVisibleState()V

    return-void
.end method

.method static synthetic access$600(Lcom/sec/android/cover/sviewcover/SViewCoverView;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/sec/android/cover/sviewcover/SViewCoverView;

    .prologue
    .line 63
    iget-object v0, p0, Lcom/sec/android/cover/sviewcover/SViewCoverView;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$700(Lcom/sec/android/cover/sviewcover/SViewCoverView;)V
    .locals 0
    .param p0, "x0"    # Lcom/sec/android/cover/sviewcover/SViewCoverView;

    .prologue
    .line 63
    invoke-virtual {p0}, Lcom/sec/android/cover/sviewcover/SViewCoverView;->cancelScreenOffTimer()V

    return-void
.end method

.method static synthetic access$800(Lcom/sec/android/cover/sviewcover/SViewCoverView;)V
    .locals 0
    .param p0, "x0"    # Lcom/sec/android/cover/sviewcover/SViewCoverView;

    .prologue
    .line 63
    invoke-virtual {p0}, Lcom/sec/android/cover/sviewcover/SViewCoverView;->startScreenOffTimer()V

    return-void
.end method

.method static synthetic access$900(Lcom/sec/android/cover/sviewcover/SViewCoverView;)Lcom/sec/android/cover/sviewcover/SViewCoverAbstractUnlockArea;
    .locals 1
    .param p0, "x0"    # Lcom/sec/android/cover/sviewcover/SViewCoverView;

    .prologue
    .line 63
    iget-object v0, p0, Lcom/sec/android/cover/sviewcover/SViewCoverView;->mSViewCoverUnlockArea:Lcom/sec/android/cover/sviewcover/SViewCoverAbstractUnlockArea;

    return-object v0
.end method

.method private ensureEffectViewHidden()V
    .locals 2

    .prologue
    .line 904
    iget-object v0, p0, Lcom/sec/android/cover/sviewcover/SViewCoverView;->mSViewCoverHideEffectView:Lcom/sec/android/cover/widget/CoverHideEffectView;

    if-eqz v0, :cond_1

    .line 905
    iget-object v0, p0, Lcom/sec/android/cover/sviewcover/SViewCoverView;->mSViewCoverHideEffectView:Lcom/sec/android/cover/widget/CoverHideEffectView;

    invoke-virtual {p0, v0}, Lcom/sec/android/cover/sviewcover/SViewCoverView;->indexOfChild(Landroid/view/View;)I

    move-result v0

    if-eqz v0, :cond_0

    .line 906
    iget-object v0, p0, Lcom/sec/android/cover/sviewcover/SViewCoverView;->mSViewCoverHideEffectView:Lcom/sec/android/cover/widget/CoverHideEffectView;

    invoke-virtual {p0, v0}, Lcom/sec/android/cover/sviewcover/SViewCoverView;->removeView(Landroid/view/View;)V

    .line 907
    iget-object v0, p0, Lcom/sec/android/cover/sviewcover/SViewCoverView;->mSViewCoverHideEffectView:Lcom/sec/android/cover/widget/CoverHideEffectView;

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/sec/android/cover/sviewcover/SViewCoverView;->addView(Landroid/view/View;I)V

    .line 908
    invoke-virtual {p0}, Lcom/sec/android/cover/sviewcover/SViewCoverView;->requestLayout()V

    .line 911
    :cond_0
    iget-object v0, p0, Lcom/sec/android/cover/sviewcover/SViewCoverView;->mSViewCoverHideEffectView:Lcom/sec/android/cover/widget/CoverHideEffectView;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/sec/android/cover/widget/CoverHideEffectView;->setVisibility(I)V

    .line 913
    :cond_1
    return-void
.end method

.method private gotoOpenPage()V
    .locals 4

    .prologue
    .line 725
    const-string v1, "SViewCoverView"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "gotoMissedPage current page index : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/sec/android/cover/sviewcover/SViewCoverView;->mCurrentPageIndex:Lcom/sec/android/cover/sviewcover/SViewCoverView$PageIndex;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "mHomeMissedEventWidget.getMissedCallCount() "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/sec/android/cover/sviewcover/SViewCoverView;->mMainPage:Lcom/sec/android/cover/sviewcover/SViewCoverMainPage;

    invoke-virtual {v3}, Lcom/sec/android/cover/sviewcover/SViewCoverMainPage;->getMissedCallCount()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 727
    iget-object v1, p0, Lcom/sec/android/cover/sviewcover/SViewCoverView;->mPendingIntent:Landroid/content/Intent;

    if-eqz v1, :cond_0

    .line 729
    :try_start_0
    iget-object v1, p0, Lcom/sec/android/cover/sviewcover/SViewCoverView;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/sec/android/cover/sviewcover/SViewCoverView;->mPendingIntent:Landroid/content/Intent;

    sget-object v3, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->startActivityAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 734
    :cond_0
    :goto_0
    return-void

    .line 730
    :catch_0
    move-exception v0

    .line 731
    .local v0, "exception":Landroid/content/ActivityNotFoundException;
    const-string v1, "SViewCoverView"

    const-string v2, "ActivityNotFoundException !!"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private hideCoverUi()V
    .locals 5

    .prologue
    .line 673
    const-string v2, "SViewCoverView"

    const-string v3, "hideCoverUi"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 675
    iget-object v2, p0, Lcom/sec/android/cover/sviewcover/SViewCoverView;->mSViewPager:Lcom/sec/android/cover/sviewcover/SViewCoverPager;

    if-eqz v2, :cond_0

    .line 676
    const-string v2, "SViewCoverView"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "hideCoverUi : SViewPager Count : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/sec/android/cover/sviewcover/SViewCoverView;->mSViewPager:Lcom/sec/android/cover/sviewcover/SViewCoverPager;

    invoke-virtual {v4}, Lcom/sec/android/cover/sviewcover/SViewCoverPager;->getChildCount()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 679
    :cond_0
    const/4 v2, 0x0

    invoke-virtual {p0, v2}, Lcom/sec/android/cover/sviewcover/SViewCoverView;->updateSViewCoverUnlockArea(Z)V

    .line 680
    iget-object v2, p0, Lcom/sec/android/cover/sviewcover/SViewCoverView;->mSViewPager:Lcom/sec/android/cover/sviewcover/SViewCoverPager;

    if-eqz v2, :cond_1

    invoke-virtual {p0}, Lcom/sec/android/cover/sviewcover/SViewCoverView;->isCoverOpen()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 681
    invoke-virtual {p0}, Lcom/sec/android/cover/sviewcover/SViewCoverView;->moveToMainPage()V

    .line 685
    :cond_1
    invoke-direct {p0}, Lcom/sec/android/cover/sviewcover/SViewCoverView;->ensureEffectViewHidden()V

    .line 687
    iget-object v2, p0, Lcom/sec/android/cover/sviewcover/SViewCoverView;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/sec/android/cover/manager/CoverPowerManager;->getInstance(Landroid/content/Context;)Lcom/sec/android/cover/manager/CoverPowerManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/android/cover/manager/CoverPowerManager;->isScreenOn()Z

    move-result v2

    if-nez v2, :cond_3

    .line 688
    iget-object v2, p0, Lcom/sec/android/cover/sviewcover/SViewCoverView;->mContext:Landroid/content/Context;

    const-string v3, "phone"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telephony/TelephonyManager;

    .line 690
    .local v1, "telephonyManager":Landroid/telephony/TelephonyManager;
    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->getCallState()I

    move-result v0

    .line 691
    .local v0, "callState":I
    const-string v2, "SViewCoverView"

    const-string v3, "handleMessage : Screen is off"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 692
    const-string v2, "SViewCoverView"

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

    .line 693
    if-nez v0, :cond_2

    .line 694
    iget-object v2, p0, Lcom/sec/android/cover/sviewcover/SViewCoverView;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/sec/android/cover/manager/CoverPowerManager;->getInstance(Landroid/content/Context;)Lcom/sec/android/cover/manager/CoverPowerManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/android/cover/manager/CoverPowerManager;->wakeUpWithReason()V

    .line 701
    .end local v0    # "callState":I
    .end local v1    # "telephonyManager":Landroid/telephony/TelephonyManager;
    :cond_2
    :goto_0
    iget-object v2, p0, Lcom/sec/android/cover/sviewcover/SViewCoverView;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/sec/android/cover/manager/CoverPowerManager;->getInstance(Landroid/content/Context;)Lcom/sec/android/cover/manager/CoverPowerManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/android/cover/manager/CoverPowerManager;->releaseWakeLock()V

    .line 702
    return-void

    .line 697
    :cond_3
    const-string v2, "SViewCoverView"

    const-string v3, "handleMessage : Screen is on"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 698
    iget-object v2, p0, Lcom/sec/android/cover/sviewcover/SViewCoverView;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/sec/android/cover/manager/CoverPowerManager;->getInstance(Landroid/content/Context;)Lcom/sec/android/cover/manager/CoverPowerManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/android/cover/manager/CoverPowerManager;->userActivity()V

    goto :goto_0
.end method

.method private makeSViewMeasureSpec()V
    .locals 8

    .prologue
    const/high16 v7, 0x40000000    # 2.0f

    .line 705
    iget-object v4, p0, Lcom/sec/android/cover/sviewcover/SViewCoverView;->mSViewPager:Lcom/sec/android/cover/sviewcover/SViewCoverPager;

    if-eqz v4, :cond_0

    .line 709
    iget-object v4, p0, Lcom/sec/android/cover/sviewcover/SViewCoverView;->mSViewPager:Lcom/sec/android/cover/sviewcover/SViewCoverPager;

    invoke-virtual {v4}, Lcom/sec/android/cover/sviewcover/SViewCoverPager;->getParent()Landroid/view/ViewParent;

    move-result-object v4

    check-cast v4, Landroid/widget/FrameLayout;

    invoke-virtual {v4}, Landroid/widget/FrameLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/widget/FrameLayout$LayoutParams;

    .line 711
    .local v1, "lp":Landroid/widget/FrameLayout$LayoutParams;
    iget-object v4, p0, Lcom/sec/android/cover/sviewcover/SViewCoverView;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    .line 713
    .local v2, "res":Landroid/content/res/Resources;
    sget v4, Lcom/sec/android/sviewcover/R$dimen;->sview_cover_pager_width:I

    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    iget v5, v1, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    sub-int/2addr v4, v5

    iget v5, v1, Landroid/widget/FrameLayout$LayoutParams;->rightMargin:I

    sub-int v3, v4, v5

    .line 715
    .local v3, "width":I
    iget v0, v1, Landroid/widget/FrameLayout$LayoutParams;->height:I

    .line 717
    .local v0, "height":I
    const-string v4, "SViewCoverView"

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

    .line 719
    iget-object v4, p0, Lcom/sec/android/cover/sviewcover/SViewCoverView;->mSViewPager:Lcom/sec/android/cover/sviewcover/SViewCoverPager;

    invoke-static {v3, v7}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v5

    invoke-static {v0, v7}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v6

    invoke-virtual {v4, v5, v6}, Lcom/sec/android/cover/sviewcover/SViewCoverPager;->measure(II)V

    .line 722
    .end local v0    # "height":I
    .end local v1    # "lp":Landroid/widget/FrameLayout$LayoutParams;
    .end local v2    # "res":Landroid/content/res/Resources;
    .end local v3    # "width":I
    :cond_0
    return-void
.end method

.method private playAnimationAndHide()V
    .locals 0

    .prologue
    .line 900
    invoke-direct {p0}, Lcom/sec/android/cover/sviewcover/SViewCoverView;->hideCoverUi()V

    .line 901
    return-void
.end method

.method private requestRemoteViews()V
    .locals 3

    .prologue
    .line 1008
    const-string v1, "SViewCoverView"

    const-string v2, "requestRemoteViews : Requesting latest remote views to apps.."

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1009
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.samsung.cover.REQUEST_REMOTEVIEWS"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1010
    .local v0, "intent":Landroid/content/Intent;
    const/high16 v1, 0x10000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 1011
    iget-object v1, p0, Lcom/sec/android/cover/sviewcover/SViewCoverView;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 1012
    return-void
.end method

.method private showCoverUi()V
    .locals 3

    .prologue
    .line 635
    const-string v0, "SViewCoverView"

    const-string v1, "showCoverUi"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 637
    invoke-virtual {p0}, Lcom/sec/android/cover/sviewcover/SViewCoverView;->isCoverOpen()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 638
    const-string v0, "SViewCoverView"

    const-string v1, "showCoverUi : Cover is opend -> Ignore showCoverUi()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 640
    iget-object v0, p0, Lcom/sec/android/cover/sviewcover/SViewCoverView;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/sec/android/cover/manager/CoverPowerManager;->getInstance(Landroid/content/Context;)Lcom/sec/android/cover/manager/CoverPowerManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/cover/manager/CoverPowerManager;->releaseWakeLock()V

    .line 670
    :goto_0
    return-void

    .line 644
    :cond_0
    iget-object v0, p0, Lcom/sec/android/cover/sviewcover/SViewCoverView;->mSViewCoverHideEffectView:Lcom/sec/android/cover/widget/CoverHideEffectView;

    if-eqz v0, :cond_1

    .line 645
    iget-object v0, p0, Lcom/sec/android/cover/sviewcover/SViewCoverView;->mSViewCoverHideEffectView:Lcom/sec/android/cover/widget/CoverHideEffectView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/sec/android/cover/widget/CoverHideEffectView;->stopAnimation(Z)V

    .line 646
    invoke-direct {p0}, Lcom/sec/android/cover/sviewcover/SViewCoverView;->ensureEffectViewHidden()V

    .line 649
    :cond_1
    iget-object v0, p0, Lcom/sec/android/cover/sviewcover/SViewCoverView;->mSViewPager:Lcom/sec/android/cover/sviewcover/SViewCoverPager;

    if-eqz v0, :cond_2

    .line 650
    const-string v0, "SViewCoverView"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "SViewPager Count : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/android/cover/sviewcover/SViewCoverView;->mSViewPager:Lcom/sec/android/cover/sviewcover/SViewCoverPager;

    invoke-virtual {v2}, Lcom/sec/android/cover/sviewcover/SViewCoverPager;->getChildCount()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 651
    invoke-direct {p0}, Lcom/sec/android/cover/sviewcover/SViewCoverView;->makeSViewMeasureSpec()V

    .line 654
    :cond_2
    invoke-direct {p0}, Lcom/sec/android/cover/sviewcover/SViewCoverView;->showWallPaperSetting()V

    .line 655
    invoke-virtual {p0}, Lcom/sec/android/cover/sviewcover/SViewCoverView;->moveToMainPage()V

    .line 657
    invoke-direct {p0}, Lcom/sec/android/cover/sviewcover/SViewCoverView;->updateViewVisibleState()V

    .line 659
    iget-object v0, p0, Lcom/sec/android/cover/sviewcover/SViewCoverView;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/sec/android/cover/CoverUtils;->isOperatorLocked(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 660
    invoke-direct {p0}, Lcom/sec/android/cover/sviewcover/SViewCoverView;->updateCameraVisibility()V

    .line 664
    :cond_3
    iget-object v0, p0, Lcom/sec/android/cover/sviewcover/SViewCoverView;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/sec/android/cover/manager/CoverPowerManager;->getInstance(Landroid/content/Context;)Lcom/sec/android/cover/manager/CoverPowerManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/cover/manager/CoverPowerManager;->isScreenOn()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 665
    iget-object v0, p0, Lcom/sec/android/cover/sviewcover/SViewCoverView;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/sec/android/cover/manager/CoverPowerManager;->getInstance(Landroid/content/Context;)Lcom/sec/android/cover/manager/CoverPowerManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/cover/manager/CoverPowerManager;->wakeUp()V

    .line 666
    iget-object v0, p0, Lcom/sec/android/cover/sviewcover/SViewCoverView;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/sec/android/cover/manager/CoverPowerManager;->getInstance(Landroid/content/Context;)Lcom/sec/android/cover/manager/CoverPowerManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/cover/manager/CoverPowerManager;->startScreenOffTimer()V

    .line 669
    :cond_4
    iget-object v0, p0, Lcom/sec/android/cover/sviewcover/SViewCoverView;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/sec/android/cover/manager/CoverPowerManager;->getInstance(Landroid/content/Context;)Lcom/sec/android/cover/manager/CoverPowerManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/cover/manager/CoverPowerManager;->releaseWakeLock()V

    goto :goto_0
.end method

.method private showWallPaperSetting()V
    .locals 7

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 529
    invoke-virtual {p0}, Lcom/sec/android/cover/sviewcover/SViewCoverView;->isCoverOpen()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 568
    :cond_0
    :goto_0
    return-void

    .line 533
    :cond_1
    invoke-virtual {p0}, Lcom/sec/android/cover/sviewcover/SViewCoverView;->getVisibility()I

    move-result v4

    if-eqz v4, :cond_2

    .line 534
    invoke-virtual {p0, v5}, Lcom/sec/android/cover/sviewcover/SViewCoverView;->setVisibility(I)V

    .line 537
    :cond_2
    iget-object v4, p0, Lcom/sec/android/cover/sviewcover/SViewCoverView;->mActivityManager:Landroid/app/ActivityManager;

    invoke-virtual {v4}, Landroid/app/ActivityManager;->isInLockTaskMode()Z

    move-result v4

    if-ne v4, v6, :cond_3

    .line 538
    const-string v4, "SViewCoverView"

    const-string v5, "showWallPaperSetting() return because of pin window"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 542
    :cond_3
    iget-object v4, p0, Lcom/sec/android/cover/sviewcover/SViewCoverView;->mCoverState:Lcom/samsung/android/cover/CoverState;

    invoke-virtual {v4}, Lcom/samsung/android/cover/CoverState;->getColor()I

    move-result v0

    .line 545
    .local v0, "currentCoverColor":I
    iget-object v4, p0, Lcom/sec/android/cover/sviewcover/SViewCoverView;->mContext:Landroid/content/Context;

    invoke-static {v4}, Lcom/sec/android/cover/manager/SViewCoverWallpaperManager;->getInstance(Landroid/content/Context;)Lcom/sec/android/cover/manager/SViewCoverWallpaperManager;

    move-result-object v3

    .line 546
    .local v3, "wallpaperMgr":Lcom/sec/android/cover/manager/SViewCoverWallpaperManager;
    invoke-virtual {p0}, Lcom/sec/android/cover/sviewcover/SViewCoverView;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4}, Lcom/sec/android/cover/CoverUtils;->isCallActive(Landroid/content/Context;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 547
    invoke-virtual {v3, v0}, Lcom/sec/android/cover/manager/SViewCoverWallpaperManager;->isWallpaperNeedToSetup(I)Z

    move-result v4

    if-eqz v4, :cond_4

    iget-object v4, p0, Lcom/sec/android/cover/sviewcover/SViewCoverView;->mContext:Landroid/content/Context;

    invoke-static {v4}, Lcom/sec/android/cover/CoverUtils;->isKidsMode(Landroid/content/Context;)Z

    move-result v4

    if-nez v4, :cond_4

    iget-object v4, p0, Lcom/sec/android/cover/sviewcover/SViewCoverView;->mContext:Landroid/content/Context;

    invoke-static {v4}, Lcom/sec/android/cover/CoverUtils;->isEmergencyMode(Landroid/content/Context;)Z

    move-result v4

    if-nez v4, :cond_4

    .line 551
    const-string v4, "SViewCoverView"

    const-string v5, "showCoverUi : Wallpaper color is not setup yet -> Show wallpaper setup activity"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 553
    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    .line 554
    .local v2, "intent":Landroid/content/Intent;
    iget-object v4, p0, Lcom/sec/android/cover/sviewcover/SViewCoverView;->mContext:Landroid/content/Context;

    const-class v5, Lcom/sec/android/cover/sviewcover/SViewCoverWallpaperSettingActivity;

    invoke-virtual {v2, v4, v5}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 555
    const/high16 v4, 0x10010000

    invoke-virtual {v2, v4}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 556
    const-string v4, "wallpaper_initialize"

    invoke-virtual {v2, v4, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 558
    :try_start_0
    iget-object v4, p0, Lcom/sec/android/cover/sviewcover/SViewCoverView;->mContext:Landroid/content/Context;

    sget-object v5, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    invoke-virtual {v4, v2, v5}, Landroid/content/Context;->startActivityAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 559
    :catch_0
    move-exception v1

    .line 560
    .local v1, "exception":Landroid/content/ActivityNotFoundException;
    const-string v4, "SViewCoverView"

    const-string v5, "showCoverUi : ActivityNotFoundException !!"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 563
    .end local v1    # "exception":Landroid/content/ActivityNotFoundException;
    .end local v2    # "intent":Landroid/content/Intent;
    :cond_4
    invoke-virtual {p0}, Lcom/sec/android/cover/sviewcover/SViewCoverView;->getVisibility()I

    move-result v4

    if-eqz v4, :cond_0

    .line 564
    invoke-virtual {p0, v5}, Lcom/sec/android/cover/sviewcover/SViewCoverView;->setVisibility(I)V

    goto :goto_0
.end method

.method private updateCameraVisibility()V
    .locals 3

    .prologue
    .line 571
    const-string v0, "SViewCoverView"

    const-string v1, "updateCameraVisibility"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 572
    iget-object v0, p0, Lcom/sec/android/cover/sviewcover/SViewCoverView;->mSViewPager:Lcom/sec/android/cover/sviewcover/SViewCoverPager;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/cover/sviewcover/SViewCoverView;->mCameraPage:Lcom/sec/android/cover/sviewcover/SViewCoverCameraArea;

    if-eqz v0, :cond_0

    .line 573
    iget-object v0, p0, Lcom/sec/android/cover/sviewcover/SViewCoverView;->mSViewPager:Lcom/sec/android/cover/sviewcover/SViewCoverPager;

    iget-object v1, p0, Lcom/sec/android/cover/sviewcover/SViewCoverView;->mCameraPage:Lcom/sec/android/cover/sviewcover/SViewCoverCameraArea;

    invoke-virtual {v0, v1}, Lcom/sec/android/cover/sviewcover/SViewCoverPager;->removeView(Landroid/view/View;)V

    .line 576
    :cond_0
    iget-object v0, p0, Lcom/sec/android/cover/sviewcover/SViewCoverView;->mSViewCoverUnlockArea:Lcom/sec/android/cover/sviewcover/SViewCoverAbstractUnlockArea;

    if-eqz v0, :cond_1

    .line 577
    iget-object v0, p0, Lcom/sec/android/cover/sviewcover/SViewCoverView;->mSViewCoverUnlockArea:Lcom/sec/android/cover/sviewcover/SViewCoverAbstractUnlockArea;

    sget-object v1, Lcom/sec/android/cover/sviewcover/SViewCoverAbstractUnlockArea$Container;->Camera:Lcom/sec/android/cover/sviewcover/SViewCoverAbstractUnlockArea$Container;

    const/16 v2, 0x8

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/cover/sviewcover/SViewCoverAbstractUnlockArea;->setContainerVisibility(Lcom/sec/android/cover/sviewcover/SViewCoverAbstractUnlockArea$Container;I)V

    .line 579
    :cond_1
    return-void
.end method

.method private updateViewVisibleState()V
    .locals 7

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    const/16 v4, 0x8

    .line 582
    iget-object v1, p0, Lcom/sec/android/cover/sviewcover/SViewCoverView;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/sec/android/cover/CoverUtils;->isKidsMode(Landroid/content/Context;)Z

    move-result v0

    .line 584
    .local v0, "isKidsMode":Z
    if-ne v0, v6, :cond_1

    .line 585
    const-string v1, "SViewCoverView"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "updateViewVisibleState, kid: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 586
    iget-object v1, p0, Lcom/sec/android/cover/sviewcover/SViewCoverView;->mSViewCoverUnlockArea:Lcom/sec/android/cover/sviewcover/SViewCoverAbstractUnlockArea;

    if-eqz v1, :cond_0

    .line 587
    iget-object v1, p0, Lcom/sec/android/cover/sviewcover/SViewCoverView;->mSViewCoverUnlockArea:Lcom/sec/android/cover/sviewcover/SViewCoverAbstractUnlockArea;

    sget-object v2, Lcom/sec/android/cover/sviewcover/SViewCoverAbstractUnlockArea$Container;->Setting:Lcom/sec/android/cover/sviewcover/SViewCoverAbstractUnlockArea$Container;

    invoke-virtual {v1, v2, v4}, Lcom/sec/android/cover/sviewcover/SViewCoverAbstractUnlockArea;->setContainerVisibility(Lcom/sec/android/cover/sviewcover/SViewCoverAbstractUnlockArea$Container;I)V

    .line 588
    iget-object v1, p0, Lcom/sec/android/cover/sviewcover/SViewCoverView;->mSViewCoverUnlockArea:Lcom/sec/android/cover/sviewcover/SViewCoverAbstractUnlockArea;

    sget-object v2, Lcom/sec/android/cover/sviewcover/SViewCoverAbstractUnlockArea$Container;->Contact:Lcom/sec/android/cover/sviewcover/SViewCoverAbstractUnlockArea$Container;

    invoke-virtual {v1, v2, v4}, Lcom/sec/android/cover/sviewcover/SViewCoverAbstractUnlockArea;->setContainerVisibility(Lcom/sec/android/cover/sviewcover/SViewCoverAbstractUnlockArea$Container;I)V

    .line 589
    iget-object v1, p0, Lcom/sec/android/cover/sviewcover/SViewCoverView;->mSViewCoverUnlockArea:Lcom/sec/android/cover/sviewcover/SViewCoverAbstractUnlockArea;

    sget-object v2, Lcom/sec/android/cover/sviewcover/SViewCoverAbstractUnlockArea$Container;->Camera:Lcom/sec/android/cover/sviewcover/SViewCoverAbstractUnlockArea$Container;

    invoke-virtual {v1, v2, v4}, Lcom/sec/android/cover/sviewcover/SViewCoverAbstractUnlockArea;->setContainerVisibility(Lcom/sec/android/cover/sviewcover/SViewCoverAbstractUnlockArea$Container;I)V

    .line 590
    iget-object v1, p0, Lcom/sec/android/cover/sviewcover/SViewCoverView;->mSViewCoverUnlockArea:Lcom/sec/android/cover/sviewcover/SViewCoverAbstractUnlockArea;

    sget-object v2, Lcom/sec/android/cover/sviewcover/SViewCoverAbstractUnlockArea$Container;->Noti:Lcom/sec/android/cover/sviewcover/SViewCoverAbstractUnlockArea$Container;

    invoke-virtual {v1, v2, v4}, Lcom/sec/android/cover/sviewcover/SViewCoverAbstractUnlockArea;->setContainerVisibility(Lcom/sec/android/cover/sviewcover/SViewCoverAbstractUnlockArea$Container;I)V

    .line 591
    iget-object v1, p0, Lcom/sec/android/cover/sviewcover/SViewCoverView;->mSViewCoverUnlockArea:Lcom/sec/android/cover/sviewcover/SViewCoverAbstractUnlockArea;

    invoke-virtual {v1, v4}, Lcom/sec/android/cover/sviewcover/SViewCoverAbstractUnlockArea;->setPageNavigationVisibility(I)V

    .line 631
    :cond_0
    :goto_0
    invoke-virtual {p0, v6}, Lcom/sec/android/cover/sviewcover/SViewCoverView;->updateSViewCoverUnlockArea(Z)V

    .line 632
    return-void

    .line 593
    :cond_1
    iget-object v1, p0, Lcom/sec/android/cover/sviewcover/SViewCoverView;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/sec/android/cover/CoverUtils;->isSetupWizardRunning(Landroid/content/Context;)Z

    move-result v1

    if-ne v1, v6, :cond_2

    iget-object v1, p0, Lcom/sec/android/cover/sviewcover/SViewCoverView;->mSViewCoverUnlockArea:Lcom/sec/android/cover/sviewcover/SViewCoverAbstractUnlockArea;

    if-eqz v1, :cond_2

    .line 595
    const-string v1, "SViewCoverView"

    const-string v2, "updateViewVisibleState, setup"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 596
    iget-object v1, p0, Lcom/sec/android/cover/sviewcover/SViewCoverView;->mSViewCoverUnlockArea:Lcom/sec/android/cover/sviewcover/SViewCoverAbstractUnlockArea;

    sget-object v2, Lcom/sec/android/cover/sviewcover/SViewCoverAbstractUnlockArea$Container;->Setting:Lcom/sec/android/cover/sviewcover/SViewCoverAbstractUnlockArea$Container;

    invoke-virtual {v1, v2, v4}, Lcom/sec/android/cover/sviewcover/SViewCoverAbstractUnlockArea;->setContainerVisibility(Lcom/sec/android/cover/sviewcover/SViewCoverAbstractUnlockArea$Container;I)V

    .line 597
    iget-object v1, p0, Lcom/sec/android/cover/sviewcover/SViewCoverView;->mSViewCoverUnlockArea:Lcom/sec/android/cover/sviewcover/SViewCoverAbstractUnlockArea;

    sget-object v2, Lcom/sec/android/cover/sviewcover/SViewCoverAbstractUnlockArea$Container;->Contact:Lcom/sec/android/cover/sviewcover/SViewCoverAbstractUnlockArea$Container;

    invoke-virtual {v1, v2, v4}, Lcom/sec/android/cover/sviewcover/SViewCoverAbstractUnlockArea;->setContainerVisibility(Lcom/sec/android/cover/sviewcover/SViewCoverAbstractUnlockArea$Container;I)V

    .line 598
    iget-object v1, p0, Lcom/sec/android/cover/sviewcover/SViewCoverView;->mSViewCoverUnlockArea:Lcom/sec/android/cover/sviewcover/SViewCoverAbstractUnlockArea;

    sget-object v2, Lcom/sec/android/cover/sviewcover/SViewCoverAbstractUnlockArea$Container;->Camera:Lcom/sec/android/cover/sviewcover/SViewCoverAbstractUnlockArea$Container;

    invoke-virtual {v1, v2, v4}, Lcom/sec/android/cover/sviewcover/SViewCoverAbstractUnlockArea;->setContainerVisibility(Lcom/sec/android/cover/sviewcover/SViewCoverAbstractUnlockArea$Container;I)V

    .line 599
    iget-object v1, p0, Lcom/sec/android/cover/sviewcover/SViewCoverView;->mSViewCoverUnlockArea:Lcom/sec/android/cover/sviewcover/SViewCoverAbstractUnlockArea;

    sget-object v2, Lcom/sec/android/cover/sviewcover/SViewCoverAbstractUnlockArea$Container;->Noti:Lcom/sec/android/cover/sviewcover/SViewCoverAbstractUnlockArea$Container;

    invoke-virtual {v1, v2, v4}, Lcom/sec/android/cover/sviewcover/SViewCoverAbstractUnlockArea;->setContainerVisibility(Lcom/sec/android/cover/sviewcover/SViewCoverAbstractUnlockArea$Container;I)V

    .line 600
    iget-object v1, p0, Lcom/sec/android/cover/sviewcover/SViewCoverView;->mSViewCoverUnlockArea:Lcom/sec/android/cover/sviewcover/SViewCoverAbstractUnlockArea;

    invoke-virtual {v1, v4}, Lcom/sec/android/cover/sviewcover/SViewCoverAbstractUnlockArea;->setPageNavigationVisibility(I)V

    goto :goto_0

    .line 601
    :cond_2
    iget-object v1, p0, Lcom/sec/android/cover/sviewcover/SViewCoverView;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/sec/android/cover/CoverUtils;->isEmergencyMode(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 602
    const-string v1, "SViewCoverView"

    const-string v2, "updateViewVisibleState, emergency"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 603
    iget-object v1, p0, Lcom/sec/android/cover/sviewcover/SViewCoverView;->mSViewPager:Lcom/sec/android/cover/sviewcover/SViewCoverPager;

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/sec/android/cover/sviewcover/SViewCoverView;->mCameraPage:Lcom/sec/android/cover/sviewcover/SViewCoverCameraArea;

    if-eqz v1, :cond_3

    .line 604
    iget-object v1, p0, Lcom/sec/android/cover/sviewcover/SViewCoverView;->mSViewPager:Lcom/sec/android/cover/sviewcover/SViewCoverPager;

    iget-object v2, p0, Lcom/sec/android/cover/sviewcover/SViewCoverView;->mCameraPage:Lcom/sec/android/cover/sviewcover/SViewCoverCameraArea;

    invoke-virtual {v1, v2}, Lcom/sec/android/cover/sviewcover/SViewCoverPager;->removeView(Landroid/view/View;)V

    .line 607
    :cond_3
    iget-object v1, p0, Lcom/sec/android/cover/sviewcover/SViewCoverView;->mSViewCoverUnlockArea:Lcom/sec/android/cover/sviewcover/SViewCoverAbstractUnlockArea;

    if-eqz v1, :cond_0

    .line 608
    iget-object v1, p0, Lcom/sec/android/cover/sviewcover/SViewCoverView;->mSViewCoverUnlockArea:Lcom/sec/android/cover/sviewcover/SViewCoverAbstractUnlockArea;

    sget-object v2, Lcom/sec/android/cover/sviewcover/SViewCoverAbstractUnlockArea$Container;->Setting:Lcom/sec/android/cover/sviewcover/SViewCoverAbstractUnlockArea$Container;

    invoke-virtual {v1, v2, v4}, Lcom/sec/android/cover/sviewcover/SViewCoverAbstractUnlockArea;->setContainerVisibility(Lcom/sec/android/cover/sviewcover/SViewCoverAbstractUnlockArea$Container;I)V

    .line 609
    iget-object v1, p0, Lcom/sec/android/cover/sviewcover/SViewCoverView;->mSViewCoverUnlockArea:Lcom/sec/android/cover/sviewcover/SViewCoverAbstractUnlockArea;

    sget-object v2, Lcom/sec/android/cover/sviewcover/SViewCoverAbstractUnlockArea$Container;->Contact:Lcom/sec/android/cover/sviewcover/SViewCoverAbstractUnlockArea$Container;

    invoke-virtual {v1, v2, v4}, Lcom/sec/android/cover/sviewcover/SViewCoverAbstractUnlockArea;->setContainerVisibility(Lcom/sec/android/cover/sviewcover/SViewCoverAbstractUnlockArea$Container;I)V

    .line 610
    iget-object v1, p0, Lcom/sec/android/cover/sviewcover/SViewCoverView;->mSViewCoverUnlockArea:Lcom/sec/android/cover/sviewcover/SViewCoverAbstractUnlockArea;

    sget-object v2, Lcom/sec/android/cover/sviewcover/SViewCoverAbstractUnlockArea$Container;->Camera:Lcom/sec/android/cover/sviewcover/SViewCoverAbstractUnlockArea$Container;

    invoke-virtual {v1, v2, v4}, Lcom/sec/android/cover/sviewcover/SViewCoverAbstractUnlockArea;->setContainerVisibility(Lcom/sec/android/cover/sviewcover/SViewCoverAbstractUnlockArea$Container;I)V

    .line 611
    iget-object v1, p0, Lcom/sec/android/cover/sviewcover/SViewCoverView;->mSViewCoverUnlockArea:Lcom/sec/android/cover/sviewcover/SViewCoverAbstractUnlockArea;

    sget-object v2, Lcom/sec/android/cover/sviewcover/SViewCoverAbstractUnlockArea$Container;->Noti:Lcom/sec/android/cover/sviewcover/SViewCoverAbstractUnlockArea$Container;

    invoke-virtual {v1, v2, v4}, Lcom/sec/android/cover/sviewcover/SViewCoverAbstractUnlockArea;->setContainerVisibility(Lcom/sec/android/cover/sviewcover/SViewCoverAbstractUnlockArea$Container;I)V

    .line 612
    iget-object v1, p0, Lcom/sec/android/cover/sviewcover/SViewCoverView;->mSViewCoverUnlockArea:Lcom/sec/android/cover/sviewcover/SViewCoverAbstractUnlockArea;

    invoke-virtual {v1, v4}, Lcom/sec/android/cover/sviewcover/SViewCoverAbstractUnlockArea;->setPageNavigationVisibility(I)V

    goto :goto_0

    .line 614
    :cond_4
    iget-object v1, p0, Lcom/sec/android/cover/sviewcover/SViewCoverView;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/sec/android/cover/CoverUtils;->isOperatorLocked(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 615
    invoke-direct {p0}, Lcom/sec/android/cover/sviewcover/SViewCoverView;->updateCameraVisibility()V

    goto/16 :goto_0

    .line 617
    :cond_5
    iget-object v1, p0, Lcom/sec/android/cover/sviewcover/SViewCoverView;->mSViewPager:Lcom/sec/android/cover/sviewcover/SViewCoverPager;

    if-eqz v1, :cond_6

    iget-object v1, p0, Lcom/sec/android/cover/sviewcover/SViewCoverView;->mCameraPage:Lcom/sec/android/cover/sviewcover/SViewCoverCameraArea;

    if-eqz v1, :cond_6

    iget-object v1, p0, Lcom/sec/android/cover/sviewcover/SViewCoverView;->mCameraPage:Lcom/sec/android/cover/sviewcover/SViewCoverCameraArea;

    invoke-virtual {v1}, Lcom/sec/android/cover/sviewcover/SViewCoverCameraArea;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    if-nez v1, :cond_6

    .line 618
    iget-object v1, p0, Lcom/sec/android/cover/sviewcover/SViewCoverView;->mSViewPager:Lcom/sec/android/cover/sviewcover/SViewCoverPager;

    iget-object v2, p0, Lcom/sec/android/cover/sviewcover/SViewCoverView;->mCameraPage:Lcom/sec/android/cover/sviewcover/SViewCoverCameraArea;

    iget-object v3, p0, Lcom/sec/android/cover/sviewcover/SViewCoverView;->mSViewPager:Lcom/sec/android/cover/sviewcover/SViewCoverPager;

    invoke-virtual {v3}, Lcom/sec/android/cover/sviewcover/SViewCoverPager;->getChildCount()I

    move-result v3

    invoke-virtual {v1, v2, v3}, Lcom/sec/android/cover/sviewcover/SViewCoverPager;->addView(Landroid/view/View;I)V

    .line 621
    :cond_6
    iget-object v1, p0, Lcom/sec/android/cover/sviewcover/SViewCoverView;->mSViewCoverUnlockArea:Lcom/sec/android/cover/sviewcover/SViewCoverAbstractUnlockArea;

    if-eqz v1, :cond_0

    .line 622
    iget-object v1, p0, Lcom/sec/android/cover/sviewcover/SViewCoverView;->mSViewCoverUnlockArea:Lcom/sec/android/cover/sviewcover/SViewCoverAbstractUnlockArea;

    sget-object v2, Lcom/sec/android/cover/sviewcover/SViewCoverAbstractUnlockArea$Container;->Setting:Lcom/sec/android/cover/sviewcover/SViewCoverAbstractUnlockArea$Container;

    invoke-virtual {v1, v2, v5}, Lcom/sec/android/cover/sviewcover/SViewCoverAbstractUnlockArea;->setContainerVisibility(Lcom/sec/android/cover/sviewcover/SViewCoverAbstractUnlockArea$Container;I)V

    .line 623
    iget-object v1, p0, Lcom/sec/android/cover/sviewcover/SViewCoverView;->mSViewCoverUnlockArea:Lcom/sec/android/cover/sviewcover/SViewCoverAbstractUnlockArea;

    sget-object v2, Lcom/sec/android/cover/sviewcover/SViewCoverAbstractUnlockArea$Container;->Contact:Lcom/sec/android/cover/sviewcover/SViewCoverAbstractUnlockArea$Container;

    invoke-virtual {v1, v2, v5}, Lcom/sec/android/cover/sviewcover/SViewCoverAbstractUnlockArea;->setContainerVisibility(Lcom/sec/android/cover/sviewcover/SViewCoverAbstractUnlockArea$Container;I)V

    .line 624
    iget-object v1, p0, Lcom/sec/android/cover/sviewcover/SViewCoverView;->mSViewCoverUnlockArea:Lcom/sec/android/cover/sviewcover/SViewCoverAbstractUnlockArea;

    sget-object v2, Lcom/sec/android/cover/sviewcover/SViewCoverAbstractUnlockArea$Container;->Camera:Lcom/sec/android/cover/sviewcover/SViewCoverAbstractUnlockArea$Container;

    invoke-virtual {v1, v2, v5}, Lcom/sec/android/cover/sviewcover/SViewCoverAbstractUnlockArea;->setContainerVisibility(Lcom/sec/android/cover/sviewcover/SViewCoverAbstractUnlockArea$Container;I)V

    .line 625
    iget-object v1, p0, Lcom/sec/android/cover/sviewcover/SViewCoverView;->mSViewCoverUnlockArea:Lcom/sec/android/cover/sviewcover/SViewCoverAbstractUnlockArea;

    sget-object v2, Lcom/sec/android/cover/sviewcover/SViewCoverAbstractUnlockArea$Container;->Noti:Lcom/sec/android/cover/sviewcover/SViewCoverAbstractUnlockArea$Container;

    invoke-virtual {v1, v2, v5}, Lcom/sec/android/cover/sviewcover/SViewCoverAbstractUnlockArea;->setContainerVisibility(Lcom/sec/android/cover/sviewcover/SViewCoverAbstractUnlockArea$Container;I)V

    .line 626
    iget-object v1, p0, Lcom/sec/android/cover/sviewcover/SViewCoverView;->mSViewCoverUnlockArea:Lcom/sec/android/cover/sviewcover/SViewCoverAbstractUnlockArea;

    invoke-virtual {v1, v5}, Lcom/sec/android/cover/sviewcover/SViewCoverAbstractUnlockArea;->setPageNavigationVisibility(I)V

    goto/16 :goto_0
.end method


# virtual methods
.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 2
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 508
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    .line 509
    .local v0, "action":I
    packed-switch v0, :pswitch_data_0

    .line 519
    :cond_0
    :goto_0
    :pswitch_0
    invoke-super {p0, p1}, Lcom/sec/android/cover/CoverMainFrameView;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v1

    return v1

    .line 512
    :pswitch_1
    iget-object v1, p0, Lcom/sec/android/cover/sviewcover/SViewCoverView;->mSViewCoverUnlockArea:Lcom/sec/android/cover/sviewcover/SViewCoverAbstractUnlockArea;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/sec/android/cover/sviewcover/SViewCoverView;->mSViewCoverUnlockArea:Lcom/sec/android/cover/sviewcover/SViewCoverAbstractUnlockArea;

    invoke-virtual {v1}, Lcom/sec/android/cover/sviewcover/SViewCoverAbstractUnlockArea;->getVisibility()I

    move-result v1

    if-eqz v1, :cond_0

    .line 513
    iget-object v1, p0, Lcom/sec/android/cover/sviewcover/SViewCoverView;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/sec/android/cover/manager/CoverPowerManager;->getInstance(Landroid/content/Context;)Lcom/sec/android/cover/manager/CoverPowerManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/cover/manager/CoverPowerManager;->resetScreenOffTimer()V

    goto :goto_0

    .line 509
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public getUiAlpha()F
    .locals 1

    .prologue
    .line 1039
    iget v0, p0, Lcom/sec/android/cover/sviewcover/SViewCoverView;->mCurrentUiAlpha:F

    return v0
.end method

.method public isCoverOpen()Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 772
    iget-object v1, p0, Lcom/sec/android/cover/sviewcover/SViewCoverView;->mCoverState:Lcom/samsung/android/cover/CoverState;

    invoke-virtual {v1}, Lcom/samsung/android/cover/CoverState;->getSwitchState()Z

    move-result v1

    if-ne v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isHideAllHandlerMode()Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 776
    iget-object v1, p0, Lcom/sec/android/cover/sviewcover/SViewCoverView;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/sec/android/cover/CoverUtils;->isKidsMode(Landroid/content/Context;)Z

    move-result v1

    if-eq v1, v0, :cond_0

    iget-object v1, p0, Lcom/sec/android/cover/sviewcover/SViewCoverView;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/sec/android/cover/CoverUtils;->isSetupWizardRunning(Landroid/content/Context;)Z

    move-result v1

    if-ne v1, v0, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public moveToMainPage()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 932
    sget-object v1, Lcom/sec/android/cover/sviewcover/SViewCoverView$PageIndex;->HomePage:Lcom/sec/android/cover/sviewcover/SViewCoverView$PageIndex;

    invoke-virtual {p0, v1, v3}, Lcom/sec/android/cover/sviewcover/SViewCoverView;->moveToPage(Lcom/sec/android/cover/sviewcover/SViewCoverView$PageIndex;Z)V

    .line 934
    iget-object v1, p0, Lcom/sec/android/cover/sviewcover/SViewCoverView;->mSViewCoverUnlockArea:Lcom/sec/android/cover/sviewcover/SViewCoverAbstractUnlockArea;

    if-eqz v1, :cond_0

    .line 935
    iget-object v1, p0, Lcom/sec/android/cover/sviewcover/SViewCoverView;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/sec/android/cover/CoverUtils;->isKidsMode(Landroid/content/Context;)Z

    move-result v0

    .line 936
    .local v0, "isKidsMode":Z
    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    .line 937
    iget-object v1, p0, Lcom/sec/android/cover/sviewcover/SViewCoverView;->mSViewCoverUnlockArea:Lcom/sec/android/cover/sviewcover/SViewCoverAbstractUnlockArea;

    sget-object v2, Lcom/sec/android/cover/sviewcover/SViewCoverAbstractUnlockArea$Container;->Camera:Lcom/sec/android/cover/sviewcover/SViewCoverAbstractUnlockArea$Container;

    const/16 v3, 0x8

    invoke-virtual {v1, v2, v3}, Lcom/sec/android/cover/sviewcover/SViewCoverAbstractUnlockArea;->setContainerVisibility(Lcom/sec/android/cover/sviewcover/SViewCoverAbstractUnlockArea$Container;I)V

    .line 942
    :goto_0
    iget-object v1, p0, Lcom/sec/android/cover/sviewcover/SViewCoverView;->mSViewCoverUnlockArea:Lcom/sec/android/cover/sviewcover/SViewCoverAbstractUnlockArea;

    invoke-virtual {v1}, Lcom/sec/android/cover/sviewcover/SViewCoverAbstractUnlockArea;->handleShow()V

    .line 944
    .end local v0    # "isKidsMode":Z
    :cond_0
    return-void

    .line 939
    .restart local v0    # "isKidsMode":Z
    :cond_1
    iget-object v1, p0, Lcom/sec/android/cover/sviewcover/SViewCoverView;->mSViewCoverUnlockArea:Lcom/sec/android/cover/sviewcover/SViewCoverAbstractUnlockArea;

    sget-object v2, Lcom/sec/android/cover/sviewcover/SViewCoverAbstractUnlockArea$Container;->Camera:Lcom/sec/android/cover/sviewcover/SViewCoverAbstractUnlockArea$Container;

    invoke-virtual {v1, v2, v3}, Lcom/sec/android/cover/sviewcover/SViewCoverAbstractUnlockArea;->setContainerVisibility(Lcom/sec/android/cover/sviewcover/SViewCoverAbstractUnlockArea$Container;I)V

    goto :goto_0
.end method

.method public moveToPage(Lcom/sec/android/cover/sviewcover/SViewCoverView$PageIndex;Z)V
    .locals 4
    .param p1, "pageIndex"    # Lcom/sec/android/cover/sviewcover/SViewCoverView$PageIndex;
    .param p2, "isSnapToPage"    # Z

    .prologue
    .line 963
    iget-object v1, p0, Lcom/sec/android/cover/sviewcover/SViewCoverView;->mSViewPager:Lcom/sec/android/cover/sviewcover/SViewCoverPager;

    if-nez v1, :cond_0

    .line 1005
    :goto_0
    return-void

    .line 967
    :cond_0
    const-string v1, "SViewCoverView"

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

    .line 968
    iput-object p1, p0, Lcom/sec/android/cover/sviewcover/SViewCoverView;->mCurrentPageIndex:Lcom/sec/android/cover/sviewcover/SViewCoverView$PageIndex;

    .line 970
    const/4 v0, 0x0

    .line 972
    .local v0, "movePageIndex":I
    sget-object v1, Lcom/sec/android/cover/sviewcover/SViewCoverView$6;->$SwitchMap$com$sec$android$cover$sviewcover$SViewCoverView$PageIndex:[I

    invoke-virtual {p1}, Lcom/sec/android/cover/sviewcover/SViewCoverView$PageIndex;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    .line 989
    iget-object v1, p0, Lcom/sec/android/cover/sviewcover/SViewCoverView;->mMainPage:Lcom/sec/android/cover/sviewcover/SViewCoverMainPage;

    if-eqz v1, :cond_1

    .line 990
    iget-object v1, p0, Lcom/sec/android/cover/sviewcover/SViewCoverView;->mSViewPager:Lcom/sec/android/cover/sviewcover/SViewCoverPager;

    iget-object v2, p0, Lcom/sec/android/cover/sviewcover/SViewCoverView;->mMainPage:Lcom/sec/android/cover/sviewcover/SViewCoverMainPage;

    invoke-virtual {v1, v2}, Lcom/sec/android/cover/sviewcover/SViewCoverPager;->indexOfChild(Landroid/view/View;)I

    move-result v0

    .line 995
    :cond_1
    :goto_1
    const/4 v1, -0x1

    if-ne v0, v1, :cond_2

    .line 996
    const-string v1, "SViewCoverView"

    const-string v2, "Index page not found!"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 997
    const/4 v0, 0x0

    .line 1000
    :cond_2
    const/4 v1, 0x1

    if-ne p2, v1, :cond_3

    .line 1001
    iget-object v1, p0, Lcom/sec/android/cover/sviewcover/SViewCoverView;->mSViewPager:Lcom/sec/android/cover/sviewcover/SViewCoverPager;

    invoke-virtual {v1, v0}, Lcom/sec/android/cover/sviewcover/SViewCoverPager;->snapToPage(I)V

    goto :goto_0

    .line 974
    :pswitch_0
    iget-object v1, p0, Lcom/sec/android/cover/sviewcover/SViewCoverView;->mMainPage:Lcom/sec/android/cover/sviewcover/SViewCoverMainPage;

    if-eqz v1, :cond_1

    .line 975
    iget-object v1, p0, Lcom/sec/android/cover/sviewcover/SViewCoverView;->mSViewPager:Lcom/sec/android/cover/sviewcover/SViewCoverPager;

    iget-object v2, p0, Lcom/sec/android/cover/sviewcover/SViewCoverView;->mMainPage:Lcom/sec/android/cover/sviewcover/SViewCoverMainPage;

    invoke-virtual {v1, v2}, Lcom/sec/android/cover/sviewcover/SViewCoverPager;->indexOfChild(Landroid/view/View;)I

    move-result v0

    goto :goto_1

    .line 979
    :pswitch_1
    iget-object v1, p0, Lcom/sec/android/cover/sviewcover/SViewCoverView;->mCameraPage:Lcom/sec/android/cover/sviewcover/SViewCoverCameraArea;

    if-eqz v1, :cond_1

    .line 980
    iget-object v1, p0, Lcom/sec/android/cover/sviewcover/SViewCoverView;->mSViewPager:Lcom/sec/android/cover/sviewcover/SViewCoverPager;

    iget-object v2, p0, Lcom/sec/android/cover/sviewcover/SViewCoverView;->mCameraPage:Lcom/sec/android/cover/sviewcover/SViewCoverCameraArea;

    invoke-virtual {v1, v2}, Lcom/sec/android/cover/sviewcover/SViewCoverPager;->indexOfChild(Landroid/view/View;)I

    move-result v0

    goto :goto_1

    .line 984
    :pswitch_2
    iget-object v1, p0, Lcom/sec/android/cover/sviewcover/SViewCoverView;->mShortcuts:Lcom/sec/android/cover/sviewcover/SViewCoverShortcuts;

    if-eqz v1, :cond_1

    .line 985
    iget-object v1, p0, Lcom/sec/android/cover/sviewcover/SViewCoverView;->mSViewPager:Lcom/sec/android/cover/sviewcover/SViewCoverPager;

    iget-object v2, p0, Lcom/sec/android/cover/sviewcover/SViewCoverView;->mShortcuts:Lcom/sec/android/cover/sviewcover/SViewCoverShortcuts;

    invoke-virtual {v1, v2}, Lcom/sec/android/cover/sviewcover/SViewCoverPager;->indexOfChild(Landroid/view/View;)I

    move-result v0

    goto :goto_1

    .line 1003
    :cond_3
    iget-object v1, p0, Lcom/sec/android/cover/sviewcover/SViewCoverView;->mSViewPager:Lcom/sec/android/cover/sviewcover/SViewCoverPager;

    invoke-virtual {v1, v0}, Lcom/sec/android/cover/sviewcover/SViewCoverPager;->setCurrentPage(I)V

    goto :goto_0

    .line 972
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method protected onAttachedToWindow()V
    .locals 2

    .prologue
    .line 444
    const-string v0, "SViewCoverView"

    const-string v1, "onAttachedToWindow"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 445
    invoke-super {p0}, Lcom/sec/android/cover/CoverMainFrameView;->onAttachedToWindow()V

    .line 447
    iget-object v0, p0, Lcom/sec/android/cover/sviewcover/SViewCoverView;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/sec/android/cover/monitor/CoverUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/sec/android/cover/monitor/CoverUpdateMonitor;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/cover/sviewcover/SViewCoverView;->mUpdateMonitorCallback:Lcom/sec/android/cover/monitor/CoverUpdateMonitorCallback;

    invoke-virtual {v0, v1}, Lcom/sec/android/cover/monitor/CoverUpdateMonitor;->registerCallback(Lcom/sec/android/cover/monitor/CoverUpdateMonitorCallback;)V

    .line 449
    iget-object v0, p0, Lcom/sec/android/cover/sviewcover/SViewCoverView;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/cover/sviewcover/SViewCoverView;->mKeyguardUpdateMonitorCallback:Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

    invoke-virtual {v0, v1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->registerCallback(Lcom/android/keyguard/KeyguardUpdateMonitorCallback;)V

    .line 451
    return-void
.end method

.method public onCoverEvent(Lcom/samsung/android/cover/CoverState;)V
    .locals 5
    .param p1, "state"    # Lcom/samsung/android/cover/CoverState;

    .prologue
    const/4 v1, 0x1

    .line 467
    invoke-super {p0, p1}, Lcom/sec/android/cover/CoverMainFrameView;->onCoverEvent(Lcom/samsung/android/cover/CoverState;)V

    .line 468
    iput-object p1, p0, Lcom/sec/android/cover/sviewcover/SViewCoverView;->mCoverState:Lcom/samsung/android/cover/CoverState;

    .line 470
    invoke-virtual {p1}, Lcom/samsung/android/cover/CoverState;->getSwitchState()Z

    move-result v2

    if-ne v2, v1, :cond_1

    move v0, v1

    .line 472
    .local v0, "isCoverOpen":Z
    :goto_0
    const-string v2, "SViewCoverView"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onCoverEvent :  isCoverOpen:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " coverType:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p1}, Lcom/samsung/android/cover/CoverState;->getType()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " coverColor:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p1}, Lcom/samsung/android/cover/CoverState;->getColor()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 476
    invoke-static {}, Lcom/sec/android/cover/FeatureUtils;->isLGTModel()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 477
    const-string v2, "lock"

    iget-object v3, p0, Lcom/sec/android/cover/sviewcover/SViewCoverView;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "missing_phone_lock"

    invoke-static {v3, v4}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 479
    const-string v1, "SViewCoverView"

    const-string v2, "onCoverEvent : missing_phone_lock"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 504
    :cond_0
    :goto_1
    return-void

    .line 470
    .end local v0    # "isCoverOpen":Z
    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    .line 484
    .restart local v0    # "isCoverOpen":Z
    :cond_2
    iget-object v2, p0, Lcom/sec/android/cover/sviewcover/SViewCoverView;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/sec/android/cover/manager/CoverPowerManager;->getInstance(Landroid/content/Context;)Lcom/sec/android/cover/manager/CoverPowerManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/android/cover/manager/CoverPowerManager;->cancelScreenOffTimer()V

    .line 486
    if-eqz v0, :cond_3

    .line 487
    invoke-direct {p0}, Lcom/sec/android/cover/sviewcover/SViewCoverView;->gotoOpenPage()V

    .line 488
    invoke-direct {p0}, Lcom/sec/android/cover/sviewcover/SViewCoverView;->playAnimationAndHide()V

    .line 489
    invoke-static {}, Lcom/sec/android/cover/FeatureUtils;->isSupportNotificationOnCover()Z

    move-result v2

    if-ne v2, v1, :cond_0

    .line 490
    invoke-virtual {p0}, Lcom/sec/android/cover/sviewcover/SViewCoverView;->cancelScreenOffTimer()V

    .line 491
    const-string v1, "SViewCoverView"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "cover open, seq = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget v3, Lcom/sec/android/cover/sviewcover/SViewCoverView;->mDelayedShowingSequence:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 494
    :cond_3
    invoke-direct {p0}, Lcom/sec/android/cover/sviewcover/SViewCoverView;->showCoverUi()V

    .line 495
    invoke-virtual {p0}, Lcom/sec/android/cover/sviewcover/SViewCoverView;->updateContentRootViewVisibility()V

    .line 496
    invoke-static {}, Landroid/hardware/input/InputManager;->getInstance()Landroid/hardware/input/InputManager;

    move-result-object v2

    invoke-virtual {v2}, Landroid/hardware/input/InputManager;->coverEventFinished()V

    .line 497
    invoke-static {}, Lcom/sec/android/cover/FeatureUtils;->isSupportNotificationOnCover()Z

    move-result v2

    if-ne v2, v1, :cond_0

    .line 498
    invoke-virtual {p0}, Lcom/sec/android/cover/sviewcover/SViewCoverView;->startScreenOffTimer()V

    goto :goto_1
.end method

.method protected onDetachedFromWindow()V
    .locals 2

    .prologue
    .line 455
    const-string v0, "SViewCoverView"

    const-string v1, "onDetachedFromWindow"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 456
    invoke-super {p0}, Lcom/sec/android/cover/CoverMainFrameView;->onDetachedFromWindow()V

    .line 458
    iget-object v0, p0, Lcom/sec/android/cover/sviewcover/SViewCoverView;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/sec/android/cover/manager/CoverPowerManager;->getInstance(Landroid/content/Context;)Lcom/sec/android/cover/manager/CoverPowerManager;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/sec/android/cover/manager/CoverPowerManager;->setTimerExpireHandler(Lcom/sec/android/cover/manager/CoverPowerManager$OnScreenOffTimerHandler;)V

    .line 460
    iget-object v0, p0, Lcom/sec/android/cover/sviewcover/SViewCoverView;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/sec/android/cover/monitor/CoverUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/sec/android/cover/monitor/CoverUpdateMonitor;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/cover/sviewcover/SViewCoverView;->mUpdateMonitorCallback:Lcom/sec/android/cover/monitor/CoverUpdateMonitorCallback;

    invoke-virtual {v0, v1}, Lcom/sec/android/cover/monitor/CoverUpdateMonitor;->unregisterCallback(Lcom/sec/android/cover/monitor/CoverUpdateMonitorCallback;)V

    .line 462
    iget-object v0, p0, Lcom/sec/android/cover/sviewcover/SViewCoverView;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/cover/sviewcover/SViewCoverView;->mKeyguardUpdateMonitorCallback:Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

    invoke-virtual {v0, v1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->removeCallback(Lcom/android/keyguard/KeyguardUpdateMonitorCallback;)V

    .line 463
    return-void
.end method

.method protected onFinishInflate()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 318
    invoke-super {p0}, Lcom/sec/android/cover/CoverMainFrameView;->onFinishInflate()V

    .line 319
    const-string v0, "SViewCoverView"

    const-string v1, "onFinishInflate()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 321
    invoke-virtual {p0, v3}, Lcom/sec/android/cover/sviewcover/SViewCoverView;->setVisibility(I)V

    .line 323
    sget v0, Lcom/sec/android/sviewcover/R$id;->content_root_normal:I

    invoke-virtual {p0, v0}, Lcom/sec/android/cover/sviewcover/SViewCoverView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/sec/android/cover/sviewcover/SViewCoverView;->mNormalContentRootView:Landroid/view/ViewGroup;

    .line 324
    sget v0, Lcom/sec/android/sviewcover/R$id;->content_root_pin_window:I

    invoke-virtual {p0, v0}, Lcom/sec/android/cover/sviewcover/SViewCoverView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/sec/android/cover/sviewcover/SViewCoverView;->mPinWindowContentRootView:Landroid/view/ViewGroup;

    .line 326
    iget-object v0, p0, Lcom/sec/android/cover/sviewcover/SViewCoverView;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/sec/android/cover/manager/CoverPowerManager;->getInstance(Landroid/content/Context;)Lcom/sec/android/cover/manager/CoverPowerManager;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/cover/sviewcover/SViewCoverView;->mScreenOffTimerHandler:Lcom/sec/android/cover/manager/CoverPowerManager$OnScreenOffTimerHandler;

    invoke-virtual {v0, v1}, Lcom/sec/android/cover/manager/CoverPowerManager;->setTimerExpireHandler(Lcom/sec/android/cover/manager/CoverPowerManager$OnScreenOffTimerHandler;)V

    .line 329
    sget v0, Lcom/sec/android/sviewcover/R$id;->s_view_cover_wallpaper:I

    invoke-virtual {p0, v0}, Lcom/sec/android/cover/sviewcover/SViewCoverView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/sec/android/cover/sviewcover/SViewCoverWallpaperView;

    iput-object v0, p0, Lcom/sec/android/cover/sviewcover/SViewCoverView;->mWallpaperView:Lcom/sec/android/cover/sviewcover/SViewCoverWallpaperView;

    .line 330
    iget-object v0, p0, Lcom/sec/android/cover/sviewcover/SViewCoverView;->mWallpaperView:Lcom/sec/android/cover/sviewcover/SViewCoverWallpaperView;

    if-eqz v0, :cond_0

    .line 331
    iget-object v0, p0, Lcom/sec/android/cover/sviewcover/SViewCoverView;->mWallpaperView:Lcom/sec/android/cover/sviewcover/SViewCoverWallpaperView;

    invoke-virtual {v0, v2}, Lcom/sec/android/cover/sviewcover/SViewCoverWallpaperView;->setProperWallpaper(Z)V

    .line 335
    :cond_0
    sget v0, Lcom/sec/android/sviewcover/R$id;->clear_sound_warning_contatiner:I

    invoke-virtual {p0, v0}, Lcom/sec/android/cover/sviewcover/SViewCoverView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/sec/android/cover/widget/RemoteViewContainerView;

    iput-object v0, p0, Lcom/sec/android/cover/sviewcover/SViewCoverView;->mVolumeWarningRemoteViewContainer:Lcom/sec/android/cover/widget/RemoteViewContainerView;

    .line 336
    iget-object v0, p0, Lcom/sec/android/cover/sviewcover/SViewCoverView;->mVolumeWarningRemoteViewContainer:Lcom/sec/android/cover/widget/RemoteViewContainerView;

    if-eqz v0, :cond_1

    .line 337
    iget-object v0, p0, Lcom/sec/android/cover/sviewcover/SViewCoverView;->mVolumeWarningRemoteViewContainer:Lcom/sec/android/cover/widget/RemoteViewContainerView;

    const-string v1, "volume"

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/cover/widget/RemoteViewContainerView;->init(Ljava/lang/String;Z)V

    .line 338
    iget-object v0, p0, Lcom/sec/android/cover/sviewcover/SViewCoverView;->mVolumeWarningRemoteViewContainer:Lcom/sec/android/cover/widget/RemoteViewContainerView;

    new-instance v1, Lcom/sec/android/cover/sviewcover/SViewCoverView$4;

    invoke-direct {v1, p0}, Lcom/sec/android/cover/sviewcover/SViewCoverView$4;-><init>(Lcom/sec/android/cover/sviewcover/SViewCoverView;)V

    invoke-virtual {v0, v1}, Lcom/sec/android/cover/widget/RemoteViewContainerView;->setOnUpdateListener(Lcom/sec/android/cover/widget/RemoteViewContainerView$OnUpdateListener;)V

    .line 351
    :cond_1
    sget v0, Lcom/sec/android/sviewcover/R$id;->voice_recorder_dialog_contatiner:I

    invoke-virtual {p0, v0}, Lcom/sec/android/cover/sviewcover/SViewCoverView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/sec/android/cover/widget/RemoteViewContainerView;

    iput-object v0, p0, Lcom/sec/android/cover/sviewcover/SViewCoverView;->mVoiceRecorderDialogContainer:Lcom/sec/android/cover/widget/RemoteViewContainerView;

    .line 352
    iget-object v0, p0, Lcom/sec/android/cover/sviewcover/SViewCoverView;->mVoiceRecorderDialogContainer:Lcom/sec/android/cover/widget/RemoteViewContainerView;

    const-string v1, "voice_recorder_dialog"

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/cover/widget/RemoteViewContainerView;->init(Ljava/lang/String;Z)V

    .line 353
    iget-object v0, p0, Lcom/sec/android/cover/sviewcover/SViewCoverView;->mVoiceRecorderDialogContainer:Lcom/sec/android/cover/widget/RemoteViewContainerView;

    new-instance v1, Lcom/sec/android/cover/sviewcover/SViewCoverView$5;

    invoke-direct {v1, p0}, Lcom/sec/android/cover/sviewcover/SViewCoverView$5;-><init>(Lcom/sec/android/cover/sviewcover/SViewCoverView;)V

    invoke-virtual {v0, v1}, Lcom/sec/android/cover/widget/RemoteViewContainerView;->setOnUpdateListener(Lcom/sec/android/cover/widget/RemoteViewContainerView$OnUpdateListener;)V

    .line 362
    iget-object v0, p0, Lcom/sec/android/cover/sviewcover/SViewCoverView;->mSViewPager:Lcom/sec/android/cover/sviewcover/SViewCoverPager;

    if-eqz v0, :cond_2

    .line 363
    iget-object v0, p0, Lcom/sec/android/cover/sviewcover/SViewCoverView;->mSViewPager:Lcom/sec/android/cover/sviewcover/SViewCoverPager;

    invoke-virtual {v0}, Lcom/sec/android/cover/sviewcover/SViewCoverPager;->removeAllViews()V

    .line 366
    :cond_2
    sget v0, Lcom/sec/android/sviewcover/R$id;->s_view_cover_pager:I

    invoke-virtual {p0, v0}, Lcom/sec/android/cover/sviewcover/SViewCoverView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/sec/android/cover/sviewcover/SViewCoverPager;

    iput-object v0, p0, Lcom/sec/android/cover/sviewcover/SViewCoverView;->mSViewPager:Lcom/sec/android/cover/sviewcover/SViewCoverPager;

    .line 367
    iget-object v0, p0, Lcom/sec/android/cover/sviewcover/SViewCoverView;->mSViewPager:Lcom/sec/android/cover/sviewcover/SViewCoverPager;

    if-eqz v0, :cond_3

    .line 368
    iget-object v0, p0, Lcom/sec/android/cover/sviewcover/SViewCoverView;->mSViewPager:Lcom/sec/android/cover/sviewcover/SViewCoverPager;

    invoke-virtual {v0, p0}, Lcom/sec/android/cover/sviewcover/SViewCoverPager;->setSViewCoverView(Lcom/sec/android/cover/sviewcover/SViewCoverView;)V

    .line 371
    :cond_3
    const-string v0, "SViewCoverView"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mSViewPager"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/android/cover/sviewcover/SViewCoverView;->mSViewPager:Lcom/sec/android/cover/sviewcover/SViewCoverPager;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 373
    sget v0, Lcom/sec/android/sviewcover/R$id;->s_view_cover_hide_effect:I

    invoke-virtual {p0, v0}, Lcom/sec/android/cover/sviewcover/SViewCoverView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/sec/android/cover/widget/CoverHideEffectView;

    iput-object v0, p0, Lcom/sec/android/cover/sviewcover/SViewCoverView;->mSViewCoverHideEffectView:Lcom/sec/android/cover/widget/CoverHideEffectView;

    .line 374
    iget-object v0, p0, Lcom/sec/android/cover/sviewcover/SViewCoverView;->mSViewCoverHideEffectView:Lcom/sec/android/cover/widget/CoverHideEffectView;

    if-eqz v0, :cond_4

    .line 375
    iget-object v0, p0, Lcom/sec/android/cover/sviewcover/SViewCoverView;->mSViewCoverHideEffectView:Lcom/sec/android/cover/widget/CoverHideEffectView;

    invoke-virtual {v0, p0}, Lcom/sec/android/cover/widget/CoverHideEffectView;->setListener(Lcom/sec/android/cover/widget/CoverHideEffectView$SViewCoverHideAnimationListener;)V

    .line 378
    :cond_4
    iget-object v0, p0, Lcom/sec/android/cover/sviewcover/SViewCoverView;->mSViewPager:Lcom/sec/android/cover/sviewcover/SViewCoverPager;

    if-eqz v0, :cond_9

    .line 379
    iput-boolean v3, p0, Lcom/sec/android/cover/sviewcover/SViewCoverView;->mIsAddedMissedEventWidget:Z

    .line 381
    sget v0, Lcom/sec/android/sviewcover/R$id;->s_view_cover_page_navigation:I

    invoke-virtual {p0, v0}, Lcom/sec/android/cover/sviewcover/SViewCoverView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/sec/android/cover/sviewcover/SViewCoverPagerNavigation;

    iput-object v0, p0, Lcom/sec/android/cover/sviewcover/SViewCoverView;->mSViewCoverPagerNavigation:Lcom/sec/android/cover/sviewcover/SViewCoverPagerNavigation;

    .line 382
    iget-object v0, p0, Lcom/sec/android/cover/sviewcover/SViewCoverView;->mSViewPager:Lcom/sec/android/cover/sviewcover/SViewCoverPager;

    if-eqz v0, :cond_5

    .line 383
    iget-object v0, p0, Lcom/sec/android/cover/sviewcover/SViewCoverView;->mSViewCoverPagerNavigation:Lcom/sec/android/cover/sviewcover/SViewCoverPagerNavigation;

    iget-object v1, p0, Lcom/sec/android/cover/sviewcover/SViewCoverView;->mSViewPager:Lcom/sec/android/cover/sviewcover/SViewCoverPager;

    invoke-virtual {v0, v1}, Lcom/sec/android/cover/sviewcover/SViewCoverPagerNavigation;->setPager(Lcom/sec/android/cover/sviewcover/SViewCoverPager;)V

    .line 386
    :cond_5
    iget-object v0, p0, Lcom/sec/android/cover/sviewcover/SViewCoverView;->mContext:Landroid/content/Context;

    sget v1, Lcom/sec/android/sviewcover/R$layout;->s_view_cover_shortcuts:I

    invoke-static {v0, v1, v4}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/sec/android/cover/sviewcover/SViewCoverShortcuts;

    iput-object v0, p0, Lcom/sec/android/cover/sviewcover/SViewCoverView;->mShortcuts:Lcom/sec/android/cover/sviewcover/SViewCoverShortcuts;

    .line 388
    iget-object v0, p0, Lcom/sec/android/cover/sviewcover/SViewCoverView;->mShortcuts:Lcom/sec/android/cover/sviewcover/SViewCoverShortcuts;

    if-eqz v0, :cond_6

    .line 389
    iget-object v0, p0, Lcom/sec/android/cover/sviewcover/SViewCoverView;->mSViewPager:Lcom/sec/android/cover/sviewcover/SViewCoverPager;

    iget-object v1, p0, Lcom/sec/android/cover/sviewcover/SViewCoverView;->mShortcuts:Lcom/sec/android/cover/sviewcover/SViewCoverShortcuts;

    invoke-virtual {v0, v1}, Lcom/sec/android/cover/sviewcover/SViewCoverPager;->addView(Landroid/view/View;)V

    .line 390
    iget-object v0, p0, Lcom/sec/android/cover/sviewcover/SViewCoverView;->mShortcuts:Lcom/sec/android/cover/sviewcover/SViewCoverShortcuts;

    invoke-virtual {v0, p0}, Lcom/sec/android/cover/sviewcover/SViewCoverShortcuts;->setCoverView(Lcom/sec/android/cover/sviewcover/SViewCoverView;)V

    .line 393
    :cond_6
    new-instance v0, Lcom/sec/android/cover/sviewcover/SViewCoverMainPage;

    iget-object v1, p0, Lcom/sec/android/cover/sviewcover/SViewCoverView;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/sec/android/cover/sviewcover/SViewCoverMainPage;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/sec/android/cover/sviewcover/SViewCoverView;->mMainPage:Lcom/sec/android/cover/sviewcover/SViewCoverMainPage;

    .line 394
    iget-object v0, p0, Lcom/sec/android/cover/sviewcover/SViewCoverView;->mMainPage:Lcom/sec/android/cover/sviewcover/SViewCoverMainPage;

    if-eqz v0, :cond_7

    .line 395
    iget-object v0, p0, Lcom/sec/android/cover/sviewcover/SViewCoverView;->mSViewPager:Lcom/sec/android/cover/sviewcover/SViewCoverPager;

    iget-object v1, p0, Lcom/sec/android/cover/sviewcover/SViewCoverView;->mMainPage:Lcom/sec/android/cover/sviewcover/SViewCoverMainPage;

    invoke-virtual {v0, v1}, Lcom/sec/android/cover/sviewcover/SViewCoverPager;->addView(Landroid/view/View;)V

    .line 398
    :cond_7
    iget-object v0, p0, Lcom/sec/android/cover/sviewcover/SViewCoverView;->mMainPage:Lcom/sec/android/cover/sviewcover/SViewCoverMainPage;

    sget v1, Lcom/sec/android/sviewcover/R$id;->s_view_cover_unlock_area:I

    invoke-virtual {v0, v1}, Lcom/sec/android/cover/sviewcover/SViewCoverMainPage;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/sec/android/cover/sviewcover/SViewCoverAbstractUnlockArea;

    iput-object v0, p0, Lcom/sec/android/cover/sviewcover/SViewCoverView;->mSViewCoverUnlockArea:Lcom/sec/android/cover/sviewcover/SViewCoverAbstractUnlockArea;

    .line 400
    iget-object v0, p0, Lcom/sec/android/cover/sviewcover/SViewCoverView;->mSViewCoverUnlockArea:Lcom/sec/android/cover/sviewcover/SViewCoverAbstractUnlockArea;

    iget-object v1, p0, Lcom/sec/android/cover/sviewcover/SViewCoverView;->mSViewCoverPagerNavigation:Lcom/sec/android/cover/sviewcover/SViewCoverPagerNavigation;

    invoke-virtual {v0, v1}, Lcom/sec/android/cover/sviewcover/SViewCoverAbstractUnlockArea;->setPagerNavigation(Lcom/sec/android/cover/sviewcover/SViewCoverPagerNavigation;)V

    .line 401
    iget-object v0, p0, Lcom/sec/android/cover/sviewcover/SViewCoverView;->mSViewCoverUnlockArea:Lcom/sec/android/cover/sviewcover/SViewCoverAbstractUnlockArea;

    invoke-virtual {v0, p0}, Lcom/sec/android/cover/sviewcover/SViewCoverAbstractUnlockArea;->setCoverView(Lcom/sec/android/cover/sviewcover/SViewCoverView;)V

    .line 403
    iget-object v0, p0, Lcom/sec/android/cover/sviewcover/SViewCoverView;->mContext:Landroid/content/Context;

    sget v1, Lcom/sec/android/sviewcover/R$layout;->s_view_cover_camera_layout:I

    invoke-static {v0, v1, v4}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/sec/android/cover/sviewcover/SViewCoverCameraArea;

    iput-object v0, p0, Lcom/sec/android/cover/sviewcover/SViewCoverView;->mCameraPage:Lcom/sec/android/cover/sviewcover/SViewCoverCameraArea;

    .line 405
    iget-object v0, p0, Lcom/sec/android/cover/sviewcover/SViewCoverView;->mCameraPage:Lcom/sec/android/cover/sviewcover/SViewCoverCameraArea;

    if-eqz v0, :cond_8

    .line 406
    iget-object v0, p0, Lcom/sec/android/cover/sviewcover/SViewCoverView;->mSViewPager:Lcom/sec/android/cover/sviewcover/SViewCoverPager;

    iget-object v1, p0, Lcom/sec/android/cover/sviewcover/SViewCoverView;->mCameraPage:Lcom/sec/android/cover/sviewcover/SViewCoverCameraArea;

    invoke-virtual {v0, v1}, Lcom/sec/android/cover/sviewcover/SViewCoverPager;->addView(Landroid/view/View;)V

    .line 407
    iget-object v0, p0, Lcom/sec/android/cover/sviewcover/SViewCoverView;->mCameraPage:Lcom/sec/android/cover/sviewcover/SViewCoverCameraArea;

    invoke-virtual {v0, p0}, Lcom/sec/android/cover/sviewcover/SViewCoverCameraArea;->setCoverView(Lcom/sec/android/cover/sviewcover/SViewCoverView;)V

    .line 410
    :cond_8
    iget-object v0, p0, Lcom/sec/android/cover/sviewcover/SViewCoverView;->mSViewPager:Lcom/sec/android/cover/sviewcover/SViewCoverPager;

    invoke-virtual {v0, p0}, Lcom/sec/android/cover/sviewcover/SViewCoverPager;->setPageSwitchListener(Lcom/sec/android/cover/widget/PagedView$PageSwitchListener;)V

    .line 412
    invoke-virtual {p0}, Lcom/sec/android/cover/sviewcover/SViewCoverView;->updateMissedEvent()V

    .line 413
    invoke-virtual {p0}, Lcom/sec/android/cover/sviewcover/SViewCoverView;->moveToMainPage()V

    .line 416
    :cond_9
    invoke-direct {p0}, Lcom/sec/android/cover/sviewcover/SViewCoverView;->requestRemoteViews()V

    .line 417
    invoke-virtual {p0}, Lcom/sec/android/cover/sviewcover/SViewCoverView;->updateContentRootViewVisibility()V

    .line 418
    return-void
.end method

.method public onHideAnimationFinished()V
    .locals 0

    .prologue
    .line 894
    invoke-direct {p0}, Lcom/sec/android/cover/sviewcover/SViewCoverView;->hideCoverUi()V

    .line 895
    return-void
.end method

.method public onPageSwitched(Landroid/view/View;I)V
    .locals 1
    .param p1, "newPage"    # Landroid/view/View;
    .param p2, "newPageIndex"    # I

    .prologue
    .line 917
    invoke-virtual {p0}, Lcom/sec/android/cover/sviewcover/SViewCoverView;->isCoverOpen()Z

    move-result v0

    if-nez v0, :cond_0

    .line 918
    iget-object v0, p0, Lcom/sec/android/cover/sviewcover/SViewCoverView;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/sec/android/cover/manager/CoverPowerManager;->getInstance(Landroid/content/Context;)Lcom/sec/android/cover/manager/CoverPowerManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/cover/manager/CoverPowerManager;->resetScreenOffTimer()V

    .line 920
    :cond_0
    return-void
.end method

.method public onPageSwitching(Landroid/view/View;I)V
    .locals 2
    .param p1, "newPage"    # Landroid/view/View;
    .param p2, "newPageIndex"    # I

    .prologue
    .line 924
    if-nez p2, :cond_0

    .line 925
    iget-object v0, p0, Lcom/sec/android/cover/sviewcover/SViewCoverView;->mSViewPager:Lcom/sec/android/cover/sviewcover/SViewCoverPager;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/sec/android/cover/sviewcover/SViewCoverPager;->setEnableTouchEvent(Z)V

    .line 929
    :goto_0
    return-void

    .line 927
    :cond_0
    iget-object v0, p0, Lcom/sec/android/cover/sviewcover/SViewCoverView;->mSViewPager:Lcom/sec/android/cover/sviewcover/SViewCoverPager;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/sec/android/cover/sviewcover/SViewCoverPager;->setEnableTouchEvent(Z)V

    goto :goto_0
.end method

.method public onStatusBarStateChanged(I)V
    .locals 1
    .param p1, "statusBarState"    # I

    .prologue
    .line 1024
    iput p1, p0, Lcom/sec/android/cover/sviewcover/SViewCoverView;->mStatusBarState:I

    .line 1025
    iget-object v0, p0, Lcom/sec/android/cover/sviewcover/SViewCoverView;->mMainPage:Lcom/sec/android/cover/sviewcover/SViewCoverMainPage;

    if-eqz v0, :cond_0

    .line 1026
    iget-object v0, p0, Lcom/sec/android/cover/sviewcover/SViewCoverView;->mMainPage:Lcom/sec/android/cover/sviewcover/SViewCoverMainPage;

    invoke-virtual {v0, p1}, Lcom/sec/android/cover/sviewcover/SViewCoverMainPage;->onStatusBarStateChanged(I)V

    .line 1028
    :cond_0
    return-void
.end method

.method public onWindowFocusChanged(Z)V
    .locals 2
    .param p1, "hasWindowFocus"    # Z

    .prologue
    .line 428
    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lcom/sec/android/cover/sviewcover/SViewCoverView;->isCoverOpen()Z

    move-result v0

    if-nez v0, :cond_0

    .line 429
    iget-object v0, p0, Lcom/sec/android/cover/sviewcover/SViewCoverView;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/sec/android/cover/manager/CoverPowerManager;->getInstance(Landroid/content/Context;)Lcom/sec/android/cover/manager/CoverPowerManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/cover/manager/CoverPowerManager;->resetScreenOffTimer()V

    .line 431
    invoke-static {}, Lcom/sec/android/cover/FeatureUtils;->isSupportNotificationOnCover()Z

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    .line 432
    invoke-virtual {p0}, Lcom/sec/android/cover/sviewcover/SViewCoverView;->cancelScreenOffTimer()V

    .line 433
    invoke-virtual {p0}, Lcom/sec/android/cover/sviewcover/SViewCoverView;->startScreenOffTimer()V

    .line 439
    :cond_0
    :goto_0
    invoke-super {p0, p1}, Lcom/sec/android/cover/CoverMainFrameView;->onWindowFocusChanged(Z)V

    .line 440
    return-void

    .line 435
    :cond_1
    invoke-direct {p0}, Lcom/sec/android/cover/sviewcover/SViewCoverView;->updateViewVisibleState()V

    goto :goto_0
.end method

.method public setCoverUiAlpha(F)V
    .locals 1
    .param p1, "alpha"    # F

    .prologue
    .line 1032
    iput p1, p0, Lcom/sec/android/cover/sviewcover/SViewCoverView;->mCurrentUiAlpha:F

    .line 1033
    iget-object v0, p0, Lcom/sec/android/cover/sviewcover/SViewCoverView;->mMainPage:Lcom/sec/android/cover/sviewcover/SViewCoverMainPage;

    if-eqz v0, :cond_0

    .line 1034
    iget-object v0, p0, Lcom/sec/android/cover/sviewcover/SViewCoverView;->mMainPage:Lcom/sec/android/cover/sviewcover/SViewCoverMainPage;

    invoke-virtual {v0, p1}, Lcom/sec/android/cover/sviewcover/SViewCoverMainPage;->setCoverUiAlpha(F)V

    .line 1036
    :cond_0
    return-void
.end method

.method public setPendingIntent(Landroid/content/Intent;)V
    .locals 0
    .param p1, "i"    # Landroid/content/Intent;

    .prologue
    .line 1019
    iput-object p1, p0, Lcom/sec/android/cover/sviewcover/SViewCoverView;->mPendingIntent:Landroid/content/Intent;

    .line 1020
    return-void
.end method

.method public setPreviewRootView(Landroid/widget/FrameLayout;)V
    .locals 1
    .param p1, "view"    # Landroid/widget/FrameLayout;

    .prologue
    .line 421
    iget-object v0, p0, Lcom/sec/android/cover/sviewcover/SViewCoverView;->mSViewCoverUnlockArea:Lcom/sec/android/cover/sviewcover/SViewCoverAbstractUnlockArea;

    if-eqz v0, :cond_0

    .line 422
    iget-object v0, p0, Lcom/sec/android/cover/sviewcover/SViewCoverView;->mSViewCoverUnlockArea:Lcom/sec/android/cover/sviewcover/SViewCoverAbstractUnlockArea;

    invoke-virtual {v0, p1}, Lcom/sec/android/cover/sviewcover/SViewCoverAbstractUnlockArea;->setPreviewRootView(Landroid/widget/FrameLayout;)V

    .line 424
    :cond_0
    return-void
.end method

.method public updateContentRootViewVisibility()V
    .locals 3

    .prologue
    const/16 v2, 0x8

    const/4 v1, 0x0

    .line 1043
    iget-object v0, p0, Lcom/sec/android/cover/sviewcover/SViewCoverView;->mActivityManager:Landroid/app/ActivityManager;

    invoke-virtual {v0}, Landroid/app/ActivityManager;->isInLockTaskMode()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1044
    iget-object v0, p0, Lcom/sec/android/cover/sviewcover/SViewCoverView;->mPinWindowContentRootView:Landroid/view/ViewGroup;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/sec/android/cover/sviewcover/SViewCoverView;->mPinWindowContentRootView:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_1

    .line 1046
    iget-object v0, p0, Lcom/sec/android/cover/sviewcover/SViewCoverView;->mPinWindowContentRootView:Landroid/view/ViewGroup;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 1048
    iget-object v0, p0, Lcom/sec/android/cover/sviewcover/SViewCoverView;->mNormalContentRootView:Landroid/view/ViewGroup;

    if-eqz v0, :cond_0

    .line 1049
    iget-object v0, p0, Lcom/sec/android/cover/sviewcover/SViewCoverView;->mNormalContentRootView:Landroid/view/ViewGroup;

    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 1052
    :cond_0
    invoke-virtual {p0}, Lcom/sec/android/cover/sviewcover/SViewCoverView;->requestLayout()V

    .line 1064
    :cond_1
    :goto_0
    return-void

    .line 1054
    :cond_2
    iget-object v0, p0, Lcom/sec/android/cover/sviewcover/SViewCoverView;->mNormalContentRootView:Landroid/view/ViewGroup;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/sec/android/cover/sviewcover/SViewCoverView;->mNormalContentRootView:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_1

    .line 1056
    iget-object v0, p0, Lcom/sec/android/cover/sviewcover/SViewCoverView;->mNormalContentRootView:Landroid/view/ViewGroup;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 1058
    iget-object v0, p0, Lcom/sec/android/cover/sviewcover/SViewCoverView;->mPinWindowContentRootView:Landroid/view/ViewGroup;

    if-eqz v0, :cond_3

    .line 1059
    iget-object v0, p0, Lcom/sec/android/cover/sviewcover/SViewCoverView;->mPinWindowContentRootView:Landroid/view/ViewGroup;

    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 1062
    :cond_3
    invoke-virtual {p0}, Lcom/sec/android/cover/sviewcover/SViewCoverView;->requestLayout()V

    goto :goto_0
.end method

.method public updateMissedEvent()V
    .locals 14

    .prologue
    const/4 v13, 0x0

    const/4 v3, 0x1

    .line 843
    const-string v2, "SViewCoverView"

    const-string v4, "updateMissedEvent()"

    invoke-static {v2, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 844
    iget-object v2, p0, Lcom/sec/android/cover/sviewcover/SViewCoverView;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/sec/android/cover/manager/CoverRemoteViewManager;->getInstance(Landroid/content/Context;)Lcom/sec/android/cover/manager/CoverRemoteViewManager;

    move-result-object v11

    .line 847
    .local v11, "coverRemoteViewManager":Lcom/sec/android/cover/manager/CoverRemoteViewManager;
    const-string v2, "new_message"

    invoke-virtual {v11, v2}, Lcom/sec/android/cover/manager/CoverRemoteViewManager;->getRemoteViewInfo(Ljava/lang/String;)Lcom/sec/android/cover/monitor/CoverUpdateMonitor$RemoteViewInfo;

    move-result-object v12

    .line 849
    .local v12, "messageRemoteViewInfo":Lcom/sec/android/cover/monitor/CoverUpdateMonitor$RemoteViewInfo;
    const-string v2, "missed_call"

    invoke-virtual {v11, v2}, Lcom/sec/android/cover/manager/CoverRemoteViewManager;->getRemoteViewInfo(Ljava/lang/String;)Lcom/sec/android/cover/monitor/CoverUpdateMonitor$RemoteViewInfo;

    move-result-object v0

    .line 852
    .local v0, "callRemoteViewInfo":Lcom/sec/android/cover/monitor/CoverUpdateMonitor$RemoteViewInfo;
    iget-object v2, p0, Lcom/sec/android/cover/sviewcover/SViewCoverView;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/sec/android/cover/manager/CoverMissedEventManager;->getInstance(Landroid/content/Context;)Lcom/sec/android/cover/manager/CoverMissedEventManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/android/cover/manager/CoverMissedEventManager;->clearMissedEvent()V

    .line 855
    iput-boolean v13, p0, Lcom/sec/android/cover/sviewcover/SViewCoverView;->mNeedToAddMissedEventWidget:Z

    .line 858
    if-eqz v12, :cond_0

    iget-boolean v2, v12, Lcom/sec/android/cover/monitor/CoverUpdateMonitor$RemoteViewInfo;->mVisibility:Z

    if-eqz v2, :cond_0

    .line 859
    iput-boolean v3, p0, Lcom/sec/android/cover/sviewcover/SViewCoverView;->mNeedToAddMissedEventWidget:Z

    .line 860
    new-instance v1, Lcom/sec/android/cover/manager/CoverMissedEventManager$RemoteViewsItem;

    iget-object v2, p0, Lcom/sec/android/cover/sviewcover/SViewCoverView;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/sec/android/cover/manager/CoverMissedEventManager;->getInstance(Landroid/content/Context;)Lcom/sec/android/cover/manager/CoverMissedEventManager;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-wide v4, v12, Lcom/sec/android/cover/monitor/CoverUpdateMonitor$RemoteViewInfo;->mTime:J

    iget-object v6, v12, Lcom/sec/android/cover/monitor/CoverUpdateMonitor$RemoteViewInfo;->mRemoteViews:Landroid/widget/RemoteViews;

    iget-object v7, v12, Lcom/sec/android/cover/monitor/CoverUpdateMonitor$RemoteViewInfo;->mSecureModeRemoteViews:Landroid/widget/RemoteViews;

    iget-object v8, v12, Lcom/sec/android/cover/monitor/CoverUpdateMonitor$RemoteViewInfo;->mPendingIntent:Landroid/app/PendingIntent;

    iget v9, v12, Lcom/sec/android/cover/monitor/CoverUpdateMonitor$RemoteViewInfo;->mCount:I

    iget-object v10, v12, Lcom/sec/android/cover/monitor/CoverUpdateMonitor$RemoteViewInfo;->mType:Ljava/lang/String;

    invoke-direct/range {v1 .. v10}, Lcom/sec/android/cover/manager/CoverMissedEventManager$RemoteViewsItem;-><init>(Lcom/sec/android/cover/manager/CoverMissedEventManager;IJLandroid/widget/RemoteViews;Landroid/widget/RemoteViews;Landroid/app/PendingIntent;ILjava/lang/String;)V

    .line 867
    .local v1, "remoteViewsItem":Lcom/sec/android/cover/manager/CoverMissedEventManager$RemoteViewsItem;
    iget-object v2, p0, Lcom/sec/android/cover/sviewcover/SViewCoverView;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/sec/android/cover/manager/CoverMissedEventManager;->getInstance(Landroid/content/Context;)Lcom/sec/android/cover/manager/CoverMissedEventManager;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/sec/android/cover/manager/CoverMissedEventManager;->addMissedEvent(Lcom/sec/android/cover/manager/CoverMissedEventManager$MissedEventItem;)V

    .line 871
    .end local v1    # "remoteViewsItem":Lcom/sec/android/cover/manager/CoverMissedEventManager$RemoteViewsItem;
    :cond_0
    if-eqz v0, :cond_1

    iget-boolean v2, v0, Lcom/sec/android/cover/monitor/CoverUpdateMonitor$RemoteViewInfo;->mVisibility:Z

    if-eqz v2, :cond_1

    .line 872
    iput-boolean v3, p0, Lcom/sec/android/cover/sviewcover/SViewCoverView;->mNeedToAddMissedEventWidget:Z

    .line 873
    new-instance v1, Lcom/sec/android/cover/manager/CoverMissedEventManager$RemoteViewsItem;

    iget-object v2, p0, Lcom/sec/android/cover/sviewcover/SViewCoverView;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/sec/android/cover/manager/CoverMissedEventManager;->getInstance(Landroid/content/Context;)Lcom/sec/android/cover/manager/CoverMissedEventManager;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-wide v4, v0, Lcom/sec/android/cover/monitor/CoverUpdateMonitor$RemoteViewInfo;->mTime:J

    iget-object v6, v0, Lcom/sec/android/cover/monitor/CoverUpdateMonitor$RemoteViewInfo;->mRemoteViews:Landroid/widget/RemoteViews;

    iget-object v7, v0, Lcom/sec/android/cover/monitor/CoverUpdateMonitor$RemoteViewInfo;->mSecureModeRemoteViews:Landroid/widget/RemoteViews;

    iget-object v8, v0, Lcom/sec/android/cover/monitor/CoverUpdateMonitor$RemoteViewInfo;->mPendingIntent:Landroid/app/PendingIntent;

    iget v9, v0, Lcom/sec/android/cover/monitor/CoverUpdateMonitor$RemoteViewInfo;->mCount:I

    iget-object v10, v0, Lcom/sec/android/cover/monitor/CoverUpdateMonitor$RemoteViewInfo;->mType:Ljava/lang/String;

    invoke-direct/range {v1 .. v10}, Lcom/sec/android/cover/manager/CoverMissedEventManager$RemoteViewsItem;-><init>(Lcom/sec/android/cover/manager/CoverMissedEventManager;IJLandroid/widget/RemoteViews;Landroid/widget/RemoteViews;Landroid/app/PendingIntent;ILjava/lang/String;)V

    .line 879
    .restart local v1    # "remoteViewsItem":Lcom/sec/android/cover/manager/CoverMissedEventManager$RemoteViewsItem;
    iget-object v2, p0, Lcom/sec/android/cover/sviewcover/SViewCoverView;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/sec/android/cover/manager/CoverMissedEventManager;->getInstance(Landroid/content/Context;)Lcom/sec/android/cover/manager/CoverMissedEventManager;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/sec/android/cover/manager/CoverMissedEventManager;->addMissedEvent(Lcom/sec/android/cover/manager/CoverMissedEventManager$MissedEventItem;)V

    .line 882
    .end local v1    # "remoteViewsItem":Lcom/sec/android/cover/manager/CoverMissedEventManager$RemoteViewsItem;
    :cond_1
    invoke-static {}, Lcom/sec/android/cover/FeatureUtils;->isZeroProject()Z

    move-result v2

    if-nez v2, :cond_2

    iget-boolean v2, p0, Lcom/sec/android/cover/sviewcover/SViewCoverView;->mNeedToAddMissedEventWidget:Z

    if-eqz v2, :cond_2

    .line 883
    invoke-virtual {p0, v3}, Lcom/sec/android/cover/sviewcover/SViewCoverView;->updateSViewCoverUnlockArea(Z)V

    .line 884
    invoke-virtual {p0}, Lcom/sec/android/cover/sviewcover/SViewCoverView;->updateMissedEventWidget()V

    .line 890
    :goto_0
    return-void

    .line 887
    :cond_2
    iput-boolean v13, p0, Lcom/sec/android/cover/sviewcover/SViewCoverView;->mNeedToAddMissedEventWidget:Z

    .line 888
    invoke-virtual {p0}, Lcom/sec/android/cover/sviewcover/SViewCoverView;->updateMissedEventWidget()V

    goto :goto_0
.end method

.method public updateMissedEventWidget()V
    .locals 9

    .prologue
    const/4 v8, 0x1

    const/16 v7, 0x8

    const/4 v6, 0x0

    .line 791
    invoke-virtual {p0}, Lcom/sec/android/cover/sviewcover/SViewCoverView;->isHideAllHandlerMode()Z

    move-result v4

    if-ne v4, v8, :cond_1

    .line 840
    :cond_0
    :goto_0
    return-void

    .line 795
    :cond_1
    iget-object v4, p0, Lcom/sec/android/cover/sviewcover/SViewCoverView;->mContext:Landroid/content/Context;

    const-string v5, "keyguard"

    invoke-virtual {v4, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/KeyguardManager;

    .line 797
    .local v1, "keyguardManager":Landroid/app/KeyguardManager;
    invoke-virtual {v1}, Landroid/app/KeyguardManager;->isKeyguardSecure()Z

    move-result v0

    .line 799
    .local v0, "isKeyguardSecureMode":Z
    iget-object v4, p0, Lcom/sec/android/cover/sviewcover/SViewCoverView;->mSViewPager:Lcom/sec/android/cover/sviewcover/SViewCoverPager;

    if-eqz v4, :cond_0

    .line 800
    if-nez v0, :cond_2

    iget-boolean v4, p0, Lcom/sec/android/cover/sviewcover/SViewCoverView;->mNeedToAddMissedEventWidget:Z

    if-nez v4, :cond_4

    .line 801
    :cond_2
    iget-boolean v4, p0, Lcom/sec/android/cover/sviewcover/SViewCoverView;->mIsAddedMissedEventWidget:Z

    if-eqz v4, :cond_0

    .line 805
    iput-boolean v6, p0, Lcom/sec/android/cover/sviewcover/SViewCoverView;->mIsAddedMissedEventWidget:Z

    .line 806
    iget-object v4, p0, Lcom/sec/android/cover/sviewcover/SViewCoverView;->mMainPage:Lcom/sec/android/cover/sviewcover/SViewCoverMainPage;

    invoke-virtual {v4}, Lcom/sec/android/cover/sviewcover/SViewCoverMainPage;->getMissedEventCount()I

    move-result v4

    if-nez v4, :cond_0

    .line 807
    iget-object v4, p0, Lcom/sec/android/cover/sviewcover/SViewCoverView;->mSViewCoverUnlockArea:Lcom/sec/android/cover/sviewcover/SViewCoverAbstractUnlockArea;

    sget-object v5, Lcom/sec/android/cover/sviewcover/SViewCoverAbstractUnlockArea$Container;->Noti:Lcom/sec/android/cover/sviewcover/SViewCoverAbstractUnlockArea$Container;

    invoke-virtual {v4, v5, v7}, Lcom/sec/android/cover/sviewcover/SViewCoverAbstractUnlockArea;->setPageButtonVisibility(Lcom/sec/android/cover/sviewcover/SViewCoverAbstractUnlockArea$Container;I)V

    .line 808
    iget-object v4, p0, Lcom/sec/android/cover/sviewcover/SViewCoverView;->mContext:Landroid/content/Context;

    invoke-static {v4}, Lcom/sec/android/cover/CoverUtils;->isEmergencyMode(Landroid/content/Context;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 809
    iget-object v4, p0, Lcom/sec/android/cover/sviewcover/SViewCoverView;->mSViewCoverUnlockArea:Lcom/sec/android/cover/sviewcover/SViewCoverAbstractUnlockArea;

    sget-object v5, Lcom/sec/android/cover/sviewcover/SViewCoverAbstractUnlockArea$Container;->Setting:Lcom/sec/android/cover/sviewcover/SViewCoverAbstractUnlockArea$Container;

    invoke-virtual {v4, v5, v7}, Lcom/sec/android/cover/sviewcover/SViewCoverAbstractUnlockArea;->setPageButtonVisibility(Lcom/sec/android/cover/sviewcover/SViewCoverAbstractUnlockArea$Container;I)V

    .line 810
    iget-object v4, p0, Lcom/sec/android/cover/sviewcover/SViewCoverView;->mSViewCoverUnlockArea:Lcom/sec/android/cover/sviewcover/SViewCoverAbstractUnlockArea;

    invoke-virtual {v4, v7}, Lcom/sec/android/cover/sviewcover/SViewCoverAbstractUnlockArea;->setPageNavigationVisibility(I)V

    .line 811
    iget-object v4, p0, Lcom/sec/android/cover/sviewcover/SViewCoverView;->mSViewPager:Lcom/sec/android/cover/sviewcover/SViewCoverPager;

    invoke-virtual {v4, v6}, Lcom/sec/android/cover/sviewcover/SViewCoverPager;->setEnableTouchEvent(Z)V

    goto :goto_0

    .line 813
    :cond_3
    iget-object v4, p0, Lcom/sec/android/cover/sviewcover/SViewCoverView;->mSViewCoverUnlockArea:Lcom/sec/android/cover/sviewcover/SViewCoverAbstractUnlockArea;

    sget-object v5, Lcom/sec/android/cover/sviewcover/SViewCoverAbstractUnlockArea$Container;->Setting:Lcom/sec/android/cover/sviewcover/SViewCoverAbstractUnlockArea$Container;

    invoke-virtual {v4, v5, v6}, Lcom/sec/android/cover/sviewcover/SViewCoverAbstractUnlockArea;->setPageButtonVisibility(Lcom/sec/android/cover/sviewcover/SViewCoverAbstractUnlockArea$Container;I)V

    goto :goto_0

    .line 819
    :cond_4
    iget-boolean v4, p0, Lcom/sec/android/cover/sviewcover/SViewCoverView;->mNeedToAddMissedEventWidget:Z

    if-eqz v4, :cond_0

    .line 820
    iget-boolean v4, p0, Lcom/sec/android/cover/sviewcover/SViewCoverView;->mIsAddedMissedEventWidget:Z

    if-nez v4, :cond_5

    iget-object v4, p0, Lcom/sec/android/cover/sviewcover/SViewCoverView;->mContext:Landroid/content/Context;

    invoke-static {v4}, Lcom/sec/android/cover/CoverUtils;->isKidsMode(Landroid/content/Context;)Z

    move-result v4

    if-nez v4, :cond_5

    .line 821
    iput-boolean v8, p0, Lcom/sec/android/cover/sviewcover/SViewCoverView;->mIsAddedMissedEventWidget:Z

    .line 823
    :cond_5
    iget-object v4, p0, Lcom/sec/android/cover/sviewcover/SViewCoverView;->mSViewCoverUnlockArea:Lcom/sec/android/cover/sviewcover/SViewCoverAbstractUnlockArea;

    if-eqz v4, :cond_0

    .line 824
    iget-object v4, p0, Lcom/sec/android/cover/sviewcover/SViewCoverView;->mMainPage:Lcom/sec/android/cover/sviewcover/SViewCoverMainPage;

    invoke-virtual {v4}, Lcom/sec/android/cover/sviewcover/SViewCoverMainPage;->getMissedEventCount()I

    move-result v4

    if-nez v4, :cond_6

    .line 825
    iget-object v4, p0, Lcom/sec/android/cover/sviewcover/SViewCoverView;->mSViewCoverUnlockArea:Lcom/sec/android/cover/sviewcover/SViewCoverAbstractUnlockArea;

    sget-object v5, Lcom/sec/android/cover/sviewcover/SViewCoverAbstractUnlockArea$Container;->Noti:Lcom/sec/android/cover/sviewcover/SViewCoverAbstractUnlockArea$Container;

    invoke-virtual {v4, v5, v7}, Lcom/sec/android/cover/sviewcover/SViewCoverAbstractUnlockArea;->setPageButtonVisibility(Lcom/sec/android/cover/sviewcover/SViewCoverAbstractUnlockArea$Container;I)V

    .line 826
    iget-object v4, p0, Lcom/sec/android/cover/sviewcover/SViewCoverView;->mSViewCoverUnlockArea:Lcom/sec/android/cover/sviewcover/SViewCoverAbstractUnlockArea;

    sget-object v5, Lcom/sec/android/cover/sviewcover/SViewCoverAbstractUnlockArea$Container;->Setting:Lcom/sec/android/cover/sviewcover/SViewCoverAbstractUnlockArea$Container;

    invoke-virtual {v4, v5, v6}, Lcom/sec/android/cover/sviewcover/SViewCoverAbstractUnlockArea;->setPageButtonVisibility(Lcom/sec/android/cover/sviewcover/SViewCoverAbstractUnlockArea$Container;I)V

    goto :goto_0

    .line 829
    :cond_6
    const/4 v2, 0x0

    .line 830
    .local v2, "missedCallCount":I
    const/4 v3, 0x0

    .line 831
    .local v3, "unreadMessage":I
    iget-object v4, p0, Lcom/sec/android/cover/sviewcover/SViewCoverView;->mMainPage:Lcom/sec/android/cover/sviewcover/SViewCoverMainPage;

    invoke-virtual {v4}, Lcom/sec/android/cover/sviewcover/SViewCoverMainPage;->getMissedCallCount()I

    move-result v2

    .line 832
    iget-object v4, p0, Lcom/sec/android/cover/sviewcover/SViewCoverView;->mMainPage:Lcom/sec/android/cover/sviewcover/SViewCoverMainPage;

    invoke-virtual {v4}, Lcom/sec/android/cover/sviewcover/SViewCoverMainPage;->getUnreadMessageCount()I

    move-result v3

    .line 833
    iget-object v4, p0, Lcom/sec/android/cover/sviewcover/SViewCoverView;->mSViewCoverUnlockArea:Lcom/sec/android/cover/sviewcover/SViewCoverAbstractUnlockArea;

    invoke-virtual {v4, v2, v3}, Lcom/sec/android/cover/sviewcover/SViewCoverAbstractUnlockArea;->updateNotiPageButton(II)V

    goto/16 :goto_0
.end method

.method public updateSViewCoverUnlockArea(Z)V
    .locals 5
    .param p1, "visibility"    # Z

    .prologue
    .line 737
    iget-object v3, p0, Lcom/sec/android/cover/sviewcover/SViewCoverView;->mSViewPager:Lcom/sec/android/cover/sviewcover/SViewCoverPager;

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/sec/android/cover/sviewcover/SViewCoverView;->mSViewCoverUnlockArea:Lcom/sec/android/cover/sviewcover/SViewCoverAbstractUnlockArea;

    if-nez v3, :cond_1

    .line 769
    :cond_0
    :goto_0
    return-void

    .line 741
    :cond_1
    iget-object v3, p0, Lcom/sec/android/cover/sviewcover/SViewCoverView;->mSViewPager:Lcom/sec/android/cover/sviewcover/SViewCoverPager;

    iget-object v4, p0, Lcom/sec/android/cover/sviewcover/SViewCoverView;->mMainPage:Lcom/sec/android/cover/sviewcover/SViewCoverMainPage;

    invoke-virtual {v3, v4}, Lcom/sec/android/cover/sviewcover/SViewCoverPager;->indexOfChild(Landroid/view/View;)I

    move-result v0

    .line 742
    .local v0, "homeIndex":I
    iget-object v3, p0, Lcom/sec/android/cover/sviewcover/SViewCoverView;->mSViewPager:Lcom/sec/android/cover/sviewcover/SViewCoverPager;

    invoke-virtual {v3}, Lcom/sec/android/cover/sviewcover/SViewCoverPager;->getCurrentPage()I

    move-result v3

    if-ne v3, v0, :cond_4

    .line 743
    if-eqz p1, :cond_3

    .line 744
    iget-object v3, p0, Lcom/sec/android/cover/sviewcover/SViewCoverView;->mSViewCoverUnlockArea:Lcom/sec/android/cover/sviewcover/SViewCoverAbstractUnlockArea;

    invoke-virtual {v3}, Lcom/sec/android/cover/sviewcover/SViewCoverAbstractUnlockArea;->handleShow()V

    .line 745
    const/4 v1, 0x0

    .line 746
    .local v1, "missedCallCount":I
    const/4 v2, 0x0

    .line 747
    .local v2, "unreadMessage":I
    iget-object v3, p0, Lcom/sec/android/cover/sviewcover/SViewCoverView;->mMainPage:Lcom/sec/android/cover/sviewcover/SViewCoverMainPage;

    invoke-virtual {v3}, Lcom/sec/android/cover/sviewcover/SViewCoverMainPage;->getMissedCallCount()I

    move-result v1

    .line 748
    iget-object v3, p0, Lcom/sec/android/cover/sviewcover/SViewCoverView;->mMainPage:Lcom/sec/android/cover/sviewcover/SViewCoverMainPage;

    invoke-virtual {v3}, Lcom/sec/android/cover/sviewcover/SViewCoverMainPage;->getUnreadMessageCount()I

    move-result v2

    .line 749
    if-nez v1, :cond_2

    if-nez v2, :cond_2

    .line 750
    const/4 v3, 0x0

    iput-boolean v3, p0, Lcom/sec/android/cover/sviewcover/SViewCoverView;->mNeedToAddMissedEventWidget:Z

    .line 755
    :goto_1
    invoke-virtual {p0}, Lcom/sec/android/cover/sviewcover/SViewCoverView;->updateMissedEventWidget()V

    .line 756
    iget-object v3, p0, Lcom/sec/android/cover/sviewcover/SViewCoverView;->mSViewCoverUnlockArea:Lcom/sec/android/cover/sviewcover/SViewCoverAbstractUnlockArea;

    invoke-virtual {v3, v1, v2}, Lcom/sec/android/cover/sviewcover/SViewCoverAbstractUnlockArea;->updateNotiArea(II)V

    goto :goto_0

    .line 752
    :cond_2
    const/4 v3, 0x1

    iput-boolean v3, p0, Lcom/sec/android/cover/sviewcover/SViewCoverView;->mNeedToAddMissedEventWidget:Z

    goto :goto_1

    .line 758
    .end local v1    # "missedCallCount":I
    .end local v2    # "unreadMessage":I
    :cond_3
    iget-object v3, p0, Lcom/sec/android/cover/sviewcover/SViewCoverView;->mSViewCoverUnlockArea:Lcom/sec/android/cover/sviewcover/SViewCoverAbstractUnlockArea;

    invoke-virtual {v3}, Lcom/sec/android/cover/sviewcover/SViewCoverAbstractUnlockArea;->handleHide()V

    goto :goto_0

    .line 761
    :cond_4
    iget-object v3, p0, Lcom/sec/android/cover/sviewcover/SViewCoverView;->mSViewCoverUnlockArea:Lcom/sec/android/cover/sviewcover/SViewCoverAbstractUnlockArea;

    if-eqz v3, :cond_0

    if-eqz p1, :cond_0

    .line 762
    const/4 v1, 0x0

    .line 763
    .restart local v1    # "missedCallCount":I
    const/4 v2, 0x0

    .line 764
    .restart local v2    # "unreadMessage":I
    iget-object v3, p0, Lcom/sec/android/cover/sviewcover/SViewCoverView;->mMainPage:Lcom/sec/android/cover/sviewcover/SViewCoverMainPage;

    invoke-virtual {v3}, Lcom/sec/android/cover/sviewcover/SViewCoverMainPage;->getMissedCallCount()I

    move-result v1

    .line 765
    iget-object v3, p0, Lcom/sec/android/cover/sviewcover/SViewCoverView;->mMainPage:Lcom/sec/android/cover/sviewcover/SViewCoverMainPage;

    invoke-virtual {v3}, Lcom/sec/android/cover/sviewcover/SViewCoverMainPage;->getUnreadMessageCount()I

    move-result v2

    .line 766
    iget-object v3, p0, Lcom/sec/android/cover/sviewcover/SViewCoverView;->mSViewCoverUnlockArea:Lcom/sec/android/cover/sviewcover/SViewCoverAbstractUnlockArea;

    invoke-virtual {v3, v1, v2}, Lcom/sec/android/cover/sviewcover/SViewCoverAbstractUnlockArea;->updateNotiArea(II)V

    goto :goto_0
.end method
