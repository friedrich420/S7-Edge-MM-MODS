.class public Lcom/thanhfhuongf/Amlich/DayOfWeek;
.super Landroid/widget/TextView;
.source "DayOfWeek.java"


# instance fields
.field private mContext:Landroid/content/Context;

.field private mHandler:Landroid/os/Handler;

.field private mIntentReceiver:Landroid/content/BroadcastReceiver;

.field private mUpdating:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 62
    invoke-direct {p0, p1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 17
    new-instance v0, Lcom/thanhfhuongf/Amlich/DayOfWeek$1;

    invoke-direct {v0, p0}, Lcom/thanhfhuongf/Amlich/DayOfWeek$1;-><init>(Lcom/thanhfhuongf/Amlich/DayOfWeek;)V

    iput-object v0, p0, Lcom/thanhfhuongf/Amlich/DayOfWeek;->mHandler:Landroid/os/Handler;

    .line 24
    new-instance v0, Lcom/thanhfhuongf/Amlich/DayOfWeek$2;

    invoke-direct {v0, p0}, Lcom/thanhfhuongf/Amlich/DayOfWeek$2;-><init>(Lcom/thanhfhuongf/Amlich/DayOfWeek;)V

    iput-object v0, p0, Lcom/thanhfhuongf/Amlich/DayOfWeek;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    .line 63
    iput-object p1, p0, Lcom/thanhfhuongf/Amlich/DayOfWeek;->mContext:Landroid/content/Context;

    .line 64
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 67
    invoke-direct {p0, p1, p2}, Landroid/widget/TextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 17
    new-instance v0, Lcom/thanhfhuongf/Amlich/DayOfWeek$1;

    invoke-direct {v0, p0}, Lcom/thanhfhuongf/Amlich/DayOfWeek$1;-><init>(Lcom/thanhfhuongf/Amlich/DayOfWeek;)V

    iput-object v0, p0, Lcom/thanhfhuongf/Amlich/DayOfWeek;->mHandler:Landroid/os/Handler;

    .line 24
    new-instance v0, Lcom/thanhfhuongf/Amlich/DayOfWeek$2;

    invoke-direct {v0, p0}, Lcom/thanhfhuongf/Amlich/DayOfWeek$2;-><init>(Lcom/thanhfhuongf/Amlich/DayOfWeek;)V

    iput-object v0, p0, Lcom/thanhfhuongf/Amlich/DayOfWeek;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    .line 68
    iput-object p1, p0, Lcom/thanhfhuongf/Amlich/DayOfWeek;->mContext:Landroid/content/Context;

    .line 69
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    .line 72
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/TextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 17
    new-instance v0, Lcom/thanhfhuongf/Amlich/DayOfWeek$1;

    invoke-direct {v0, p0}, Lcom/thanhfhuongf/Amlich/DayOfWeek$1;-><init>(Lcom/thanhfhuongf/Amlich/DayOfWeek;)V

    iput-object v0, p0, Lcom/thanhfhuongf/Amlich/DayOfWeek;->mHandler:Landroid/os/Handler;

    .line 24
    new-instance v0, Lcom/thanhfhuongf/Amlich/DayOfWeek$2;

    invoke-direct {v0, p0}, Lcom/thanhfhuongf/Amlich/DayOfWeek$2;-><init>(Lcom/thanhfhuongf/Amlich/DayOfWeek;)V

    iput-object v0, p0, Lcom/thanhfhuongf/Amlich/DayOfWeek;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    .line 73
    iput-object p1, p0, Lcom/thanhfhuongf/Amlich/DayOfWeek;->mContext:Landroid/content/Context;

    .line 75
    return-void
.end method

.method static synthetic access$0(Lcom/thanhfhuongf/Amlich/DayOfWeek;)V
    .locals 0

    .prologue
    .line 105
    invoke-direct {p0}, Lcom/thanhfhuongf/Amlich/DayOfWeek;->updateDayOfWeek()V

    return-void
.end method

.method static synthetic access$1(Lcom/thanhfhuongf/Amlich/DayOfWeek;)Landroid/os/Handler;
    .locals 1

    .prologue
    .line 17
    iget-object v0, p0, Lcom/thanhfhuongf/Amlich/DayOfWeek;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method private setUpdates()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 41
    const/4 v0, 0x1

    .line 43
    .local v0, "bool":Z
    iget-boolean v2, p0, Lcom/thanhfhuongf/Amlich/DayOfWeek;->mUpdating:Z

    if-eq v0, v2, :cond_0

    .line 45
    iput-boolean v0, p0, Lcom/thanhfhuongf/Amlich/DayOfWeek;->mUpdating:Z

    .line 46
    if-nez v0, :cond_1

    .line 58
    iget-object v2, p0, Lcom/thanhfhuongf/Amlich/DayOfWeek;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/thanhfhuongf/Amlich/DayOfWeek;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v2, v3}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 59
    :cond_0
    :goto_0
    return-void

    .line 48
    :cond_1
    new-instance v1, Landroid/content/IntentFilter;

    invoke-direct {v1}, Landroid/content/IntentFilter;-><init>()V

    .line 49
    .local v1, "localIntentFilter":Landroid/content/IntentFilter;
    const-string v2, "android.intent.action.TIME_TICK"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 50
    const-string v2, "android.intent.action.TIME_SET"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 51
    const-string v2, "android.intent.action.TIMEZONE_CHANGED"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 52
    const-string v2, "android.intent.action.LOCALE_CHANGED"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 53
    iget-object v2, p0, Lcom/thanhfhuongf/Amlich/DayOfWeek;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/thanhfhuongf/Amlich/DayOfWeek;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v2, v3, v1, v4, v4}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 54
    invoke-direct {p0}, Lcom/thanhfhuongf/Amlich/DayOfWeek;->updateDayOfWeek()V

    goto :goto_0
