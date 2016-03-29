.class Lcom/sec/android/cover/sviewcover/SViewCoverView$1;
.super Lcom/sec/android/cover/monitor/CoverUpdateMonitorCallback;
.source "SViewCoverView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/cover/sviewcover/SViewCoverView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/cover/sviewcover/SViewCoverView;


# direct methods
.method constructor <init>(Lcom/sec/android/cover/sviewcover/SViewCoverView;)V
    .locals 0

    .prologue
    .line 102
    iput-object p1, p0, Lcom/sec/android/cover/sviewcover/SViewCoverView$1;->this$0:Lcom/sec/android/cover/sviewcover/SViewCoverView;

    invoke-direct {p0}, Lcom/sec/android/cover/monitor/CoverUpdateMonitorCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onChangeCoverBackground()V
    .locals 2

    .prologue
    .line 158
    iget-object v0, p0, Lcom/sec/android/cover/sviewcover/SViewCoverView$1;->this$0:Lcom/sec/android/cover/sviewcover/SViewCoverView;

    # getter for: Lcom/sec/android/cover/sviewcover/SViewCoverView;->mWallpaperView:Lcom/sec/android/cover/sviewcover/SViewCoverWallpaperView;
    invoke-static {v0}, Lcom/sec/android/cover/sviewcover/SViewCoverView;->access$1300(Lcom/sec/android/cover/sviewcover/SViewCoverView;)Lcom/sec/android/cover/sviewcover/SViewCoverWallpaperView;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 159
    iget-object v0, p0, Lcom/sec/android/cover/sviewcover/SViewCoverView$1;->this$0:Lcom/sec/android/cover/sviewcover/SViewCoverView;

    # getter for: Lcom/sec/android/cover/sviewcover/SViewCoverView;->mWallpaperView:Lcom/sec/android/cover/sviewcover/SViewCoverWallpaperView;
    invoke-static {v0}, Lcom/sec/android/cover/sviewcover/SViewCoverView;->access$1300(Lcom/sec/android/cover/sviewcover/SViewCoverView;)Lcom/sec/android/cover/sviewcover/SViewCoverWallpaperView;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/sec/android/cover/sviewcover/SViewCoverWallpaperView;->setProperWallpaper(Z)V

    .line 162
    :cond_0
    iget-object v0, p0, Lcom/sec/android/cover/sviewcover/SViewCoverView$1;->this$0:Lcom/sec/android/cover/sviewcover/SViewCoverView;

    invoke-virtual {v0}, Lcom/sec/android/cover/sviewcover/SViewCoverView;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_1

    .line 163
    iget-object v0, p0, Lcom/sec/android/cover/sviewcover/SViewCoverView$1;->this$0:Lcom/sec/android/cover/sviewcover/SViewCoverView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/sec/android/cover/sviewcover/SViewCoverView;->setVisibility(I)V

    .line 165
    :cond_1
    return-void
.end method

