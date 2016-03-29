.class public Lcom/sec/android/cover/clearcover/ClearCoverNoblePage;
.super Lcom/sec/android/cover/clearcover/ClearCoverPage;
.source "ClearCoverNoblePage.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/cover/clearcover/ClearCoverNoblePage$4;,
        Lcom/sec/android/cover/clearcover/ClearCoverNoblePage$PopupType;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String;

.field private static WALLPAPER_COLOR_BLACK:I

.field private static WALLPAPER_COLOR_BLUE:I

.field private static WALLPAPER_COLOR_GOLD:I

.field private static WALLPAPER_COLOR_GREEN:I

.field private static WALLPAPER_COLOR_HERO_BLACK:I

.field private static WALLPAPER_COLOR_SILVER:I


# instance fields
.field private mBatteryCharingText:Landroid/widget/TextView;

.field private mClockWidget:Landroid/view/View;

.field private mCoverState:Lcom/samsung/android/cover/CoverState;

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

.field private mSVoiceRemoteViewContainer:Lcom/sec/android/cover/widget/RemoteViewContainerView;

.field private mSoundWarningRemoteViewContainer:Lcom/sec/android/cover/widget/RemoteViewContainerView;

.field private mUnreadMessageCountTextView:Landroid/widget/TextView;

.field private mUpdateMonitorCallback:Lcom/sec/android/cover/monitor/CoverUpdateMonitorCallback;

.field private mVideoRemoteViewContainer:Lcom/sec/android/cover/widget/RemoteViewContainerView;

.field private mVoiceRecorderRemoteViewContainer:Lcom/sec/android/cover/widget/RemoteViewContainerView;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 56
    const-class v0, Lcom/sec/android/cover/clearcover/ClearCoverNoblePage;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/sec/android/cover/clearcover/ClearCoverNoblePage;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 166
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/sec/android/cover/clearcover/ClearCoverNoblePage;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 167
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 170
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/sec/android/cover/clearcover/ClearCoverNoblePage;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 171
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    .line 174
    invoke-direct {p0, p1, p2, p3}, Lcom/sec/android/cover/clearcover/ClearCoverPage;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 65
    new-instance v0, Lcom/samsung/android/cover/CoverState;

    invoke-direct {v0}, Lcom/samsung/android/cover/CoverState;-><init>()V

    iput-object v0, p0, Lcom/sec/android/cover/clearcover/ClearCoverNoblePage;->mCoverState:Lcom/samsung/android/cover/CoverState;

    .line 80
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/cover/clearcover/ClearCoverNoblePage;->mPendingIntent:Landroid/app/PendingIntent;

    .line 82
    new-instance v0, Lcom/sec/android/cover/clearcover/ClearCoverNoblePage$1;

    invoke-direct {v0, p0}, Lcom/sec/android/cover/clearcover/ClearCoverNoblePage$1;-><init>(Lcom/sec/android/cover/clearcover/ClearCoverNoblePage;)V

    iput-object v0, p0, Lcom/sec/android/cover/clearcover/ClearCoverNoblePage;->mUpdateMonitorCallback:Lcom/sec/android/cover/monitor/CoverUpdateMonitorCallback;

    .line 126
    new-instance v0, Lcom/sec/android/cover/clearcover/ClearCoverNoblePage$2;

    invoke-direct {v0, p0}, Lcom/sec/android/cover/clearcover/ClearCoverNoblePage$2;-><init>(Lcom/sec/android/cover/clearcover/ClearCoverNoblePage;)V

    iput-object v0, p0, Lcom/sec/android/cover/clearcover/ClearCoverNoblePage;->mOnHoverListener:Landroid/view/View$OnHoverListener;

    .line 135
    new-instance v0, Lcom/sec/android/cover/clearcover/ClearCoverNoblePage$3;

    invoke-direct {v0, p0}, Lcom/sec/android/cover/clearcover/ClearCoverNoblePage$3;-><init>(Lcom/sec/android/cover/clearcover/ClearCoverNoblePage;)V

    iput-object v0, p0, Lcom/sec/android/cover/clearcover/ClearCoverNoblePage;->mMissedViewClickListener:Landroid/view/View$OnClickListener;

    .line 175
    iput-object p1, p0, Lcom/sec/android/cover/clearcover/ClearCoverNoblePage;->mContext:Landroid/content/Context;

    .line 177
    iget-object v0, p0, Lcom/sec/android/cover/clearcover/ClearCoverNoblePage;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/sec/android/sviewcover/R$color;->clear_cover_wallpapaer_color_silver:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    sput v0, Lcom/sec/android/cover/clearcover/ClearCoverNoblePage;->WALLPAPER_COLOR_SILVER:I

    .line 179
    iget-object v0, p0, Lcom/sec/android/cover/clearcover/ClearCoverNoblePage;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/sec/android/sviewcover/R$color;->clear_cover_wallpapaer_color_black:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    sput v0, Lcom/sec/android/cover/clearcover/ClearCoverNoblePage;->WALLPAPER_COLOR_BLACK:I

    .line 181
    iget-object v0, p0, Lcom/sec/android/cover/clearcover/ClearCoverNoblePage;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/sec/android/sviewcover/R$color;->clear_cover_wallpapaer_color_blue:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    sput v0, Lcom/sec/android/cover/clearcover/ClearCoverNoblePage;->WALLPAPER_COLOR_BLUE:I

    .line 183
    iget-object v0, p0, Lcom/sec/android/cover/clearcover/ClearCoverNoblePage;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/sec/android/sviewcover/R$color;->clear_cover_wallpapaer_color_green:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    sput v0, Lcom/sec/android/cover/clearcover/ClearCoverNoblePage;->WALLPAPER_COLOR_GREEN:I

    .line 185
    iget-object v0, p0, Lcom/sec/android/cover/clearcover/ClearCoverNoblePage;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/sec/android/sviewcover/R$color;->clear_cover_wallpapaer_color_gold:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    sput v0, Lcom/sec/android/cover/clearcover/ClearCoverNoblePage;->WALLPAPER_COLOR_GOLD:I

    .line 187
    iget-object v0, p0, Lcom/sec/android/cover/clearcover/ClearCoverNoblePage;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/sec/android/sviewcover/R$color;->clear_cover_wallpapaer_hero_color_black:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    sput v0, Lcom/sec/android/cover/clearcover/ClearCoverNoblePage;->WALLPAPER_COLOR_HERO_BLACK:I

    .line 190
    new-instance v0, Ljava/util/Stack;

    invoke-direct {v0}, Ljava/util/Stack;-><init>()V

    iput-object v0, p0, Lcom/sec/android/cover/clearcover/ClearCoverNoblePage;->mRemoteViewContainerStack:Ljava/util/Stack;

    .line 191
    return-void
.end method

.method static synthetic access$000()Ljava/lang/String;
    .locals 1

    .prologue
    .line 50
    sget-object v0, Lcom/sec/android/cover/clearcover/ClearCoverNoblePage;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$100(Lcom/sec/android/cover/clearcover/ClearCoverNoblePage;)V
    .locals 0
    .param p0, "x0"    # Lcom/sec/android/cover/clearcover/ClearCoverNoblePage;

    .prologue
    .line 50
    invoke-direct {p0}, Lcom/sec/android/cover/clearcover/ClearCoverNoblePage;->setClockVisibility()V

    return-void
.end method

