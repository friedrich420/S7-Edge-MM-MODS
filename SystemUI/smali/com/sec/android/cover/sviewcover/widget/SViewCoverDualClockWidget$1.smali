.class Lcom/sec/android/cover/sviewcover/widget/SViewCoverDualClockWidget$1;
.super Lcom/sec/android/cover/monitor/CoverUpdateMonitorCallback;
.source "SViewCoverDualClockWidget.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/cover/sviewcover/widget/SViewCoverDualClockWidget;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/cover/sviewcover/widget/SViewCoverDualClockWidget;


# direct methods
.method constructor <init>(Lcom/sec/android/cover/sviewcover/widget/SViewCoverDualClockWidget;)V
    .locals 0

    .prologue
    .line 89
    iput-object p1, p0, Lcom/sec/android/cover/sviewcover/widget/SViewCoverDualClockWidget$1;->this$0:Lcom/sec/android/cover/sviewcover/widget/SViewCoverDualClockWidget;

    invoke-direct {p0}, Lcom/sec/android/cover/monitor/CoverUpdateMonitorCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onConfigurationChanged()V
    .locals 4

    .prologue
    const/16 v2, 0x12c2

    .line 107
    iget-object v0, p0, Lcom/sec/android/cover/sviewcover/widget/SViewCoverDualClockWidget$1;->this$0:Lcom/sec/android/cover/sviewcover/widget/SViewCoverDualClockWidget;

    # invokes: Lcom/sec/android/cover/sviewcover/widget/SViewCoverDualClockWidget;->onTimeChanged()V
    invoke-static {v0}, Lcom/sec/android/cover/sviewcover/widget/SViewCoverDualClockWidget;->access$300(Lcom/sec/android/cover/sviewcover/widget/SViewCoverDualClockWidget;)V

    .line 109
    iget-object v0, p0, Lcom/sec/android/cover/sviewcover/widget/SViewCoverDualClockWidget$1;->this$0:Lcom/sec/android/cover/sviewcover/widget/SViewCoverDualClockWidget;

    # getter for: Lcom/sec/android/cover/sviewcover/widget/SViewCoverDualClockWidget;->mClockHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/sec/android/cover/sviewcover/widget/SViewCoverDualClockWidget;->access$600(Lcom/sec/android/cover/sviewcover/widget/SViewCoverDualClockWidget;)Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 110
    iget-object v0, p0, Lcom/sec/android/cover/sviewcover/widget/SViewCoverDualClockWidget$1;->this$0:Lcom/sec/android/cover/sviewcover/widget/SViewCoverDualClockWidget;

    # getter for: Lcom/sec/android/cover/sviewcover/widget/SViewCoverDualClockWidget;->mClockHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/sec/android/cover/sviewcover/widget/SViewCoverDualClockWidget;->access$600(Lcom/sec/android/cover/sviewcover/widget/SViewCoverDualClockWidget;)Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 111
    :cond_0
    iget-object v0, p0, Lcom/sec/android/cover/sviewcover/widget/SViewCoverDualClockWidget$1;->this$0:Lcom/sec/android/cover/sviewcover/widget/SViewCoverDualClockWidget;

    # getter for: Lcom/sec/android/cover/sviewcover/widget/SViewCoverDualClockWidget;->mClockHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/sec/android/cover/sviewcover/widget/SViewCoverDualClockWidget;->access$600(Lcom/sec/android/cover/sviewcover/widget/SViewCoverDualClockWidget;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/cover/sviewcover/widget/SViewCoverDualClockWidget$1;->this$0:Lcom/sec/android/cover/sviewcover/widget/SViewCoverDualClockWidget;

    # getter for: Lcom/sec/android/cover/sviewcover/widget/SViewCoverDualClockWidget;->mClockHandler:Landroid/os/Handler;
    invoke-static {v1}, Lcom/sec/android/cover/sviewcover/widget/SViewCoverDualClockWidget;->access$600(Lcom/sec/android/cover/sviewcover/widget/SViewCoverDualClockWidget;)Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    const-wide/16 v2, 0x7d0

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 113
    return-void
