.class public Lcom/android/keyguard/status/SecKeyguardClockSingleImageView;
.super Landroid/widget/FrameLayout;
.source "SecKeyguardClockSingleImageView.java"


# static fields
.field private static TAG:Ljava/lang/String;


# instance fields
.field private DIGITS:[I

.field private mBackground:Landroid/widget/ImageView;

.field private mColon:Landroid/widget/ImageView;

.field mContext:Landroid/content/Context;

.field private final mHandler:Landroid/os/Handler;

.field private mHour10th:Landroid/widget/ImageView;

.field private mHour1th:Landroid/widget/ImageView;

.field private mMin10th:Landroid/widget/ImageView;

.field private mMin1th:Landroid/widget/ImageView;

.field private mSingleClockContainer:Landroid/widget/LinearLayout;

.field private mSingleDate:Lcom/android/keyguard/status/KeyguardDateView;

.field private final mUpdateCallback:Lcom/android/keyguard/KeyguardUpdateMonitorCallback;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 29
    const-string v0, "SecKeyguardClockSingleImageView"

    sput-object v0, Lcom/android/keyguard/status/SecKeyguardClockSingleImageView;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 69
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/keyguard/status/SecKeyguardClockSingleImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 70
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 73
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/android/keyguard/status/SecKeyguardClockSingleImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 74
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I

    .prologue
    .line 77
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 43
    const/16 v0, 0xa

    new-array v0, v0, [I

    const/4 v1, 0x0

    sget v2, Lcom/android/keyguard/R$drawable;->clock_digit_0:I

    aput v2, v0, v1

    const/4 v1, 0x1

    sget v2, Lcom/android/keyguard/R$drawable;->clock_digit_1:I

    aput v2, v0, v1

    const/4 v1, 0x2

    sget v2, Lcom/android/keyguard/R$drawable;->clock_digit_2:I

    aput v2, v0, v1

    const/4 v1, 0x3

    sget v2, Lcom/android/keyguard/R$drawable;->clock_digit_3:I

    aput v2, v0, v1

    const/4 v1, 0x4

    sget v2, Lcom/android/keyguard/R$drawable;->clock_digit_4:I

    aput v2, v0, v1

    const/4 v1, 0x5

    sget v2, Lcom/android/keyguard/R$drawable;->clock_digit_5:I

    aput v2, v0, v1

    const/4 v1, 0x6

    sget v2, Lcom/android/keyguard/R$drawable;->clock_digit_6:I

    aput v2, v0, v1

    const/4 v1, 0x7

    sget v2, Lcom/android/keyguard/R$drawable;->clock_digit_7:I

    aput v2, v0, v1

    const/16 v1, 0x8

    sget v2, Lcom/android/keyguard/R$drawable;->clock_digit_8:I

    aput v2, v0, v1

    const/16 v1, 0x9

    sget v2, Lcom/android/keyguard/R$drawable;->clock_digit_9:I

    aput v2, v0, v1

    iput-object v0, p0, Lcom/android/keyguard/status/SecKeyguardClockSingleImageView;->DIGITS:[I

    .line 54
    new-instance v0, Lcom/android/keyguard/status/SecKeyguardClockSingleImageView$1;

    invoke-direct {v0, p0}, Lcom/android/keyguard/status/SecKeyguardClockSingleImageView$1;-><init>(Lcom/android/keyguard/status/SecKeyguardClockSingleImageView;)V

    iput-object v0, p0, Lcom/android/keyguard/status/SecKeyguardClockSingleImageView;->mHandler:Landroid/os/Handler;

    .line 119
    new-instance v0, Lcom/android/keyguard/status/SecKeyguardClockSingleImageView$2;

    invoke-direct {v0, p0}, Lcom/android/keyguard/status/SecKeyguardClockSingleImageView$2;-><init>(Lcom/android/keyguard/status/SecKeyguardClockSingleImageView;)V

    iput-object v0, p0, Lcom/android/keyguard/status/SecKeyguardClockSingleImageView;->mUpdateCallback:Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

    .line 78
    iput-object p1, p0, Lcom/android/keyguard/status/SecKeyguardClockSingleImageView;->mContext:Landroid/content/Context;

    .line 79
    return-void
.end method

.method static synthetic access$000(Lcom/android/keyguard/status/SecKeyguardClockSingleImageView;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/keyguard/status/SecKeyguardClockSingleImageView;

    .prologue
    .line 27
    invoke-direct {p0}, Lcom/android/keyguard/status/SecKeyguardClockSingleImageView;->updateClockTime()V

    return-void
.end method

.method static synthetic access$100(Lcom/android/keyguard/status/SecKeyguardClockSingleImageView;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/android/keyguard/status/SecKeyguardClockSingleImageView;
    .param p1, "x1"    # Z

    .prologue
    .line 27
    invoke-direct {p0, p1}, Lcom/android/keyguard/status/SecKeyguardClockSingleImageView;->sendMsgUpdateClock(Z)V

    return-void
.end method

.method static synthetic access$200(Lcom/android/keyguard/status/SecKeyguardClockSingleImageView;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/keyguard/status/SecKeyguardClockSingleImageView;

    .prologue
    .line 27
    invoke-direct {p0}, Lcom/android/keyguard/status/SecKeyguardClockSingleImageView;->changeTextColorOnWhiteWallpaper()V

    return-void
.end method

.method private changeTextColorOnWhiteWallpaper()V
    .locals 5

    .prologue
    .line 204
    iget-object v2, p0, Lcom/android/keyguard/status/SecKeyguardClockSingleImageView;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/android/keyguard/util/KeyguardSettingsHelper;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/util/KeyguardSettingsHelper;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/keyguard/util/KeyguardSettingsHelper;->isWhiteKeyguardWallpaper()Z

    move-result v1

    .line 205
    .local v1, "whiteBG":Z
    iget-object v2, p0, Lcom/android/keyguard/status/SecKeyguardClockSingleImageView;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/android/keyguard/util/KeyguardProperties;->isDownloadableThemeApplied(Landroid/content/Context;)Z

    move-result v0

    .line 206
    .local v0, "themeOn":Z
    iget-object v2, p0, Lcom/android/keyguard/status/SecKeyguardClockSingleImageView;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/android/keyguard/status/SecKeyguardClockSingleImageView;->mSingleDate:Lcom/android/keyguard/status/KeyguardDateView;

    sget v4, Lcom/android/keyguard/R$color;->theme_clock_date_color:I

    invoke-static {v2, v3, v0, v1, v4}, Lcom/android/keyguard/util/KeyguardStatusUtils;->changeBlackTextOnWhiteWallpaper(Landroid/content/Context;Landroid/widget/TextView;ZZI)V

    .line 208
    return-void
.end method

.method private sendMsgUpdateClock(Z)V
    .locals 2
    .param p1, "direct"    # Z

    .prologue
    const/16 v1, 0x66

    .line 137
    iget-object v0, p0, Lcom/android/keyguard/status/SecKeyguardClockSingleImageView;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 138
    iget-object v0, p0, Lcom/android/keyguard/status/SecKeyguardClockSingleImageView;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 139
    :cond_0
    if-eqz p1, :cond_1

    .line 140
    invoke-direct {p0}, Lcom/android/keyguard/status/SecKeyguardClockSingleImageView;->updateClockTime()V

    .line 143
    :goto_0
    return-void

    .line 142
    :cond_1
    iget-object v0, p0, Lcom/android/keyguard/status/SecKeyguardClockSingleImageView;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_0
.end method

.method private setDIGITSArrayImage(Landroid/widget/ImageView;I)V
    .locals 5
    .param p1, "iv"    # Landroid/widget/ImageView;
    .param p2, "index"    # I

    .prologue
    .line 191
    iget-object v2, p0, Lcom/android/keyguard/status/SecKeyguardClockSingleImageView;->DIGITS:[I

    array-length v1, v2

    .line 192
    .local v1, "maxLength":I
    if-lez p2, :cond_0

    if-ge p2, v1, :cond_0

    .line 194
    :try_start_0
    iget-object v2, p0, Lcom/android/keyguard/status/SecKeyguardClockSingleImageView;->DIGITS:[I

    aget v2, v2, p2

    invoke-virtual {p1, v2}, Landroid/widget/ImageView;->setImageResource(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 201
    :goto_0
    return-void

    .line 195
    :catch_0
    move-exception v0

    .line 196
    .local v0, "e":Ljava/lang/Exception;
    sget-object v2, Lcom/android/keyguard/status/SecKeyguardClockSingleImageView;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "index:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", e:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 199
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_0
    iget-object v2, p0, Lcom/android/keyguard/status/SecKeyguardClockSingleImageView;->DIGITS:[I

    const/4 v3, 0x0

    aget v2, v2, v3

    invoke-virtual {p1, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0
.end method

.method private setHour(ZI)V
    .locals 4
    .param p1, "is24Hour"    # Z
    .param p2, "hour"    # I

    .prologue
    const/4 v3, 0x0

    .line 170
    if-nez p2, :cond_0

    .line 171
    iget-object v1, p0, Lcom/android/keyguard/status/SecKeyguardClockSingleImageView;->mHour1th:Landroid/widget/ImageView;

    invoke-direct {p0, v1, v3}, Lcom/android/keyguard/status/SecKeyguardClockSingleImageView;->setDIGITSArrayImage(Landroid/widget/ImageView;I)V

    .line 172
    iget-object v1, p0, Lcom/android/keyguard/status/SecKeyguardClockSingleImageView;->mHour10th:Landroid/widget/ImageView;

    invoke-direct {p0, v1, v3}, Lcom/android/keyguard/status/SecKeyguardClockSingleImageView;->setDIGITSArrayImage(Landroid/widget/ImageView;I)V

    .line 183
    :goto_0
    return-void

    .line 175
    :cond_0
    iget-object v1, p0, Lcom/android/keyguard/status/SecKeyguardClockSingleImageView;->mHour1th:Landroid/widget/ImageView;

    rem-int/lit8 v2, p2, 0xa

    invoke-direct {p0, v1, v2}, Lcom/android/keyguard/status/SecKeyguardClockSingleImageView;->setDIGITSArrayImage(Landroid/widget/ImageView;I)V

    .line 176
    div-int/lit8 v0, p2, 0xa

    .line 177
    .local v0, "hour_tenth":I
    if-nez p1, :cond_1

    if-eqz v0, :cond_2

    .line 178
    :cond_1
    iget-object v1, p0, Lcom/android/keyguard/status/SecKeyguardClockSingleImageView;->mHour10th:Landroid/widget/ImageView;

    invoke-direct {p0, v1, v0}, Lcom/android/keyguard/status/SecKeyguardClockSingleImageView;->setDIGITSArrayImage(Landroid/widget/ImageView;I)V

    .line 179
    iget-object v1, p0, Lcom/android/keyguard/status/SecKeyguardClockSingleImageView;->mHour10th:Landroid/widget/ImageView;

    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0

    .line 181
    :cond_2
    iget-object v1, p0, Lcom/android/keyguard/status/SecKeyguardClockSingleImageView;->mHour10th:Landroid/widget/ImageView;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0
.end method

.method private setMin(I)V
    .locals 2
    .param p1, "min"    # I

    .prologue
    .line 186
    iget-object v0, p0, Lcom/android/keyguard/status/SecKeyguardClockSingleImageView;->mMin1th:Landroid/widget/ImageView;

    rem-int/lit8 v1, p1, 0xa

    invoke-direct {p0, v0, v1}, Lcom/android/keyguard/status/SecKeyguardClockSingleImageView;->setDIGITSArrayImage(Landroid/widget/ImageView;I)V

    .line 187
    iget-object v0, p0, Lcom/android/keyguard/status/SecKeyguardClockSingleImageView;->mMin10th:Landroid/widget/ImageView;

    div-int/lit8 v1, p1, 0xa

    invoke-direct {p0, v0, v1}, Lcom/android/keyguard/status/SecKeyguardClockSingleImageView;->setDIGITSArrayImage(Landroid/widget/ImageView;I)V

    .line 188
    return-void
.end method

.method private updateClockTime()V
    .locals 9

    .prologue
    const/16 v8, 0xc

    .line 146
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 148
    .local v0, "c":Ljava/util/Calendar;
    invoke-virtual {v0, v8}, Ljava/util/Calendar;->get(I)I

    move-result v4

    .line 149
    .local v4, "minutes":I
    const/16 v5, 0xa

    invoke-virtual {v0, v5}, Ljava/util/Calendar;->get(I)I

    move-result v1

    .line 150
    .local v1, "hour":I
    const/16 v5, 0xb

    invoke-virtual {v0, v5}, Ljava/util/Calendar;->get(I)I

    move-result v2

    .line 152
    .local v2, "hour_day":I
    sget-object v5, Lcom/android/keyguard/status/SecKeyguardClockSingleImageView;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "min:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", hour:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", hour_day:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 156
    invoke-virtual {p0}, Lcom/android/keyguard/status/SecKeyguardClockSingleImageView;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v6

    invoke-static {v5, v6}, Landroid/text/format/DateFormat;->is24HourFormat(Landroid/content/Context;I)Z

    move-result v3

    .line 157
    .local v3, "is24Hour":Z
    if-eqz v3, :cond_0

    .line 158
    invoke-direct {p0, v3, v2}, Lcom/android/keyguard/status/SecKeyguardClockSingleImageView;->setHour(ZI)V

    .line 166
    :goto_0
    invoke-direct {p0, v4}, Lcom/android/keyguard/status/SecKeyguardClockSingleImageView;->setMin(I)V

    .line 167
    return-void

    .line 160
    :cond_0
    if-nez v1, :cond_1

    .line 161
    invoke-direct {p0, v3, v8}, Lcom/android/keyguard/status/SecKeyguardClockSingleImageView;->setHour(ZI)V

    goto :goto_0

    .line 163
    :cond_1
    invoke-direct {p0, v3, v1}, Lcom/android/keyguard/status/SecKeyguardClockSingleImageView;->setHour(ZI)V

    goto :goto_0
.end method


# virtual methods
.method protected onAttachedToWindow()V
    .locals 2

    .prologue
    .line 104
    invoke-super {p0}, Landroid/widget/FrameLayout;->onAttachedToWindow()V

    .line 105
    iget-object v0, p0, Lcom/android/keyguard/status/SecKeyguardClockSingleImageView;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object v0

    iget-object v1, p0, Lcom/android/keyguard/status/SecKeyguardClockSingleImageView;->mUpdateCallback:Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

    invoke-virtual {v0, v1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->registerCallback(Lcom/android/keyguard/KeyguardUpdateMonitorCallback;)V

    .line 106
    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 2

    .prologue
    .line 110
    invoke-super {p0}, Landroid/widget/FrameLayout;->onDetachedFromWindow()V

    .line 111
    iget-object v0, p0, Lcom/android/keyguard/status/SecKeyguardClockSingleImageView;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object v0

    iget-object v1, p0, Lcom/android/keyguard/status/SecKeyguardClockSingleImageView;->mUpdateCallback:Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

    invoke-virtual {v0, v1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->removeCallback(Lcom/android/keyguard/KeyguardUpdateMonitorCallback;)V

    .line 112
    return-void
.end method

.method protected onFinishInflate()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 83
    invoke-super {p0}, Landroid/widget/FrameLayout;->onFinishInflate()V

    .line 84
    sget v0, Lcom/android/keyguard/R$id;->single_clock_time_image_container:I

    invoke-virtual {p0, v0}, Lcom/android/keyguard/status/SecKeyguardClockSingleImageView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/android/keyguard/status/SecKeyguardClockSingleImageView;->mSingleClockContainer:Landroid/widget/LinearLayout;

    .line 85
    sget v0, Lcom/android/keyguard/R$id;->hour_10th:I

    invoke-virtual {p0, v0}, Lcom/android/keyguard/status/SecKeyguardClockSingleImageView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/keyguard/status/SecKeyguardClockSingleImageView;->mHour10th:Landroid/widget/ImageView;

    .line 86
    sget v0, Lcom/android/keyguard/R$id;->hour_1th:I

    invoke-virtual {p0, v0}, Lcom/android/keyguard/status/SecKeyguardClockSingleImageView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/keyguard/status/SecKeyguardClockSingleImageView;->mHour1th:Landroid/widget/ImageView;

    .line 87
    sget v0, Lcom/android/keyguard/R$id;->minute_10th:I

    invoke-virtual {p0, v0}, Lcom/android/keyguard/status/SecKeyguardClockSingleImageView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/keyguard/status/SecKeyguardClockSingleImageView;->mMin10th:Landroid/widget/ImageView;

    .line 88
    sget v0, Lcom/android/keyguard/R$id;->minute_1th:I

    invoke-virtual {p0, v0}, Lcom/android/keyguard/status/SecKeyguardClockSingleImageView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/keyguard/status/SecKeyguardClockSingleImageView;->mMin1th:Landroid/widget/ImageView;

    .line 89
    sget v0, Lcom/android/keyguard/R$id;->keyguard_sec_clock_single_background:I

    invoke-virtual {p0, v0}, Lcom/android/keyguard/status/SecKeyguardClockSingleImageView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/keyguard/status/SecKeyguardClockSingleImageView;->mBackground:Landroid/widget/ImageView;

    .line 90
    sget v0, Lcom/android/keyguard/R$id;->keyguard_single_clock_date:I

    invoke-virtual {p0, v0}, Lcom/android/keyguard/status/SecKeyguardClockSingleImageView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/keyguard/status/KeyguardDateView;

    iput-object v0, p0, Lcom/android/keyguard/status/SecKeyguardClockSingleImageView;->mSingleDate:Lcom/android/keyguard/status/KeyguardDateView;

    .line 91
    sget v0, Lcom/android/keyguard/R$id;->split_hour_time:I

    invoke-virtual {p0, v0}, Lcom/android/keyguard/status/SecKeyguardClockSingleImageView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/keyguard/status/SecKeyguardClockSingleImageView;->mColon:Landroid/widget/ImageView;

    .line 92
    iget-object v0, p0, Lcom/android/keyguard/status/SecKeyguardClockSingleImageView;->mColon:Landroid/widget/ImageView;

    sget v1, Lcom/android/keyguard/R$drawable;->clock_colon:I

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 94
    const-string v0, "iw"

    iget-object v1, p0, Lcom/android/keyguard/status/SecKeyguardClockSingleImageView;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/android/keyguard/util/KeyguardStatusUtils;->getCurrentLocale(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "ur"

    iget-object v1, p0, Lcom/android/keyguard/status/SecKeyguardClockSingleImageView;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/android/keyguard/util/KeyguardStatusUtils;->getCurrentLocale(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 96
    :cond_0
    iget-object v0, p0, Lcom/android/keyguard/status/SecKeyguardClockSingleImageView;->mSingleClockContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setLayoutDirection(I)V

    .line 98
    :cond_1
    invoke-direct {p0, v2}, Lcom/android/keyguard/status/SecKeyguardClockSingleImageView;->sendMsgUpdateClock(Z)V

    .line 99
    invoke-direct {p0}, Lcom/android/keyguard/status/SecKeyguardClockSingleImageView;->changeTextColorOnWhiteWallpaper()V

    .line 100
    return-void
.end method

.method public setBackground(Landroid/graphics/drawable/Drawable;)V
    .locals 1
    .param p1, "background"    # Landroid/graphics/drawable/Drawable;

    .prologue
    .line 116
    iget-object v0, p0, Lcom/android/keyguard/status/SecKeyguardClockSingleImageView;->mBackground:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 117
    return-void
.end method
