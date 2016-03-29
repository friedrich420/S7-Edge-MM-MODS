.class public Lcom/sec/android/cover/clearcover/ClearCoverView;
.super Lcom/sec/android/cover/CoverMainFrameView;
.source "ClearCoverView.java"


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private mActivityManager:Landroid/app/ActivityManager;

.field private mBasePaddingBottom:I

.field private mBasePaddingLeft:I

.field private mBasePaddingRight:I

.field private mBasePaddingTop:I

.field private mClearCoverMainPage:Lcom/sec/android/cover/clearcover/ClearCoverPage;

.field private mContext:Landroid/content/Context;

.field private mCoverState:Lcom/samsung/android/cover/CoverState;

.field private mDirection:I

.field private mHorizontalShift:I

.field private mMaxShift:I

.field private mOpenCoverWindowContentRootView:Landroid/widget/TextView;

.field private mPinWindowContentRootView:Landroid/widget/TextView;

.field private mRootView:Landroid/view/ViewGroup;

.field private mUpdateMonitorCallback:Lcom/sec/android/cover/monitor/CoverUpdateMonitorCallback;

.field private mVerticalShift:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 40
    const-class v0, Lcom/sec/android/cover/clearcover/ClearCoverView;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/sec/android/cover/clearcover/ClearCoverView;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 94
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/sec/android/cover/clearcover/ClearCoverView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 95
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 98
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/sec/android/cover/clearcover/ClearCoverView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 99
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    const/4 v1, 0x0

    .line 102
    invoke-direct {p0, p1, p2, p3}, Lcom/sec/android/cover/CoverMainFrameView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 43
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/cover/clearcover/ClearCoverView;->mActivityManager:Landroid/app/ActivityManager;

    .line 44
    new-instance v0, Lcom/samsung/android/cover/CoverState;

    invoke-direct {v0}, Lcom/samsung/android/cover/CoverState;-><init>()V

    iput-object v0, p0, Lcom/sec/android/cover/clearcover/ClearCoverView;->mCoverState:Lcom/samsung/android/cover/CoverState;

    .line 63
    const/4 v0, 0x1

    iput v0, p0, Lcom/sec/android/cover/clearcover/ClearCoverView;->mDirection:I

    .line 64
    iput v1, p0, Lcom/sec/android/cover/clearcover/ClearCoverView;->mHorizontalShift:I

    .line 65
    iput v1, p0, Lcom/sec/android/cover/clearcover/ClearCoverView;->mVerticalShift:I

    .line 67
    new-instance v0, Lcom/sec/android/cover/clearcover/ClearCoverView$1;

    invoke-direct {v0, p0}, Lcom/sec/android/cover/clearcover/ClearCoverView$1;-><init>(Lcom/sec/android/cover/clearcover/ClearCoverView;)V

    iput-object v0, p0, Lcom/sec/android/cover/clearcover/ClearCoverView;->mUpdateMonitorCallback:Lcom/sec/android/cover/monitor/CoverUpdateMonitorCallback;

    .line 103
    iput-object p1, p0, Lcom/sec/android/cover/clearcover/ClearCoverView;->mContext:Landroid/content/Context;

    .line 104
    iget-object v0, p0, Lcom/sec/android/cover/clearcover/ClearCoverView;->mContext:Landroid/content/Context;

    const-string v1, "activity"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    iput-object v0, p0, Lcom/sec/android/cover/clearcover/ClearCoverView;->mActivityManager:Landroid/app/ActivityManager;

    .line 106
    invoke-virtual {p0}, Lcom/sec/android/cover/clearcover/ClearCoverView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/sec/android/sviewcover/R$dimen;->clear_cover_marquee_max:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/sec/android/cover/clearcover/ClearCoverView;->mMaxShift:I

    .line 107
    return-void
.end method

.method static synthetic access$000(Lcom/sec/android/cover/clearcover/ClearCoverView;)V
    .locals 0
    .param p0, "x0"    # Lcom/sec/android/cover/clearcover/ClearCoverView;

    .prologue
    .line 38
    invoke-virtual {p0}, Lcom/sec/android/cover/clearcover/ClearCoverView;->cancelScreenOffTimer()V

    return-void
.end method

