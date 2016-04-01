.class public Landroid/widget/TextClock;
.super Landroid/widget/TextView;
.source "TextClock.java"


# annotations
.annotation runtime Landroid/widget/RemoteViews$RemoteView;
.end annotation


# static fields
.field public static final DEFAULT_FORMAT_12_HOUR:Ljava/lang/CharSequence;

.field public static final DEFAULT_FORMAT_24_HOUR:Ljava/lang/CharSequence;


# instance fields
.field private mAttached:Z

.field private mDescFormat:Ljava/lang/CharSequence;

.field private mDescFormat12:Ljava/lang/CharSequence;

.field private mDescFormat24:Ljava/lang/CharSequence;

.field private mFormat:Ljava/lang/CharSequence;
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
    .end annotation
.end field

.field private mFormat12:Ljava/lang/CharSequence;

.field private mFormat24:Ljava/lang/CharSequence;

.field private final mFormatChangeObserver:Landroid/database/ContentObserver;

.field private mHasSeconds:Z
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
    .end annotation
.end field

.field private final mIntentReceiver:Landroid/content/BroadcastReceiver;

.field private mShowCurrentUserTime:Z

.field private final mTicker:Ljava/lang/Runnable;

.field private mTime:Ljava/util/Calendar;

.field private mTimeZone:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 105
    const-string v0, "h:mm a"

    sput-object v0, DEFAULT_FORMAT_12_HOUR:Ljava/lang/CharSequence;

    .line 119
    const-string v0, "H:mm"

    sput-object v0, DEFAULT_FORMAT_24_HOUR:Ljava/lang/CharSequence;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 4
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 184
    invoke-direct {p0, p1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 140
    new-instance v0, Landroid/widget/TextClock$1;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-direct {v0, p0, v1}, Landroid/widget/TextClock$1;-><init>(Landroid/widget/TextClock;Landroid/os/Handler;)V

    iput-object v0, p0, mFormatChangeObserver:Landroid/database/ContentObserver;

    .line 154
    new-instance v0, Landroid/widget/TextClock$2;

    invoke-direct {v0, p0}, Landroid/widget/TextClock$2;-><init>(Landroid/widget/TextClock;)V

    iput-object v0, p0, mIntentReceiver:Landroid/content/BroadcastReceiver;

    .line 165
    new-instance v0, Landroid/widget/TextClock$3;

    invoke-direct {v0, p0}, Landroid/widget/TextClock$3;-><init>(Landroid/widget/TextClock;)V

    iput-object v0, p0, mTicker:Ljava/lang/Runnable;

    .line 185
    invoke-direct {p0}, init()V

    .line 186
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 201
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 202
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I

    .prologue
    .line 216
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 217
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .registers 8
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I
    .param p4, "defStyleRes"    # I

    .prologue
    .line 220
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/widget/TextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 140
    new-instance v1, Landroid/widget/TextClock$1;

    new-instance v2, Landroid/os/Handler;

    invoke-direct {v2}, Landroid/os/Handler;-><init>()V

    invoke-direct {v1, p0, v2}, Landroid/widget/TextClock$1;-><init>(Landroid/widget/TextClock;Landroid/os/Handler;)V

    iput-object v1, p0, mFormatChangeObserver:Landroid/database/ContentObserver;

    .line 154
    new-instance v1, Landroid/widget/TextClock$2;

    invoke-direct {v1, p0}, Landroid/widget/TextClock$2;-><init>(Landroid/widget/TextClock;)V

    iput-object v1, p0, mIntentReceiver:Landroid/content/BroadcastReceiver;

    .line 165
    new-instance v1, Landroid/widget/TextClock$3;

    invoke-direct {v1, p0}, Landroid/widget/TextClock$3;-><init>(Landroid/widget/TextClock;)V

    iput-object v1, p0, mTicker:Ljava/lang/Runnable;

    .line 222
    sget-object v1, Lcom/android/internal/R$styleable;->TextClock:[I

    invoke-virtual {p1, p2, v1, p3, p4}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 225
    .local v0, "a":Landroid/content/res/TypedArray;
    const/4 v1, 0x0

    :try_start_24
    invoke-virtual {v0, v1}, Landroid/content/res/TypedArray;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    iput-object v1, p0, mFormat12:Ljava/lang/CharSequence;

    .line 226
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/content/res/TypedArray;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    iput-object v1, p0, mFormat24:Ljava/lang/CharSequence;

    .line 227
    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, mTimeZone:Ljava/lang/String;
    :try_end_38
    .catchall {:try_start_24 .. :try_end_38} :catchall_3f

    .line 229
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 232
    invoke-direct {p0}, init()V

    .line 233
    return-void

    .line 229
    :catchall_3f
    move-exception v1

    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    throw v1
.end method

.method private static abc(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/CharSequence;
    .registers 3
    .param p0, "a"    # Ljava/lang/CharSequence;
    .param p1, "b"    # Ljava/lang/CharSequence;
    .param p2, "c"    # Ljava/lang/CharSequence;

    .prologue
    .line 508
    if-nez p0, :cond_7

    if-nez p1, :cond_5

    .end local p2    # "c":Ljava/lang/CharSequence;
    :goto_4
    return-object p2

    .restart local p2    # "c":Ljava/lang/CharSequence;
    :cond_5
    move-object p2, p1

    goto :goto_4

    :cond_7
    move-object p2, p0

    goto :goto_4
.end method

.method static synthetic access$000(Landroid/widget/TextClock;)V
    .registers 1
    .param p0, "x0"    # Landroid/widget/TextClock;

    .prologue
    .line 91
    invoke-direct {p0}, chooseFormat()V

    return-void
.end method

.method static synthetic access$100(Landroid/widget/TextClock;)V
    .registers 1
    .param p0, "x0"    # Landroid/widget/TextClock;

    .prologue
    .line 91
    invoke-direct {p0}, onTimeChanged()V

    return-void
.end method

.method static synthetic access$200(Landroid/widget/TextClock;)Ljava/lang/String;
    .registers 2
    .param p0, "x0"    # Landroid/widget/TextClock;

    .prologue
    .line 91
    iget-object v0, p0, mTimeZone:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$300(Landroid/widget/TextClock;Ljava/lang/String;)V
    .registers 2
    .param p0, "x0"    # Landroid/widget/TextClock;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 91
    invoke-direct {p0, p1}, createTime(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$400(Landroid/widget/TextClock;)Ljava/lang/Runnable;
    .registers 2
    .param p0, "x0"    # Landroid/widget/TextClock;

    .prologue
    .line 91
    iget-object v0, p0, mTicker:Ljava/lang/Runnable;

    return-object v0
.end method

.method private chooseFormat()V
    .registers 2

    .prologue
    .line 462
    const/4 v0, 0x1

    invoke-direct {p0, v0}, chooseFormat(Z)V

    .line 463
    return-void
.end method

.method private chooseFormat(Z)V
    .registers 8
    .param p1, "handleTicker"    # Z

    .prologue
    .line 483
    invoke-virtual {p0}, is24HourModeEnabled()Z

    move-result v0

    .line 485
    .local v0, "format24Requested":Z
    invoke-virtual {p0}, getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v3

    iget-object v3, v3, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    invoke-static {v3}, Llibcore/icu/LocaleData;->get(Ljava/util/Locale;)Llibcore/icu/LocaleData;

    move-result-object v2

    .line 487
    .local v2, "ld":Llibcore/icu/LocaleData;
    if-eqz v0, :cond_50

    .line 488
    iget-object v3, p0, mFormat24:Ljava/lang/CharSequence;

    iget-object v4, p0, mFormat12:Ljava/lang/CharSequence;

    iget-object v5, v2, Llibcore/icu/LocaleData;->timeFormat_Hm:Ljava/lang/String;

    invoke-static {v3, v4, v5}, abc(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v3

    iput-object v3, p0, mFormat:Ljava/lang/CharSequence;

    .line 489
    iget-object v3, p0, mDescFormat24:Ljava/lang/CharSequence;

    iget-object v4, p0, mDescFormat12:Ljava/lang/CharSequence;

    iget-object v5, p0, mFormat:Ljava/lang/CharSequence;

    invoke-static {v3, v4, v5}, abc(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v3

    iput-object v3, p0, mDescFormat:Ljava/lang/CharSequence;

    .line 495
    :goto_30
    iget-boolean v1, p0, mHasSeconds:Z

    .line 496
    .local v1, "hadSeconds":Z
    iget-object v3, p0, mFormat:Ljava/lang/CharSequence;

    invoke-static {v3}, Landroid/text/format/DateFormat;->hasSeconds(Ljava/lang/CharSequence;)Z

    move-result v3

    iput-boolean v3, p0, mHasSeconds:Z

    .line 498
    if-eqz p1, :cond_4f

    iget-boolean v3, p0, mAttached:Z

    if-eqz v3, :cond_4f

    iget-boolean v3, p0, mHasSeconds:Z

    if-eq v1, v3, :cond_4f

    .line 499
    if-eqz v1, :cond_69

    invoke-virtual {p0}, getHandler()Landroid/os/Handler;

    move-result-object v3

    iget-object v4, p0, mTicker:Ljava/lang/Runnable;

    invoke-virtual {v3, v4}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 502
    :cond_4f
    :goto_4f
    return-void

    .line 491
    .end local v1    # "hadSeconds":Z
    :cond_50
    iget-object v3, p0, mFormat12:Ljava/lang/CharSequence;

    iget-object v4, p0, mFormat24:Ljava/lang/CharSequence;

    iget-object v5, v2, Llibcore/icu/LocaleData;->timeFormat_hm:Ljava/lang/String;

    invoke-static {v3, v4, v5}, abc(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v3

    iput-object v3, p0, mFormat:Ljava/lang/CharSequence;

    .line 492
    iget-object v3, p0, mDescFormat12:Ljava/lang/CharSequence;

    iget-object v4, p0, mDescFormat24:Ljava/lang/CharSequence;

    iget-object v5, p0, mFormat:Ljava/lang/CharSequence;

    invoke-static {v3, v4, v5}, abc(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v3

    iput-object v3, p0, mDescFormat:Ljava/lang/CharSequence;

    goto :goto_30

    .line 500
    .restart local v1    # "hadSeconds":Z
    :cond_69
    iget-object v3, p0, mTicker:Ljava/lang/Runnable;

    invoke-interface {v3}, Ljava/lang/Runnable;->run()V

    goto :goto_4f
.end method

.method private createTime(Ljava/lang/String;)V
    .registers 3
    .param p1, "timeZone"    # Ljava/lang/String;

    .prologue
    .line 252
    if-eqz p1, :cond_d

    .line 253
    invoke-static {p1}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Calendar;->getInstance(Ljava/util/TimeZone;)Ljava/util/Calendar;

    move-result-object v0

    iput-object v0, p0, mTime:Ljava/util/Calendar;

    .line 257
    :goto_c
    return-void

    .line 255
    :cond_d
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    iput-object v0, p0, mTime:Ljava/util/Calendar;

    goto :goto_c
.end method

.method private init()V
    .registers 3

    .prologue
    .line 236
    iget-object v1, p0, mFormat12:Ljava/lang/CharSequence;

    if-eqz v1, :cond_8

    iget-object v1, p0, mFormat24:Ljava/lang/CharSequence;

    if-nez v1, :cond_2a

    .line 237
    :cond_8
    invoke-virtual {p0}, getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    iget-object v1, v1, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    invoke-static {v1}, Llibcore/icu/LocaleData;->get(Ljava/util/Locale;)Llibcore/icu/LocaleData;

    move-result-object v0

    .line 238
    .local v0, "ld":Llibcore/icu/LocaleData;
    iget-object v1, p0, mFormat12:Ljava/lang/CharSequence;

    if-nez v1, :cond_22

    .line 239
    iget-object v1, v0, Llibcore/icu/LocaleData;->timeFormat_hm:Ljava/lang/String;

    iput-object v1, p0, mFormat12:Ljava/lang/CharSequence;

    .line 241
    :cond_22
    iget-object v1, p0, mFormat24:Ljava/lang/CharSequence;

    if-nez v1, :cond_2a

    .line 242
    iget-object v1, v0, Llibcore/icu/LocaleData;->timeFormat_Hm:Ljava/lang/String;

    iput-object v1, p0, mFormat24:Ljava/lang/CharSequence;

    .line 246
    .end local v0    # "ld":Llibcore/icu/LocaleData;
    :cond_2a
    iget-object v1, p0, mTimeZone:Ljava/lang/String;

    invoke-direct {p0, v1}, createTime(Ljava/lang/String;)V

    .line 248
    const/4 v1, 0x0

    invoke-direct {p0, v1}, chooseFormat(Z)V

    .line 249
    return-void
.end method

.method private onTimeChanged()V
    .registers 5

    .prologue
    .line 576
    iget-object v0, p0, mTime:Ljava/util/Calendar;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 577
    iget-object v0, p0, mFormat:Ljava/lang/CharSequence;

    iget-object v1, p0, mTime:Ljava/util/Calendar;

    invoke-static {v0, v1}, Landroid/text/format/DateFormat;->format(Ljava/lang/CharSequence;Ljava/util/Calendar;)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {p0, v0}, setText(Ljava/lang/CharSequence;)V

    .line 578
    iget-object v0, p0, mDescFormat:Ljava/lang/CharSequence;

    iget-object v1, p0, mTime:Ljava/util/Calendar;

    invoke-static {v0, v1}, Landroid/text/format/DateFormat;->format(Ljava/lang/CharSequence;Ljava/util/Calendar;)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {p0, v0}, setContentDescription(Ljava/lang/CharSequence;)V

    .line 579
    return-void
.end method

.method private registerObserver()V
    .registers 6

    .prologue
    const/4 v4, 0x1

    .line 556
    invoke-virtual {p0}, getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 557
    .local v0, "resolver":Landroid/content/ContentResolver;
    iget-boolean v1, p0, mShowCurrentUserTime:Z

    if-eqz v1, :cond_16

    .line 558
    sget-object v1, Landroid/provider/Settings$System;->CONTENT_URI:Landroid/net/Uri;

    iget-object v2, p0, mFormatChangeObserver:Landroid/database/ContentObserver;

    const/4 v3, -0x1

    invoke-virtual {v0, v1, v4, v2, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 564
    :goto_15
    return-void

    .line 561
    :cond_16
    sget-object v1, Landroid/provider/Settings$System;->CONTENT_URI:Landroid/net/Uri;

    iget-object v2, p0, mFormatChangeObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1, v4, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    goto :goto_15
.end method

.method private registerReceiver()V
    .registers 6

    .prologue
    .line 546
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 548
    .local v0, "filter":Landroid/content/IntentFilter;
    const-string v1, "android.intent.action.TIME_TICK"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 549
    const-string v1, "android.intent.action.TIME_SET"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 550
    const-string v1, "android.intent.action.TIMEZONE_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 552
    invoke-virtual {p0}, getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, mIntentReceiver:Landroid/content/BroadcastReceiver;

    const/4 v3, 0x0

    invoke-virtual {p0}, getHandler()Landroid/os/Handler;

    move-result-object v4

    invoke-virtual {v1, v2, v0, v3, v4}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 553
    return-void
.end method

.method private unregisterObserver()V
    .registers 3

    .prologue
    .line 571
    invoke-virtual {p0}, getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 572
    .local v0, "resolver":Landroid/content/ContentResolver;
    iget-object v1, p0, mFormatChangeObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 573
    return-void
.end method

.method private unregisterReceiver()V
    .registers 3

    .prologue
    .line 567
    invoke-virtual {p0}, getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, mIntentReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 568
    return-void
.end method


# virtual methods
.method protected encodeProperties(Landroid/view/ViewHierarchyEncoder;)V
    .registers 6
    .param p1, "stream"    # Landroid/view/ViewHierarchyEncoder;

    .prologue
    const/4 v2, 0x0

    .line 584
    invoke-super {p0, p1}, Landroid/widget/TextView;->encodeProperties(Landroid/view/ViewHierarchyEncoder;)V

    .line 586
    invoke-virtual {p0}, getFormat12Hour()Ljava/lang/CharSequence;

    move-result-object v0

    .line 587
    .local v0, "s":Ljava/lang/CharSequence;
    const-string v3, "format12Hour"

    if-nez v0, :cond_2d

    move-object v1, v2

    :goto_d
    invoke-virtual {p1, v3, v1}, Landroid/view/ViewHierarchyEncoder;->addProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 589
    invoke-virtual {p0}, getFormat24Hour()Ljava/lang/CharSequence;

    move-result-object v0

    .line 590
    const-string v3, "format24Hour"

    if-nez v0, :cond_32

    move-object v1, v2

    :goto_19
    invoke-virtual {p1, v3, v1}, Landroid/view/ViewHierarchyEncoder;->addProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 591
    const-string v1, "format"

    iget-object v3, p0, mFormat:Ljava/lang/CharSequence;

    if-nez v3, :cond_37

    :goto_22
    invoke-virtual {p1, v1, v2}, Landroid/view/ViewHierarchyEncoder;->addProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 592
    const-string v1, "hasSeconds"

    iget-boolean v2, p0, mHasSeconds:Z

    invoke-virtual {p1, v1, v2}, Landroid/view/ViewHierarchyEncoder;->addProperty(Ljava/lang/String;Z)V

    .line 593
    return-void

    .line 587
    :cond_2d
    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_d

    .line 590
    :cond_32
    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_19

    .line 591
    :cond_37
    iget-object v2, p0, mFormat:Ljava/lang/CharSequence;

    invoke-interface {v2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_22
.end method

.method public getFormat()Ljava/lang/CharSequence;
    .registers 2

    .prologue
    .line 472
    iget-object v0, p0, mFormat:Ljava/lang/CharSequence;

    return-object v0
.end method

.method public getFormat12Hour()Ljava/lang/CharSequence;
    .registers 2
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
    .end annotation

    .prologue
    .line 271
    iget-object v0, p0, mFormat12:Ljava/lang/CharSequence;

    return-object v0
.end method

.method public getFormat24Hour()Ljava/lang/CharSequence;
    .registers 2
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
    .end annotation

    .prologue
    .line 330
    iget-object v0, p0, mFormat24:Ljava/lang/CharSequence;

    return-object v0
.end method

.method public getTimeZone()Ljava/lang/String;
    .registers 2

    .prologue
    .line 429
    iget-object v0, p0, mTimeZone:Ljava/lang/String;

    return-object v0
.end method

.method public is24HourModeEnabled()Z
    .registers 3

    .prologue
    .line 411
    iget-boolean v0, p0, mShowCurrentUserTime:Z

    if-eqz v0, :cond_11

    .line 412
    invoke-virtual {p0}, getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v1

    invoke-static {v0, v1}, Landroid/text/format/DateFormat;->is24HourFormat(Landroid/content/Context;I)Z

    move-result v0

    .line 414
    :goto_10
    return v0

    :cond_11
    invoke-virtual {p0}, getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/text/format/DateFormat;->is24HourFormat(Landroid/content/Context;)Z

    move-result v0

    goto :goto_10
.end method

.method protected onAttachedToWindow()V
    .registers 2

    .prologue
    .line 513
    invoke-super {p0}, Landroid/widget/TextView;->onAttachedToWindow()V

    .line 515
    iget-boolean v0, p0, mAttached:Z

    if-nez v0, :cond_1e

    .line 516
    const/4 v0, 0x1

    iput-boolean v0, p0, mAttached:Z

    .line 518
    invoke-direct {p0}, registerReceiver()V

    .line 519
    invoke-direct {p0}, registerObserver()V

    .line 521
    iget-object v0, p0, mTimeZone:Ljava/lang/String;

    invoke-direct {p0, v0}, createTime(Ljava/lang/String;)V

    .line 523
    iget-boolean v0, p0, mHasSeconds:Z

    if-eqz v0, :cond_1f

    .line 524
    iget-object v0, p0, mTicker:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 529
    :cond_1e
    :goto_1e
    return-void

    .line 526
    :cond_1f
    invoke-direct {p0}, onTimeChanged()V

    goto :goto_1e
.end method

.method protected onDetachedFromWindow()V
    .registers 3

    .prologue
    .line 533
    invoke-super {p0}, Landroid/widget/TextView;->onDetachedFromWindow()V

    .line 535
    iget-boolean v0, p0, mAttached:Z

    if-eqz v0, :cond_19

    .line 536
    invoke-direct {p0}, unregisterReceiver()V

    .line 537
    invoke-direct {p0}, unregisterObserver()V

    .line 539
    invoke-virtual {p0}, getHandler()Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, mTicker:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 541
    const/4 v0, 0x0

    iput-boolean v0, p0, mAttached:Z

    .line 543
    :cond_19
    return-void
.end method

.method public setContentDescriptionFormat12Hour(Ljava/lang/CharSequence;)V
    .registers 2
    .param p1, "format"    # Ljava/lang/CharSequence;

    .prologue
    .line 312
    iput-object p1, p0, mDescFormat12:Ljava/lang/CharSequence;

    .line 314
    invoke-direct {p0}, chooseFormat()V

    .line 315
    invoke-direct {p0}, onTimeChanged()V

    .line 316
    return-void
.end method

.method public setContentDescriptionFormat24Hour(Ljava/lang/CharSequence;)V
    .registers 2
    .param p1, "format"    # Ljava/lang/CharSequence;

    .prologue
    .line 370
    iput-object p1, p0, mDescFormat24:Ljava/lang/CharSequence;

    .line 372
    invoke-direct {p0}, chooseFormat()V

    .line 373
    invoke-direct {p0}, onTimeChanged()V

    .line 374
    return-void
.end method

.method public setFormat12Hour(Ljava/lang/CharSequence;)V
    .registers 2
    .param p1, "format"    # Ljava/lang/CharSequence;
    .annotation runtime Landroid/view/RemotableViewMethod;
    .end annotation

    .prologue
    .line 301
    iput-object p1, p0, mFormat12:Ljava/lang/CharSequence;

    .line 303
    invoke-direct {p0}, chooseFormat()V

    .line 304
    invoke-direct {p0}, onTimeChanged()V

    .line 305
    return-void
.end method

.method public setFormat24Hour(Ljava/lang/CharSequence;)V
    .registers 2
    .param p1, "format"    # Ljava/lang/CharSequence;
    .annotation runtime Landroid/view/RemotableViewMethod;
    .end annotation

    .prologue
    .line 359
    iput-object p1, p0, mFormat24:Ljava/lang/CharSequence;

    .line 361
    invoke-direct {p0}, chooseFormat()V

    .line 362
    invoke-direct {p0}, onTimeChanged()V

    .line 363
    return-void
.end method

.method public setShowCurrentUserTime(Z)V
    .registers 2
    .param p1, "showCurrentUserTime"    # Z

    .prologue
    .line 384
    iput-boolean p1, p0, mShowCurrentUserTime:Z

    .line 386
    invoke-direct {p0}, chooseFormat()V

    .line 387
    invoke-direct {p0}, onTimeChanged()V

    .line 388
    invoke-direct {p0}, unregisterObserver()V

    .line 389
    invoke-direct {p0}, registerObserver()V

    .line 390
    return-void
.end method

.method public setTimeZone(Ljava/lang/String;)V
    .registers 2
    .param p1, "timeZone"    # Ljava/lang/String;
    .annotation runtime Landroid/view/RemotableViewMethod;
    .end annotation

    .prologue
    .line 449
    iput-object p1, p0, mTimeZone:Ljava/lang/String;

    .line 451
    invoke-direct {p0, p1}, createTime(Ljava/lang/String;)V

    .line 452
    invoke-direct {p0}, onTimeChanged()V

    .line 453
    return-void
.end method
