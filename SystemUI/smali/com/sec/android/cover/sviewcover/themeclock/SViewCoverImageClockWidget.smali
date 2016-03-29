.class public Lcom/sec/android/cover/sviewcover/themeclock/SViewCoverImageClockWidget;
.super Landroid/widget/LinearLayout;
.source "SViewCoverImageClockWidget.java"


# static fields
.field private static TAG:Ljava/lang/String;

.field private static mTimeFormat:Ljava/lang/String;


# instance fields
.field private DIGITS:[I

.field private final MSG_CLOCK_UPDATE:I

.field private mAmPm:Landroid/widget/ImageView;

.field private mCalendar:Ljava/util/Calendar;

.field private mClockHandler:Landroid/os/Handler;

.field private mContext:Landroid/content/Context;

.field private mDayMonth:Landroid/widget/TextView;

.field private mHour10th:Landroid/widget/ImageView;

.field private mHour1th:Landroid/widget/ImageView;

.field private mIs24HTime:Z

.field private mMin10th:Landroid/widget/ImageView;

.field private mMin1th:Landroid/widget/ImageView;

.field private mSingleClockContainer:Landroid/widget/LinearLayout;

.field private mThemeFontPath:Ljava/lang/String;

.field private mUpdateMonitorCallback:Lcom/sec/android/cover/monitor/CoverUpdateMonitorCallback;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 31
    const-class v0, Lcom/sec/android/cover/sviewcover/themeclock/SViewCoverImageClockWidget;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/sec/android/cover/sviewcover/themeclock/SViewCoverImageClockWidget;->TAG:Ljava/lang/String;

    .line 33
    const-string v0, "h:mm"

    sput-object v0, Lcom/sec/android/cover/sviewcover/themeclock/SViewCoverImageClockWidget;->mTimeFormat:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    const/4 v2, 0x0

    .line 130
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 45
    iput-boolean v2, p0, Lcom/sec/android/cover/sviewcover/themeclock/SViewCoverImageClockWidget;->mIs24HTime:Z

    .line 61
    const/16 v0, 0xa

    new-array v0, v0, [I

    sget v1, Lcom/sec/android/sviewcover/R$drawable;->clock_digit_0:I

    aput v1, v0, v2

    const/4 v1, 0x1

    sget v2, Lcom/sec/android/sviewcover/R$drawable;->clock_digit_1:I

    aput v2, v0, v1

    const/4 v1, 0x2

    sget v2, Lcom/sec/android/sviewcover/R$drawable;->clock_digit_2:I

    aput v2, v0, v1

    const/4 v1, 0x3

    sget v2, Lcom/sec/android/sviewcover/R$drawable;->clock_digit_3:I

    aput v2, v0, v1

    const/4 v1, 0x4

    sget v2, Lcom/sec/android/sviewcover/R$drawable;->clock_digit_4:I

    aput v2, v0, v1

    const/4 v1, 0x5

    sget v2, Lcom/sec/android/sviewcover/R$drawable;->clock_digit_5:I

    aput v2, v0, v1

    const/4 v1, 0x6

    sget v2, Lcom/sec/android/sviewcover/R$drawable;->clock_digit_6:I

    aput v2, v0, v1

    const/4 v1, 0x7

    sget v2, Lcom/sec/android/sviewcover/R$drawable;->clock_digit_7:I

    aput v2, v0, v1

    const/16 v1, 0x8

    sget v2, Lcom/sec/android/sviewcover/R$drawable;->clock_digit_8:I

    aput v2, v0, v1

    const/16 v1, 0x9

    sget v2, Lcom/sec/android/sviewcover/R$drawable;->clock_digit_9:I

    aput v2, v0, v1

    iput-object v0, p0, Lcom/sec/android/cover/sviewcover/themeclock/SViewCoverImageClockWidget;->DIGITS:[I

    .line 68
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/cover/sviewcover/themeclock/SViewCoverImageClockWidget;->mThemeFontPath:Ljava/lang/String;

    .line 70
    new-instance v0, Lcom/sec/android/cover/sviewcover/themeclock/SViewCoverImageClockWidget$1;

    invoke-direct {v0, p0}, Lcom/sec/android/cover/sviewcover/themeclock/SViewCoverImageClockWidget$1;-><init>(Lcom/sec/android/cover/sviewcover/themeclock/SViewCoverImageClockWidget;)V

    iput-object v0, p0, Lcom/sec/android/cover/sviewcover/themeclock/SViewCoverImageClockWidget;->mUpdateMonitorCallback:Lcom/sec/android/cover/monitor/CoverUpdateMonitorCallback;

    .line 116
    const/16 v0, 0x12c2

    iput v0, p0, Lcom/sec/android/cover/sviewcover/themeclock/SViewCoverImageClockWidget;->MSG_CLOCK_UPDATE:I

    .line 118
    new-instance v0, Lcom/sec/android/cover/sviewcover/themeclock/SViewCoverImageClockWidget$2;

    invoke-direct {v0, p0}, Lcom/sec/android/cover/sviewcover/themeclock/SViewCoverImageClockWidget$2;-><init>(Lcom/sec/android/cover/sviewcover/themeclock/SViewCoverImageClockWidget;)V

    iput-object v0, p0, Lcom/sec/android/cover/sviewcover/themeclock/SViewCoverImageClockWidget;->mClockHandler:Landroid/os/Handler;

    .line 131
    iput-object p1, p0, Lcom/sec/android/cover/sviewcover/themeclock/SViewCoverImageClockWidget;->mContext:Landroid/content/Context;

    .line 132
    sget-object v0, Lcom/sec/android/cover/sviewcover/themeclock/SViewCoverImageClockWidget;->TAG:Ljava/lang/String;

    const-string v1, "Clock()"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 133
    return-void
.end method

.method static synthetic access$000(Lcom/sec/android/cover/sviewcover/themeclock/SViewCoverImageClockWidget;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/sec/android/cover/sviewcover/themeclock/SViewCoverImageClockWidget;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 30
    invoke-direct {p0, p1}, Lcom/sec/android/cover/sviewcover/themeclock/SViewCoverImageClockWidget;->onThemeFontChanged(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$100(Lcom/sec/android/cover/sviewcover/themeclock/SViewCoverImageClockWidget;)V
    .locals 0
    .param p0, "x0"    # Lcom/sec/android/cover/sviewcover/themeclock/SViewCoverImageClockWidget;

    .prologue
    .line 30
    invoke-direct {p0}, Lcom/sec/android/cover/sviewcover/themeclock/SViewCoverImageClockWidget;->onTimeChanged()V

    return-void
.end method

.method static synthetic access$200(Lcom/sec/android/cover/sviewcover/themeclock/SViewCoverImageClockWidget;)Landroid/os/Handler;
    .locals 1
    .param p0, "x0"    # Lcom/sec/android/cover/sviewcover/themeclock/SViewCoverImageClockWidget;

    .prologue
    .line 30
    iget-object v0, p0, Lcom/sec/android/cover/sviewcover/themeclock/SViewCoverImageClockWidget;->mClockHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$302(Lcom/sec/android/cover/sviewcover/themeclock/SViewCoverImageClockWidget;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/sec/android/cover/sviewcover/themeclock/SViewCoverImageClockWidget;
    .param p1, "x1"    # Z

    .prologue
    .line 30
    iput-boolean p1, p0, Lcom/sec/android/cover/sviewcover/themeclock/SViewCoverImageClockWidget;->mIs24HTime:Z

    return p1
.end method

.method public static getCurrentDateFormat(Landroid/content/Context;)Ljava/lang/String;
    .locals 9
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 275
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 276
    .local v5, "result":Ljava/lang/StringBuilder;
    const-string v6, "yyyy"

    .line 277
    .local v6, "year":Ljava/lang/String;
    const-string v4, "MM"

    .line 278
    .local v4, "month":Ljava/lang/String;
    const-string v0, "dd"

    .line 279
    .local v0, "day":Ljava/lang/String;
    const-string v1, "-"

    .line 281
    .local v1, "divider":Ljava/lang/String;
    invoke-static {p0}, Landroid/text/format/DateFormat;->getDateFormatOrder(Landroid/content/Context;)[C

    move-result-object v2

    .line 282
    .local v2, "formatArray":[C
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    array-length v7, v2

    if-ge v3, v7, :cond_4

    .line 283
    aget-char v7, v2, v3

    const/16 v8, 0x79

    if-ne v7, v8, :cond_0

    .line 284
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 286
    :cond_0
    aget-char v7, v2, v3

    const/16 v8, 0x4d

    if-ne v7, v8, :cond_1

    .line 287
    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 289
    :cond_1
    aget-char v7, v2, v3

    const/16 v8, 0x64

    if-ne v7, v8, :cond_2

    .line 290
    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 292
    :cond_2
    array-length v7, v2

    add-int/lit8 v7, v7, -0x1

    if-eq v3, v7, :cond_3

    .line 293
    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 282
    :cond_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 295
    :cond_4
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    return-object v7
.end method

.method private onThemeFontChanged(Ljava/lang/String;)V
    .locals 1
    .param p1, "fontPath"    # Ljava/lang/String;

    .prologue
    .line 160
    invoke-static {}, Lcom/sec/android/cover/FeatureUtils;->isSupportElasticPlugin()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 161
    iget-object v0, p0, Lcom/sec/android/cover/sviewcover/themeclock/SViewCoverImageClockWidget;->mContext:Landroid/content/Context;

    invoke-static {v0, p1}, Lcom/sec/android/cover/CoverUtils;->setClockFontPath(Landroid/content/Context;Ljava/lang/String;)V

    .line 162
    iput-object p1, p0, Lcom/sec/android/cover/sviewcover/themeclock/SViewCoverImageClockWidget;->mThemeFontPath:Ljava/lang/String;

    .line 164
    :cond_0
    return-void
.end method

.method private onTimeChanged()V
    .locals 2

    .prologue
    .line 192
    invoke-direct {p0}, Lcom/sec/android/cover/sviewcover/themeclock/SViewCoverImageClockWidget;->updateClockTime()V

    .line 193
    invoke-direct {p0}, Lcom/sec/android/cover/sviewcover/themeclock/SViewCoverImageClockWidget;->updateDate()V

    .line 194
    iget-object v0, p0, Lcom/sec/android/cover/sviewcover/themeclock/SViewCoverImageClockWidget;->mSingleClockContainer:Landroid/widget/LinearLayout;

    invoke-virtual {p0}, Lcom/sec/android/cover/sviewcover/themeclock/SViewCoverImageClockWidget;->getSingleTTSMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 195
    return-void
.end method

.method private setHour(I)V
    .locals 5
    .param p1, "hour"    # I

    .prologue
    const/4 v4, 0x0

    .line 249
    if-nez p1, :cond_0

    .line 250
    iget-object v2, p0, Lcom/sec/android/cover/sviewcover/themeclock/SViewCoverImageClockWidget;->mHour1th:Landroid/widget/ImageView;

    iget-object v3, p0, Lcom/sec/android/cover/sviewcover/themeclock/SViewCoverImageClockWidget;->DIGITS:[I

    aget v3, v3, v4

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 251
    iget-object v2, p0, Lcom/sec/android/cover/sviewcover/themeclock/SViewCoverImageClockWidget;->mHour10th:Landroid/widget/ImageView;

    iget-object v3, p0, Lcom/sec/android/cover/sviewcover/themeclock/SViewCoverImageClockWidget;->DIGITS:[I

    aget v3, v3, v4

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 264
    :goto_0
    return-void

    .line 254
    :cond_0
    rem-int/lit8 v1, p1, 0xa

    .line 255
    .local v1, "hour_zero":I
    iget-object v2, p0, Lcom/sec/android/cover/sviewcover/themeclock/SViewCoverImageClockWidget;->mHour1th:Landroid/widget/ImageView;

    iget-object v3, p0, Lcom/sec/android/cover/sviewcover/themeclock/SViewCoverImageClockWidget;->DIGITS:[I

    aget v3, v3, v1

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 257
    div-int/lit8 v0, p1, 0xa

    .line 258
    .local v0, "hour_tenth":I
    if-eqz v0, :cond_1

    .line 259
    iget-object v2, p0, Lcom/sec/android/cover/sviewcover/themeclock/SViewCoverImageClockWidget;->mHour10th:Landroid/widget/ImageView;

    iget-object v3, p0, Lcom/sec/android/cover/sviewcover/themeclock/SViewCoverImageClockWidget;->DIGITS:[I

    aget v3, v3, v0

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 260
    iget-object v2, p0, Lcom/sec/android/cover/sviewcover/themeclock/SViewCoverImageClockWidget;->mHour10th:Landroid/widget/ImageView;

    invoke-virtual {v2, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0

    .line 262
    :cond_1
    iget-object v2, p0, Lcom/sec/android/cover/sviewcover/themeclock/SViewCoverImageClockWidget;->mHour10th:Landroid/widget/ImageView;

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0
.end method

.method private setMin(I)V
    .locals 4
    .param p1, "min"    # I

    .prologue
    .line 267
    rem-int/lit8 v1, p1, 0xa

    .line 268
    .local v1, "min_zero":I
    iget-object v2, p0, Lcom/sec/android/cover/sviewcover/themeclock/SViewCoverImageClockWidget;->mMin1th:Landroid/widget/ImageView;

    iget-object v3, p0, Lcom/sec/android/cover/sviewcover/themeclock/SViewCoverImageClockWidget;->DIGITS:[I

    aget v3, v3, v1

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 270
    div-int/lit8 v0, p1, 0xa

    .line 271
    .local v0, "min_tenth":I
    iget-object v2, p0, Lcom/sec/android/cover/sviewcover/themeclock/SViewCoverImageClockWidget;->mMin10th:Landroid/widget/ImageView;

    iget-object v3, p0, Lcom/sec/android/cover/sviewcover/themeclock/SViewCoverImageClockWidget;->DIGITS:[I

    aget v3, v3, v0

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 272
    return-void
.end method

.method private setThemeFontTypeFace(Landroid/graphics/Typeface;)V
    .locals 1
    .param p1, "clockTypeface"    # Landroid/graphics/Typeface;

    .prologue
    .line 154
    if-eqz p1, :cond_0

    .line 155
    iget-object v0, p0, Lcom/sec/android/cover/sviewcover/themeclock/SViewCoverImageClockWidget;->mDayMonth:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 157
    :cond_0
    return-void
.end method

.method private updateClockTime()V
    .locals 7

    .prologue
    const/16 v6, 0xc

    .line 198
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v3

    iput-object v3, p0, Lcom/sec/android/cover/sviewcover/themeclock/SViewCoverImageClockWidget;->mCalendar:Ljava/util/Calendar;

    .line 199
    sget-object v3, Lcom/sec/android/cover/sviewcover/themeclock/SViewCoverImageClockWidget;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "initClock() : TimeZone ="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {}, Ljava/util/TimeZone;->getDefault()Ljava/util/TimeZone;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 200
    iget-object v3, p0, Lcom/sec/android/cover/sviewcover/themeclock/SViewCoverImageClockWidget;->mCalendar:Ljava/util/Calendar;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 202
    iget-object v3, p0, Lcom/sec/android/cover/sviewcover/themeclock/SViewCoverImageClockWidget;->mCalendar:Ljava/util/Calendar;

    invoke-virtual {v3, v6}, Ljava/util/Calendar;->get(I)I

    move-result v2

    .line 203
    .local v2, "minutes":I
    iget-object v3, p0, Lcom/sec/android/cover/sviewcover/themeclock/SViewCoverImageClockWidget;->mCalendar:Ljava/util/Calendar;

    const/16 v4, 0xa

    invoke-virtual {v3, v4}, Ljava/util/Calendar;->get(I)I

    move-result v0

    .line 204
    .local v0, "hour":I
    iget-object v3, p0, Lcom/sec/android/cover/sviewcover/themeclock/SViewCoverImageClockWidget;->mCalendar:Ljava/util/Calendar;

    const/16 v4, 0xb

    invoke-virtual {v3, v4}, Ljava/util/Calendar;->get(I)I

    move-result v1

    .line 205
    .local v1, "hour_day":I
    sget-object v3, Lcom/sec/android/cover/sviewcover/themeclock/SViewCoverImageClockWidget;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "min : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "hour : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "hour_day : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 207
    iget-boolean v3, p0, Lcom/sec/android/cover/sviewcover/themeclock/SViewCoverImageClockWidget;->mIs24HTime:Z

    if-eqz v3, :cond_1

    .line 208
    invoke-direct {p0, v1}, Lcom/sec/android/cover/sviewcover/themeclock/SViewCoverImageClockWidget;->setHour(I)V

    .line 216
    :goto_0
    invoke-direct {p0, v2}, Lcom/sec/android/cover/sviewcover/themeclock/SViewCoverImageClockWidget;->setMin(I)V

    .line 218
    iget-object v3, p0, Lcom/sec/android/cover/sviewcover/themeclock/SViewCoverImageClockWidget;->mAmPm:Landroid/widget/ImageView;

    if-eqz v3, :cond_0

    .line 219
    iget-boolean v3, p0, Lcom/sec/android/cover/sviewcover/themeclock/SViewCoverImageClockWidget;->mIs24HTime:Z

    if-nez v3, :cond_4

    .line 220
    const-string v3, "AM"

    const-string v4, "AA"

    iget-object v5, p0, Lcom/sec/android/cover/sviewcover/themeclock/SViewCoverImageClockWidget;->mCalendar:Ljava/util/Calendar;

    invoke-static {v4, v5}, Landroid/text/format/DateFormat;->format(Ljava/lang/CharSequence;Ljava/util/Calendar;)Ljava/lang/CharSequence;

    move-result-object v4

    invoke-interface {v4}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 221
    iget-object v3, p0, Lcom/sec/android/cover/sviewcover/themeclock/SViewCoverImageClockWidget;->mAmPm:Landroid/widget/ImageView;

    invoke-virtual {p0}, Lcom/sec/android/cover/sviewcover/themeclock/SViewCoverImageClockWidget;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    sget v5, Lcom/sec/android/sviewcover/R$drawable;->clock_am:I

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 225
    :goto_1
    iget-object v3, p0, Lcom/sec/android/cover/sviewcover/themeclock/SViewCoverImageClockWidget;->mAmPm:Landroid/widget/ImageView;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 230
    :cond_0
    :goto_2
    return-void

    .line 210
    :cond_1
    if-nez v0, :cond_2

    .line 211
    invoke-direct {p0, v6}, Lcom/sec/android/cover/sviewcover/themeclock/SViewCoverImageClockWidget;->setHour(I)V

    goto :goto_0

    .line 213
    :cond_2
    invoke-direct {p0, v0}, Lcom/sec/android/cover/sviewcover/themeclock/SViewCoverImageClockWidget;->setHour(I)V

    goto :goto_0

    .line 223
    :cond_3
    iget-object v3, p0, Lcom/sec/android/cover/sviewcover/themeclock/SViewCoverImageClockWidget;->mAmPm:Landroid/widget/ImageView;

    invoke-virtual {p0}, Lcom/sec/android/cover/sviewcover/themeclock/SViewCoverImageClockWidget;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    sget v5, Lcom/sec/android/sviewcover/R$drawable;->clock_pm:I

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_1

    .line 227
    :cond_4
    iget-object v3, p0, Lcom/sec/android/cover/sviewcover/themeclock/SViewCoverImageClockWidget;->mAmPm:Landroid/widget/ImageView;

    const/16 v4, 0x8

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_2
.end method

.method private updateDate()V
    .locals 6

    .prologue
    .line 234
    const-string v0, ""

    .line 235
    .local v0, "dateFormat":Ljava/lang/String;
    iget-object v4, p0, Lcom/sec/android/cover/sviewcover/themeclock/SViewCoverImageClockWidget;->mContext:Landroid/content/Context;

    invoke-static {v4}, Lcom/sec/android/cover/sviewcover/themeclock/SViewCoverImageClockWidget;->getCurrentDateFormat(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    .line 236
    .local v3, "value":Ljava/lang/String;
    sget v1, Lcom/sec/android/sviewcover/R$string;->sview_cover_wday_month_day_no_year:I

    .line 237
    .local v1, "resId_MM_dd":I
    sget v2, Lcom/sec/android/sviewcover/R$string;->sview_cover_wday_day_month_no_year:I

    .line 239
    .local v2, "resId_dd_MM":I
    const-string v4, "yyyy-MM-dd"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    const-string v4, "MM-dd-yyyy"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 240
    :cond_0
    iget-object v4, p0, Lcom/sec/android/cover/sviewcover/themeclock/SViewCoverImageClockWidget;->mContext:Landroid/content/Context;

    invoke-virtual {v4, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 245
    :cond_1
    :goto_0
    iget-object v4, p0, Lcom/sec/android/cover/sviewcover/themeclock/SViewCoverImageClockWidget;->mDayMonth:Landroid/widget/TextView;

    iget-object v5, p0, Lcom/sec/android/cover/sviewcover/themeclock/SViewCoverImageClockWidget;->mCalendar:Ljava/util/Calendar;

    invoke-static {v0, v5}, Landroid/text/format/DateFormat;->format(Ljava/lang/CharSequence;Ljava/util/Calendar;)Ljava/lang/CharSequence;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 246
    return-void

    .line 241
    :cond_2
    const-string v4, "dd-MM-yyyy"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 242
    iget-object v4, p0, Lcom/sec/android/cover/sviewcover/themeclock/SViewCoverImageClockWidget;->mContext:Landroid/content/Context;

    invoke-virtual {v4, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method


# virtual methods
.method public getSingleTTSMessage()Ljava/lang/String;
    .locals 8

    .prologue
    .line 299
    const-string v0, ""

    .line 300
    .local v0, "TTSMessage":Ljava/lang/String;
    const-string v1, ""

    .line 301
    .local v1, "dateFormat":Ljava/lang/String;
    iget-object v5, p0, Lcom/sec/android/cover/sviewcover/themeclock/SViewCoverImageClockWidget;->mContext:Landroid/content/Context;

    invoke-static {v5}, Lcom/sec/android/cover/sviewcover/themeclock/SViewCoverImageClockWidget;->getCurrentDateFormat(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v4

    .line 302
    .local v4, "value":Ljava/lang/String;
    const-string v5, "yyyy-MM-dd"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_0

    const-string v5, "MM-dd-yyyy"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 303
    :cond_0
    iget-object v5, p0, Lcom/sec/android/cover/sviewcover/themeclock/SViewCoverImageClockWidget;->mContext:Landroid/content/Context;

    sget v6, Lcom/sec/android/sviewcover/R$string;->full_wday_month_day_no_year:I

    invoke-virtual {v5, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 307
    :cond_1
    :goto_0
    iget-object v5, p0, Lcom/sec/android/cover/sviewcover/themeclock/SViewCoverImageClockWidget;->mCalendar:Ljava/util/Calendar;

    invoke-static {v1, v5}, Landroid/text/format/DateFormat;->format(Ljava/lang/CharSequence;Ljava/util/Calendar;)Ljava/lang/CharSequence;

    move-result-object v2

    .line 310
    .local v2, "dateText":Ljava/lang/CharSequence;
    iget-object v5, p0, Lcom/sec/android/cover/sviewcover/themeclock/SViewCoverImageClockWidget;->mCalendar:Ljava/util/Calendar;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    invoke-virtual {v5, v6, v7}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 311
    iget-boolean v5, p0, Lcom/sec/android/cover/sviewcover/themeclock/SViewCoverImageClockWidget;->mIs24HTime:Z

    if-eqz v5, :cond_4

    .line 312
    const-string v5, "kk:mm"

    iget-object v6, p0, Lcom/sec/android/cover/sviewcover/themeclock/SViewCoverImageClockWidget;->mCalendar:Ljava/util/Calendar;

    invoke-static {v5, v6}, Landroid/text/format/DateFormat;->format(Ljava/lang/CharSequence;Ljava/util/Calendar;)Ljava/lang/CharSequence;

    move-result-object v5

    invoke-interface {v5}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v3

    .line 318
    .local v3, "mTTSTime":Ljava/lang/String;
    :cond_2
    :goto_1
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 320
    return-object v0

    .line 304
    .end local v2    # "dateText":Ljava/lang/CharSequence;
    .end local v3    # "mTTSTime":Ljava/lang/String;
    :cond_3
    const-string v5, "dd-MM-yyyy"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 305
    iget-object v5, p0, Lcom/sec/android/cover/sviewcover/themeclock/SViewCoverImageClockWidget;->mContext:Landroid/content/Context;

    sget v6, Lcom/sec/android/sviewcover/R$string;->full_wday_day_month_no_year:I

    invoke-virtual {v5, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 314
    .restart local v2    # "dateText":Ljava/lang/CharSequence;
    :cond_4
    sget-object v5, Lcom/sec/android/cover/sviewcover/themeclock/SViewCoverImageClockWidget;->mTimeFormat:Ljava/lang/String;

    iget-object v6, p0, Lcom/sec/android/cover/sviewcover/themeclock/SViewCoverImageClockWidget;->mCalendar:Ljava/util/Calendar;

    invoke-static {v5, v6}, Landroid/text/format/DateFormat;->format(Ljava/lang/CharSequence;Ljava/util/Calendar;)Ljava/lang/CharSequence;

    move-result-object v5

    invoke-interface {v5}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v3

    .line 315
    .restart local v3    # "mTTSTime":Ljava/lang/String;
    iget-object v5, p0, Lcom/sec/android/cover/sviewcover/themeclock/SViewCoverImageClockWidget;->mAmPm:Landroid/widget/ImageView;

    if-eqz v5, :cond_2

    .line 316
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "AA"

    iget-object v7, p0, Lcom/sec/android/cover/sviewcover/themeclock/SViewCoverImageClockWidget;->mCalendar:Ljava/util/Calendar;

    invoke-static {v6, v7}, Landroid/text/format/DateFormat;->format(Ljava/lang/CharSequence;Ljava/util/Calendar;)Ljava/lang/CharSequence;

    move-result-object v6

    invoke-interface {v6}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    goto :goto_1
.end method

.method protected onAttachedToWindow()V
    .locals 2

    .prologue
    .line 168
    invoke-super {p0}, Landroid/widget/LinearLayout;->onAttachedToWindow()V

    .line 169
    iget-object v0, p0, Lcom/sec/android/cover/sviewcover/themeclock/SViewCoverImageClockWidget;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/text/format/DateFormat;->is24HourFormat(Landroid/content/Context;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/sec/android/cover/sviewcover/themeclock/SViewCoverImageClockWidget;->mIs24HTime:Z

    .line 171
    iget-object v0, p0, Lcom/sec/android/cover/sviewcover/themeclock/SViewCoverImageClockWidget;->mThemeFontPath:Ljava/lang/String;

    if-nez v0, :cond_0

    invoke-static {}, Lcom/sec/android/cover/FeatureUtils;->isSupportElasticPlugin()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 172
    iget-object v0, p0, Lcom/sec/android/cover/sviewcover/themeclock/SViewCoverImageClockWidget;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/sec/android/cover/CoverUtils;->getClockFontPath(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/cover/sviewcover/themeclock/SViewCoverImageClockWidget;->mThemeFontPath:Ljava/lang/String;

    .line 175
    :cond_0
    invoke-direct {p0}, Lcom/sec/android/cover/sviewcover/themeclock/SViewCoverImageClockWidget;->onTimeChanged()V

    .line 176
    iget-object v0, p0, Lcom/sec/android/cover/sviewcover/themeclock/SViewCoverImageClockWidget;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/sec/android/cover/monitor/CoverUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/sec/android/cover/monitor/CoverUpdateMonitor;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/cover/sviewcover/themeclock/SViewCoverImageClockWidget;->mUpdateMonitorCallback:Lcom/sec/android/cover/monitor/CoverUpdateMonitorCallback;

    invoke-virtual {v0, v1}, Lcom/sec/android/cover/monitor/CoverUpdateMonitor;->registerCallback(Lcom/sec/android/cover/monitor/CoverUpdateMonitorCallback;)V

    .line 177
    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 2

    .prologue
    .line 181
    invoke-super {p0}, Landroid/widget/LinearLayout;->onDetachedFromWindow()V

    .line 182
    iget-object v0, p0, Lcom/sec/android/cover/sviewcover/themeclock/SViewCoverImageClockWidget;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/sec/android/cover/monitor/CoverUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/sec/android/cover/monitor/CoverUpdateMonitor;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/cover/sviewcover/themeclock/SViewCoverImageClockWidget;->mUpdateMonitorCallback:Lcom/sec/android/cover/monitor/CoverUpdateMonitorCallback;

    invoke-virtual {v0, v1}, Lcom/sec/android/cover/monitor/CoverUpdateMonitor;->unregisterCallback(Lcom/sec/android/cover/monitor/CoverUpdateMonitorCallback;)V

    .line 183
    return-void
.end method

.method protected onFinishInflate()V
    .locals 1

    .prologue
    .line 137
    invoke-super {p0}, Landroid/widget/LinearLayout;->onFinishInflate()V

    .line 138
    sget v0, Lcom/sec/android/sviewcover/R$id;->theme_clock_time_container:I

    invoke-virtual {p0, v0}, Lcom/sec/android/cover/sviewcover/themeclock/SViewCoverImageClockWidget;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/sec/android/cover/sviewcover/themeclock/SViewCoverImageClockWidget;->mSingleClockContainer:Landroid/widget/LinearLayout;

    .line 139
    sget v0, Lcom/sec/android/sviewcover/R$id;->hour_10th:I

    invoke-virtual {p0, v0}, Lcom/sec/android/cover/sviewcover/themeclock/SViewCoverImageClockWidget;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/sec/android/cover/sviewcover/themeclock/SViewCoverImageClockWidget;->mHour10th:Landroid/widget/ImageView;

    .line 140
    sget v0, Lcom/sec/android/sviewcover/R$id;->hour_1th:I

    invoke-virtual {p0, v0}, Lcom/sec/android/cover/sviewcover/themeclock/SViewCoverImageClockWidget;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/sec/android/cover/sviewcover/themeclock/SViewCoverImageClockWidget;->mHour1th:Landroid/widget/ImageView;

    .line 141
    sget v0, Lcom/sec/android/sviewcover/R$id;->minute_10th:I

    invoke-virtual {p0, v0}, Lcom/sec/android/cover/sviewcover/themeclock/SViewCoverImageClockWidget;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/sec/android/cover/sviewcover/themeclock/SViewCoverImageClockWidget;->mMin10th:Landroid/widget/ImageView;

    .line 142
    sget v0, Lcom/sec/android/sviewcover/R$id;->minute_1th:I

    invoke-virtual {p0, v0}, Lcom/sec/android/cover/sviewcover/themeclock/SViewCoverImageClockWidget;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/sec/android/cover/sviewcover/themeclock/SViewCoverImageClockWidget;->mMin1th:Landroid/widget/ImageView;

    .line 143
    sget v0, Lcom/sec/android/sviewcover/R$id;->digital_clock_ampm:I

    invoke-virtual {p0, v0}, Lcom/sec/android/cover/sviewcover/themeclock/SViewCoverImageClockWidget;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/sec/android/cover/sviewcover/themeclock/SViewCoverImageClockWidget;->mAmPm:Landroid/widget/ImageView;

    .line 144
    sget v0, Lcom/sec/android/sviewcover/R$id;->theme_clock_date:I

    invoke-virtual {p0, v0}, Lcom/sec/android/cover/sviewcover/themeclock/SViewCoverImageClockWidget;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/sec/android/cover/sviewcover/themeclock/SViewCoverImageClockWidget;->mDayMonth:Landroid/widget/TextView;

    .line 146
    iget-object v0, p0, Lcom/sec/android/cover/sviewcover/themeclock/SViewCoverImageClockWidget;->mThemeFontPath:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 147
    iget-object v0, p0, Lcom/sec/android/cover/sviewcover/themeclock/SViewCoverImageClockWidget;->mThemeFontPath:Ljava/lang/String;

    invoke-static {v0}, Landroid/graphics/Typeface;->createFromFile(Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/sec/android/cover/sviewcover/themeclock/SViewCoverImageClockWidget;->setThemeFontTypeFace(Landroid/graphics/Typeface;)V

    .line 150
    :cond_0
    invoke-direct {p0}, Lcom/sec/android/cover/sviewcover/themeclock/SViewCoverImageClockWidget;->onTimeChanged()V

    .line 151
    return-void
.end method

.method public onPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V
    .locals 1
    .param p1, "event"    # Landroid/view/accessibility/AccessibilityEvent;

    .prologue
    .line 187
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->onPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V

    .line 188
    invoke-virtual {p0}, Lcom/sec/android/cover/sviewcover/themeclock/SViewCoverImageClockWidget;->getSingleTTSMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityEvent;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 189
    return-void
.end method
