.class public Lcom/sec/android/cover/clearcover/ClearCoverController;
.super Lcom/sec/android/cover/BaseCoverController;
.source "ClearCoverController.java"


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private mCoverMainView:Lcom/sec/android/cover/CoverMainFrameView;

.field private mRootView:Landroid/widget/FrameLayout;

.field private mUpdateMonitorCallback:Lcom/sec/android/cover/monitor/CoverUpdateMonitorCallback;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 18
    const-class v0, Lcom/sec/android/cover/clearcover/ClearCoverController;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/sec/android/cover/clearcover/ClearCoverController;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/widget/FrameLayout;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "rootView"    # Landroid/widget/FrameLayout;

    .prologue
    .line 24
    invoke-direct {p0, p1}, Lcom/sec/android/cover/BaseCoverController;-><init>(Landroid/content/Context;)V

    .line 84
    new-instance v0, Lcom/sec/android/cover/clearcover/ClearCoverController$1;

    invoke-direct {v0, p0}, Lcom/sec/android/cover/clearcover/ClearCoverController$1;-><init>(Lcom/sec/android/cover/clearcover/ClearCoverController;)V

    iput-object v0, p0, Lcom/sec/android/cover/clearcover/ClearCoverController;->mUpdateMonitorCallback:Lcom/sec/android/cover/monitor/CoverUpdateMonitorCallback;

    .line 25
    iput-object p2, p0, Lcom/sec/android/cover/clearcover/ClearCoverController;->mRootView:Landroid/widget/FrameLayout;

    .line 26
    sget-object v0, Lcom/sec/android/cover/clearcover/ClearCoverController;->TAG:Ljava/lang/String;

    const-string v1, "ClearCoverController instance created"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 27
    return-void
.end method

.method static synthetic access$000(Lcom/sec/android/cover/clearcover/ClearCoverController;)V
    .locals 0
    .param p0, "x0"    # Lcom/sec/android/cover/clearcover/ClearCoverController;

    .prologue
    .line 17
    invoke-direct {p0}, Lcom/sec/android/cover/clearcover/ClearCoverController;->onFontSizeChanged()V

    return-void
.end method

.method private onFontSizeChanged()V
    .locals 3

    .prologue
    .line 76
    iget-object v0, p0, Lcom/sec/android/cover/clearcover/ClearCoverController;->mRootView:Landroid/widget/FrameLayout;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/cover/clearcover/ClearCoverController;->mCoverMainView:Lcom/sec/android/cover/CoverMainFrameView;

    if-eqz v0, :cond_0

    .line 77
    sget-object v0, Lcom/sec/android/cover/clearcover/ClearCoverController;->TAG:Ljava/lang/String;

    const-string v1, "Font scale changed, recreate view"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 78
    iget-object v0, p0, Lcom/sec/android/cover/clearcover/ClearCoverController;->mRootView:Landroid/widget/FrameLayout;

    iget-object v1, p0, Lcom/sec/android/cover/clearcover/ClearCoverController;->mCoverMainView:Lcom/sec/android/cover/CoverMainFrameView;

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->removeView(Landroid/view/View;)V

    .line 79
    iget-object v0, p0, Lcom/sec/android/cover/clearcover/ClearCoverController;->mContext:Landroid/content/Context;

    sget v1, Lcom/sec/android/sviewcover/R$layout;->clear_cover_view:I

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/sec/android/cover/clearcover/ClearCoverView;

    iput-object v0, p0, Lcom/sec/android/cover/clearcover/ClearCoverController;->mCoverMainView:Lcom/sec/android/cover/CoverMainFrameView;

    .line 80
    iget-object v0, p0, Lcom/sec/android/cover/clearcover/ClearCoverController;->mRootView:Landroid/widget/FrameLayout;

    iget-object v1, p0, Lcom/sec/android/cover/clearcover/ClearCoverController;->mCoverMainView:Lcom/sec/android/cover/CoverMainFrameView;

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 82
    :cond_0
    return-void
.end method


# virtual methods
.method public onCoverAttached(Lcom/samsung/android/cover/CoverState;)V
    .locals 3
    .param p1, "state"    # Lcom/samsung/android/cover/CoverState;

    .prologue
    .line 31
    invoke-super {p0, p1}, Lcom/sec/android/cover/BaseCoverController;->onCoverAttached(Lcom/samsung/android/cover/CoverState;)V

    .line 33
    iget-object v0, p0, Lcom/sec/android/cover/clearcover/ClearCoverController;->mContext:Landroid/content/Context;

    sget v1, Lcom/sec/android/sviewcover/R$layout;->clear_cover_view:I

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/sec/android/cover/clearcover/ClearCoverView;

    iput-object v0, p0, Lcom/sec/android/cover/clearcover/ClearCoverController;->mCoverMainView:Lcom/sec/android/cover/CoverMainFrameView;

    .line 35
    iget-object v0, p0, Lcom/sec/android/cover/clearcover/ClearCoverController;->mRootView:Landroid/widget/FrameLayout;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/cover/clearcover/ClearCoverController;->mCoverMainView:Lcom/sec/android/cover/CoverMainFrameView;

    if-eqz v0, :cond_0

    .line 36
    iget-object v0, p0, Lcom/sec/android/cover/clearcover/ClearCoverController;->mRootView:Landroid/widget/FrameLayout;

    iget-object v1, p0, Lcom/sec/android/cover/clearcover/ClearCoverController;->mCoverMainView:Lcom/sec/android/cover/CoverMainFrameView;

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 37
    sget-object v0, Lcom/sec/android/cover/clearcover/ClearCoverController;->TAG:Ljava/lang/String;

    const-string v1, "ClearCoverView added at rootview"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 40
    :cond_0
    iget-object v0, p0, Lcom/sec/android/cover/clearcover/ClearCoverController;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/sec/android/cover/monitor/CoverUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/sec/android/cover/monitor/CoverUpdateMonitor;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/cover/clearcover/ClearCoverController;->mUpdateMonitorCallback:Lcom/sec/android/cover/monitor/CoverUpdateMonitorCallback;

    invoke-virtual {v0, v1}, Lcom/sec/android/cover/monitor/CoverUpdateMonitor;->registerCallback(Lcom/sec/android/cover/monitor/CoverUpdateMonitorCallback;)V

    .line 41
    return-void
