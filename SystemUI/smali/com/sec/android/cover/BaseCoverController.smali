.class public Lcom/sec/android/cover/BaseCoverController;
.super Ljava/lang/Object;
.source "BaseCoverController.java"


# instance fields
.field protected mContext:Landroid/content/Context;

.field private mCoverState:Lcom/samsung/android/cover/CoverState;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    iput-object p1, p0, Lcom/sec/android/cover/BaseCoverController;->mContext:Landroid/content/Context;

    .line 21
    return-void
.end method


# virtual methods
.method public isCoverOpen()Z
    .locals 3

    .prologue
    const/4 v0, 0x1

    .line 32
    iget-object v1, p0, Lcom/sec/android/cover/BaseCoverController;->mCoverState:Lcom/samsung/android/cover/CoverState;

    if-nez v1, :cond_1

    .line 33
    const-string v1, "BaseCoverController"

    const-string v2, "isCoverOpen : mCoverState is null!"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 37
    :cond_0
    :goto_0
    return v0

    :cond_1
    iget-object v1, p0, Lcom/sec/android/cover/BaseCoverController;->mCoverState:Lcom/samsung/android/cover/CoverState;

    invoke-virtual {v1}, Lcom/samsung/android/cover/CoverState;->getSwitchState()Z

    move-result v1

    if-eq v1, v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onCoverAttached(Lcom/samsung/android/cover/CoverState;)V
    .locals 0
    .param p1, "state"    # Lcom/samsung/android/cover/CoverState;

    .prologue
    .line 45
    iput-object p1, p0, Lcom/sec/android/cover/BaseCoverController;->mCoverState:Lcom/samsung/android/cover/CoverState;

    .line 46
    return-void
.end method

.method public onCoverDetatched(Lcom/samsung/android/cover/CoverState;)V
    .locals 0
    .param p1, "state"    # Lcom/samsung/android/cover/CoverState;

    .prologue
    .line 49
    iput-object p1, p0, Lcom/sec/android/cover/BaseCoverController;->mCoverState:Lcom/samsung/android/cover/CoverState;

    .line 50
    return-void
.end method

.method public onCoverEvent(Lcom/samsung/android/cover/CoverState;)V
    .locals 0
    .param p1, "state"    # Lcom/samsung/android/cover/CoverState;

    .prologue
    .line 53
    iput-object p1, p0, Lcom/sec/android/cover/BaseCoverController;->mCoverState:Lcom/samsung/android/cover/CoverState;

    .line 54
    return-void
.end method

.method public onStatusBarStateChanged(I)V
    .locals 0
    .param p1, "statusBarState"    # I

    .prologue
    .line 57
    return-void
.end method

.method public setCoverUiAlpha(F)V
    .locals 0
    .param p1, "alpha"    # F

    .prologue
    .line 66
    return-void
.end method

.method public showCoverOpenPopup()V
    .locals 0

    .prologue
    .line 60
    return-void
.end method

.method public showCoverOpenPopup(Ljava/lang/String;)V
    .locals 0
    .param p1, "message"    # Ljava/lang/String;

    .prologue
    .line 63
    return-void
.end method
