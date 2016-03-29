.class public Lcom/sec/android/cover/sviewcover/stylizedclock/SViewCoverStylizedClockView;
.super Landroid/widget/LinearLayout;
.source "SViewCoverStylizedClockView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/cover/sviewcover/stylizedclock/SViewCoverStylizedClockView$Counter;
    }
.end annotation


# instance fields
.field private mAmPmKrTV:Landroid/widget/TextView;

.field private mAmPmTV:Landroid/widget/TextView;

.field private mCalendar:Ljava/util/Calendar;

.field private mCounter:Lcom/sec/android/cover/sviewcover/stylizedclock/SViewCoverStylizedClockView$Counter;

.field private mDatePattern:Ljava/lang/CharSequence;

.field private mDateTV:Landroid/widget/TextView;

.field private mDayTV:Landroid/widget/TextView;

.field private mFestivalIcon:Landroid/widget/ImageView;

.field private mHoursTV:Landroid/widget/TextView;

.field private mIs24HTime:Z

.field private mIsFestivalEnabled:Z

.field private mManager:Lcom/sec/android/cover/sviewcover/stylizedclock/SViewCoverStylizedClockManager;

.field private mMinutesTV:Landroid/widget/TextView;

.field private mPointerHoursIV:Landroid/widget/ImageView;

.field private mPointerMinutesIV:Landroid/widget/ImageView;

.field private mPointerSecondsIV:Landroid/widget/ImageView;

.field private mRotateAnim:Landroid/view/animation/RotateAnimation;

.field private mTTSDatePattern:Ljava/lang/CharSequence;

.field private mTimeTV:Landroid/widget/TextView;

.field private mUpdateAnalogTime:Z

.field private mUpdateDateTime:Z

.field private mUpdateDigitalTime:Z

.field private mUpdateMonitorCallback:Lcom/sec/android/cover/monitor/CoverUpdateMonitorCallback;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v1, 0x0

    .line 165
    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 66
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/android/cover/sviewcover/stylizedclock/SViewCoverStylizedClockView;->mIs24HTime:Z

    .line 70
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/cover/sviewcover/stylizedclock/SViewCoverStylizedClockView;->mCalendar:Ljava/util/Calendar;

    .line 74
    iput-object v1, p0, Lcom/sec/android/cover/sviewcover/stylizedclock/SViewCoverStylizedClockView;->mDatePattern:Ljava/lang/CharSequence;

    .line 75
    iput-object v1, p0, Lcom/sec/android/cover/sviewcover/stylizedclock/SViewCoverStylizedClockView;->mTTSDatePattern:Ljava/lang/CharSequence;

    .line 77
    new-instance v0, Lcom/sec/android/cover/sviewcover/stylizedclock/SViewCoverStylizedClockView$1;

    invoke-direct {v0, p0}, Lcom/sec/android/cover/sviewcover/stylizedclock/SViewCoverStylizedClockView$1;-><init>(Lcom/sec/android/cover/sviewcover/stylizedclock/SViewCoverStylizedClockView;)V

    iput-object v0, p0, Lcom/sec/android/cover/sviewcover/stylizedclock/SViewCoverStylizedClockView;->mUpdateMonitorCallback:Lcom/sec/android/cover/monitor/CoverUpdateMonitorCallback;

    .line 166
    invoke-direct {p0}, Lcom/sec/android/cover/sviewcover/stylizedclock/SViewCoverStylizedClockView;->init()V

    .line 167
    return-void
.end method

.method static synthetic access$000(Lcom/sec/android/cover/sviewcover/stylizedclock/SViewCoverStylizedClockView;)V
    .locals 0
    .param p0, "x0"    # Lcom/sec/android/cover/sviewcover/stylizedclock/SViewCoverStylizedClockView;

    .prologue
    .line 33
    invoke-direct {p0}, Lcom/sec/android/cover/sviewcover/stylizedclock/SViewCoverStylizedClockView;->updateTime()V

    return-void
.end method

.method static synthetic access$102(Lcom/sec/android/cover/sviewcover/stylizedclock/SViewCoverStylizedClockView;Ljava/lang/CharSequence;)Ljava/lang/CharSequence;
    .locals 0
    .param p0, "x0"    # Lcom/sec/android/cover/sviewcover/stylizedclock/SViewCoverStylizedClockView;
    .param p1, "x1"    # Ljava/lang/CharSequence;

    .prologue
    .line 33
    iput-object p1, p0, Lcom/sec/android/cover/sviewcover/stylizedclock/SViewCoverStylizedClockView;->mTTSDatePattern:Ljava/lang/CharSequence;

    return-object p1
.end method

.method static synthetic access$202(Lcom/sec/android/cover/sviewcover/stylizedclock/SViewCoverStylizedClockView;Ljava/lang/CharSequence;)Ljava/lang/CharSequence;
    .locals 0
    .param p0, "x0"    # Lcom/sec/android/cover/sviewcover/stylizedclock/SViewCoverStylizedClockView;
    .param p1, "x1"    # Ljava/lang/CharSequence;

    .prologue
    .line 33
    iput-object p1, p0, Lcom/sec/android/cover/sviewcover/stylizedclock/SViewCoverStylizedClockView;->mDatePattern:Ljava/lang/CharSequence;

    return-object p1
.end method

