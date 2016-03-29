.class public Lcom/android/keyguard/status/SecKeyguardClockSingleView;
.super Landroid/widget/FrameLayout;
.source "SecKeyguardClockSingleView.java"


# instance fields
.field private mBackground:Landroid/widget/ImageView;

.field private mClockTypeface:Landroid/graphics/Typeface;

.field private final mHandler:Landroid/os/Handler;

.field private mSingleDate:Lcom/android/keyguard/status/KeyguardDateView;

.field private mSingleTime:Landroid/widget/TextClock;

.field private final mUpdateCallback:Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

.field private mUseBlackTextOnWhiteCoverWallpaper:Z

.field private mUseBlackTextOnWhiteWallpaper:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 75
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/keyguard/status/SecKeyguardClockSingleView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 76
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 79
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/android/keyguard/status/SecKeyguardClockSingleView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 80
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I

    .prologue
    const/4 v0, 0x0

    .line 83
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 32
    iput-boolean v0, p0, Lcom/android/keyguard/status/SecKeyguardClockSingleView;->mUseBlackTextOnWhiteWallpaper:Z

    .line 33
    iput-boolean v0, p0, Lcom/android/keyguard/status/SecKeyguardClockSingleView;->mUseBlackTextOnWhiteCoverWallpaper:Z

    .line 39
    new-instance v0, Lcom/android/keyguard/status/SecKeyguardClockSingleView$1;

    invoke-direct {v0, p0}, Lcom/android/keyguard/status/SecKeyguardClockSingleView$1;-><init>(Lcom/android/keyguard/status/SecKeyguardClockSingleView;)V

    iput-object v0, p0, Lcom/android/keyguard/status/SecKeyguardClockSingleView;->mHandler:Landroid/os/Handler;

    .line 53
    new-instance v0, Lcom/android/keyguard/status/SecKeyguardClockSingleView$2;

    invoke-direct {v0, p0}, Lcom/android/keyguard/status/SecKeyguardClockSingleView$2;-><init>(Lcom/android/keyguard/status/SecKeyguardClockSingleView;)V

    iput-object v0, p0, Lcom/android/keyguard/status/SecKeyguardClockSingleView;->mUpdateCallback:Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

    .line 84
    return-void
.end method

