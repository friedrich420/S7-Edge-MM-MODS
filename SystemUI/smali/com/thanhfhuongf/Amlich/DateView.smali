.class public final Lcom/thanhfhuongf/Amlich/DateView;
.super Landroid/widget/TextView;
.source "DateView.java"


# instance fields
.field private mAttachedToWindow:Z

.field private mHandler:Landroid/os/Handler;

.field private mIntentReceiver:Landroid/content/BroadcastReceiver;

.field private mUpdating:Z

.field private mWindowVisible:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 70
    invoke-direct {p0, p1, p2}, Landroid/widget/TextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 53
    new-instance v0, Lcom/thanhfhuongf/Amlich/DateView$1;

    invoke-direct {v0, p0}, Lcom/thanhfhuongf/Amlich/DateView$1;-><init>(Lcom/thanhfhuongf/Amlich/DateView;)V

    iput-object v0, p0, Lcom/thanhfhuongf/Amlich/DateView;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    .line 72
    new-instance v0, Lcom/thanhfhuongf/Amlich/DateView$2;

    invoke-direct {v0, p0}, Lcom/thanhfhuongf/Amlich/DateView$2;-><init>(Lcom/thanhfhuongf/Amlich/DateView;)V

    iput-object v0, p0, Lcom/thanhfhuongf/Amlich/DateView;->mHandler:Landroid/os/Handler;

    .line 79
    return-void
.end method

.method static synthetic access$000(Lcom/thanhfhuongf/Amlich/DateView;)Landroid/os/Handler;
    .locals 1
    .param p0, "x0"    # Lcom/thanhfhuongf/Amlich/DateView;

    .prologue
    .line 43
    iget-object v0, p0, Lcom/thanhfhuongf/Amlich/DateView;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$100(Lcom/thanhfhuongf/Amlich/DateView;)V
    .locals 0
    .param p0, "x0"    # Lcom/thanhfhuongf/Amlich/DateView;

    .prologue
    .line 43
    invoke-direct {p0}, Lcom/thanhfhuongf/Amlich/DateView;->updateClock()V

    return-void
.end method