.end method

.method public onContentChanged(Landroid/net/Uri;)V
    .locals 3
    .param p1, "uri"    # Landroid/net/Uri;

    .prologue
    const/4 v2, 0x0

    .line 125
    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "time_12_24"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 126
    iget-object v0, p0, Lcom/sec/android/cover/sviewcover/widget/SViewCoverDualClockWidget$1;->this$0:Lcom/sec/android/cover/sviewcover/widget/SViewCoverDualClockWidget;

    iget-object v1, p0, Lcom/sec/android/cover/sviewcover/widget/SViewCoverDualClockWidget$1;->this$0:Lcom/sec/android/cover/sviewcover/widget/SViewCoverDualClockWidget;

    # getter for: Lcom/sec/android/cover/sviewcover/widget/SViewCoverDualClockWidget;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/sec/android/cover/sviewcover/widget/SViewCoverDualClockWidget;->access$200(Lcom/sec/android/cover/sviewcover/widget/SViewCoverDualClockWidget;)Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/sec/android/cover/CoverUtils;->is24HourModeEnabled(Landroid/content/Context;)Z

    move-result v1

    # setter for: Lcom/sec/android/cover/sviewcover/widget/SViewCoverDualClockWidget;->mIs24HTime:Z
    invoke-static {v0, v1}, Lcom/sec/android/cover/sviewcover/widget/SViewCoverDualClockWidget;->access$102(Lcom/sec/android/cover/sviewcover/widget/SViewCoverDualClockWidget;Z)Z

    .line 127
    iget-object v0, p0, Lcom/sec/android/cover/sviewcover/widget/SViewCoverDualClockWidget$1;->this$0:Lcom/sec/android/cover/sviewcover/widget/SViewCoverDualClockWidget;

    # invokes: Lcom/sec/android/cover/sviewcover/widget/SViewCoverDualClockWidget;->onTimeChanged()V
    invoke-static {v0}, Lcom/sec/android/cover/sviewcover/widget/SViewCoverDualClockWidget;->access$300(Lcom/sec/android/cover/sviewcover/widget/SViewCoverDualClockWidget;)V

    .line 130
    :cond_0
    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "content://settings/system/date_format"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 131
    # getter for: Lcom/sec/android/cover/sviewcover/widget/SViewCoverDualClockWidget;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/sec/android/cover/sviewcover/widget/SViewCoverDualClockWidget;->access$700()Ljava/lang/String;

    move-result-object v0

    const-string v1, "DateFormatObserver onChange()"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 132
    iget-object v0, p0, Lcom/sec/android/cover/sviewcover/widget/SViewCoverDualClockWidget$1;->this$0:Lcom/sec/android/cover/sviewcover/widget/SViewCoverDualClockWidget;

    # setter for: Lcom/sec/android/cover/sviewcover/widget/SViewCoverDualClockWidget;->mTTSDatePattern:Ljava/lang/CharSequence;
    invoke-static {v0, v2}, Lcom/sec/android/cover/sviewcover/widget/SViewCoverDualClockWidget;->access$402(Lcom/sec/android/cover/sviewcover/widget/SViewCoverDualClockWidget;Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    .line 133
    iget-object v0, p0, Lcom/sec/android/cover/sviewcover/widget/SViewCoverDualClockWidget$1;->this$0:Lcom/sec/android/cover/sviewcover/widget/SViewCoverDualClockWidget;

    # setter for: Lcom/sec/android/cover/sviewcover/widget/SViewCoverDualClockWidget;->mDatePattern:Ljava/lang/CharSequence;
    invoke-static {v0, v2}, Lcom/sec/android/cover/sviewcover/widget/SViewCoverDualClockWidget;->access$502(Lcom/sec/android/cover/sviewcover/widget/SViewCoverDualClockWidget;Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    .line 134
    iget-object v0, p0, Lcom/sec/android/cover/sviewcover/widget/SViewCoverDualClockWidget$1;->this$0:Lcom/sec/android/cover/sviewcover/widget/SViewCoverDualClockWidget;

    # getter for: Lcom/sec/android/cover/sviewcover/widget/SViewCoverDualClockWidget;->mContext:Landroid/content/Context;
    invoke-static {v0}, Lcom/sec/android/cover/sviewcover/widget/SViewCoverDualClockWidget;->access$200(Lcom/sec/android/cover/sviewcover/widget/SViewCoverDualClockWidget;)Landroid/content/Context;

    move-result-object v0

    new-instance v1, Landroid/content/Intent;

    const-string v2, "clock.date_format_changed"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 137
    :cond_1
    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "homecity_timezone"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 138
    # getter for: Lcom/sec/android/cover/sviewcover/widget/SViewCoverDualClockWidget;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/sec/android/cover/sviewcover/widget/SViewCoverDualClockWidget;->access$700()Ljava/lang/String;

    move-result-object v0

    const-string v1, "HomeCityChangeObserver onChange()"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 139
    iget-object v0, p0, Lcom/sec/android/cover/sviewcover/widget/SViewCoverDualClockWidget$1;->this$0:Lcom/sec/android/cover/sviewcover/widget/SViewCoverDualClockWidget;

    # getter for: Lcom/sec/android/cover/sviewcover/widget/SViewCoverDualClockWidget;->mContext:Landroid/content/Context;
    invoke-static {v0}, Lcom/sec/android/cover/sviewcover/widget/SViewCoverDualClockWidget;->access$200(Lcom/sec/android/cover/sviewcover/widget/SViewCoverDualClockWidget;)Landroid/content/Context;

    move-result-object v0

    new-instance v1, Landroid/content/Intent;

    const-string v2, "dualclock.homecity_timezone"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 141
    :cond_2
    return-void
.end method

.method public onDateFormatChanged()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 101
    iget-object v0, p0, Lcom/sec/android/cover/sviewcover/widget/SViewCoverDualClockWidget$1;->this$0:Lcom/sec/android/cover/sviewcover/widget/SViewCoverDualClockWidget;

    # setter for: Lcom/sec/android/cover/sviewcover/widget/SViewCoverDualClockWidget;->mTTSDatePattern:Ljava/lang/CharSequence;
    invoke-static {v0, v1}, Lcom/sec/android/cover/sviewcover/widget/SViewCoverDualClockWidget;->access$402(Lcom/sec/android/cover/sviewcover/widget/SViewCoverDualClockWidget;Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    .line 102
    iget-object v0, p0, Lcom/sec/android/cover/sviewcover/widget/SViewCoverDualClockWidget$1;->this$0:Lcom/sec/android/cover/sviewcover/widget/SViewCoverDualClockWidget;

    # setter for: Lcom/sec/android/cover/sviewcover/widget/SViewCoverDualClockWidget;->mDatePattern:Ljava/lang/CharSequence;
    invoke-static {v0, v1}, Lcom/sec/android/cover/sviewcover/widget/SViewCoverDualClockWidget;->access$502(Lcom/sec/android/cover/sviewcover/widget/SViewCoverDualClockWidget;Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    .line 103
    iget-object v0, p0, Lcom/sec/android/cover/sviewcover/widget/SViewCoverDualClockWidget$1;->this$0:Lcom/sec/android/cover/sviewcover/widget/SViewCoverDualClockWidget;

    # invokes: Lcom/sec/android/cover/sviewcover/widget/SViewCoverDualClockWidget;->onTimeChanged()V
    invoke-static {v0}, Lcom/sec/android/cover/sviewcover/widget/SViewCoverDualClockWidget;->access$300(Lcom/sec/android/cover/sviewcover/widget/SViewCoverDualClockWidget;)V

    .line 104
    return-void
.end method

.method public onHomeCityChanged()V
    .locals 1

    .prologue
    .line 121
    iget-object v0, p0, Lcom/sec/android/cover/sviewcover/widget/SViewCoverDualClockWidget$1;->this$0:Lcom/sec/android/cover/sviewcover/widget/SViewCoverDualClockWidget;

    # invokes: Lcom/sec/android/cover/sviewcover/widget/SViewCoverDualClockWidget;->onTimeChanged()V
    invoke-static {v0}, Lcom/sec/android/cover/sviewcover/widget/SViewCoverDualClockWidget;->access$300(Lcom/sec/android/cover/sviewcover/widget/SViewCoverDualClockWidget;)V

    .line 122
    return-void
.end method

.method public onLocaleChanged()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 144
    iget-object v0, p0, Lcom/sec/android/cover/sviewcover/widget/SViewCoverDualClockWidget$1;->this$0:Lcom/sec/android/cover/sviewcover/widget/SViewCoverDualClockWidget;

    # setter for: Lcom/sec/android/cover/sviewcover/widget/SViewCoverDualClockWidget;->mTTSDatePattern:Ljava/lang/CharSequence;
    invoke-static {v0, v1}, Lcom/sec/android/cover/sviewcover/widget/SViewCoverDualClockWidget;->access$402(Lcom/sec/android/cover/sviewcover/widget/SViewCoverDualClockWidget;Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    .line 145
    iget-object v0, p0, Lcom/sec/android/cover/sviewcover/widget/SViewCoverDualClockWidget$1;->this$0:Lcom/sec/android/cover/sviewcover/widget/SViewCoverDualClockWidget;

    # setter for: Lcom/sec/android/cover/sviewcover/widget/SViewCoverDualClockWidget;->mDatePattern:Ljava/lang/CharSequence;
    invoke-static {v0, v1}, Lcom/sec/android/cover/sviewcover/widget/SViewCoverDualClockWidget;->access$502(Lcom/sec/android/cover/sviewcover/widget/SViewCoverDualClockWidget;Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    .line 146
    iget-object v0, p0, Lcom/sec/android/cover/sviewcover/widget/SViewCoverDualClockWidget$1;->this$0:Lcom/sec/android/cover/sviewcover/widget/SViewCoverDualClockWidget;

    invoke-virtual {v0}, Lcom/sec/android/cover/sviewcover/widget/SViewCoverDualClockWidget;->refreshClock()V

    .line 147
    iget-object v0, p0, Lcom/sec/android/cover/sviewcover/widget/SViewCoverDualClockWidget$1;->this$0:Lcom/sec/android/cover/sviewcover/widget/SViewCoverDualClockWidget;

    # invokes: Lcom/sec/android/cover/sviewcover/widget/SViewCoverDualClockWidget;->onTimeChanged()V
    invoke-static {v0}, Lcom/sec/android/cover/sviewcover/widget/SViewCoverDualClockWidget;->access$300(Lcom/sec/android/cover/sviewcover/widget/SViewCoverDualClockWidget;)V

    .line 148
    return-void
.end method

.method public onThemeFontChanged(Ljava/lang/String;)V
    .locals 1
    .param p1, "fontPath"    # Ljava/lang/String;

    .prologue
    .line 92
    iget-object v0, p0, Lcom/sec/android/cover/sviewcover/widget/SViewCoverDualClockWidget$1;->this$0:Lcom/sec/android/cover/sviewcover/widget/SViewCoverDualClockWidget;

    # invokes: Lcom/sec/android/cover/sviewcover/widget/SViewCoverDualClockWidget;->onThemeFontChanged(Ljava/lang/String;)V
    invoke-static {v0, p1}, Lcom/sec/android/cover/sviewcover/widget/SViewCoverDualClockWidget;->access$000(Lcom/sec/android/cover/sviewcover/widget/SViewCoverDualClockWidget;Ljava/lang/String;)V

    .line 93
    return-void
.end method

.method public onTimeChanged()V
    .locals 2

    .prologue
    .line 96
    iget-object v0, p0, Lcom/sec/android/cover/sviewcover/widget/SViewCoverDualClockWidget$1;->this$0:Lcom/sec/android/cover/sviewcover/widget/SViewCoverDualClockWidget;

    iget-object v1, p0, Lcom/sec/android/cover/sviewcover/widget/SViewCoverDualClockWidget$1;->this$0:Lcom/sec/android/cover/sviewcover/widget/SViewCoverDualClockWidget;

    # getter for: Lcom/sec/android/cover/sviewcover/widget/SViewCoverDualClockWidget;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/sec/android/cover/sviewcover/widget/SViewCoverDualClockWidget;->access$200(Lcom/sec/android/cover/sviewcover/widget/SViewCoverDualClockWidget;)Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/sec/android/cover/CoverUtils;->is24HourModeEnabled(Landroid/content/Context;)Z

    move-result v1

    # setter for: Lcom/sec/android/cover/sviewcover/widget/SViewCoverDualClockWidget;->mIs24HTime:Z
    invoke-static {v0, v1}, Lcom/sec/android/cover/sviewcover/widget/SViewCoverDualClockWidget;->access$102(Lcom/sec/android/cover/sviewcover/widget/SViewCoverDualClockWidget;Z)Z

    .line 97
    iget-object v0, p0, Lcom/sec/android/cover/sviewcover/widget/SViewCoverDualClockWidget$1;->this$0:Lcom/sec/android/cover/sviewcover/widget/SViewCoverDualClockWidget;

    # invokes: Lcom/sec/android/cover/sviewcover/widget/SViewCoverDualClockWidget;->onTimeChanged()V
    invoke-static {v0}, Lcom/sec/android/cover/sviewcover/widget/SViewCoverDualClockWidget;->access$300(Lcom/sec/android/cover/sviewcover/widget/SViewCoverDualClockWidget;)V

    .line 98
    return-void
.end method

.method public onUserSwitched(II)V
    .locals 2
    .param p1, "newUserId"    # I
    .param p2, "oldUserId"    # I

    .prologue
    .line 116
    iget-object v0, p0, Lcom/sec/android/cover/sviewcover/widget/SViewCoverDualClockWidget$1;->this$0:Lcom/sec/android/cover/sviewcover/widget/SViewCoverDualClockWidget;

    iget-object v1, p0, Lcom/sec/android/cover/sviewcover/widget/SViewCoverDualClockWidget$1;->this$0:Lcom/sec/android/cover/sviewcover/widget/SViewCoverDualClockWidget;

    # getter for: Lcom/sec/android/cover/sviewcover/widget/SViewCoverDualClockWidget;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/sec/android/cover/sviewcover/widget/SViewCoverDualClockWidget;->access$200(Lcom/sec/android/cover/sviewcover/widget/SViewCoverDualClockWidget;)Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/sec/android/cover/CoverUtils;->is24HourModeEnabled(Landroid/content/Context;)Z

    move-result v1

    # setter for: Lcom/sec/android/cover/sviewcover/widget/SViewCoverDualClockWidget;->mIs24HTime:Z
    invoke-static {v0, v1}, Lcom/sec/android/cover/sviewcover/widget/SViewCoverDualClockWidget;->access$102(Lcom/sec/android/cover/sviewcover/widget/SViewCoverDualClockWidget;Z)Z

    .line 117
    iget-object v0, p0, Lcom/sec/android/cover/sviewcover/widget/SViewCoverDualClockWidget$1;->this$0:Lcom/sec/android/cover/sviewcover/widget/SViewCoverDualClockWidget;

    # invokes: Lcom/sec/android/cover/sviewcover/widget/SViewCoverDualClockWidget;->onTimeChanged()V
    invoke-static {v0}, Lcom/sec/android/cover/sviewcover/widget/SViewCoverDualClockWidget;->access$300(Lcom/sec/android/cover/sviewcover/widget/SViewCoverDualClockWidget;)V

    .line 118
    return-void
.end method