.method static synthetic access$100(Lcom/sec/android/cover/clearcover/ClearCoverView;)V
    .locals 0
    .param p0, "x0"    # Lcom/sec/android/cover/clearcover/ClearCoverView;

    .prologue
    .line 38
    invoke-virtual {p0}, Lcom/sec/android/cover/clearcover/ClearCoverView;->startScreenOffTimer()V

    return-void
.end method

.method static synthetic access$200()Ljava/lang/String;
    .locals 1

    .prologue
    .line 38
    sget-object v0, Lcom/sec/android/cover/clearcover/ClearCoverView;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$300()I
    .locals 1

    .prologue
    .line 38
    sget v0, Lcom/sec/android/cover/clearcover/ClearCoverView;->mDelayedShowingSequence:I

    return v0
.end method

.method static synthetic access$400()I
    .locals 1

    .prologue
    .line 38
    sget v0, Lcom/sec/android/cover/clearcover/ClearCoverView;->mDelayedShowingSequence:I

    return v0
.end method

.method static synthetic access$500(Lcom/sec/android/cover/clearcover/ClearCoverView;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/sec/android/cover/clearcover/ClearCoverView;

    .prologue
    .line 38
    iget-object v0, p0, Lcom/sec/android/cover/clearcover/ClearCoverView;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$600(Lcom/sec/android/cover/clearcover/ClearCoverView;)Landroid/widget/TextView;
    .locals 1
    .param p0, "x0"    # Lcom/sec/android/cover/clearcover/ClearCoverView;

    .prologue
    .line 38
    iget-object v0, p0, Lcom/sec/android/cover/clearcover/ClearCoverView;->mPinWindowContentRootView:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$700(Lcom/sec/android/cover/clearcover/ClearCoverView;)Landroid/widget/TextView;
    .locals 1
    .param p0, "x0"    # Lcom/sec/android/cover/clearcover/ClearCoverView;

    .prologue
    .line 38
    iget-object v0, p0, Lcom/sec/android/cover/clearcover/ClearCoverView;->mOpenCoverWindowContentRootView:Landroid/widget/TextView;

    return-object v0
.end method

.method private hideCoverUi()V
    .locals 5

    .prologue
    .line 224
    sget-object v2, Lcom/sec/android/cover/clearcover/ClearCoverView;->TAG:Ljava/lang/String;

    const-string v3, "hideCoverUi"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 226
    iget-object v2, p0, Lcom/sec/android/cover/clearcover/ClearCoverView;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/sec/android/cover/manager/CoverPowerManager;->getInstance(Landroid/content/Context;)Lcom/sec/android/cover/manager/CoverPowerManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/android/cover/manager/CoverPowerManager;->isScreenOn()Z

    move-result v2

    if-nez v2, :cond_1

    .line 227
    iget-object v2, p0, Lcom/sec/android/cover/clearcover/ClearCoverView;->mContext:Landroid/content/Context;

    const-string v3, "phone"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telephony/TelephonyManager;

    .line 229
    .local v1, "telephonyManager":Landroid/telephony/TelephonyManager;
    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->getCallState()I

    move-result v0

    .line 230
    .local v0, "callState":I
    sget-object v2, Lcom/sec/android/cover/clearcover/ClearCoverView;->TAG:Ljava/lang/String;

    const-string v3, "handleMessage : Screen is off"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 231
    sget-object v2, Lcom/sec/android/cover/clearcover/ClearCoverView;->TAG:Ljava/lang/String;

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

    .line 232
    if-nez v0, :cond_0

    .line 233
    iget-object v2, p0, Lcom/sec/android/cover/clearcover/ClearCoverView;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/sec/android/cover/manager/CoverPowerManager;->getInstance(Landroid/content/Context;)Lcom/sec/android/cover/manager/CoverPowerManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/android/cover/manager/CoverPowerManager;->wakeUpWithReason()V

    .line 240
    .end local v0    # "callState":I
    .end local v1    # "telephonyManager":Landroid/telephony/TelephonyManager;
    :cond_0
    :goto_0
    iget-object v2, p0, Lcom/sec/android/cover/clearcover/ClearCoverView;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/sec/android/cover/manager/CoverPowerManager;->getInstance(Landroid/content/Context;)Lcom/sec/android/cover/manager/CoverPowerManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/android/cover/manager/CoverPowerManager;->releaseWakeLock()V

    .line 241
    return-void

    .line 236
    :cond_1
    sget-object v2, Lcom/sec/android/cover/clearcover/ClearCoverView;->TAG:Ljava/lang/String;

    const-string v3, "handleMessage : Screen is on"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 237
    iget-object v2, p0, Lcom/sec/android/cover/clearcover/ClearCoverView;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/sec/android/cover/manager/CoverPowerManager;->getInstance(Landroid/content/Context;)Lcom/sec/android/cover/manager/CoverPowerManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/android/cover/manager/CoverPowerManager;->userActivity()V

    goto :goto_0
.end method

.method private marqueeCoverView()V
    .locals 7

    .prologue
    .line 133
    iget-object v2, p0, Lcom/sec/android/cover/clearcover/ClearCoverView;->mClearCoverMainPage:Lcom/sec/android/cover/clearcover/ClearCoverPage;

    if-nez v2, :cond_0

    .line 166
    :goto_0
    return-void

    .line 137
    :cond_0
    iget v2, p0, Lcom/sec/android/cover/clearcover/ClearCoverView;->mHorizontalShift:I

    iget v3, p0, Lcom/sec/android/cover/clearcover/ClearCoverView;->mDirection:I

    add-int/2addr v2, v3

    iput v2, p0, Lcom/sec/android/cover/clearcover/ClearCoverView;->mHorizontalShift:I

    .line 138
    iget v2, p0, Lcom/sec/android/cover/clearcover/ClearCoverView;->mHorizontalShift:I

    iget v3, p0, Lcom/sec/android/cover/clearcover/ClearCoverView;->mMaxShift:I

    if-le v2, v3, :cond_2

    .line 139
    iget v2, p0, Lcom/sec/android/cover/clearcover/ClearCoverView;->mMaxShift:I

    iput v2, p0, Lcom/sec/android/cover/clearcover/ClearCoverView;->mHorizontalShift:I

    .line 140
    const/4 v2, -0x1

    iput v2, p0, Lcom/sec/android/cover/clearcover/ClearCoverView;->mDirection:I

    .line 146
    :cond_1
    :goto_1
    iget v2, p0, Lcom/sec/android/cover/clearcover/ClearCoverView;->mVerticalShift:I

    add-int/lit8 v2, v2, 0x1

    rem-int/lit8 v2, v2, 0x3

    iput v2, p0, Lcom/sec/android/cover/clearcover/ClearCoverView;->mVerticalShift:I

    .line 148
    const/4 v0, 0x0

    .line 149
    .local v0, "leftPadding":I
    const/4 v1, 0x0

    .line 151
    .local v1, "rightPadding":I
    iget v2, p0, Lcom/sec/android/cover/clearcover/ClearCoverView;->mHorizontalShift:I

    if-lez v2, :cond_3

    .line 152
    iget v0, p0, Lcom/sec/android/cover/clearcover/ClearCoverView;->mHorizontalShift:I

    .line 157
    :goto_2
    iget-object v2, p0, Lcom/sec/android/cover/clearcover/ClearCoverView;->mClearCoverMainPage:Lcom/sec/android/cover/clearcover/ClearCoverPage;

    iget v3, p0, Lcom/sec/android/cover/clearcover/ClearCoverView;->mBasePaddingLeft:I

    mul-int/lit8 v4, v0, 0x2

    add-int/2addr v3, v4

    iget v4, p0, Lcom/sec/android/cover/clearcover/ClearCoverView;->mBasePaddingTop:I

    iget v5, p0, Lcom/sec/android/cover/clearcover/ClearCoverView;->mVerticalShift:I

    add-int/2addr v4, v5

    iget v5, p0, Lcom/sec/android/cover/clearcover/ClearCoverView;->mBasePaddingRight:I

    mul-int/lit8 v6, v1, 0x2

    add-int/2addr v5, v6

    iget v6, p0, Lcom/sec/android/cover/clearcover/ClearCoverView;->mBasePaddingBottom:I

    invoke-virtual {v2, v3, v4, v5, v6}, Lcom/sec/android/cover/clearcover/ClearCoverPage;->setPadding(IIII)V

    .line 163
    invoke-virtual {p0}, Lcom/sec/android/cover/clearcover/ClearCoverView;->invalidate()V

    .line 165
    sget-object v2, Lcom/sec/android/cover/clearcover/ClearCoverView;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "marqueeCoverView() : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/sec/android/cover/clearcover/ClearCoverView;->mHorizontalShift:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/sec/android/cover/clearcover/ClearCoverView;->mVerticalShift:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 141
    .end local v0    # "leftPadding":I
    .end local v1    # "rightPadding":I
    :cond_2
    iget v2, p0, Lcom/sec/android/cover/clearcover/ClearCoverView;->mHorizontalShift:I

    iget v3, p0, Lcom/sec/android/cover/clearcover/ClearCoverView;->mMaxShift:I

    neg-int v3, v3

    if-ge v2, v3, :cond_1

    .line 142
    iget v2, p0, Lcom/sec/android/cover/clearcover/ClearCoverView;->mMaxShift:I

    neg-int v2, v2

    iput v2, p0, Lcom/sec/android/cover/clearcover/ClearCoverView;->mHorizontalShift:I

    .line 143
    const/4 v2, 0x1

    iput v2, p0, Lcom/sec/android/cover/clearcover/ClearCoverView;->mDirection:I

    goto :goto_1

    .line 154
    .restart local v0    # "leftPadding":I
    .restart local v1    # "rightPadding":I
    :cond_3
    iget v2, p0, Lcom/sec/android/cover/clearcover/ClearCoverView;->mHorizontalShift:I

    neg-int v1, v2

    goto :goto_2
.end method

.method private showCoverUi()V
    .locals 2

    .prologue
    .line 244
    sget-object v0, Lcom/sec/android/cover/clearcover/ClearCoverView;->TAG:Ljava/lang/String;

    const-string v1, "showCoverUi"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 246
    invoke-virtual {p0}, Lcom/sec/android/cover/clearcover/ClearCoverView;->isCoverOpen()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 247
    sget-object v0, Lcom/sec/android/cover/clearcover/ClearCoverView;->TAG:Ljava/lang/String;

    const-string v1, "showCoverUi : Cover is opend -> Ignore showCoverUi()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 248
    iget-object v0, p0, Lcom/sec/android/cover/clearcover/ClearCoverView;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/sec/android/cover/manager/CoverPowerManager;->getInstance(Landroid/content/Context;)Lcom/sec/android/cover/manager/CoverPowerManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/cover/manager/CoverPowerManager;->releaseWakeLock()V

    .line 257
    :goto_0
    return-void

    .line 252
    :cond_0
    iget-object v0, p0, Lcom/sec/android/cover/clearcover/ClearCoverView;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/sec/android/cover/manager/CoverPowerManager;->getInstance(Landroid/content/Context;)Lcom/sec/android/cover/manager/CoverPowerManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/cover/manager/CoverPowerManager;->isScreenOn()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 253
    iget-object v0, p0, Lcom/sec/android/cover/clearcover/ClearCoverView;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/sec/android/cover/manager/CoverPowerManager;->getInstance(Landroid/content/Context;)Lcom/sec/android/cover/manager/CoverPowerManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/cover/manager/CoverPowerManager;->wakeUp()V

    .line 254
    iget-object v0, p0, Lcom/sec/android/cover/clearcover/ClearCoverView;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/sec/android/cover/manager/CoverPowerManager;->getInstance(Landroid/content/Context;)Lcom/sec/android/cover/manager/CoverPowerManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/cover/manager/CoverPowerManager;->startScreenOffTimer()V

    .line 256
    :cond_1
    iget-object v0, p0, Lcom/sec/android/cover/clearcover/ClearCoverView;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/sec/android/cover/manager/CoverPowerManager;->getInstance(Landroid/content/Context;)Lcom/sec/android/cover/manager/CoverPowerManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/cover/manager/CoverPowerManager;->releaseWakeLock()V

    goto :goto_0
.end method


# virtual methods
.method public isCoverOpen()Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 261
    iget-object v1, p0, Lcom/sec/android/cover/clearcover/ClearCoverView;->mCoverState:Lcom/samsung/android/cover/CoverState;

    invoke-virtual {v1}, Lcom/samsung/android/cover/CoverState;->getSwitchState()Z

    move-result v1

    if-ne v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected onAttachedToWindow()V
    .locals 2

    .prologue
    .line 180
    invoke-super {p0}, Lcom/sec/android/cover/CoverMainFrameView;->onAttachedToWindow()V

    .line 181
    sget-object v0, Lcom/sec/android/cover/clearcover/ClearCoverView;->TAG:Ljava/lang/String;

    const-string v1, "onAttachedToWindow"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 183
    iget-object v0, p0, Lcom/sec/android/cover/clearcover/ClearCoverView;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/sec/android/cover/monitor/CoverUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/sec/android/cover/monitor/CoverUpdateMonitor;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/cover/clearcover/ClearCoverView;->mUpdateMonitorCallback:Lcom/sec/android/cover/monitor/CoverUpdateMonitorCallback;

    invoke-virtual {v0, v1}, Lcom/sec/android/cover/monitor/CoverUpdateMonitor;->registerCallback(Lcom/sec/android/cover/monitor/CoverUpdateMonitorCallback;)V

    .line 184
    return-void
.end method

.method public onCoverEvent(Lcom/samsung/android/cover/CoverState;)V
    .locals 4
    .param p1, "state"    # Lcom/samsung/android/cover/CoverState;

    .prologue
    .line 196
    invoke-super {p0, p1}, Lcom/sec/android/cover/CoverMainFrameView;->onCoverEvent(Lcom/samsung/android/cover/CoverState;)V

    .line 198
    iput-object p1, p0, Lcom/sec/android/cover/clearcover/ClearCoverView;->mCoverState:Lcom/samsung/android/cover/CoverState;

    .line 199
    invoke-virtual {p0}, Lcom/sec/android/cover/clearcover/ClearCoverView;->isCoverOpen()Z

    move-result v0

    .line 201
    .local v0, "isCoverOpen":Z
    sget-object v1, Lcom/sec/android/cover/clearcover/ClearCoverView;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onCoverEvent :  isCoverOpen:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " coverType:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Lcom/samsung/android/cover/CoverState;->getType()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " coverColor:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Lcom/samsung/android/cover/CoverState;->getColor()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 205
    iget-object v1, p0, Lcom/sec/android/cover/clearcover/ClearCoverView;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/sec/android/cover/manager/CoverPowerManager;->getInstance(Landroid/content/Context;)Lcom/sec/android/cover/manager/CoverPowerManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/cover/manager/CoverPowerManager;->userActivity()V

    .line 207
    iget-object v1, p0, Lcom/sec/android/cover/clearcover/ClearCoverView;->mClearCoverMainPage:Lcom/sec/android/cover/clearcover/ClearCoverPage;

    if-eqz v1, :cond_0

    .line 208
    iget-object v1, p0, Lcom/sec/android/cover/clearcover/ClearCoverView;->mClearCoverMainPage:Lcom/sec/android/cover/clearcover/ClearCoverPage;

    invoke-virtual {v1, p1}, Lcom/sec/android/cover/clearcover/ClearCoverPage;->onCoverEvent(Lcom/samsung/android/cover/CoverState;)V

    .line 211
    :cond_0
    if-eqz v0, :cond_1

    .line 212
    invoke-direct {p0}, Lcom/sec/android/cover/clearcover/ClearCoverView;->hideCoverUi()V

    .line 213
    invoke-virtual {p0}, Lcom/sec/android/cover/clearcover/ClearCoverView;->cancelScreenOffTimer()V

    .line 221
    :goto_0
    return-void

    .line 215
    :cond_1
    invoke-direct {p0}, Lcom/sec/android/cover/clearcover/ClearCoverView;->marqueeCoverView()V

    .line 216
    invoke-direct {p0}, Lcom/sec/android/cover/clearcover/ClearCoverView;->showCoverUi()V

    .line 217
    invoke-virtual {p0}, Lcom/sec/android/cover/clearcover/ClearCoverView;->updateContentRootViewVisibility()V

    .line 218
    invoke-virtual {p0}, Lcom/sec/android/cover/clearcover/ClearCoverView;->startScreenOffTimer()V

    .line 219
    invoke-static {}, Landroid/hardware/input/InputManager;->getInstance()Landroid/hardware/input/InputManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/hardware/input/InputManager;->coverEventFinished()V

    goto :goto_0
.end method

.method protected onDetachedFromWindow()V
    .locals 2

    .prologue
    .line 188
    invoke-super {p0}, Lcom/sec/android/cover/CoverMainFrameView;->onDetachedFromWindow()V

    .line 189
    sget-object v0, Lcom/sec/android/cover/clearcover/ClearCoverView;->TAG:Ljava/lang/String;

    const-string v1, "onDetachedFromWindow"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 191
    iget-object v0, p0, Lcom/sec/android/cover/clearcover/ClearCoverView;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/sec/android/cover/monitor/CoverUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/sec/android/cover/monitor/CoverUpdateMonitor;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/cover/clearcover/ClearCoverView;->mUpdateMonitorCallback:Lcom/sec/android/cover/monitor/CoverUpdateMonitorCallback;

    invoke-virtual {v0, v1}, Lcom/sec/android/cover/monitor/CoverUpdateMonitor;->unregisterCallback(Lcom/sec/android/cover/monitor/CoverUpdateMonitorCallback;)V

    .line 192
    return-void
.end method

.method protected onFinishInflate()V
    .locals 2

    .prologue
    .line 111
    invoke-super {p0}, Lcom/sec/android/cover/CoverMainFrameView;->onFinishInflate()V

    .line 112
    sget-object v0, Lcom/sec/android/cover/clearcover/ClearCoverView;->TAG:Ljava/lang/String;

    const-string v1, "onFinishInflate()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 113
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/sec/android/cover/clearcover/ClearCoverView;->setVisibility(I)V

    .line 115
    sget v0, Lcom/sec/android/sviewcover/R$id;->clear_cover_root:I

    invoke-virtual {p0, v0}, Lcom/sec/android/cover/clearcover/ClearCoverView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/sec/android/cover/clearcover/ClearCoverView;->mRootView:Landroid/view/ViewGroup;

    .line 116
    sget v0, Lcom/sec/android/sviewcover/R$id;->content_root_pin_window:I

    invoke-virtual {p0, v0}, Lcom/sec/android/cover/clearcover/ClearCoverView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/sec/android/cover/clearcover/ClearCoverView;->mPinWindowContentRootView:Landroid/widget/TextView;

    .line 117
    sget v0, Lcom/sec/android/sviewcover/R$id;->content_root_open_cover_window:I

    invoke-virtual {p0, v0}, Lcom/sec/android/cover/clearcover/ClearCoverView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/sec/android/cover/clearcover/ClearCoverView;->mOpenCoverWindowContentRootView:Landroid/widget/TextView;

    .line 118
    sget v0, Lcom/sec/android/sviewcover/R$id;->clear_cover_main_page:I

    invoke-virtual {p0, v0}, Lcom/sec/android/cover/clearcover/ClearCoverView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/sec/android/cover/clearcover/ClearCoverPage;

    iput-object v0, p0, Lcom/sec/android/cover/clearcover/ClearCoverView;->mClearCoverMainPage:Lcom/sec/android/cover/clearcover/ClearCoverPage;

    .line 120
    iget-object v0, p0, Lcom/sec/android/cover/clearcover/ClearCoverView;->mClearCoverMainPage:Lcom/sec/android/cover/clearcover/ClearCoverPage;

    if-eqz v0, :cond_0

    .line 121
    iget-object v0, p0, Lcom/sec/android/cover/clearcover/ClearCoverView;->mClearCoverMainPage:Lcom/sec/android/cover/clearcover/ClearCoverPage;

    invoke-virtual {v0}, Lcom/sec/android/cover/clearcover/ClearCoverPage;->getPaddingLeft()I

    move-result v0

    iput v0, p0, Lcom/sec/android/cover/clearcover/ClearCoverView;->mBasePaddingLeft:I

    .line 122
    iget-object v0, p0, Lcom/sec/android/cover/clearcover/ClearCoverView;->mClearCoverMainPage:Lcom/sec/android/cover/clearcover/ClearCoverPage;

    invoke-virtual {v0}, Lcom/sec/android/cover/clearcover/ClearCoverPage;->getPaddingTop()I

    move-result v0

    iput v0, p0, Lcom/sec/android/cover/clearcover/ClearCoverView;->mBasePaddingTop:I

    .line 123
    iget-object v0, p0, Lcom/sec/android/cover/clearcover/ClearCoverView;->mClearCoverMainPage:Lcom/sec/android/cover/clearcover/ClearCoverPage;

    invoke-virtual {v0}, Lcom/sec/android/cover/clearcover/ClearCoverPage;->getPaddingRight()I

    move-result v0

    iput v0, p0, Lcom/sec/android/cover/clearcover/ClearCoverView;->mBasePaddingRight:I

    .line 124
    iget-object v0, p0, Lcom/sec/android/cover/clearcover/ClearCoverView;->mClearCoverMainPage:Lcom/sec/android/cover/clearcover/ClearCoverPage;

    invoke-virtual {v0}, Lcom/sec/android/cover/clearcover/ClearCoverPage;->getPaddingBottom()I

    move-result v0

    iput v0, p0, Lcom/sec/android/cover/clearcover/ClearCoverView;->mBasePaddingBottom:I

    .line 126
    iget-object v0, p0, Lcom/sec/android/cover/clearcover/ClearCoverView;->mClearCoverMainPage:Lcom/sec/android/cover/clearcover/ClearCoverPage;

    iget-object v1, p0, Lcom/sec/android/cover/clearcover/ClearCoverView;->mRootView:Landroid/view/ViewGroup;

    invoke-virtual {v0, v1}, Lcom/sec/android/cover/clearcover/ClearCoverPage;->setBackgroundView(Landroid/view/View;)V

    .line 129
    :cond_0
    invoke-virtual {p0}, Lcom/sec/android/cover/clearcover/ClearCoverView;->updateContentRootViewVisibility()V

    .line 130
    return-void
.end method

.method public onWindowFocusChanged(Z)V
    .locals 3
    .param p1, "hasWindowFocus"    # Z

    .prologue
    .line 170
    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lcom/sec/android/cover/clearcover/ClearCoverView;->isCoverOpen()Z

    move-result v0

    if-nez v0, :cond_0

    .line 171
    sget-object v0, Lcom/sec/android/cover/clearcover/ClearCoverView;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "cover open, seq = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget v2, Lcom/sec/android/cover/clearcover/ClearCoverView;->mDelayedShowingSequence:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 172
    invoke-virtual {p0}, Lcom/sec/android/cover/clearcover/ClearCoverView;->cancelScreenOffTimer()V

    .line 173
    invoke-virtual {p0}, Lcom/sec/android/cover/clearcover/ClearCoverView;->startScreenOffTimer()V

    .line 175
    :cond_0
    invoke-super {p0, p1}, Lcom/sec/android/cover/CoverMainFrameView;->onWindowFocusChanged(Z)V

    .line 176
    return-void
.end method

.method public updateContentRootViewVisibility()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    const/16 v2, 0x8

    .line 270
    iget-object v0, p0, Lcom/sec/android/cover/clearcover/ClearCoverView;->mActivityManager:Landroid/app/ActivityManager;

    invoke-virtual {v0}, Landroid/app/ActivityManager;->getLockTaskModeState()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_3

    .line 271
    iget-object v0, p0, Lcom/sec/android/cover/clearcover/ClearCoverView;->mPinWindowContentRootView:Landroid/widget/TextView;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/sec/android/cover/clearcover/ClearCoverView;->mPinWindowContentRootView:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_2

    .line 272
    iget-object v0, p0, Lcom/sec/android/cover/clearcover/ClearCoverView;->mPinWindowContentRootView:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 274
    iget-object v0, p0, Lcom/sec/android/cover/clearcover/ClearCoverView;->mClearCoverMainPage:Lcom/sec/android/cover/clearcover/ClearCoverPage;

    if-eqz v0, :cond_0

    .line 275
    iget-object v0, p0, Lcom/sec/android/cover/clearcover/ClearCoverView;->mClearCoverMainPage:Lcom/sec/android/cover/clearcover/ClearCoverPage;

    invoke-virtual {v0, v2}, Lcom/sec/android/cover/clearcover/ClearCoverPage;->setVisibility(I)V

    .line 277
    :cond_0
    iget-object v0, p0, Lcom/sec/android/cover/clearcover/ClearCoverView;->mOpenCoverWindowContentRootView:Landroid/widget/TextView;

    if-eqz v0, :cond_1

    .line 278
    iget-object v0, p0, Lcom/sec/android/cover/clearcover/ClearCoverView;->mOpenCoverWindowContentRootView:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 281
    :cond_1
    invoke-virtual {p0}, Lcom/sec/android/cover/clearcover/ClearCoverView;->requestLayout()V

    .line 308
    :cond_2
    :goto_0
    return-void

    .line 283
    :cond_3
    iget-object v0, p0, Lcom/sec/android/cover/clearcover/ClearCoverView;->mActivityManager:Landroid/app/ActivityManager;

    invoke-virtual {v0}, Landroid/app/ActivityManager;->getLockTaskModeState()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_6

    .line 284
    iget-object v0, p0, Lcom/sec/android/cover/clearcover/ClearCoverView;->mOpenCoverWindowContentRootView:Landroid/widget/TextView;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/sec/android/cover/clearcover/ClearCoverView;->mOpenCoverWindowContentRootView:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_2

    .line 285
    iget-object v0, p0, Lcom/sec/android/cover/clearcover/ClearCoverView;->mOpenCoverWindowContentRootView:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 287
    iget-object v0, p0, Lcom/sec/android/cover/clearcover/ClearCoverView;->mClearCoverMainPage:Lcom/sec/android/cover/clearcover/ClearCoverPage;

    if-eqz v0, :cond_4

    .line 288
    iget-object v0, p0, Lcom/sec/android/cover/clearcover/ClearCoverView;->mClearCoverMainPage:Lcom/sec/android/cover/clearcover/ClearCoverPage;

    invoke-virtual {v0, v2}, Lcom/sec/android/cover/clearcover/ClearCoverPage;->setVisibility(I)V

    .line 290
    :cond_4
    iget-object v0, p0, Lcom/sec/android/cover/clearcover/ClearCoverView;->mPinWindowContentRootView:Landroid/widget/TextView;

    if-eqz v0, :cond_5

    .line 291
    iget-object v0, p0, Lcom/sec/android/cover/clearcover/ClearCoverView;->mPinWindowContentRootView:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 294
    :cond_5
    invoke-virtual {p0}, Lcom/sec/android/cover/clearcover/ClearCoverView;->requestLayout()V

    goto :goto_0

    .line 296
    :cond_6
    iget-object v0, p0, Lcom/sec/android/cover/clearcover/ClearCoverView;->mClearCoverMainPage:Lcom/sec/android/cover/clearcover/ClearCoverPage;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/sec/android/cover/clearcover/ClearCoverView;->mClearCoverMainPage:Lcom/sec/android/cover/clearcover/ClearCoverPage;

    invoke-virtual {v0}, Lcom/sec/android/cover/clearcover/ClearCoverPage;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_2

    .line 297
    iget-object v0, p0, Lcom/sec/android/cover/clearcover/ClearCoverView;->mClearCoverMainPage:Lcom/sec/android/cover/clearcover/ClearCoverPage;

    invoke-virtual {v0, v3}, Lcom/sec/android/cover/clearcover/ClearCoverPage;->setVisibility(I)V

    .line 299
    iget-object v0, p0, Lcom/sec/android/cover/clearcover/ClearCoverView;->mPinWindowContentRootView:Landroid/widget/TextView;

    if-eqz v0, :cond_7

    .line 300
    iget-object v0, p0, Lcom/sec/android/cover/clearcover/ClearCoverView;->mPinWindowContentRootView:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 302
    :cond_7
    iget-object v0, p0, Lcom/sec/android/cover/clearcover/ClearCoverView;->mOpenCoverWindowContentRootView:Landroid/widget/TextView;

    if-eqz v0, :cond_8

    .line 303
    iget-object v0, p0, Lcom/sec/android/cover/clearcover/ClearCoverView;->mOpenCoverWindowContentRootView:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 306
    :cond_8
    invoke-virtual {p0}, Lcom/sec/android/cover/clearcover/ClearCoverView;->requestLayout()V

    goto :goto_0
.end method
