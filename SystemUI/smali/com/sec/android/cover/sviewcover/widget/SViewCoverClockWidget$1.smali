.class Lcom/sec/android/cover/sviewcover/widget/SViewCoverClockWidget$1;
.super Lcom/sec/android/cover/monitor/CoverUpdateMonitorCallback;
.source "SViewCoverClockWidget.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/cover/sviewcover/widget/SViewCoverClockWidget;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/cover/sviewcover/widget/SViewCoverClockWidget;


# direct methods
.method constructor <init>(Lcom/sec/android/cover/sviewcover/widget/SViewCoverClockWidget;)V
    .locals 0

    .prologue
    .line 74
    iput-object p1, p0, Lcom/sec/android/cover/sviewcover/widget/SViewCoverClockWidget$1;->this$0:Lcom/sec/android/cover/sviewcover/widget/SViewCoverClockWidget;

    invoke-direct {p0}, Lcom/sec/android/cover/monitor/CoverUpdateMonitorCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onConfigurationChanged()V
    .locals 4

    .prologue
    const/16 v2, 0x12c2

    .line 92
    iget-object v0, p0, Lcom/sec/android/cover/sviewcover/widget/SViewCoverClockWidget$1;->this$0:Lcom/sec/android/cover/sviewcover/widget/SViewCoverClockWidget;

    # getter for: Lcom/sec/android/cover/sviewcover/widget/SViewCoverClockWidget;->mClockHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/sec/android/cover/sviewcover/widget/SViewCoverClockWidget;->access$600(Lcom/sec/android/cover/sviewcover/widget/SViewCoverClockWidget;)Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 93
    iget-object v0, p0, Lcom/sec/android/cover/sviewcover/widget/SViewCoverClockWidget$1;->this$0:Lcom/sec/android/cover/sviewcover/widget/SViewCoverClockWidget;

    # getter for: Lcom/sec/android/cover/sviewcover/widget/SViewCoverClockWidget;->mClockHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/sec/android/cover/sviewcover/widget/SViewCoverClockWidget;->access$600(Lcom/sec/android/cover/sviewcover/widget/SViewCoverClockWidget;)Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 95
    :cond_0
    iget-object v0, p0, Lcom/sec/android/cover/sviewcover/widget/SViewCoverClockWidget$1;->this$0:Lcom/sec/android/cover/sviewcover/widget/SViewCoverClockWidget;

    # getter for: Lcom/sec/android/cover/sviewcover/widget/SViewCoverClockWidget;->mClockHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/sec/android/cover/sviewcover/widget/SViewCoverClockWidget;->access$600(Lcom/sec/android/cover/sviewcover/widget/SViewCoverClockWidget;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/cover/sviewcover/widget/SViewCoverClockWidget$1;->this$0:Lcom/sec/android/cover/sviewcover/widget/SViewCoverClockWidget;

    # getter for: Lcom/sec/android/cover/sviewcover/widget/SViewCoverClockWidget;->mClockHandler:Landroid/os/Handler;
    invoke-static {v1}, Lcom/sec/android/cover/sviewcover/widget/SViewCoverClockWidget;->access$600(Lcom/sec/android/cover/sviewcover/widget/SViewCoverClockWidget;)Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    const-wide/16 v2, 0x7d0

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 98
    iget-object v0, p0, Lcom/sec/android/cover/sviewcover/widget/SViewCoverClockWidget$1;->this$0:Lcom/sec/android/cover/sviewcover/widget/SViewCoverClockWidget;

    # invokes: Lcom/sec/android/cover/sviewcover/widget/SViewCoverClockWidget;->onTimeChanged()V
    invoke-static {v0}, Lcom/sec/android/cover/sviewcover/widget/SViewCoverClockWidget;->access$300(Lcom/sec/android/cover/sviewcover/widget/SViewCoverClockWidget;)V

    .line 99
    return-void
.end method

