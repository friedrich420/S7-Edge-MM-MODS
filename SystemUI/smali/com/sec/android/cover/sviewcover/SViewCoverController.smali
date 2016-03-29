.class public Lcom/sec/android/cover/sviewcover/SViewCoverController;
.super Lcom/sec/android/cover/BaseCoverController;
.source "SViewCoverController.java"


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private mCoverMainView:Lcom/sec/android/cover/CoverMainFrameView;

.field private mPreviewRootView:Landroid/widget/FrameLayout;

.field private mRootView:Landroid/widget/FrameLayout;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 15
    const-class v0, Lcom/sec/android/cover/sviewcover/SViewCoverController;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/sec/android/cover/sviewcover/SViewCoverController;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/widget/FrameLayout;Landroid/widget/FrameLayout;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "rootView"    # Landroid/widget/FrameLayout;
    .param p3, "previewRootView"    # Landroid/widget/FrameLayout;

    .prologue
    .line 22
    invoke-direct {p0, p1}, Lcom/sec/android/cover/BaseCoverController;-><init>(Landroid/content/Context;)V

    .line 23
    iput-object p2, p0, Lcom/sec/android/cover/sviewcover/SViewCoverController;->mRootView:Landroid/widget/FrameLayout;

    .line 24
    iput-object p3, p0, Lcom/sec/android/cover/sviewcover/SViewCoverController;->mPreviewRootView:Landroid/widget/FrameLayout;

    .line 25
    sget-object v0, Lcom/sec/android/cover/sviewcover/SViewCoverController;->TAG:Ljava/lang/String;

    const-string v1, "SViewCoverController instance created"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 26
    return-void
.end method


# virtual methods
.method public onCoverAttached(Lcom/samsung/android/cover/CoverState;)V
    .locals 3
    .param p1, "state"    # Lcom/samsung/android/cover/CoverState;

    .prologue
    .line 30
    invoke-super {p0, p1}, Lcom/sec/android/cover/BaseCoverController;->onCoverAttached(Lcom/samsung/android/cover/CoverState;)V

    .line 32
    iget-object v0, p0, Lcom/sec/android/cover/sviewcover/SViewCoverController;->mContext:Landroid/content/Context;

    sget v1, Lcom/sec/android/sviewcover/R$layout;->s_view_cover_view:I

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/sec/android/cover/sviewcover/SViewCoverView;

    iput-object v0, p0, Lcom/sec/android/cover/sviewcover/SViewCoverController;->mCoverMainView:Lcom/sec/android/cover/CoverMainFrameView;

    .line 34
    iget-object v0, p0, Lcom/sec/android/cover/sviewcover/SViewCoverController;->mRootView:Landroid/widget/FrameLayout;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/cover/sviewcover/SViewCoverController;->mCoverMainView:Lcom/sec/android/cover/CoverMainFrameView;

    if-eqz v0, :cond_0

    .line 35
    iget-object v0, p0, Lcom/sec/android/cover/sviewcover/SViewCoverController;->mRootView:Landroid/widget/FrameLayout;

    iget-object v1, p0, Lcom/sec/android/cover/sviewcover/SViewCoverController;->mCoverMainView:Lcom/sec/android/cover/CoverMainFrameView;

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 36
    sget-object v0, Lcom/sec/android/cover/sviewcover/SViewCoverController;->TAG:Ljava/lang/String;

    const-string v1, "SViewCoverView added at rootview"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 39
    :cond_0
    iget-object v0, p0, Lcom/sec/android/cover/sviewcover/SViewCoverController;->mCoverMainView:Lcom/sec/android/cover/CoverMainFrameView;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/sec/android/cover/sviewcover/SViewCoverController;->mCoverMainView:Lcom/sec/android/cover/CoverMainFrameView;

    instance-of v0, v0, Lcom/sec/android/cover/sviewcover/SViewCoverView;

    if-eqz v0, :cond_1

    .line 40
    iget-object v0, p0, Lcom/sec/android/cover/sviewcover/SViewCoverController;->mCoverMainView:Lcom/sec/android/cover/CoverMainFrameView;

    check-cast v0, Lcom/sec/android/cover/sviewcover/SViewCoverView;

    iget-object v1, p0, Lcom/sec/android/cover/sviewcover/SViewCoverController;->mPreviewRootView:Landroid/widget/FrameLayout;

    invoke-virtual {v0, v1}, Lcom/sec/android/cover/sviewcover/SViewCoverView;->setPreviewRootView(Landroid/widget/FrameLayout;)V

    .line 41
    sget-object v0, Lcom/sec/android/cover/sviewcover/SViewCoverController;->TAG:Ljava/lang/String;

    const-string v1, "SViewCoverView added at rootview"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 43
    :cond_1
    return-void
.end method

