.class public Lcom/android/keyguard/status/KeyguardDateView;
.super Lcom/android/keyguard/status/KeyguardTextView;
.source "KeyguardDateView.java"


# instance fields
.field private mCalendar:Ljava/util/Calendar;

.field private mCurrentDate:Ljava/util/Date;

.field private mCurrentLocale:Ljava/util/Locale;

.field private mDisplayFormat:Ljava/text/SimpleDateFormat;

.field private mDisplayPattern:Ljava/lang/String;

.field private final mHandler:Landroid/os/Handler;

.field private mIntentReceiver:Landroid/content/BroadcastReceiver;

.field private mLastText:Ljava/lang/String;

.field private mTTSFormat:Ljava/text/SimpleDateFormat;

.field private mTTSPattern:Ljava/lang/String;

.field private final mUpdateCallback:Lcom/android/keyguard/KeyguardUpdateMonitorCallback;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    const/4 v1, 0x0

    .line 82
    invoke-direct {p0, p1, p2}, Lcom/android/keyguard/status/KeyguardTextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 31
    iput-object v1, p0, Lcom/android/keyguard/status/KeyguardDateView;->mDisplayFormat:Ljava/text/SimpleDateFormat;

    .line 32
    iput-object v1, p0, Lcom/android/keyguard/status/KeyguardDateView;->mTTSFormat:Ljava/text/SimpleDateFormat;

    .line 33
    iput-object v1, p0, Lcom/android/keyguard/status/KeyguardDateView;->mLastText:Ljava/lang/String;

    .line 34
    iput-object v1, p0, Lcom/android/keyguard/status/KeyguardDateView;->mDisplayPattern:Ljava/lang/String;

    .line 35
    iput-object v1, p0, Lcom/android/keyguard/status/KeyguardDateView;->mTTSPattern:Ljava/lang/String;

    .line 36
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    iput-object v0, p0, Lcom/android/keyguard/status/KeyguardDateView;->mCurrentDate:Ljava/util/Date;

    .line 37
    iput-object v1, p0, Lcom/android/keyguard/status/KeyguardDateView;->mCurrentLocale:Ljava/util/Locale;

    .line 38
    iput-object v1, p0, Lcom/android/keyguard/status/KeyguardDateView;->mCalendar:Ljava/util/Calendar;

    .line 40
    new-instance v0, Lcom/android/keyguard/status/KeyguardDateView$1;

    invoke-direct {v0, p0}, Lcom/android/keyguard/status/KeyguardDateView$1;-><init>(Lcom/android/keyguard/status/KeyguardDateView;)V

    iput-object v0, p0, Lcom/android/keyguard/status/KeyguardDateView;->mHandler:Landroid/os/Handler;

    .line 58
    new-instance v0, Lcom/android/keyguard/status/KeyguardDateView$2;

    invoke-direct {v0, p0}, Lcom/android/keyguard/status/KeyguardDateView$2;-><init>(Lcom/android/keyguard/status/KeyguardDateView;)V

    iput-object v0, p0, Lcom/android/keyguard/status/KeyguardDateView;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    .line 74
    new-instance v0, Lcom/android/keyguard/status/KeyguardDateView$3;

    invoke-direct {v0, p0}, Lcom/android/keyguard/status/KeyguardDateView$3;-><init>(Lcom/android/keyguard/status/KeyguardDateView;)V

    iput-object v0, p0, Lcom/android/keyguard/status/KeyguardDateView;->mUpdateCallback:Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

    .line 83
    return-void
.end method