.method static synthetic access$302(Lcom/sec/android/cover/sviewcover/stylizedclock/SViewCoverStylizedClockView;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/sec/android/cover/sviewcover/stylizedclock/SViewCoverStylizedClockView;
    .param p1, "x1"    # Z

    .prologue
    .line 33
    iput-boolean p1, p0, Lcom/sec/android/cover/sviewcover/stylizedclock/SViewCoverStylizedClockView;->mIs24HTime:Z

    return p1
.end method

.method static synthetic access$400(Lcom/sec/android/cover/sviewcover/stylizedclock/SViewCoverStylizedClockView;)Z
    .locals 1
    .param p0, "x0"    # Lcom/sec/android/cover/sviewcover/stylizedclock/SViewCoverStylizedClockView;

    .prologue
    .line 33
    iget-boolean v0, p0, Lcom/sec/android/cover/sviewcover/stylizedclock/SViewCoverStylizedClockView;->mIsFestivalEnabled:Z

    return v0
.end method

.method static synthetic access$402(Lcom/sec/android/cover/sviewcover/stylizedclock/SViewCoverStylizedClockView;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/sec/android/cover/sviewcover/stylizedclock/SViewCoverStylizedClockView;
    .param p1, "x1"    # Z

    .prologue
    .line 33
    iput-boolean p1, p0, Lcom/sec/android/cover/sviewcover/stylizedclock/SViewCoverStylizedClockView;->mIsFestivalEnabled:Z

    return p1
.end method

.method static synthetic access$500(Lcom/sec/android/cover/sviewcover/stylizedclock/SViewCoverStylizedClockView;)Z
    .locals 1
    .param p0, "x0"    # Lcom/sec/android/cover/sviewcover/stylizedclock/SViewCoverStylizedClockView;

    .prologue
    .line 33
    invoke-direct {p0}, Lcom/sec/android/cover/sviewcover/stylizedclock/SViewCoverStylizedClockView;->isFestivalEffectEnabled()Z

    move-result v0

    return v0
.end method

.method static synthetic access$600(Lcom/sec/android/cover/sviewcover/stylizedclock/SViewCoverStylizedClockView;)Landroid/widget/ImageView;
    .locals 1
    .param p0, "x0"    # Lcom/sec/android/cover/sviewcover/stylizedclock/SViewCoverStylizedClockView;

    .prologue
    .line 33
    iget-object v0, p0, Lcom/sec/android/cover/sviewcover/stylizedclock/SViewCoverStylizedClockView;->mFestivalIcon:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic access$700(Lcom/sec/android/cover/sviewcover/stylizedclock/SViewCoverStylizedClockView;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/sec/android/cover/sviewcover/stylizedclock/SViewCoverStylizedClockView;

    .prologue
    .line 33
    iget-object v0, p0, Lcom/sec/android/cover/sviewcover/stylizedclock/SViewCoverStylizedClockView;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method private getTTSstylizedclock()Ljava/lang/String;
    .locals 8

    .prologue
    .line 260
    const-string v0, ""

    .line 261
    .local v0, "TTSMessage":Ljava/lang/String;
    iget-object v4, p0, Lcom/sec/android/cover/sviewcover/stylizedclock/SViewCoverStylizedClockView;->mTTSDatePattern:Ljava/lang/CharSequence;

    if-nez v4, :cond_0

    .line 262
    iget-object v4, p0, Lcom/sec/android/cover/sviewcover/stylizedclock/SViewCoverStylizedClockView;->mContext:Landroid/content/Context;

    const/4 v5, 0x0

    invoke-static {v4, v5}, Lcom/sec/android/cover/CoverUtils;->getDateFormat(Landroid/content/Context;Z)Ljava/lang/CharSequence;

    move-result-object v4

    iput-object v4, p0, Lcom/sec/android/cover/sviewcover/stylizedclock/SViewCoverStylizedClockView;->mTTSDatePattern:Ljava/lang/CharSequence;

    .line 264
    :cond_0
    iget-object v4, p0, Lcom/sec/android/cover/sviewcover/stylizedclock/SViewCoverStylizedClockView;->mTTSDatePattern:Ljava/lang/CharSequence;

    iget-object v5, p0, Lcom/sec/android/cover/sviewcover/stylizedclock/SViewCoverStylizedClockView;->mCalendar:Ljava/util/Calendar;

    invoke-static {v4, v5}, Landroid/text/format/DateFormat;->format(Ljava/lang/CharSequence;Ljava/util/Calendar;)Ljava/lang/CharSequence;

    move-result-object v2

    .line 267
    .local v2, "dateText":Ljava/lang/CharSequence;
    iget-object v4, p0, Lcom/sec/android/cover/sviewcover/stylizedclock/SViewCoverStylizedClockView;->mCalendar:Ljava/util/Calendar;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    invoke-virtual {v4, v6, v7}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 268
    iget-boolean v4, p0, Lcom/sec/android/cover/sviewcover/stylizedclock/SViewCoverStylizedClockView;->mIs24HTime:Z

    if-eqz v4, :cond_1

    .line 269
    const-string v4, "kk:mm"

    iget-object v5, p0, Lcom/sec/android/cover/sviewcover/stylizedclock/SViewCoverStylizedClockView;->mCalendar:Ljava/util/Calendar;

    invoke-static {v4, v5}, Landroid/text/format/DateFormat;->format(Ljava/lang/CharSequence;Ljava/util/Calendar;)Ljava/lang/CharSequence;

    move-result-object v4

    invoke-interface {v4}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v3

    .line 281
    .local v3, "mTTSTime":Ljava/lang/String;
    :goto_0
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 282
    return-object v0

    .line 272
    .end local v3    # "mTTSTime":Ljava/lang/String;
    :cond_1
    sget-object v4, Lcom/sec/android/cover/sviewcover/widget/SViewCoverClockWidget;->mTimeFormat:Ljava/lang/String;

    iget-object v5, p0, Lcom/sec/android/cover/sviewcover/stylizedclock/SViewCoverStylizedClockView;->mCalendar:Ljava/util/Calendar;

    invoke-static {v4, v5}, Landroid/text/format/DateFormat;->format(Ljava/lang/CharSequence;Ljava/util/Calendar;)Ljava/lang/CharSequence;

    move-result-object v4

    invoke-interface {v4}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v3

    .line 273
    .restart local v3    # "mTTSTime":Ljava/lang/String;
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v1

    .line 274
    .local v1, "currentLanguage":Ljava/lang/String;
    sget-object v4, Ljava/util/Locale;->KOREAN:Ljava/util/Locale;

    invoke-virtual {v4}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 275
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "AA"

    iget-object v6, p0, Lcom/sec/android/cover/sviewcover/stylizedclock/SViewCoverStylizedClockView;->mCalendar:Ljava/util/Calendar;

    invoke-static {v5, v6}, Landroid/text/format/DateFormat;->format(Ljava/lang/CharSequence;Ljava/util/Calendar;)Ljava/lang/CharSequence;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    goto :goto_0

    .line 278
    :cond_2
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "AA"

    iget-object v6, p0, Lcom/sec/android/cover/sviewcover/stylizedclock/SViewCoverStylizedClockView;->mCalendar:Ljava/util/Calendar;

    invoke-static {v5, v6}, Landroid/text/format/DateFormat;->format(Ljava/lang/CharSequence;Ljava/util/Calendar;)Ljava/lang/CharSequence;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    goto :goto_0
.end method

.method private init()V
    .locals 1

    .prologue
    .line 170
    iget-object v0, p0, Lcom/sec/android/cover/sviewcover/stylizedclock/SViewCoverStylizedClockView;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/sec/android/cover/sviewcover/stylizedclock/SViewCoverStylizedClockManager;->getInstance(Landroid/content/Context;)Lcom/sec/android/cover/sviewcover/stylizedclock/SViewCoverStylizedClockManager;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/cover/sviewcover/stylizedclock/SViewCoverStylizedClockView;->mManager:Lcom/sec/android/cover/sviewcover/stylizedclock/SViewCoverStylizedClockManager;

    .line 171
    return-void
.end method

.method private isFestivalEffectEnabled()Z
    .locals 7

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 439
    iget-object v4, p0, Lcom/sec/android/cover/sviewcover/stylizedclock/SViewCoverStylizedClockView;->mContext:Landroid/content/Context;

    invoke-static {v4}, Lcom/sec/android/cover/manager/CoverDatabaseManager;->getInstance(Landroid/content/Context;)Lcom/sec/android/cover/manager/CoverDatabaseManager;

    move-result-object v4

    const-string v5, "festival_effect_enabled"

    invoke-virtual {v4, v5, v3}, Lcom/sec/android/cover/manager/CoverDatabaseManager;->getInt(Ljava/lang/String;I)I

    move-result v4

    if-eqz v4, :cond_0

    move v1, v2

    .line 441
    .local v1, "festivalMasterEnabled":Z
    :goto_0
    iget-object v4, p0, Lcom/sec/android/cover/sviewcover/stylizedclock/SViewCoverStylizedClockView;->mContext:Landroid/content/Context;

    invoke-static {v4}, Lcom/sec/android/cover/manager/CoverDatabaseManager;->getInstance(Landroid/content/Context;)Lcom/sec/android/cover/manager/CoverDatabaseManager;

    move-result-object v4

    const-string v5, "festival_effect_lockscreen_wallpaper"

    invoke-virtual {v4, v5, v3}, Lcom/sec/android/cover/manager/CoverDatabaseManager;->getInt(Ljava/lang/String;I)I

    move-result v4

    if-eqz v4, :cond_1

    move v0, v2

    .line 444
    .local v0, "festivalLockscreenEnabled":Z
    :goto_1
    const-string v4, "SViewCoverStylizedClockView"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "isFestivalEffectEnabled() festivalMasterEnabled = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", festivalLockscreenEnabled = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 446
    if-eqz v1, :cond_2

    if-eqz v0, :cond_2

    :goto_2
    return v2

    .end local v0    # "festivalLockscreenEnabled":Z
    .end local v1    # "festivalMasterEnabled":Z
    :cond_0
    move v1, v3

    .line 439
    goto :goto_0

    .restart local v1    # "festivalMasterEnabled":Z
    :cond_1
    move v0, v3

    .line 441
    goto :goto_1

    .restart local v0    # "festivalLockscreenEnabled":Z
    :cond_2
    move v2, v3

    .line 446
    goto :goto_2
.end method

.method private updateAnalogTime()V
    .locals 14

    .prologue
    const/high16 v5, 0x42700000    # 60.0f

    const/high16 v4, 0x3f000000    # 0.5f

    const/4 v3, 0x1

    .line 368
    iget-object v0, p0, Lcom/sec/android/cover/sviewcover/stylizedclock/SViewCoverStylizedClockView;->mCalendar:Ljava/util/Calendar;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v12

    invoke-virtual {v0, v12, v13}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 371
    iget-object v0, p0, Lcom/sec/android/cover/sviewcover/stylizedclock/SViewCoverStylizedClockView;->mCalendar:Ljava/util/Calendar;

    const/16 v2, 0xa

    invoke-virtual {v0, v2}, Ljava/util/Calendar;->get(I)I

    move-result v7

    .line 372
    .local v7, "hour":I
    iget-object v0, p0, Lcom/sec/android/cover/sviewcover/stylizedclock/SViewCoverStylizedClockView;->mCalendar:Ljava/util/Calendar;

    const/16 v2, 0xc

    invoke-virtual {v0, v2}, Ljava/util/Calendar;->get(I)I

    move-result v9

    .line 373
    .local v9, "minutes":I
    iget-object v0, p0, Lcom/sec/android/cover/sviewcover/stylizedclock/SViewCoverStylizedClockView;->mCalendar:Ljava/util/Calendar;

    const/16 v2, 0xd

    invoke-virtual {v0, v2}, Ljava/util/Calendar;->get(I)I

    move-result v11

    .line 375
    .local v11, "seconds":I
    mul-int/lit8 v0, v7, 0x3c

    add-int/2addr v0, v9

    mul-int/lit16 v0, v0, 0x168

    int-to-float v0, v0

    const/high16 v2, 0x44340000    # 720.0f

    div-float v8, v0, v2

    .line 376
    .local v8, "hoursAngle":F
    mul-int/lit16 v0, v9, 0x168

    int-to-float v0, v0

    div-float v10, v0, v5

    .line 377
    .local v10, "minutesAngle":F
    mul-int/lit16 v0, v11, 0x168

    int-to-float v0, v0

    div-float v1, v0, v5

    .line 380
    .local v1, "secondsAngle":F
    iget-object v0, p0, Lcom/sec/android/cover/sviewcover/stylizedclock/SViewCoverStylizedClockView;->mPointerHoursIV:Landroid/widget/ImageView;

    if-eqz v0, :cond_0

    .line 381
    iget-object v0, p0, Lcom/sec/android/cover/sviewcover/stylizedclock/SViewCoverStylizedClockView;->mPointerHoursIV:Landroid/widget/ImageView;

    invoke-virtual {v0, v8}, Landroid/widget/ImageView;->setRotation(F)V

    .line 383
    :cond_0
    iget-object v0, p0, Lcom/sec/android/cover/sviewcover/stylizedclock/SViewCoverStylizedClockView;->mPointerMinutesIV:Landroid/widget/ImageView;

    if-eqz v0, :cond_1

    .line 384
    iget-object v0, p0, Lcom/sec/android/cover/sviewcover/stylizedclock/SViewCoverStylizedClockView;->mPointerMinutesIV:Landroid/widget/ImageView;

    invoke-virtual {v0, v10}, Landroid/widget/ImageView;->setRotation(F)V

    .line 391
    :cond_1
    new-instance v0, Landroid/view/animation/RotateAnimation;

    const v2, 0x3f333333    # 0.7f

    add-float/2addr v2, v1

    move v5, v3

    move v6, v4

    invoke-direct/range {v0 .. v6}, Landroid/view/animation/RotateAnimation;-><init>(FFIFIF)V

    iput-object v0, p0, Lcom/sec/android/cover/sviewcover/stylizedclock/SViewCoverStylizedClockView;->mRotateAnim:Landroid/view/animation/RotateAnimation;

    .line 393
    iget-object v0, p0, Lcom/sec/android/cover/sviewcover/stylizedclock/SViewCoverStylizedClockView;->mRotateAnim:Landroid/view/animation/RotateAnimation;

    new-instance v2, Landroid/view/animation/AccelerateInterpolator;

    invoke-direct {v2}, Landroid/view/animation/AccelerateInterpolator;-><init>()V

    invoke-virtual {v0, v2}, Landroid/view/animation/RotateAnimation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 394
    iget-object v0, p0, Lcom/sec/android/cover/sviewcover/stylizedclock/SViewCoverStylizedClockView;->mRotateAnim:Landroid/view/animation/RotateAnimation;

    const-wide/16 v4, 0xa

    invoke-virtual {v0, v4, v5}, Landroid/view/animation/RotateAnimation;->setDuration(J)V

    .line 395
    iget-object v0, p0, Lcom/sec/android/cover/sviewcover/stylizedclock/SViewCoverStylizedClockView;->mRotateAnim:Landroid/view/animation/RotateAnimation;

    invoke-virtual {v0, v3}, Landroid/view/animation/RotateAnimation;->setFillEnabled(Z)V

    .line 396
    iget-object v0, p0, Lcom/sec/android/cover/sviewcover/stylizedclock/SViewCoverStylizedClockView;->mRotateAnim:Landroid/view/animation/RotateAnimation;

    invoke-virtual {v0, v3}, Landroid/view/animation/RotateAnimation;->setFillAfter(Z)V

    .line 397
    iget-object v0, p0, Lcom/sec/android/cover/sviewcover/stylizedclock/SViewCoverStylizedClockView;->mRotateAnim:Landroid/view/animation/RotateAnimation;

    invoke-virtual {v0, v3}, Landroid/view/animation/RotateAnimation;->setRepeatCount(I)V

    .line 398
    iget-object v0, p0, Lcom/sec/android/cover/sviewcover/stylizedclock/SViewCoverStylizedClockView;->mRotateAnim:Landroid/view/animation/RotateAnimation;

    const/4 v2, 0x2

    invoke-virtual {v0, v2}, Landroid/view/animation/RotateAnimation;->setRepeatMode(I)V

    .line 399
    iget-object v0, p0, Lcom/sec/android/cover/sviewcover/stylizedclock/SViewCoverStylizedClockView;->mPointerSecondsIV:Landroid/widget/ImageView;

    iget-object v2, p0, Lcom/sec/android/cover/sviewcover/stylizedclock/SViewCoverStylizedClockView;->mRotateAnim:Landroid/view/animation/RotateAnimation;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->startAnimation(Landroid/view/animation/Animation;)V

    .line 400
    iget-object v0, p0, Lcom/sec/android/cover/sviewcover/stylizedclock/SViewCoverStylizedClockView;->mPointerSecondsIV:Landroid/widget/ImageView;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 401
    return-void
.end method

.method private updateDateTime()V
    .locals 6

    .prologue
    .line 405
    iget-object v2, p0, Lcom/sec/android/cover/sviewcover/stylizedclock/SViewCoverStylizedClockView;->mCalendar:Ljava/util/Calendar;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-virtual {v2, v4, v5}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 406
    iget-object v2, p0, Lcom/sec/android/cover/sviewcover/stylizedclock/SViewCoverStylizedClockView;->mDatePattern:Ljava/lang/CharSequence;

    if-nez v2, :cond_0

    .line 407
    iget-object v2, p0, Lcom/sec/android/cover/sviewcover/stylizedclock/SViewCoverStylizedClockView;->mContext:Landroid/content/Context;

    const/4 v3, 0x0

    invoke-static {v2, v3}, Lcom/sec/android/cover/CoverUtils;->getDateFormat(Landroid/content/Context;Z)Ljava/lang/CharSequence;

    move-result-object v2

    iput-object v2, p0, Lcom/sec/android/cover/sviewcover/stylizedclock/SViewCoverStylizedClockView;->mDatePattern:Ljava/lang/CharSequence;

    .line 410
    :cond_0
    iget-object v2, p0, Lcom/sec/android/cover/sviewcover/stylizedclock/SViewCoverStylizedClockView;->mDatePattern:Ljava/lang/CharSequence;

    iget-object v3, p0, Lcom/sec/android/cover/sviewcover/stylizedclock/SViewCoverStylizedClockView;->mCalendar:Ljava/util/Calendar;

    invoke-static {v2, v3}, Landroid/text/format/DateFormat;->format(Ljava/lang/CharSequence;Ljava/util/Calendar;)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    .line 411
    .local v0, "date":Ljava/lang/String;
    const-string v2, "d"

    iget-object v3, p0, Lcom/sec/android/cover/sviewcover/stylizedclock/SViewCoverStylizedClockView;->mCalendar:Ljava/util/Calendar;

    invoke-static {v2, v3}, Landroid/text/format/DateFormat;->format(Ljava/lang/CharSequence;Ljava/util/Calendar;)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    .line 414
    .local v1, "day":Ljava/lang/String;
    iget-object v2, p0, Lcom/sec/android/cover/sviewcover/stylizedclock/SViewCoverStylizedClockView;->mDateTV:Landroid/widget/TextView;

    if-eqz v2, :cond_1

    .line 415
    iget-object v2, p0, Lcom/sec/android/cover/sviewcover/stylizedclock/SViewCoverStylizedClockView;->mDateTV:Landroid/widget/TextView;

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 417
    :cond_1
    iget-object v2, p0, Lcom/sec/android/cover/sviewcover/stylizedclock/SViewCoverStylizedClockView;->mDayTV:Landroid/widget/TextView;

    if-eqz v2, :cond_2

    .line 418
    iget-object v2, p0, Lcom/sec/android/cover/sviewcover/stylizedclock/SViewCoverStylizedClockView;->mDayTV:Landroid/widget/TextView;

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 420
    :cond_2
    return-void
.end method

.method private updateDigitalTime()V
    .locals 10

    .prologue
    const/16 v9, 0x8

    const/4 v8, 0x0

    .line 303
    iget-object v5, p0, Lcom/sec/android/cover/sviewcover/stylizedclock/SViewCoverStylizedClockView;->mCalendar:Ljava/util/Calendar;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    invoke-virtual {v5, v6, v7}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 305
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v2

    .line 310
    .local v2, "locale":Ljava/util/Locale;
    const-string v5, "mm"

    iget-object v6, p0, Lcom/sec/android/cover/sviewcover/stylizedclock/SViewCoverStylizedClockView;->mCalendar:Ljava/util/Calendar;

    invoke-static {v5, v6}, Landroid/text/format/DateFormat;->format(Ljava/lang/CharSequence;Ljava/util/Calendar;)Ljava/lang/CharSequence;

    move-result-object v5

    invoke-interface {v5}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v3

    .line 311
    .local v3, "minutes":Ljava/lang/String;
    const-string v5, "aa"

    iget-object v6, p0, Lcom/sec/android/cover/sviewcover/stylizedclock/SViewCoverStylizedClockView;->mCalendar:Ljava/util/Calendar;

    invoke-static {v5, v6}, Landroid/text/format/DateFormat;->format(Ljava/lang/CharSequence;Ljava/util/Calendar;)Ljava/lang/CharSequence;

    move-result-object v5

    invoke-interface {v5}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    .line 312
    .local v0, "amPm":Ljava/lang/String;
    iget-boolean v5, p0, Lcom/sec/android/cover/sviewcover/stylizedclock/SViewCoverStylizedClockView;->mIs24HTime:Z

    if-eqz v5, :cond_8

    .line 313
    const-string v5, "kk:mm"

    iget-object v6, p0, Lcom/sec/android/cover/sviewcover/stylizedclock/SViewCoverStylizedClockView;->mCalendar:Ljava/util/Calendar;

    invoke-static {v5, v6}, Landroid/text/format/DateFormat;->format(Ljava/lang/CharSequence;Ljava/util/Calendar;)Ljava/lang/CharSequence;

    move-result-object v5

    invoke-interface {v5}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v4

    .line 314
    .local v4, "time":Ljava/lang/String;
    const-string v5, "kk"

    iget-object v6, p0, Lcom/sec/android/cover/sviewcover/stylizedclock/SViewCoverStylizedClockView;->mCalendar:Ljava/util/Calendar;

    invoke-static {v5, v6}, Landroid/text/format/DateFormat;->format(Ljava/lang/CharSequence;Ljava/util/Calendar;)Ljava/lang/CharSequence;

    move-result-object v5

    invoke-interface {v5}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    .line 316
    .local v1, "hours":Ljava/lang/String;
    iget-object v5, p0, Lcom/sec/android/cover/sviewcover/stylizedclock/SViewCoverStylizedClockView;->mAmPmTV:Landroid/widget/TextView;

    if-eqz v5, :cond_0

    .line 317
    iget-object v5, p0, Lcom/sec/android/cover/sviewcover/stylizedclock/SViewCoverStylizedClockView;->mAmPmTV:Landroid/widget/TextView;

    invoke-virtual {v5, v9}, Landroid/widget/TextView;->setVisibility(I)V

    .line 319
    :cond_0
    iget-object v5, p0, Lcom/sec/android/cover/sviewcover/stylizedclock/SViewCoverStylizedClockView;->mAmPmKrTV:Landroid/widget/TextView;

    if-eqz v5, :cond_1

    .line 320
    iget-object v5, p0, Lcom/sec/android/cover/sviewcover/stylizedclock/SViewCoverStylizedClockView;->mAmPmKrTV:Landroid/widget/TextView;

    invoke-virtual {v5, v9}, Landroid/widget/TextView;->setVisibility(I)V

    .line 336
    :cond_1
    :goto_0
    iget-object v5, p0, Lcom/sec/android/cover/sviewcover/stylizedclock/SViewCoverStylizedClockView;->mMinutesTV:Landroid/widget/TextView;

    if-eqz v5, :cond_2

    .line 337
    iget-object v5, p0, Lcom/sec/android/cover/sviewcover/stylizedclock/SViewCoverStylizedClockView;->mMinutesTV:Landroid/widget/TextView;

    invoke-virtual {v5, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 339
    :cond_2
    iget-object v5, p0, Lcom/sec/android/cover/sviewcover/stylizedclock/SViewCoverStylizedClockView;->mHoursTV:Landroid/widget/TextView;

    if-eqz v5, :cond_3

    .line 340
    iget-object v5, p0, Lcom/sec/android/cover/sviewcover/stylizedclock/SViewCoverStylizedClockView;->mHoursTV:Landroid/widget/TextView;

    invoke-virtual {v5, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 342
    :cond_3
    iget-object v5, p0, Lcom/sec/android/cover/sviewcover/stylizedclock/SViewCoverStylizedClockView;->mTimeTV:Landroid/widget/TextView;

    if-eqz v5, :cond_4

    .line 343
    iget-object v5, p0, Lcom/sec/android/cover/sviewcover/stylizedclock/SViewCoverStylizedClockView;->mTimeTV:Landroid/widget/TextView;

    invoke-virtual {v5, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 345
    :cond_4
    iget-boolean v5, p0, Lcom/sec/android/cover/sviewcover/stylizedclock/SViewCoverStylizedClockView;->mIs24HTime:Z

    if-nez v5, :cond_7

    .line 346
    sget-object v5, Ljava/util/Locale;->KOREA:Ljava/util/Locale;

    invoke-virtual {v5, v2}, Ljava/util/Locale;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_5

    sget-object v5, Ljava/util/Locale;->KOREAN:Ljava/util/Locale;

    invoke-virtual {v5, v2}, Ljava/util/Locale;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_a

    .line 347
    :cond_5
    iget-object v5, p0, Lcom/sec/android/cover/sviewcover/stylizedclock/SViewCoverStylizedClockView;->mAmPmKrTV:Landroid/widget/TextView;

    if-eqz v5, :cond_7

    .line 348
    iget-object v5, p0, Lcom/sec/android/cover/sviewcover/stylizedclock/SViewCoverStylizedClockView;->mAmPmTV:Landroid/widget/TextView;

    if-eqz v5, :cond_6

    .line 349
    iget-object v5, p0, Lcom/sec/android/cover/sviewcover/stylizedclock/SViewCoverStylizedClockView;->mAmPmTV:Landroid/widget/TextView;

    invoke-virtual {v5, v9}, Landroid/widget/TextView;->setVisibility(I)V

    .line 351
    :cond_6
    iget-object v5, p0, Lcom/sec/android/cover/sviewcover/stylizedclock/SViewCoverStylizedClockView;->mAmPmKrTV:Landroid/widget/TextView;

    invoke-virtual {v5, v8}, Landroid/widget/TextView;->setVisibility(I)V

    .line 352
    iget-object v5, p0, Lcom/sec/android/cover/sviewcover/stylizedclock/SViewCoverStylizedClockView;->mAmPmKrTV:Landroid/widget/TextView;

    invoke-virtual {v5, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 364
    :cond_7
    :goto_1
    return-void

    .line 323
    .end local v1    # "hours":Ljava/lang/String;
    .end local v4    # "time":Ljava/lang/String;
    :cond_8
    const-string v5, "hh:mm"

    iget-object v6, p0, Lcom/sec/android/cover/sviewcover/stylizedclock/SViewCoverStylizedClockView;->mCalendar:Ljava/util/Calendar;

    invoke-static {v5, v6}, Landroid/text/format/DateFormat;->format(Ljava/lang/CharSequence;Ljava/util/Calendar;)Ljava/lang/CharSequence;

    move-result-object v5

    invoke-interface {v5}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v4

    .line 324
    .restart local v4    # "time":Ljava/lang/String;
    const-string v5, "hh"

    iget-object v6, p0, Lcom/sec/android/cover/sviewcover/stylizedclock/SViewCoverStylizedClockView;->mCalendar:Ljava/util/Calendar;

    invoke-static {v5, v6}, Landroid/text/format/DateFormat;->format(Ljava/lang/CharSequence;Ljava/util/Calendar;)Ljava/lang/CharSequence;

    move-result-object v5

    invoke-interface {v5}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    .line 327
    .restart local v1    # "hours":Ljava/lang/String;
    iget-object v5, p0, Lcom/sec/android/cover/sviewcover/stylizedclock/SViewCoverStylizedClockView;->mAmPmTV:Landroid/widget/TextView;

    if-eqz v5, :cond_9

    .line 328
    iget-object v5, p0, Lcom/sec/android/cover/sviewcover/stylizedclock/SViewCoverStylizedClockView;->mAmPmTV:Landroid/widget/TextView;

    invoke-virtual {v5, v8}, Landroid/widget/TextView;->setVisibility(I)V

    .line 330
    :cond_9
    iget-object v5, p0, Lcom/sec/android/cover/sviewcover/stylizedclock/SViewCoverStylizedClockView;->mAmPmKrTV:Landroid/widget/TextView;

    if-eqz v5, :cond_1

    .line 331
    iget-object v5, p0, Lcom/sec/android/cover/sviewcover/stylizedclock/SViewCoverStylizedClockView;->mAmPmKrTV:Landroid/widget/TextView;

    invoke-virtual {v5, v8}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0

    .line 355
    :cond_a
    iget-object v5, p0, Lcom/sec/android/cover/sviewcover/stylizedclock/SViewCoverStylizedClockView;->mAmPmTV:Landroid/widget/TextView;

    if-eqz v5, :cond_7

    .line 356
    iget-object v5, p0, Lcom/sec/android/cover/sviewcover/stylizedclock/SViewCoverStylizedClockView;->mAmPmKrTV:Landroid/widget/TextView;

    if-eqz v5, :cond_b

    .line 357
    iget-object v5, p0, Lcom/sec/android/cover/sviewcover/stylizedclock/SViewCoverStylizedClockView;->mAmPmKrTV:Landroid/widget/TextView;

    invoke-virtual {v5, v9}, Landroid/widget/TextView;->setVisibility(I)V

    .line 359
    :cond_b
    iget-object v5, p0, Lcom/sec/android/cover/sviewcover/stylizedclock/SViewCoverStylizedClockView;->mAmPmTV:Landroid/widget/TextView;

    invoke-virtual {v5, v8}, Landroid/widget/TextView;->setVisibility(I)V

    .line 360
    iget-object v5, p0, Lcom/sec/android/cover/sviewcover/stylizedclock/SViewCoverStylizedClockView;->mAmPmTV:Landroid/widget/TextView;

    invoke-virtual {v5, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1
.end method

.method private updateTime()V
    .locals 1

    .prologue
    .line 289
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/cover/sviewcover/stylizedclock/SViewCoverStylizedClockView;->mCalendar:Ljava/util/Calendar;

    .line 290
    iget-boolean v0, p0, Lcom/sec/android/cover/sviewcover/stylizedclock/SViewCoverStylizedClockView;->mUpdateDigitalTime:Z

    if-eqz v0, :cond_0

    .line 291
    invoke-direct {p0}, Lcom/sec/android/cover/sviewcover/stylizedclock/SViewCoverStylizedClockView;->updateDigitalTime()V

    .line 293
    :cond_0
    iget-boolean v0, p0, Lcom/sec/android/cover/sviewcover/stylizedclock/SViewCoverStylizedClockView;->mUpdateAnalogTime:Z

    if-eqz v0, :cond_1

    .line 294
    invoke-direct {p0}, Lcom/sec/android/cover/sviewcover/stylizedclock/SViewCoverStylizedClockView;->updateAnalogTime()V

    .line 296
    :cond_1
    iget-boolean v0, p0, Lcom/sec/android/cover/sviewcover/stylizedclock/SViewCoverStylizedClockView;->mUpdateDateTime:Z

    if-eqz v0, :cond_2

    .line 297
    invoke-direct {p0}, Lcom/sec/android/cover/sviewcover/stylizedclock/SViewCoverStylizedClockView;->updateDateTime()V

    .line 299
    :cond_2
    return-void
.end method


# virtual methods
.method protected onAttachedToWindow()V
    .locals 6

    .prologue
    .line 175
    invoke-super {p0}, Landroid/widget/LinearLayout;->onAttachedToWindow()V

    .line 176
    iget-object v0, p0, Lcom/sec/android/cover/sviewcover/stylizedclock/SViewCoverStylizedClockView;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/text/format/DateFormat;->is24HourFormat(Landroid/content/Context;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/sec/android/cover/sviewcover/stylizedclock/SViewCoverStylizedClockView;->mIs24HTime:Z

    .line 177
    invoke-virtual {p0}, Lcom/sec/android/cover/sviewcover/stylizedclock/SViewCoverStylizedClockView;->updateStyle()V

    .line 179
    iget-object v0, p0, Lcom/sec/android/cover/sviewcover/stylizedclock/SViewCoverStylizedClockView;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/sec/android/cover/monitor/CoverUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/sec/android/cover/monitor/CoverUpdateMonitor;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/cover/sviewcover/stylizedclock/SViewCoverStylizedClockView;->mUpdateMonitorCallback:Lcom/sec/android/cover/monitor/CoverUpdateMonitorCallback;

    invoke-virtual {v0, v1}, Lcom/sec/android/cover/monitor/CoverUpdateMonitor;->registerCallback(Lcom/sec/android/cover/monitor/CoverUpdateMonitorCallback;)V

    .line 181
    iget-object v0, p0, Lcom/sec/android/cover/sviewcover/stylizedclock/SViewCoverStylizedClockView;->mCounter:Lcom/sec/android/cover/sviewcover/stylizedclock/SViewCoverStylizedClockView$Counter;

    if-eqz v0, :cond_0

    .line 182
    iget-object v0, p0, Lcom/sec/android/cover/sviewcover/stylizedclock/SViewCoverStylizedClockView;->mCounter:Lcom/sec/android/cover/sviewcover/stylizedclock/SViewCoverStylizedClockView$Counter;

    invoke-virtual {v0}, Lcom/sec/android/cover/sviewcover/stylizedclock/SViewCoverStylizedClockView$Counter;->cancel()V

    .line 184
    :cond_0
    new-instance v0, Lcom/sec/android/cover/sviewcover/stylizedclock/SViewCoverStylizedClockView$Counter;

    const-wide/32 v2, 0xea60

    const-wide/16 v4, 0x3e8

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/sec/android/cover/sviewcover/stylizedclock/SViewCoverStylizedClockView$Counter;-><init>(Lcom/sec/android/cover/sviewcover/stylizedclock/SViewCoverStylizedClockView;JJ)V

    iput-object v0, p0, Lcom/sec/android/cover/sviewcover/stylizedclock/SViewCoverStylizedClockView;->mCounter:Lcom/sec/android/cover/sviewcover/stylizedclock/SViewCoverStylizedClockView$Counter;

    .line 185
    iget-object v0, p0, Lcom/sec/android/cover/sviewcover/stylizedclock/SViewCoverStylizedClockView;->mCounter:Lcom/sec/android/cover/sviewcover/stylizedclock/SViewCoverStylizedClockView$Counter;

    invoke-virtual {v0}, Lcom/sec/android/cover/sviewcover/stylizedclock/SViewCoverStylizedClockView$Counter;->start()Landroid/os/CountDownTimer;

    .line 186
    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 2

    .prologue
    .line 196
    invoke-super {p0}, Landroid/widget/LinearLayout;->onDetachedFromWindow()V

    .line 198
    iget-object v0, p0, Lcom/sec/android/cover/sviewcover/stylizedclock/SViewCoverStylizedClockView;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/sec/android/cover/monitor/CoverUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/sec/android/cover/monitor/CoverUpdateMonitor;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/cover/sviewcover/stylizedclock/SViewCoverStylizedClockView;->mUpdateMonitorCallback:Lcom/sec/android/cover/monitor/CoverUpdateMonitorCallback;

    invoke-virtual {v0, v1}, Lcom/sec/android/cover/monitor/CoverUpdateMonitor;->unregisterCallback(Lcom/sec/android/cover/monitor/CoverUpdateMonitorCallback;)V

    .line 200
    iget-object v0, p0, Lcom/sec/android/cover/sviewcover/stylizedclock/SViewCoverStylizedClockView;->mCounter:Lcom/sec/android/cover/sviewcover/stylizedclock/SViewCoverStylizedClockView$Counter;

    if-eqz v0, :cond_0

    .line 201
    iget-object v0, p0, Lcom/sec/android/cover/sviewcover/stylizedclock/SViewCoverStylizedClockView;->mCounter:Lcom/sec/android/cover/sviewcover/stylizedclock/SViewCoverStylizedClockView$Counter;

    invoke-virtual {v0}, Lcom/sec/android/cover/sviewcover/stylizedclock/SViewCoverStylizedClockView$Counter;->cancel()V

    .line 203
    :cond_0
    return-void
.end method

.method public onPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V
    .locals 1
    .param p1, "event"    # Landroid/view/accessibility/AccessibilityEvent;

    .prologue
    .line 190
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->onPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V

    .line 191
    invoke-direct {p0}, Lcom/sec/android/cover/sviewcover/stylizedclock/SViewCoverStylizedClockView;->getTTSstylizedclock()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityEvent;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 192
    return-void
.end method

.method public final updateStyle()V
    .locals 9

    .prologue
    const/4 v5, 0x0

    const/4 v6, 0x1

    .line 206
    const-string v4, "SViewCoverStylizedClockView"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Stylized clock style index = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lcom/sec/android/cover/sviewcover/stylizedclock/SViewCoverStylizedClockView;->mManager:Lcom/sec/android/cover/sviewcover/stylizedclock/SViewCoverStylizedClockManager;

    invoke-virtual {v8}, Lcom/sec/android/cover/sviewcover/stylizedclock/SViewCoverStylizedClockManager;->getCurrentStyleIndex()I

    move-result v8

    invoke-static {v8}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v4, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 208
    invoke-virtual {p0}, Lcom/sec/android/cover/sviewcover/stylizedclock/SViewCoverStylizedClockView;->removeAllViews()V

    .line 209
    iget-object v4, p0, Lcom/sec/android/cover/sviewcover/stylizedclock/SViewCoverStylizedClockView;->mManager:Lcom/sec/android/cover/sviewcover/stylizedclock/SViewCoverStylizedClockManager;

    invoke-virtual {v4}, Lcom/sec/android/cover/sviewcover/stylizedclock/SViewCoverStylizedClockManager;->getCurrentStyleResId()I

    move-result v3

    .line 210
    .local v3, "styleResId":I
    const/4 v4, -0x1

    if-eq v3, v4, :cond_5

    if-eqz v3, :cond_5

    .line 211
    iget-object v4, p0, Lcom/sec/android/cover/sviewcover/stylizedclock/SViewCoverStylizedClockView;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4, v3}, Landroid/content/res/Resources;->obtainTypedArray(I)Landroid/content/res/TypedArray;

    move-result-object v2

    .line 213
    .local v2, "style":Landroid/content/res/TypedArray;
    invoke-virtual {p0}, Lcom/sec/android/cover/sviewcover/stylizedclock/SViewCoverStylizedClockView;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v4

    iget-object v7, p0, Lcom/sec/android/cover/sviewcover/stylizedclock/SViewCoverStylizedClockView;->mManager:Lcom/sec/android/cover/sviewcover/stylizedclock/SViewCoverStylizedClockManager;

    invoke-virtual {v7}, Lcom/sec/android/cover/sviewcover/stylizedclock/SViewCoverStylizedClockManager;->getCurrentStyleLayoutId()I

    move-result v7

    invoke-virtual {v4, v7, p0, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 216
    sget v4, Lcom/sec/android/sviewcover/R$id;->clock_digital_minutes:I

    invoke-virtual {p0, v4}, Lcom/sec/android/cover/sviewcover/stylizedclock/SViewCoverStylizedClockView;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    iput-object v4, p0, Lcom/sec/android/cover/sviewcover/stylizedclock/SViewCoverStylizedClockView;->mMinutesTV:Landroid/widget/TextView;

    .line 217
    sget v4, Lcom/sec/android/sviewcover/R$id;->clock_digital_hours:I

    invoke-virtual {p0, v4}, Lcom/sec/android/cover/sviewcover/stylizedclock/SViewCoverStylizedClockView;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    iput-object v4, p0, Lcom/sec/android/cover/sviewcover/stylizedclock/SViewCoverStylizedClockView;->mHoursTV:Landroid/widget/TextView;

    .line 218
    sget v4, Lcom/sec/android/sviewcover/R$id;->clock_digital_time:I

    invoke-virtual {p0, v4}, Lcom/sec/android/cover/sviewcover/stylizedclock/SViewCoverStylizedClockView;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    iput-object v4, p0, Lcom/sec/android/cover/sviewcover/stylizedclock/SViewCoverStylizedClockView;->mTimeTV:Landroid/widget/TextView;

    .line 219
    sget v4, Lcom/sec/android/sviewcover/R$id;->clock_digital_ampm:I

    invoke-virtual {p0, v4}, Lcom/sec/android/cover/sviewcover/stylizedclock/SViewCoverStylizedClockView;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    iput-object v4, p0, Lcom/sec/android/cover/sviewcover/stylizedclock/SViewCoverStylizedClockView;->mAmPmTV:Landroid/widget/TextView;

    .line 220
    sget v4, Lcom/sec/android/sviewcover/R$id;->clock_digital_ampm_kr:I

    invoke-virtual {p0, v4}, Lcom/sec/android/cover/sviewcover/stylizedclock/SViewCoverStylizedClockView;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    iput-object v4, p0, Lcom/sec/android/cover/sviewcover/stylizedclock/SViewCoverStylizedClockView;->mAmPmKrTV:Landroid/widget/TextView;

    .line 222
    sget v4, Lcom/sec/android/sviewcover/R$id;->clock_day:I

    invoke-virtual {p0, v4}, Lcom/sec/android/cover/sviewcover/stylizedclock/SViewCoverStylizedClockView;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    iput-object v4, p0, Lcom/sec/android/cover/sviewcover/stylizedclock/SViewCoverStylizedClockView;->mDayTV:Landroid/widget/TextView;

    .line 223
    sget v4, Lcom/sec/android/sviewcover/R$id;->clock_date:I

    invoke-virtual {p0, v4}, Lcom/sec/android/cover/sviewcover/stylizedclock/SViewCoverStylizedClockView;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    iput-object v4, p0, Lcom/sec/android/cover/sviewcover/stylizedclock/SViewCoverStylizedClockView;->mDateTV:Landroid/widget/TextView;

    .line 225
    sget v4, Lcom/sec/android/sviewcover/R$id;->clock_analog_pointer_hours:I

    invoke-virtual {p0, v4}, Lcom/sec/android/cover/sviewcover/stylizedclock/SViewCoverStylizedClockView;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/ImageView;

    iput-object v4, p0, Lcom/sec/android/cover/sviewcover/stylizedclock/SViewCoverStylizedClockView;->mPointerHoursIV:Landroid/widget/ImageView;

    .line 226
    sget v4, Lcom/sec/android/sviewcover/R$id;->clock_analog_pointer_minutes:I

    invoke-virtual {p0, v4}, Lcom/sec/android/cover/sviewcover/stylizedclock/SViewCoverStylizedClockView;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/ImageView;

    iput-object v4, p0, Lcom/sec/android/cover/sviewcover/stylizedclock/SViewCoverStylizedClockView;->mPointerMinutesIV:Landroid/widget/ImageView;

    .line 227
    sget v4, Lcom/sec/android/sviewcover/R$id;->clock_analog_pointer_seconds:I

    invoke-virtual {p0, v4}, Lcom/sec/android/cover/sviewcover/stylizedclock/SViewCoverStylizedClockView;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/ImageView;

    iput-object v4, p0, Lcom/sec/android/cover/sviewcover/stylizedclock/SViewCoverStylizedClockView;->mPointerSecondsIV:Landroid/widget/ImageView;

    .line 229
    invoke-direct {p0}, Lcom/sec/android/cover/sviewcover/stylizedclock/SViewCoverStylizedClockView;->isFestivalEffectEnabled()Z

    move-result v4

    iput-boolean v4, p0, Lcom/sec/android/cover/sviewcover/stylizedclock/SViewCoverStylizedClockView;->mIsFestivalEnabled:Z

    .line 230
    sget v4, Lcom/sec/android/sviewcover/R$id;->festival_icon:I

    invoke-virtual {p0, v4}, Lcom/sec/android/cover/sviewcover/stylizedclock/SViewCoverStylizedClockView;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/ImageView;

    iput-object v4, p0, Lcom/sec/android/cover/sviewcover/stylizedclock/SViewCoverStylizedClockView;->mFestivalIcon:Landroid/widget/ImageView;

    .line 231
    iget-object v4, p0, Lcom/sec/android/cover/sviewcover/stylizedclock/SViewCoverStylizedClockView;->mContext:Landroid/content/Context;

    invoke-static {v4}, Lcom/sec/android/cover/manager/CoverDatabaseManager;->getInstance(Landroid/content/Context;)Lcom/sec/android/cover/manager/CoverDatabaseManager;

    move-result-object v4

    const-string v7, "FestivalList"

    invoke-virtual {v4, v7}, Lcom/sec/android/cover/manager/CoverDatabaseManager;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 234
    .local v1, "festivalString":Ljava/lang/String;
    iget-object v4, p0, Lcom/sec/android/cover/sviewcover/stylizedclock/SViewCoverStylizedClockView;->mFestivalIcon:Landroid/widget/ImageView;

    if-eqz v4, :cond_0

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 235
    iget-object v4, p0, Lcom/sec/android/cover/sviewcover/stylizedclock/SViewCoverStylizedClockView;->mContext:Landroid/content/Context;

    invoke-static {v4, v1}, Lcom/sec/android/cover/CoverUtils;->getFestivalIcon(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    .line 236
    .local v0, "festivalIcon":I
    if-eqz v0, :cond_6

    iget-boolean v4, p0, Lcom/sec/android/cover/sviewcover/stylizedclock/SViewCoverStylizedClockView;->mIsFestivalEnabled:Z

    if-ne v4, v6, :cond_6

    .line 237
    iget-object v4, p0, Lcom/sec/android/cover/sviewcover/stylizedclock/SViewCoverStylizedClockView;->mFestivalIcon:Landroid/widget/ImageView;

    invoke-virtual {v4, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 238
    iget-object v4, p0, Lcom/sec/android/cover/sviewcover/stylizedclock/SViewCoverStylizedClockView;->mFestivalIcon:Landroid/widget/ImageView;

    invoke-virtual {v4, v5}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 246
    .end local v0    # "festivalIcon":I
    :cond_0
    :goto_0
    iget-object v4, p0, Lcom/sec/android/cover/sviewcover/stylizedclock/SViewCoverStylizedClockView;->mMinutesTV:Landroid/widget/TextView;

    if-nez v4, :cond_1

    iget-object v4, p0, Lcom/sec/android/cover/sviewcover/stylizedclock/SViewCoverStylizedClockView;->mHoursTV:Landroid/widget/TextView;

    if-nez v4, :cond_1

    iget-object v4, p0, Lcom/sec/android/cover/sviewcover/stylizedclock/SViewCoverStylizedClockView;->mTimeTV:Landroid/widget/TextView;

    if-nez v4, :cond_1

    iget-object v4, p0, Lcom/sec/android/cover/sviewcover/stylizedclock/SViewCoverStylizedClockView;->mAmPmTV:Landroid/widget/TextView;

    if-nez v4, :cond_1

    iget-object v4, p0, Lcom/sec/android/cover/sviewcover/stylizedclock/SViewCoverStylizedClockView;->mAmPmKrTV:Landroid/widget/TextView;

    if-eqz v4, :cond_7

    :cond_1
    move v4, v6

    :goto_1
    iput-boolean v4, p0, Lcom/sec/android/cover/sviewcover/stylizedclock/SViewCoverStylizedClockView;->mUpdateDigitalTime:Z

    .line 248
    iget-object v4, p0, Lcom/sec/android/cover/sviewcover/stylizedclock/SViewCoverStylizedClockView;->mDayTV:Landroid/widget/TextView;

    if-nez v4, :cond_2

    iget-object v4, p0, Lcom/sec/android/cover/sviewcover/stylizedclock/SViewCoverStylizedClockView;->mDateTV:Landroid/widget/TextView;

    if-eqz v4, :cond_8

    :cond_2
    move v4, v6

    :goto_2
    iput-boolean v4, p0, Lcom/sec/android/cover/sviewcover/stylizedclock/SViewCoverStylizedClockView;->mUpdateDateTime:Z

    .line 249
    iget-object v4, p0, Lcom/sec/android/cover/sviewcover/stylizedclock/SViewCoverStylizedClockView;->mPointerHoursIV:Landroid/widget/ImageView;

    if-nez v4, :cond_3

    iget-object v4, p0, Lcom/sec/android/cover/sviewcover/stylizedclock/SViewCoverStylizedClockView;->mPointerMinutesIV:Landroid/widget/ImageView;

    if-nez v4, :cond_3

    iget-object v4, p0, Lcom/sec/android/cover/sviewcover/stylizedclock/SViewCoverStylizedClockView;->mPointerSecondsIV:Landroid/widget/ImageView;

    if-eqz v4, :cond_4

    :cond_3
    move v5, v6

    :cond_4
    iput-boolean v5, p0, Lcom/sec/android/cover/sviewcover/stylizedclock/SViewCoverStylizedClockView;->mUpdateAnalogTime:Z

    .line 252
    invoke-virtual {v2}, Landroid/content/res/TypedArray;->recycle()V

    .line 255
    .end local v1    # "festivalString":Ljava/lang/String;
    .end local v2    # "style":Landroid/content/res/TypedArray;
    :cond_5
    invoke-direct {p0}, Lcom/sec/android/cover/sviewcover/stylizedclock/SViewCoverStylizedClockView;->getTTSstylizedclock()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v4}, Lcom/sec/android/cover/sviewcover/stylizedclock/SViewCoverStylizedClockView;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 256
    invoke-direct {p0}, Lcom/sec/android/cover/sviewcover/stylizedclock/SViewCoverStylizedClockView;->updateTime()V

    .line 257
    return-void

    .line 240
    .restart local v0    # "festivalIcon":I
    .restart local v1    # "festivalString":Ljava/lang/String;
    .restart local v2    # "style":Landroid/content/res/TypedArray;
    :cond_6
    iget-object v4, p0, Lcom/sec/android/cover/sviewcover/stylizedclock/SViewCoverStylizedClockView;->mFestivalIcon:Landroid/widget/ImageView;

    const/16 v7, 0x8

    invoke-virtual {v4, v7}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0

    .end local v0    # "festivalIcon":I
    :cond_7
    move v4, v5

    .line 246
    goto :goto_1

    :cond_8
    move v4, v5

    .line 248
    goto :goto_2
.end method