.method public onCoverDetatched(Lcom/samsung/android/cover/CoverState;)V
    .locals 3
    .param p1, "state"    # Lcom/samsung/android/cover/CoverState;

    .prologue
    const/4 v2, 0x0

    .line 47
    invoke-super {p0, p1}, Lcom/sec/android/cover/BaseCoverController;->onCoverDetatched(Lcom/samsung/android/cover/CoverState;)V

    .line 49
    iget-object v0, p0, Lcom/sec/android/cover/sviewcover/SViewCoverController;->mCoverMainView:Lcom/sec/android/cover/CoverMainFrameView;

    if-eqz v0, :cond_0

    .line 50
    iget-object v0, p0, Lcom/sec/android/cover/sviewcover/SViewCoverController;->mCoverMainView:Lcom/sec/android/cover/CoverMainFrameView;

    invoke-virtual {v0, p1}, Lcom/sec/android/cover/CoverMainFrameView;->onCoverEvent(Lcom/samsung/android/cover/CoverState;)V

    .line 53
    :cond_0
    iget-object v0, p0, Lcom/sec/android/cover/sviewcover/SViewCoverController;->mRootView:Landroid/widget/FrameLayout;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/sec/android/cover/sviewcover/SViewCoverController;->mCoverMainView:Lcom/sec/android/cover/CoverMainFrameView;

    if-eqz v0, :cond_1

    .line 54
    iget-object v0, p0, Lcom/sec/android/cover/sviewcover/SViewCoverController;->mRootView:Landroid/widget/FrameLayout;

    iget-object v1, p0, Lcom/sec/android/cover/sviewcover/SViewCoverController;->mCoverMainView:Lcom/sec/android/cover/CoverMainFrameView;

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->removeView(Landroid/view/View;)V

    .line 57
    :cond_1
    iput-object v2, p0, Lcom/sec/android/cover/sviewcover/SViewCoverController;->mCoverMainView:Lcom/sec/android/cover/CoverMainFrameView;

    .line 58
    iput-object v2, p0, Lcom/sec/android/cover/sviewcover/SViewCoverController;->mRootView:Landroid/widget/FrameLayout;

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
    iget-object v0, p0, Lcom/sec/android/cover/sviewcover/SViewCoverController;->mCoverMainView:Lcom/sec/android/cover/CoverMainFrameView;

    if-eqz v0, :cond_0

    .line 66
    iget-object v0, p0, Lcom/sec/android/cover/sviewcover/SViewCoverController;->mCoverMainView:Lcom/sec/android/cover/CoverMainFrameView;

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
    iget-object v0, p0, Lcom/sec/android/cover/sviewcover/SViewCoverController;->mCoverMainView:Lcom/sec/android/cover/CoverMainFrameView;

    if-eqz v0, :cond_0

    .line 73
    iget-object v0, p0, Lcom/sec/android/cover/sviewcover/SViewCoverController;->mCoverMainView:Lcom/sec/android/cover/CoverMainFrameView;

    invoke-virtual {v0, p1}, Lcom/sec/android/cover/CoverMainFrameView;->onStatusBarStateChanged(I)V

    .line 75
    :cond_0
    return-void
.end method

.method public setCoverUiAlpha(F)V
    .locals 1
    .param p1, "alpha"    # F

    .prologue
    .line 97
    iget-object v0, p0, Lcom/sec/android/cover/sviewcover/SViewCoverController;->mCoverMainView:Lcom/sec/android/cover/CoverMainFrameView;

    if-eqz v0, :cond_0

    .line 98
    iget-object v0, p0, Lcom/sec/android/cover/sviewcover/SViewCoverController;->mCoverMainView:Lcom/sec/android/cover/CoverMainFrameView;

    invoke-virtual {v0, p1}, Lcom/sec/android/cover/CoverMainFrameView;->setCoverUiAlpha(F)V

    .line 100
    :cond_0
    return-void
.end method

.method public showCoverOpenPopup()V
    .locals 4

    .prologue
    .line 79
    iget-object v0, p0, Lcom/sec/android/cover/sviewcover/SViewCoverController;->mCoverMainView:Lcom/sec/android/cover/CoverMainFrameView;

    if-eqz v0, :cond_0

    .line 80
    iget-object v0, p0, Lcom/sec/android/cover/sviewcover/SViewCoverController;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/sec/android/cover/manager/CoverPopupManager;->getInstance(Landroid/content/Context;)Lcom/sec/android/cover/manager/CoverPopupManager;

    move-result-object v0

    sget v1, Lcom/sec/android/sviewcover/R$string;->s_view_cover_open_cover_popup_view_detail:I

    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Lcom/sec/android/cover/manager/CoverPopupManager;->showPopupDialog(IILcom/sec/android/cover/manager/CoverPopupManager$PopupDismissCallback;)Z

    .line 84
    :cond_0
    return-void
.end method

.method public showCoverOpenPopup(Ljava/lang/String;)V
    .locals 3
    .param p1, "message"    # Ljava/lang/String;

    .prologue
    .line 88
    iget-object v0, p0, Lcom/sec/android/cover/sviewcover/SViewCoverController;->mCoverMainView:Lcom/sec/android/cover/CoverMainFrameView;

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    .line 89
    iget-object v0, p0, Lcom/sec/android/cover/sviewcover/SViewCoverController;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/sec/android/cover/manager/CoverPopupManager;->getInstance(Landroid/content/Context;)Lcom/sec/android/cover/manager/CoverPopupManager;

    move-result-object v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-virtual {v0, p1, v1, v2}, Lcom/sec/android/cover/manager/CoverPopupManager;->showPopupDialog(Ljava/lang/String;ILcom/sec/android/cover/manager/CoverPopupManager$PopupDismissCallback;)Z

    .line 93
    :cond_0
    return-void
.end method