.method static synthetic access$000(Lcom/android/keyguard/status/KeyguardDateView;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/keyguard/status/KeyguardDateView;

    .prologue
    .line 25
    invoke-direct {p0}, Lcom/android/keyguard/status/KeyguardDateView;->handleUpdateDateText()V

    return-void
.end method

.method static synthetic access$102(Lcom/android/keyguard/status/KeyguardDateView;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Lcom/android/keyguard/status/KeyguardDateView;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 25
    iput-object p1, p0, Lcom/android/keyguard/status/KeyguardDateView;->mDisplayPattern:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$202(Lcom/android/keyguard/status/KeyguardDateView;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Lcom/android/keyguard/status/KeyguardDateView;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 25
    iput-object p1, p0, Lcom/android/keyguard/status/KeyguardDateView;->mTTSPattern:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$300(Lcom/android/keyguard/status/KeyguardDateView;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/keyguard/status/KeyguardDateView;

    .prologue
    .line 25
    invoke-direct {p0}, Lcom/android/keyguard/status/KeyguardDateView;->updateFormatString()V

    return-void
.end method

.method static synthetic access$402(Lcom/android/keyguard/status/KeyguardDateView;Ljava/text/SimpleDateFormat;)Ljava/text/SimpleDateFormat;
    .locals 0
    .param p0, "x0"    # Lcom/android/keyguard/status/KeyguardDateView;
    .param p1, "x1"    # Ljava/text/SimpleDateFormat;

    .prologue
    .line 25
    iput-object p1, p0, Lcom/android/keyguard/status/KeyguardDateView;->mDisplayFormat:Ljava/text/SimpleDateFormat;

    return-object p1
.end method

.method static synthetic access$502(Lcom/android/keyguard/status/KeyguardDateView;Ljava/text/SimpleDateFormat;)Ljava/text/SimpleDateFormat;
    .locals 0
    .param p0, "x0"    # Lcom/android/keyguard/status/KeyguardDateView;
    .param p1, "x1"    # Ljava/text/SimpleDateFormat;

    .prologue
    .line 25
    iput-object p1, p0, Lcom/android/keyguard/status/KeyguardDateView;->mTTSFormat:Ljava/text/SimpleDateFormat;

    return-object p1
.end method

.method private handleUpdateDateText()V
    .locals 8

    .prologue
    .line 128
    iget-object v5, p0, Lcom/android/keyguard/status/KeyguardDateView;->mDisplayFormat:Ljava/text/SimpleDateFormat;

    if-nez v5, :cond_0

    .line 130
    :try_start_0
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v5

    iput-object v5, p0, Lcom/android/keyguard/status/KeyguardDateView;->mCurrentLocale:Ljava/util/Locale;

    .line 131
    iget-object v5, p0, Lcom/android/keyguard/status/KeyguardDateView;->mCurrentLocale:Ljava/util/Locale;

    iget-object v6, p0, Lcom/android/keyguard/status/KeyguardDateView;->mDisplayPattern:Ljava/lang/String;

    invoke-static {v5, v6}, Landroid/text/format/DateFormat;->getBestDateTimePattern(Ljava/util/Locale;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 132
    .local v0, "displayTemplate":Ljava/lang/String;
    new-instance v5, Ljava/text/SimpleDateFormat;

    iget-object v6, p0, Lcom/android/keyguard/status/KeyguardDateView;->mCurrentLocale:Ljava/util/Locale;

    invoke-direct {v5, v0, v6}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    iput-object v5, p0, Lcom/android/keyguard/status/KeyguardDateView;->mDisplayFormat:Ljava/text/SimpleDateFormat;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 139
    .end local v0    # "displayTemplate":Ljava/lang/String;
    :cond_0
    :goto_0
    iget-object v5, p0, Lcom/android/keyguard/status/KeyguardDateView;->mCalendar:Ljava/util/Calendar;

    if-eqz v5, :cond_1

    .line 140
    iget-object v5, p0, Lcom/android/keyguard/status/KeyguardDateView;->mDisplayFormat:Ljava/text/SimpleDateFormat;

    iget-object v6, p0, Lcom/android/keyguard/status/KeyguardDateView;->mCalendar:Ljava/util/Calendar;

    invoke-virtual {v5, v6}, Ljava/text/SimpleDateFormat;->setCalendar(Ljava/util/Calendar;)V

    .line 142
    :cond_1
    iget-object v5, p0, Lcom/android/keyguard/status/KeyguardDateView;->mCurrentDate:Ljava/util/Date;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    invoke-virtual {v5, v6, v7}, Ljava/util/Date;->setTime(J)V

    .line 143
    iget-object v5, p0, Lcom/android/keyguard/status/KeyguardDateView;->mDisplayFormat:Ljava/text/SimpleDateFormat;

    iget-object v6, p0, Lcom/android/keyguard/status/KeyguardDateView;->mCurrentDate:Ljava/util/Date;

    invoke-virtual {v5, v6}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v1

    .line 146
    .local v1, "displayText":Ljava/lang/String;
    iget-object v5, p0, Lcom/android/keyguard/status/KeyguardDateView;->mLastText:Ljava/lang/String;

    invoke-virtual {v1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_4

    .line 147
    invoke-virtual {p0, v1}, Lcom/android/keyguard/status/KeyguardDateView;->setText(Ljava/lang/CharSequence;)V

    .line 148
    iput-object v1, p0, Lcom/android/keyguard/status/KeyguardDateView;->mLastText:Ljava/lang/String;

    .line 150
    iget-object v5, p0, Lcom/android/keyguard/status/KeyguardDateView;->mTTSFormat:Ljava/text/SimpleDateFormat;

    if-nez v5, :cond_2

    .line 153
    :try_start_1
    iget-object v5, p0, Lcom/android/keyguard/status/KeyguardDateView;->mCurrentLocale:Ljava/util/Locale;

    iget-object v6, p0, Lcom/android/keyguard/status/KeyguardDateView;->mTTSPattern:Ljava/lang/String;

    invoke-static {v5, v6}, Landroid/text/format/DateFormat;->getBestDateTimePattern(Ljava/util/Locale;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 154
    .local v3, "ttsTemplate":Ljava/lang/String;
    new-instance v5, Ljava/text/SimpleDateFormat;

    iget-object v6, p0, Lcom/android/keyguard/status/KeyguardDateView;->mCurrentLocale:Ljava/util/Locale;

    invoke-direct {v5, v3, v6}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    iput-object v5, p0, Lcom/android/keyguard/status/KeyguardDateView;->mTTSFormat:Ljava/text/SimpleDateFormat;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 160
    .end local v3    # "ttsTemplate":Ljava/lang/String;
    :cond_2
    :goto_1
    iget-object v5, p0, Lcom/android/keyguard/status/KeyguardDateView;->mCalendar:Ljava/util/Calendar;

    if-eqz v5, :cond_3

    .line 161
    iget-object v5, p0, Lcom/android/keyguard/status/KeyguardDateView;->mTTSFormat:Ljava/text/SimpleDateFormat;

    iget-object v6, p0, Lcom/android/keyguard/status/KeyguardDateView;->mCalendar:Ljava/util/Calendar;

    invoke-virtual {v5, v6}, Ljava/text/SimpleDateFormat;->setCalendar(Ljava/util/Calendar;)V

    .line 163
    :cond_3
    iget-object v5, p0, Lcom/android/keyguard/status/KeyguardDateView;->mTTSFormat:Ljava/text/SimpleDateFormat;

    iget-object v6, p0, Lcom/android/keyguard/status/KeyguardDateView;->mCurrentDate:Ljava/util/Date;

    invoke-virtual {v5, v6}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v4

    .line 164
    .local v4, "ttsText":Ljava/lang/String;
    invoke-virtual {p0, v4}, Lcom/android/keyguard/status/KeyguardDateView;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 168
    .end local v4    # "ttsText":Ljava/lang/String;
    :cond_4
    return-void

    .line 133
    .end local v1    # "displayText":Ljava/lang/String;
    :catch_0
    move-exception v2

    .line 134
    .local v2, "e":Ljava/lang/Exception;
    const-string v5, "KeyguardDateView"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Exception: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 155
    .end local v2    # "e":Ljava/lang/Exception;
    .restart local v1    # "displayText":Ljava/lang/String;
    :catch_1
    move-exception v2

    .line 156
    .restart local v2    # "e":Ljava/lang/Exception;
    const-string v5, "KeyguardDateView"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Exception: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method private updateFormatString()V
    .locals 2

    .prologue
    const/16 v1, 0x66

    .line 112
    iget-object v0, p0, Lcom/android/keyguard/status/KeyguardDateView;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 113
    iget-object v0, p0, Lcom/android/keyguard/status/KeyguardDateView;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 115
    :cond_0
    iget-object v0, p0, Lcom/android/keyguard/status/KeyguardDateView;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 116
    return-void
.end method


# virtual methods
.method protected onAttachedToWindow()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 93
    invoke-super {p0}, Lcom/android/keyguard/status/KeyguardTextView;->onAttachedToWindow()V

    .line 94
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 95
    .local v0, "filter":Landroid/content/IntentFilter;
    const-string v1, "android.intent.action.TIMEZONE_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 96
    const-string v1, "android.intent.action.LOCALE_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 97
    invoke-virtual {p0}, Lcom/android/keyguard/status/KeyguardDateView;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/android/keyguard/status/KeyguardDateView;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0, v3, v3}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 98
    sget-object v1, Lcom/android/keyguard/status/KeyguardDateView;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object v1

    iget-object v2, p0, Lcom/android/keyguard/status/KeyguardDateView;->mUpdateCallback:Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

    invoke-virtual {v1, v2}, Lcom/android/keyguard/KeyguardUpdateMonitor;->registerCallback(Lcom/android/keyguard/KeyguardUpdateMonitorCallback;)V

    .line 99
    invoke-virtual {p0}, Lcom/android/keyguard/status/KeyguardDateView;->updateDateText()V

    .line 100
    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 104
    invoke-virtual {p0}, Lcom/android/keyguard/status/KeyguardDateView;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/android/keyguard/status/KeyguardDateView;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 105
    sget-object v0, Lcom/android/keyguard/status/KeyguardDateView;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object v0

    iget-object v1, p0, Lcom/android/keyguard/status/KeyguardDateView;->mUpdateCallback:Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

    invoke-virtual {v0, v1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->removeCallback(Lcom/android/keyguard/KeyguardUpdateMonitorCallback;)V

    .line 106
    iput-object v2, p0, Lcom/android/keyguard/status/KeyguardDateView;->mDisplayFormat:Ljava/text/SimpleDateFormat;

    .line 107
    iput-object v2, p0, Lcom/android/keyguard/status/KeyguardDateView;->mTTSFormat:Ljava/text/SimpleDateFormat;

    .line 108
    invoke-super {p0}, Lcom/android/keyguard/status/KeyguardTextView;->onDetachedFromWindow()V

    .line 109
    return-void
.end method

.method protected onFinishInflate()V
    .locals 0

    .prologue
    .line 87
    invoke-super {p0}, Lcom/android/keyguard/status/KeyguardTextView;->onFinishInflate()V

    .line 88
    invoke-direct {p0}, Lcom/android/keyguard/status/KeyguardDateView;->updateFormatString()V

    .line 89
    return-void
.end method

.method public setTimeZone(Ljava/lang/String;)V
    .locals 1
    .param p1, "timeZone"    # Ljava/lang/String;

    .prologue
    .line 171
    if-eqz p1, :cond_0

    .line 172
    invoke-static {p1}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Calendar;->getInstance(Ljava/util/TimeZone;)Ljava/util/Calendar;

    move-result-object v0

    iput-object v0, p0, Lcom/android/keyguard/status/KeyguardDateView;->mCalendar:Ljava/util/Calendar;

    .line 176
    :goto_0
    invoke-virtual {p0}, Lcom/android/keyguard/status/KeyguardDateView;->updateDateText()V

    .line 177
    return-void

    .line 174
    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/keyguard/status/KeyguardDateView;->mCalendar:Ljava/util/Calendar;

    goto :goto_0
.end method

.method public updateDateText()V
    .locals 2

    .prologue
    const/16 v1, 0x65

    .line 119
    iget-object v0, p0, Lcom/android/keyguard/status/KeyguardDateView;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 120
    iget-object v0, p0, Lcom/android/keyguard/status/KeyguardDateView;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 122
    :cond_0
    iget-object v0, p0, Lcom/android/keyguard/status/KeyguardDateView;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 123
    return-void
.end method
