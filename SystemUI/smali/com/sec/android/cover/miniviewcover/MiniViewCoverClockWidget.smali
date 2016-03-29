.class public Lcom/sec/android/cover/miniviewcover/MiniViewCoverClockWidget;
.super Landroid/widget/LinearLayout;
.source "MiniViewCoverClockWidget.java"


# static fields
.field private static TAG:Ljava/lang/String;

.field private static mTimeFormat:Ljava/lang/String;


# instance fields
.field private final MSG_CLOCK_UPDATE:I

.field private mAmPm:Landroid/widget/TextView;

.field private mCalendar:Ljava/util/Calendar;

.field private mClockHandler:Landroid/os/Handler;

.field private mClockRoot:Landroid/widget/LinearLayout;

.field private mClockView:Landroid/widget/LinearLayout;

.field private mContext:Landroid/content/Context;

.field private mDateRoot:Landroid/widget/LinearLayout;

.field private mDayofWeek:Landroid/widget/TextView;

.field private mIs24HTime:Z

.field private mIsCover2:Z

.field private mMonthandDay:Landroid/widget/TextView;

.field private mTime:Landroid/widget/TextView;

.field private mUpdateMonitorCallback:Lcom/sec/android/cover/monitor/CoverUpdateMonitorCallback;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 48
    const-class v0, Lcom/sec/android/cover/miniviewcover/MiniViewCoverClockWidget;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/sec/android/cover/miniviewcover/MiniViewCoverClockWidget;->TAG:Ljava/lang/String;

    .line 50
    const-string v0, "h:mm"

    sput-object v0, Lcom/sec/android/cover/miniviewcover/MiniViewCoverClockWidget;->mTimeFormat:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 122
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 66
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/android/cover/miniviewcover/MiniViewCoverClockWidget;->mIs24HTime:Z

    .line 70
    new-instance v0, Lcom/sec/android/cover/miniviewcover/MiniViewCoverClockWidget$1;

    invoke-direct {v0, p0}, Lcom/sec/android/cover/miniviewcover/MiniViewCoverClockWidget$1;-><init>(Lcom/sec/android/cover/miniviewcover/MiniViewCoverClockWidget;)V

    iput-object v0, p0, Lcom/sec/android/cover/miniviewcover/MiniViewCoverClockWidget;->mUpdateMonitorCallback:Lcom/sec/android/cover/monitor/CoverUpdateMonitorCallback;

    .line 109
    const/16 v0, 0x12c2

    iput v0, p0, Lcom/sec/android/cover/miniviewcover/MiniViewCoverClockWidget;->MSG_CLOCK_UPDATE:I

    .line 110
    new-instance v0, Lcom/sec/android/cover/miniviewcover/MiniViewCoverClockWidget$2;

    invoke-direct {v0, p0}, Lcom/sec/android/cover/miniviewcover/MiniViewCoverClockWidget$2;-><init>(Lcom/sec/android/cover/miniviewcover/MiniViewCoverClockWidget;)V

    iput-object v0, p0, Lcom/sec/android/cover/miniviewcover/MiniViewCoverClockWidget;->mClockHandler:Landroid/os/Handler;

    .line 123
    iput-object p1, p0, Lcom/sec/android/cover/miniviewcover/MiniViewCoverClockWidget;->mContext:Landroid/content/Context;

    .line 125
    sget-object v0, Lcom/sec/android/cover/miniviewcover/MiniViewCoverClockWidget;->TAG:Ljava/lang/String;

    const-string v1, "Clock()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 126
    return-void
.end method

.method static synthetic access$000(Lcom/sec/android/cover/miniviewcover/MiniViewCoverClockWidget;)V
    .locals 0
    .param p0, "x0"    # Lcom/sec/android/cover/miniviewcover/MiniViewCoverClockWidget;

    .prologue
    .line 46
    invoke-direct {p0}, Lcom/sec/android/cover/miniviewcover/MiniViewCoverClockWidget;->onTimeChanged()V

    return-void
.end method

