.class public Lcom/sec/android/cover/clearcover/ClearCoverZeroPage;
.super Lcom/sec/android/cover/clearcover/ClearCoverPage;
.source "ClearCoverZeroPage.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/cover/clearcover/ClearCoverZeroPage$4;,
        Lcom/sec/android/cover/clearcover/ClearCoverZeroPage$PopupType;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String;

.field private static WALLPAPER_COLOR_BLACK:I

.field private static WALLPAPER_COLOR_BLUE:I

.field private static WALLPAPER_COLOR_GOLD:I

.field private static WALLPAPER_COLOR_GREEN:I

.field private static WALLPAPER_COLOR_SILVER:I


# instance fields
.field private mClockWidget:Landroid/view/View;

.field private mDualClockWidget:Landroid/view/View;

.field private mMissedCallCountTextView:Landroid/widget/TextView;

.field private mMissedViewClickListener:Landroid/view/View$OnClickListener;

.field private mMusicRemoteViewContainer:Lcom/sec/android/cover/widget/RemoteViewContainerView;

.field private mOnHoverListener:Landroid/view/View$OnHoverListener;

.field private mPendingIntent:Landroid/app/PendingIntent;

.field private mRemoteViewContainerStack:Ljava/util/Stack;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Stack",
            "<",
            "Lcom/sec/android/cover/widget/RemoteViewContainerView;",
            ">;"
        }
    .end annotation
.end field

.field private mUnreadMessageCountTextView:Landroid/widget/TextView;

.field private mUpdateMonitorCallback:Lcom/sec/android/cover/monitor/CoverUpdateMonitorCallback;

.field private mVideoRemoteViewContainer:Lcom/sec/android/cover/widget/RemoteViewContainerView;

.field private mVoiceRecorderRemoteViewContainer:Lcom/sec/android/cover/widget/RemoteViewContainerView;

.field private mVolumeWarningRemoteViewContainer:Lcom/sec/android/cover/widget/RemoteViewContainerView;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 51
    const-class v0, Lcom/sec/android/cover/clearcover/ClearCoverZeroPage;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/sec/android/cover/clearcover/ClearCoverZeroPage;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 137
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/sec/android/cover/clearcover/ClearCoverZeroPage;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 138
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 141
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/sec/android/cover/clearcover/ClearCoverZeroPage;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 142
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    .line 145
    invoke-direct {p0, p1, p2, p3}, Lcom/sec/android/cover/clearcover/ClearCoverPage;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 69
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/cover/clearcover/ClearCoverZeroPage;->mPendingIntent:Landroid/app/PendingIntent;

    .line 71
    new-instance v0, Lcom/sec/android/cover/clearcover/ClearCoverZeroPage$1;

    invoke-direct {v0, p0}, Lcom/sec/android/cover/clearcover/ClearCoverZeroPage$1;-><init>(Lcom/sec/android/cover/clearcover/ClearCoverZeroPage;)V

    iput-object v0, p0, Lcom/sec/android/cover/clearcover/ClearCoverZeroPage;->mUpdateMonitorCallback:Lcom/sec/android/cover/monitor/CoverUpdateMonitorCallback;

    .line 97
    new-instance v0, Lcom/sec/android/cover/clearcover/ClearCoverZeroPage$2;

    invoke-direct {v0, p0}, Lcom/sec/android/cover/clearcover/ClearCoverZeroPage$2;-><init>(Lcom/sec/android/cover/clearcover/ClearCoverZeroPage;)V

    iput-object v0, p0, Lcom/sec/android/cover/clearcover/ClearCoverZeroPage;->mOnHoverListener:Landroid/view/View$OnHoverListener;

    .line 106
    new-instance v0, Lcom/sec/android/cover/clearcover/ClearCoverZeroPage$3;

    invoke-direct {v0, p0}, Lcom/sec/android/cover/clearcover/ClearCoverZeroPage$3;-><init>(Lcom/sec/android/cover/clearcover/ClearCoverZeroPage;)V

    iput-object v0, p0, Lcom/sec/android/cover/clearcover/ClearCoverZeroPage;->mMissedViewClickListener:Landroid/view/View$OnClickListener;

    .line 146
    iput-object p1, p0, Lcom/sec/android/cover/clearcover/ClearCoverZeroPage;->mContext:Landroid/content/Context;

    .line 148
    iget-object v0, p0, Lcom/sec/android/cover/clearcover/ClearCoverZeroPage;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/sec/android/sviewcover/R$color;->clear_cover_wallpapaer_color_silver:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    sput v0, Lcom/sec/android/cover/clearcover/ClearCoverZeroPage;->WALLPAPER_COLOR_SILVER:I

    .line 150
    iget-object v0, p0, Lcom/sec/android/cover/clearcover/ClearCoverZeroPage;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/sec/android/sviewcover/R$color;->clear_cover_wallpapaer_color_black:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    sput v0, Lcom/sec/android/cover/clearcover/ClearCoverZeroPage;->WALLPAPER_COLOR_BLACK:I

    .line 152
    iget-object v0, p0, Lcom/sec/android/cover/clearcover/ClearCoverZeroPage;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/sec/android/sviewcover/R$color;->clear_cover_wallpapaer_color_blue:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    sput v0, Lcom/sec/android/cover/clearcover/ClearCoverZeroPage;->WALLPAPER_COLOR_BLUE:I

    .line 154
    iget-object v0, p0, Lcom/sec/android/cover/clearcover/ClearCoverZeroPage;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/sec/android/sviewcover/R$color;->clear_cover_wallpapaer_color_green:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    sput v0, Lcom/sec/android/cover/clearcover/ClearCoverZeroPage;->WALLPAPER_COLOR_GREEN:I

    .line 156
    iget-object v0, p0, Lcom/sec/android/cover/clearcover/ClearCoverZeroPage;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/sec/android/sviewcover/R$color;->clear_cover_wallpapaer_color_gold:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    sput v0, Lcom/sec/android/cover/clearcover/ClearCoverZeroPage;->WALLPAPER_COLOR_GOLD:I

    .line 159
    new-instance v0, Ljava/util/Stack;

    invoke-direct {v0}, Ljava/util/Stack;-><init>()V

    iput-object v0, p0, Lcom/sec/android/cover/clearcover/ClearCoverZeroPage;->mRemoteViewContainerStack:Ljava/util/Stack;

    .line 160
    return-void
.end method

.method static synthetic access$000()Ljava/lang/String;
    .locals 1

    .prologue
    .line 45
    sget-object v0, Lcom/sec/android/cover/clearcover/ClearCoverZeroPage;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$100(Lcom/sec/android/cover/clearcover/ClearCoverZeroPage;)V
    .locals 0
    .param p0, "x0"    # Lcom/sec/android/cover/clearcover/ClearCoverZeroPage;

    .prologue
    .line 45
    invoke-direct {p0}, Lcom/sec/android/cover/clearcover/ClearCoverZeroPage;->setClockVisibility()V

    return-void
.end method

