.class public Lcom/android/keyguard/status/SecKeyguardClockDualImageView;
.super Landroid/widget/LinearLayout;
.source "SecKeyguardClockDualImageView.java"


# instance fields
.field private DIGITS:[I

.field private HOME_ZONE:I

.field private ROAMING_ZONE:I

.field private mAmpmOpenTypeface:Landroid/graphics/Typeface;

.field private mDualClockHomeContainer:Landroid/view/View;

.field private mDualClockRoamingContainer:Landroid/view/View;

.field private mDualHomeAmpm:Landroid/widget/TextClock;

.field private mDualHomeDate:Lcom/android/keyguard/status/KeyguardDateView;

.field private mDualHomeLocale:Landroid/widget/TextView;

.field private mDualRoamingAmpm:Landroid/widget/TextClock;

.field private mDualRoamingDate:Lcom/android/keyguard/status/KeyguardDateView;

.field private mDualRoamingLocale:Landroid/widget/TextView;

.field private final mHandler:Landroid/os/Handler;

.field private mHour10th_home:Landroid/widget/ImageView;

.field private mHour10th_roam:Landroid/widget/ImageView;

.field private mHour1th_home:Landroid/widget/ImageView;

.field private mHour1th_roam:Landroid/widget/ImageView;

.field private mLocale:Ljava/util/Locale;

.field private mMin10th_home:Landroid/widget/ImageView;

.field private mMin10th_roam:Landroid/widget/ImageView;

.field private mMin1th_home:Landroid/widget/ImageView;

.field private mMin1th_roam:Landroid/widget/ImageView;

.field private final mUpdateCallback:Lcom/android/keyguard/KeyguardUpdateMonitorCallback;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 114
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/keyguard/status/SecKeyguardClockDualImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 115
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 118
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/android/keyguard/status/SecKeyguardClockDualImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 119
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    .line 122
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 61
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/keyguard/status/SecKeyguardClockDualImageView;->mLocale:Ljava/util/Locale;

    .line 63
    const/16 v0, 0xa

    new-array v0, v0, [I

    const/4 v1, 0x0

    sget v2, Lcom/android/keyguard/R$drawable;->clock_digit_0:I

    aput v2, v0, v1

    sget v1, Lcom/android/keyguard/R$drawable;->clock_digit_1:I

    aput v1, v0, v3

    sget v1, Lcom/android/keyguard/R$drawable;->clock_digit_2:I

    aput v1, v0, v4

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

    iput-object v0, p0, Lcom/android/keyguard/status/SecKeyguardClockDualImageView;->DIGITS:[I

    .line 69
    iput v3, p0, Lcom/android/keyguard/status/SecKeyguardClockDualImageView;->HOME_ZONE:I

    .line 70
    iput v4, p0, Lcom/android/keyguard/status/SecKeyguardClockDualImageView;->ROAMING_ZONE:I

    .line 72
    new-instance v0, Lcom/android/keyguard/status/SecKeyguardClockDualImageView$1;

    invoke-direct {v0, p0}, Lcom/android/keyguard/status/SecKeyguardClockDualImageView$1;-><init>(Lcom/android/keyguard/status/SecKeyguardClockDualImageView;)V

    iput-object v0, p0, Lcom/android/keyguard/status/SecKeyguardClockDualImageView;->mHandler:Landroid/os/Handler;

    .line 96
    new-instance v0, Lcom/android/keyguard/status/SecKeyguardClockDualImageView$2;

    invoke-direct {v0, p0}, Lcom/android/keyguard/status/SecKeyguardClockDualImageView$2;-><init>(Lcom/android/keyguard/status/SecKeyguardClockDualImageView;)V

    iput-object v0, p0, Lcom/android/keyguard/status/SecKeyguardClockDualImageView;->mUpdateCallback:Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

    .line 123
    return-void
.end method

.method static synthetic access$000(Lcom/android/keyguard/status/SecKeyguardClockDualImageView;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/keyguard/status/SecKeyguardClockDualImageView;

    .prologue
    .line 32
    invoke-direct {p0}, Lcom/android/keyguard/status/SecKeyguardClockDualImageView;->setClockStyle()V

    return-void
.end method

.method static synthetic access$100(Lcom/android/keyguard/status/SecKeyguardClockDualImageView;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/keyguard/status/SecKeyguardClockDualImageView;

    .prologue
    .line 32
    invoke-direct {p0}, Lcom/android/keyguard/status/SecKeyguardClockDualImageView;->updateClock()V

    return-void
.end method

.method static synthetic access$200(Lcom/android/keyguard/status/SecKeyguardClockDualImageView;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/android/keyguard/status/SecKeyguardClockDualImageView;
    .param p1, "x1"    # Z

    .prologue
    .line 32
    invoke-direct {p0, p1}, Lcom/android/keyguard/status/SecKeyguardClockDualImageView;->sendMsgUpdateClock(Z)V

    return-void
.end method

.method static synthetic access$300(Lcom/android/keyguard/status/SecKeyguardClockDualImageView;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/keyguard/status/SecKeyguardClockDualImageView;

    .prologue
    .line 32
    invoke-direct {p0}, Lcom/android/keyguard/status/SecKeyguardClockDualImageView;->changeTextColorOnWhiteWallpaper()V

    return-void
.end method

.method private changeTextColorOnWhiteWallpaper()V
    .locals 5

    .prologue
    .line 348
    iget-object v2, p0, Lcom/android/keyguard/status/SecKeyguardClockDualImageView;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/android/keyguard/util/KeyguardProperties;->isDownloadableThemeApplied(Landroid/content/Context;)Z

    move-result v0

    .line 349
    .local v0, "themeOn":Z
    iget-object v2, p0, Lcom/android/keyguard/status/SecKeyguardClockDualImageView;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/android/keyguard/util/KeyguardSettingsHelper;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/util/KeyguardSettingsHelper;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/keyguard/util/KeyguardSettingsHelper;->isWhiteKeyguardWallpaper()Z

    move-result v1

    .line 350
    .local v1, "whiteBG":Z
    iget-object v2, p0, Lcom/android/keyguard/status/SecKeyguardClockDualImageView;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/android/keyguard/status/SecKeyguardClockDualImageView;->mDualHomeAmpm:Landroid/widget/TextClock;

    sget v4, Lcom/android/keyguard/R$color;->theme_clock_date_color:I

    invoke-static {v2, v3, v0, v1, v4}, Lcom/android/keyguard/util/KeyguardStatusUtils;->changeBlackTextOnWhiteWallpaper(Landroid/content/Context;Landroid/widget/TextView;ZZI)V

    .line 352
    iget-object v2, p0, Lcom/android/keyguard/status/SecKeyguardClockDualImageView;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/android/keyguard/status/SecKeyguardClockDualImageView;->mDualRoamingAmpm:Landroid/widget/TextClock;

    sget v4, Lcom/android/keyguard/R$color;->theme_clock_date_color:I

    invoke-static {v2, v3, v0, v1, v4}, Lcom/android/keyguard/util/KeyguardStatusUtils;->changeBlackTextOnWhiteWallpaper(Landroid/content/Context;Landroid/widget/TextView;ZZI)V

    .line 354
    iget-object v2, p0, Lcom/android/keyguard/status/SecKeyguardClockDualImageView;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/android/keyguard/status/SecKeyguardClockDualImageView;->mDualHomeDate:Lcom/android/keyguard/status/KeyguardDateView;

    sget v4, Lcom/android/keyguard/R$color;->theme_clock_date_color:I

    invoke-static {v2, v3, v0, v1, v4}, Lcom/android/keyguard/util/KeyguardStatusUtils;->changeBlackTextOnWhiteWallpaper(Landroid/content/Context;Landroid/widget/TextView;ZZI)V

    .line 356
    iget-object v2, p0, Lcom/android/keyguard/status/SecKeyguardClockDualImageView;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/android/keyguard/status/SecKeyguardClockDualImageView;->mDualRoamingDate:Lcom/android/keyguard/status/KeyguardDateView;

    sget v4, Lcom/android/keyguard/R$color;->theme_clock_date_color:I

    invoke-static {v2, v3, v0, v1, v4}, Lcom/android/keyguard/util/KeyguardStatusUtils;->changeBlackTextOnWhiteWallpaper(Landroid/content/Context;Landroid/widget/TextView;ZZI)V

    .line 358
    iget-object v2, p0, Lcom/android/keyguard/status/SecKeyguardClockDualImageView;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/android/keyguard/status/SecKeyguardClockDualImageView;->mDualHomeLocale:Landroid/widget/TextView;

    sget v4, Lcom/android/keyguard/R$color;->theme_clock_date_color:I

    invoke-static {v2, v3, v0, v1, v4}, Lcom/android/keyguard/util/KeyguardStatusUtils;->changeBlackTextOnWhiteWallpaper(Landroid/content/Context;Landroid/widget/TextView;ZZI)V

    .line 360
    iget-object v2, p0, Lcom/android/keyguard/status/SecKeyguardClockDualImageView;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/android/keyguard/status/SecKeyguardClockDualImageView;->mDualRoamingLocale:Landroid/widget/TextView;

    sget v4, Lcom/android/keyguard/R$color;->theme_clock_date_color:I

    invoke-static {v2, v3, v0, v1, v4}, Lcom/android/keyguard/util/KeyguardStatusUtils;->changeBlackTextOnWhiteWallpaper(Landroid/content/Context;Landroid/widget/TextView;ZZI)V

    .line 362
    return-void
.end method

.method private sendMsgUpdateClock(Z)V
    .locals 2
    .param p1, "direct"    # Z

    .prologue
    const/16 v1, 0x67

    .line 171
    iget-object v0, p0, Lcom/android/keyguard/status/SecKeyguardClockDualImageView;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 172
    iget-object v0, p0, Lcom/android/keyguard/status/SecKeyguardClockDualImageView;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 173
    :cond_0
    if-eqz p1, :cond_1

    .line 174
    invoke-direct {p0}, Lcom/android/keyguard/status/SecKeyguardClockDualImageView;->setClockStyle()V

    .line 177
    :goto_0
    return-void

    .line 176
    :cond_1
    iget-object v0, p0, Lcom/android/keyguard/status/SecKeyguardClockDualImageView;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_0
.end method

.method private setClockStyle()V
    .locals 7

    .prologue
    const/16 v6, 0x8

    const/4 v5, 0x0

    .line 181
    const-string v3, "SecKeyguardClockDualImageView"

    const-string v4, "setClockStyle()"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 182
    iget-object v3, p0, Lcom/android/keyguard/status/SecKeyguardClockDualImageView;->mAmpmOpenTypeface:Landroid/graphics/Typeface;

    if-eqz v3, :cond_0

    .line 183
    iget-object v3, p0, Lcom/android/keyguard/status/SecKeyguardClockDualImageView;->mDualRoamingAmpm:Landroid/widget/TextClock;

    iget-object v4, p0, Lcom/android/keyguard/status/SecKeyguardClockDualImageView;->mAmpmOpenTypeface:Landroid/graphics/Typeface;

    invoke-virtual {v3, v4}, Landroid/widget/TextClock;->setTypeface(Landroid/graphics/Typeface;)V

    .line 184
    iget-object v3, p0, Lcom/android/keyguard/status/SecKeyguardClockDualImageView;->mDualHomeAmpm:Landroid/widget/TextClock;

    iget-object v4, p0, Lcom/android/keyguard/status/SecKeyguardClockDualImageView;->mAmpmOpenTypeface:Landroid/graphics/Typeface;

    invoke-virtual {v3, v4}, Landroid/widget/TextClock;->setTypeface(Landroid/graphics/Typeface;)V

    .line 187
    :cond_0
    invoke-direct {p0}, Lcom/android/keyguard/status/SecKeyguardClockDualImageView;->updateClock()V

    .line 189
    iget-object v3, p0, Lcom/android/keyguard/status/SecKeyguardClockDualImageView;->mDualHomeAmpm:Landroid/widget/TextClock;

    invoke-virtual {v3}, Landroid/widget/TextClock;->is24HourModeEnabled()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 190
    iget-object v3, p0, Lcom/android/keyguard/status/SecKeyguardClockDualImageView;->mDualRoamingAmpm:Landroid/widget/TextClock;

    invoke-virtual {v3, v6}, Landroid/widget/TextClock;->setVisibility(I)V

    .line 191
    iget-object v3, p0, Lcom/android/keyguard/status/SecKeyguardClockDualImageView;->mDualHomeAmpm:Landroid/widget/TextClock;

    invoke-virtual {v3, v6}, Landroid/widget/TextClock;->setVisibility(I)V

    .line 197
    :goto_0
    iget-object v3, p0, Lcom/android/keyguard/status/SecKeyguardClockDualImageView;->mContext:Landroid/content/Context;

    invoke-static {v3}, Lcom/android/keyguard/util/KeyguardStatusUtils;->getHometimeZone(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 199
    .local v0, "autoHomeTimeZoneId":Ljava/lang/String;
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v1

    .line 200
    .local v1, "homeCalendar":Ljava/util/Calendar;
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v2

    .line 202
    .local v2, "roamingCalendar":Ljava/util/Calendar;
    if-eqz v0, :cond_4

    .line 203
    invoke-static {v0}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v3

    invoke-static {v3}, Ljava/util/Calendar;->getInstance(Ljava/util/TimeZone;)Ljava/util/Calendar;

    move-result-object v1

    .line 205
    iget-object v3, p0, Lcom/android/keyguard/status/SecKeyguardClockDualImageView;->mDualHomeAmpm:Landroid/widget/TextClock;

    invoke-virtual {v3, v0}, Landroid/widget/TextClock;->setTimeZone(Ljava/lang/String;)V

    .line 206
    iget-object v3, p0, Lcom/android/keyguard/status/SecKeyguardClockDualImageView;->mDualHomeDate:Lcom/android/keyguard/status/KeyguardDateView;

    if-eqz v3, :cond_1

    .line 207
    iget-object v3, p0, Lcom/android/keyguard/status/SecKeyguardClockDualImageView;->mDualHomeDate:Lcom/android/keyguard/status/KeyguardDateView;

    invoke-virtual {v3, v0}, Lcom/android/keyguard/status/KeyguardDateView;->setTimeZone(Ljava/lang/String;)V

    .line 209
    :cond_1
    invoke-static {v0}, Lcom/android/keyguard/util/KeyguardProperties;->shouldShowSeoulTextForHomeTime(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 210
    iget-object v3, p0, Lcom/android/keyguard/status/SecKeyguardClockDualImageView;->mDualHomeLocale:Landroid/widget/TextView;

    iget-object v4, p0, Lcom/android/keyguard/status/SecKeyguardClockDualImageView;->mContext:Landroid/content/Context;

    sget v5, Lcom/android/keyguard/R$string;->keyguard_dualclock_home_Seoul:I

    invoke-virtual {v4, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 219
    :goto_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-virtual {v2, v4, v5}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 220
    invoke-static {}, Lcom/android/keyguard/util/KeyguardProperties;->shouldAddTimeTextForRoamingTime()Z

    move-result v3

    if-eqz v3, :cond_5

    .line 221
    iget-object v3, p0, Lcom/android/keyguard/status/SecKeyguardClockDualImageView;->mDualRoamingLocale:Landroid/widget/TextView;

    iget-object v4, p0, Lcom/android/keyguard/status/SecKeyguardClockDualImageView;->mContext:Landroid/content/Context;

    sget v5, Lcom/android/keyguard/R$string;->keyguard_dualclock_roaming_Korea:I

    invoke-virtual {v4, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 228
    :goto_2
    invoke-direct {p0}, Lcom/android/keyguard/status/SecKeyguardClockDualImageView;->changeTextColorOnWhiteWallpaper()V

    .line 229
    return-void

    .line 193
    .end local v0    # "autoHomeTimeZoneId":Ljava/lang/String;
    .end local v1    # "homeCalendar":Ljava/util/Calendar;
    .end local v2    # "roamingCalendar":Ljava/util/Calendar;
    :cond_2
    iget-object v3, p0, Lcom/android/keyguard/status/SecKeyguardClockDualImageView;->mDualRoamingAmpm:Landroid/widget/TextClock;

    invoke-virtual {v3, v5}, Landroid/widget/TextClock;->setVisibility(I)V

    .line 194
    iget-object v3, p0, Lcom/android/keyguard/status/SecKeyguardClockDualImageView;->mDualHomeAmpm:Landroid/widget/TextClock;

    invoke-virtual {v3, v5}, Landroid/widget/TextClock;->setVisibility(I)V

    goto :goto_0

    .line 212
    .restart local v0    # "autoHomeTimeZoneId":Ljava/lang/String;
    .restart local v1    # "homeCalendar":Ljava/util/Calendar;
    .restart local v2    # "roamingCalendar":Ljava/util/Calendar;
    :cond_3
    iget-object v3, p0, Lcom/android/keyguard/status/SecKeyguardClockDualImageView;->mDualHomeLocale:Landroid/widget/TextView;

    iget-object v4, p0, Lcom/android/keyguard/status/SecKeyguardClockDualImageView;->mContext:Landroid/content/Context;

    sget v5, Lcom/android/keyguard/R$string;->keyguard_dualclock_home:I

    invoke-virtual {v4, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 215
    :cond_4
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-virtual {v1, v4, v5}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 216
    iget-object v3, p0, Lcom/android/keyguard/status/SecKeyguardClockDualImageView;->mDualHomeLocale:Landroid/widget/TextView;

    iget-object v4, p0, Lcom/android/keyguard/status/SecKeyguardClockDualImageView;->mContext:Landroid/content/Context;

    sget v5, Lcom/android/keyguard/R$string;->keyguard_dualclock_home:I

    invoke-virtual {v4, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 222
    :cond_5
    invoke-static {}, Lcom/android/keyguard/util/KeyguardProperties;->isRoamingTextNotAllowedOnDualClock()Z

    move-result v3

    if-eqz v3, :cond_6

    .line 223
    iget-object v3, p0, Lcom/android/keyguard/status/SecKeyguardClockDualImageView;->mDualRoamingLocale:Landroid/widget/TextView;

    const-string v4, ""

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_2

    .line 225
    :cond_6
    iget-object v3, p0, Lcom/android/keyguard/status/SecKeyguardClockDualImageView;->mDualRoamingLocale:Landroid/widget/TextView;

    iget-object v4, p0, Lcom/android/keyguard/status/SecKeyguardClockDualImageView;->mContext:Landroid/content/Context;

    sget v5, Lcom/android/keyguard/R$string;->keyguard_dualclock_roaming:I

    invoke-virtual {v4, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_2
.end method

.method private setHomeIcon(FZ)V
    .locals 6
    .param p1, "newScale"    # F
    .param p2, "isInBoundary"    # Z

    .prologue
    .line 365
    iget-object v2, p0, Lcom/android/keyguard/status/SecKeyguardClockDualImageView;->mContext:Landroid/content/Context;

    sget v3, Lcom/android/keyguard/R$drawable;->lock_ic_home_white_solution:I

    invoke-virtual {v2, v3}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 366
    .local v0, "dwHomeIcon":Landroid/graphics/drawable/Drawable;
    new-instance v2, Landroid/graphics/PorterDuffColorFilter;

    const/4 v3, -0x1

    sget-object v4, Landroid/graphics/PorterDuff$Mode;->SRC_ATOP:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v2, v3, v4}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v0, v2}, Landroid/graphics/drawable/Drawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    .line 368
    :try_start_0
    iget-object v2, p0, Lcom/android/keyguard/status/SecKeyguardClockDualImageView;->mDualHomeLocale:Landroid/widget/TextView;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual {v2, v0, v3, v4, v5}, Landroid/widget/TextView;->setCompoundDrawablesWithIntrinsicBounds(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 372
    :goto_0
    return-void

    .line 369
    :catch_0
    move-exception v1

    .line 370
    .local v1, "e":Ljava/lang/Exception;
    const-string v2, "SecKeyguardClockDualImageView"

    const-string v3, "Exception at adding home icon!"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private setHour(ZII)V
    .locals 6
    .param p1, "is24Hour"    # Z
    .param p2, "hour"    # I
    .param p3, "zone"    # I

    .prologue
    const/16 v5, 0x8

    const/4 v4, 0x0

    .line 299
    iget v2, p0, Lcom/android/keyguard/status/SecKeyguardClockDualImageView;->HOME_ZONE:I

    if-ne p3, v2, :cond_3

    .line 300
    if-nez p2, :cond_0

    .line 301
    iget-object v2, p0, Lcom/android/keyguard/status/SecKeyguardClockDualImageView;->mHour1th_home:Landroid/widget/ImageView;

    iget-object v3, p0, Lcom/android/keyguard/status/SecKeyguardClockDualImageView;->DIGITS:[I

    aget v3, v3, v4

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 302
    iget-object v2, p0, Lcom/android/keyguard/status/SecKeyguardClockDualImageView;->mHour10th_home:Landroid/widget/ImageView;

    iget-object v3, p0, Lcom/android/keyguard/status/SecKeyguardClockDualImageView;->DIGITS:[I

    aget v3, v3, v4

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 333
    :goto_0
    return-void

    .line 305
    :cond_0
    rem-int/lit8 v1, p2, 0xa

    .line 306
    .local v1, "hour_zero":I
    iget-object v2, p0, Lcom/android/keyguard/status/SecKeyguardClockDualImageView;->mHour1th_home:Landroid/widget/ImageView;

    iget-object v3, p0, Lcom/android/keyguard/status/SecKeyguardClockDualImageView;->DIGITS:[I

    aget v3, v3, v1

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 308
    div-int/lit8 v0, p2, 0xa

    .line 309
    .local v0, "hour_tenth":I
    if-nez p1, :cond_1

    if-eqz v0, :cond_2

    .line 310
    :cond_1
    iget-object v2, p0, Lcom/android/keyguard/status/SecKeyguardClockDualImageView;->mHour10th_home:Landroid/widget/ImageView;

    iget-object v3, p0, Lcom/android/keyguard/status/SecKeyguardClockDualImageView;->DIGITS:[I

    aget v3, v3, v0

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 311
    iget-object v2, p0, Lcom/android/keyguard/status/SecKeyguardClockDualImageView;->mHour10th_home:Landroid/widget/ImageView;

    invoke-virtual {v2, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0

    .line 313
    :cond_2
    iget-object v2, p0, Lcom/android/keyguard/status/SecKeyguardClockDualImageView;->mHour10th_home:Landroid/widget/ImageView;

    invoke-virtual {v2, v5}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0

    .line 316
    .end local v0    # "hour_tenth":I
    .end local v1    # "hour_zero":I
    :cond_3
    if-nez p2, :cond_4

    .line 317
    iget-object v2, p0, Lcom/android/keyguard/status/SecKeyguardClockDualImageView;->mHour1th_roam:Landroid/widget/ImageView;

    iget-object v3, p0, Lcom/android/keyguard/status/SecKeyguardClockDualImageView;->DIGITS:[I

    aget v3, v3, v4

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 318
    iget-object v2, p0, Lcom/android/keyguard/status/SecKeyguardClockDualImageView;->mHour10th_roam:Landroid/widget/ImageView;

    iget-object v3, p0, Lcom/android/keyguard/status/SecKeyguardClockDualImageView;->DIGITS:[I

    aget v3, v3, v4

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0

    .line 322
    :cond_4
    rem-int/lit8 v1, p2, 0xa

    .line 323
    .restart local v1    # "hour_zero":I
    iget-object v2, p0, Lcom/android/keyguard/status/SecKeyguardClockDualImageView;->mHour1th_roam:Landroid/widget/ImageView;

    iget-object v3, p0, Lcom/android/keyguard/status/SecKeyguardClockDualImageView;->DIGITS:[I

    aget v3, v3, v1

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 325
    div-int/lit8 v0, p2, 0xa

    .line 326
    .restart local v0    # "hour_tenth":I
    if-nez p1, :cond_5

    if-eqz v0, :cond_6

    .line 327
    :cond_5
    iget-object v2, p0, Lcom/android/keyguard/status/SecKeyguardClockDualImageView;->mHour10th_roam:Landroid/widget/ImageView;

    iget-object v3, p0, Lcom/android/keyguard/status/SecKeyguardClockDualImageView;->DIGITS:[I

    aget v3, v3, v0

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 328
    iget-object v2, p0, Lcom/android/keyguard/status/SecKeyguardClockDualImageView;->mHour10th_roam:Landroid/widget/ImageView;

    invoke-virtual {v2, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0

    .line 330
    :cond_6
    iget-object v2, p0, Lcom/android/keyguard/status/SecKeyguardClockDualImageView;->mHour10th_roam:Landroid/widget/ImageView;

    invoke-virtual {v2, v5}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0
.end method

.method private setMin(II)V
    .locals 4
    .param p1, "min"    # I
    .param p2, "zone"    # I

    .prologue
    .line 336
    rem-int/lit8 v1, p1, 0xa

    .line 337
    .local v1, "min_zero":I
    div-int/lit8 v0, p1, 0xa

    .line 338
    .local v0, "min_tenth":I
    iget v2, p0, Lcom/android/keyguard/status/SecKeyguardClockDualImageView;->HOME_ZONE:I

    if-ne p2, v2, :cond_0

    .line 339
    iget-object v2, p0, Lcom/android/keyguard/status/SecKeyguardClockDualImageView;->mMin1th_home:Landroid/widget/ImageView;

    iget-object v3, p0, Lcom/android/keyguard/status/SecKeyguardClockDualImageView;->DIGITS:[I

    aget v3, v3, v1

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 340
    iget-object v2, p0, Lcom/android/keyguard/status/SecKeyguardClockDualImageView;->mMin10th_home:Landroid/widget/ImageView;

    iget-object v3, p0, Lcom/android/keyguard/status/SecKeyguardClockDualImageView;->DIGITS:[I

    aget v3, v3, v0

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 345
    :goto_0
    return-void

    .line 342
    :cond_0
    iget-object v2, p0, Lcom/android/keyguard/status/SecKeyguardClockDualImageView;->mMin1th_roam:Landroid/widget/ImageView;

    iget-object v3, p0, Lcom/android/keyguard/status/SecKeyguardClockDualImageView;->DIGITS:[I

    aget v3, v3, v1

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 343
    iget-object v2, p0, Lcom/android/keyguard/status/SecKeyguardClockDualImageView;->mMin10th_roam:Landroid/widget/ImageView;

    iget-object v3, p0, Lcom/android/keyguard/status/SecKeyguardClockDualImageView;->DIGITS:[I

    aget v3, v3, v0

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0
.end method

.method private updateClock()V
    .locals 25

    .prologue
    .line 233
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/keyguard/status/SecKeyguardClockDualImageView;->mContext:Landroid/content/Context;

    move-object/from16 v22, v0

    invoke-static/range {v22 .. v22}, Lcom/android/keyguard/util/KeyguardStatusUtils;->getHometimeZone(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v6

    .line 234
    .local v6, "autoHomeTimeZoneId":Ljava/lang/String;
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v7

    .line 235
    .local v7, "c":Ljava/util/Calendar;
    if-eqz v6, :cond_0

    .line 236
    invoke-static {v6}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v22

    invoke-static/range {v22 .. v22}, Ljava/util/Calendar;->getInstance(Ljava/util/TimeZone;)Ljava/util/Calendar;

    move-result-object v7

    .line 241
    :goto_0
    const/16 v22, 0xc

    move/from16 v0, v22

    invoke-virtual {v7, v0}, Ljava/util/Calendar;->get(I)I

    move-result v17

    .line 242
    .local v17, "minutes":I
    const/16 v22, 0xa

    move/from16 v0, v22

    invoke-virtual {v7, v0}, Ljava/util/Calendar;->get(I)I

    move-result v12

    .line 243
    .local v12, "hour":I
    const/16 v22, 0x9

    move/from16 v0, v22

    invoke-virtual {v7, v0}, Ljava/util/Calendar;->get(I)I

    move-result v4

    .line 245
    .local v4, "AM_PM":I
    const/16 v22, 0xb

    move/from16 v0, v22

    invoke-virtual {v7, v0}, Ljava/util/Calendar;->get(I)I

    move-result v13

    .line 246
    .local v13, "hour_day":I
    const/16 v22, 0x7

    move/from16 v0, v22

    invoke-virtual {v7, v0}, Ljava/util/Calendar;->get(I)I

    move-result v10

    .line 247
    .local v10, "day_of_week":I
    const/16 v22, 0x5

    move/from16 v0, v22

    invoke-virtual {v7, v0}, Ljava/util/Calendar;->get(I)I

    move-result v8

    .line 249
    .local v8, "date":I
    const/16 v22, 0x2

    move/from16 v0, v22

    invoke-virtual {v7, v0}, Ljava/util/Calendar;->get(I)I

    move-result v19

    .line 251
    .local v19, "month":I
    const-string v22, "SecKeyguardClockDualImageView"

    const-string v23, "HOME CLOCK "

    invoke-static/range {v22 .. v23}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 252
    const-string v22, "SecKeyguardClockDualImageView"

    new-instance v23, Ljava/lang/StringBuilder;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    const-string v24, "min : "

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, v23

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v23

    const-string v24, "hour : "

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, v23

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v23

    const-string v24, "AM_PM : "

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, v23

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    invoke-static/range {v22 .. v23}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 253
    const-string v22, "SecKeyguardClockDualImageView"

    new-instance v23, Ljava/lang/StringBuilder;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    const-string v24, "hour_day : "

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, v23

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v23

    const-string v24, "day_of_week : "

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, v23

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v23

    const-string v24, "date : "

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, v23

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    invoke-static/range {v22 .. v23}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 254
    const-string v22, "SecKeyguardClockDualImageView"

    new-instance v23, Ljava/lang/StringBuilder;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    const-string v24, "month : "

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, v23

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    invoke-static/range {v22 .. v23}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 256
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/keyguard/status/SecKeyguardClockDualImageView;->mDualHomeAmpm:Landroid/widget/TextClock;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Landroid/widget/TextClock;->is24HourModeEnabled()Z

    move-result v16

    .line 257
    .local v16, "is24Hour":Z
    if-eqz v16, :cond_1

    .line 258
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/keyguard/status/SecKeyguardClockDualImageView;->HOME_ZONE:I

    move/from16 v22, v0

    move-object/from16 v0, p0

    move/from16 v1, v16

    move/from16 v2, v22

    invoke-direct {v0, v1, v13, v2}, Lcom/android/keyguard/status/SecKeyguardClockDualImageView;->setHour(ZII)V

    .line 265
    :goto_1
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/keyguard/status/SecKeyguardClockDualImageView;->HOME_ZONE:I

    move/from16 v22, v0

    move-object/from16 v0, p0

    move/from16 v1, v17

    move/from16 v2, v22

    invoke-direct {v0, v1, v2}, Lcom/android/keyguard/status/SecKeyguardClockDualImageView;->setMin(II)V

    .line 268
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v21

    .line 269
    .local v21, "roamingCalendar":Ljava/util/Calendar;
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v22

    invoke-virtual/range {v21 .. v23}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 271
    const/16 v22, 0xc

    invoke-virtual/range {v21 .. v22}, Ljava/util/Calendar;->get(I)I

    move-result v18

    .line 272
    .local v18, "minutes_roam":I
    const/16 v22, 0xa

    invoke-virtual/range {v21 .. v22}, Ljava/util/Calendar;->get(I)I

    move-result v15

    .line 273
    .local v15, "hour_roam":I
    const/16 v22, 0x9

    invoke-virtual/range {v21 .. v22}, Ljava/util/Calendar;->get(I)I

    move-result v5

    .line 275
    .local v5, "AM_PM_roam":I
    const/16 v22, 0xb

    invoke-virtual/range {v21 .. v22}, Ljava/util/Calendar;->get(I)I

    move-result v14

    .line 276
    .local v14, "hour_day_roam":I
    const/16 v22, 0x7

    invoke-virtual/range {v21 .. v22}, Ljava/util/Calendar;->get(I)I

    move-result v11

    .line 277
    .local v11, "day_of_week_roam":I
    const/16 v22, 0x5

    invoke-virtual/range {v21 .. v22}, Ljava/util/Calendar;->get(I)I

    move-result v9

    .line 279
    .local v9, "date_roam":I
    const/16 v22, 0x2

    invoke-virtual/range {v21 .. v22}, Ljava/util/Calendar;->get(I)I

    move-result v20

    .line 281
    .local v20, "month_roam":I
    const-string v22, "SecKeyguardClockDualImageView"

    const-string v23, "Roaming Clock "

    invoke-static/range {v22 .. v23}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 282
    const-string v22, "SecKeyguardClockDualImageView"

    new-instance v23, Ljava/lang/StringBuilder;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    const-string v24, "min : "

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, v23

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v23

    const-string v24, "hour : "

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, v23

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v23

    const-string v24, "AM_PM : "

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, v23

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    invoke-static/range {v22 .. v23}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 283
    const-string v22, "SecKeyguardClockDualImageView"

    new-instance v23, Ljava/lang/StringBuilder;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    const-string v24, "hour_day : "

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, v23

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v23

    const-string v24, "day_of_week : "

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, v23

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v23

    const-string v24, "date : "

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, v23

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    invoke-static/range {v22 .. v23}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 284
    const-string v22, "SecKeyguardClockDualImageView"

    new-instance v23, Ljava/lang/StringBuilder;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    const-string v24, "month : "

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, v23

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    invoke-static/range {v22 .. v23}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 286
    if-eqz v16, :cond_3

    .line 287
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/keyguard/status/SecKeyguardClockDualImageView;->ROAMING_ZONE:I

    move/from16 v22, v0

    move-object/from16 v0, p0

    move/from16 v1, v16

    move/from16 v2, v22

    invoke-direct {v0, v1, v14, v2}, Lcom/android/keyguard/status/SecKeyguardClockDualImageView;->setHour(ZII)V

    .line 294
    :goto_2
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/keyguard/status/SecKeyguardClockDualImageView;->ROAMING_ZONE:I

    move/from16 v22, v0

    move-object/from16 v0, p0

    move/from16 v1, v18

    move/from16 v2, v22

    invoke-direct {v0, v1, v2}, Lcom/android/keyguard/status/SecKeyguardClockDualImageView;->setMin(II)V

    .line 295
    return-void

    .line 238
    .end local v4    # "AM_PM":I
    .end local v5    # "AM_PM_roam":I
    .end local v8    # "date":I
    .end local v9    # "date_roam":I
    .end local v10    # "day_of_week":I
    .end local v11    # "day_of_week_roam":I
    .end local v12    # "hour":I
    .end local v13    # "hour_day":I
    .end local v14    # "hour_day_roam":I
    .end local v15    # "hour_roam":I
    .end local v16    # "is24Hour":Z
    .end local v17    # "minutes":I
    .end local v18    # "minutes_roam":I
    .end local v19    # "month":I
    .end local v20    # "month_roam":I
    .end local v21    # "roamingCalendar":Ljava/util/Calendar;
    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v22

    move-wide/from16 v0, v22

    invoke-virtual {v7, v0, v1}, Ljava/util/Calendar;->setTimeInMillis(J)V

    goto/16 :goto_0

    .line 260
    .restart local v4    # "AM_PM":I
    .restart local v8    # "date":I
    .restart local v10    # "day_of_week":I
    .restart local v12    # "hour":I
    .restart local v13    # "hour_day":I
    .restart local v16    # "is24Hour":Z
    .restart local v17    # "minutes":I
    .restart local v19    # "month":I
    :cond_1
    if-nez v12, :cond_2

    .line 261
    const/16 v22, 0xc

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/keyguard/status/SecKeyguardClockDualImageView;->HOME_ZONE:I

    move/from16 v23, v0

    move-object/from16 v0, p0

    move/from16 v1, v16

    move/from16 v2, v22

    move/from16 v3, v23

    invoke-direct {v0, v1, v2, v3}, Lcom/android/keyguard/status/SecKeyguardClockDualImageView;->setHour(ZII)V

    goto/16 :goto_1

    .line 263
    :cond_2
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/keyguard/status/SecKeyguardClockDualImageView;->HOME_ZONE:I

    move/from16 v22, v0

    move-object/from16 v0, p0

    move/from16 v1, v16

    move/from16 v2, v22

    invoke-direct {v0, v1, v12, v2}, Lcom/android/keyguard/status/SecKeyguardClockDualImageView;->setHour(ZII)V

    goto/16 :goto_1

    .line 289
    .restart local v5    # "AM_PM_roam":I
    .restart local v9    # "date_roam":I
    .restart local v11    # "day_of_week_roam":I
    .restart local v14    # "hour_day_roam":I
    .restart local v15    # "hour_roam":I
    .restart local v18    # "minutes_roam":I
    .restart local v20    # "month_roam":I
    .restart local v21    # "roamingCalendar":Ljava/util/Calendar;
    :cond_3
    if-nez v15, :cond_4

    .line 290
    const/16 v22, 0xc

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/keyguard/status/SecKeyguardClockDualImageView;->ROAMING_ZONE:I

    move/from16 v23, v0

    move-object/from16 v0, p0

    move/from16 v1, v16

    move/from16 v2, v22

    move/from16 v3, v23

    invoke-direct {v0, v1, v2, v3}, Lcom/android/keyguard/status/SecKeyguardClockDualImageView;->setHour(ZII)V

    goto :goto_2

    .line 292
    :cond_4
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/keyguard/status/SecKeyguardClockDualImageView;->ROAMING_ZONE:I

    move/from16 v22, v0

    move-object/from16 v0, p0

    move/from16 v1, v16

    move/from16 v2, v22

    invoke-direct {v0, v1, v15, v2}, Lcom/android/keyguard/status/SecKeyguardClockDualImageView;->setHour(ZII)V

    goto :goto_2
.end method


# virtual methods
.method protected onAttachedToWindow()V
    .locals 2

    .prologue
    .line 160
    invoke-super {p0}, Landroid/widget/LinearLayout;->onAttachedToWindow()V

    .line 161
    iget-object v0, p0, Lcom/android/keyguard/status/SecKeyguardClockDualImageView;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object v0

    iget-object v1, p0, Lcom/android/keyguard/status/SecKeyguardClockDualImageView;->mUpdateCallback:Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

    invoke-virtual {v0, v1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->registerCallback(Lcom/android/keyguard/KeyguardUpdateMonitorCallback;)V

    .line 162
    return-void
.end method

.method protected onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 2
    .param p1, "newConfig"    # Landroid/content/res/Configuration;

    .prologue
    .line 88
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 90
    iget-object v0, p1, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    iget-object v1, p0, Lcom/android/keyguard/status/SecKeyguardClockDualImageView;->mLocale:Ljava/util/Locale;

    invoke-virtual {v0, v1}, Ljava/util/Locale;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 91
    iget-object v0, p1, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    iput-object v0, p0, Lcom/android/keyguard/status/SecKeyguardClockDualImageView;->mLocale:Ljava/util/Locale;

    .line 92
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/keyguard/status/SecKeyguardClockDualImageView;->sendMsgUpdateClock(Z)V

    .line 94
    :cond_0
    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 2

    .prologue
    .line 166
    iget-object v0, p0, Lcom/android/keyguard/status/SecKeyguardClockDualImageView;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object v0

    iget-object v1, p0, Lcom/android/keyguard/status/SecKeyguardClockDualImageView;->mUpdateCallback:Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

    invoke-virtual {v0, v1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->removeCallback(Lcom/android/keyguard/KeyguardUpdateMonitorCallback;)V

    .line 167
    invoke-super {p0}, Landroid/widget/LinearLayout;->onDetachedFromWindow()V

    .line 168
    return-void
.end method

.method protected onFinishInflate()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 127
    sget v0, Lcom/android/keyguard/R$id;->keyguard_dual_roaming_time_container:I

    invoke-virtual {p0, v0}, Lcom/android/keyguard/status/SecKeyguardClockDualImageView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/keyguard/status/SecKeyguardClockDualImageView;->mDualClockRoamingContainer:Landroid/view/View;

    .line 128
    sget v0, Lcom/android/keyguard/R$id;->roaming_locale:I

    invoke-virtual {p0, v0}, Lcom/android/keyguard/status/SecKeyguardClockDualImageView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/keyguard/status/SecKeyguardClockDualImageView;->mDualRoamingLocale:Landroid/widget/TextView;

    .line 129
    sget v0, Lcom/android/keyguard/R$id;->hour_10th_roaming:I

    invoke-virtual {p0, v0}, Lcom/android/keyguard/status/SecKeyguardClockDualImageView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/keyguard/status/SecKeyguardClockDualImageView;->mHour10th_roam:Landroid/widget/ImageView;

    .line 130
    sget v0, Lcom/android/keyguard/R$id;->hour_1th_roaming:I

    invoke-virtual {p0, v0}, Lcom/android/keyguard/status/SecKeyguardClockDualImageView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/keyguard/status/SecKeyguardClockDualImageView;->mHour1th_roam:Landroid/widget/ImageView;

    .line 131
    sget v0, Lcom/android/keyguard/R$id;->minute_10th_roaming:I

    invoke-virtual {p0, v0}, Lcom/android/keyguard/status/SecKeyguardClockDualImageView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/keyguard/status/SecKeyguardClockDualImageView;->mMin10th_roam:Landroid/widget/ImageView;

    .line 132
    sget v0, Lcom/android/keyguard/R$id;->minute_1th_roaming:I

    invoke-virtual {p0, v0}, Lcom/android/keyguard/status/SecKeyguardClockDualImageView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/keyguard/status/SecKeyguardClockDualImageView;->mMin1th_roam:Landroid/widget/ImageView;

    .line 133
    sget v0, Lcom/android/keyguard/R$id;->roaming_ampm:I

    invoke-virtual {p0, v0}, Lcom/android/keyguard/status/SecKeyguardClockDualImageView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextClock;

    iput-object v0, p0, Lcom/android/keyguard/status/SecKeyguardClockDualImageView;->mDualRoamingAmpm:Landroid/widget/TextClock;

    .line 134
    sget v0, Lcom/android/keyguard/R$id;->roaming_date:I

    invoke-virtual {p0, v0}, Lcom/android/keyguard/status/SecKeyguardClockDualImageView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/keyguard/status/KeyguardDateView;

    iput-object v0, p0, Lcom/android/keyguard/status/SecKeyguardClockDualImageView;->mDualRoamingDate:Lcom/android/keyguard/status/KeyguardDateView;

    .line 136
    sget v0, Lcom/android/keyguard/R$id;->keyguard_dual_home_time_container:I

    invoke-virtual {p0, v0}, Lcom/android/keyguard/status/SecKeyguardClockDualImageView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/keyguard/status/SecKeyguardClockDualImageView;->mDualClockHomeContainer:Landroid/view/View;

    .line 137
    sget v0, Lcom/android/keyguard/R$id;->home_locale:I

    invoke-virtual {p0, v0}, Lcom/android/keyguard/status/SecKeyguardClockDualImageView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/keyguard/status/SecKeyguardClockDualImageView;->mDualHomeLocale:Landroid/widget/TextView;

    .line 138
    sget v0, Lcom/android/keyguard/R$id;->hour_10th_home:I

    invoke-virtual {p0, v0}, Lcom/android/keyguard/status/SecKeyguardClockDualImageView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/keyguard/status/SecKeyguardClockDualImageView;->mHour10th_home:Landroid/widget/ImageView;

    .line 139
    sget v0, Lcom/android/keyguard/R$id;->hour_1th_home:I

    invoke-virtual {p0, v0}, Lcom/android/keyguard/status/SecKeyguardClockDualImageView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/keyguard/status/SecKeyguardClockDualImageView;->mHour1th_home:Landroid/widget/ImageView;

    .line 140
    sget v0, Lcom/android/keyguard/R$id;->minute_10th_home:I

    invoke-virtual {p0, v0}, Lcom/android/keyguard/status/SecKeyguardClockDualImageView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/keyguard/status/SecKeyguardClockDualImageView;->mMin10th_home:Landroid/widget/ImageView;

    .line 141
    sget v0, Lcom/android/keyguard/R$id;->minute_1th_home:I

    invoke-virtual {p0, v0}, Lcom/android/keyguard/status/SecKeyguardClockDualImageView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/keyguard/status/SecKeyguardClockDualImageView;->mMin1th_home:Landroid/widget/ImageView;

    .line 142
    sget v0, Lcom/android/keyguard/R$id;->home_ampm:I

    invoke-virtual {p0, v0}, Lcom/android/keyguard/status/SecKeyguardClockDualImageView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextClock;

    iput-object v0, p0, Lcom/android/keyguard/status/SecKeyguardClockDualImageView;->mDualHomeAmpm:Landroid/widget/TextClock;

    .line 143
    sget v0, Lcom/android/keyguard/R$id;->home_date:I

    invoke-virtual {p0, v0}, Lcom/android/keyguard/status/SecKeyguardClockDualImageView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/keyguard/status/KeyguardDateView;

    iput-object v0, p0, Lcom/android/keyguard/status/SecKeyguardClockDualImageView;->mDualHomeDate:Lcom/android/keyguard/status/KeyguardDateView;

    .line 145
    const-string v0, "/system/fonts/SECRobotoLight-Bold.ttf"

    invoke-static {v0}, Lcom/android/keyguard/util/KeyguardStatusUtils;->getFontTypeface(Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v0

    iput-object v0, p0, Lcom/android/keyguard/status/SecKeyguardClockDualImageView;->mAmpmOpenTypeface:Landroid/graphics/Typeface;

    .line 146
    iget-object v0, p0, Lcom/android/keyguard/status/SecKeyguardClockDualImageView;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget-object v0, v0, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    iput-object v0, p0, Lcom/android/keyguard/status/SecKeyguardClockDualImageView;->mLocale:Ljava/util/Locale;

    .line 147
    iget-object v0, p0, Lcom/android/keyguard/status/SecKeyguardClockDualImageView;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->fontScale:F

    invoke-direct {p0, v0, v2}, Lcom/android/keyguard/status/SecKeyguardClockDualImageView;->setHomeIcon(FZ)V

    .line 149
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/android/keyguard/status/SecKeyguardClockDualImageView;->sendMsgUpdateClock(Z)V

    .line 152
    const-string v0, "iw"

    iget-object v1, p0, Lcom/android/keyguard/status/SecKeyguardClockDualImageView;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/android/keyguard/util/KeyguardStatusUtils;->getCurrentLocale(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 153
    iget-object v0, p0, Lcom/android/keyguard/status/SecKeyguardClockDualImageView;->mDualClockRoamingContainer:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setLayoutDirection(I)V

    .line 154
    iget-object v0, p0, Lcom/android/keyguard/status/SecKeyguardClockDualImageView;->mDualClockHomeContainer:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setLayoutDirection(I)V

    .line 156
    :cond_0
    return-void
.end method