.method static synthetic access$000(Lcom/android/keyguard/status/SecKeyguardClockSingleView;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/keyguard/status/SecKeyguardClockSingleView;

    .prologue
    .line 24
    invoke-direct {p0}, Lcom/android/keyguard/status/SecKeyguardClockSingleView;->setClockStyle()V

    return-void
.end method

.method static synthetic access$100(Lcom/android/keyguard/status/SecKeyguardClockSingleView;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/android/keyguard/status/SecKeyguardClockSingleView;
    .param p1, "x1"    # Z

    .prologue
    .line 24
    invoke-direct {p0, p1}, Lcom/android/keyguard/status/SecKeyguardClockSingleView;->sendMsgUpdateClock(Z)V

    return-void
.end method

.method static synthetic access$202(Lcom/android/keyguard/status/SecKeyguardClockSingleView;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/keyguard/status/SecKeyguardClockSingleView;
    .param p1, "x1"    # Z

    .prologue
    .line 24
    iput-boolean p1, p0, Lcom/android/keyguard/status/SecKeyguardClockSingleView;->mUseBlackTextOnWhiteWallpaper:Z

    return p1
.end method

.method static synthetic access$300(Lcom/android/keyguard/status/SecKeyguardClockSingleView;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/android/keyguard/status/SecKeyguardClockSingleView;

    .prologue
    .line 24
    iget-object v0, p0, Lcom/android/keyguard/status/SecKeyguardClockSingleView;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$402(Lcom/android/keyguard/status/SecKeyguardClockSingleView;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/keyguard/status/SecKeyguardClockSingleView;
    .param p1, "x1"    # Z

    .prologue
    .line 24
    iput-boolean p1, p0, Lcom/android/keyguard/status/SecKeyguardClockSingleView;->mUseBlackTextOnWhiteCoverWallpaper:Z

    return p1
.end method

.method static synthetic access$500(Lcom/android/keyguard/status/SecKeyguardClockSingleView;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/android/keyguard/status/SecKeyguardClockSingleView;

    .prologue
    .line 24
    iget-object v0, p0, Lcom/android/keyguard/status/SecKeyguardClockSingleView;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$600(Lcom/android/keyguard/status/SecKeyguardClockSingleView;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/keyguard/status/SecKeyguardClockSingleView;

    .prologue
    .line 24
    invoke-direct {p0}, Lcom/android/keyguard/status/SecKeyguardClockSingleView;->changeTextColorOnWhiteWallpaper()V

    return-void
.end method

.method private applyFontEffect()V
    .locals 4

    .prologue
    .line 126
    iget-object v1, p0, Lcom/android/keyguard/status/SecKeyguardClockSingleView;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/android/keyguard/R$string;->theme_clockfont_effect_type:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 127
    .local v0, "effect":Ljava/lang/String;
    const-string v1, ""

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 128
    const-string v1, "SecKeyguardClockSingleView"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "font effect info: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 129
    iget-object v1, p0, Lcom/android/keyguard/status/SecKeyguardClockSingleView;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/android/keyguard/util/FontEffectUtil;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/util/FontEffectUtil;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/android/keyguard/util/FontEffectUtil;->parsingFontEffectString(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 130
    iget-object v1, p0, Lcom/android/keyguard/status/SecKeyguardClockSingleView;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/android/keyguard/util/FontEffectUtil;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/util/FontEffectUtil;

    move-result-object v1

    iget-object v2, p0, Lcom/android/keyguard/status/SecKeyguardClockSingleView;->mSingleTime:Landroid/widget/TextClock;

    invoke-virtual {v1, v2}, Lcom/android/keyguard/util/FontEffectUtil;->setTextFontEffect(Landroid/widget/TextView;)V

    .line 136
    :cond_0
    :goto_0
    return-void

    .line 133
    :cond_1
    const-string v1, "SecKeyguardClockSingleView"

    const-string v2, "font effect info: null"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private changeTextColorOnWhiteWallpaper()V
    .locals 5

    .prologue
    .line 166
    invoke-static {}, Lcom/android/keyguard/util/KeyguardStatusUtils;->isCovered()Z

    move-result v2

    if-nez v2, :cond_0

    iget-boolean v2, p0, Lcom/android/keyguard/status/SecKeyguardClockSingleView;->mUseBlackTextOnWhiteWallpaper:Z

    if-nez v2, :cond_1

    :cond_0
    invoke-static {}, Lcom/android/keyguard/util/KeyguardStatusUtils;->isCovered()Z

    move-result v2

    if-eqz v2, :cond_2

    iget-boolean v2, p0, Lcom/android/keyguard/status/SecKeyguardClockSingleView;->mUseBlackTextOnWhiteCoverWallpaper:Z

    if-eqz v2, :cond_2

    :cond_1
    const/4 v1, 0x1

    .line 168
    .local v1, "whiteBG":Z
    :goto_0
    iget-object v2, p0, Lcom/android/keyguard/status/SecKeyguardClockSingleView;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/android/keyguard/util/KeyguardProperties;->isDownloadableThemeApplied(Landroid/content/Context;)Z

    move-result v0

    .line 170
    .local v0, "themeOn":Z
    iget-object v2, p0, Lcom/android/keyguard/status/SecKeyguardClockSingleView;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/android/keyguard/status/SecKeyguardClockSingleView;->mSingleTime:Landroid/widget/TextClock;

    sget v4, Lcom/android/keyguard/R$color;->theme_textclock_color:I

    invoke-static {v2, v3, v0, v1, v4}, Lcom/android/keyguard/util/KeyguardStatusUtils;->changeBlackTextOnWhiteWallpaper(Landroid/content/Context;Landroid/widget/TextView;ZZI)V

    .line 172
    iget-object v2, p0, Lcom/android/keyguard/status/SecKeyguardClockSingleView;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/android/keyguard/status/SecKeyguardClockSingleView;->mSingleDate:Lcom/android/keyguard/status/KeyguardDateView;

    sget v4, Lcom/android/keyguard/R$color;->theme_clock_date_color:I

    invoke-static {v2, v3, v0, v1, v4}, Lcom/android/keyguard/util/KeyguardStatusUtils;->changeBlackTextOnWhiteWallpaper(Landroid/content/Context;Landroid/widget/TextView;ZZI)V

    .line 174
    return-void

    .line 166
    .end local v0    # "themeOn":Z
    .end local v1    # "whiteBG":Z
    :cond_2
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private sendMsgUpdateClock(Z)V
    .locals 2
    .param p1, "direct"    # Z

    .prologue
    const/16 v1, 0x67

    .line 139
    iget-object v0, p0, Lcom/android/keyguard/status/SecKeyguardClockSingleView;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 140
    iget-object v0, p0, Lcom/android/keyguard/status/SecKeyguardClockSingleView;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 141
    :cond_0
    if-eqz p1, :cond_1

    .line 142
    invoke-direct {p0}, Lcom/android/keyguard/status/SecKeyguardClockSingleView;->setClockStyle()V

    .line 145
    :goto_0
    return-void

    .line 144
    :cond_1
    iget-object v0, p0, Lcom/android/keyguard/status/SecKeyguardClockSingleView;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_0
.end method

.method private setClockStyle()V
    .locals 5

    .prologue
    .line 149
    iget-object v2, p0, Lcom/android/keyguard/status/SecKeyguardClockSingleView;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/android/keyguard/util/KeyguardSettingsHelper;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/util/KeyguardSettingsHelper;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/keyguard/util/KeyguardSettingsHelper;->getOpenThemeClockFont()Ljava/lang/String;

    move-result-object v1

    .line 150
    .local v1, "themeFont":Ljava/lang/String;
    const/4 v0, 0x0

    .line 151
    .local v0, "tf":Landroid/graphics/Typeface;
    if-eqz v1, :cond_1

    .line 152
    const-string v2, "SecKeyguardClockSingleView"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "clockThemeFont: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 153
    invoke-static {v1}, Lcom/android/keyguard/util/KeyguardStatusUtils;->getFontTypeface(Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v0

    .line 158
    :goto_0
    if-eqz v0, :cond_0

    .line 159
    iget-object v2, p0, Lcom/android/keyguard/status/SecKeyguardClockSingleView;->mSingleTime:Landroid/widget/TextClock;

    invoke-virtual {v2, v0}, Landroid/widget/TextClock;->setTypeface(Landroid/graphics/Typeface;)V

    .line 162
    :cond_0
    invoke-direct {p0}, Lcom/android/keyguard/status/SecKeyguardClockSingleView;->changeTextColorOnWhiteWallpaper()V

    .line 163
    return-void

    .line 155
    :cond_1
    iget-object v0, p0, Lcom/android/keyguard/status/SecKeyguardClockSingleView;->mClockTypeface:Landroid/graphics/Typeface;

    goto :goto_0
.end method


# virtual methods
.method protected onAttachedToWindow()V
    .locals 2

    .prologue
    .line 109
    invoke-super {p0}, Landroid/widget/FrameLayout;->onAttachedToWindow()V

    .line 110
    iget-object v0, p0, Lcom/android/keyguard/status/SecKeyguardClockSingleView;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object v0

    iget-object v1, p0, Lcom/android/keyguard/status/SecKeyguardClockSingleView;->mUpdateCallback:Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

    invoke-virtual {v0, v1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->registerCallback(Lcom/android/keyguard/KeyguardUpdateMonitorCallback;)V

    .line 111
    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 2

    .prologue
    .line 115
    iget-object v0, p0, Lcom/android/keyguard/status/SecKeyguardClockSingleView;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object v0

    iget-object v1, p0, Lcom/android/keyguard/status/SecKeyguardClockSingleView;->mUpdateCallback:Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

    invoke-virtual {v0, v1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->removeCallback(Lcom/android/keyguard/KeyguardUpdateMonitorCallback;)V

    .line 116
    invoke-super {p0}, Landroid/widget/FrameLayout;->onDetachedFromWindow()V

    .line 117
    return-void
.end method

.method protected onFinishInflate()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 88
    sget v0, Lcom/android/keyguard/R$id;->keyguard_single_clock_time:I

    invoke-virtual {p0, v0}, Lcom/android/keyguard/status/SecKeyguardClockSingleView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextClock;

    iput-object v0, p0, Lcom/android/keyguard/status/SecKeyguardClockSingleView;->mSingleTime:Landroid/widget/TextClock;

    .line 89
    sget v0, Lcom/android/keyguard/R$id;->keyguard_single_clock_date:I

    invoke-virtual {p0, v0}, Lcom/android/keyguard/status/SecKeyguardClockSingleView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/keyguard/status/KeyguardDateView;

    iput-object v0, p0, Lcom/android/keyguard/status/SecKeyguardClockSingleView;->mSingleDate:Lcom/android/keyguard/status/KeyguardDateView;

    .line 90
    sget v0, Lcom/android/keyguard/R$id;->keyguard_sec_clock_single_background:I

    invoke-virtual {p0, v0}, Lcom/android/keyguard/status/SecKeyguardClockSingleView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/keyguard/status/SecKeyguardClockSingleView;->mBackground:Landroid/widget/ImageView;

    .line 91
    const-string v0, "/system/fonts/Clock2016.ttf"

    invoke-static {v0}, Lcom/android/keyguard/util/KeyguardStatusUtils;->getFontTypeface(Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v0

    iput-object v0, p0, Lcom/android/keyguard/status/SecKeyguardClockSingleView;->mClockTypeface:Landroid/graphics/Typeface;

    .line 93
    iget-object v0, p0, Lcom/android/keyguard/status/SecKeyguardClockSingleView;->mSingleTime:Landroid/widget/TextClock;

    invoke-virtual {v0, v2}, Landroid/widget/TextClock;->setShowCurrentUserTime(Z)V

    .line 94
    iget-object v0, p0, Lcom/android/keyguard/status/SecKeyguardClockSingleView;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/keyguard/util/KeyguardSettingsHelper;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/util/KeyguardSettingsHelper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/keyguard/util/KeyguardSettingsHelper;->isWhiteKeyguardWallpaper()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/keyguard/status/SecKeyguardClockSingleView;->mUseBlackTextOnWhiteWallpaper:Z

    .line 95
    iget-object v0, p0, Lcom/android/keyguard/status/SecKeyguardClockSingleView;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/keyguard/util/KeyguardSettingsHelper;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/util/KeyguardSettingsHelper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/keyguard/util/KeyguardSettingsHelper;->isWhiteCoverWallpaper()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/keyguard/status/SecKeyguardClockSingleView;->mUseBlackTextOnWhiteCoverWallpaper:Z

    .line 97
    invoke-direct {p0}, Lcom/android/keyguard/status/SecKeyguardClockSingleView;->applyFontEffect()V

    .line 100
    const-string v0, "iw"

    iget-object v1, p0, Lcom/android/keyguard/status/SecKeyguardClockSingleView;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/android/keyguard/util/KeyguardStatusUtils;->getCurrentLocale(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 101
    iget-object v0, p0, Lcom/android/keyguard/status/SecKeyguardClockSingleView;->mSingleTime:Landroid/widget/TextClock;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextClock;->setLayoutDirection(I)V

    .line 104
    :cond_0
    invoke-direct {p0, v2}, Lcom/android/keyguard/status/SecKeyguardClockSingleView;->sendMsgUpdateClock(Z)V

    .line 105
    return-void
.end method

.method public setBackground(Landroid/graphics/drawable/Drawable;)V
    .locals 1
    .param p1, "background"    # Landroid/graphics/drawable/Drawable;

    .prologue
    .line 121
    iget-object v0, p0, Lcom/android/keyguard/status/SecKeyguardClockSingleView;->mBackground:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 122
    return-void
.end method