.method static synthetic access$100(Lcom/sec/android/cover/miniviewcover/MiniViewCoverClockWidget;)Landroid/os/Handler;
    .locals 1
    .param p0, "x0"    # Lcom/sec/android/cover/miniviewcover/MiniViewCoverClockWidget;

    .prologue
    .line 46
    iget-object v0, p0, Lcom/sec/android/cover/miniviewcover/MiniViewCoverClockWidget;->mClockHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$202(Lcom/sec/android/cover/miniviewcover/MiniViewCoverClockWidget;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/sec/android/cover/miniviewcover/MiniViewCoverClockWidget;
    .param p1, "x1"    # Z

    .prologue
    .line 46
    iput-boolean p1, p0, Lcom/sec/android/cover/miniviewcover/MiniViewCoverClockWidget;->mIs24HTime:Z

    return p1
.end method

.method static synthetic access$300()Ljava/lang/String;
    .locals 1

    .prologue
    .line 46
    sget-object v0, Lcom/sec/android/cover/miniviewcover/MiniViewCoverClockWidget;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$400(Lcom/sec/android/cover/miniviewcover/MiniViewCoverClockWidget;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/sec/android/cover/miniviewcover/MiniViewCoverClockWidget;

    .prologue
    .line 46
    iget-object v0, p0, Lcom/sec/android/cover/miniviewcover/MiniViewCoverClockWidget;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method public static getCurrentDateFormat(Landroid/content/Context;)Ljava/lang/String;
    .locals 9
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 301
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 302
    .local v5, "result":Ljava/lang/StringBuilder;
    const-string v6, "yyyy"

    .line 303
    .local v6, "year":Ljava/lang/String;
    const-string v4, "MM"

    .line 304
    .local v4, "month":Ljava/lang/String;
    const-string v0, "dd"

    .line 305
    .local v0, "day":Ljava/lang/String;
    const-string v1, "-"

    .line 307
    .local v1, "divider":Ljava/lang/String;
    invoke-static {p0}, Landroid/text/format/DateFormat;->getDateFormatOrder(Landroid/content/Context;)[C

    move-result-object v2

    .line 308
    .local v2, "formatArray":[C
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    array-length v7, v2

    if-ge v3, v7, :cond_4

    .line 309
    aget-char v7, v2, v3

    const/16 v8, 0x79

    if-ne v7, v8, :cond_0

    .line 310
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 312
    :cond_0
    aget-char v7, v2, v3

    const/16 v8, 0x4d

    if-ne v7, v8, :cond_1

    .line 313
    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 315
    :cond_1
    aget-char v7, v2, v3

    const/16 v8, 0x64

    if-ne v7, v8, :cond_2

    .line 316
    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 318
    :cond_2
    array-length v7, v2

    add-int/lit8 v7, v7, -0x1

    if-eq v3, v7, :cond_3

    .line 319
    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 308
    :cond_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 321
    :cond_4
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    return-object v7
.end method

.method private onTimeChanged()V
    .locals 15

    .prologue
    const/16 v14, 0x50

    const/16 v13, 0x31

    const/4 v12, 0x0

    .line 206
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v9

    iput-object v9, p0, Lcom/sec/android/cover/miniviewcover/MiniViewCoverClockWidget;->mCalendar:Ljava/util/Calendar;

    .line 207
    sget-object v9, Lcom/sec/android/cover/miniviewcover/MiniViewCoverClockWidget;->TAG:Ljava/lang/String;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "initClock() : TimeZone ="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-static {}, Ljava/util/TimeZone;->getDefault()Ljava/util/TimeZone;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 208
    iget-object v9, p0, Lcom/sec/android/cover/miniviewcover/MiniViewCoverClockWidget;->mCalendar:Ljava/util/Calendar;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v10

    invoke-virtual {v9, v10, v11}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 210
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v9

    invoke-virtual {v9}, Ljava/util/Locale;->toString()Ljava/lang/String;

    move-result-object v2

    .line 211
    .local v2, "locale":Ljava/lang/String;
    if-eqz v2, :cond_0

    .line 212
    const-string v9, "ja_JP"

    invoke-virtual {v2, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_8

    .line 213
    const-string v9, "K:mm"

    sput-object v9, Lcom/sec/android/cover/miniviewcover/MiniViewCoverClockWidget;->mTimeFormat:Ljava/lang/String;

    .line 219
    :cond_0
    :goto_0
    iget-boolean v9, p0, Lcom/sec/android/cover/miniviewcover/MiniViewCoverClockWidget;->mIs24HTime:Z

    if-eqz v9, :cond_9

    .line 220
    const-string v9, "kk:mm"

    iget-object v10, p0, Lcom/sec/android/cover/miniviewcover/MiniViewCoverClockWidget;->mCalendar:Ljava/util/Calendar;

    invoke-static {v9, v10}, Landroid/text/format/DateFormat;->format(Ljava/lang/CharSequence;Ljava/util/Calendar;)Ljava/lang/CharSequence;

    move-result-object v7

    .line 221
    .local v7, "tmp":Ljava/lang/CharSequence;
    invoke-interface {v7}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v6

    .line 222
    .local v6, "times":Ljava/lang/String;
    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    iget-object v9, p0, Lcom/sec/android/cover/miniviewcover/MiniViewCoverClockWidget;->mTime:Landroid/widget/TextView;

    invoke-virtual {v9}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v9

    invoke-direct {v1, v9}, Landroid/widget/LinearLayout$LayoutParams;-><init>(Landroid/view/ViewGroup$LayoutParams;)V

    .line 224
    .local v1, "layoutParams":Landroid/widget/LinearLayout$LayoutParams;
    iget-boolean v9, p0, Lcom/sec/android/cover/miniviewcover/MiniViewCoverClockWidget;->mIsCover2:Z

    if-eqz v9, :cond_1

    invoke-interface {v7, v12}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v9

    if-ne v9, v13, :cond_1

    .line 227
    :try_start_0
    const-string v9, "UTF-8"

    invoke-static {v6, v9}, Ljava/net/URLDecoder;->decode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 233
    :cond_1
    :goto_1
    iput v14, v1, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    .line 234
    iget-object v9, p0, Lcom/sec/android/cover/miniviewcover/MiniViewCoverClockWidget;->mTime:Landroid/widget/TextView;

    invoke-virtual {v9, v1}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 235
    if-eqz v6, :cond_2

    .line 236
    iget-object v9, p0, Lcom/sec/android/cover/miniviewcover/MiniViewCoverClockWidget;->mTime:Landroid/widget/TextView;

    invoke-virtual {v9, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 238
    :cond_2
    iget-object v9, p0, Lcom/sec/android/cover/miniviewcover/MiniViewCoverClockWidget;->mAmPm:Landroid/widget/TextView;

    if-eqz v9, :cond_3

    .line 239
    iget-object v9, p0, Lcom/sec/android/cover/miniviewcover/MiniViewCoverClockWidget;->mAmPm:Landroid/widget/TextView;

    const/16 v10, 0x8

    invoke-virtual {v9, v10}, Landroid/widget/TextView;->setVisibility(I)V

    .line 262
    :cond_3
    :goto_2
    iget-object v9, p0, Lcom/sec/android/cover/miniviewcover/MiniViewCoverClockWidget;->mAmPm:Landroid/widget/TextView;

    if-eqz v9, :cond_4

    .line 263
    iget-object v9, p0, Lcom/sec/android/cover/miniviewcover/MiniViewCoverClockWidget;->mAmPm:Landroid/widget/TextView;

    const-string v10, "AA"

    iget-object v11, p0, Lcom/sec/android/cover/miniviewcover/MiniViewCoverClockWidget;->mCalendar:Ljava/util/Calendar;

    invoke-static {v10, v11}, Landroid/text/format/DateFormat;->format(Ljava/lang/CharSequence;Ljava/util/Calendar;)Ljava/lang/CharSequence;

    move-result-object v10

    invoke-virtual {v9, v10}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 264
    iget-object v9, p0, Lcom/sec/android/cover/miniviewcover/MiniViewCoverClockWidget;->mAmPm:Landroid/widget/TextView;

    const/4 v10, 0x1

    invoke-virtual {v9, v10}, Landroid/widget/TextView;->setAllCaps(Z)V

    .line 267
    :cond_4
    const-string v0, ""

    .line 268
    .local v0, "dateFormat":Ljava/lang/String;
    iget-object v9, p0, Lcom/sec/android/cover/miniviewcover/MiniViewCoverClockWidget;->mContext:Landroid/content/Context;

    invoke-static {v9}, Lcom/sec/android/cover/miniviewcover/MiniViewCoverClockWidget;->getCurrentDateFormat(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v8

    .line 269
    .local v8, "value":Ljava/lang/String;
    sget v3, Lcom/sec/android/sviewcover/R$string;->sview_cover_wday_month_day_no_year:I

    .line 270
    .local v3, "resId_MM_dd":I
    sget v4, Lcom/sec/android/sviewcover/R$string;->sview_cover_wday_day_month_no_year:I

    .line 272
    .local v4, "resId_dd_MM":I
    iget-object v9, p0, Lcom/sec/android/cover/miniviewcover/MiniViewCoverClockWidget;->mDayofWeek:Landroid/widget/TextView;

    if-eqz v9, :cond_c

    .line 273
    sget v3, Lcom/sec/android/sviewcover/R$string;->mini_cover_month_day_no_year:I

    .line 274
    sget v4, Lcom/sec/android/sviewcover/R$string;->mini_cover_day_month_no_year:I

    .line 280
    :goto_3
    const-string v9, "yyyy-MM-dd"

    invoke-virtual {v9, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_5

    const-string v9, "MM-dd-yyyy"

    invoke-virtual {v9, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_d

    .line 281
    :cond_5
    iget-object v9, p0, Lcom/sec/android/cover/miniviewcover/MiniViewCoverClockWidget;->mContext:Landroid/content/Context;

    invoke-virtual {v9, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 286
    :cond_6
    :goto_4
    iget-object v9, p0, Lcom/sec/android/cover/miniviewcover/MiniViewCoverClockWidget;->mDayofWeek:Landroid/widget/TextView;

    if-eqz v9, :cond_7

    iget-object v9, p0, Lcom/sec/android/cover/miniviewcover/MiniViewCoverClockWidget;->mMonthandDay:Landroid/widget/TextView;

    if-eqz v9, :cond_7

    .line 287
    if-eqz v2, :cond_e

    const-string v9, "ko_KR"

    invoke-virtual {v2, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_e

    .line 288
    iget-object v9, p0, Lcom/sec/android/cover/miniviewcover/MiniViewCoverClockWidget;->mMonthandDay:Landroid/widget/TextView;

    iget-object v10, p0, Lcom/sec/android/cover/miniviewcover/MiniViewCoverClockWidget;->mCalendar:Ljava/util/Calendar;

    invoke-static {v0, v10}, Landroid/text/format/DateFormat;->format(Ljava/lang/CharSequence;Ljava/util/Calendar;)Ljava/lang/CharSequence;

    move-result-object v10

    invoke-virtual {v9, v10}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 289
    iget-object v9, p0, Lcom/sec/android/cover/miniviewcover/MiniViewCoverClockWidget;->mDayofWeek:Landroid/widget/TextView;

    iget-object v10, p0, Lcom/sec/android/cover/miniviewcover/MiniViewCoverClockWidget;->mContext:Landroid/content/Context;

    sget v11, Lcom/sec/android/sviewcover/R$string;->clear_cover_wday_day:I

    invoke-virtual {v10, v11}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v10

    iget-object v11, p0, Lcom/sec/android/cover/miniviewcover/MiniViewCoverClockWidget;->mCalendar:Ljava/util/Calendar;

    invoke-static {v10, v11}, Landroid/text/format/DateFormat;->format(Ljava/lang/CharSequence;Ljava/util/Calendar;)Ljava/lang/CharSequence;

    move-result-object v10

    invoke-virtual {v9, v10}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 296
    :cond_7
    :goto_5
    iget-object v9, p0, Lcom/sec/android/cover/miniviewcover/MiniViewCoverClockWidget;->mClockView:Landroid/widget/LinearLayout;

    invoke-virtual {p0}, Lcom/sec/android/cover/miniviewcover/MiniViewCoverClockWidget;->getSingleTTSMessage()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Landroid/widget/LinearLayout;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 297
    return-void

    .line 215
    .end local v0    # "dateFormat":Ljava/lang/String;
    .end local v1    # "layoutParams":Landroid/widget/LinearLayout$LayoutParams;
    .end local v3    # "resId_MM_dd":I
    .end local v4    # "resId_dd_MM":I
    .end local v6    # "times":Ljava/lang/String;
    .end local v7    # "tmp":Ljava/lang/CharSequence;
    .end local v8    # "value":Ljava/lang/String;
    :cond_8
    const-string v9, "h:mm"

    sput-object v9, Lcom/sec/android/cover/miniviewcover/MiniViewCoverClockWidget;->mTimeFormat:Ljava/lang/String;

    goto/16 :goto_0

    .line 228
    .restart local v1    # "layoutParams":Landroid/widget/LinearLayout$LayoutParams;
    .restart local v6    # "times":Ljava/lang/String;
    .restart local v7    # "tmp":Ljava/lang/CharSequence;
    :catch_0
    move-exception v5

    .line 229
    .local v5, "t":Ljava/lang/Throwable;
    invoke-interface {v7}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v6

    .line 230
    invoke-virtual {v5}, Ljava/lang/Throwable;->printStackTrace()V

    goto/16 :goto_1

    .line 241
    .end local v1    # "layoutParams":Landroid/widget/LinearLayout$LayoutParams;
    .end local v5    # "t":Ljava/lang/Throwable;
    .end local v6    # "times":Ljava/lang/String;
    .end local v7    # "tmp":Ljava/lang/CharSequence;
    :cond_9
    sget-object v9, Lcom/sec/android/cover/miniviewcover/MiniViewCoverClockWidget;->mTimeFormat:Ljava/lang/String;

    iget-object v10, p0, Lcom/sec/android/cover/miniviewcover/MiniViewCoverClockWidget;->mCalendar:Ljava/util/Calendar;

    invoke-static {v9, v10}, Landroid/text/format/DateFormat;->format(Ljava/lang/CharSequence;Ljava/util/Calendar;)Ljava/lang/CharSequence;

    move-result-object v7

    .line 242
    .restart local v7    # "tmp":Ljava/lang/CharSequence;
    invoke-interface {v7}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v6

    .line 243
    .restart local v6    # "times":Ljava/lang/String;
    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    iget-object v9, p0, Lcom/sec/android/cover/miniviewcover/MiniViewCoverClockWidget;->mTime:Landroid/widget/TextView;

    invoke-virtual {v9}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v9

    invoke-direct {v1, v9}, Landroid/widget/LinearLayout$LayoutParams;-><init>(Landroid/view/ViewGroup$LayoutParams;)V

    .line 245
    .restart local v1    # "layoutParams":Landroid/widget/LinearLayout$LayoutParams;
    iget-boolean v9, p0, Lcom/sec/android/cover/miniviewcover/MiniViewCoverClockWidget;->mIsCover2:Z

    if-eqz v9, :cond_a

    invoke-interface {v7, v12}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v9

    if-ne v9, v13, :cond_a

    .line 248
    :try_start_1
    const-string v9, "UTF-8"

    invoke-static {v6, v9}, Ljava/net/URLDecoder;->decode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1

    .line 254
    :cond_a
    :goto_6
    iput v14, v1, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    .line 255
    iget-object v9, p0, Lcom/sec/android/cover/miniviewcover/MiniViewCoverClockWidget;->mTime:Landroid/widget/TextView;

    invoke-virtual {v9, v1}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 256
    if-eqz v6, :cond_b

    .line 257
    iget-object v9, p0, Lcom/sec/android/cover/miniviewcover/MiniViewCoverClockWidget;->mTime:Landroid/widget/TextView;

    invoke-virtual {v9, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 259
    :cond_b
    iget-object v9, p0, Lcom/sec/android/cover/miniviewcover/MiniViewCoverClockWidget;->mAmPm:Landroid/widget/TextView;

    if-eqz v9, :cond_3

    .line 260
    iget-object v9, p0, Lcom/sec/android/cover/miniviewcover/MiniViewCoverClockWidget;->mAmPm:Landroid/widget/TextView;

    invoke-virtual {v9, v12}, Landroid/widget/TextView;->setVisibility(I)V

    goto/16 :goto_2

    .line 249
    :catch_1
    move-exception v5

    .line 250
    .restart local v5    # "t":Ljava/lang/Throwable;
    invoke-interface {v7}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v6

    .line 251
    invoke-virtual {v5}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_6

    .line 276
    .end local v5    # "t":Ljava/lang/Throwable;
    .restart local v0    # "dateFormat":Ljava/lang/String;
    .restart local v3    # "resId_MM_dd":I
    .restart local v4    # "resId_dd_MM":I
    .restart local v8    # "value":Ljava/lang/String;
    :cond_c
    sget v3, Lcom/sec/android/sviewcover/R$string;->sview_cover_wday_month_day_no_year:I

    .line 277
    sget v4, Lcom/sec/android/sviewcover/R$string;->sview_cover_wday_day_month_no_year:I

    goto/16 :goto_3

    .line 282
    :cond_d
    const-string v9, "dd-MM-yyyy"

    invoke-virtual {v9, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_6

    .line 283
    iget-object v9, p0, Lcom/sec/android/cover/miniviewcover/MiniViewCoverClockWidget;->mContext:Landroid/content/Context;

    invoke-virtual {v9, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_4

    .line 291
    :cond_e
    iget-object v9, p0, Lcom/sec/android/cover/miniviewcover/MiniViewCoverClockWidget;->mMonthandDay:Landroid/widget/TextView;

    iget-object v10, p0, Lcom/sec/android/cover/miniviewcover/MiniViewCoverClockWidget;->mCalendar:Ljava/util/Calendar;

    invoke-static {v0, v10}, Landroid/text/format/DateFormat;->format(Ljava/lang/CharSequence;Ljava/util/Calendar;)Ljava/lang/CharSequence;

    move-result-object v10

    invoke-virtual {v9, v10}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 292
    iget-object v9, p0, Lcom/sec/android/cover/miniviewcover/MiniViewCoverClockWidget;->mDayofWeek:Landroid/widget/TextView;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v11, p0, Lcom/sec/android/cover/miniviewcover/MiniViewCoverClockWidget;->mContext:Landroid/content/Context;

    sget v12, Lcom/sec/android/sviewcover/R$string;->clear_cover_wday_day:I

    invoke-virtual {v11, v12}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v11

    iget-object v12, p0, Lcom/sec/android/cover/miniviewcover/MiniViewCoverClockWidget;->mCalendar:Ljava/util/Calendar;

    invoke-static {v11, v12}, Landroid/text/format/DateFormat;->format(Ljava/lang/CharSequence;Ljava/util/Calendar;)Ljava/lang/CharSequence;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ","

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_5
.end method


# virtual methods
.method public getSingleTTSMessage()Ljava/lang/String;
    .locals 8

    .prologue
    .line 326
    const-string v0, ""

    .line 328
    .local v0, "TTSMessage":Ljava/lang/String;
    const-string v1, ""

    .line 329
    .local v1, "dateFormat":Ljava/lang/String;
    iget-object v5, p0, Lcom/sec/android/cover/miniviewcover/MiniViewCoverClockWidget;->mContext:Landroid/content/Context;

    invoke-static {v5}, Lcom/sec/android/cover/miniviewcover/MiniViewCoverClockWidget;->getCurrentDateFormat(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v4

    .line 330
    .local v4, "value":Ljava/lang/String;
    const-string v5, "yyyy-MM-dd"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_0

    const-string v5, "MM-dd-yyyy"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 331
    :cond_0
    iget-object v5, p0, Lcom/sec/android/cover/miniviewcover/MiniViewCoverClockWidget;->mContext:Landroid/content/Context;

    sget v6, Lcom/sec/android/sviewcover/R$string;->full_wday_month_day_no_year:I

    invoke-virtual {v5, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 335
    :cond_1
    :goto_0
    iget-object v5, p0, Lcom/sec/android/cover/miniviewcover/MiniViewCoverClockWidget;->mCalendar:Ljava/util/Calendar;

    invoke-static {v1, v5}, Landroid/text/format/DateFormat;->format(Ljava/lang/CharSequence;Ljava/util/Calendar;)Ljava/lang/CharSequence;

    move-result-object v2

    .line 338
    .local v2, "dateText":Ljava/lang/CharSequence;
    iget-object v5, p0, Lcom/sec/android/cover/miniviewcover/MiniViewCoverClockWidget;->mCalendar:Ljava/util/Calendar;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    invoke-virtual {v5, v6, v7}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 339
    iget-boolean v5, p0, Lcom/sec/android/cover/miniviewcover/MiniViewCoverClockWidget;->mIs24HTime:Z

    if-eqz v5, :cond_4

    .line 340
    const-string v5, "kk:mm"

    iget-object v6, p0, Lcom/sec/android/cover/miniviewcover/MiniViewCoverClockWidget;->mCalendar:Ljava/util/Calendar;

    invoke-static {v5, v6}, Landroid/text/format/DateFormat;->format(Ljava/lang/CharSequence;Ljava/util/Calendar;)Ljava/lang/CharSequence;

    move-result-object v5

    invoke-interface {v5}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v3

    .line 346
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

    .line 348
    return-object v0

    .line 332
    .end local v2    # "dateText":Ljava/lang/CharSequence;
    .end local v3    # "mTTSTime":Ljava/lang/String;
    :cond_3
    const-string v5, "dd-MM-yyyy"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 333
    iget-object v5, p0, Lcom/sec/android/cover/miniviewcover/MiniViewCoverClockWidget;->mContext:Landroid/content/Context;

    sget v6, Lcom/sec/android/sviewcover/R$string;->full_wday_day_month_no_year:I

    invoke-virtual {v5, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 342
    .restart local v2    # "dateText":Ljava/lang/CharSequence;
    :cond_4
    sget-object v5, Lcom/sec/android/cover/miniviewcover/MiniViewCoverClockWidget;->mTimeFormat:Ljava/lang/String;

    iget-object v6, p0, Lcom/sec/android/cover/miniviewcover/MiniViewCoverClockWidget;->mCalendar:Ljava/util/Calendar;

    invoke-static {v5, v6}, Landroid/text/format/DateFormat;->format(Ljava/lang/CharSequence;Ljava/util/Calendar;)Ljava/lang/CharSequence;

    move-result-object v5

    invoke-interface {v5}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v3

    .line 343
    .restart local v3    # "mTTSTime":Ljava/lang/String;
    iget-object v5, p0, Lcom/sec/android/cover/miniviewcover/MiniViewCoverClockWidget;->mAmPm:Landroid/widget/TextView;

    if-eqz v5, :cond_2

    .line 344
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/sec/android/cover/miniviewcover/MiniViewCoverClockWidget;->mAmPm:Landroid/widget/TextView;

    invoke-virtual {v6}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    goto :goto_1
.end method

.method protected onAttachedToWindow()V
    .locals 2

    .prologue
    .line 185
    invoke-super {p0}, Landroid/widget/LinearLayout;->onAttachedToWindow()V

    .line 186
    iget-object v0, p0, Lcom/sec/android/cover/miniviewcover/MiniViewCoverClockWidget;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/text/format/DateFormat;->is24HourFormat(Landroid/content/Context;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/sec/android/cover/miniviewcover/MiniViewCoverClockWidget;->mIs24HTime:Z

    .line 187
    invoke-direct {p0}, Lcom/sec/android/cover/miniviewcover/MiniViewCoverClockWidget;->onTimeChanged()V

    .line 189
    iget-object v0, p0, Lcom/sec/android/cover/miniviewcover/MiniViewCoverClockWidget;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/sec/android/cover/monitor/CoverUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/sec/android/cover/monitor/CoverUpdateMonitor;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/cover/miniviewcover/MiniViewCoverClockWidget;->mUpdateMonitorCallback:Lcom/sec/android/cover/monitor/CoverUpdateMonitorCallback;

    invoke-virtual {v0, v1}, Lcom/sec/android/cover/monitor/CoverUpdateMonitor;->registerCallback(Lcom/sec/android/cover/monitor/CoverUpdateMonitorCallback;)V

    .line 190
    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 2

    .prologue
    .line 194
    invoke-super {p0}, Landroid/widget/LinearLayout;->onDetachedFromWindow()V

    .line 196
    iget-object v0, p0, Lcom/sec/android/cover/miniviewcover/MiniViewCoverClockWidget;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/sec/android/cover/monitor/CoverUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/sec/android/cover/monitor/CoverUpdateMonitor;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/cover/miniviewcover/MiniViewCoverClockWidget;->mUpdateMonitorCallback:Lcom/sec/android/cover/monitor/CoverUpdateMonitorCallback;

    invoke-virtual {v0, v1}, Lcom/sec/android/cover/monitor/CoverUpdateMonitor;->unregisterCallback(Lcom/sec/android/cover/monitor/CoverUpdateMonitorCallback;)V

    .line 197
    return-void
.end method

.method protected onFinishInflate()V
    .locals 3

    .prologue
    .line 167
    invoke-super {p0}, Landroid/widget/LinearLayout;->onFinishInflate()V

    .line 168
    iget-object v2, p0, Lcom/sec/android/cover/miniviewcover/MiniViewCoverClockWidget;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 169
    .local v1, "res":Landroid/content/res/Resources;
    sget v2, Lcom/sec/android/sviewcover/R$bool;->config_isSViewCover2:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v2

    iput-boolean v2, p0, Lcom/sec/android/cover/miniviewcover/MiniViewCoverClockWidget;->mIsCover2:Z

    .line 170
    const/4 v0, 0x0

    .line 171
    .local v0, "clockTypeface":Landroid/graphics/Typeface;
    const-string v2, "system/fonts/SamsungNeoNum-3T.ttf"

    invoke-static {v2}, Landroid/graphics/Typeface;->createFromFile(Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v0

    .line 172
    sget v2, Lcom/sec/android/sviewcover/R$id;->clock_time_and_date:I

    invoke-virtual {p0, v2}, Lcom/sec/android/cover/miniviewcover/MiniViewCoverClockWidget;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/LinearLayout;

    iput-object v2, p0, Lcom/sec/android/cover/miniviewcover/MiniViewCoverClockWidget;->mClockView:Landroid/widget/LinearLayout;

    .line 173
    sget v2, Lcom/sec/android/sviewcover/R$id;->clock_root:I

    invoke-virtual {p0, v2}, Lcom/sec/android/cover/miniviewcover/MiniViewCoverClockWidget;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/LinearLayout;

    iput-object v2, p0, Lcom/sec/android/cover/miniviewcover/MiniViewCoverClockWidget;->mClockRoot:Landroid/widget/LinearLayout;

    .line 174
    sget v2, Lcom/sec/android/sviewcover/R$id;->digital_clock_time:I

    invoke-virtual {p0, v2}, Lcom/sec/android/cover/miniviewcover/MiniViewCoverClockWidget;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/sec/android/cover/miniviewcover/MiniViewCoverClockWidget;->mTime:Landroid/widget/TextView;

    .line 175
    sget v2, Lcom/sec/android/sviewcover/R$id;->digital_clock_ampm:I

    invoke-virtual {p0, v2}, Lcom/sec/android/cover/miniviewcover/MiniViewCoverClockWidget;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/sec/android/cover/miniviewcover/MiniViewCoverClockWidget;->mAmPm:Landroid/widget/TextView;

    .line 176
    sget v2, Lcom/sec/android/sviewcover/R$id;->date_root:I

    invoke-virtual {p0, v2}, Lcom/sec/android/cover/miniviewcover/MiniViewCoverClockWidget;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/LinearLayout;

    iput-object v2, p0, Lcom/sec/android/cover/miniviewcover/MiniViewCoverClockWidget;->mDateRoot:Landroid/widget/LinearLayout;

    .line 177
    sget v2, Lcom/sec/android/sviewcover/R$id;->digital_day_of_the_week:I

    invoke-virtual {p0, v2}, Lcom/sec/android/cover/miniviewcover/MiniViewCoverClockWidget;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/sec/android/cover/miniviewcover/MiniViewCoverClockWidget;->mDayofWeek:Landroid/widget/TextView;

    .line 178
    sget v2, Lcom/sec/android/sviewcover/R$id;->digital_month_day:I

    invoke-virtual {p0, v2}, Lcom/sec/android/cover/miniviewcover/MiniViewCoverClockWidget;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/sec/android/cover/miniviewcover/MiniViewCoverClockWidget;->mMonthandDay:Landroid/widget/TextView;

    .line 179
    iget-object v2, p0, Lcom/sec/android/cover/miniviewcover/MiniViewCoverClockWidget;->mTime:Landroid/widget/TextView;

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 180
    invoke-virtual {p0}, Lcom/sec/android/cover/miniviewcover/MiniViewCoverClockWidget;->refreshClock()V

    .line 181
    return-void
.end method

.method public onPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V
    .locals 1
    .param p1, "event"    # Landroid/view/accessibility/AccessibilityEvent;

    .prologue
    .line 201
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->onPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V

    .line 202
    invoke-virtual {p0}, Lcom/sec/android/cover/miniviewcover/MiniViewCoverClockWidget;->getSingleTTSMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityEvent;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 203
    return-void
.end method

.method public refreshClock()V
    .locals 7

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 129
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/Locale;->toString()Ljava/lang/String;

    move-result-object v0

    .line 130
    .local v0, "locale":Ljava/lang/String;
    sget-object v2, Lcom/sec/android/cover/miniviewcover/MiniViewCoverClockWidget;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "refreshClock() , locale = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 132
    if-eqz v0, :cond_4

    const-string v2, "ko_KR"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 133
    iget-object v2, p0, Lcom/sec/android/cover/miniviewcover/MiniViewCoverClockWidget;->mClockRoot:Landroid/widget/LinearLayout;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/sec/android/cover/miniviewcover/MiniViewCoverClockWidget;->mAmPm:Landroid/widget/TextView;

    if-eqz v2, :cond_1

    .line 134
    iget-object v2, p0, Lcom/sec/android/cover/miniviewcover/MiniViewCoverClockWidget;->mAmPm:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    .line 135
    .local v1, "parent":Landroid/view/ViewGroup;
    if-eqz v1, :cond_0

    .line 136
    iget-object v2, p0, Lcom/sec/android/cover/miniviewcover/MiniViewCoverClockWidget;->mAmPm:Landroid/widget/TextView;

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 138
    :cond_0
    iget-object v2, p0, Lcom/sec/android/cover/miniviewcover/MiniViewCoverClockWidget;->mClockRoot:Landroid/widget/LinearLayout;

    iget-object v3, p0, Lcom/sec/android/cover/miniviewcover/MiniViewCoverClockWidget;->mAmPm:Landroid/widget/TextView;

    invoke-virtual {v2, v3, v5}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;I)V

    .line 140
    .end local v1    # "parent":Landroid/view/ViewGroup;
    :cond_1
    iget-object v2, p0, Lcom/sec/android/cover/miniviewcover/MiniViewCoverClockWidget;->mDateRoot:Landroid/widget/LinearLayout;

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/sec/android/cover/miniviewcover/MiniViewCoverClockWidget;->mMonthandDay:Landroid/widget/TextView;

    if-eqz v2, :cond_3

    .line 141
    iget-object v2, p0, Lcom/sec/android/cover/miniviewcover/MiniViewCoverClockWidget;->mMonthandDay:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    .line 142
    .restart local v1    # "parent":Landroid/view/ViewGroup;
    if-eqz v1, :cond_2

    .line 143
    iget-object v2, p0, Lcom/sec/android/cover/miniviewcover/MiniViewCoverClockWidget;->mMonthandDay:Landroid/widget/TextView;

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 145
    :cond_2
    iget-object v2, p0, Lcom/sec/android/cover/miniviewcover/MiniViewCoverClockWidget;->mDateRoot:Landroid/widget/LinearLayout;

    iget-object v3, p0, Lcom/sec/android/cover/miniviewcover/MiniViewCoverClockWidget;->mMonthandDay:Landroid/widget/TextView;

    invoke-virtual {v2, v3, v5}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;I)V

    .line 163
    .end local v1    # "parent":Landroid/view/ViewGroup;
    :cond_3
    :goto_0
    return-void

    .line 148
    :cond_4
    iget-object v2, p0, Lcom/sec/android/cover/miniviewcover/MiniViewCoverClockWidget;->mClockRoot:Landroid/widget/LinearLayout;

    if-eqz v2, :cond_6

    iget-object v2, p0, Lcom/sec/android/cover/miniviewcover/MiniViewCoverClockWidget;->mAmPm:Landroid/widget/TextView;

    if-eqz v2, :cond_6

    .line 149
    iget-object v2, p0, Lcom/sec/android/cover/miniviewcover/MiniViewCoverClockWidget;->mAmPm:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    .line 150
    .restart local v1    # "parent":Landroid/view/ViewGroup;
    if-eqz v1, :cond_5

    .line 151
    iget-object v2, p0, Lcom/sec/android/cover/miniviewcover/MiniViewCoverClockWidget;->mAmPm:Landroid/widget/TextView;

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 153
    :cond_5
    iget-object v2, p0, Lcom/sec/android/cover/miniviewcover/MiniViewCoverClockWidget;->mClockRoot:Landroid/widget/LinearLayout;

    iget-object v3, p0, Lcom/sec/android/cover/miniviewcover/MiniViewCoverClockWidget;->mAmPm:Landroid/widget/TextView;

    invoke-virtual {v2, v3, v6}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;I)V

    .line 155
    .end local v1    # "parent":Landroid/view/ViewGroup;
    :cond_6
    iget-object v2, p0, Lcom/sec/android/cover/miniviewcover/MiniViewCoverClockWidget;->mDateRoot:Landroid/widget/LinearLayout;

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/sec/android/cover/miniviewcover/MiniViewCoverClockWidget;->mMonthandDay:Landroid/widget/TextView;

    if-eqz v2, :cond_3

    .line 156
    iget-object v2, p0, Lcom/sec/android/cover/miniviewcover/MiniViewCoverClockWidget;->mMonthandDay:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    .line 157
    .restart local v1    # "parent":Landroid/view/ViewGroup;
    if-eqz v1, :cond_7

    .line 158
    iget-object v2, p0, Lcom/sec/android/cover/miniviewcover/MiniViewCoverClockWidget;->mMonthandDay:Landroid/widget/TextView;

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 160
    :cond_7
    iget-object v2, p0, Lcom/sec/android/cover/miniviewcover/MiniViewCoverClockWidget;->mDateRoot:Landroid/widget/LinearLayout;

    iget-object v3, p0, Lcom/sec/android/cover/miniviewcover/MiniViewCoverClockWidget;->mMonthandDay:Landroid/widget/TextView;

    invoke-virtual {v2, v3, v6}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;I)V

    goto :goto_0
.end method