.method static synthetic access$200(Lcom/sec/android/cover/clearcover/ClearCoverZeroPage;)V
    .locals 0
    .param p0, "x0"    # Lcom/sec/android/cover/clearcover/ClearCoverZeroPage;

    .prologue
    .line 45
    invoke-direct {p0}, Lcom/sec/android/cover/clearcover/ClearCoverZeroPage;->updateMissedEvent()V

    return-void
.end method

.method static synthetic access$300(Lcom/sec/android/cover/clearcover/ClearCoverZeroPage;Lcom/sec/android/cover/monitor/CoverUpdateMonitor$RemoteViewInfo;)V
    .locals 0
    .param p0, "x0"    # Lcom/sec/android/cover/clearcover/ClearCoverZeroPage;
    .param p1, "x1"    # Lcom/sec/android/cover/monitor/CoverUpdateMonitor$RemoteViewInfo;

    .prologue
    .line 45
    invoke-direct {p0, p1}, Lcom/sec/android/cover/clearcover/ClearCoverZeroPage;->updateRemoteViewContainerVisibility(Lcom/sec/android/cover/monitor/CoverUpdateMonitor$RemoteViewInfo;)V

    return-void
.end method

.method static synthetic access$402(Lcom/sec/android/cover/clearcover/ClearCoverZeroPage;Landroid/app/PendingIntent;)Landroid/app/PendingIntent;
    .locals 0
    .param p0, "x0"    # Lcom/sec/android/cover/clearcover/ClearCoverZeroPage;
    .param p1, "x1"    # Landroid/app/PendingIntent;

    .prologue
    .line 45
    iput-object p1, p0, Lcom/sec/android/cover/clearcover/ClearCoverZeroPage;->mPendingIntent:Landroid/app/PendingIntent;

    return-object p1
.end method

.method static synthetic access$500(Lcom/sec/android/cover/clearcover/ClearCoverZeroPage;)Landroid/widget/TextView;
    .locals 1
    .param p0, "x0"    # Lcom/sec/android/cover/clearcover/ClearCoverZeroPage;

    .prologue
    .line 45
    iget-object v0, p0, Lcom/sec/android/cover/clearcover/ClearCoverZeroPage;->mUnreadMessageCountTextView:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$600(Lcom/sec/android/cover/clearcover/ClearCoverZeroPage;Lcom/sec/android/cover/clearcover/ClearCoverZeroPage$PopupType;)V
    .locals 0
    .param p0, "x0"    # Lcom/sec/android/cover/clearcover/ClearCoverZeroPage;
    .param p1, "x1"    # Lcom/sec/android/cover/clearcover/ClearCoverZeroPage$PopupType;

    .prologue
    .line 45
    invoke-direct {p0, p1}, Lcom/sec/android/cover/clearcover/ClearCoverZeroPage;->showCoverOpenPopup(Lcom/sec/android/cover/clearcover/ClearCoverZeroPage$PopupType;)V

    return-void
.end method