.method public onContentChanged(Landroid/net/Uri;)V
    .locals 3
    .param p1, "uri"    # Landroid/net/Uri;

    .prologue
    const/4 v2, 0x0

    .line 136
    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "time_12_24"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 137
    iget-object v0, p0, Lcom/sec/android/cover/sviewcover/widget/SViewCoverClockWidget$1;->this$0:Lcom/sec/android/cover/sviewcover/widget/SViewCoverClockWidget;

    iget-object v1, p0, Lcom/sec/android/cover/sviewcover/widget/SViewCoverClockWidget$1;->this$0:Lcom/sec/android/cover/sviewcover/widget/SViewCoverClockWidget;

    # getter for: Lcom/sec/android/cover/sviewcover/widget/SViewCoverClockWidget;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/sec/android/cover/sviewcover/widget/SViewCoverClockWidget;->access$200(Lcom/sec/android/cover/sviewcover/widget/SViewCoverClockWidget;)Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/sec/android/cover/CoverUtils;->is24HourModeEnabled(Landroid/content/Context;)Z

    move-result v1

    # setter for: Lcom/sec/android/cover/sviewcover/widget/SViewCoverClockWidget;->mIs24HTime:Z
    invoke-static {v0, v1}, Lcom/sec/android/cover/sviewcover/widget/SViewCoverClockWidget;->access$102(Lcom/sec/android/cover/sviewcover/widget/SViewCoverClockWidget;Z)Z

    .line 138
    iget-object v0, p0, Lcom/sec/android/cover/sviewcover/widget/SViewCoverClockWidget$1;->this$0:Lcom/sec/android/cover/sviewcover/widget/SViewCoverClockWidget;

    # invokes: Lcom/sec/android/cover/sviewcover/widget/SViewCoverClockWidget;->onTimeChanged()V
    invoke-static {v0}, Lcom/sec/android/cover/sviewcover/widget/SViewCoverClockWidget;->access$300(Lcom/sec/android/cover/sviewcover/widget/SViewCoverClockWidget;)V

    .line 141
    :cond_0
    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "content://settings/system/date_format"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 142
    iget-object v0, p0, Lcom/sec/android/cover/sviewcover/widget/SViewCoverClockWidget$1;->this$0:Lcom/sec/android/cover/sviewcover/widget/SViewCoverClockWidget;

    # setter for: Lcom/sec/android/cover/sviewcover/widget/SViewCoverClockWidget;->mDatePattern:Ljava/lang/CharSequence;
    invoke-static {v0, v2}, Lcom/sec/android/cover/sviewcover/widget/SViewCoverClockWidget;->access$402(Lcom/sec/android/cover/sviewcover/widget/SViewCoverClockWidget;Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    .line 143
    iget-object v0, p0, Lcom/sec/android/cover/sviewcover/widget/SViewCoverClockWidget$1;->this$0:Lcom/sec/android/cover/sviewcover/widget/SViewCoverClockWidget;

    # setter for: Lcom/sec/android/cover/sviewcover/widget/SViewCoverClockWidget;->mTTSDatePattern:Ljava/lang/CharSequence;
    invoke-static {v0, v2}, Lcom/sec/android/cover/sviewcover/widget/SViewCoverClockWidget;->access$502(Lcom/sec/android/cover/sviewcover/widget/SViewCoverClockWidget;Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    .line 144
    iget-object v0, p0, Lcom/sec/android/cover/sviewcover/widget/SViewCoverClockWidget$1;->this$0:Lcom/sec/android/cover/sviewcover/widget/SViewCoverClockWidget;

    # invokes: Lcom/sec/android/cover/sviewcover/widget/SViewCoverClockWidget;->onTimeChanged()V
    invoke-static {v0}, Lcom/sec/android/cover/sviewcover/widget/SViewCoverClockWidget;->access$300(Lcom/sec/android/cover/sviewcover/widget/SViewCoverClockWidget;)V

    .line 147
    :cond_1
    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "festival_effect_enabled"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "festival_effect_lockscreen_wallpaper"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 150
    :cond_2
    # getter for: Lcom/sec/android/cover/sviewcover/widget/SViewCoverClockWidget;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/sec/android/cover/sviewcover/widget/SViewCoverClockWidget;->access$700()Ljava/lang/String;

    move-result-object v0

    const-string v1, "FestivalObserver onChange()"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 152
    iget-object v0, p0, Lcom/sec/android/cover/sviewcover/widget/SViewCoverClockWidget$1;->this$0:Lcom/sec/android/cover/sviewcover/widget/SViewCoverClockWidget;

    iget-object v1, p0, Lcom/sec/android/cover/sviewcover/widget/SViewCoverClockWidget$1;->this$0:Lcom/sec/android/cover/sviewcover/widget/SViewCoverClockWidget;

    # invokes: Lcom/sec/android/cover/sviewcover/widget/SViewCoverClockWidget;->isFestivalEffectEnabled()Z
    invoke-static {v1}, Lcom/sec/android/cover/sviewcover/widget/SViewCoverClockWidget;->access$1000(Lcom/sec/android/cover/sviewcover/widget/SViewCoverClockWidget;)Z

    move-result v1

    # setter for: Lcom/sec/android/cover/sviewcover/widget/SViewCoverClockWidget;->mFestivalEnabled:Z
    invoke-static {v0, v1}, Lcom/sec/android/cover/sviewcover/widget/SViewCoverClockWidget;->access$902(Lcom/sec/android/cover/sviewcover/widget/SViewCoverClockWidget;Z)Z

    .line 154
    # getter for: Lcom/sec/android/cover/sviewcover/widget/SViewCoverClockWidget;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/sec/android/cover/sviewcover/widget/SViewCoverClockWidget;->access$700()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mFestivalEnabled = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/android/cover/sviewcover/widget/SViewCoverClockWidget$1;->this$0:Lcom/sec/android/cover/sviewcover/widget/SViewCoverClockWidget;

    # getter for: Lcom/sec/android/cover/sviewcover/widget/SViewCoverClockWidget;->mFestivalEnabled:Z
    invoke-static {v2}, Lcom/sec/android/cover/sviewcover/widget/SViewCoverClockWidget;->access$900(Lcom/sec/android/cover/sviewcover/widget/SViewCoverClockWidget;)Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 155
    iget-object v0, p0, Lcom/sec/android/cover/sviewcover/widget/SViewCoverClockWidget$1;->this$0:Lcom/sec/android/cover/sviewcover/widget/SViewCoverClockWidget;

    # getter for: Lcom/sec/android/cover/sviewcover/widget/SViewCoverClockWidget;->mFestivalIcon:Landroid/widget/ImageView;
    invoke-static {v0}, Lcom/sec/android/cover/sviewcover/widget/SViewCoverClockWidget;->access$800(Lcom/sec/android/cover/sviewcover/widget/SViewCoverClockWidget;)Landroid/widget/ImageView;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 156
    iget-object v0, p0, Lcom/sec/android/cover/sviewcover/widget/SViewCoverClockWidget$1;->this$0:Lcom/sec/android/cover/sviewcover/widget/SViewCoverClockWidget;

    # getter for: Lcom/sec/android/cover/sviewcover/widget/SViewCoverClockWidget;->mFestivalEnabled:Z
    invoke-static {v0}, Lcom/sec/android/cover/sviewcover/widget/SViewCoverClockWidget;->access$900(Lcom/sec/android/cover/sviewcover/widget/SViewCoverClockWidget;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 157
    iget-object v0, p0, Lcom/sec/android/cover/sviewcover/widget/SViewCoverClockWidget$1;->this$0:Lcom/sec/android/cover/sviewcover/widget/SViewCoverClockWidget;

    # getter for: Lcom/sec/android/cover/sviewcover/widget/SViewCoverClockWidget;->mFestivalIcon:Landroid/widget/ImageView;
    invoke-static {v0}, Lcom/sec/android/cover/sviewcover/widget/SViewCoverClockWidget;->access$800(Lcom/sec/android/cover/sviewcover/widget/SViewCoverClockWidget;)Landroid/widget/ImageView;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 163
    :cond_3
    :goto_0
    return-void

    .line 159
    :cond_4
    iget-object v0, p0, Lcom/sec/android/cover/sviewcover/widget/SViewCoverClockWidget$1;->this$0:Lcom/sec/android/cover/sviewcover/widget/SViewCoverClockWidget;

    # getter for: Lcom/sec/android/cover/sviewcover/widget/SViewCoverClockWidget;->mFestivalIcon:Landroid/widget/ImageView;
    invoke-static {v0}, Lcom/sec/android/cover/sviewcover/widget/SViewCoverClockWidget;->access$800(Lcom/sec/android/cover/sviewcover/widget/SViewCoverClockWidget;)Landroid/widget/ImageView;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0
.end method

.method public onDateFormatChanged()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 86
    iget-object v0, p0, Lcom/sec/android/cover/sviewcover/widget/SViewCoverClockWidget$1;->this$0:Lcom/sec/android/cover/sviewcover/widget/SViewCoverClockWidget;

    # setter for: Lcom/sec/android/cover/sviewcover/widget/SViewCoverClockWidget;->mDatePattern:Ljava/lang/CharSequence;
    invoke-static {v0, v1}, Lcom/sec/android/cover/sviewcover/widget/SViewCoverClockWidget;->access$402(Lcom/sec/android/cover/sviewcover/widget/SViewCoverClockWidget;Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    .line 87
    iget-object v0, p0, Lcom/sec/android/cover/sviewcover/widget/SViewCoverClockWidget$1;->this$0:Lcom/sec/android/cover/sviewcover/widget/SViewCoverClockWidget;

    # setter for: Lcom/sec/android/cover/sviewcover/widget/SViewCoverClockWidget;->mTTSDatePattern:Ljava/lang/CharSequence;
    invoke-static {v0, v1}, Lcom/sec/android/cover/sviewcover/widget/SViewCoverClockWidget;->access$502(Lcom/sec/android/cover/sviewcover/widget/SViewCoverClockWidget;Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    .line 88
    iget-object v0, p0, Lcom/sec/android/cover/sviewcover/widget/SViewCoverClockWidget$1;->this$0:Lcom/sec/android/cover/sviewcover/widget/SViewCoverClockWidget;

    # invokes: Lcom/sec/android/cover/sviewcover/widget/SViewCoverClockWidget;->onTimeChanged()V
    invoke-static {v0}, Lcom/sec/android/cover/sviewcover/widget/SViewCoverClockWidget;->access$300(Lcom/sec/android/cover/sviewcover/widget/SViewCoverClockWidget;)V

    .line 89
    return-void
.end method

.method public onLocaleChanged()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 166
    iget-object v0, p0, Lcom/sec/android/cover/sviewcover/widget/SViewCoverClockWidget$1;->this$0:Lcom/sec/android/cover/sviewcover/widget/SViewCoverClockWidget;

    # setter for: Lcom/sec/android/cover/sviewcover/widget/SViewCoverClockWidget;->mDatePattern:Ljava/lang/CharSequence;
    invoke-static {v0, v1}, Lcom/sec/android/cover/sviewcover/widget/SViewCoverClockWidget;->access$402(Lcom/sec/android/cover/sviewcover/widget/SViewCoverClockWidget;Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    .line 167
    iget-object v0, p0, Lcom/sec/android/cover/sviewcover/widget/SViewCoverClockWidget$1;->this$0:Lcom/sec/android/cover/sviewcover/widget/SViewCoverClockWidget;

    # setter for: Lcom/sec/android/cover/sviewcover/widget/SViewCoverClockWidget;->mTTSDatePattern:Ljava/lang/CharSequence;
    invoke-static {v0, v1}, Lcom/sec/android/cover/sviewcover/widget/SViewCoverClockWidget;->access$502(Lcom/sec/android/cover/sviewcover/widget/SViewCoverClockWidget;Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    .line 168
    iget-object v0, p0, Lcom/sec/android/cover/sviewcover/widget/SViewCoverClockWidget$1;->this$0:Lcom/sec/android/cover/sviewcover/widget/SViewCoverClockWidget;

    invoke-virtual {v0}, Lcom/sec/android/cover/sviewcover/widget/SViewCoverClockWidget;->refreshClock()V

    .line 169
    iget-object v0, p0, Lcom/sec/android/cover/sviewcover/widget/SViewCoverClockWidget$1;->this$0:Lcom/sec/android/cover/sviewcover/widget/SViewCoverClockWidget;

    # invokes: Lcom/sec/android/cover/sviewcover/widget/SViewCoverClockWidget;->onTimeChanged()V
    invoke-static {v0}, Lcom/sec/android/cover/sviewcover/widget/SViewCoverClockWidget;->access$300(Lcom/sec/android/cover/sviewcover/widget/SViewCoverClockWidget;)V

    .line 170
    return-void
.end method

.method public onPickupCommonDay()V
    .locals 2

    .prologue
    .line 108
    iget-object v0, p0, Lcom/sec/android/cover/sviewcover/widget/SViewCoverClockWidget$1;->this$0:Lcom/sec/android/cover/sviewcover/widget/SViewCoverClockWidget;

    # getter for: Lcom/sec/android/cover/sviewcover/widget/SViewCoverClockWidget;->mFestivalIcon:Landroid/widget/ImageView;
    invoke-static {v0}, Lcom/sec/android/cover/sviewcover/widget/SViewCoverClockWidget;->access$800(Lcom/sec/android/cover/sviewcover/widget/SViewCoverClockWidget;)Landroid/widget/ImageView;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 109
    iget-object v0, p0, Lcom/sec/android/cover/sviewcover/widget/SViewCoverClockWidget$1;->this$0:Lcom/sec/android/cover/sviewcover/widget/SViewCoverClockWidget;

    # getter for: Lcom/sec/android/cover/sviewcover/widget/SViewCoverClockWidget;->mFestivalIcon:Landroid/widget/ImageView;
    invoke-static {v0}, Lcom/sec/android/cover/sviewcover/widget/SViewCoverClockWidget;->access$800(Lcom/sec/android/cover/sviewcover/widget/SViewCoverClockWidget;)Landroid/widget/ImageView;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 110
    # getter for: Lcom/sec/android/cover/sviewcover/widget/SViewCoverClockWidget;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/sec/android/cover/sviewcover/widget/SViewCoverClockWidget;->access$700()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ACTION_PICKUP_COMMON_DAY "

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 113
    :cond_0
    iget-object v0, p0, Lcom/sec/android/cover/sviewcover/widget/SViewCoverClockWidget$1;->this$0:Lcom/sec/android/cover/sviewcover/widget/SViewCoverClockWidget;

    invoke-virtual {v0}, Lcom/sec/android/cover/sviewcover/widget/SViewCoverClockWidget;->refreshClock()V

    .line 114
    iget-object v0, p0, Lcom/sec/android/cover/sviewcover/widget/SViewCoverClockWidget$1;->this$0:Lcom/sec/android/cover/sviewcover/widget/SViewCoverClockWidget;

    # invokes: Lcom/sec/android/cover/sviewcover/widget/SViewCoverClockWidget;->onTimeChanged()V
    invoke-static {v0}, Lcom/sec/android/cover/sviewcover/widget/SViewCoverClockWidget;->access$300(Lcom/sec/android/cover/sviewcover/widget/SViewCoverClockWidget;)V

    .line 115
    return-void
.end method

.method public onPickupFestivalDay(Ljava/lang/String;)V
    .locals 4
    .param p1, "festivalString"    # Ljava/lang/String;

    .prologue
    .line 118
    iget-object v1, p0, Lcom/sec/android/cover/sviewcover/widget/SViewCoverClockWidget$1;->this$0:Lcom/sec/android/cover/sviewcover/widget/SViewCoverClockWidget;

    # getter for: Lcom/sec/android/cover/sviewcover/widget/SViewCoverClockWidget;->mFestivalIcon:Landroid/widget/ImageView;
    invoke-static {v1}, Lcom/sec/android/cover/sviewcover/widget/SViewCoverClockWidget;->access$800(Lcom/sec/android/cover/sviewcover/widget/SViewCoverClockWidget;)Landroid/widget/ImageView;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 119
    iget-object v1, p0, Lcom/sec/android/cover/sviewcover/widget/SViewCoverClockWidget$1;->this$0:Lcom/sec/android/cover/sviewcover/widget/SViewCoverClockWidget;

    # getter for: Lcom/sec/android/cover/sviewcover/widget/SViewCoverClockWidget;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/sec/android/cover/sviewcover/widget/SViewCoverClockWidget;->access$200(Lcom/sec/android/cover/sviewcover/widget/SViewCoverClockWidget;)Landroid/content/Context;

    move-result-object v1

    invoke-static {v1, p1}, Lcom/sec/android/cover/CoverUtils;->getFestivalIcon(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    .line 120
    .local v0, "festivalIconResId":I
    if-eqz v0, :cond_1

    iget-object v1, p0, Lcom/sec/android/cover/sviewcover/widget/SViewCoverClockWidget$1;->this$0:Lcom/sec/android/cover/sviewcover/widget/SViewCoverClockWidget;

    # getter for: Lcom/sec/android/cover/sviewcover/widget/SViewCoverClockWidget;->mFestivalEnabled:Z
    invoke-static {v1}, Lcom/sec/android/cover/sviewcover/widget/SViewCoverClockWidget;->access$900(Lcom/sec/android/cover/sviewcover/widget/SViewCoverClockWidget;)Z

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_1

    .line 121
    iget-object v1, p0, Lcom/sec/android/cover/sviewcover/widget/SViewCoverClockWidget$1;->this$0:Lcom/sec/android/cover/sviewcover/widget/SViewCoverClockWidget;

    # getter for: Lcom/sec/android/cover/sviewcover/widget/SViewCoverClockWidget;->mFestivalIcon:Landroid/widget/ImageView;
    invoke-static {v1}, Lcom/sec/android/cover/sviewcover/widget/SViewCoverClockWidget;->access$800(Lcom/sec/android/cover/sviewcover/widget/SViewCoverClockWidget;)Landroid/widget/ImageView;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 122
    iget-object v1, p0, Lcom/sec/android/cover/sviewcover/widget/SViewCoverClockWidget$1;->this$0:Lcom/sec/android/cover/sviewcover/widget/SViewCoverClockWidget;

    # getter for: Lcom/sec/android/cover/sviewcover/widget/SViewCoverClockWidget;->mFestivalIcon:Landroid/widget/ImageView;
    invoke-static {v1}, Lcom/sec/android/cover/sviewcover/widget/SViewCoverClockWidget;->access$800(Lcom/sec/android/cover/sviewcover/widget/SViewCoverClockWidget;)Landroid/widget/ImageView;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 127
    :goto_0
    # getter for: Lcom/sec/android/cover/sviewcover/widget/SViewCoverClockWidget;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/sec/android/cover/sviewcover/widget/SViewCoverClockWidget;->access$700()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "ACTION_PICKUP_FESTIVAL_DAY "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " , mFestivalEnabled = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/sec/android/cover/sviewcover/widget/SViewCoverClockWidget$1;->this$0:Lcom/sec/android/cover/sviewcover/widget/SViewCoverClockWidget;

    # getter for: Lcom/sec/android/cover/sviewcover/widget/SViewCoverClockWidget;->mFestivalEnabled:Z
    invoke-static {v3}, Lcom/sec/android/cover/sviewcover/widget/SViewCoverClockWidget;->access$900(Lcom/sec/android/cover/sviewcover/widget/SViewCoverClockWidget;)Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", getVisibility() = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/sec/android/cover/sviewcover/widget/SViewCoverClockWidget$1;->this$0:Lcom/sec/android/cover/sviewcover/widget/SViewCoverClockWidget;

    # getter for: Lcom/sec/android/cover/sviewcover/widget/SViewCoverClockWidget;->mFestivalIcon:Landroid/widget/ImageView;
    invoke-static {v3}, Lcom/sec/android/cover/sviewcover/widget/SViewCoverClockWidget;->access$800(Lcom/sec/android/cover/sviewcover/widget/SViewCoverClockWidget;)Landroid/widget/ImageView;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/ImageView;->getVisibility()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 131
    .end local v0    # "festivalIconResId":I
    :cond_0
    iget-object v1, p0, Lcom/sec/android/cover/sviewcover/widget/SViewCoverClockWidget$1;->this$0:Lcom/sec/android/cover/sviewcover/widget/SViewCoverClockWidget;

    invoke-virtual {v1}, Lcom/sec/android/cover/sviewcover/widget/SViewCoverClockWidget;->refreshClock()V

    .line 132
    iget-object v1, p0, Lcom/sec/android/cover/sviewcover/widget/SViewCoverClockWidget$1;->this$0:Lcom/sec/android/cover/sviewcover/widget/SViewCoverClockWidget;

    # invokes: Lcom/sec/android/cover/sviewcover/widget/SViewCoverClockWidget;->onTimeChanged()V
    invoke-static {v1}, Lcom/sec/android/cover/sviewcover/widget/SViewCoverClockWidget;->access$300(Lcom/sec/android/cover/sviewcover/widget/SViewCoverClockWidget;)V

    .line 133
    return-void

    .line 124
    .restart local v0    # "festivalIconResId":I
    :cond_1
    iget-object v1, p0, Lcom/sec/android/cover/sviewcover/widget/SViewCoverClockWidget$1;->this$0:Lcom/sec/android/cover/sviewcover/widget/SViewCoverClockWidget;

    # getter for: Lcom/sec/android/cover/sviewcover/widget/SViewCoverClockWidget;->mFestivalIcon:Landroid/widget/ImageView;
    invoke-static {v1}, Lcom/sec/android/cover/sviewcover/widget/SViewCoverClockWidget;->access$800(Lcom/sec/android/cover/sviewcover/widget/SViewCoverClockWidget;)Landroid/widget/ImageView;

    move-result-object v1

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0
.end method

.method public onThemeFontChanged(Ljava/lang/String;)V
    .locals 1
    .param p1, "fontPath"    # Ljava/lang/String;

    .prologue
    .line 77
    iget-object v0, p0, Lcom/sec/android/cover/sviewcover/widget/SViewCoverClockWidget$1;->this$0:Lcom/sec/android/cover/sviewcover/widget/SViewCoverClockWidget;

    # invokes: Lcom/sec/android/cover/sviewcover/widget/SViewCoverClockWidget;->onThemeFontChanged(Ljava/lang/String;)V
    invoke-static {v0, p1}, Lcom/sec/android/cover/sviewcover/widget/SViewCoverClockWidget;->access$000(Lcom/sec/android/cover/sviewcover/widget/SViewCoverClockWidget;Ljava/lang/String;)V

    .line 78
    return-void
.end method

.method public onTimeChanged()V
    .locals 2

    .prologue
    .line 81
    iget-object v0, p0, Lcom/sec/android/cover/sviewcover/widget/SViewCoverClockWidget$1;->this$0:Lcom/sec/android/cover/sviewcover/widget/SViewCoverClockWidget;

    iget-object v1, p0, Lcom/sec/android/cover/sviewcover/widget/SViewCoverClockWidget$1;->this$0:Lcom/sec/android/cover/sviewcover/widget/SViewCoverClockWidget;

    # getter for: Lcom/sec/android/cover/sviewcover/widget/SViewCoverClockWidget;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/sec/android/cover/sviewcover/widget/SViewCoverClockWidget;->access$200(Lcom/sec/android/cover/sviewcover/widget/SViewCoverClockWidget;)Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/sec/android/cover/CoverUtils;->is24HourModeEnabled(Landroid/content/Context;)Z

    move-result v1

    # setter for: Lcom/sec/android/cover/sviewcover/widget/SViewCoverClockWidget;->mIs24HTime:Z
    invoke-static {v0, v1}, Lcom/sec/android/cover/sviewcover/widget/SViewCoverClockWidget;->access$102(Lcom/sec/android/cover/sviewcover/widget/SViewCoverClockWidget;Z)Z

    .line 82
    iget-object v0, p0, Lcom/sec/android/cover/sviewcover/widget/SViewCoverClockWidget$1;->this$0:Lcom/sec/android/cover/sviewcover/widget/SViewCoverClockWidget;

    # invokes: Lcom/sec/android/cover/sviewcover/widget/SViewCoverClockWidget;->onTimeChanged()V
    invoke-static {v0}, Lcom/sec/android/cover/sviewcover/widget/SViewCoverClockWidget;->access$300(Lcom/sec/android/cover/sviewcover/widget/SViewCoverClockWidget;)V

    .line 83
    return-void
.end method

.method public onUserSwitched(II)V
    .locals 2
    .param p1, "newUserId"    # I
    .param p2, "oldUserId"    # I

    .prologue
    .line 102
    # getter for: Lcom/sec/android/cover/sviewcover/widget/SViewCoverClockWidget;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/sec/android/cover/sviewcover/widget/SViewCoverClockWidget;->access$700()Ljava/lang/String;

    move-result-object v0

    const-string v1, "onUserSwitched "

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 103
    iget-object v0, p0, Lcom/sec/android/cover/sviewcover/widget/SViewCoverClockWidget$1;->this$0:Lcom/sec/android/cover/sviewcover/widget/SViewCoverClockWidget;

    iget-object v1, p0, Lcom/sec/android/cover/sviewcover/widget/SViewCoverClockWidget$1;->this$0:Lcom/sec/android/cover/sviewcover/widget/SViewCoverClockWidget;

    # getter for: Lcom/sec/android/cover/sviewcover/widget/SViewCoverClockWidget;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/sec/android/cover/sviewcover/widget/SViewCoverClockWidget;->access$200(Lcom/sec/android/cover/sviewcover/widget/SViewCoverClockWidget;)Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/sec/android/cover/CoverUtils;->is24HourModeEnabled(Landroid/content/Context;)Z

    move-result v1

    # setter for: Lcom/sec/android/cover/sviewcover/widget/SViewCoverClockWidget;->mIs24HTime:Z
    invoke-static {v0, v1}, Lcom/sec/android/cover/sviewcover/widget/SViewCoverClockWidget;->access$102(Lcom/sec/android/cover/sviewcover/widget/SViewCoverClockWidget;Z)Z

    .line 104
    iget-object v0, p0, Lcom/sec/android/cover/sviewcover/widget/SViewCoverClockWidget$1;->this$0:Lcom/sec/android/cover/sviewcover/widget/SViewCoverClockWidget;

    # invokes: Lcom/sec/android/cover/sviewcover/widget/SViewCoverClockWidget;->onTimeChanged()V
    invoke-static {v0}, Lcom/sec/android/cover/sviewcover/widget/SViewCoverClockWidget;->access$300(Lcom/sec/android/cover/sviewcover/widget/SViewCoverClockWidget;)V

    .line 105
    return-void
.end method