.method public onConfigurationChanged()V
    .locals 2

    .prologue
    .line 106
    const-string v0, "SViewCoverView"

    const-string v1, "ACTION_CONFIGURATION_CHANGED"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 107
    iget-object v0, p0, Lcom/sec/android/cover/sviewcover/SViewCoverView$1;->this$0:Lcom/sec/android/cover/sviewcover/SViewCoverView;

    # getter for: Lcom/sec/android/cover/sviewcover/SViewCoverView;->mContext:Landroid/content/Context;
    invoke-static {v0}, Lcom/sec/android/cover/sviewcover/SViewCoverView;->access$000(Lcom/sec/android/cover/sviewcover/SViewCoverView;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/sec/android/cover/CoverUtils;->checkFontStyleChanged(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 108
    const-string v0, "SViewCoverView"

    const-string v1, "ACTION_CONFIGURATION_CHANGED"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 109
    iget-object v0, p0, Lcom/sec/android/cover/sviewcover/SViewCoverView$1;->this$0:Lcom/sec/android/cover/sviewcover/SViewCoverView;

    # invokes: Lcom/sec/android/cover/sviewcover/SViewCoverView;->requestRemoteViews()V
    invoke-static {v0}, Lcom/sec/android/cover/sviewcover/SViewCoverView;->access$100(Lcom/sec/android/cover/sviewcover/SViewCoverView;)V

    .line 114
    :goto_0
    iget-object v0, p0, Lcom/sec/android/cover/sviewcover/SViewCoverView$1;->this$0:Lcom/sec/android/cover/sviewcover/SViewCoverView;

    # getter for: Lcom/sec/android/cover/sviewcover/SViewCoverView;->mSViewPager:Lcom/sec/android/cover/sviewcover/SViewCoverPager;
    invoke-static {v0}, Lcom/sec/android/cover/sviewcover/SViewCoverView;->access$200(Lcom/sec/android/cover/sviewcover/SViewCoverView;)Lcom/sec/android/cover/sviewcover/SViewCoverPager;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 115
    iget-object v0, p0, Lcom/sec/android/cover/sviewcover/SViewCoverView$1;->this$0:Lcom/sec/android/cover/sviewcover/SViewCoverView;

    # getter for: Lcom/sec/android/cover/sviewcover/SViewCoverView;->mSViewCoverHideEffectView:Lcom/sec/android/cover/widget/CoverHideEffectView;
    invoke-static {v0}, Lcom/sec/android/cover/sviewcover/SViewCoverView;->access$300(Lcom/sec/android/cover/sviewcover/SViewCoverView;)Lcom/sec/android/cover/widget/CoverHideEffectView;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 116
    iget-object v0, p0, Lcom/sec/android/cover/sviewcover/SViewCoverView$1;->this$0:Lcom/sec/android/cover/sviewcover/SViewCoverView;

    # getter for: Lcom/sec/android/cover/sviewcover/SViewCoverView;->mSViewCoverHideEffectView:Lcom/sec/android/cover/widget/CoverHideEffectView;
    invoke-static {v0}, Lcom/sec/android/cover/sviewcover/SViewCoverView;->access$300(Lcom/sec/android/cover/sviewcover/SViewCoverView;)Lcom/sec/android/cover/widget/CoverHideEffectView;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/sec/android/cover/widget/CoverHideEffectView;->stopAnimation(Z)V

    .line 119
    :cond_0
    iget-object v0, p0, Lcom/sec/android/cover/sviewcover/SViewCoverView$1;->this$0:Lcom/sec/android/cover/sviewcover/SViewCoverView;

    # invokes: Lcom/sec/android/cover/sviewcover/SViewCoverView;->makeSViewMeasureSpec()V
    invoke-static {v0}, Lcom/sec/android/cover/sviewcover/SViewCoverView;->access$400(Lcom/sec/android/cover/sviewcover/SViewCoverView;)V

    .line 121
    :cond_1
    return-void

    .line 111
    :cond_2
    const-string v0, "SViewCoverView"

    const-string v1, "BR checkFontStyleChanged false"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public onContentChanged(Landroid/net/Uri;)V
    .locals 2
    .param p1, "uri"    # Landroid/net/Uri;

    .prologue
    .line 257
    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "kids_home_mode"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "sview_bg_wallpaper_path"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 258
    :cond_0
    const-string v0, "SViewCoverView"

    const-string v1, "onContentChange: wallpaper uri has changed"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 259
    iget-object v0, p0, Lcom/sec/android/cover/sviewcover/SViewCoverView$1;->this$0:Lcom/sec/android/cover/sviewcover/SViewCoverView;

    # getter for: Lcom/sec/android/cover/sviewcover/SViewCoverView;->mWallpaperView:Lcom/sec/android/cover/sviewcover/SViewCoverWallpaperView;
    invoke-static {v0}, Lcom/sec/android/cover/sviewcover/SViewCoverView;->access$1300(Lcom/sec/android/cover/sviewcover/SViewCoverView;)Lcom/sec/android/cover/sviewcover/SViewCoverWallpaperView;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 260
    iget-object v0, p0, Lcom/sec/android/cover/sviewcover/SViewCoverView$1;->this$0:Lcom/sec/android/cover/sviewcover/SViewCoverView;

    # getter for: Lcom/sec/android/cover/sviewcover/SViewCoverView;->mWallpaperView:Lcom/sec/android/cover/sviewcover/SViewCoverWallpaperView;
    invoke-static {v0}, Lcom/sec/android/cover/sviewcover/SViewCoverView;->access$1300(Lcom/sec/android/cover/sviewcover/SViewCoverView;)Lcom/sec/android/cover/sviewcover/SViewCoverWallpaperView;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/sec/android/cover/sviewcover/SViewCoverWallpaperView;->setProperWallpaper(Z)V

    .line 263
    :cond_1
    return-void
.end method

.method public onCoverDelayedTimout(I)V
    .locals 3
    .param p1, "seq"    # I

    .prologue
    .line 266
    const-string v0, "SViewCoverView"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onCoverDelayedTimout() seq = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", currentSeq ="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    # getter for: Lcom/sec/android/cover/sviewcover/SViewCoverView;->mDelayedShowingSequence:I
    invoke-static {}, Lcom/sec/android/cover/sviewcover/SViewCoverView;->access$2500()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 268
    # getter for: Lcom/sec/android/cover/sviewcover/SViewCoverView;->mDelayedShowingSequence:I
    invoke-static {}, Lcom/sec/android/cover/sviewcover/SViewCoverView;->access$2600()I

    move-result v0

    if-ne p1, v0, :cond_1

    iget-object v0, p0, Lcom/sec/android/cover/sviewcover/SViewCoverView$1;->this$0:Lcom/sec/android/cover/sviewcover/SViewCoverView;

    invoke-virtual {v0}, Lcom/sec/android/cover/sviewcover/SViewCoverView;->isCoverOpen()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/sec/android/cover/sviewcover/SViewCoverView$1;->this$0:Lcom/sec/android/cover/sviewcover/SViewCoverView;

    invoke-virtual {v0}, Lcom/sec/android/cover/sviewcover/SViewCoverView;->hasWindowFocus()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/cover/sviewcover/SViewCoverView$1;->this$0:Lcom/sec/android/cover/sviewcover/SViewCoverView;

    # getter for: Lcom/sec/android/cover/sviewcover/SViewCoverView;->mContext:Landroid/content/Context;
    invoke-static {v0}, Lcom/sec/android/cover/sviewcover/SViewCoverView;->access$2700(Lcom/sec/android/cover/sviewcover/SViewCoverView;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/sec/android/cover/manager/CoverPopupManager;->getInstance(Landroid/content/Context;)Lcom/sec/android/cover/manager/CoverPopupManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/cover/manager/CoverPopupManager;->isShowingPopupDialog()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 270
    :cond_0
    iget-object v0, p0, Lcom/sec/android/cover/sviewcover/SViewCoverView$1;->this$0:Lcom/sec/android/cover/sviewcover/SViewCoverView;

    # getter for: Lcom/sec/android/cover/sviewcover/SViewCoverView;->mContext:Landroid/content/Context;
    invoke-static {v0}, Lcom/sec/android/cover/sviewcover/SViewCoverView;->access$2800(Lcom/sec/android/cover/sviewcover/SViewCoverView;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/sec/android/cover/manager/CoverPowerManager;->getInstance(Landroid/content/Context;)Lcom/sec/android/cover/manager/CoverPowerManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/cover/manager/CoverPowerManager;->goToSleep()V

    .line 272
    :cond_1
    return-void
.end method

.method public onEmergencyStateChanged()V
    .locals 2

    .prologue
    .line 204
    iget-object v0, p0, Lcom/sec/android/cover/sviewcover/SViewCoverView$1;->this$0:Lcom/sec/android/cover/sviewcover/SViewCoverView;

    # getter for: Lcom/sec/android/cover/sviewcover/SViewCoverView;->mWallpaperView:Lcom/sec/android/cover/sviewcover/SViewCoverWallpaperView;
    invoke-static {v0}, Lcom/sec/android/cover/sviewcover/SViewCoverView;->access$1300(Lcom/sec/android/cover/sviewcover/SViewCoverView;)Lcom/sec/android/cover/sviewcover/SViewCoverWallpaperView;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 205
    iget-object v0, p0, Lcom/sec/android/cover/sviewcover/SViewCoverView$1;->this$0:Lcom/sec/android/cover/sviewcover/SViewCoverView;

    # getter for: Lcom/sec/android/cover/sviewcover/SViewCoverView;->mWallpaperView:Lcom/sec/android/cover/sviewcover/SViewCoverWallpaperView;
    invoke-static {v0}, Lcom/sec/android/cover/sviewcover/SViewCoverView;->access$1300(Lcom/sec/android/cover/sviewcover/SViewCoverView;)Lcom/sec/android/cover/sviewcover/SViewCoverWallpaperView;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/sec/android/cover/sviewcover/SViewCoverWallpaperView;->setProperWallpaper(Z)V

    .line 207
    :cond_0
    return-void
.end method

.method public onFloatingMsgHided()V
    .locals 1

    .prologue
    .line 210
    iget-object v0, p0, Lcom/sec/android/cover/sviewcover/SViewCoverView$1;->this$0:Lcom/sec/android/cover/sviewcover/SViewCoverView;

    invoke-virtual {v0}, Lcom/sec/android/cover/sviewcover/SViewCoverView;->isCoverOpen()Z

    move-result v0

    if-nez v0, :cond_0

    .line 211
    iget-object v0, p0, Lcom/sec/android/cover/sviewcover/SViewCoverView$1;->this$0:Lcom/sec/android/cover/sviewcover/SViewCoverView;

    # getter for: Lcom/sec/android/cover/sviewcover/SViewCoverView;->mContext:Landroid/content/Context;
    invoke-static {v0}, Lcom/sec/android/cover/sviewcover/SViewCoverView;->access$1800(Lcom/sec/android/cover/sviewcover/SViewCoverView;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/sec/android/cover/manager/CoverPowerManager;->getInstance(Landroid/content/Context;)Lcom/sec/android/cover/manager/CoverPowerManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/cover/manager/CoverPowerManager;->resetScreenOffTimer()V

    .line 213
    :cond_0
    return-void
.end method

.method public onFloatingMsgShowed()V
    .locals 1

    .prologue
    .line 216
    iget-object v0, p0, Lcom/sec/android/cover/sviewcover/SViewCoverView$1;->this$0:Lcom/sec/android/cover/sviewcover/SViewCoverView;

    invoke-virtual {v0}, Lcom/sec/android/cover/sviewcover/SViewCoverView;->isCoverOpen()Z

    move-result v0

    if-nez v0, :cond_0

    .line 217
    iget-object v0, p0, Lcom/sec/android/cover/sviewcover/SViewCoverView$1;->this$0:Lcom/sec/android/cover/sviewcover/SViewCoverView;

    # getter for: Lcom/sec/android/cover/sviewcover/SViewCoverView;->mContext:Landroid/content/Context;
    invoke-static {v0}, Lcom/sec/android/cover/sviewcover/SViewCoverView;->access$1900(Lcom/sec/android/cover/sviewcover/SViewCoverView;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/sec/android/cover/manager/CoverPowerManager;->getInstance(Landroid/content/Context;)Lcom/sec/android/cover/manager/CoverPowerManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/cover/manager/CoverPowerManager;->cancelScreenOffTimer()V

    .line 219
    :cond_0
    return-void
.end method

.method public onInsertSPen(Z)V
    .locals 1
    .param p1, "penInserted"    # Z

    .prologue
    .line 152
    if-nez p1, :cond_0

    iget-object v0, p0, Lcom/sec/android/cover/sviewcover/SViewCoverView$1;->this$0:Lcom/sec/android/cover/sviewcover/SViewCoverView;

    invoke-virtual {v0}, Lcom/sec/android/cover/sviewcover/SViewCoverView;->isCoverOpen()Z

    move-result v0

    if-nez v0, :cond_0

    .line 153
    iget-object v0, p0, Lcom/sec/android/cover/sviewcover/SViewCoverView$1;->this$0:Lcom/sec/android/cover/sviewcover/SViewCoverView;

    # getter for: Lcom/sec/android/cover/sviewcover/SViewCoverView;->mContext:Landroid/content/Context;
    invoke-static {v0}, Lcom/sec/android/cover/sviewcover/SViewCoverView;->access$1200(Lcom/sec/android/cover/sviewcover/SViewCoverView;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/sec/android/cover/manager/CoverPowerManager;->getInstance(Landroid/content/Context;)Lcom/sec/android/cover/manager/CoverPowerManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/cover/manager/CoverPowerManager;->wakeUpWithReason()V

    .line 155
    :cond_0
    return-void
.end method

.method public onPowerSavingModeChanged()V
    .locals 6

    .prologue
    const/4 v5, 0x1

    .line 190
    iget-object v2, p0, Lcom/sec/android/cover/sviewcover/SViewCoverView$1;->this$0:Lcom/sec/android/cover/sviewcover/SViewCoverView;

    # getter for: Lcom/sec/android/cover/sviewcover/SViewCoverView;->mContext:Landroid/content/Context;
    invoke-static {v2}, Lcom/sec/android/cover/sviewcover/SViewCoverView;->access$1600(Lcom/sec/android/cover/sviewcover/SViewCoverView;)Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "powersaving_switch"

    const/4 v4, 0x0

    invoke-static {v2, v3, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    .line 192
    .local v1, "powersavingState":I
    const/16 v0, 0x1770

    .line 193
    .local v0, "duration":I
    if-ne v1, v5, :cond_0

    .line 194
    const/16 v0, 0xbb8

    .line 196
    :cond_0
    iget-object v2, p0, Lcom/sec/android/cover/sviewcover/SViewCoverView$1;->this$0:Lcom/sec/android/cover/sviewcover/SViewCoverView;

    # getter for: Lcom/sec/android/cover/sviewcover/SViewCoverView;->mContext:Landroid/content/Context;
    invoke-static {v2}, Lcom/sec/android/cover/sviewcover/SViewCoverView;->access$1700(Lcom/sec/android/cover/sviewcover/SViewCoverView;)Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/sec/android/cover/manager/CoverPowerManager;->getInstance(Landroid/content/Context;)Lcom/sec/android/cover/manager/CoverPowerManager;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/sec/android/cover/manager/CoverPowerManager;->setmTimeOutDuration(I)V

    .line 198
    iget-object v2, p0, Lcom/sec/android/cover/sviewcover/SViewCoverView$1;->this$0:Lcom/sec/android/cover/sviewcover/SViewCoverView;

    # getter for: Lcom/sec/android/cover/sviewcover/SViewCoverView;->mWallpaperView:Lcom/sec/android/cover/sviewcover/SViewCoverWallpaperView;
    invoke-static {v2}, Lcom/sec/android/cover/sviewcover/SViewCoverView;->access$1300(Lcom/sec/android/cover/sviewcover/SViewCoverView;)Lcom/sec/android/cover/sviewcover/SViewCoverWallpaperView;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 199
    iget-object v2, p0, Lcom/sec/android/cover/sviewcover/SViewCoverView$1;->this$0:Lcom/sec/android/cover/sviewcover/SViewCoverView;

    # getter for: Lcom/sec/android/cover/sviewcover/SViewCoverView;->mWallpaperView:Lcom/sec/android/cover/sviewcover/SViewCoverWallpaperView;
    invoke-static {v2}, Lcom/sec/android/cover/sviewcover/SViewCoverView;->access$1300(Lcom/sec/android/cover/sviewcover/SViewCoverView;)Lcom/sec/android/cover/sviewcover/SViewCoverWallpaperView;

    move-result-object v2

    invoke-virtual {v2, v5}, Lcom/sec/android/cover/sviewcover/SViewCoverWallpaperView;->setProperWallpaper(Z)V

    .line 201
    :cond_1
    return-void
.end method

.method public onRemoteViewUpdated(Lcom/sec/android/cover/monitor/CoverUpdateMonitor$RemoteViewInfo;)V
    .locals 8
    .param p1, "remoteViewInfo"    # Lcom/sec/android/cover/monitor/CoverUpdateMonitor$RemoteViewInfo;

    .prologue
    const/4 v7, 0x0

    .line 222
    iget-object v3, p1, Lcom/sec/android/cover/monitor/CoverUpdateMonitor$RemoteViewInfo;->mType:Ljava/lang/String;

    .line 223
    .local v3, "type":Ljava/lang/String;
    const-string v4, "SViewCoverView"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "onRemoteViewUpdated : Type="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 224
    invoke-static {}, Lcom/sec/android/cover/FeatureUtils;->isSupportNotificationOnCover()Z

    move-result v4

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/sec/android/cover/sviewcover/SViewCoverView$1;->this$0:Lcom/sec/android/cover/sviewcover/SViewCoverView;

    # getter for: Lcom/sec/android/cover/sviewcover/SViewCoverView;->mStatusBarState:I
    invoke-static {v4}, Lcom/sec/android/cover/sviewcover/SViewCoverView;->access$2000(Lcom/sec/android/cover/sviewcover/SViewCoverView;)I

    move-result v4

    const/16 v5, 0xa

    if-eq v4, v5, :cond_1

    .line 226
    :cond_0
    iget-object v4, p0, Lcom/sec/android/cover/sviewcover/SViewCoverView$1;->this$0:Lcom/sec/android/cover/sviewcover/SViewCoverView;

    # invokes: Lcom/sec/android/cover/sviewcover/SViewCoverView;->updateViewVisibleState()V
    invoke-static {v4}, Lcom/sec/android/cover/sviewcover/SViewCoverView;->access$500(Lcom/sec/android/cover/sviewcover/SViewCoverView;)V

    .line 228
    :cond_1
    const-string v4, "new_message"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_2

    const-string v4, "missed_call"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 230
    :cond_2
    iget-object v4, p0, Lcom/sec/android/cover/sviewcover/SViewCoverView$1;->this$0:Lcom/sec/android/cover/sviewcover/SViewCoverView;

    invoke-virtual {v4}, Lcom/sec/android/cover/sviewcover/SViewCoverView;->updateMissedEvent()V

    .line 233
    :cond_3
    const-string v4, "volume"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    invoke-static {}, Lcom/sec/android/cover/FeatureUtils;->isSupportNotificationOnCover()Z

    move-result v4

    if-eqz v4, :cond_4

    .line 235
    iget-object v4, p1, Lcom/sec/android/cover/monitor/CoverUpdateMonitor$RemoteViewInfo;->mRemoteViews:Landroid/widget/RemoteViews;

    if-eqz v4, :cond_5

    iget-boolean v4, p1, Lcom/sec/android/cover/monitor/CoverUpdateMonitor$RemoteViewInfo;->mVisibility:Z

    const/4 v5, 0x1

    if-ne v4, v5, :cond_5

    .line 236
    iget-object v4, p0, Lcom/sec/android/cover/sviewcover/SViewCoverView$1;->this$0:Lcom/sec/android/cover/sviewcover/SViewCoverView;

    # getter for: Lcom/sec/android/cover/sviewcover/SViewCoverView;->mContext:Landroid/content/Context;
    invoke-static {v4}, Lcom/sec/android/cover/sviewcover/SViewCoverView;->access$2100(Lcom/sec/android/cover/sviewcover/SViewCoverView;)Landroid/content/Context;

    move-result-object v4

    sget v5, Lcom/sec/android/sviewcover/R$layout;->s_view_cover_empty_popup_frame:I

    invoke-static {v4, v5, v7}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 238
    .local v0, "containerRoot":Landroid/view/ViewGroup;
    iget-object v4, p1, Lcom/sec/android/cover/monitor/CoverUpdateMonitor$RemoteViewInfo;->mRemoteViews:Landroid/widget/RemoteViews;

    iget-object v5, p0, Lcom/sec/android/cover/sviewcover/SViewCoverView$1;->this$0:Lcom/sec/android/cover/sviewcover/SViewCoverView;

    # getter for: Lcom/sec/android/cover/sviewcover/SViewCoverView;->mContext:Landroid/content/Context;
    invoke-static {v5}, Lcom/sec/android/cover/sviewcover/SViewCoverView;->access$2200(Lcom/sec/android/cover/sviewcover/SViewCoverView;)Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v4, v5, v7}, Landroid/widget/RemoteViews;->apply(Landroid/content/Context;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    .line 239
    .local v2, "remoteView":Landroid/view/View;
    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 241
    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/widget/FrameLayout$LayoutParams;

    .line 243
    .local v1, "layoutParams":Landroid/widget/FrameLayout$LayoutParams;
    iget-object v4, p0, Lcom/sec/android/cover/sviewcover/SViewCoverView$1;->this$0:Lcom/sec/android/cover/sviewcover/SViewCoverView;

    invoke-virtual {v4}, Lcom/sec/android/cover/sviewcover/SViewCoverView;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    sget v5, Lcom/sec/android/sviewcover/R$dimen;->statusbar_height:I

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v4

    float-to-int v4, v4

    neg-int v4, v4

    iput v4, v1, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    .line 245
    iget-object v4, p0, Lcom/sec/android/cover/sviewcover/SViewCoverView$1;->this$0:Lcom/sec/android/cover/sviewcover/SViewCoverView;

    invoke-virtual {v4}, Lcom/sec/android/cover/sviewcover/SViewCoverView;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    sget v5, Lcom/sec/android/sviewcover/R$dimen;->sview_cover_popup_dialog_padding:I

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v4

    float-to-int v4, v4

    iput v4, v1, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    .line 247
    iget-object v4, p0, Lcom/sec/android/cover/sviewcover/SViewCoverView$1;->this$0:Lcom/sec/android/cover/sviewcover/SViewCoverView;

    invoke-virtual {v4}, Lcom/sec/android/cover/sviewcover/SViewCoverView;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    sget v5, Lcom/sec/android/sviewcover/R$dimen;->sview_cover_popup_dialog_padding:I

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v4

    float-to-int v4, v4

    iput v4, v1, Landroid/widget/FrameLayout$LayoutParams;->rightMargin:I

    .line 249
    iget-object v4, p0, Lcom/sec/android/cover/sviewcover/SViewCoverView$1;->this$0:Lcom/sec/android/cover/sviewcover/SViewCoverView;

    # getter for: Lcom/sec/android/cover/sviewcover/SViewCoverView;->mContext:Landroid/content/Context;
    invoke-static {v4}, Lcom/sec/android/cover/sviewcover/SViewCoverView;->access$2300(Lcom/sec/android/cover/sviewcover/SViewCoverView;)Landroid/content/Context;

    move-result-object v4

    invoke-static {v4}, Lcom/sec/android/cover/manager/CoverPopupManager;->getInstance(Landroid/content/Context;)Lcom/sec/android/cover/manager/CoverPopupManager;

    move-result-object v4

    invoke-virtual {v4, v0, v7}, Lcom/sec/android/cover/manager/CoverPopupManager;->showPopupDialog(Landroid/view/View;Lcom/sec/android/cover/manager/CoverPopupManager$PopupDismissCallback;)Z

    .line 254
    .end local v0    # "containerRoot":Landroid/view/ViewGroup;
    .end local v1    # "layoutParams":Landroid/widget/FrameLayout$LayoutParams;
    .end local v2    # "remoteView":Landroid/view/View;
    :cond_4
    :goto_0
    return-void

    .line 251
    :cond_5
    iget-object v4, p0, Lcom/sec/android/cover/sviewcover/SViewCoverView$1;->this$0:Lcom/sec/android/cover/sviewcover/SViewCoverView;

    # getter for: Lcom/sec/android/cover/sviewcover/SViewCoverView;->mContext:Landroid/content/Context;
    invoke-static {v4}, Lcom/sec/android/cover/sviewcover/SViewCoverView;->access$2400(Lcom/sec/android/cover/sviewcover/SViewCoverView;)Landroid/content/Context;

    move-result-object v4

    invoke-static {v4}, Lcom/sec/android/cover/manager/CoverPopupManager;->getInstance(Landroid/content/Context;)Lcom/sec/android/cover/manager/CoverPopupManager;

    move-result-object v4

    invoke-virtual {v4}, Lcom/sec/android/cover/manager/CoverPopupManager;->dismissPopupDialog()V

    goto :goto_0
.end method

.method public onScreenTurnedOff()V
    .locals 2

    .prologue
    .line 138
    iget-object v0, p0, Lcom/sec/android/cover/sviewcover/SViewCoverView$1;->this$0:Lcom/sec/android/cover/sviewcover/SViewCoverView;

    invoke-virtual {v0}, Lcom/sec/android/cover/sviewcover/SViewCoverView;->moveToMainPage()V

    .line 140
    iget-object v0, p0, Lcom/sec/android/cover/sviewcover/SViewCoverView$1;->this$0:Lcom/sec/android/cover/sviewcover/SViewCoverView;

    # getter for: Lcom/sec/android/cover/sviewcover/SViewCoverView;->mSViewCoverUnlockArea:Lcom/sec/android/cover/sviewcover/SViewCoverAbstractUnlockArea;
    invoke-static {v0}, Lcom/sec/android/cover/sviewcover/SViewCoverView;->access$900(Lcom/sec/android/cover/sviewcover/SViewCoverView;)Lcom/sec/android/cover/sviewcover/SViewCoverAbstractUnlockArea;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 141
    iget-object v0, p0, Lcom/sec/android/cover/sviewcover/SViewCoverView$1;->this$0:Lcom/sec/android/cover/sviewcover/SViewCoverView;

    # getter for: Lcom/sec/android/cover/sviewcover/SViewCoverView;->mSViewCoverUnlockArea:Lcom/sec/android/cover/sviewcover/SViewCoverAbstractUnlockArea;
    invoke-static {v0}, Lcom/sec/android/cover/sviewcover/SViewCoverView;->access$900(Lcom/sec/android/cover/sviewcover/SViewCoverView;)Lcom/sec/android/cover/sviewcover/SViewCoverAbstractUnlockArea;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/cover/sviewcover/SViewCoverAbstractUnlockArea;->initMultiTouched()V

    .line 144
    :cond_0
    iget-object v0, p0, Lcom/sec/android/cover/sviewcover/SViewCoverView$1;->this$0:Lcom/sec/android/cover/sviewcover/SViewCoverView;

    # getter for: Lcom/sec/android/cover/sviewcover/SViewCoverView;->mContext:Landroid/content/Context;
    invoke-static {v0}, Lcom/sec/android/cover/sviewcover/SViewCoverView;->access$1000(Lcom/sec/android/cover/sviewcover/SViewCoverView;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/sec/android/cover/CoverUtils;->isEmergencyMode(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 145
    iget-object v0, p0, Lcom/sec/android/cover/sviewcover/SViewCoverView$1;->this$0:Lcom/sec/android/cover/sviewcover/SViewCoverView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/sec/android/cover/sviewcover/SViewCoverView;->updateSViewCoverUnlockArea(Z)V

    .line 148
    :cond_1
    iget-object v0, p0, Lcom/sec/android/cover/sviewcover/SViewCoverView$1;->this$0:Lcom/sec/android/cover/sviewcover/SViewCoverView;

    # getter for: Lcom/sec/android/cover/sviewcover/SViewCoverView;->mContext:Landroid/content/Context;
    invoke-static {v0}, Lcom/sec/android/cover/sviewcover/SViewCoverView;->access$1100(Lcom/sec/android/cover/sviewcover/SViewCoverView;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/sec/android/cover/manager/CoverPowerManager;->getInstance(Landroid/content/Context;)Lcom/sec/android/cover/manager/CoverPowerManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/cover/manager/CoverPowerManager;->cancelScreenOffTimer()V

    .line 149
    return-void
.end method

.method public onScreenTurnedOn()V
    .locals 2

    .prologue
    .line 124
    iget-object v0, p0, Lcom/sec/android/cover/sviewcover/SViewCoverView$1;->this$0:Lcom/sec/android/cover/sviewcover/SViewCoverView;

    # invokes: Lcom/sec/android/cover/sviewcover/SViewCoverView;->updateViewVisibleState()V
    invoke-static {v0}, Lcom/sec/android/cover/sviewcover/SViewCoverView;->access$500(Lcom/sec/android/cover/sviewcover/SViewCoverView;)V

    .line 126
    iget-object v0, p0, Lcom/sec/android/cover/sviewcover/SViewCoverView$1;->this$0:Lcom/sec/android/cover/sviewcover/SViewCoverView;

    invoke-virtual {v0}, Lcom/sec/android/cover/sviewcover/SViewCoverView;->isCoverOpen()Z

    move-result v0

    if-nez v0, :cond_0

    .line 127
    const-string v0, "SViewCoverView"

    const-string v1, "onScreenTurnedOn() startScreenOffTimer"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 128
    iget-object v0, p0, Lcom/sec/android/cover/sviewcover/SViewCoverView$1;->this$0:Lcom/sec/android/cover/sviewcover/SViewCoverView;

    # getter for: Lcom/sec/android/cover/sviewcover/SViewCoverView;->mContext:Landroid/content/Context;
    invoke-static {v0}, Lcom/sec/android/cover/sviewcover/SViewCoverView;->access$600(Lcom/sec/android/cover/sviewcover/SViewCoverView;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/sec/android/cover/manager/CoverPowerManager;->getInstance(Landroid/content/Context;)Lcom/sec/android/cover/manager/CoverPowerManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/cover/manager/CoverPowerManager;->startScreenOffTimer()V

    .line 131
    :cond_0
    invoke-static {}, Lcom/sec/android/cover/FeatureUtils;->isSupportNotificationOnCover()Z

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    .line 132
    iget-object v0, p0, Lcom/sec/android/cover/sviewcover/SViewCoverView$1;->this$0:Lcom/sec/android/cover/sviewcover/SViewCoverView;

    # invokes: Lcom/sec/android/cover/sviewcover/SViewCoverView;->cancelScreenOffTimer()V
    invoke-static {v0}, Lcom/sec/android/cover/sviewcover/SViewCoverView;->access$700(Lcom/sec/android/cover/sviewcover/SViewCoverView;)V

    .line 133
    iget-object v0, p0, Lcom/sec/android/cover/sviewcover/SViewCoverView$1;->this$0:Lcom/sec/android/cover/sviewcover/SViewCoverView;

    # invokes: Lcom/sec/android/cover/sviewcover/SViewCoverView;->startScreenOffTimer()V
    invoke-static {v0}, Lcom/sec/android/cover/sviewcover/SViewCoverView;->access$800(Lcom/sec/android/cover/sviewcover/SViewCoverView;)V

    .line 135
    :cond_1
    return-void
.end method

.method public onUserSwitched(II)V
    .locals 6
    .param p1, "newUserId"    # I
    .param p2, "oldUserId"    # I

    .prologue
    const/16 v5, 0x64

    .line 169
    const/16 v0, 0x64

    .line 170
    .local v0, "KNOX_USER_ID":I
    invoke-static {}, Landroid/os/PersonaManager;->getKnoxInfo()Landroid/os/Bundle;

    move-result-object v2

    .line 171
    .local v2, "versionInfo":Landroid/os/Bundle;
    const-string v3, "2.0"

    const-string v4, "version"

    invoke-virtual {v2, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 172
    iget-object v3, p0, Lcom/sec/android/cover/sviewcover/SViewCoverView$1;->this$0:Lcom/sec/android/cover/sviewcover/SViewCoverView;

    # getter for: Lcom/sec/android/cover/sviewcover/SViewCoverView;->mContext:Landroid/content/Context;
    invoke-static {v3}, Lcom/sec/android/cover/sviewcover/SViewCoverView;->access$1400(Lcom/sec/android/cover/sviewcover/SViewCoverView;)Landroid/content/Context;

    move-result-object v3

    const-string v4, "statusbar"

    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/StatusBarManager;

    .line 174
    .local v1, "statusBarManager":Landroid/app/StatusBarManager;
    if-lt p1, v5, :cond_1

    if-ge p2, v5, :cond_1

    iget-object v3, p0, Lcom/sec/android/cover/sviewcover/SViewCoverView$1;->this$0:Lcom/sec/android/cover/sviewcover/SViewCoverView;

    invoke-virtual {v3}, Lcom/sec/android/cover/sviewcover/SViewCoverView;->isCoverOpen()Z

    move-result v3

    const/4 v4, 0x1

    if-ne v3, v4, :cond_1

    .line 175
    const/4 v3, 0x0

    invoke-virtual {v1, v3}, Landroid/app/StatusBarManager;->disable(I)V

    .line 181
    .end local v1    # "statusBarManager":Landroid/app/StatusBarManager;
    :cond_0
    :goto_0
    return-void

    .line 176
    .restart local v1    # "statusBarManager":Landroid/app/StatusBarManager;
    :cond_1
    if-ge p1, v5, :cond_0

    if-lt p2, v5, :cond_0

    iget-object v3, p0, Lcom/sec/android/cover/sviewcover/SViewCoverView$1;->this$0:Lcom/sec/android/cover/sviewcover/SViewCoverView;

    invoke-virtual {v3}, Lcom/sec/android/cover/sviewcover/SViewCoverView;->isCoverOpen()Z

    move-result v3

    if-nez v3, :cond_0

    .line 178
    const/high16 v3, 0x10000

    invoke-virtual {v1, v3}, Landroid/app/StatusBarManager;->disable(I)V

    goto :goto_0
.end method

.method public onVolumeChanged()V
    .locals 1

    .prologue
    .line 184
    iget-object v0, p0, Lcom/sec/android/cover/sviewcover/SViewCoverView$1;->this$0:Lcom/sec/android/cover/sviewcover/SViewCoverView;

    invoke-virtual {v0}, Lcom/sec/android/cover/sviewcover/SViewCoverView;->isCoverOpen()Z

    move-result v0

    if-nez v0, :cond_0

    .line 185
    iget-object v0, p0, Lcom/sec/android/cover/sviewcover/SViewCoverView$1;->this$0:Lcom/sec/android/cover/sviewcover/SViewCoverView;

    # getter for: Lcom/sec/android/cover/sviewcover/SViewCoverView;->mContext:Landroid/content/Context;
    invoke-static {v0}, Lcom/sec/android/cover/sviewcover/SViewCoverView;->access$1500(Lcom/sec/android/cover/sviewcover/SViewCoverView;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/sec/android/cover/manager/CoverPowerManager;->getInstance(Landroid/content/Context;)Lcom/sec/android/cover/manager/CoverPowerManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/cover/manager/CoverPowerManager;->resetScreenOffTimer()V

    .line 187
    :cond_0
    return-void
.end method