.end method

.method public onCoverDetatched(Lcom/samsung/android/cover/CoverState;)V
    .locals 3
    .param p1, "state"    # Lcom/samsung/android/cover/CoverState;

    .prologue
    const/4 v2, 0x0

    .line 45
    invoke-super {p0, p1}, Lcom/sec/android/cover/BaseCoverController;->onCoverDetatched(Lcom/samsung/android/cover/CoverState;)V

    .line 47
    iget-object v0, p0, Lcom/sec/android/cover/clearcover/ClearCoverController;->mCoverMainView:Lcom/sec/android/cover/CoverMainFrameView;

    if-eqz v0, :cond_0

    .line 48
    iget-object v0, p0, Lcom/sec/android/cover/clearcover/ClearCoverController;->mCoverMainView:Lcom/sec/android/cover/CoverMainFrameView;

    invoke-virtual {v0, p1}, Lcom/sec/android/cover/CoverMainFrameView;->onCoverEvent(Lcom/samsung/android/cover/CoverState;)V

    .line 51
    :cond_0
    iget-object v0, p0, Lcom/sec/android/cover/clearcover/ClearCoverController;->mRootView:Landroid/widget/FrameLayout;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/sec/android/cover/clearcover/ClearCoverController;->mCoverMainView:Lcom/sec/android/cover/CoverMainFrameView;

    if-eqz v0, :cond_1

    .line 52
    iget-object v0, p0, Lcom/sec/android/cover/clearcover/ClearCoverController;->mRootView:Landroid/widget/FrameLayout;

    iget-object v1, p0, Lcom/sec/android/cover/clearcover/ClearCoverController;->mCoverMainView:Lcom/sec/android/cover/CoverMainFrameView;

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->removeView(Landroid/view/View;)V

    .line 55
    :cond_1
    iget-object v0, p0, Lcom/sec/android/cover/clearcover/ClearCoverController;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/sec/android/cover/monitor/CoverUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/sec/android/cover/monitor/CoverUpdateMonitor;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/cover/clearcover/ClearCoverController;->mUpdateMonitorCallback:Lcom/sec/android/cover/monitor/CoverUpdateMonitorCallback;

    invoke-virtual {v0, v1}, Lcom/sec/android/cover/monitor/CoverUpdateMonitor;->unregisterCallback(Lcom/sec/android/cover/monitor/CoverUpdateMonitorCallback;)V

    .line 57
    iput-object v2, p0, Lcom/sec/android/cover/clearcover/ClearCoverController;->mCoverMainView:Lcom/sec/android/cover/CoverMainFrameView;

    .line 58
    iput-object v2, p0, Lcom/sec/android/cover/clearcover/ClearCoverController;->mRootView:Landroid/widget/FrameLayout;

    .line 59
    return-void
.end method

.method public onCoverEvent(Lcom/samsung/android/cover/CoverState;)V
    .locals 1
    .param p1, "state"    # Lcom/samsung/android/cover/CoverState;

    .prologue
    .line 63
    invoke-super {p0, p1}, Lcom/sec/android/cover/BaseCoverController;->onCoverEvent(Lcom/samsung/android/cover/CoverState;)V

    .line 65
    iget-object v0, p0, Lcom/sec/android/cover/clearcover/ClearCoverController;->mCoverMainView:Lcom/sec/android/cover/CoverMainFrameView;

    if-eqz v0, :cond_0

    .line 66
    iget-object v0, p0, Lcom/sec/android/cover/clearcover/ClearCoverController;->mCoverMainView:Lcom/sec/android/cover/CoverMainFrameView;

    invoke-virtual {v0, p1}, Lcom/sec/android/cover/CoverMainFrameView;->onCoverEvent(Lcom/samsung/android/cover/CoverState;)V

    .line 68
    :cond_0
    return-void
.end method

.method public onStatusBarStateChanged(I)V
    .locals 1
    .param p1, "statusBarState"    # I

    .prologue
    .line 72
    iget-object v0, p0, Lcom/sec/android/cover/clearcover/ClearCoverController;->mCoverMainView:Lcom/sec/android/cover/CoverMainFrameView;

    invoke-virtual {v0, p1}, Lcom/sec/android/cover/CoverMainFrameView;->onStatusBarStateChanged(I)V

    .line 73
    return-void
.end method