.method private isVisible()Z
    .locals 3

    .prologue
    .line 141
    move-object v1, p0

    .line 143
    .local v1, "v":Landroid/view/View;
    :goto_0
    invoke-virtual {v1}, Landroid/view/View;->getVisibility()I

    move-result v2

    if-eqz v2, :cond_0

    .line 144
    const/4 v2, 0x0

    .line 150
    :goto_1
    return v2

    .line 146
    :cond_0
    invoke-virtual {v1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    .line 147
    .local v0, "parent":Landroid/view/ViewParent;
    instance-of v2, v0, Landroid/view/View;

    if-eqz v2, :cond_1

    move-object v1, v0

    .line 148
    check-cast v1, Landroid/view/View;

    goto :goto_0

    .line 150
    :cond_1
    const/4 v2, 0x1

    goto :goto_1
.end method

.method private setUpdates()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    const/4 v2, 0x0

    .line 156
    iget-boolean v3, p0, Lcom/thanhfhuongf/Amlich/DateView;->mAttachedToWindow:Z

    if-eqz v3, :cond_1

    iget-boolean v3, p0, Lcom/thanhfhuongf/Amlich/DateView;->mWindowVisible:Z

    if-eqz v3, :cond_1

    invoke-direct {p0}, Lcom/thanhfhuongf/Amlich/DateView;->isVisible()Z

    move-result v3

    if-eqz v3, :cond_1

    const/4 v1, 0x1

    .line 157
    .local v1, "update":Z
    :goto_0
    iget-boolean v3, p0, Lcom/thanhfhuongf/Amlich/DateView;->mUpdating:Z

    if-eq v1, v3, :cond_0

    .line 158
    iput-boolean v1, p0, Lcom/thanhfhuongf/Amlich/DateView;->mUpdating:Z

    .line 159
    if-eqz v1, :cond_2

    .line 161
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 162
    .local v0, "filter":Landroid/content/IntentFilter;
    const-string v3, "android.intent.action.TIME_TICK"

    invoke-virtual {v0, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 163
    const-string v3, "android.intent.action.TIME_SET"

    invoke-virtual {v0, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 164
    const-string v3, "android.intent.action.TIMEZONE_CHANGED"

    invoke-virtual {v0, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 166
    const-string v3, "android.intent.action.CONFIGURATION_CHANGED"

    invoke-virtual {v0, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 168
    iget-object v3, p0, Lcom/thanhfhuongf/Amlich/DateView;->mContext:Landroid/content/Context;

    iget-object v4, p0, Lcom/thanhfhuongf/Amlich/DateView;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v3, v4, v0, v5, v5}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 170
    iget-object v3, p0, Lcom/thanhfhuongf/Amlich/DateView;->mHandler:Landroid/os/Handler;

    invoke-virtual {v3, v2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 175
    .end local v0    # "filter":Landroid/content/IntentFilter;
    :cond_0
    :goto_1
    return-void

    .end local v1    # "update":Z
    :cond_1
    move v1, v2

    .line 156
    goto :goto_0

    .line 172
    .restart local v1    # "update":Z
    :cond_2
    iget-object v2, p0, Lcom/thanhfhuongf/Amlich/DateView;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/thanhfhuongf/Amlich/DateView;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v2, v3}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    goto :goto_1
.end method

.method private final updateClock()V
    .locals 10

    .prologue
    .line 115
    invoke-virtual {p0}, Lcom/thanhfhuongf/Amlich/DateView;->getContext()Landroid/content/Context;

    move-result-object v2

    .line 116
    .local v2, "context":Landroid/content/Context;
    new-instance v6, Ljava/util/Date;

    invoke-direct {v6}, Ljava/util/Date;-><init>()V

    .line 120
    .local v6, "now":Ljava/util/Date;
    const-string v7, "E"

    invoke-static {v7, v6}, Landroid/text/format/DateFormat;->format(Ljava/lang/CharSequence;Ljava/util/Date;)Ljava/lang/CharSequence;

    move-result-object v4

    .line 121
    .local v4, "dow":Ljava/lang/CharSequence;
    invoke-static {v2}, Landroid/text/format/DateFormat;->getMediumDateFormat(Landroid/content/Context;)Ljava/text/DateFormat;

    move-result-object v7

    invoke-virtual {v7, v6}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v3

    .line 123
    .local v3, "date":Ljava/lang/CharSequence;
    const v7, 0x7f090002

    const/4 v8, 0x2

    new-array v8, v8, [Ljava/lang/Object;

    const/4 v9, 0x0

    aput-object v4, v8, v9

    const/4 v9, 0x1

    aput-object v3, v8, v9

    invoke-virtual {v2, v7, v8}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p0, v7}, Lcom/thanhfhuongf/Amlich/DateView;->setText(Ljava/lang/CharSequence;)V

    .line 126
    :try_start_0
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v0

    .line 127
    .local v0, "am":Landroid/app/IActivityManager;
    if-eqz v0, :cond_1

    .line 128
    invoke-interface {v0}, Landroid/app/IActivityManager;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    .line 129
    .local v1, "config":Landroid/content/res/Configuration;
    iget-object v7, v1, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    invoke-virtual {v7}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v7

    const-string v8, "ar"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_0

    iget-object v7, v1, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    invoke-virtual {v7}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v7

    const-string v8, "fa"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 130
    :cond_0
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v7

    invoke-virtual {v7}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v6

    .line 131
    invoke-virtual {p0}, Lcom/thanhfhuongf/Amlich/DateView;->getContext()Landroid/content/Context;

    move-result-object v7

    invoke-static {v7}, Landroid/text/format/DateFormat;->getDateFormat(Landroid/content/Context;)Ljava/text/DateFormat;

    move-result-object v7

    invoke-virtual {v7, v6}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p0, v7}, Lcom/thanhfhuongf/Amlich/DateView;->setText(Ljava/lang/CharSequence;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 138
    .end local v0    # "am":Landroid/app/IActivityManager;
    .end local v1    # "config":Landroid/content/res/Configuration;
    :cond_1
    :goto_0
    return-void

    .line 134
    :catch_0
    move-exception v5

    .line 135
    .local v5, "e":Ljava/lang/Exception;
    const-string v7, "DateTimeSettings"

    const-string v8, "DateFormat Exception"

    invoke-static {v7, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method


# virtual methods
.method protected getSuggestedMinimumWidth()I
    .locals 1

    .prologue
    .line 111
    const/4 v0, 0x0

    return v0
.end method

.method protected onAttachedToWindow()V
    .locals 1

    .prologue
    .line 83
    invoke-super {p0}, Landroid/widget/TextView;->onAttachedToWindow()V

    .line 84
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/thanhfhuongf/Amlich/DateView;->mAttachedToWindow:Z

    .line 85
    invoke-direct {p0}, Lcom/thanhfhuongf/Amlich/DateView;->setUpdates()V

    .line 86
    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 1

    .prologue
    .line 90
    invoke-super {p0}, Landroid/widget/TextView;->onDetachedFromWindow()V

    .line 91
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/thanhfhuongf/Amlich/DateView;->mAttachedToWindow:Z

    .line 92
    invoke-direct {p0}, Lcom/thanhfhuongf/Amlich/DateView;->setUpdates()V

    .line 93
    return-void
.end method

.method protected onVisibilityChanged(Landroid/view/View;I)V
    .locals 0
    .param p1, "changedView"    # Landroid/view/View;
    .param p2, "visibility"    # I

    .prologue
    .line 104
    invoke-super {p0, p1, p2}, Landroid/widget/TextView;->onVisibilityChanged(Landroid/view/View;I)V

    .line 105
    invoke-direct {p0}, Lcom/thanhfhuongf/Amlich/DateView;->setUpdates()V

    .line 106
    return-void
.end method

.method protected onWindowVisibilityChanged(I)V
    .locals 1
    .param p1, "visibility"    # I

    .prologue
    .line 97
    invoke-super {p0, p1}, Landroid/widget/TextView;->onWindowVisibilityChanged(I)V

    .line 98
    if-nez p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    iput-boolean v0, p0, Lcom/thanhfhuongf/Amlich/DateView;->mWindowVisible:Z

    .line 99
    invoke-direct {p0}, Lcom/thanhfhuongf/Amlich/DateView;->setUpdates()V

    .line 100
    return-void

    .line 98
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