.end method

.method private updateDayOfWeek()V
    .locals 5

    .prologue
    const/4 v4, 0x7

    .line 107
    const-string v2, ""

    .line 108
    .local v2, "weekDay":Ljava/lang/String;
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 109
    .local v0, "c":Ljava/util/Calendar;
    invoke-virtual {v0, v4}, Ljava/util/Calendar;->get(I)I

    move-result v1

    .line 111
    .local v1, "dayOfWeek":I
    const/4 v3, 0x2

    if-ne v3, v1, :cond_1

    .line 112
    const-string v2, "Th\u1ee9\n Hai"

    .line 126
    :cond_0
    :goto_0
    invoke-virtual {p0, v2}, Lcom/thanhfhuongf/Amlich/DayOfWeek;->setText(Ljava/lang/CharSequence;)V

    .line 127
    return-void

    .line 113
    :cond_1
    const/4 v3, 0x3

    if-ne v3, v1, :cond_2

    .line 114
    const-string v2, "Th\u1ee9\n Ba"

    goto :goto_0

    .line 115
    :cond_2
    const/4 v3, 0x4

    if-ne v3, v1, :cond_3

    .line 116
    const-string v2, "Th\u1ee9\n T\u01b0"

    goto :goto_0

    .line 117
    :cond_3
    const/4 v3, 0x5

    if-ne v3, v1, :cond_4

    .line 118
    const-string v2, "Th\u1ee9\n N\u0103m"

    goto :goto_0

    .line 119
    :cond_4
    const/4 v3, 0x6

    if-ne v3, v1, :cond_5

    .line 120
    const-string v2, "Th\u1ee9\n S\u00e1u"

    goto :goto_0

    .line 121
    :cond_5
    if-ne v4, v1, :cond_6

    .line 122
    const-string v2, "Th\u1ee9\n B\u1ea3y"

    goto :goto_0

    .line 123
    :cond_6
    const/4 v3, 0x1

    if-ne v3, v1, :cond_0

    .line 124
    const-string v2, "Ch\u1ee7\n Nh\u1eadt"

    goto :goto_0
.end method


# virtual methods
.method protected onAttachedToWindow()V
    .locals 0

    .prologue
    .line 80
    invoke-super {p0}, Landroid/widget/TextView;->onAttachedToWindow()V

    .line 81
    invoke-direct {p0}, Lcom/thanhfhuongf/Amlich/DayOfWeek;->setUpdates()V

    .line 82
    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 0

    .prologue
    .line 87
    invoke-super {p0}, Landroid/widget/TextView;->onDetachedFromWindow()V

    .line 88
    invoke-direct {p0}, Lcom/thanhfhuongf/Amlich/DayOfWeek;->setUpdates()V

    .line 89
    return-void
.end method

.method protected onVisibilityChanged(Landroid/view/View;I)V
    .locals 0
    .param p1, "changedView"    # Landroid/view/View;
    .param p2, "visibility"    # I

    .prologue
    .line 94
    invoke-super {p0, p1, p2}, Landroid/widget/TextView;->onVisibilityChanged(Landroid/view/View;I)V

    .line 95
    invoke-direct {p0}, Lcom/thanhfhuongf/Amlich/DayOfWeek;->setUpdates()V

    .line 96
    return-void
.end method

.method protected onWindowVisibilityChanged(I)V
    .locals 0
    .param p1, "visibility"    # I

    .prologue
    .line 101
    invoke-super {p0, p1}, Landroid/widget/TextView;->onWindowVisibilityChanged(I)V

    .line 102
    invoke-direct {p0}, Lcom/thanhfhuongf/Amlich/DayOfWeek;->setUpdates()V

    .line 103
    return-void
.end method