.method static synthetic access$700(Lcom/sec/android/cover/clearcover/ClearCoverZeroPage;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/sec/android/cover/clearcover/ClearCoverZeroPage;

    .prologue
    .line 45
    iget-object v0, p0, Lcom/sec/android/cover/clearcover/ClearCoverZeroPage;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$800(Lcom/sec/android/cover/clearcover/ClearCoverZeroPage;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/sec/android/cover/clearcover/ClearCoverZeroPage;

    .prologue
    .line 45
    iget-object v0, p0, Lcom/sec/android/cover/clearcover/ClearCoverZeroPage;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method private gotoOpenPage()V
    .locals 4

    .prologue
    .line 431
    iget-object v1, p0, Lcom/sec/android/cover/clearcover/ClearCoverZeroPage;->mPendingIntent:Landroid/app/PendingIntent;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/sec/android/cover/clearcover/ClearCoverZeroPage;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/sec/android/cover/manager/CoverPopupManager;->getInstance(Landroid/content/Context;)Lcom/sec/android/cover/manager/CoverPopupManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/cover/manager/CoverPopupManager;->isShowingPopupDialog()Z

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    .line 434
    :try_start_0
    iget-object v1, p0, Lcom/sec/android/cover/clearcover/ClearCoverZeroPage;->mPendingIntent:Landroid/app/PendingIntent;

    invoke-virtual {v1}, Landroid/app/PendingIntent;->send()V

    .line 435
    sget-object v1, Lcom/sec/android/cover/clearcover/ClearCoverZeroPage;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "gotoOpenPage() mPendingIntent sent"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/sec/android/cover/clearcover/ClearCoverZeroPage;->mPendingIntent:Landroid/app/PendingIntent;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/app/PendingIntent$CanceledException; {:try_start_0 .. :try_end_0} :catch_0

    .line 439
    :goto_0
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/sec/android/cover/clearcover/ClearCoverZeroPage;->mPendingIntent:Landroid/app/PendingIntent;

    .line 441
    :cond_0
    return-void

    .line 436
    :catch_0
    move-exception v0

    .line 437
    .local v0, "e":Landroid/app/PendingIntent$CanceledException;
    invoke-virtual {v0}, Landroid/app/PendingIntent$CanceledException;->printStackTrace()V

    goto :goto_0
.end method

.method private isPlayingCurrentRemoteView()Z
    .locals 6

    .prologue
    const/4 v2, 0x1

    const/4 v4, 0x0

    .line 374
    iget-object v3, p0, Lcom/sec/android/cover/clearcover/ClearCoverZeroPage;->mRemoteViewContainerStack:Ljava/util/Stack;

    invoke-virtual {v3}, Ljava/util/Stack;->isEmpty()Z

    move-result v3

    if-ne v3, v2, :cond_0

    .line 384
    :goto_0
    return v4

    .line 378
    :cond_0
    iget-object v3, p0, Lcom/sec/android/cover/clearcover/ClearCoverZeroPage;->mRemoteViewContainerStack:Ljava/util/Stack;

    invoke-virtual {v3}, Ljava/util/Stack;->peek()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/sec/android/cover/widget/RemoteViewContainerView;

    invoke-virtual {v3}, Lcom/sec/android/cover/widget/RemoteViewContainerView;->getRemoteViewType()Ljava/lang/String;

    move-result-object v0

    .line 379
    .local v0, "currentType":Ljava/lang/String;
    iget-object v3, p0, Lcom/sec/android/cover/clearcover/ClearCoverZeroPage;->mContext:Landroid/content/Context;

    invoke-static {v3}, Lcom/sec/android/cover/manager/CoverRemoteViewManager;->getInstance(Landroid/content/Context;)Lcom/sec/android/cover/manager/CoverRemoteViewManager;

    move-result-object v3

    invoke-virtual {v3, v0}, Lcom/sec/android/cover/manager/CoverRemoteViewManager;->getRemoteViewInfo(Ljava/lang/String;)Lcom/sec/android/cover/monitor/CoverUpdateMonitor$RemoteViewInfo;

    move-result-object v1

    .line 381
    .local v1, "info":Lcom/sec/android/cover/monitor/CoverUpdateMonitor$RemoteViewInfo;
    if-eqz v1, :cond_1

    iget-boolean v3, v1, Lcom/sec/android/cover/monitor/CoverUpdateMonitor$RemoteViewInfo;->mIsPlaying:Z

    if-eqz v3, :cond_1

    .line 383
    .local v2, "isPlaying":Z
    :goto_1
    sget-object v3, Lcom/sec/android/cover/clearcover/ClearCoverZeroPage;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "isPlayingCurrentRemoteView() currentType = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", isPlaying = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move v4, v2

    .line 384
    goto :goto_0

    .end local v2    # "isPlaying":Z
    :cond_1
    move v2, v4

    .line 381
    goto :goto_1
.end method

.method private setClockVisibility()V
    .locals 7

    .prologue
    const/16 v6, 0x8

    const/4 v0, 0x1

    const/4 v2, 0x0

    .line 216
    iget-object v3, p0, Lcom/sec/android/cover/clearcover/ClearCoverZeroPage;->mContext:Landroid/content/Context;

    invoke-static {v3}, Lcom/sec/android/cover/manager/CoverDatabaseManager;->getInstance(Landroid/content/Context;)Lcom/sec/android/cover/manager/CoverDatabaseManager;

    move-result-object v3

    const-string v4, "dualclock_menu_settings"

    invoke-virtual {v3, v4, v2}, Lcom/sec/android/cover/manager/CoverDatabaseManager;->getInt(Ljava/lang/String;I)I

    move-result v3

    if-ne v3, v0, :cond_1

    .line 219
    .local v0, "isDualClock":Z
    :goto_0
    iget-object v3, p0, Lcom/sec/android/cover/clearcover/ClearCoverZeroPage;->mContext:Landroid/content/Context;

    invoke-static {v3}, Lcom/sec/android/cover/CoverUtils;->isNetworkRoaming(Landroid/content/Context;)Z

    move-result v1

    .line 221
    .local v1, "isRoaming":Z
    sget-object v3, Lcom/sec/android/cover/clearcover/ClearCoverZeroPage;->TAG:Ljava/lang/String;

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

    .line 223
    if-eqz v0, :cond_2

    if-eqz v1, :cond_2

    .line 224
    iget-object v3, p0, Lcom/sec/android/cover/clearcover/ClearCoverZeroPage;->mClockWidget:Landroid/view/View;

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/sec/android/cover/clearcover/ClearCoverZeroPage;->mDualClockWidget:Landroid/view/View;

    if-eqz v3, :cond_0

    .line 225
    iget-object v3, p0, Lcom/sec/android/cover/clearcover/ClearCoverZeroPage;->mClockWidget:Landroid/view/View;

    invoke-virtual {v3, v6}, Landroid/view/View;->setVisibility(I)V

    .line 226
    iget-object v3, p0, Lcom/sec/android/cover/clearcover/ClearCoverZeroPage;->mDualClockWidget:Landroid/view/View;

    invoke-virtual {v3, v2}, Landroid/view/View;->setVisibility(I)V

    .line 234
    :cond_0
    :goto_1
    return-void

    .end local v0    # "isDualClock":Z
    .end local v1    # "isRoaming":Z
    :cond_1
    move v0, v2

    .line 216
    goto :goto_0

    .line 229
    .restart local v0    # "isDualClock":Z
    .restart local v1    # "isRoaming":Z
    :cond_2
    iget-object v3, p0, Lcom/sec/android/cover/clearcover/ClearCoverZeroPage;->mClockWidget:Landroid/view/View;

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/sec/android/cover/clearcover/ClearCoverZeroPage;->mDualClockWidget:Landroid/view/View;

    if-eqz v3, :cond_0

    .line 230
    iget-object v3, p0, Lcom/sec/android/cover/clearcover/ClearCoverZeroPage;->mDualClockWidget:Landroid/view/View;

    invoke-virtual {v3, v6}, Landroid/view/View;->setVisibility(I)V

    .line 231
    iget-object v3, p0, Lcom/sec/android/cover/clearcover/ClearCoverZeroPage;->mClockWidget:Landroid/view/View;

    invoke-virtual {v3, v2}, Landroid/view/View;->setVisibility(I)V

    goto :goto_1
.end method

.method private showCoverOpenPopup(Lcom/sec/android/cover/clearcover/ClearCoverZeroPage$PopupType;)V
    .locals 4
    .param p1, "type"    # Lcom/sec/android/cover/clearcover/ClearCoverZeroPage$PopupType;

    .prologue
    .line 388
    sget-object v1, Lcom/sec/android/cover/clearcover/ClearCoverZeroPage;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "showCoverOpenPopup() type = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 390
    const/4 v0, 0x0

    .line 391
    .local v0, "popupContentId":I
    sget-object v1, Lcom/sec/android/cover/clearcover/ClearCoverZeroPage$4;->$SwitchMap$com$sec$android$cover$clearcover$ClearCoverZeroPage$PopupType:[I

    invoke-virtual {p1}, Lcom/sec/android/cover/clearcover/ClearCoverZeroPage$PopupType;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    .line 405
    :goto_0
    if-nez v0, :cond_0

    .line 411
    :goto_1
    return-void

    .line 393
    :pswitch_0
    sget v0, Lcom/sec/android/sviewcover/R$string;->s_view_cover_missed_event_secured_popup:I

    .line 394
    goto :goto_0

    .line 396
    :pswitch_1
    sget v0, Lcom/sec/android/sviewcover/R$string;->s_view_cover_open_cover_popup_for_detail_message:I

    .line 397
    goto :goto_0

    .line 399
    :pswitch_2
    sget v0, Lcom/sec/android/sviewcover/R$string;->s_view_cover_open_cover_popup_for_detail_call:I

    .line 400
    goto :goto_0

    .line 409
    :cond_0
    iget-object v1, p0, Lcom/sec/android/cover/clearcover/ClearCoverZeroPage;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/sec/android/cover/manager/CoverPopupManager;->getInstance(Landroid/content/Context;)Lcom/sec/android/cover/manager/CoverPopupManager;

    move-result-object v1

    const/16 v2, 0x8

    const/4 v3, 0x0

    invoke-virtual {v1, v0, v2, v3}, Lcom/sec/android/cover/manager/CoverPopupManager;->showPopupDialog(IILcom/sec/android/cover/manager/CoverPopupManager$PopupDismissCallback;)Z

    goto :goto_1

    .line 391
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private updateMissedEvent()V
    .locals 15

    .prologue
    const/16 v14, 0x3e7

    const/16 v13, 0x8

    const/4 v7, 0x1

    const/4 v8, 0x0

    .line 237
    sget-object v9, Lcom/sec/android/cover/clearcover/ClearCoverZeroPage;->TAG:Ljava/lang/String;

    const-string v10, "updateMissedEvent()"

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 239
    iget-object v9, p0, Lcom/sec/android/cover/clearcover/ClearCoverZeroPage;->mContext:Landroid/content/Context;

    invoke-static {v9}, Lcom/sec/android/cover/manager/CoverRemoteViewManager;->getInstance(Landroid/content/Context;)Lcom/sec/android/cover/manager/CoverRemoteViewManager;

    move-result-object v9

    const-string v10, "new_message"

    invoke-virtual {v9, v10}, Lcom/sec/android/cover/manager/CoverRemoteViewManager;->getRemoteViewInfo(Ljava/lang/String;)Lcom/sec/android/cover/monitor/CoverUpdateMonitor$RemoteViewInfo;

    move-result-object v4

    .line 241
    .local v4, "messageRemoteViewInfo":Lcom/sec/android/cover/monitor/CoverUpdateMonitor$RemoteViewInfo;
    iget-object v9, p0, Lcom/sec/android/cover/clearcover/ClearCoverZeroPage;->mContext:Landroid/content/Context;

    invoke-static {v9}, Lcom/sec/android/cover/manager/CoverRemoteViewManager;->getInstance(Landroid/content/Context;)Lcom/sec/android/cover/manager/CoverRemoteViewManager;

    move-result-object v9

    const-string v10, "missed_call"

    invoke-virtual {v9, v10}, Lcom/sec/android/cover/manager/CoverRemoteViewManager;->getRemoteViewInfo(Ljava/lang/String;)Lcom/sec/android/cover/monitor/CoverUpdateMonitor$RemoteViewInfo;

    move-result-object v1

    .line 244
    .local v1, "callRemoteViewInfo":Lcom/sec/android/cover/monitor/CoverUpdateMonitor$RemoteViewInfo;
    const/4 v3, 0x1

    .line 246
    .local v3, "enableNoti":Z
    :try_start_0
    iget-object v9, p0, Lcom/sec/android/cover/clearcover/ClearCoverZeroPage;->mContext:Landroid/content/Context;

    invoke-virtual {v9}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v9

    const-string v10, "lock_screen_show_notifications"

    const/4 v11, -0x2

    invoke-static {v9, v10, v11}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)I
    :try_end_0
    .catch Landroid/provider/Settings$SettingNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v9

    if-ne v9, v7, :cond_4

    move v3, v7

    .line 253
    :goto_0
    sget-object v9, Lcom/sec/android/cover/clearcover/ClearCoverZeroPage;->TAG:Ljava/lang/String;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "enableNoti = "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 255
    const/4 v6, 0x0

    .line 256
    .local v6, "unreadMessageCount":I
    if-eqz v4, :cond_0

    .line 257
    iget v6, v4, Lcom/sec/android/cover/monitor/CoverUpdateMonitor$RemoteViewInfo;->mCount:I

    .line 259
    :cond_0
    const/4 v5, 0x0

    .line 260
    .local v5, "missedCallCount":I
    if-eqz v1, :cond_1

    .line 261
    iget v5, v1, Lcom/sec/android/cover/monitor/CoverUpdateMonitor$RemoteViewInfo;->mCount:I

    .line 264
    :cond_1
    sget-object v9, Lcom/sec/android/cover/clearcover/ClearCoverZeroPage;->TAG:Ljava/lang/String;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "unreadMessageCount =  "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ", missedCallCount = "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 267
    if-nez v3, :cond_5

    .line 269
    iget-object v7, p0, Lcom/sec/android/cover/clearcover/ClearCoverZeroPage;->mUnreadMessageCountTextView:Landroid/widget/TextView;

    if-eqz v7, :cond_2

    .line 270
    iget-object v7, p0, Lcom/sec/android/cover/clearcover/ClearCoverZeroPage;->mUnreadMessageCountTextView:Landroid/widget/TextView;

    invoke-virtual {v7, v13}, Landroid/widget/TextView;->setVisibility(I)V

    .line 272
    :cond_2
    iget-object v7, p0, Lcom/sec/android/cover/clearcover/ClearCoverZeroPage;->mMissedCallCountTextView:Landroid/widget/TextView;

    if-eqz v7, :cond_3

    .line 273
    iget-object v7, p0, Lcom/sec/android/cover/clearcover/ClearCoverZeroPage;->mMissedCallCountTextView:Landroid/widget/TextView;

    invoke-virtual {v7, v13}, Landroid/widget/TextView;->setVisibility(I)V

    .line 324
    :cond_3
    :goto_1
    return-void

    .end local v5    # "missedCallCount":I
    .end local v6    # "unreadMessageCount":I
    :cond_4
    move v3, v8

    .line 246
    goto :goto_0

    .line 248
    :catch_0
    move-exception v2

    .line 249
    .local v2, "e":Landroid/provider/Settings$SettingNotFoundException;
    sget-object v9, Lcom/sec/android/cover/clearcover/ClearCoverZeroPage;->TAG:Ljava/lang/String;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "updateNotiArea() can not found setting "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v2}, Landroid/provider/Settings$SettingNotFoundException;->getMessage()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 250
    invoke-virtual {v2}, Landroid/provider/Settings$SettingNotFoundException;->printStackTrace()V

    goto :goto_0

    .line 278
    .end local v2    # "e":Landroid/provider/Settings$SettingNotFoundException;
    .restart local v5    # "missedCallCount":I
    .restart local v6    # "unreadMessageCount":I
    :cond_5
    iget-object v9, p0, Lcom/sec/android/cover/clearcover/ClearCoverZeroPage;->mUnreadMessageCountTextView:Landroid/widget/TextView;

    if-eqz v9, :cond_6

    .line 279
    if-gtz v6, :cond_7

    .line 280
    iget-object v9, p0, Lcom/sec/android/cover/clearcover/ClearCoverZeroPage;->mUnreadMessageCountTextView:Landroid/widget/TextView;

    invoke-virtual {v9, v13}, Landroid/widget/TextView;->setVisibility(I)V

    .line 294
    :goto_2
    if-le v6, v14, :cond_9

    .line 295
    iget-object v9, p0, Lcom/sec/android/cover/clearcover/ClearCoverZeroPage;->mUnreadMessageCountTextView:Landroid/widget/TextView;

    const-string v10, "%d+"

    new-array v11, v7, [Ljava/lang/Object;

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    aput-object v12, v11, v8

    invoke-static {v10, v11}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 301
    :cond_6
    :goto_3
    iget-object v9, p0, Lcom/sec/android/cover/clearcover/ClearCoverZeroPage;->mMissedCallCountTextView:Landroid/widget/TextView;

    if-eqz v9, :cond_3

    .line 302
    if-gtz v5, :cond_a

    .line 303
    iget-object v9, p0, Lcom/sec/android/cover/clearcover/ClearCoverZeroPage;->mMissedCallCountTextView:Landroid/widget/TextView;

    invoke-virtual {v9, v13}, Landroid/widget/TextView;->setVisibility(I)V

    .line 317
    :goto_4
    if-le v5, v14, :cond_c

    .line 318
    iget-object v9, p0, Lcom/sec/android/cover/clearcover/ClearCoverZeroPage;->mMissedCallCountTextView:Landroid/widget/TextView;

    const-string v10, "%d+"

    new-array v7, v7, [Ljava/lang/Object;

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    aput-object v11, v7, v8

    invoke-static {v10, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v9, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 281
    :cond_7
    if-ne v6, v7, :cond_8

    .line 282
    iget-object v9, p0, Lcom/sec/android/cover/clearcover/ClearCoverZeroPage;->mUnreadMessageCountTextView:Landroid/widget/TextView;

    invoke-virtual {v9, v8}, Landroid/widget/TextView;->setVisibility(I)V

    .line 283
    new-instance v0, Ljava/lang/StringBuilder;

    iget-object v9, p0, Lcom/sec/android/cover/clearcover/ClearCoverZeroPage;->mContext:Landroid/content/Context;

    invoke-virtual {v9}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    sget v10, Lcom/sec/android/sviewcover/R$string;->clearcover_1_unread_message:I

    invoke-virtual {v9, v10}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v9

    invoke-direct {v0, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 285
    .local v0, "accessibilityDescription":Ljava/lang/StringBuilder;
    iget-object v9, p0, Lcom/sec/android/cover/clearcover/ClearCoverZeroPage;->mUnreadMessageCountTextView:Landroid/widget/TextView;

    invoke-virtual {v9, v0}, Landroid/widget/TextView;->setContentDescription(Ljava/lang/CharSequence;)V

    goto :goto_2

    .line 287
    .end local v0    # "accessibilityDescription":Ljava/lang/StringBuilder;
    :cond_8
    iget-object v9, p0, Lcom/sec/android/cover/clearcover/ClearCoverZeroPage;->mUnreadMessageCountTextView:Landroid/widget/TextView;

    invoke-virtual {v9, v8}, Landroid/widget/TextView;->setVisibility(I)V

    .line 288
    new-instance v0, Ljava/lang/StringBuilder;

    iget-object v9, p0, Lcom/sec/android/cover/clearcover/ClearCoverZeroPage;->mContext:Landroid/content/Context;

    invoke-virtual {v9}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    sget v10, Lcom/sec/android/sviewcover/R$string;->clearcover_n_unread_messages:I

    new-array v11, v7, [Ljava/lang/Object;

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    aput-object v12, v11, v8

    invoke-virtual {v9, v10, v11}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    invoke-direct {v0, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 291
    .restart local v0    # "accessibilityDescription":Ljava/lang/StringBuilder;
    iget-object v9, p0, Lcom/sec/android/cover/clearcover/ClearCoverZeroPage;->mUnreadMessageCountTextView:Landroid/widget/TextView;

    invoke-virtual {v9, v0}, Landroid/widget/TextView;->setContentDescription(Ljava/lang/CharSequence;)V

    goto :goto_2

    .line 297
    .end local v0    # "accessibilityDescription":Ljava/lang/StringBuilder;
    :cond_9
    iget-object v9, p0, Lcom/sec/android/cover/clearcover/ClearCoverZeroPage;->mUnreadMessageCountTextView:Landroid/widget/TextView;

    const-string v10, "%d"

    new-array v11, v7, [Ljava/lang/Object;

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    aput-object v12, v11, v8

    invoke-static {v10, v11}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_3

    .line 304
    :cond_a
    if-ne v5, v7, :cond_b

    .line 305
    iget-object v9, p0, Lcom/sec/android/cover/clearcover/ClearCoverZeroPage;->mMissedCallCountTextView:Landroid/widget/TextView;

    invoke-virtual {v9, v8}, Landroid/widget/TextView;->setVisibility(I)V

    .line 306
    new-instance v0, Ljava/lang/StringBuilder;

    iget-object v9, p0, Lcom/sec/android/cover/clearcover/ClearCoverZeroPage;->mContext:Landroid/content/Context;

    invoke-virtual {v9}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    sget v10, Lcom/sec/android/sviewcover/R$string;->clearcover_1_missed_call:I

    invoke-virtual {v9, v10}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v9

    invoke-direct {v0, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 308
    .restart local v0    # "accessibilityDescription":Ljava/lang/StringBuilder;
    iget-object v9, p0, Lcom/sec/android/cover/clearcover/ClearCoverZeroPage;->mMissedCallCountTextView:Landroid/widget/TextView;

    invoke-virtual {v9, v0}, Landroid/widget/TextView;->setContentDescription(Ljava/lang/CharSequence;)V

    goto/16 :goto_4

    .line 310
    .end local v0    # "accessibilityDescription":Ljava/lang/StringBuilder;
    :cond_b
    iget-object v9, p0, Lcom/sec/android/cover/clearcover/ClearCoverZeroPage;->mMissedCallCountTextView:Landroid/widget/TextView;

    invoke-virtual {v9, v8}, Landroid/widget/TextView;->setVisibility(I)V

    .line 311
    new-instance v0, Ljava/lang/StringBuilder;

    iget-object v9, p0, Lcom/sec/android/cover/clearcover/ClearCoverZeroPage;->mContext:Landroid/content/Context;

    invoke-virtual {v9}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    sget v10, Lcom/sec/android/sviewcover/R$string;->clearcover_n_missed_calls:I

    new-array v11, v7, [Ljava/lang/Object;

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    aput-object v12, v11, v8

    invoke-virtual {v9, v10, v11}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    invoke-direct {v0, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 314
    .restart local v0    # "accessibilityDescription":Ljava/lang/StringBuilder;
    iget-object v9, p0, Lcom/sec/android/cover/clearcover/ClearCoverZeroPage;->mMissedCallCountTextView:Landroid/widget/TextView;

    invoke-virtual {v9, v0}, Landroid/widget/TextView;->setContentDescription(Ljava/lang/CharSequence;)V

    goto/16 :goto_4

    .line 320
    .end local v0    # "accessibilityDescription":Ljava/lang/StringBuilder;
    :cond_c
    iget-object v9, p0, Lcom/sec/android/cover/clearcover/ClearCoverZeroPage;->mMissedCallCountTextView:Landroid/widget/TextView;

    const-string v10, "%d"

    new-array v7, v7, [Ljava/lang/Object;

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    aput-object v11, v7, v8

    invoke-static {v10, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v9, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_1
.end method

.method private updateRemoteViewContainerVisibility(Lcom/sec/android/cover/monitor/CoverUpdateMonitor$RemoteViewInfo;)V
    .locals 8
    .param p1, "latestRemoteView"    # Lcom/sec/android/cover/monitor/CoverUpdateMonitor$RemoteViewInfo;

    .prologue
    const/16 v7, 0x8

    const/4 v6, 0x0

    const/4 v5, 0x1

    .line 327
    sget-object v3, Lcom/sec/android/cover/clearcover/ClearCoverZeroPage;->TAG:Ljava/lang/String;

    const-string v4, "updateRemoteViewContainerVisibility()"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 329
    iget-object v1, p1, Lcom/sec/android/cover/monitor/CoverUpdateMonitor$RemoteViewInfo;->mType:Ljava/lang/String;

    .line 330
    .local v1, "type":Ljava/lang/String;
    iget-boolean v2, p1, Lcom/sec/android/cover/monitor/CoverUpdateMonitor$RemoteViewInfo;->mVisibility:Z

    .line 332
    .local v2, "visibility":Z
    const/4 v0, 0x0

    .line 334
    .local v0, "container":Lcom/sec/android/cover/widget/RemoteViewContainerView;
    const-string v3, "music_controller"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-ne v3, v5, :cond_2

    .line 335
    iget-object v0, p0, Lcom/sec/android/cover/clearcover/ClearCoverZeroPage;->mMusicRemoteViewContainer:Lcom/sec/android/cover/widget/RemoteViewContainerView;

    .line 342
    :cond_0
    :goto_0
    if-nez v0, :cond_4

    .line 343
    sget-object v3, Lcom/sec/android/cover/clearcover/ClearCoverZeroPage;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "return : container is null, type = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 371
    :cond_1
    :goto_1
    return-void

    .line 336
    :cond_2
    const-string v3, "voice_recorder"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-ne v3, v5, :cond_3

    .line 337
    iget-object v0, p0, Lcom/sec/android/cover/clearcover/ClearCoverZeroPage;->mVoiceRecorderRemoteViewContainer:Lcom/sec/android/cover/widget/RemoteViewContainerView;

    goto :goto_0

    .line 338
    :cond_3
    const-string v3, "video_controller"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-ne v3, v5, :cond_0

    .line 339
    iget-object v0, p0, Lcom/sec/android/cover/clearcover/ClearCoverZeroPage;->mVideoRemoteViewContainer:Lcom/sec/android/cover/widget/RemoteViewContainerView;

    goto :goto_0

    .line 347
    :cond_4
    iget-boolean v3, p1, Lcom/sec/android/cover/monitor/CoverUpdateMonitor$RemoteViewInfo;->mIsPlaying:Z

    if-nez v3, :cond_5

    invoke-direct {p0}, Lcom/sec/android/cover/clearcover/ClearCoverZeroPage;->isPlayingCurrentRemoteView()Z

    move-result v3

    if-ne v3, v5, :cond_5

    .line 348
    sget-object v4, Lcom/sec/android/cover/clearcover/ClearCoverZeroPage;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "return : current remote view is playing("

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v3, p0, Lcom/sec/android/cover/clearcover/ClearCoverZeroPage;->mRemoteViewContainerStack:Ljava/util/Stack;

    invoke-virtual {v3}, Ljava/util/Stack;->peek()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/sec/android/cover/widget/RemoteViewContainerView;

    invoke-virtual {v3}, Lcom/sec/android/cover/widget/RemoteViewContainerView;->getRemoteViewType()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, ")"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v4, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 352
    :cond_5
    if-ne v2, v5, :cond_8

    .line 353
    iget-object v3, p0, Lcom/sec/android/cover/clearcover/ClearCoverZeroPage;->mRemoteViewContainerStack:Ljava/util/Stack;

    invoke-virtual {v3}, Ljava/util/Stack;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_6

    iget-object v3, p0, Lcom/sec/android/cover/clearcover/ClearCoverZeroPage;->mRemoteViewContainerStack:Ljava/util/Stack;

    invoke-virtual {v3}, Ljava/util/Stack;->peek()Ljava/lang/Object;

    move-result-object v3

    if-ne v3, v0, :cond_6

    .line 355
    sget-object v3, Lcom/sec/android/cover/clearcover/ClearCoverZeroPage;->TAG:Ljava/lang/String;

    const-string v4, "return : top container and latest container are same"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 358
    :cond_6
    iget-object v3, p0, Lcom/sec/android/cover/clearcover/ClearCoverZeroPage;->mRemoteViewContainerStack:Ljava/util/Stack;

    invoke-virtual {v3}, Ljava/util/Stack;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_7

    .line 359
    iget-object v3, p0, Lcom/sec/android/cover/clearcover/ClearCoverZeroPage;->mRemoteViewContainerStack:Ljava/util/Stack;

    invoke-virtual {v3}, Ljava/util/Stack;->peek()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/sec/android/cover/widget/RemoteViewContainerView;

    invoke-virtual {v3, v7}, Lcom/sec/android/cover/widget/RemoteViewContainerView;->setVisibility(I)V

    .line 361
    :cond_7
    iget-object v3, p0, Lcom/sec/android/cover/clearcover/ClearCoverZeroPage;->mRemoteViewContainerStack:Ljava/util/Stack;

    invoke-virtual {v3, v0}, Ljava/util/Stack;->remove(Ljava/lang/Object;)Z

    .line 362
    iget-object v3, p0, Lcom/sec/android/cover/clearcover/ClearCoverZeroPage;->mRemoteViewContainerStack:Ljava/util/Stack;

    invoke-virtual {v3, v0}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    .line 363
    invoke-virtual {v0, v6}, Lcom/sec/android/cover/widget/RemoteViewContainerView;->setVisibility(I)V

    goto/16 :goto_1

    .line 365
    :cond_8
    invoke-virtual {v0, v7}, Lcom/sec/android/cover/widget/RemoteViewContainerView;->setVisibility(I)V

    .line 366
    iget-object v3, p0, Lcom/sec/android/cover/clearcover/ClearCoverZeroPage;->mRemoteViewContainerStack:Ljava/util/Stack;

    invoke-virtual {v3, v0}, Ljava/util/Stack;->remove(Ljava/lang/Object;)Z

    .line 367
    iget-object v3, p0, Lcom/sec/android/cover/clearcover/ClearCoverZeroPage;->mRemoteViewContainerStack:Ljava/util/Stack;

    invoke-virtual {v3}, Ljava/util/Stack;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_1

    .line 368
    iget-object v3, p0, Lcom/sec/android/cover/clearcover/ClearCoverZeroPage;->mRemoteViewContainerStack:Ljava/util/Stack;

    invoke-virtual {v3}, Ljava/util/Stack;->peek()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/sec/android/cover/widget/RemoteViewContainerView;

    invoke-virtual {v3, v6}, Lcom/sec/android/cover/widget/RemoteViewContainerView;->setVisibility(I)V

    goto/16 :goto_1
.end method


# virtual methods
.method protected getUpdateMonitorCallback()Lcom/sec/android/cover/monitor/CoverUpdateMonitorCallback;
    .locals 1

    .prologue
    .line 415
    iget-object v0, p0, Lcom/sec/android/cover/clearcover/ClearCoverZeroPage;->mUpdateMonitorCallback:Lcom/sec/android/cover/monitor/CoverUpdateMonitorCallback;

    return-object v0
.end method

.method protected onCoverEvent()V
    .locals 2

    .prologue
    .line 420
    iget-object v0, p0, Lcom/sec/android/cover/clearcover/ClearCoverZeroPage;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/sec/android/cover/manager/CoverPowerManager;->getInstance(Landroid/content/Context;)Lcom/sec/android/cover/manager/CoverPowerManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/cover/manager/CoverPowerManager;->userActivity()V

    .line 422
    invoke-virtual {p0}, Lcom/sec/android/cover/clearcover/ClearCoverZeroPage;->isCoverOpen()Z

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 423
    invoke-direct {p0}, Lcom/sec/android/cover/clearcover/ClearCoverZeroPage;->gotoOpenPage()V

    .line 428
    :goto_0
    return-void

    .line 425
    :cond_0
    invoke-virtual {p0}, Lcom/sec/android/cover/clearcover/ClearCoverZeroPage;->setBackgroundColor()V

    .line 426
    invoke-direct {p0}, Lcom/sec/android/cover/clearcover/ClearCoverZeroPage;->updateMissedEvent()V

    goto :goto_0
.end method

.method protected onFinishInflate()V
    .locals 4

    .prologue
    const/16 v3, 0x8

    const/4 v2, 0x1

    .line 164
    invoke-super {p0}, Lcom/sec/android/cover/clearcover/ClearCoverPage;->onFinishInflate()V

    .line 165
    sget-object v0, Lcom/sec/android/cover/clearcover/ClearCoverZeroPage;->TAG:Ljava/lang/String;

    const-string v1, "onFinishInflate()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 166
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/sec/android/cover/clearcover/ClearCoverZeroPage;->setVisibility(I)V

    .line 168
    sget v0, Lcom/sec/android/sviewcover/R$id;->clock_time_and_date:I

    invoke-virtual {p0, v0}, Lcom/sec/android/cover/clearcover/ClearCoverZeroPage;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/cover/clearcover/ClearCoverZeroPage;->mClockWidget:Landroid/view/View;

    .line 169
    sget v0, Lcom/sec/android/sviewcover/R$id;->dual_clock_time_and_date:I

    invoke-virtual {p0, v0}, Lcom/sec/android/cover/clearcover/ClearCoverZeroPage;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/cover/clearcover/ClearCoverZeroPage;->mDualClockWidget:Landroid/view/View;

    .line 171
    iget-object v0, p0, Lcom/sec/android/cover/clearcover/ClearCoverZeroPage;->mClockWidget:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 172
    iget-object v0, p0, Lcom/sec/android/cover/clearcover/ClearCoverZeroPage;->mClockWidget:Landroid/view/View;

    iget-object v1, p0, Lcom/sec/android/cover/clearcover/ClearCoverZeroPage;->mOnHoverListener:Landroid/view/View$OnHoverListener;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnHoverListener(Landroid/view/View$OnHoverListener;)V

    .line 173
    :cond_0
    iget-object v0, p0, Lcom/sec/android/cover/clearcover/ClearCoverZeroPage;->mDualClockWidget:Landroid/view/View;

    if-eqz v0, :cond_1

    .line 174
    iget-object v0, p0, Lcom/sec/android/cover/clearcover/ClearCoverZeroPage;->mDualClockWidget:Landroid/view/View;

    iget-object v1, p0, Lcom/sec/android/cover/clearcover/ClearCoverZeroPage;->mOnHoverListener:Landroid/view/View$OnHoverListener;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnHoverListener(Landroid/view/View$OnHoverListener;)V

    .line 177
    :cond_1
    sget v0, Lcom/sec/android/sviewcover/R$id;->clear_sound_warning_contatiner:I

    invoke-virtual {p0, v0}, Lcom/sec/android/cover/clearcover/ClearCoverZeroPage;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/sec/android/cover/widget/RemoteViewContainerView;

    iput-object v0, p0, Lcom/sec/android/cover/clearcover/ClearCoverZeroPage;->mVolumeWarningRemoteViewContainer:Lcom/sec/android/cover/widget/RemoteViewContainerView;

    .line 178
    iget-object v0, p0, Lcom/sec/android/cover/clearcover/ClearCoverZeroPage;->mVolumeWarningRemoteViewContainer:Lcom/sec/android/cover/widget/RemoteViewContainerView;

    if-eqz v0, :cond_2

    .line 179
    iget-object v0, p0, Lcom/sec/android/cover/clearcover/ClearCoverZeroPage;->mVolumeWarningRemoteViewContainer:Lcom/sec/android/cover/widget/RemoteViewContainerView;

    const-string v1, "volume"

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/cover/widget/RemoteViewContainerView;->init(Ljava/lang/String;Z)V

    .line 182
    :cond_2
    sget v0, Lcom/sec/android/sviewcover/R$id;->clear_music_remoteview_contatiner:I

    invoke-virtual {p0, v0}, Lcom/sec/android/cover/clearcover/ClearCoverZeroPage;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/sec/android/cover/widget/RemoteViewContainerView;

    iput-object v0, p0, Lcom/sec/android/cover/clearcover/ClearCoverZeroPage;->mMusicRemoteViewContainer:Lcom/sec/android/cover/widget/RemoteViewContainerView;

    .line 183
    iget-object v0, p0, Lcom/sec/android/cover/clearcover/ClearCoverZeroPage;->mMusicRemoteViewContainer:Lcom/sec/android/cover/widget/RemoteViewContainerView;

    if-eqz v0, :cond_3

    .line 184
    iget-object v0, p0, Lcom/sec/android/cover/clearcover/ClearCoverZeroPage;->mMusicRemoteViewContainer:Lcom/sec/android/cover/widget/RemoteViewContainerView;

    const-string v1, "music_controller"

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/cover/widget/RemoteViewContainerView;->init(Ljava/lang/String;Z)V

    .line 185
    iget-object v0, p0, Lcom/sec/android/cover/clearcover/ClearCoverZeroPage;->mMusicRemoteViewContainer:Lcom/sec/android/cover/widget/RemoteViewContainerView;

    invoke-virtual {v0, v3}, Lcom/sec/android/cover/widget/RemoteViewContainerView;->setVisibility(I)V

    .line 188
    :cond_3
    sget v0, Lcom/sec/android/sviewcover/R$id;->clear_voice_recorder_remoteview_contatiner:I

    invoke-virtual {p0, v0}, Lcom/sec/android/cover/clearcover/ClearCoverZeroPage;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/sec/android/cover/widget/RemoteViewContainerView;

    iput-object v0, p0, Lcom/sec/android/cover/clearcover/ClearCoverZeroPage;->mVoiceRecorderRemoteViewContainer:Lcom/sec/android/cover/widget/RemoteViewContainerView;

    .line 189
    iget-object v0, p0, Lcom/sec/android/cover/clearcover/ClearCoverZeroPage;->mVoiceRecorderRemoteViewContainer:Lcom/sec/android/cover/widget/RemoteViewContainerView;

    if-eqz v0, :cond_4

    .line 190
    iget-object v0, p0, Lcom/sec/android/cover/clearcover/ClearCoverZeroPage;->mVoiceRecorderRemoteViewContainer:Lcom/sec/android/cover/widget/RemoteViewContainerView;

    const-string v1, "voice_recorder"

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/cover/widget/RemoteViewContainerView;->init(Ljava/lang/String;Z)V

    .line 191
    iget-object v0, p0, Lcom/sec/android/cover/clearcover/ClearCoverZeroPage;->mVoiceRecorderRemoteViewContainer:Lcom/sec/android/cover/widget/RemoteViewContainerView;

    invoke-virtual {v0, v3}, Lcom/sec/android/cover/widget/RemoteViewContainerView;->setVisibility(I)V

    .line 194
    :cond_4
    sget v0, Lcom/sec/android/sviewcover/R$id;->clear_video_remoteview_contatiner:I

    invoke-virtual {p0, v0}, Lcom/sec/android/cover/clearcover/ClearCoverZeroPage;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/sec/android/cover/widget/RemoteViewContainerView;

    iput-object v0, p0, Lcom/sec/android/cover/clearcover/ClearCoverZeroPage;->mVideoRemoteViewContainer:Lcom/sec/android/cover/widget/RemoteViewContainerView;

    .line 195
    iget-object v0, p0, Lcom/sec/android/cover/clearcover/ClearCoverZeroPage;->mVideoRemoteViewContainer:Lcom/sec/android/cover/widget/RemoteViewContainerView;

    if-eqz v0, :cond_5

    .line 196
    iget-object v0, p0, Lcom/sec/android/cover/clearcover/ClearCoverZeroPage;->mVideoRemoteViewContainer:Lcom/sec/android/cover/widget/RemoteViewContainerView;

    const-string v1, "video_controller"

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/cover/widget/RemoteViewContainerView;->init(Ljava/lang/String;Z)V

    .line 197
    iget-object v0, p0, Lcom/sec/android/cover/clearcover/ClearCoverZeroPage;->mVideoRemoteViewContainer:Lcom/sec/android/cover/widget/RemoteViewContainerView;

    invoke-virtual {v0, v3}, Lcom/sec/android/cover/widget/RemoteViewContainerView;->setVisibility(I)V

    .line 200
    :cond_5
    sget v0, Lcom/sec/android/sviewcover/R$id;->clear_cover_missed_call_count:I

    invoke-virtual {p0, v0}, Lcom/sec/android/cover/clearcover/ClearCoverZeroPage;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/sec/android/cover/clearcover/ClearCoverZeroPage;->mMissedCallCountTextView:Landroid/widget/TextView;

    .line 201
    sget v0, Lcom/sec/android/sviewcover/R$id;->clear_cover_unread_message_count:I

    invoke-virtual {p0, v0}, Lcom/sec/android/cover/clearcover/ClearCoverZeroPage;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/sec/android/cover/clearcover/ClearCoverZeroPage;->mUnreadMessageCountTextView:Landroid/widget/TextView;

    .line 203
    iget-object v0, p0, Lcom/sec/android/cover/clearcover/ClearCoverZeroPage;->mMissedCallCountTextView:Landroid/widget/TextView;

    if-eqz v0, :cond_6

    .line 204
    iget-object v0, p0, Lcom/sec/android/cover/clearcover/ClearCoverZeroPage;->mMissedCallCountTextView:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/sec/android/cover/clearcover/ClearCoverZeroPage;->mMissedViewClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 206
    :cond_6
    iget-object v0, p0, Lcom/sec/android/cover/clearcover/ClearCoverZeroPage;->mUnreadMessageCountTextView:Landroid/widget/TextView;

    if-eqz v0, :cond_7

    .line 207
    iget-object v0, p0, Lcom/sec/android/cover/clearcover/ClearCoverZeroPage;->mUnreadMessageCountTextView:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/sec/android/cover/clearcover/ClearCoverZeroPage;->mMissedViewClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 210
    :cond_7
    invoke-direct {p0}, Lcom/sec/android/cover/clearcover/ClearCoverZeroPage;->setClockVisibility()V

    .line 211
    invoke-direct {p0}, Lcom/sec/android/cover/clearcover/ClearCoverZeroPage;->updateMissedEvent()V

    .line 212
    invoke-virtual {p0}, Lcom/sec/android/cover/clearcover/ClearCoverZeroPage;->requestRemoteViews()V

    .line 213
    return-void
.end method

.method protected setBackgroundColor()V
    .locals 5

    .prologue
    .line 445
    invoke-virtual {p0}, Lcom/sec/android/cover/clearcover/ClearCoverZeroPage;->isCoverOpen()Z

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_0

    .line 446
    sget-object v2, Lcom/sec/android/cover/clearcover/ClearCoverZeroPage;->TAG:Ljava/lang/String;

    const-string v3, "setBackgroundColor() return : cover open"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 485
    :goto_0
    return-void

    .line 450
    :cond_0
    iget-object v2, p0, Lcom/sec/android/cover/clearcover/ClearCoverZeroPage;->mBackgroundView:Landroid/view/View;

    if-nez v2, :cond_1

    .line 451
    sget-object v2, Lcom/sec/android/cover/clearcover/ClearCoverZeroPage;->TAG:Ljava/lang/String;

    const-string v3, "setBackgroundColor() return : mBackgroundView is null"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 455
    :cond_1
    iget-object v2, p0, Lcom/sec/android/cover/clearcover/ClearCoverZeroPage;->mCoverState:Lcom/samsung/android/cover/CoverState;

    invoke-virtual {v2}, Lcom/samsung/android/cover/CoverState;->getColor()I

    move-result v1

    .line 456
    .local v1, "currentCoverColor":I
    iget-object v2, p0, Lcom/sec/android/cover/clearcover/ClearCoverZeroPage;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/sec/android/cover/manager/CoverDatabaseManager;->getInstance(Landroid/content/Context;)Lcom/sec/android/cover/manager/CoverDatabaseManager;

    move-result-object v2

    const-string v3, "s_view_cover_skin_color"

    invoke-virtual {v2, v3, v1}, Lcom/sec/android/cover/manager/CoverDatabaseManager;->putInt(Ljava/lang/String;I)V

    .line 459
    const/4 v0, 0x0

    .line 460
    .local v0, "backgroundColor":I
    packed-switch v1, :pswitch_data_0

    .line 477
    :pswitch_0
    sget v0, Lcom/sec/android/cover/clearcover/ClearCoverZeroPage;->WALLPAPER_COLOR_SILVER:I

    .line 481
    :goto_1
    sget-object v2, Lcom/sec/android/cover/clearcover/ClearCoverZeroPage;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "setBackgroundColor() currentCoverColor = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", backgroundColor = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 484
    iget-object v2, p0, Lcom/sec/android/cover/clearcover/ClearCoverZeroPage;->mBackgroundView:Landroid/view/View;

    invoke-virtual {v2, v0}, Landroid/view/View;->setBackgroundColor(I)V

    goto :goto_0

    .line 462
    :pswitch_1
    sget v0, Lcom/sec/android/cover/clearcover/ClearCoverZeroPage;->WALLPAPER_COLOR_SILVER:I

    .line 463
    goto :goto_1

    .line 465
    :pswitch_2
    sget v0, Lcom/sec/android/cover/clearcover/ClearCoverZeroPage;->WALLPAPER_COLOR_BLACK:I

    .line 466
    goto :goto_1

    .line 468
    :pswitch_3
    sget v0, Lcom/sec/android/cover/clearcover/ClearCoverZeroPage;->WALLPAPER_COLOR_BLUE:I

    .line 469
    goto :goto_1

    .line 471
    :pswitch_4
    sget v0, Lcom/sec/android/cover/clearcover/ClearCoverZeroPage;->WALLPAPER_COLOR_GREEN:I

    .line 472
    goto :goto_1

    .line 474
    :pswitch_5
    sget v0, Lcom/sec/android/cover/clearcover/ClearCoverZeroPage;->WALLPAPER_COLOR_GOLD:I

    .line 475
    goto :goto_1

    .line 460
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_3
        :pswitch_1
        :pswitch_5
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_4
    .end packed-switch
.end method