.method static synthetic access$1000(Lcom/sec/android/cover/clearcover/ClearCoverNoblePage;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/sec/android/cover/clearcover/ClearCoverNoblePage;

    .prologue
    .line 50
    iget-object v0, p0, Lcom/sec/android/cover/clearcover/ClearCoverNoblePage;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$1100(Lcom/sec/android/cover/clearcover/ClearCoverNoblePage;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/sec/android/cover/clearcover/ClearCoverNoblePage;

    .prologue
    .line 50
    iget-object v0, p0, Lcom/sec/android/cover/clearcover/ClearCoverNoblePage;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$200(Lcom/sec/android/cover/clearcover/ClearCoverNoblePage;)V
    .locals 0
    .param p0, "x0"    # Lcom/sec/android/cover/clearcover/ClearCoverNoblePage;

    .prologue
    .line 50
    invoke-direct {p0}, Lcom/sec/android/cover/clearcover/ClearCoverNoblePage;->updateMissedEvent()V

    return-void
.end method

.method static synthetic access$300(Lcom/sec/android/cover/clearcover/ClearCoverNoblePage;Lcom/sec/android/cover/monitor/CoverUpdateMonitor$RemoteViewInfo;)V
    .locals 0
    .param p0, "x0"    # Lcom/sec/android/cover/clearcover/ClearCoverNoblePage;
    .param p1, "x1"    # Lcom/sec/android/cover/monitor/CoverUpdateMonitor$RemoteViewInfo;

    .prologue
    .line 50
    invoke-direct {p0, p1}, Lcom/sec/android/cover/clearcover/ClearCoverNoblePage;->updateRemoteViewContainerVisibility(Lcom/sec/android/cover/monitor/CoverUpdateMonitor$RemoteViewInfo;)V

    return-void
.end method

.method static synthetic access$400(Lcom/sec/android/cover/clearcover/ClearCoverNoblePage;Ljava/lang/Object;)V
    .locals 0
    .param p0, "x0"    # Lcom/sec/android/cover/clearcover/ClearCoverNoblePage;
    .param p1, "x1"    # Ljava/lang/Object;

    .prologue
    .line 50
    invoke-direct {p0, p1}, Lcom/sec/android/cover/clearcover/ClearCoverNoblePage;->updateBatteryStateWidgetState(Ljava/lang/Object;)V

    return-void
.end method

.method static synthetic access$502(Lcom/sec/android/cover/clearcover/ClearCoverNoblePage;Lcom/samsung/android/cover/CoverState;)Lcom/samsung/android/cover/CoverState;
    .locals 0
    .param p0, "x0"    # Lcom/sec/android/cover/clearcover/ClearCoverNoblePage;
    .param p1, "x1"    # Lcom/samsung/android/cover/CoverState;

    .prologue
    .line 50
    iput-object p1, p0, Lcom/sec/android/cover/clearcover/ClearCoverNoblePage;->mCoverState:Lcom/samsung/android/cover/CoverState;

    return-object p1
.end method

.method static synthetic access$600(Lcom/sec/android/cover/clearcover/ClearCoverNoblePage;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/sec/android/cover/clearcover/ClearCoverNoblePage;

    .prologue
    .line 50
    iget-object v0, p0, Lcom/sec/android/cover/clearcover/ClearCoverNoblePage;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$702(Lcom/sec/android/cover/clearcover/ClearCoverNoblePage;Landroid/app/PendingIntent;)Landroid/app/PendingIntent;
    .locals 0
    .param p0, "x0"    # Lcom/sec/android/cover/clearcover/ClearCoverNoblePage;
    .param p1, "x1"    # Landroid/app/PendingIntent;

    .prologue
    .line 50
    iput-object p1, p0, Lcom/sec/android/cover/clearcover/ClearCoverNoblePage;->mPendingIntent:Landroid/app/PendingIntent;

    return-object p1
.end method

.method static synthetic access$800(Lcom/sec/android/cover/clearcover/ClearCoverNoblePage;)Landroid/widget/TextView;
    .locals 1
    .param p0, "x0"    # Lcom/sec/android/cover/clearcover/ClearCoverNoblePage;

    .prologue
    .line 50
    iget-object v0, p0, Lcom/sec/android/cover/clearcover/ClearCoverNoblePage;->mUnreadMessageCountTextView:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$900(Lcom/sec/android/cover/clearcover/ClearCoverNoblePage;Lcom/sec/android/cover/clearcover/ClearCoverNoblePage$PopupType;)V
    .locals 0
    .param p0, "x0"    # Lcom/sec/android/cover/clearcover/ClearCoverNoblePage;
    .param p1, "x1"    # Lcom/sec/android/cover/clearcover/ClearCoverNoblePage$PopupType;

    .prologue
    .line 50
    invoke-direct {p0, p1}, Lcom/sec/android/cover/clearcover/ClearCoverNoblePage;->showCoverOpenPopup(Lcom/sec/android/cover/clearcover/ClearCoverNoblePage$PopupType;)V

    return-void
.end method

.method private gotoOpenPage()V
    .locals 4

    .prologue
    .line 541
    iget-object v1, p0, Lcom/sec/android/cover/clearcover/ClearCoverNoblePage;->mPendingIntent:Landroid/app/PendingIntent;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/sec/android/cover/clearcover/ClearCoverNoblePage;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/sec/android/cover/manager/CoverPopupManager;->getInstance(Landroid/content/Context;)Lcom/sec/android/cover/manager/CoverPopupManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/cover/manager/CoverPopupManager;->isShowingPopupDialog()Z

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    .line 544
    :try_start_0
    iget-object v1, p0, Lcom/sec/android/cover/clearcover/ClearCoverNoblePage;->mPendingIntent:Landroid/app/PendingIntent;

    invoke-virtual {v1}, Landroid/app/PendingIntent;->send()V

    .line 545
    sget-object v1, Lcom/sec/android/cover/clearcover/ClearCoverNoblePage;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "gotoOpenPage() mPendingIntent sent"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/sec/android/cover/clearcover/ClearCoverNoblePage;->mPendingIntent:Landroid/app/PendingIntent;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/app/PendingIntent$CanceledException; {:try_start_0 .. :try_end_0} :catch_0

    .line 549
    :goto_0
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/sec/android/cover/clearcover/ClearCoverNoblePage;->mPendingIntent:Landroid/app/PendingIntent;

    .line 551
    :cond_0
    return-void

    .line 546
    :catch_0
    move-exception v0

    .line 547
    .local v0, "e":Landroid/app/PendingIntent$CanceledException;
    invoke-virtual {v0}, Landroid/app/PendingIntent$CanceledException;->printStackTrace()V

    goto :goto_0
.end method

.method private isPlayingCurrentRemoteView()Z
    .locals 6

    .prologue
    const/4 v2, 0x1

    const/4 v4, 0x0

    .line 420
    iget-object v3, p0, Lcom/sec/android/cover/clearcover/ClearCoverNoblePage;->mRemoteViewContainerStack:Ljava/util/Stack;

    invoke-virtual {v3}, Ljava/util/Stack;->isEmpty()Z

    move-result v3

    if-ne v3, v2, :cond_0

    .line 430
    :goto_0
    return v4

    .line 424
    :cond_0
    iget-object v3, p0, Lcom/sec/android/cover/clearcover/ClearCoverNoblePage;->mRemoteViewContainerStack:Ljava/util/Stack;

    invoke-virtual {v3}, Ljava/util/Stack;->peek()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/sec/android/cover/widget/RemoteViewContainerView;

    invoke-virtual {v3}, Lcom/sec/android/cover/widget/RemoteViewContainerView;->getRemoteViewType()Ljava/lang/String;

    move-result-object v0

    .line 425
    .local v0, "currentType":Ljava/lang/String;
    iget-object v3, p0, Lcom/sec/android/cover/clearcover/ClearCoverNoblePage;->mContext:Landroid/content/Context;

    invoke-static {v3}, Lcom/sec/android/cover/manager/CoverRemoteViewManager;->getInstance(Landroid/content/Context;)Lcom/sec/android/cover/manager/CoverRemoteViewManager;

    move-result-object v3

    invoke-virtual {v3, v0}, Lcom/sec/android/cover/manager/CoverRemoteViewManager;->getRemoteViewInfo(Ljava/lang/String;)Lcom/sec/android/cover/monitor/CoverUpdateMonitor$RemoteViewInfo;

    move-result-object v1

    .line 427
    .local v1, "info":Lcom/sec/android/cover/monitor/CoverUpdateMonitor$RemoteViewInfo;
    if-eqz v1, :cond_1

    iget-boolean v3, v1, Lcom/sec/android/cover/monitor/CoverUpdateMonitor$RemoteViewInfo;->mIsPlaying:Z

    if-eqz v3, :cond_1

    .line 429
    .local v2, "isPlaying":Z
    :goto_1
    sget-object v3, Lcom/sec/android/cover/clearcover/ClearCoverNoblePage;->TAG:Ljava/lang/String;

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

    .line 430
    goto :goto_0

    .end local v2    # "isPlaying":Z
    :cond_1
    move v2, v4

    .line 427
    goto :goto_1
.end method

.method private setClockVisibility()V
    .locals 7

    .prologue
    const/16 v6, 0x8

    const/4 v0, 0x1

    const/4 v2, 0x0

    .line 260
    iget-object v3, p0, Lcom/sec/android/cover/clearcover/ClearCoverNoblePage;->mContext:Landroid/content/Context;

    invoke-static {v3}, Lcom/sec/android/cover/manager/CoverDatabaseManager;->getInstance(Landroid/content/Context;)Lcom/sec/android/cover/manager/CoverDatabaseManager;

    move-result-object v3

    const-string v4, "dualclock_menu_settings"

    invoke-virtual {v3, v4, v2}, Lcom/sec/android/cover/manager/CoverDatabaseManager;->getInt(Ljava/lang/String;I)I

    move-result v3

    if-ne v3, v0, :cond_1

    .line 263
    .local v0, "isDualClock":Z
    :goto_0
    iget-object v3, p0, Lcom/sec/android/cover/clearcover/ClearCoverNoblePage;->mContext:Landroid/content/Context;

    invoke-static {v3}, Lcom/sec/android/cover/CoverUtils;->isNetworkRoaming(Landroid/content/Context;)Z

    move-result v1

    .line 265
    .local v1, "isRoaming":Z
    sget-object v3, Lcom/sec/android/cover/clearcover/ClearCoverNoblePage;->TAG:Ljava/lang/String;

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

    .line 267
    if-eqz v0, :cond_2

    if-eqz v1, :cond_2

    .line 268
    iget-object v3, p0, Lcom/sec/android/cover/clearcover/ClearCoverNoblePage;->mClockWidget:Landroid/view/View;

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/sec/android/cover/clearcover/ClearCoverNoblePage;->mDualClockWidget:Landroid/view/View;

    if-eqz v3, :cond_0

    .line 269
    iget-object v3, p0, Lcom/sec/android/cover/clearcover/ClearCoverNoblePage;->mClockWidget:Landroid/view/View;

    invoke-virtual {v3, v6}, Landroid/view/View;->setVisibility(I)V

    .line 270
    iget-object v3, p0, Lcom/sec/android/cover/clearcover/ClearCoverNoblePage;->mDualClockWidget:Landroid/view/View;

    invoke-virtual {v3, v2}, Landroid/view/View;->setVisibility(I)V

    .line 278
    :cond_0
    :goto_1
    return-void

    .end local v0    # "isDualClock":Z
    .end local v1    # "isRoaming":Z
    :cond_1
    move v0, v2

    .line 260
    goto :goto_0

    .line 273
    .restart local v0    # "isDualClock":Z
    .restart local v1    # "isRoaming":Z
    :cond_2
    iget-object v3, p0, Lcom/sec/android/cover/clearcover/ClearCoverNoblePage;->mClockWidget:Landroid/view/View;

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/sec/android/cover/clearcover/ClearCoverNoblePage;->mDualClockWidget:Landroid/view/View;

    if-eqz v3, :cond_0

    .line 274
    iget-object v3, p0, Lcom/sec/android/cover/clearcover/ClearCoverNoblePage;->mDualClockWidget:Landroid/view/View;

    invoke-virtual {v3, v6}, Landroid/view/View;->setVisibility(I)V

    .line 275
    iget-object v3, p0, Lcom/sec/android/cover/clearcover/ClearCoverNoblePage;->mClockWidget:Landroid/view/View;

    invoke-virtual {v3, v2}, Landroid/view/View;->setVisibility(I)V

    goto :goto_1
.end method

.method private showCoverOpenPopup(Lcom/sec/android/cover/clearcover/ClearCoverNoblePage$PopupType;)V
    .locals 4
    .param p1, "type"    # Lcom/sec/android/cover/clearcover/ClearCoverNoblePage$PopupType;

    .prologue
    .line 498
    sget-object v1, Lcom/sec/android/cover/clearcover/ClearCoverNoblePage;->TAG:Ljava/lang/String;

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

    .line 500
    const/4 v0, 0x0

    .line 501
    .local v0, "popupContentId":I
    sget-object v1, Lcom/sec/android/cover/clearcover/ClearCoverNoblePage$4;->$SwitchMap$com$sec$android$cover$clearcover$ClearCoverNoblePage$PopupType:[I

    invoke-virtual {p1}, Lcom/sec/android/cover/clearcover/ClearCoverNoblePage$PopupType;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    .line 515
    :goto_0
    if-nez v0, :cond_0

    .line 521
    :goto_1
    return-void

    .line 503
    :pswitch_0
    sget v0, Lcom/sec/android/sviewcover/R$string;->s_view_cover_missed_event_secured_popup:I

    .line 504
    goto :goto_0

    .line 506
    :pswitch_1
    sget v0, Lcom/sec/android/sviewcover/R$string;->s_view_cover_open_cover_popup_for_detail_message:I

    .line 507
    goto :goto_0

    .line 509
    :pswitch_2
    sget v0, Lcom/sec/android/sviewcover/R$string;->s_view_cover_open_cover_popup_for_detail_call:I

    .line 510
    goto :goto_0

    .line 519
    :cond_0
    iget-object v1, p0, Lcom/sec/android/cover/clearcover/ClearCoverNoblePage;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/sec/android/cover/manager/CoverPopupManager;->getInstance(Landroid/content/Context;)Lcom/sec/android/cover/manager/CoverPopupManager;

    move-result-object v1

    const/16 v2, 0x8

    const/4 v3, 0x0

    invoke-virtual {v1, v0, v2, v3}, Lcom/sec/android/cover/manager/CoverPopupManager;->showPopupDialog(IILcom/sec/android/cover/manager/CoverPopupManager$PopupDismissCallback;)Z

    goto :goto_1

    .line 501
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private updateBatteryStateWidgetState(Ljava/lang/Object;)V
    .locals 11
    .param p1, "bcItem"    # Ljava/lang/Object;

    .prologue
    const/16 v10, 0x8

    const/4 v9, 0x0

    const/4 v8, 0x1

    .line 434
    iget-object v5, p0, Lcom/sec/android/cover/clearcover/ClearCoverNoblePage;->mBatteryCharingText:Landroid/widget/TextView;

    if-nez v5, :cond_0

    .line 435
    sget-object v5, Lcom/sec/android/cover/clearcover/ClearCoverNoblePage;->TAG:Ljava/lang/String;

    const-string v6, "mBatteryCharingText is null"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 495
    :goto_0
    return-void

    .line 439
    :cond_0
    if-nez p1, :cond_1

    .line 440
    sget-object v5, Lcom/sec/android/cover/clearcover/ClearCoverNoblePage;->TAG:Ljava/lang/String;

    const-string v6, "updateBatteryStateWidget : Intent is null"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 441
    iget-object v5, p0, Lcom/sec/android/cover/clearcover/ClearCoverNoblePage;->mBatteryCharingText:Landroid/widget/TextView;

    invoke-virtual {v5, v10}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0

    .line 445
    :cond_1
    const/4 v1, 0x0

    .line 447
    .local v1, "batteryStatus":Lcom/sec/android/cover/monitor/CoverUpdateMonitor$BatteryStatus;
    instance-of v5, p1, Lcom/sec/android/cover/monitor/CoverUpdateMonitor$BatteryStatus;

    if-eqz v5, :cond_2

    move-object v1, p1

    .line 448
    check-cast v1, Lcom/sec/android/cover/monitor/CoverUpdateMonitor$BatteryStatus;

    .line 451
    :cond_2
    if-nez v1, :cond_3

    .line 452
    sget-object v5, Lcom/sec/android/cover/clearcover/ClearCoverNoblePage;->TAG:Ljava/lang/String;

    const-string v6, "batteryStatus is null"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 453
    iget-object v5, p0, Lcom/sec/android/cover/clearcover/ClearCoverNoblePage;->mBatteryCharingText:Landroid/widget/TextView;

    invoke-virtual {v5, v10}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0

    .line 457
    :cond_3
    iget v2, v1, Lcom/sec/android/cover/monitor/CoverUpdateMonitor$BatteryStatus;->level:I

    .line 458
    .local v2, "level":I
    iget v3, v1, Lcom/sec/android/cover/monitor/CoverUpdateMonitor$BatteryStatus;->plugged:I

    .line 459
    .local v3, "plugged":I
    iget v4, v1, Lcom/sec/android/cover/monitor/CoverUpdateMonitor$BatteryStatus;->status:I

    .line 460
    .local v4, "status":I
    sget-object v5, Lcom/sec/android/cover/clearcover/ClearCoverNoblePage;->TAG:Ljava/lang/String;

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

    .line 462
    if-eqz v3, :cond_8

    .line 463
    const/4 v0, 0x0

    .line 464
    .local v0, "batteryCharging":Ljava/lang/String;
    const/16 v5, 0x64

    if-lt v2, v5, :cond_4

    const/4 v5, 0x5

    if-ne v4, v5, :cond_4

    .line 465
    invoke-virtual {p0}, Lcom/sec/android/cover/clearcover/ClearCoverNoblePage;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    sget v6, Lcom/sec/android/sviewcover/R$string;->battery_charged:I

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 490
    :goto_1
    iget-object v5, p0, Lcom/sec/android/cover/clearcover/ClearCoverNoblePage;->mBatteryCharingText:Landroid/widget/TextView;

    invoke-virtual {v5, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 491
    iget-object v5, p0, Lcom/sec/android/cover/clearcover/ClearCoverNoblePage;->mBatteryCharingText:Landroid/widget/TextView;

    invoke-virtual {v5, v9}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0

    .line 467
    :cond_4
    invoke-virtual {v1}, Lcom/sec/android/cover/monitor/CoverUpdateMonitor$BatteryStatus;->isWirelssCharged()Z

    move-result v5

    if-ne v5, v8, :cond_6

    .line 468
    invoke-static {}, Lcom/sec/android/cover/FeatureUtils;->isVZWModel()Z

    move-result v5

    if-nez v5, :cond_5

    invoke-virtual {v1}, Lcom/sec/android/cover/monitor/CoverUpdateMonitor$BatteryStatus;->isWirelssFastCharged()Z

    move-result v5

    if-ne v5, v8, :cond_5

    .line 469
    sget-object v5, Lcom/sec/android/cover/clearcover/ClearCoverNoblePage;->TAG:Ljava/lang/String;

    const-string v6, "Detected fast wireless charging"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 470
    invoke-virtual {p0}, Lcom/sec/android/cover/clearcover/ClearCoverNoblePage;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    sget v6, Lcom/sec/android/sviewcover/R$string;->battery_wireless_fast_charging_percent:I

    new-array v7, v8, [Ljava/lang/Object;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v7, v9

    invoke-virtual {v5, v6, v7}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    .line 473
    :cond_5
    sget-object v5, Lcom/sec/android/cover/clearcover/ClearCoverNoblePage;->TAG:Ljava/lang/String;

    const-string v6, "Detected wireless charging"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 474
    invoke-virtual {p0}, Lcom/sec/android/cover/clearcover/ClearCoverNoblePage;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    sget v6, Lcom/sec/android/sviewcover/R$string;->battery_wireless_charging_percent:I

    new-array v7, v8, [Ljava/lang/Object;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v7, v9

    invoke-virtual {v5, v6, v7}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    .line 478
    :cond_6
    invoke-static {}, Lcom/sec/android/cover/FeatureUtils;->isVZWModel()Z

    move-result v5

    if-nez v5, :cond_7

    invoke-virtual {v1}, Lcom/sec/android/cover/monitor/CoverUpdateMonitor$BatteryStatus;->isFastCharging()Z

    move-result v5

    if-ne v5, v8, :cond_7

    .line 479
    sget-object v5, Lcom/sec/android/cover/clearcover/ClearCoverNoblePage;->TAG:Ljava/lang/String;

    const-string v6, "Detected fast wire charging"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 480
    invoke-virtual {p0}, Lcom/sec/android/cover/clearcover/ClearCoverNoblePage;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    sget v6, Lcom/sec/android/sviewcover/R$string;->battery_fast_charging_percent:I

    new-array v7, v8, [Ljava/lang/Object;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v7, v9

    invoke-virtual {v5, v6, v7}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    .line 483
    :cond_7
    sget-object v5, Lcom/sec/android/cover/clearcover/ClearCoverNoblePage;->TAG:Ljava/lang/String;

    const-string v6, "Detected wire charging"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 484
    invoke-virtual {p0}, Lcom/sec/android/cover/clearcover/ClearCoverNoblePage;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    sget v6, Lcom/sec/android/sviewcover/R$string;->battery_charging_percent:I

    new-array v7, v8, [Ljava/lang/Object;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v7, v9

    invoke-virtual {v5, v6, v7}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_1

    .line 493
    .end local v0    # "batteryCharging":Ljava/lang/String;
    :cond_8
    iget-object v5, p0, Lcom/sec/android/cover/clearcover/ClearCoverNoblePage;->mBatteryCharingText:Landroid/widget/TextView;

    invoke-virtual {v5, v10}, Landroid/widget/TextView;->setVisibility(I)V

    goto/16 :goto_0
.end method

.method private updateMissedEvent()V
    .locals 15

    .prologue
    const/16 v14, 0x3e7

    const/16 v13, 0x8

    const/4 v7, 0x1

    const/4 v8, 0x0

    .line 281
    sget-object v9, Lcom/sec/android/cover/clearcover/ClearCoverNoblePage;->TAG:Ljava/lang/String;

    const-string v10, "updateMissedEvent()"

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 283
    iget-object v9, p0, Lcom/sec/android/cover/clearcover/ClearCoverNoblePage;->mContext:Landroid/content/Context;

    invoke-static {v9}, Lcom/sec/android/cover/manager/CoverRemoteViewManager;->getInstance(Landroid/content/Context;)Lcom/sec/android/cover/manager/CoverRemoteViewManager;

    move-result-object v9

    const-string v10, "new_message"

    invoke-virtual {v9, v10}, Lcom/sec/android/cover/manager/CoverRemoteViewManager;->getRemoteViewInfo(Ljava/lang/String;)Lcom/sec/android/cover/monitor/CoverUpdateMonitor$RemoteViewInfo;

    move-result-object v4

    .line 285
    .local v4, "messageRemoteViewInfo":Lcom/sec/android/cover/monitor/CoverUpdateMonitor$RemoteViewInfo;
    iget-object v9, p0, Lcom/sec/android/cover/clearcover/ClearCoverNoblePage;->mContext:Landroid/content/Context;

    invoke-static {v9}, Lcom/sec/android/cover/manager/CoverRemoteViewManager;->getInstance(Landroid/content/Context;)Lcom/sec/android/cover/manager/CoverRemoteViewManager;

    move-result-object v9

    const-string v10, "missed_call"

    invoke-virtual {v9, v10}, Lcom/sec/android/cover/manager/CoverRemoteViewManager;->getRemoteViewInfo(Ljava/lang/String;)Lcom/sec/android/cover/monitor/CoverUpdateMonitor$RemoteViewInfo;

    move-result-object v1

    .line 288
    .local v1, "callRemoteViewInfo":Lcom/sec/android/cover/monitor/CoverUpdateMonitor$RemoteViewInfo;
    const/4 v3, 0x1

    .line 290
    .local v3, "enableNoti":Z
    :try_start_0
    iget-object v9, p0, Lcom/sec/android/cover/clearcover/ClearCoverNoblePage;->mContext:Landroid/content/Context;

    invoke-virtual {v9}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v9

    const-string v10, "lock_screen_show_notifications"

    const/4 v11, -0x2

    invoke-static {v9, v10, v11}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)I
    :try_end_0
    .catch Landroid/provider/Settings$SettingNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v9

    if-ne v9, v7, :cond_5

    move v3, v7

    .line 297
    :goto_0
    sget-object v9, Lcom/sec/android/cover/clearcover/ClearCoverNoblePage;->TAG:Ljava/lang/String;

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

    .line 299
    const/4 v6, 0x0

    .line 300
    .local v6, "unreadMessageCount":I
    if-eqz v4, :cond_0

    .line 301
    iget v6, v4, Lcom/sec/android/cover/monitor/CoverUpdateMonitor$RemoteViewInfo;->mCount:I

    .line 303
    :cond_0
    const/4 v5, 0x0

    .line 304
    .local v5, "missedCallCount":I
    if-eqz v1, :cond_1

    .line 305
    iget v5, v1, Lcom/sec/android/cover/monitor/CoverUpdateMonitor$RemoteViewInfo;->mCount:I

    .line 308
    :cond_1
    sget-object v9, Lcom/sec/android/cover/clearcover/ClearCoverNoblePage;->TAG:Ljava/lang/String;

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

    .line 311
    if-eqz v3, :cond_2

    iget-object v9, p0, Lcom/sec/android/cover/clearcover/ClearCoverNoblePage;->mContext:Landroid/content/Context;

    invoke-static {v9}, Lcom/sec/android/cover/CoverUtils;->isUsimDownloadTopActivity(Landroid/content/Context;)Z

    move-result v9

    if-eqz v9, :cond_6

    .line 313
    :cond_2
    iget-object v7, p0, Lcom/sec/android/cover/clearcover/ClearCoverNoblePage;->mUnreadMessageCountTextView:Landroid/widget/TextView;

    if-eqz v7, :cond_3

    .line 314
    iget-object v7, p0, Lcom/sec/android/cover/clearcover/ClearCoverNoblePage;->mUnreadMessageCountTextView:Landroid/widget/TextView;

    invoke-virtual {v7, v13}, Landroid/widget/TextView;->setVisibility(I)V

    .line 316
    :cond_3
    iget-object v7, p0, Lcom/sec/android/cover/clearcover/ClearCoverNoblePage;->mMissedCallCountTextView:Landroid/widget/TextView;

    if-eqz v7, :cond_4

    .line 317
    iget-object v7, p0, Lcom/sec/android/cover/clearcover/ClearCoverNoblePage;->mMissedCallCountTextView:Landroid/widget/TextView;

    invoke-virtual {v7, v13}, Landroid/widget/TextView;->setVisibility(I)V

    .line 368
    :cond_4
    :goto_1
    return-void

    .end local v5    # "missedCallCount":I
    .end local v6    # "unreadMessageCount":I
    :cond_5
    move v3, v8

    .line 290
    goto :goto_0

    .line 292
    :catch_0
    move-exception v2

    .line 293
    .local v2, "e":Landroid/provider/Settings$SettingNotFoundException;
    sget-object v9, Lcom/sec/android/cover/clearcover/ClearCoverNoblePage;->TAG:Ljava/lang/String;

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

    .line 294
    invoke-virtual {v2}, Landroid/provider/Settings$SettingNotFoundException;->printStackTrace()V

    goto/16 :goto_0

    .line 322
    .end local v2    # "e":Landroid/provider/Settings$SettingNotFoundException;
    .restart local v5    # "missedCallCount":I
    .restart local v6    # "unreadMessageCount":I
    :cond_6
    iget-object v9, p0, Lcom/sec/android/cover/clearcover/ClearCoverNoblePage;->mUnreadMessageCountTextView:Landroid/widget/TextView;

    if-eqz v9, :cond_7

    .line 323
    if-gtz v6, :cond_8

    .line 324
    iget-object v9, p0, Lcom/sec/android/cover/clearcover/ClearCoverNoblePage;->mUnreadMessageCountTextView:Landroid/widget/TextView;

    invoke-virtual {v9, v13}, Landroid/widget/TextView;->setVisibility(I)V

    .line 338
    :goto_2
    if-le v6, v14, :cond_a

    .line 339
    iget-object v9, p0, Lcom/sec/android/cover/clearcover/ClearCoverNoblePage;->mUnreadMessageCountTextView:Landroid/widget/TextView;

    const-string v10, "%d+"

    new-array v11, v7, [Ljava/lang/Object;

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    aput-object v12, v11, v8

    invoke-static {v10, v11}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 345
    :cond_7
    :goto_3
    iget-object v9, p0, Lcom/sec/android/cover/clearcover/ClearCoverNoblePage;->mMissedCallCountTextView:Landroid/widget/TextView;

    if-eqz v9, :cond_4

    .line 346
    if-gtz v5, :cond_b

    .line 347
    iget-object v9, p0, Lcom/sec/android/cover/clearcover/ClearCoverNoblePage;->mMissedCallCountTextView:Landroid/widget/TextView;

    invoke-virtual {v9, v13}, Landroid/widget/TextView;->setVisibility(I)V

    .line 361
    :goto_4
    if-le v5, v14, :cond_d

    .line 362
    iget-object v9, p0, Lcom/sec/android/cover/clearcover/ClearCoverNoblePage;->mMissedCallCountTextView:Landroid/widget/TextView;

    const-string v10, "%d+"

    new-array v7, v7, [Ljava/lang/Object;

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    aput-object v11, v7, v8

    invoke-static {v10, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v9, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 325
    :cond_8
    if-ne v6, v7, :cond_9

    .line 326
    iget-object v9, p0, Lcom/sec/android/cover/clearcover/ClearCoverNoblePage;->mUnreadMessageCountTextView:Landroid/widget/TextView;

    invoke-virtual {v9, v8}, Landroid/widget/TextView;->setVisibility(I)V

    .line 327
    new-instance v0, Ljava/lang/StringBuilder;

    iget-object v9, p0, Lcom/sec/android/cover/clearcover/ClearCoverNoblePage;->mContext:Landroid/content/Context;

    invoke-virtual {v9}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    sget v10, Lcom/sec/android/sviewcover/R$string;->clearcover_1_unread_message:I

    invoke-virtual {v9, v10}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v9

    invoke-direct {v0, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 329
    .local v0, "accessibilityDescription":Ljava/lang/StringBuilder;
    iget-object v9, p0, Lcom/sec/android/cover/clearcover/ClearCoverNoblePage;->mUnreadMessageCountTextView:Landroid/widget/TextView;

    invoke-virtual {v9, v0}, Landroid/widget/TextView;->setContentDescription(Ljava/lang/CharSequence;)V

    goto :goto_2

    .line 331
    .end local v0    # "accessibilityDescription":Ljava/lang/StringBuilder;
    :cond_9
    iget-object v9, p0, Lcom/sec/android/cover/clearcover/ClearCoverNoblePage;->mUnreadMessageCountTextView:Landroid/widget/TextView;

    invoke-virtual {v9, v8}, Landroid/widget/TextView;->setVisibility(I)V

    .line 332
    new-instance v0, Ljava/lang/StringBuilder;

    iget-object v9, p0, Lcom/sec/android/cover/clearcover/ClearCoverNoblePage;->mContext:Landroid/content/Context;

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

    .line 335
    .restart local v0    # "accessibilityDescription":Ljava/lang/StringBuilder;
    iget-object v9, p0, Lcom/sec/android/cover/clearcover/ClearCoverNoblePage;->mUnreadMessageCountTextView:Landroid/widget/TextView;

    invoke-virtual {v9, v0}, Landroid/widget/TextView;->setContentDescription(Ljava/lang/CharSequence;)V

    goto :goto_2

    .line 341
    .end local v0    # "accessibilityDescription":Ljava/lang/StringBuilder;
    :cond_a
    iget-object v9, p0, Lcom/sec/android/cover/clearcover/ClearCoverNoblePage;->mUnreadMessageCountTextView:Landroid/widget/TextView;

    const-string v10, "%d"

    new-array v11, v7, [Ljava/lang/Object;

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    aput-object v12, v11, v8

    invoke-static {v10, v11}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_3

    .line 348
    :cond_b
    if-ne v5, v7, :cond_c

    .line 349
    iget-object v9, p0, Lcom/sec/android/cover/clearcover/ClearCoverNoblePage;->mMissedCallCountTextView:Landroid/widget/TextView;

    invoke-virtual {v9, v8}, Landroid/widget/TextView;->setVisibility(I)V

    .line 350
    new-instance v0, Ljava/lang/StringBuilder;

    iget-object v9, p0, Lcom/sec/android/cover/clearcover/ClearCoverNoblePage;->mContext:Landroid/content/Context;

    invoke-virtual {v9}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    sget v10, Lcom/sec/android/sviewcover/R$string;->clearcover_1_missed_call:I

    invoke-virtual {v9, v10}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v9

    invoke-direct {v0, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 352
    .restart local v0    # "accessibilityDescription":Ljava/lang/StringBuilder;
    iget-object v9, p0, Lcom/sec/android/cover/clearcover/ClearCoverNoblePage;->mMissedCallCountTextView:Landroid/widget/TextView;

    invoke-virtual {v9, v0}, Landroid/widget/TextView;->setContentDescription(Ljava/lang/CharSequence;)V

    goto/16 :goto_4

    .line 354
    .end local v0    # "accessibilityDescription":Ljava/lang/StringBuilder;
    :cond_c
    iget-object v9, p0, Lcom/sec/android/cover/clearcover/ClearCoverNoblePage;->mMissedCallCountTextView:Landroid/widget/TextView;

    invoke-virtual {v9, v8}, Landroid/widget/TextView;->setVisibility(I)V

    .line 355
    new-instance v0, Ljava/lang/StringBuilder;

    iget-object v9, p0, Lcom/sec/android/cover/clearcover/ClearCoverNoblePage;->mContext:Landroid/content/Context;

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

    .line 358
    .restart local v0    # "accessibilityDescription":Ljava/lang/StringBuilder;
    iget-object v9, p0, Lcom/sec/android/cover/clearcover/ClearCoverNoblePage;->mMissedCallCountTextView:Landroid/widget/TextView;

    invoke-virtual {v9, v0}, Landroid/widget/TextView;->setContentDescription(Ljava/lang/CharSequence;)V

    goto/16 :goto_4

    .line 364
    .end local v0    # "accessibilityDescription":Ljava/lang/StringBuilder;
    :cond_d
    iget-object v9, p0, Lcom/sec/android/cover/clearcover/ClearCoverNoblePage;->mMissedCallCountTextView:Landroid/widget/TextView;

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

    .line 371
    sget-object v3, Lcom/sec/android/cover/clearcover/ClearCoverNoblePage;->TAG:Ljava/lang/String;

    const-string v4, "updateRemoteViewContainerVisibility()"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 373
    iget-object v1, p1, Lcom/sec/android/cover/monitor/CoverUpdateMonitor$RemoteViewInfo;->mType:Ljava/lang/String;

    .line 374
    .local v1, "type":Ljava/lang/String;
    iget-boolean v2, p1, Lcom/sec/android/cover/monitor/CoverUpdateMonitor$RemoteViewInfo;->mVisibility:Z

    .line 376
    .local v2, "visibility":Z
    const/4 v0, 0x0

    .line 378
    .local v0, "container":Lcom/sec/android/cover/widget/RemoteViewContainerView;
    const-string v3, "s_voice"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-ne v3, v5, :cond_2

    .line 379
    iget-object v0, p0, Lcom/sec/android/cover/clearcover/ClearCoverNoblePage;->mSVoiceRemoteViewContainer:Lcom/sec/android/cover/widget/RemoteViewContainerView;

    .line 388
    :cond_0
    :goto_0
    if-nez v0, :cond_5

    .line 389
    sget-object v3, Lcom/sec/android/cover/clearcover/ClearCoverNoblePage;->TAG:Ljava/lang/String;

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

    .line 417
    :cond_1
    :goto_1
    return-void

    .line 380
    :cond_2
    const-string v3, "music_controller"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-ne v3, v5, :cond_3

    .line 381
    iget-object v0, p0, Lcom/sec/android/cover/clearcover/ClearCoverNoblePage;->mMusicRemoteViewContainer:Lcom/sec/android/cover/widget/RemoteViewContainerView;

    goto :goto_0

    .line 382
    :cond_3
    const-string v3, "voice_recorder"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-ne v3, v5, :cond_4

    .line 383
    iget-object v0, p0, Lcom/sec/android/cover/clearcover/ClearCoverNoblePage;->mVoiceRecorderRemoteViewContainer:Lcom/sec/android/cover/widget/RemoteViewContainerView;

    goto :goto_0

    .line 384
    :cond_4
    const-string v3, "video_controller"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-ne v3, v5, :cond_0

    .line 385
    iget-object v0, p0, Lcom/sec/android/cover/clearcover/ClearCoverNoblePage;->mVideoRemoteViewContainer:Lcom/sec/android/cover/widget/RemoteViewContainerView;

    goto :goto_0

    .line 393
    :cond_5
    iget-boolean v3, p1, Lcom/sec/android/cover/monitor/CoverUpdateMonitor$RemoteViewInfo;->mIsPlaying:Z

    if-nez v3, :cond_6

    invoke-direct {p0}, Lcom/sec/android/cover/clearcover/ClearCoverNoblePage;->isPlayingCurrentRemoteView()Z

    move-result v3

    if-ne v3, v5, :cond_6

    .line 394
    sget-object v4, Lcom/sec/android/cover/clearcover/ClearCoverNoblePage;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "return : current remote view is playing("

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v3, p0, Lcom/sec/android/cover/clearcover/ClearCoverNoblePage;->mRemoteViewContainerStack:Ljava/util/Stack;

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

    .line 398
    :cond_6
    if-ne v2, v5, :cond_9

    .line 399
    iget-object v3, p0, Lcom/sec/android/cover/clearcover/ClearCoverNoblePage;->mRemoteViewContainerStack:Ljava/util/Stack;

    invoke-virtual {v3}, Ljava/util/Stack;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_7

    iget-object v3, p0, Lcom/sec/android/cover/clearcover/ClearCoverNoblePage;->mRemoteViewContainerStack:Ljava/util/Stack;

    invoke-virtual {v3}, Ljava/util/Stack;->peek()Ljava/lang/Object;

    move-result-object v3

    if-ne v3, v0, :cond_7

    .line 401
    sget-object v3, Lcom/sec/android/cover/clearcover/ClearCoverNoblePage;->TAG:Ljava/lang/String;

    const-string v4, "return : top container and latest container are same"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 404
    :cond_7
    iget-object v3, p0, Lcom/sec/android/cover/clearcover/ClearCoverNoblePage;->mRemoteViewContainerStack:Ljava/util/Stack;

    invoke-virtual {v3}, Ljava/util/Stack;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_8

    .line 405
    iget-object v3, p0, Lcom/sec/android/cover/clearcover/ClearCoverNoblePage;->mRemoteViewContainerStack:Ljava/util/Stack;

    invoke-virtual {v3}, Ljava/util/Stack;->peek()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/sec/android/cover/widget/RemoteViewContainerView;

    invoke-virtual {v3, v7}, Lcom/sec/android/cover/widget/RemoteViewContainerView;->setVisibility(I)V

    .line 407
    :cond_8
    iget-object v3, p0, Lcom/sec/android/cover/clearcover/ClearCoverNoblePage;->mRemoteViewContainerStack:Ljava/util/Stack;

    invoke-virtual {v3, v0}, Ljava/util/Stack;->remove(Ljava/lang/Object;)Z

    .line 408
    iget-object v3, p0, Lcom/sec/android/cover/clearcover/ClearCoverNoblePage;->mRemoteViewContainerStack:Ljava/util/Stack;

    invoke-virtual {v3, v0}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    .line 409
    invoke-virtual {v0, v6}, Lcom/sec/android/cover/widget/RemoteViewContainerView;->setVisibility(I)V

    goto/16 :goto_1

    .line 411
    :cond_9
    invoke-virtual {v0, v7}, Lcom/sec/android/cover/widget/RemoteViewContainerView;->setVisibility(I)V

    .line 412
    iget-object v3, p0, Lcom/sec/android/cover/clearcover/ClearCoverNoblePage;->mRemoteViewContainerStack:Ljava/util/Stack;

    invoke-virtual {v3, v0}, Ljava/util/Stack;->remove(Ljava/lang/Object;)Z

    .line 413
    iget-object v3, p0, Lcom/sec/android/cover/clearcover/ClearCoverNoblePage;->mRemoteViewContainerStack:Ljava/util/Stack;

    invoke-virtual {v3}, Ljava/util/Stack;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_1

    .line 414
    iget-object v3, p0, Lcom/sec/android/cover/clearcover/ClearCoverNoblePage;->mRemoteViewContainerStack:Ljava/util/Stack;

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
    .line 525
    iget-object v0, p0, Lcom/sec/android/cover/clearcover/ClearCoverNoblePage;->mUpdateMonitorCallback:Lcom/sec/android/cover/monitor/CoverUpdateMonitorCallback;

    return-object v0
.end method

.method protected onCoverEvent()V
    .locals 2

    .prologue
    .line 530
    iget-object v0, p0, Lcom/sec/android/cover/clearcover/ClearCoverNoblePage;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/sec/android/cover/manager/CoverPowerManager;->getInstance(Landroid/content/Context;)Lcom/sec/android/cover/manager/CoverPowerManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/cover/manager/CoverPowerManager;->userActivity()V

    .line 532
    invoke-virtual {p0}, Lcom/sec/android/cover/clearcover/ClearCoverNoblePage;->isCoverOpen()Z

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 533
    invoke-direct {p0}, Lcom/sec/android/cover/clearcover/ClearCoverNoblePage;->gotoOpenPage()V

    .line 538
    :goto_0
    return-void

    .line 535
    :cond_0
    invoke-virtual {p0}, Lcom/sec/android/cover/clearcover/ClearCoverNoblePage;->setBackgroundColor()V

    .line 536
    invoke-direct {p0}, Lcom/sec/android/cover/clearcover/ClearCoverNoblePage;->updateMissedEvent()V

    goto :goto_0
.end method

.method protected onFinishInflate()V
    .locals 5

    .prologue
    const/16 v4, 0x8

    const/4 v3, 0x1

    .line 195
    invoke-super {p0}, Lcom/sec/android/cover/clearcover/ClearCoverPage;->onFinishInflate()V

    .line 196
    sget-object v1, Lcom/sec/android/cover/clearcover/ClearCoverNoblePage;->TAG:Ljava/lang/String;

    const-string v2, "onFinishInflate()"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 197
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/sec/android/cover/clearcover/ClearCoverNoblePage;->setVisibility(I)V

    .line 199
    sget v1, Lcom/sec/android/sviewcover/R$id;->clock_time_and_date:I

    invoke-virtual {p0, v1}, Lcom/sec/android/cover/clearcover/ClearCoverNoblePage;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/sec/android/cover/clearcover/ClearCoverNoblePage;->mClockWidget:Landroid/view/View;

    .line 200
    sget v1, Lcom/sec/android/sviewcover/R$id;->dual_clock_time_and_date:I

    invoke-virtual {p0, v1}, Lcom/sec/android/cover/clearcover/ClearCoverNoblePage;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/sec/android/cover/clearcover/ClearCoverNoblePage;->mDualClockWidget:Landroid/view/View;

    .line 202
    iget-object v1, p0, Lcom/sec/android/cover/clearcover/ClearCoverNoblePage;->mClockWidget:Landroid/view/View;

    if-eqz v1, :cond_0

    .line 203
    iget-object v1, p0, Lcom/sec/android/cover/clearcover/ClearCoverNoblePage;->mClockWidget:Landroid/view/View;

    iget-object v2, p0, Lcom/sec/android/cover/clearcover/ClearCoverNoblePage;->mOnHoverListener:Landroid/view/View$OnHoverListener;

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnHoverListener(Landroid/view/View$OnHoverListener;)V

    .line 204
    :cond_0
    iget-object v1, p0, Lcom/sec/android/cover/clearcover/ClearCoverNoblePage;->mDualClockWidget:Landroid/view/View;

    if-eqz v1, :cond_1

    .line 205
    iget-object v1, p0, Lcom/sec/android/cover/clearcover/ClearCoverNoblePage;->mDualClockWidget:Landroid/view/View;

    iget-object v2, p0, Lcom/sec/android/cover/clearcover/ClearCoverNoblePage;->mOnHoverListener:Landroid/view/View$OnHoverListener;

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnHoverListener(Landroid/view/View$OnHoverListener;)V

    .line 208
    :cond_1
    sget v1, Lcom/sec/android/sviewcover/R$id;->clear_sound_warning_remoteview_contatiner:I

    invoke-virtual {p0, v1}, Lcom/sec/android/cover/clearcover/ClearCoverNoblePage;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/sec/android/cover/widget/RemoteViewContainerView;

    iput-object v1, p0, Lcom/sec/android/cover/clearcover/ClearCoverNoblePage;->mSoundWarningRemoteViewContainer:Lcom/sec/android/cover/widget/RemoteViewContainerView;

    .line 209
    iget-object v1, p0, Lcom/sec/android/cover/clearcover/ClearCoverNoblePage;->mSoundWarningRemoteViewContainer:Lcom/sec/android/cover/widget/RemoteViewContainerView;

    if-eqz v1, :cond_2

    .line 210
    iget-object v1, p0, Lcom/sec/android/cover/clearcover/ClearCoverNoblePage;->mSoundWarningRemoteViewContainer:Lcom/sec/android/cover/widget/RemoteViewContainerView;

    const-string v2, "volume"

    invoke-virtual {v1, v2, v3}, Lcom/sec/android/cover/widget/RemoteViewContainerView;->init(Ljava/lang/String;Z)V

    .line 213
    :cond_2
    sget v1, Lcom/sec/android/sviewcover/R$id;->clear_music_remoteview_contatiner:I

    invoke-virtual {p0, v1}, Lcom/sec/android/cover/clearcover/ClearCoverNoblePage;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/sec/android/cover/widget/RemoteViewContainerView;

    iput-object v1, p0, Lcom/sec/android/cover/clearcover/ClearCoverNoblePage;->mMusicRemoteViewContainer:Lcom/sec/android/cover/widget/RemoteViewContainerView;

    .line 214
    iget-object v1, p0, Lcom/sec/android/cover/clearcover/ClearCoverNoblePage;->mMusicRemoteViewContainer:Lcom/sec/android/cover/widget/RemoteViewContainerView;

    if-eqz v1, :cond_3

    .line 215
    iget-object v1, p0, Lcom/sec/android/cover/clearcover/ClearCoverNoblePage;->mMusicRemoteViewContainer:Lcom/sec/android/cover/widget/RemoteViewContainerView;

    const-string v2, "music_controller"

    invoke-virtual {v1, v2, v3}, Lcom/sec/android/cover/widget/RemoteViewContainerView;->init(Ljava/lang/String;Z)V

    .line 216
    iget-object v1, p0, Lcom/sec/android/cover/clearcover/ClearCoverNoblePage;->mMusicRemoteViewContainer:Lcom/sec/android/cover/widget/RemoteViewContainerView;

    invoke-virtual {v1, v4}, Lcom/sec/android/cover/widget/RemoteViewContainerView;->setVisibility(I)V

    .line 219
    :cond_3
    sget v1, Lcom/sec/android/sviewcover/R$id;->clear_voice_recorder_remoteview_contatiner:I

    invoke-virtual {p0, v1}, Lcom/sec/android/cover/clearcover/ClearCoverNoblePage;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/sec/android/cover/widget/RemoteViewContainerView;

    iput-object v1, p0, Lcom/sec/android/cover/clearcover/ClearCoverNoblePage;->mVoiceRecorderRemoteViewContainer:Lcom/sec/android/cover/widget/RemoteViewContainerView;

    .line 220
    iget-object v1, p0, Lcom/sec/android/cover/clearcover/ClearCoverNoblePage;->mVoiceRecorderRemoteViewContainer:Lcom/sec/android/cover/widget/RemoteViewContainerView;

    if-eqz v1, :cond_4

    .line 221
    iget-object v1, p0, Lcom/sec/android/cover/clearcover/ClearCoverNoblePage;->mVoiceRecorderRemoteViewContainer:Lcom/sec/android/cover/widget/RemoteViewContainerView;

    const-string v2, "voice_recorder"

    invoke-virtual {v1, v2, v3}, Lcom/sec/android/cover/widget/RemoteViewContainerView;->init(Ljava/lang/String;Z)V

    .line 222
    iget-object v1, p0, Lcom/sec/android/cover/clearcover/ClearCoverNoblePage;->mVoiceRecorderRemoteViewContainer:Lcom/sec/android/cover/widget/RemoteViewContainerView;

    invoke-virtual {v1, v4}, Lcom/sec/android/cover/widget/RemoteViewContainerView;->setVisibility(I)V

    .line 225
    :cond_4
    sget v1, Lcom/sec/android/sviewcover/R$id;->clear_s_voice_remoteview_contatiner:I

    invoke-virtual {p0, v1}, Lcom/sec/android/cover/clearcover/ClearCoverNoblePage;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/sec/android/cover/widget/RemoteViewContainerView;

    iput-object v1, p0, Lcom/sec/android/cover/clearcover/ClearCoverNoblePage;->mSVoiceRemoteViewContainer:Lcom/sec/android/cover/widget/RemoteViewContainerView;

    .line 226
    iget-object v1, p0, Lcom/sec/android/cover/clearcover/ClearCoverNoblePage;->mSVoiceRemoteViewContainer:Lcom/sec/android/cover/widget/RemoteViewContainerView;

    if-eqz v1, :cond_5

    .line 227
    iget-object v1, p0, Lcom/sec/android/cover/clearcover/ClearCoverNoblePage;->mSVoiceRemoteViewContainer:Lcom/sec/android/cover/widget/RemoteViewContainerView;

    const-string v2, "s_voice"

    invoke-virtual {v1, v2, v3}, Lcom/sec/android/cover/widget/RemoteViewContainerView;->init(Ljava/lang/String;Z)V

    .line 228
    iget-object v1, p0, Lcom/sec/android/cover/clearcover/ClearCoverNoblePage;->mSVoiceRemoteViewContainer:Lcom/sec/android/cover/widget/RemoteViewContainerView;

    invoke-virtual {v1, v4}, Lcom/sec/android/cover/widget/RemoteViewContainerView;->setVisibility(I)V

    .line 231
    :cond_5
    sget v1, Lcom/sec/android/sviewcover/R$id;->clear_video_remoteview_contatiner:I

    invoke-virtual {p0, v1}, Lcom/sec/android/cover/clearcover/ClearCoverNoblePage;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/sec/android/cover/widget/RemoteViewContainerView;

    iput-object v1, p0, Lcom/sec/android/cover/clearcover/ClearCoverNoblePage;->mVideoRemoteViewContainer:Lcom/sec/android/cover/widget/RemoteViewContainerView;

    .line 232
    iget-object v1, p0, Lcom/sec/android/cover/clearcover/ClearCoverNoblePage;->mVideoRemoteViewContainer:Lcom/sec/android/cover/widget/RemoteViewContainerView;

    if-eqz v1, :cond_6

    .line 233
    iget-object v1, p0, Lcom/sec/android/cover/clearcover/ClearCoverNoblePage;->mVideoRemoteViewContainer:Lcom/sec/android/cover/widget/RemoteViewContainerView;

    const-string v2, "video_controller"

    invoke-virtual {v1, v2, v3}, Lcom/sec/android/cover/widget/RemoteViewContainerView;->init(Ljava/lang/String;Z)V

    .line 234
    iget-object v1, p0, Lcom/sec/android/cover/clearcover/ClearCoverNoblePage;->mVideoRemoteViewContainer:Lcom/sec/android/cover/widget/RemoteViewContainerView;

    invoke-virtual {v1, v4}, Lcom/sec/android/cover/widget/RemoteViewContainerView;->setVisibility(I)V

    .line 237
    :cond_6
    sget v1, Lcom/sec/android/sviewcover/R$id;->clear_cover_missed_call_count:I

    invoke-virtual {p0, v1}, Lcom/sec/android/cover/clearcover/ClearCoverNoblePage;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/sec/android/cover/clearcover/ClearCoverNoblePage;->mMissedCallCountTextView:Landroid/widget/TextView;

    .line 238
    sget v1, Lcom/sec/android/sviewcover/R$id;->clear_cover_unread_message_count:I

    invoke-virtual {p0, v1}, Lcom/sec/android/cover/clearcover/ClearCoverNoblePage;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/sec/android/cover/clearcover/ClearCoverNoblePage;->mUnreadMessageCountTextView:Landroid/widget/TextView;

    .line 240
    iget-object v1, p0, Lcom/sec/android/cover/clearcover/ClearCoverNoblePage;->mMissedCallCountTextView:Landroid/widget/TextView;

    if-eqz v1, :cond_7

    .line 241
    iget-object v1, p0, Lcom/sec/android/cover/clearcover/ClearCoverNoblePage;->mMissedCallCountTextView:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/sec/android/cover/clearcover/ClearCoverNoblePage;->mMissedViewClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 243
    :cond_7
    iget-object v1, p0, Lcom/sec/android/cover/clearcover/ClearCoverNoblePage;->mUnreadMessageCountTextView:Landroid/widget/TextView;

    if-eqz v1, :cond_8

    .line 244
    iget-object v1, p0, Lcom/sec/android/cover/clearcover/ClearCoverNoblePage;->mUnreadMessageCountTextView:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/sec/android/cover/clearcover/ClearCoverNoblePage;->mMissedViewClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 247
    :cond_8
    sget v1, Lcom/sec/android/sviewcover/R$id;->clear_cover_battery_charging:I

    invoke-virtual {p0, v1}, Lcom/sec/android/cover/clearcover/ClearCoverNoblePage;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/sec/android/cover/clearcover/ClearCoverNoblePage;->mBatteryCharingText:Landroid/widget/TextView;

    .line 248
    iget-object v1, p0, Lcom/sec/android/cover/clearcover/ClearCoverNoblePage;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/sec/android/cover/manager/CoverBroadcastManager;->getInstance(Landroid/content/Context;)Lcom/sec/android/cover/manager/CoverBroadcastManager;

    move-result-object v1

    const-string v2, "android.intent.action.BATTERY_CHANGED"

    invoke-virtual {v1, v2}, Lcom/sec/android/cover/manager/CoverBroadcastManager;->getLastBroadcastInfo(Ljava/lang/String;)Lcom/sec/android/cover/manager/CoverBroadcastManager$BroadcastInfo;

    move-result-object v0

    .line 250
    .local v0, "bcInfo":Lcom/sec/android/cover/manager/CoverBroadcastManager$BroadcastInfo;
    if-eqz v0, :cond_9

    .line 251
    iget-object v1, v0, Lcom/sec/android/cover/manager/CoverBroadcastManager$BroadcastInfo;->mItem:Ljava/lang/Object;

    invoke-direct {p0, v1}, Lcom/sec/android/cover/clearcover/ClearCoverNoblePage;->updateBatteryStateWidgetState(Ljava/lang/Object;)V

    .line 254
    :cond_9
    invoke-direct {p0}, Lcom/sec/android/cover/clearcover/ClearCoverNoblePage;->setClockVisibility()V

    .line 255
    invoke-direct {p0}, Lcom/sec/android/cover/clearcover/ClearCoverNoblePage;->updateMissedEvent()V

    .line 256
    invoke-virtual {p0}, Lcom/sec/android/cover/clearcover/ClearCoverNoblePage;->requestRemoteViews()V

    .line 257
    return-void
.end method

.method protected setBackgroundColor()V
    .locals 5

    .prologue
    .line 555
    invoke-virtual {p0}, Lcom/sec/android/cover/clearcover/ClearCoverNoblePage;->isCoverOpen()Z

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_0

    .line 556
    sget-object v2, Lcom/sec/android/cover/clearcover/ClearCoverNoblePage;->TAG:Ljava/lang/String;

    const-string v3, "setBackgroundColor() return : cover open"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 599
    :goto_0
    return-void

    .line 560
    :cond_0
    iget-object v2, p0, Lcom/sec/android/cover/clearcover/ClearCoverNoblePage;->mBackgroundView:Landroid/view/View;

    if-nez v2, :cond_1

    .line 561
    sget-object v2, Lcom/sec/android/cover/clearcover/ClearCoverNoblePage;->TAG:Ljava/lang/String;

    const-string v3, "setBackgroundColor() return : mBackgroundView is null"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 565
    :cond_1
    iget-object v2, p0, Lcom/sec/android/cover/clearcover/ClearCoverNoblePage;->mCoverState:Lcom/samsung/android/cover/CoverState;

    invoke-virtual {v2}, Lcom/samsung/android/cover/CoverState;->getColor()I

    move-result v1

    .line 566
    .local v1, "currentCoverColor":I
    iget-object v2, p0, Lcom/sec/android/cover/clearcover/ClearCoverNoblePage;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/sec/android/cover/manager/CoverDatabaseManager;->getInstance(Landroid/content/Context;)Lcom/sec/android/cover/manager/CoverDatabaseManager;

    move-result-object v2

    const-string v3, "s_view_cover_skin_color"

    invoke-virtual {v2, v3, v1}, Lcom/sec/android/cover/manager/CoverDatabaseManager;->putInt(Ljava/lang/String;I)V

    .line 569
    const/4 v0, 0x0

    .line 570
    .local v0, "backgroundColor":I
    invoke-static {}, Lcom/sec/android/cover/FeatureUtils;->isSupportBlackClearCover()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 571
    sget v0, Lcom/sec/android/cover/clearcover/ClearCoverNoblePage;->WALLPAPER_COLOR_HERO_BLACK:I

    .line 595
    :goto_1
    sget-object v2, Lcom/sec/android/cover/clearcover/ClearCoverNoblePage;->TAG:Ljava/lang/String;

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

    .line 598
    iget-object v2, p0, Lcom/sec/android/cover/clearcover/ClearCoverNoblePage;->mBackgroundView:Landroid/view/View;

    invoke-virtual {v2, v0}, Landroid/view/View;->setBackgroundColor(I)V

    goto :goto_0

    .line 573
    :cond_2
    packed-switch v1, :pswitch_data_0

    .line 590
    :pswitch_0
    sget v0, Lcom/sec/android/cover/clearcover/ClearCoverNoblePage;->WALLPAPER_COLOR_SILVER:I

    goto :goto_1

    .line 575
    :pswitch_1
    sget v0, Lcom/sec/android/cover/clearcover/ClearCoverNoblePage;->WALLPAPER_COLOR_SILVER:I

    .line 576
    goto :goto_1

    .line 578
    :pswitch_2
    sget v0, Lcom/sec/android/cover/clearcover/ClearCoverNoblePage;->WALLPAPER_COLOR_BLACK:I

    .line 579
    goto :goto_1

    .line 581
    :pswitch_3
    sget v0, Lcom/sec/android/cover/clearcover/ClearCoverNoblePage;->WALLPAPER_COLOR_BLUE:I

    .line 582
    goto :goto_1

    .line 584
    :pswitch_4
    sget v0, Lcom/sec/android/cover/clearcover/ClearCoverNoblePage;->WALLPAPER_COLOR_GREEN:I

    .line 585
    goto :goto_1

    .line 587
    :pswitch_5
    sget v0, Lcom/sec/android/cover/clearcover/ClearCoverNoblePage;->WALLPAPER_COLOR_GOLD:I

    .line 588
    goto :goto_1

    .line 573
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
