.class public Lcom/sec/android/cover/sviewcover/widget/SViewCoverDualClockWidget;
.super Landroid/widget/LinearLayout;
.source "SViewCoverDualClockWidget.java"


# static fields
.field private static TAG:Ljava/lang/String;

.field private static mTimeFormat:Ljava/lang/String;


# instance fields
.field private final MSG_CLOCK_UPDATE:I

.field private mAmpmTypeface:Landroid/graphics/Typeface;

.field private mAutoHomeTimeZoneId:Ljava/lang/String;

.field private mClockHandler:Landroid/os/Handler;

.field private mContext:Landroid/content/Context;

.field private mDatePattern:Ljava/lang/CharSequence;

.field private mDayofWeek:Landroid/widget/TextView;

.field private mHomeAmPm:Landroid/widget/TextView;

.field private mHomeCalendar:Ljava/util/Calendar;

.field private mHomeClock:Landroid/widget/LinearLayout;

.field private mHomeClockRoot:Landroid/widget/LinearLayout;

.field private mHomeMonthandDay:Landroid/widget/TextView;

.field private mHomeRegionText:Landroid/widget/TextView;

.field private mHomeTime:Landroid/widget/TextView;

.field private mIs24HTime:Z

.field private mIsCover2:Z

.field private mIsDualClock:Z

.field private mRoamingAmPm:Landroid/widget/TextView;

.field private mRoamingCalendar:Ljava/util/Calendar;

.field private mRoamingClock:Landroid/widget/LinearLayout;

.field private mRoamingClockRoot:Landroid/widget/LinearLayout;

.field private mRoamingMonthandDay:Landroid/widget/TextView;

.field private mRoamingRegionText:Landroid/widget/TextView;

.field private mRoamingTime:Landroid/widget/TextView;

.field private mTTSDatePattern:Ljava/lang/CharSequence;

.field private mThemeFontPath:Ljava/lang/String;

.field private mUpdateMonitorCallback:Lcom/sec/android/cover/monitor/CoverUpdateMonitorCallback;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 33
    const-class v0, Lcom/sec/android/cover/sviewcover/widget/SViewCoverDualClockWidget;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/sec/android/cover/sviewcover/widget/SViewCoverDualClockWidget;->TAG:Ljava/lang/String;

    .line 37
    const-string v0, "h:mm"

    sput-object v0, Lcom/sec/android/cover/sviewcover/widget/SViewCoverDualClockWidget;->mTimeFormat:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 163
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 64
    iput-object v1, p0, Lcom/sec/android/cover/sviewcover/widget/SViewCoverDualClockWidget;->mAutoHomeTimeZoneId:Ljava/lang/String;

    .line 66
    const/16 v0, 0x12c2

    iput v0, p0, Lcom/sec/android/cover/sviewcover/widget/SViewCoverDualClockWidget;->MSG_CLOCK_UPDATE:I

    .line 69
    iput-boolean v2, p0, Lcom/sec/android/cover/sviewcover/widget/SViewCoverDualClockWidget;->mIsDualClock:Z

    .line 70
    iput-boolean v2, p0, Lcom/sec/android/cover/sviewcover/widget/SViewCoverDualClockWidget;->mIs24HTime:Z

    .line 74
    iput-object v1, p0, Lcom/sec/android/cover/sviewcover/widget/SViewCoverDualClockWidget;->mDatePattern:Ljava/lang/CharSequence;

    .line 75
    iput-object v1, p0, Lcom/sec/android/cover/sviewcover/widget/SViewCoverDualClockWidget;->mTTSDatePattern:Ljava/lang/CharSequence;

    .line 78
    iput-object v1, p0, Lcom/sec/android/cover/sviewcover/widget/SViewCoverDualClockWidget;->mThemeFontPath:Ljava/lang/String;

    .line 89
    new-instance v0, Lcom/sec/android/cover/sviewcover/widget/SViewCoverDualClockWidget$1;

    invoke-direct {v0, p0}, Lcom/sec/android/cover/sviewcover/widget/SViewCoverDualClockWidget$1;-><init>(Lcom/sec/android/cover/sviewcover/widget/SViewCoverDualClockWidget;)V

    iput-object v0, p0, Lcom/sec/android/cover/sviewcover/widget/SViewCoverDualClockWidget;->mUpdateMonitorCallback:Lcom/sec/android/cover/monitor/CoverUpdateMonitorCallback;

    .line 151
    new-instance v0, Lcom/sec/android/cover/sviewcover/widget/SViewCoverDualClockWidget$2;

    invoke-direct {v0, p0}, Lcom/sec/android/cover/sviewcover/widget/SViewCoverDualClockWidget$2;-><init>(Lcom/sec/android/cover/sviewcover/widget/SViewCoverDualClockWidget;)V

    iput-object v0, p0, Lcom/sec/android/cover/sviewcover/widget/SViewCoverDualClockWidget;->mClockHandler:Landroid/os/Handler;

    .line 164
    iput-object p1, p0, Lcom/sec/android/cover/sviewcover/widget/SViewCoverDualClockWidget;->mContext:Landroid/content/Context;

    .line 165
    invoke-direct {p0, p1}, Lcom/sec/android/cover/sviewcover/widget/SViewCoverDualClockWidget;->initClock(Landroid/content/Context;)V

    .line 166
    sget-object v0, Lcom/sec/android/cover/sviewcover/widget/SViewCoverDualClockWidget;->TAG:Ljava/lang/String;

    const-string v1, "DualClock()"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 167
    return-void
.end method

.method static synthetic access$000(Lcom/sec/android/cover/sviewcover/widget/SViewCoverDualClockWidget;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/sec/android/cover/sviewcover/widget/SViewCoverDualClockWidget;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 32
    invoke-direct {p0, p1}, Lcom/sec/android/cover/sviewcover/widget/SViewCoverDualClockWidget;->onThemeFontChanged(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$102(Lcom/sec/android/cover/sviewcover/widget/SViewCoverDualClockWidget;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/sec/android/cover/sviewcover/widget/SViewCoverDualClockWidget;
    .param p1, "x1"    # Z

    .prologue
    .line 32
    iput-boolean p1, p0, Lcom/sec/android/cover/sviewcover/widget/SViewCoverDualClockWidget;->mIs24HTime:Z

    return p1
.end method

.method static synthetic access$200(Lcom/sec/android/cover/sviewcover/widget/SViewCoverDualClockWidget;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/sec/android/cover/sviewcover/widget/SViewCoverDualClockWidget;

    .prologue
    .line 32
    iget-object v0, p0, Lcom/sec/android/cover/sviewcover/widget/SViewCoverDualClockWidget;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$300(Lcom/sec/android/cover/sviewcover/widget/SViewCoverDualClockWidget;)V
    .locals 0
    .param p0, "x0"    # Lcom/sec/android/cover/sviewcover/widget/SViewCoverDualClockWidget;

    .prologue
    .line 32
    invoke-direct {p0}, Lcom/sec/android/cover/sviewcover/widget/SViewCoverDualClockWidget;->onTimeChanged()V

    return-void
.end method

.method static synthetic access$402(Lcom/sec/android/cover/sviewcover/widget/SViewCoverDualClockWidget;Ljava/lang/CharSequence;)Ljava/lang/CharSequence;
    .locals 0
    .param p0, "x0"    # Lcom/sec/android/cover/sviewcover/widget/SViewCoverDualClockWidget;
    .param p1, "x1"    # Ljava/lang/CharSequence;

    .prologue
    .line 32
    iput-object p1, p0, Lcom/sec/android/cover/sviewcover/widget/SViewCoverDualClockWidget;->mTTSDatePattern:Ljava/lang/CharSequence;

    return-object p1
.end method

.method static synthetic access$502(Lcom/sec/android/cover/sviewcover/widget/SViewCoverDualClockWidget;Ljava/lang/CharSequence;)Ljava/lang/CharSequence;
    .locals 0
    .param p0, "x0"    # Lcom/sec/android/cover/sviewcover/widget/SViewCoverDualClockWidget;
    .param p1, "x1"    # Ljava/lang/CharSequence;

    .prologue
    .line 32
    iput-object p1, p0, Lcom/sec/android/cover/sviewcover/widget/SViewCoverDualClockWidget;->mDatePattern:Ljava/lang/CharSequence;

    return-object p1
.end method

.method static synthetic access$600(Lcom/sec/android/cover/sviewcover/widget/SViewCoverDualClockWidget;)Landroid/os/Handler;
    .locals 1
    .param p0, "x0"    # Lcom/sec/android/cover/sviewcover/widget/SViewCoverDualClockWidget;

    .prologue
    .line 32
    iget-object v0, p0, Lcom/sec/android/cover/sviewcover/widget/SViewCoverDualClockWidget;->mClockHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$700()Ljava/lang/String;
    .locals 1

    .prologue
    .line 32
    sget-object v0, Lcom/sec/android/cover/sviewcover/widget/SViewCoverDualClockWidget;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method private getAutoHomeTimezone(Landroid/content/Context;)Ljava/lang/String;
    .locals 5
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 492
    iget-object v2, p0, Lcom/sec/android/cover/sviewcover/widget/SViewCoverDualClockWidget;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/sec/android/cover/manager/CoverDatabaseManager;->getInstance(Landroid/content/Context;)Lcom/sec/android/cover/manager/CoverDatabaseManager;

    move-result-object v2

    const-string v3, "homecity_timezone"

    invoke-virtual {v2, v3}, Lcom/sec/android/cover/manager/CoverDatabaseManager;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 494
    .local v0, "autoHomeTimeZoneId":Ljava/lang/String;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 495
    :cond_0
    sget-object v2, Lcom/sec/android/cover/sviewcover/widget/SViewCoverDualClockWidget;->TAG:Ljava/lang/String;

    const-string v3, "set default timezone"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 497
    invoke-static {}, Lcom/sec/android/cover/FeatureUtils;->isKoreaModel()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 498
    const-string v0, "Asia/Seoul"

    .line 504
    :goto_0
    iget-object v2, p0, Lcom/sec/android/cover/sviewcover/widget/SViewCoverDualClockWidget;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/sec/android/cover/manager/CoverDatabaseManager;->getInstance(Landroid/content/Context;)Lcom/sec/android/cover/manager/CoverDatabaseManager;

    move-result-object v2

    const-string v3, "homecity_timezone"

    invoke-virtual {v2, v3, v0}, Lcom/sec/android/cover/manager/CoverDatabaseManager;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 505
    sget-object v2, Lcom/sec/android/cover/sviewcover/widget/SViewCoverDualClockWidget;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "set homecity_timezone: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 508
    :cond_1
    sget-object v2, Lcom/sec/android/cover/sviewcover/widget/SViewCoverDualClockWidget;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "setAutoHomeTimezone() - autoHomeTimeZoneId: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 509
    return-object v0

    .line 500
    :cond_2
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v1

    .line 501
    .local v1, "homeCalendar":Ljava/util/Calendar;
    invoke-virtual {v1}, Ljava/util/Calendar;->getTimeZone()Ljava/util/TimeZone;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/TimeZone;->getID()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method private initClock(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 170
    invoke-direct {p0, p1}, Lcom/sec/android/cover/sviewcover/widget/SViewCoverDualClockWidget;->getAutoHomeTimezone(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/cover/sviewcover/widget/SViewCoverDualClockWidget;->mAutoHomeTimeZoneId:Ljava/lang/String;

    .line 171
    iget-object v0, p0, Lcom/sec/android/cover/sviewcover/widget/SViewCoverDualClockWidget;->mAutoHomeTimeZoneId:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 172
    iget-object v0, p0, Lcom/sec/android/cover/sviewcover/widget/SViewCoverDualClockWidget;->mAutoHomeTimeZoneId:Ljava/lang/String;

    invoke-static {v0}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Calendar;->getInstance(Ljava/util/TimeZone;)Ljava/util/Calendar;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/cover/sviewcover/widget/SViewCoverDualClockWidget;->mHomeCalendar:Ljava/util/Calendar;

    .line 173
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sec/android/cover/sviewcover/widget/SViewCoverDualClockWidget;->mIsDualClock:Z

    .line 175
    :cond_0
    return-void
.end method

.method private onThemeFontChanged(Ljava/lang/String;)V
    .locals 1
    .param p1, "fontPath"    # Ljava/lang/String;

    .prologue
    .line 297
    invoke-static {}, Lcom/sec/android/cover/FeatureUtils;->isSupportElasticPlugin()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 298
    iget-object v0, p0, Lcom/sec/android/cover/sviewcover/widget/SViewCoverDualClockWidget;->mContext:Landroid/content/Context;

    invoke-static {v0, p1}, Lcom/sec/android/cover/CoverUtils;->setClockFontPath(Landroid/content/Context;Ljava/lang/String;)V

    .line 299
    iput-object p1, p0, Lcom/sec/android/cover/sviewcover/widget/SViewCoverDualClockWidget;->mThemeFontPath:Ljava/lang/String;

    .line 301
    :cond_0
    return-void
.end method

.method private onTimeChanged()V
    .locals 12

    .prologue
    .line 331
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v8

    iput-object v8, p0, Lcom/sec/android/cover/sviewcover/widget/SViewCoverDualClockWidget;->mRoamingCalendar:Ljava/util/Calendar;

    .line 332
    sget-object v8, Lcom/sec/android/cover/sviewcover/widget/SViewCoverDualClockWidget;->TAG:Ljava/lang/String;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "initClock() : TimeZone ="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-static {}, Ljava/util/TimeZone;->getDefault()Ljava/util/TimeZone;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Slog;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 333
    iget-object v8, p0, Lcom/sec/android/cover/sviewcover/widget/SViewCoverDualClockWidget;->mRoamingCalendar:Ljava/util/Calendar;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v10

    invoke-virtual {v8, v10, v11}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 335
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v8

    invoke-virtual {v8}, Ljava/util/Locale;->toString()Ljava/lang/String;

    move-result-object v3

    .line 336
    .local v3, "locale":Ljava/lang/String;
    if-eqz v3, :cond_0

    .line 337
    const-string v8, "ja_JP"

    invoke-virtual {v3, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_e

    .line 338
    const-string v8, "K:mm"

    sput-object v8, Lcom/sec/android/cover/sviewcover/widget/SViewCoverDualClockWidget;->mTimeFormat:Ljava/lang/String;

    .line 344
    :cond_0
    :goto_0
    iget-object v8, p0, Lcom/sec/android/cover/sviewcover/widget/SViewCoverDualClockWidget;->mContext:Landroid/content/Context;

    invoke-direct {p0, v8}, Lcom/sec/android/cover/sviewcover/widget/SViewCoverDualClockWidget;->getAutoHomeTimezone(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v8

    iput-object v8, p0, Lcom/sec/android/cover/sviewcover/widget/SViewCoverDualClockWidget;->mAutoHomeTimeZoneId:Ljava/lang/String;

    .line 345
    iget-object v8, p0, Lcom/sec/android/cover/sviewcover/widget/SViewCoverDualClockWidget;->mAutoHomeTimeZoneId:Ljava/lang/String;

    if-eqz v8, :cond_1

    .line 346
    iget-object v8, p0, Lcom/sec/android/cover/sviewcover/widget/SViewCoverDualClockWidget;->mAutoHomeTimeZoneId:Ljava/lang/String;

    invoke-static {v8}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v8

    invoke-static {v8}, Ljava/util/Calendar;->getInstance(Ljava/util/TimeZone;)Ljava/util/Calendar;

    move-result-object v8

    iput-object v8, p0, Lcom/sec/android/cover/sviewcover/widget/SViewCoverDualClockWidget;->mHomeCalendar:Ljava/util/Calendar;

    .line 347
    iget-object v8, p0, Lcom/sec/android/cover/sviewcover/widget/SViewCoverDualClockWidget;->mHomeCalendar:Ljava/util/Calendar;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v10

    invoke-virtual {v8, v10, v11}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 348
    const/4 v8, 0x1

    iput-boolean v8, p0, Lcom/sec/android/cover/sviewcover/widget/SViewCoverDualClockWidget;->mIsDualClock:Z

    .line 351
    :cond_1
    const/4 v7, 0x0

    .line 352
    .local v7, "tmp":Ljava/lang/CharSequence;
    iget-boolean v8, p0, Lcom/sec/android/cover/sviewcover/widget/SViewCoverDualClockWidget;->mIs24HTime:Z

    if-eqz v8, :cond_f

    .line 353
    const-string v8, "kk:mm"

    iget-object v9, p0, Lcom/sec/android/cover/sviewcover/widget/SViewCoverDualClockWidget;->mRoamingCalendar:Ljava/util/Calendar;

    invoke-static {v8, v9}, Landroid/text/format/DateFormat;->format(Ljava/lang/CharSequence;Ljava/util/Calendar;)Ljava/lang/CharSequence;

    move-result-object v7

    .line 357
    :goto_1
    invoke-interface {v7}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v6

    .line 358
    .local v6, "times":Ljava/lang/String;
    const/4 v2, 0x0

    .line 359
    .local v2, "layoutParams":Landroid/widget/LinearLayout$LayoutParams;
    iget-object v8, p0, Lcom/sec/android/cover/sviewcover/widget/SViewCoverDualClockWidget;->mRoamingTime:Landroid/widget/TextView;

    if-eqz v8, :cond_2

    .line 360
    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    .end local v2    # "layoutParams":Landroid/widget/LinearLayout$LayoutParams;
    iget-object v8, p0, Lcom/sec/android/cover/sviewcover/widget/SViewCoverDualClockWidget;->mRoamingTime:Landroid/widget/TextView;

    invoke-virtual {v8}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v8

    invoke-direct {v2, v8}, Landroid/widget/LinearLayout$LayoutParams;-><init>(Landroid/view/ViewGroup$LayoutParams;)V

    .line 361
    .restart local v2    # "layoutParams":Landroid/widget/LinearLayout$LayoutParams;
    :cond_2
    iget-boolean v8, p0, Lcom/sec/android/cover/sviewcover/widget/SViewCoverDualClockWidget;->mIsCover2:Z

    if-eqz v8, :cond_3

    const/4 v8, 0x0

    invoke-interface {v7, v8}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v8

    const/16 v9, 0x31

    if-ne v8, v9, :cond_3

    .line 364
    :try_start_0
    const-string v8, "UTF-8"

    invoke-static {v6, v8}, Ljava/net/URLDecoder;->decode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 370
    :cond_3
    :goto_2
    iget-object v8, p0, Lcom/sec/android/cover/sviewcover/widget/SViewCoverDualClockWidget;->mRoamingTime:Landroid/widget/TextView;

    if-eqz v8, :cond_5

    .line 371
    if-eqz v2, :cond_4

    .line 372
    iget-object v8, p0, Lcom/sec/android/cover/sviewcover/widget/SViewCoverDualClockWidget;->mRoamingTime:Landroid/widget/TextView;

    invoke-virtual {v8, v2}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 373
    :cond_4
    iget-object v8, p0, Lcom/sec/android/cover/sviewcover/widget/SViewCoverDualClockWidget;->mRoamingTime:Landroid/widget/TextView;

    invoke-virtual {v8, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 375
    :cond_5
    iget-object v8, p0, Lcom/sec/android/cover/sviewcover/widget/SViewCoverDualClockWidget;->mRoamingAmPm:Landroid/widget/TextView;

    if-eqz v8, :cond_7

    .line 376
    iget-boolean v8, p0, Lcom/sec/android/cover/sviewcover/widget/SViewCoverDualClockWidget;->mIs24HTime:Z

    if-nez v8, :cond_11

    invoke-static {}, Lcom/sec/android/cover/FeatureUtils;->isShowAMPM()Z

    move-result v8

    if-eqz v8, :cond_11

    .line 377
    iget-object v8, p0, Lcom/sec/android/cover/sviewcover/widget/SViewCoverDualClockWidget;->mRoamingAmPm:Landroid/widget/TextView;

    const/4 v9, 0x0

    invoke-virtual {v8, v9}, Landroid/widget/TextView;->setVisibility(I)V

    .line 378
    iget-object v8, p0, Lcom/sec/android/cover/sviewcover/widget/SViewCoverDualClockWidget;->mRoamingAmPm:Landroid/widget/TextView;

    const-string v9, "AA"

    iget-object v10, p0, Lcom/sec/android/cover/sviewcover/widget/SViewCoverDualClockWidget;->mRoamingCalendar:Ljava/util/Calendar;

    invoke-static {v9, v10}, Landroid/text/format/DateFormat;->format(Ljava/lang/CharSequence;Ljava/util/Calendar;)Ljava/lang/CharSequence;

    move-result-object v9

    invoke-virtual {v8, v9}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 379
    if-eqz v3, :cond_7

    .line 380
    const-string v8, "en_GB"

    invoke-virtual {v3, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_6

    const-string v8, "en_AU"

    invoke-virtual {v3, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_6

    const-string v8, "en_NZ"

    invoke-virtual {v3, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_10

    .line 381
    :cond_6
    iget-object v8, p0, Lcom/sec/android/cover/sviewcover/widget/SViewCoverDualClockWidget;->mRoamingAmPm:Landroid/widget/TextView;

    const/4 v9, 0x0

    invoke-virtual {v8, v9}, Landroid/widget/TextView;->setAllCaps(Z)V

    .line 391
    :cond_7
    :goto_3
    iget-boolean v8, p0, Lcom/sec/android/cover/sviewcover/widget/SViewCoverDualClockWidget;->mIsDualClock:Z

    if-eqz v8, :cond_a

    .line 392
    const/4 v5, 0x0

    .line 393
    .local v5, "temp":Ljava/lang/CharSequence;
    iget-boolean v8, p0, Lcom/sec/android/cover/sviewcover/widget/SViewCoverDualClockWidget;->mIs24HTime:Z

    if-eqz v8, :cond_12

    .line 394
    const-string v8, "kk:mm"

    iget-object v9, p0, Lcom/sec/android/cover/sviewcover/widget/SViewCoverDualClockWidget;->mHomeCalendar:Ljava/util/Calendar;

    invoke-static {v8, v9}, Landroid/text/format/DateFormat;->format(Ljava/lang/CharSequence;Ljava/util/Calendar;)Ljava/lang/CharSequence;

    move-result-object v5

    .line 398
    :goto_4
    invoke-interface {v5}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    .line 399
    .local v0, "dualTimes":Ljava/lang/String;
    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    iget-object v8, p0, Lcom/sec/android/cover/sviewcover/widget/SViewCoverDualClockWidget;->mHomeTime:Landroid/widget/TextView;

    invoke-virtual {v8}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v8

    invoke-direct {v1, v8}, Landroid/widget/LinearLayout$LayoutParams;-><init>(Landroid/view/ViewGroup$LayoutParams;)V

    .line 401
    .local v1, "layoutParam":Landroid/widget/LinearLayout$LayoutParams;
    iget-boolean v8, p0, Lcom/sec/android/cover/sviewcover/widget/SViewCoverDualClockWidget;->mIsCover2:Z

    if-eqz v8, :cond_8

    const/4 v8, 0x0

    invoke-interface {v5, v8}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v8

    const/16 v9, 0x31

    if-ne v8, v9, :cond_8

    .line 404
    :try_start_1
    const-string v8, "UTF-8"

    invoke-static {v0, v8}, Ljava/net/URLDecoder;->decode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1

    .line 410
    :cond_8
    :goto_5
    iget-object v8, p0, Lcom/sec/android/cover/sviewcover/widget/SViewCoverDualClockWidget;->mHomeTime:Landroid/widget/TextView;

    invoke-virtual {v8, v1}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 411
    iget-object v8, p0, Lcom/sec/android/cover/sviewcover/widget/SViewCoverDualClockWidget;->mHomeTime:Landroid/widget/TextView;

    invoke-virtual {v8, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 412
    iget-object v8, p0, Lcom/sec/android/cover/sviewcover/widget/SViewCoverDualClockWidget;->mHomeAmPm:Landroid/widget/TextView;

    if-eqz v8, :cond_a

    .line 413
    iget-boolean v8, p0, Lcom/sec/android/cover/sviewcover/widget/SViewCoverDualClockWidget;->mIs24HTime:Z

    if-nez v8, :cond_14

    invoke-static {}, Lcom/sec/android/cover/FeatureUtils;->isShowAMPM()Z

    move-result v8

    if-eqz v8, :cond_14

    .line 414
    iget-object v8, p0, Lcom/sec/android/cover/sviewcover/widget/SViewCoverDualClockWidget;->mHomeAmPm:Landroid/widget/TextView;

    const/4 v9, 0x0

    invoke-virtual {v8, v9}, Landroid/widget/TextView;->setVisibility(I)V

    .line 415
    iget-object v8, p0, Lcom/sec/android/cover/sviewcover/widget/SViewCoverDualClockWidget;->mHomeAmPm:Landroid/widget/TextView;

    const-string v9, "AA"

    iget-object v10, p0, Lcom/sec/android/cover/sviewcover/widget/SViewCoverDualClockWidget;->mHomeCalendar:Ljava/util/Calendar;

    invoke-static {v9, v10}, Landroid/text/format/DateFormat;->format(Ljava/lang/CharSequence;Ljava/util/Calendar;)Ljava/lang/CharSequence;

    move-result-object v9

    invoke-virtual {v8, v9}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 416
    if-eqz v3, :cond_a

    .line 417
    const-string v8, "en_GB"

    invoke-virtual {v3, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_9

    const-string v8, "en_AU"

    invoke-virtual {v3, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_9

    const-string v8, "en_NZ"

    invoke-virtual {v3, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_13

    .line 418
    :cond_9
    iget-object v8, p0, Lcom/sec/android/cover/sviewcover/widget/SViewCoverDualClockWidget;->mHomeAmPm:Landroid/widget/TextView;

    const/4 v9, 0x0

    invoke-virtual {v8, v9}, Landroid/widget/TextView;->setAllCaps(Z)V

    .line 430
    .end local v0    # "dualTimes":Ljava/lang/String;
    .end local v1    # "layoutParam":Landroid/widget/LinearLayout$LayoutParams;
    .end local v5    # "temp":Ljava/lang/CharSequence;
    :cond_a
    :goto_6
    iget-object v8, p0, Lcom/sec/android/cover/sviewcover/widget/SViewCoverDualClockWidget;->mDatePattern:Ljava/lang/CharSequence;

    if-nez v8, :cond_b

    .line 431
    iget-object v8, p0, Lcom/sec/android/cover/sviewcover/widget/SViewCoverDualClockWidget;->mContext:Landroid/content/Context;

    const/4 v9, 0x0

    invoke-static {v8, v9}, Lcom/sec/android/cover/CoverUtils;->getDateFormat(Landroid/content/Context;Z)Ljava/lang/CharSequence;

    move-result-object v8

    iput-object v8, p0, Lcom/sec/android/cover/sviewcover/widget/SViewCoverDualClockWidget;->mDatePattern:Ljava/lang/CharSequence;

    .line 433
    :cond_b
    iget-object v8, p0, Lcom/sec/android/cover/sviewcover/widget/SViewCoverDualClockWidget;->mDayofWeek:Landroid/widget/TextView;

    if-eqz v8, :cond_c

    .line 434
    iget-object v8, p0, Lcom/sec/android/cover/sviewcover/widget/SViewCoverDualClockWidget;->mDayofWeek:Landroid/widget/TextView;

    iget-object v9, p0, Lcom/sec/android/cover/sviewcover/widget/SViewCoverDualClockWidget;->mContext:Landroid/content/Context;

    sget v10, Lcom/sec/android/sviewcover/R$string;->clear_cover_wday_day:I

    invoke-virtual {v9, v10}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v9

    iget-object v10, p0, Lcom/sec/android/cover/sviewcover/widget/SViewCoverDualClockWidget;->mRoamingCalendar:Ljava/util/Calendar;

    invoke-static {v9, v10}, Landroid/text/format/DateFormat;->format(Ljava/lang/CharSequence;Ljava/util/Calendar;)Ljava/lang/CharSequence;

    move-result-object v9

    invoke-virtual {v8, v9}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 437
    :cond_c
    iget-object v8, p0, Lcom/sec/android/cover/sviewcover/widget/SViewCoverDualClockWidget;->mRoamingMonthandDay:Landroid/widget/TextView;

    iget-object v9, p0, Lcom/sec/android/cover/sviewcover/widget/SViewCoverDualClockWidget;->mDatePattern:Ljava/lang/CharSequence;

    iget-object v10, p0, Lcom/sec/android/cover/sviewcover/widget/SViewCoverDualClockWidget;->mRoamingCalendar:Ljava/util/Calendar;

    invoke-static {v9, v10}, Landroid/text/format/DateFormat;->format(Ljava/lang/CharSequence;Ljava/util/Calendar;)Ljava/lang/CharSequence;

    move-result-object v9

    invoke-virtual {v8, v9}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 438
    iget-object v8, p0, Lcom/sec/android/cover/sviewcover/widget/SViewCoverDualClockWidget;->mRoamingClockRoot:Landroid/widget/LinearLayout;

    invoke-virtual {p0}, Lcom/sec/android/cover/sviewcover/widget/SViewCoverDualClockWidget;->getRoamingSingleTTSMessage()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Landroid/widget/LinearLayout;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 440
    iget-boolean v8, p0, Lcom/sec/android/cover/sviewcover/widget/SViewCoverDualClockWidget;->mIsDualClock:Z

    if-eqz v8, :cond_d

    .line 441
    iget-object v8, p0, Lcom/sec/android/cover/sviewcover/widget/SViewCoverDualClockWidget;->mHomeMonthandDay:Landroid/widget/TextView;

    iget-object v9, p0, Lcom/sec/android/cover/sviewcover/widget/SViewCoverDualClockWidget;->mDatePattern:Ljava/lang/CharSequence;

    iget-object v10, p0, Lcom/sec/android/cover/sviewcover/widget/SViewCoverDualClockWidget;->mHomeCalendar:Ljava/util/Calendar;

    invoke-static {v9, v10}, Landroid/text/format/DateFormat;->format(Ljava/lang/CharSequence;Ljava/util/Calendar;)Ljava/lang/CharSequence;

    move-result-object v9

    invoke-virtual {v8, v9}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 442
    iget-object v8, p0, Lcom/sec/android/cover/sviewcover/widget/SViewCoverDualClockWidget;->mHomeClockRoot:Landroid/widget/LinearLayout;

    invoke-virtual {p0}, Lcom/sec/android/cover/sviewcover/widget/SViewCoverDualClockWidget;->getHomeSingleTTSMessage()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Landroid/widget/LinearLayout;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 444
    :cond_d
    return-void

    .line 340
    .end local v2    # "layoutParams":Landroid/widget/LinearLayout$LayoutParams;
    .end local v6    # "times":Ljava/lang/String;
    .end local v7    # "tmp":Ljava/lang/CharSequence;
    :cond_e
    const-string v8, "h:mm"

    sput-object v8, Lcom/sec/android/cover/sviewcover/widget/SViewCoverDualClockWidget;->mTimeFormat:Ljava/lang/String;

    goto/16 :goto_0

    .line 355
    .restart local v7    # "tmp":Ljava/lang/CharSequence;
    :cond_f
    sget-object v8, Lcom/sec/android/cover/sviewcover/widget/SViewCoverDualClockWidget;->mTimeFormat:Ljava/lang/String;

    iget-object v9, p0, Lcom/sec/android/cover/sviewcover/widget/SViewCoverDualClockWidget;->mRoamingCalendar:Ljava/util/Calendar;

    invoke-static {v8, v9}, Landroid/text/format/DateFormat;->format(Ljava/lang/CharSequence;Ljava/util/Calendar;)Ljava/lang/CharSequence;

    move-result-object v7

    goto/16 :goto_1

    .line 365
    .restart local v2    # "layoutParams":Landroid/widget/LinearLayout$LayoutParams;
    .restart local v6    # "times":Ljava/lang/String;
    :catch_0
    move-exception v4

    .line 366
    .local v4, "t":Ljava/lang/Throwable;
    invoke-interface {v7}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v6

    .line 367
    invoke-virtual {v4}, Ljava/lang/Throwable;->printStackTrace()V

    goto/16 :goto_2

    .line 383
    .end local v4    # "t":Ljava/lang/Throwable;
    :cond_10
    iget-object v8, p0, Lcom/sec/android/cover/sviewcover/widget/SViewCoverDualClockWidget;->mRoamingAmPm:Landroid/widget/TextView;

    const/4 v9, 0x1

    invoke-virtual {v8, v9}, Landroid/widget/TextView;->setAllCaps(Z)V

    goto/16 :goto_3

    .line 387
    :cond_11
    iget-object v8, p0, Lcom/sec/android/cover/sviewcover/widget/SViewCoverDualClockWidget;->mRoamingAmPm:Landroid/widget/TextView;

    const/16 v9, 0x8

    invoke-virtual {v8, v9}, Landroid/widget/TextView;->setVisibility(I)V

    goto/16 :goto_3

    .line 396
    .restart local v5    # "temp":Ljava/lang/CharSequence;
    :cond_12
    sget-object v8, Lcom/sec/android/cover/sviewcover/widget/SViewCoverDualClockWidget;->mTimeFormat:Ljava/lang/String;

    iget-object v9, p0, Lcom/sec/android/cover/sviewcover/widget/SViewCoverDualClockWidget;->mHomeCalendar:Ljava/util/Calendar;

    invoke-static {v8, v9}, Landroid/text/format/DateFormat;->format(Ljava/lang/CharSequence;Ljava/util/Calendar;)Ljava/lang/CharSequence;

    move-result-object v5

    goto/16 :goto_4

    .line 405
    .restart local v0    # "dualTimes":Ljava/lang/String;
    .restart local v1    # "layoutParam":Landroid/widget/LinearLayout$LayoutParams;
    :catch_1
    move-exception v4

    .line 406
    .restart local v4    # "t":Ljava/lang/Throwable;
    invoke-interface {v5}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    .line 407
    invoke-virtual {v4}, Ljava/lang/Throwable;->printStackTrace()V

    goto/16 :goto_5

    .line 420
    .end local v4    # "t":Ljava/lang/Throwable;
    :cond_13
    iget-object v8, p0, Lcom/sec/android/cover/sviewcover/widget/SViewCoverDualClockWidget;->mHomeAmPm:Landroid/widget/TextView;

    const/4 v9, 0x1

    invoke-virtual {v8, v9}, Landroid/widget/TextView;->setAllCaps(Z)V

    goto/16 :goto_6

    .line 424
    :cond_14
    iget-object v8, p0, Lcom/sec/android/cover/sviewcover/widget/SViewCoverDualClockWidget;->mHomeAmPm:Landroid/widget/TextView;

    const/16 v9, 0x8

    invoke-virtual {v8, v9}, Landroid/widget/TextView;->setVisibility(I)V

    goto/16 :goto_6
.end method

.method private setFontTypeFace()V
    .locals 2

    .prologue
    .line 264
    invoke-static {}, Lcom/sec/android/cover/FeatureUtils;->isZeroProject()Z

    move-result v0

    if-nez v0, :cond_1

    .line 277
    :cond_0
    :goto_0
    return-void

    .line 268
    :cond_1
    iget-object v0, p0, Lcom/sec/android/cover/sviewcover/widget/SViewCoverDualClockWidget;->mAmpmTypeface:Landroid/graphics/Typeface;

    if-eqz v0, :cond_0

    .line 269
    iget-object v0, p0, Lcom/sec/android/cover/sviewcover/widget/SViewCoverDualClockWidget;->mRoamingAmPm:Landroid/widget/TextView;

    if-eqz v0, :cond_2

    .line 270
    iget-object v0, p0, Lcom/sec/android/cover/sviewcover/widget/SViewCoverDualClockWidget;->mRoamingAmPm:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/sec/android/cover/sviewcover/widget/SViewCoverDualClockWidget;->mAmpmTypeface:Landroid/graphics/Typeface;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 273
    :cond_2
    iget-object v0, p0, Lcom/sec/android/cover/sviewcover/widget/SViewCoverDualClockWidget;->mHomeAmPm:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    .line 274
    iget-object v0, p0, Lcom/sec/android/cover/sviewcover/widget/SViewCoverDualClockWidget;->mHomeAmPm:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/sec/android/cover/sviewcover/widget/SViewCoverDualClockWidget;->mAmpmTypeface:Landroid/graphics/Typeface;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    goto :goto_0
.end method

.method private setThemeFontTypeFace(Landroid/graphics/Typeface;)V
    .locals 1
    .param p1, "clockTypeface"    # Landroid/graphics/Typeface;

    .prologue
    .line 281
    if-eqz p1, :cond_0

    .line 282
    iget-object v0, p0, Lcom/sec/android/cover/sviewcover/widget/SViewCoverDualClockWidget;->mRoamingTime:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 283
    iget-object v0, p0, Lcom/sec/android/cover/sviewcover/widget/SViewCoverDualClockWidget;->mRoamingAmPm:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 284
    iget-object v0, p0, Lcom/sec/android/cover/sviewcover/widget/SViewCoverDualClockWidget;->mDayofWeek:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 285
    iget-object v0, p0, Lcom/sec/android/cover/sviewcover/widget/SViewCoverDualClockWidget;->mRoamingMonthandDay:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 286
    iget-object v0, p0, Lcom/sec/android/cover/sviewcover/widget/SViewCoverDualClockWidget;->mRoamingRegionText:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 288
    iget-object v0, p0, Lcom/sec/android/cover/sviewcover/widget/SViewCoverDualClockWidget;->mHomeTime:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 289
    iget-object v0, p0, Lcom/sec/android/cover/sviewcover/widget/SViewCoverDualClockWidget;->mHomeAmPm:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 290
    iget-object v0, p0, Lcom/sec/android/cover/sviewcover/widget/SViewCoverDualClockWidget;->mHomeMonthandDay:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 291
    iget-object v0, p0, Lcom/sec/android/cover/sviewcover/widget/SViewCoverDualClockWidget;->mHomeRegionText:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 293
    :cond_0
    return-void
.end method


# virtual methods
.method public getHomeSingleTTSMessage()Ljava/lang/String;
    .locals 6

    .prologue
    .line 448
    const-string v0, ""

    .line 450
    .local v0, "TTSMessage":Ljava/lang/String;
    iget-object v3, p0, Lcom/sec/android/cover/sviewcover/widget/SViewCoverDualClockWidget;->mTTSDatePattern:Ljava/lang/CharSequence;

    if-nez v3, :cond_0

    .line 451
    iget-object v3, p0, Lcom/sec/android/cover/sviewcover/widget/SViewCoverDualClockWidget;->mContext:Landroid/content/Context;

    const/4 v4, 0x1

    invoke-static {v3, v4}, Lcom/sec/android/cover/CoverUtils;->getDateFormat(Landroid/content/Context;Z)Ljava/lang/CharSequence;

    move-result-object v3

    iput-object v3, p0, Lcom/sec/android/cover/sviewcover/widget/SViewCoverDualClockWidget;->mTTSDatePattern:Ljava/lang/CharSequence;

    .line 453
    :cond_0
    iget-object v3, p0, Lcom/sec/android/cover/sviewcover/widget/SViewCoverDualClockWidget;->mTTSDatePattern:Ljava/lang/CharSequence;

    iget-object v4, p0, Lcom/sec/android/cover/sviewcover/widget/SViewCoverDualClockWidget;->mHomeCalendar:Ljava/util/Calendar;

    invoke-static {v3, v4}, Landroid/text/format/DateFormat;->format(Ljava/lang/CharSequence;Ljava/util/Calendar;)Ljava/lang/CharSequence;

    move-result-object v1

    .line 456
    .local v1, "dateText":Ljava/lang/CharSequence;
    iget-object v3, p0, Lcom/sec/android/cover/sviewcover/widget/SViewCoverDualClockWidget;->mHomeCalendar:Ljava/util/Calendar;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 457
    iget-boolean v3, p0, Lcom/sec/android/cover/sviewcover/widget/SViewCoverDualClockWidget;->mIs24HTime:Z

    if-eqz v3, :cond_1

    .line 458
    const-string v3, "kk:mm"

    iget-object v4, p0, Lcom/sec/android/cover/sviewcover/widget/SViewCoverDualClockWidget;->mHomeCalendar:Ljava/util/Calendar;

    invoke-static {v3, v4}, Landroid/text/format/DateFormat;->format(Ljava/lang/CharSequence;Ljava/util/Calendar;)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-interface {v3}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    .line 463
    .local v2, "mTTSTime":Ljava/lang/String;
    :goto_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 465
    return-object v0

    .line 460
    .end local v2    # "mTTSTime":Ljava/lang/String;
    :cond_1
    sget-object v3, Lcom/sec/android/cover/sviewcover/widget/SViewCoverDualClockWidget;->mTimeFormat:Ljava/lang/String;

    iget-object v4, p0, Lcom/sec/android/cover/sviewcover/widget/SViewCoverDualClockWidget;->mHomeCalendar:Ljava/util/Calendar;

    invoke-static {v3, v4}, Landroid/text/format/DateFormat;->format(Ljava/lang/CharSequence;Ljava/util/Calendar;)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-interface {v3}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    .line 461
    .restart local v2    # "mTTSTime":Ljava/lang/String;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/sec/android/cover/sviewcover/widget/SViewCoverDualClockWidget;->mHomeAmPm:Landroid/widget/TextView;

    invoke-virtual {v4}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_0
.end method

.method public getRoamingSingleTTSMessage()Ljava/lang/String;
    .locals 6

    .prologue
    .line 470
    const-string v0, ""

    .line 472
    .local v0, "TTSMessage":Ljava/lang/String;
    iget-object v3, p0, Lcom/sec/android/cover/sviewcover/widget/SViewCoverDualClockWidget;->mTTSDatePattern:Ljava/lang/CharSequence;

    if-nez v3, :cond_0

    .line 473
    iget-object v3, p0, Lcom/sec/android/cover/sviewcover/widget/SViewCoverDualClockWidget;->mContext:Landroid/content/Context;

    const/4 v4, 0x1

    invoke-static {v3, v4}, Lcom/sec/android/cover/CoverUtils;->getDateFormat(Landroid/content/Context;Z)Ljava/lang/CharSequence;

    move-result-object v3

    iput-object v3, p0, Lcom/sec/android/cover/sviewcover/widget/SViewCoverDualClockWidget;->mTTSDatePattern:Ljava/lang/CharSequence;

    .line 475
    :cond_0
    iget-object v3, p0, Lcom/sec/android/cover/sviewcover/widget/SViewCoverDualClockWidget;->mTTSDatePattern:Ljava/lang/CharSequence;

    iget-object v4, p0, Lcom/sec/android/cover/sviewcover/widget/SViewCoverDualClockWidget;->mRoamingCalendar:Ljava/util/Calendar;

    invoke-static {v3, v4}, Landroid/text/format/DateFormat;->format(Ljava/lang/CharSequence;Ljava/util/Calendar;)Ljava/lang/CharSequence;

    move-result-object v1

    .line 478
    .local v1, "dateText":Ljava/lang/CharSequence;
    iget-object v3, p0, Lcom/sec/android/cover/sviewcover/widget/SViewCoverDualClockWidget;->mRoamingCalendar:Ljava/util/Calendar;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 479
    iget-boolean v3, p0, Lcom/sec/android/cover/sviewcover/widget/SViewCoverDualClockWidget;->mIs24HTime:Z

    if-eqz v3, :cond_2

    .line 480
    const-string v3, "kk:mm"

    iget-object v4, p0, Lcom/sec/android/cover/sviewcover/widget/SViewCoverDualClockWidget;->mRoamingCalendar:Ljava/util/Calendar;

    invoke-static {v3, v4}, Landroid/text/format/DateFormat;->format(Ljava/lang/CharSequence;Ljava/util/Calendar;)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-interface {v3}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    .line 486
    .local v2, "mTTSTime":Ljava/lang/String;
    :cond_1
    :goto_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 488
    return-object v0

    .line 482
    .end local v2    # "mTTSTime":Ljava/lang/String;
    :cond_2
    sget-object v3, Lcom/sec/android/cover/sviewcover/widget/SViewCoverDualClockWidget;->mTimeFormat:Ljava/lang/String;

    iget-object v4, p0, Lcom/sec/android/cover/sviewcover/widget/SViewCoverDualClockWidget;->mRoamingCalendar:Ljava/util/Calendar;

    invoke-static {v3, v4}, Landroid/text/format/DateFormat;->format(Ljava/lang/CharSequence;Ljava/util/Calendar;)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-interface {v3}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    .line 483
    .restart local v2    # "mTTSTime":Ljava/lang/String;
    iget-object v3, p0, Lcom/sec/android/cover/sviewcover/widget/SViewCoverDualClockWidget;->mRoamingAmPm:Landroid/widget/TextView;

    if-eqz v3, :cond_1

    .line 484
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/sec/android/cover/sviewcover/widget/SViewCoverDualClockWidget;->mRoamingAmPm:Landroid/widget/TextView;

    invoke-virtual {v4}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_0
.end method

.method protected onAttachedToWindow()V
    .locals 2

    .prologue
    .line 305
    invoke-super {p0}, Landroid/widget/LinearLayout;->onAttachedToWindow()V

    .line 306
    iget-object v0, p0, Lcom/sec/android/cover/sviewcover/widget/SViewCoverDualClockWidget;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/sec/android/cover/CoverUtils;->is24HourModeEnabled(Landroid/content/Context;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/sec/android/cover/sviewcover/widget/SViewCoverDualClockWidget;->mIs24HTime:Z

    .line 309
    iget-object v0, p0, Lcom/sec/android/cover/sviewcover/widget/SViewCoverDualClockWidget;->mThemeFontPath:Ljava/lang/String;

    if-nez v0, :cond_0

    invoke-static {}, Lcom/sec/android/cover/FeatureUtils;->isSupportElasticPlugin()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 310
    iget-object v0, p0, Lcom/sec/android/cover/sviewcover/widget/SViewCoverDualClockWidget;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/sec/android/cover/CoverUtils;->getClockFontPath(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/cover/sviewcover/widget/SViewCoverDualClockWidget;->mThemeFontPath:Ljava/lang/String;

    .line 312
    :cond_0
    invoke-direct {p0}, Lcom/sec/android/cover/sviewcover/widget/SViewCoverDualClockWidget;->onTimeChanged()V

    .line 314
    iget-object v0, p0, Lcom/sec/android/cover/sviewcover/widget/SViewCoverDualClockWidget;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/sec/android/cover/monitor/CoverUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/sec/android/cover/monitor/CoverUpdateMonitor;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/cover/sviewcover/widget/SViewCoverDualClockWidget;->mUpdateMonitorCallback:Lcom/sec/android/cover/monitor/CoverUpdateMonitorCallback;

    invoke-virtual {v0, v1}, Lcom/sec/android/cover/monitor/CoverUpdateMonitor;->registerCallback(Lcom/sec/android/cover/monitor/CoverUpdateMonitorCallback;)V

    .line 315
    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 2

    .prologue
    .line 319
    invoke-super {p0}, Landroid/widget/LinearLayout;->onDetachedFromWindow()V

    .line 321
    iget-object v0, p0, Lcom/sec/android/cover/sviewcover/widget/SViewCoverDualClockWidget;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/sec/android/cover/monitor/CoverUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/sec/android/cover/monitor/CoverUpdateMonitor;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/cover/sviewcover/widget/SViewCoverDualClockWidget;->mUpdateMonitorCallback:Lcom/sec/android/cover/monitor/CoverUpdateMonitorCallback;

    invoke-virtual {v0, v1}, Lcom/sec/android/cover/monitor/CoverUpdateMonitor;->unregisterCallback(Lcom/sec/android/cover/monitor/CoverUpdateMonitorCallback;)V

    .line 322
    return-void
.end method

.method protected onFinishInflate()V
    .locals 4

    .prologue
    .line 223
    invoke-super {p0}, Landroid/widget/LinearLayout;->onFinishInflate()V

    .line 224
    iget-object v2, p0, Lcom/sec/android/cover/sviewcover/widget/SViewCoverDualClockWidget;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 225
    .local v1, "res":Landroid/content/res/Resources;
    sget v2, Lcom/sec/android/sviewcover/R$bool;->config_isSViewCover2:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v2

    iput-boolean v2, p0, Lcom/sec/android/cover/sviewcover/widget/SViewCoverDualClockWidget;->mIsCover2:Z

    .line 227
    sget v2, Lcom/sec/android/sviewcover/R$id;->roaming_clock_root:I

    invoke-virtual {p0, v2}, Lcom/sec/android/cover/sviewcover/widget/SViewCoverDualClockWidget;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/LinearLayout;

    iput-object v2, p0, Lcom/sec/android/cover/sviewcover/widget/SViewCoverDualClockWidget;->mRoamingClockRoot:Landroid/widget/LinearLayout;

    .line 228
    sget v2, Lcom/sec/android/sviewcover/R$id;->roaming_digital_clock_time:I

    invoke-virtual {p0, v2}, Lcom/sec/android/cover/sviewcover/widget/SViewCoverDualClockWidget;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/sec/android/cover/sviewcover/widget/SViewCoverDualClockWidget;->mRoamingTime:Landroid/widget/TextView;

    .line 229
    sget v2, Lcom/sec/android/sviewcover/R$id;->roaming_digital_clock_ampm:I

    invoke-virtual {p0, v2}, Lcom/sec/android/cover/sviewcover/widget/SViewCoverDualClockWidget;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/sec/android/cover/sviewcover/widget/SViewCoverDualClockWidget;->mRoamingAmPm:Landroid/widget/TextView;

    .line 230
    sget v2, Lcom/sec/android/sviewcover/R$id;->digital_day_of_the_week:I

    invoke-virtual {p0, v2}, Lcom/sec/android/cover/sviewcover/widget/SViewCoverDualClockWidget;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/sec/android/cover/sviewcover/widget/SViewCoverDualClockWidget;->mDayofWeek:Landroid/widget/TextView;

    .line 231
    sget v2, Lcom/sec/android/sviewcover/R$id;->roaming_digital_month_day:I

    invoke-virtual {p0, v2}, Lcom/sec/android/cover/sviewcover/widget/SViewCoverDualClockWidget;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/sec/android/cover/sviewcover/widget/SViewCoverDualClockWidget;->mRoamingMonthandDay:Landroid/widget/TextView;

    .line 232
    sget v2, Lcom/sec/android/sviewcover/R$id;->roaming_clock:I

    invoke-virtual {p0, v2}, Lcom/sec/android/cover/sviewcover/widget/SViewCoverDualClockWidget;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/LinearLayout;

    iput-object v2, p0, Lcom/sec/android/cover/sviewcover/widget/SViewCoverDualClockWidget;->mRoamingClock:Landroid/widget/LinearLayout;

    .line 233
    sget v2, Lcom/sec/android/sviewcover/R$id;->region_roaming:I

    invoke-virtual {p0, v2}, Lcom/sec/android/cover/sviewcover/widget/SViewCoverDualClockWidget;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/sec/android/cover/sviewcover/widget/SViewCoverDualClockWidget;->mRoamingRegionText:Landroid/widget/TextView;

    .line 235
    sget v2, Lcom/sec/android/sviewcover/R$id;->home_clock_root:I

    invoke-virtual {p0, v2}, Lcom/sec/android/cover/sviewcover/widget/SViewCoverDualClockWidget;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/LinearLayout;

    iput-object v2, p0, Lcom/sec/android/cover/sviewcover/widget/SViewCoverDualClockWidget;->mHomeClockRoot:Landroid/widget/LinearLayout;

    .line 236
    sget v2, Lcom/sec/android/sviewcover/R$id;->home_digital_clock_time:I

    invoke-virtual {p0, v2}, Lcom/sec/android/cover/sviewcover/widget/SViewCoverDualClockWidget;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/sec/android/cover/sviewcover/widget/SViewCoverDualClockWidget;->mHomeTime:Landroid/widget/TextView;

    .line 237
    sget v2, Lcom/sec/android/sviewcover/R$id;->home_digital_clock_ampm:I

    invoke-virtual {p0, v2}, Lcom/sec/android/cover/sviewcover/widget/SViewCoverDualClockWidget;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/sec/android/cover/sviewcover/widget/SViewCoverDualClockWidget;->mHomeAmPm:Landroid/widget/TextView;

    .line 238
    sget v2, Lcom/sec/android/sviewcover/R$id;->home_digital_month_day:I

    invoke-virtual {p0, v2}, Lcom/sec/android/cover/sviewcover/widget/SViewCoverDualClockWidget;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/sec/android/cover/sviewcover/widget/SViewCoverDualClockWidget;->mHomeMonthandDay:Landroid/widget/TextView;

    .line 239
    sget v2, Lcom/sec/android/sviewcover/R$id;->home_clock:I

    invoke-virtual {p0, v2}, Lcom/sec/android/cover/sviewcover/widget/SViewCoverDualClockWidget;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/LinearLayout;

    iput-object v2, p0, Lcom/sec/android/cover/sviewcover/widget/SViewCoverDualClockWidget;->mHomeClock:Landroid/widget/LinearLayout;

    .line 240
    sget v2, Lcom/sec/android/sviewcover/R$id;->region_home:I

    invoke-virtual {p0, v2}, Lcom/sec/android/cover/sviewcover/widget/SViewCoverDualClockWidget;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/sec/android/cover/sviewcover/widget/SViewCoverDualClockWidget;->mHomeRegionText:Landroid/widget/TextView;

    .line 243
    :try_start_0
    const-string v2, "/system/fonts/SECRobotoLight-Regular.ttf"

    invoke-static {v2}, Landroid/graphics/Typeface;->createFromFile(Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v2

    iput-object v2, p0, Lcom/sec/android/cover/sviewcover/widget/SViewCoverDualClockWidget;->mAmpmTypeface:Landroid/graphics/Typeface;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 251
    :cond_0
    :goto_0
    iget-object v2, p0, Lcom/sec/android/cover/sviewcover/widget/SViewCoverDualClockWidget;->mThemeFontPath:Ljava/lang/String;

    if-eqz v2, :cond_2

    .line 252
    iget-object v2, p0, Lcom/sec/android/cover/sviewcover/widget/SViewCoverDualClockWidget;->mThemeFontPath:Ljava/lang/String;

    invoke-static {v2}, Landroid/graphics/Typeface;->createFromFile(Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/sec/android/cover/sviewcover/widget/SViewCoverDualClockWidget;->setThemeFontTypeFace(Landroid/graphics/Typeface;)V

    .line 257
    :goto_1
    invoke-static {}, Lcom/sec/android/cover/FeatureUtils;->isATTModel()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 258
    iget-object v2, p0, Lcom/sec/android/cover/sviewcover/widget/SViewCoverDualClockWidget;->mRoamingRegionText:Landroid/widget/TextView;

    const-string v3, ""

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 260
    :cond_1
    invoke-virtual {p0}, Lcom/sec/android/cover/sviewcover/widget/SViewCoverDualClockWidget;->refreshClock()V

    .line 261
    return-void

    .line 244
    :catch_0
    move-exception v0

    .line 245
    .local v0, "e":Ljava/lang/Exception;
    iget-object v2, p0, Lcom/sec/android/cover/sviewcover/widget/SViewCoverDualClockWidget;->mAmpmTypeface:Landroid/graphics/Typeface;

    if-nez v2, :cond_0

    .line 246
    sget-object v2, Landroid/graphics/Typeface;->DEFAULT:Landroid/graphics/Typeface;

    iput-object v2, p0, Lcom/sec/android/cover/sviewcover/widget/SViewCoverDualClockWidget;->mAmpmTypeface:Landroid/graphics/Typeface;

    goto :goto_0

    .line 254
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_2
    invoke-direct {p0}, Lcom/sec/android/cover/sviewcover/widget/SViewCoverDualClockWidget;->setFontTypeFace()V

    goto :goto_1
.end method

.method public onPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V
    .locals 1
    .param p1, "event"    # Landroid/view/accessibility/AccessibilityEvent;

    .prologue
    .line 326
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->onPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V

    .line 327
    invoke-virtual {p0}, Lcom/sec/android/cover/sviewcover/widget/SViewCoverDualClockWidget;->getRoamingSingleTTSMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityEvent;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 328
    return-void
.end method

.method public onWindowFocusChanged(Z)V
    .locals 3
    .param p1, "hasWindowFocus"    # Z

    .prologue
    .line 82
    sget-object v0, Lcom/sec/android/cover/sviewcover/widget/SViewCoverDualClockWidget;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onWindowFocusChanged : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 83
    if-eqz p1, :cond_0

    .line 84
    invoke-direct {p0}, Lcom/sec/android/cover/sviewcover/widget/SViewCoverDualClockWidget;->onTimeChanged()V

    .line 86
    :cond_0
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->onWindowFocusChanged(Z)V

    .line 87
    return-void
.end method

.method public refreshClock()V
    .locals 7

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 178
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/Locale;->toString()Ljava/lang/String;

    move-result-object v0

    .line 179
    .local v0, "locale":Ljava/lang/String;
    sget-object v2, Lcom/sec/android/cover/sviewcover/widget/SViewCoverDualClockWidget;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "refreshClock() , locale = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 181
    if-eqz v0, :cond_4

    .line 182
    iget-object v2, p0, Lcom/sec/android/cover/sviewcover/widget/SViewCoverDualClockWidget;->mRoamingAmPm:Landroid/widget/TextView;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/sec/android/cover/sviewcover/widget/SViewCoverDualClockWidget;->mRoamingClock:Landroid/widget/LinearLayout;

    if-eqz v2, :cond_1

    .line 183
    const-string v2, "ko_KR"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 184
    iget-object v2, p0, Lcom/sec/android/cover/sviewcover/widget/SViewCoverDualClockWidget;->mRoamingAmPm:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    .line 185
    .local v1, "parent":Landroid/view/ViewGroup;
    if-eqz v1, :cond_0

    .line 186
    iget-object v2, p0, Lcom/sec/android/cover/sviewcover/widget/SViewCoverDualClockWidget;->mRoamingAmPm:Landroid/widget/TextView;

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 188
    :cond_0
    iget-object v2, p0, Lcom/sec/android/cover/sviewcover/widget/SViewCoverDualClockWidget;->mRoamingClock:Landroid/widget/LinearLayout;

    iget-object v3, p0, Lcom/sec/android/cover/sviewcover/widget/SViewCoverDualClockWidget;->mRoamingAmPm:Landroid/widget/TextView;

    invoke-virtual {v2, v3, v5}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;I)V

    .line 198
    .end local v1    # "parent":Landroid/view/ViewGroup;
    :cond_1
    :goto_0
    iget-object v2, p0, Lcom/sec/android/cover/sviewcover/widget/SViewCoverDualClockWidget;->mHomeAmPm:Landroid/widget/TextView;

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/sec/android/cover/sviewcover/widget/SViewCoverDualClockWidget;->mHomeClock:Landroid/widget/LinearLayout;

    if-eqz v2, :cond_3

    .line 199
    const-string v2, "ko_KR"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_7

    .line 200
    iget-object v2, p0, Lcom/sec/android/cover/sviewcover/widget/SViewCoverDualClockWidget;->mHomeAmPm:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    .line 201
    .restart local v1    # "parent":Landroid/view/ViewGroup;
    if-eqz v1, :cond_2

    .line 202
    iget-object v2, p0, Lcom/sec/android/cover/sviewcover/widget/SViewCoverDualClockWidget;->mHomeAmPm:Landroid/widget/TextView;

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 204
    :cond_2
    iget-object v2, p0, Lcom/sec/android/cover/sviewcover/widget/SViewCoverDualClockWidget;->mHomeClock:Landroid/widget/LinearLayout;

    iget-object v3, p0, Lcom/sec/android/cover/sviewcover/widget/SViewCoverDualClockWidget;->mHomeAmPm:Landroid/widget/TextView;

    invoke-virtual {v2, v3, v5}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;I)V

    .line 215
    .end local v1    # "parent":Landroid/view/ViewGroup;
    :cond_3
    :goto_1
    iget-object v2, p0, Lcom/sec/android/cover/sviewcover/widget/SViewCoverDualClockWidget;->mRoamingRegionText:Landroid/widget/TextView;

    sget v3, Lcom/sec/android/sviewcover/R$string;->s_view_screen_roaming:I

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(I)V

    .line 216
    iget-object v2, p0, Lcom/sec/android/cover/sviewcover/widget/SViewCoverDualClockWidget;->mHomeRegionText:Landroid/widget/TextView;

    sget v3, Lcom/sec/android/sviewcover/R$string;->s_view_screen_home:I

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(I)V

    .line 219
    :cond_4
    return-void

    .line 190
    :cond_5
    iget-object v2, p0, Lcom/sec/android/cover/sviewcover/widget/SViewCoverDualClockWidget;->mRoamingAmPm:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    .line 191
    .restart local v1    # "parent":Landroid/view/ViewGroup;
    if-eqz v1, :cond_6

    .line 192
    iget-object v2, p0, Lcom/sec/android/cover/sviewcover/widget/SViewCoverDualClockWidget;->mRoamingAmPm:Landroid/widget/TextView;

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 194
    :cond_6
    iget-object v2, p0, Lcom/sec/android/cover/sviewcover/widget/SViewCoverDualClockWidget;->mRoamingClock:Landroid/widget/LinearLayout;

    iget-object v3, p0, Lcom/sec/android/cover/sviewcover/widget/SViewCoverDualClockWidget;->mRoamingAmPm:Landroid/widget/TextView;

    invoke-virtual {v2, v3, v6}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;I)V

    goto :goto_0

    .line 206
    .end local v1    # "parent":Landroid/view/ViewGroup;
    :cond_7
    iget-object v2, p0, Lcom/sec/android/cover/sviewcover/widget/SViewCoverDualClockWidget;->mHomeAmPm:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    .line 207
    .restart local v1    # "parent":Landroid/view/ViewGroup;
    if-eqz v1, :cond_8

    .line 208
    iget-object v2, p0, Lcom/sec/android/cover/sviewcover/widget/SViewCoverDualClockWidget;->mHomeAmPm:Landroid/widget/TextView;

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 210
    :cond_8
    iget-object v2, p0, Lcom/sec/android/cover/sviewcover/widget/SViewCoverDualClockWidget;->mHomeClock:Landroid/widget/LinearLayout;

    iget-object v3, p0, Lcom/sec/android/cover/sviewcover/widget/SViewCoverDualClockWidget;->mHomeAmPm:Landroid/widget/TextView;

    invoke-virtual {v2, v3, v6}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;I)V

    goto :goto_1
.end method
