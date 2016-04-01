.class Lcom/android/server/audio/AudioService$SettingsObserver;
.super Landroid/database/ContentObserver;
.source "AudioService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/audio/AudioService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SettingsObserver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/audio/AudioService;


# direct methods
.method constructor <init>(Lcom/android/server/audio/AudioService;)V
    .registers 5

    .prologue
    const/4 v2, 0x0

    .line 6472
    iput-object p1, p0, this$0:Lcom/android/server/audio/AudioService;

    .line 6473
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    invoke-direct {p0, v0}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    .line 6474
    # getter for: Lcom/android/server/audio/AudioService;->mContentResolver:Landroid/content/ContentResolver;
    invoke-static {p1}, Lcom/android/server/audio/AudioService;->access$4700(Lcom/android/server/audio/AudioService;)Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "mode_ringer_streams_affected"

    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1, v2, p0}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 6476
    # getter for: Lcom/android/server/audio/AudioService;->mContentResolver:Landroid/content/ContentResolver;
    invoke-static {p1}, Lcom/android/server/audio/AudioService;->access$4700(Lcom/android/server/audio/AudioService;)Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "dock_audio_media_enabled"

    invoke-static {v1}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1, v2, p0}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 6479
    # getter for: Lcom/android/server/audio/AudioService;->mContentResolver:Landroid/content/ContentResolver;
    invoke-static {p1}, Lcom/android/server/audio/AudioService;->access$4700(Lcom/android/server/audio/AudioService;)Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "theme_touch_sound"

    invoke-static {v1}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1, v2, p0}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 6482
    # getter for: Lcom/android/server/audio/AudioService;->mContentResolver:Landroid/content/ContentResolver;
    invoke-static {p1}, Lcom/android/server/audio/AudioService;->access$4700(Lcom/android/server/audio/AudioService;)Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "sidesync_source_connect"

    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1, v2, p0}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 6487
    # getter for: Lcom/android/server/audio/AudioService;->mContentResolver:Landroid/content/ContentResolver;
    invoke-static {p1}, Lcom/android/server/audio/AudioService;->access$4700(Lcom/android/server/audio/AudioService;)Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "hearing_musiccheck"

    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1, v2, p0}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 6488
    # getter for: Lcom/android/server/audio/AudioService;->mContentResolver:Landroid/content/ContentResolver;
    invoke-static {p1}, Lcom/android/server/audio/AudioService;->access$4700(Lcom/android/server/audio/AudioService;)Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "sound_alive_effect"

    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1, v2, p0}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 6489
    # getter for: Lcom/android/server/audio/AudioService;->mContentResolver:Landroid/content/ContentResolver;
    invoke-static {p1}, Lcom/android/server/audio/AudioService;->access$4700(Lcom/android/server/audio/AudioService;)Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "k2hd_effect"

    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1, v2, p0}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 6490
    # getter for: Lcom/android/server/audio/AudioService;->mContentResolver:Landroid/content/ContentResolver;
    invoke-static {p1}, Lcom/android/server/audio/AudioService;->access$4700(Lcom/android/server/audio/AudioService;)Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "tube_amp_effect"

    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1, v2, p0}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 6493
    # getter for: Lcom/android/server/audio/AudioService;->mContentResolver:Landroid/content/ContentResolver;
    invoke-static {p1}, Lcom/android/server/audio/AudioService;->access$4700(Lcom/android/server/audio/AudioService;)Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "enabled_accessibility_s_talkback"

    invoke-static {v1}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1, v2, p0}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 6495
    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .registers 8
    .param p1, "selfChange"    # Z

    .prologue
    .line 6499
    invoke-super {p0, p1}, Landroid/database/ContentObserver;->onChange(Z)V

    .line 6504
    iget-object v0, p0, this$0:Lcom/android/server/audio/AudioService;

    # getter for: Lcom/android/server/audio/AudioService;->mSettingsLock:Ljava/lang/Object;
    invoke-static {v0}, Lcom/android/server/audio/AudioService;->access$9200(Lcom/android/server/audio/AudioService;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    .line 6505
    :try_start_a
    iget-object v0, p0, this$0:Lcom/android/server/audio/AudioService;

    # invokes: Lcom/android/server/audio/AudioService;->updateRingerModeAffectedStreams()Z
    invoke-static {v0}, Lcom/android/server/audio/AudioService;->access$9300(Lcom/android/server/audio/AudioService;)Z

    move-result v0

    if-eqz v0, :cond_1e

    .line 6510
    iget-object v0, p0, this$0:Lcom/android/server/audio/AudioService;

    iget-object v2, p0, this$0:Lcom/android/server/audio/AudioService;

    invoke-virtual {v2}, Lcom/android/server/audio/AudioService;->getRingerModeInternal()I

    move-result v2

    const/4 v3, 0x0

    # invokes: Lcom/android/server/audio/AudioService;->setRingerModeInt(IZ)V
    invoke-static {v0, v2, v3}, Lcom/android/server/audio/AudioService;->access$9400(Lcom/android/server/audio/AudioService;IZ)V

    .line 6512
    :cond_1e
    iget-object v0, p0, this$0:Lcom/android/server/audio/AudioService;

    iget-object v2, p0, this$0:Lcom/android/server/audio/AudioService;

    # getter for: Lcom/android/server/audio/AudioService;->mContentResolver:Landroid/content/ContentResolver;
    invoke-static {v2}, Lcom/android/server/audio/AudioService;->access$4700(Lcom/android/server/audio/AudioService;)Landroid/content/ContentResolver;

    move-result-object v2

    # invokes: Lcom/android/server/audio/AudioService;->readDockAudioSettings(Landroid/content/ContentResolver;)V
    invoke-static {v0, v2}, Lcom/android/server/audio/AudioService;->access$9500(Lcom/android/server/audio/AudioService;Landroid/content/ContentResolver;)V

    .line 6515
    iget-object v0, p0, this$0:Lcom/android/server/audio/AudioService;

    const/4 v2, 0x0

    # invokes: Lcom/android/server/audio/AudioService;->checkAndSetThemeSound(Z)V
    invoke-static {v0, v2}, Lcom/android/server/audio/AudioService;->access$9600(Lcom/android/server/audio/AudioService;Z)V

    .line 6519
    iget-object v0, p0, this$0:Lcom/android/server/audio/AudioService;

    # getter for: Lcom/android/server/audio/AudioService;->mMySoundEnabled:I
    invoke-static {v0}, Lcom/android/server/audio/AudioService;->access$9700(Lcom/android/server/audio/AudioService;)I

    move-result v0

    iget-object v2, p0, this$0:Lcom/android/server/audio/AudioService;

    # getter for: Lcom/android/server/audio/AudioService;->mContentResolver:Landroid/content/ContentResolver;
    invoke-static {v2}, Lcom/android/server/audio/AudioService;->access$4700(Lcom/android/server/audio/AudioService;)Landroid/content/ContentResolver;

    move-result-object v2

    const-string/jumbo v3, "hearing_musiccheck"

    const/4 v4, 0x0

    const/4 v5, -0x2

    invoke-static {v2, v3, v4, v5}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v2

    if-eq v0, v2, :cond_67

    .line 6520
    iget-object v0, p0, this$0:Lcom/android/server/audio/AudioService;

    iget-object v2, p0, this$0:Lcom/android/server/audio/AudioService;

    # getter for: Lcom/android/server/audio/AudioService;->mContentResolver:Landroid/content/ContentResolver;
    invoke-static {v2}, Lcom/android/server/audio/AudioService;->access$4700(Lcom/android/server/audio/AudioService;)Landroid/content/ContentResolver;

    move-result-object v2

    const-string/jumbo v3, "hearing_musiccheck"

    const/4 v4, 0x0

    const/4 v5, -0x2

    invoke-static {v2, v3, v4, v5}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v2

    # setter for: Lcom/android/server/audio/AudioService;->mMySoundEnabled:I
    invoke-static {v0, v2}, Lcom/android/server/audio/AudioService;->access$9702(Lcom/android/server/audio/AudioService;I)I

    .line 6521
    iget-object v0, p0, this$0:Lcom/android/server/audio/AudioService;

    iget-object v2, p0, this$0:Lcom/android/server/audio/AudioService;

    # getter for: Lcom/android/server/audio/AudioService;->mMySoundEnabled:I
    invoke-static {v2}, Lcom/android/server/audio/AudioService;->access$9700(Lcom/android/server/audio/AudioService;)I

    move-result v2

    # invokes: Lcom/android/server/audio/AudioService;->setGlobalMySound(I)V
    invoke-static {v0, v2}, Lcom/android/server/audio/AudioService;->access$9800(Lcom/android/server/audio/AudioService;I)V

    .line 6535
    :cond_65
    :goto_65
    monitor-exit v1

    .line 6536
    return-void

    .line 6522
    :cond_67
    iget-object v0, p0, this$0:Lcom/android/server/audio/AudioService;

    # getter for: Lcom/android/server/audio/AudioService;->mSoundAliveEnabled:I
    invoke-static {v0}, Lcom/android/server/audio/AudioService;->access$9900(Lcom/android/server/audio/AudioService;)I

    move-result v0

    iget-object v2, p0, this$0:Lcom/android/server/audio/AudioService;

    # getter for: Lcom/android/server/audio/AudioService;->mContentResolver:Landroid/content/ContentResolver;
    invoke-static {v2}, Lcom/android/server/audio/AudioService;->access$4700(Lcom/android/server/audio/AudioService;)Landroid/content/ContentResolver;

    move-result-object v2

    const-string/jumbo v3, "sound_alive_effect"

    const/4 v4, 0x0

    const/4 v5, -0x2

    invoke-static {v2, v3, v4, v5}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v2

    if-eq v0, v2, :cond_a1

    .line 6523
    iget-object v0, p0, this$0:Lcom/android/server/audio/AudioService;

    iget-object v2, p0, this$0:Lcom/android/server/audio/AudioService;

    # getter for: Lcom/android/server/audio/AudioService;->mContentResolver:Landroid/content/ContentResolver;
    invoke-static {v2}, Lcom/android/server/audio/AudioService;->access$4700(Lcom/android/server/audio/AudioService;)Landroid/content/ContentResolver;

    move-result-object v2

    const-string/jumbo v3, "sound_alive_effect"

    const/4 v4, 0x0

    const/4 v5, -0x2

    invoke-static {v2, v3, v4, v5}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v2

    # setter for: Lcom/android/server/audio/AudioService;->mSoundAliveEnabled:I
    invoke-static {v0, v2}, Lcom/android/server/audio/AudioService;->access$9902(Lcom/android/server/audio/AudioService;I)I

    .line 6524
    iget-object v0, p0, this$0:Lcom/android/server/audio/AudioService;

    iget-object v2, p0, this$0:Lcom/android/server/audio/AudioService;

    # getter for: Lcom/android/server/audio/AudioService;->mSoundAliveEnabled:I
    invoke-static {v2}, Lcom/android/server/audio/AudioService;->access$9900(Lcom/android/server/audio/AudioService;)I

    move-result v2

    # invokes: Lcom/android/server/audio/AudioService;->setGlobalSoundAlive(I)V
    invoke-static {v0, v2}, Lcom/android/server/audio/AudioService;->access$10000(Lcom/android/server/audio/AudioService;I)V

    goto :goto_65

    .line 6535
    :catchall_9e
    move-exception v0

    monitor-exit v1
    :try_end_a0
    .catchall {:try_start_a .. :try_end_a0} :catchall_9e

    throw v0

    .line 6525
    :cond_a1
    :try_start_a1
    iget-object v0, p0, this$0:Lcom/android/server/audio/AudioService;

    # getter for: Lcom/android/server/audio/AudioService;->mK2HDEnabled:I
    invoke-static {v0}, Lcom/android/server/audio/AudioService;->access$10100(Lcom/android/server/audio/AudioService;)I

    move-result v0

    iget-object v2, p0, this$0:Lcom/android/server/audio/AudioService;

    # getter for: Lcom/android/server/audio/AudioService;->mContentResolver:Landroid/content/ContentResolver;
    invoke-static {v2}, Lcom/android/server/audio/AudioService;->access$4700(Lcom/android/server/audio/AudioService;)Landroid/content/ContentResolver;

    move-result-object v2

    const-string/jumbo v3, "k2hd_effect"

    const/4 v4, 0x0

    const/4 v5, -0x2

    invoke-static {v2, v3, v4, v5}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v2

    if-eq v0, v2, :cond_d8

    .line 6526
    iget-object v0, p0, this$0:Lcom/android/server/audio/AudioService;

    iget-object v2, p0, this$0:Lcom/android/server/audio/AudioService;

    # getter for: Lcom/android/server/audio/AudioService;->mContentResolver:Landroid/content/ContentResolver;
    invoke-static {v2}, Lcom/android/server/audio/AudioService;->access$4700(Lcom/android/server/audio/AudioService;)Landroid/content/ContentResolver;

    move-result-object v2

    const-string/jumbo v3, "k2hd_effect"

    const/4 v4, 0x0

    const/4 v5, -0x2

    invoke-static {v2, v3, v4, v5}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v2

    # setter for: Lcom/android/server/audio/AudioService;->mK2HDEnabled:I
    invoke-static {v0, v2}, Lcom/android/server/audio/AudioService;->access$10102(Lcom/android/server/audio/AudioService;I)I

    .line 6527
    iget-object v0, p0, this$0:Lcom/android/server/audio/AudioService;

    iget-object v2, p0, this$0:Lcom/android/server/audio/AudioService;

    # getter for: Lcom/android/server/audio/AudioService;->mK2HDEnabled:I
    invoke-static {v2}, Lcom/android/server/audio/AudioService;->access$10100(Lcom/android/server/audio/AudioService;)I

    move-result v2

    # invokes: Lcom/android/server/audio/AudioService;->setGlobalK2HD(I)V
    invoke-static {v0, v2}, Lcom/android/server/audio/AudioService;->access$10200(Lcom/android/server/audio/AudioService;I)V

    goto :goto_65

    .line 6528
    :cond_d8
    iget-object v0, p0, this$0:Lcom/android/server/audio/AudioService;

    # getter for: Lcom/android/server/audio/AudioService;->mTubeAmpEnabled:I
    invoke-static {v0}, Lcom/android/server/audio/AudioService;->access$10300(Lcom/android/server/audio/AudioService;)I

    move-result v0

    iget-object v2, p0, this$0:Lcom/android/server/audio/AudioService;

    # getter for: Lcom/android/server/audio/AudioService;->mContentResolver:Landroid/content/ContentResolver;
    invoke-static {v2}, Lcom/android/server/audio/AudioService;->access$4700(Lcom/android/server/audio/AudioService;)Landroid/content/ContentResolver;

    move-result-object v2

    const-string/jumbo v3, "tube_amp_effect"

    const/4 v4, 0x0

    const/4 v5, -0x2

    invoke-static {v2, v3, v4, v5}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v2

    if-eq v0, v2, :cond_65

    .line 6529
    iget-object v0, p0, this$0:Lcom/android/server/audio/AudioService;

    iget-object v2, p0, this$0:Lcom/android/server/audio/AudioService;

    # getter for: Lcom/android/server/audio/AudioService;->mContentResolver:Landroid/content/ContentResolver;
    invoke-static {v2}, Lcom/android/server/audio/AudioService;->access$4700(Lcom/android/server/audio/AudioService;)Landroid/content/ContentResolver;

    move-result-object v2

    const-string/jumbo v3, "tube_amp_effect"

    const/4 v4, 0x0

    const/4 v5, -0x2

    invoke-static {v2, v3, v4, v5}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v2

    # setter for: Lcom/android/server/audio/AudioService;->mTubeAmpEnabled:I
    invoke-static {v0, v2}, Lcom/android/server/audio/AudioService;->access$10302(Lcom/android/server/audio/AudioService;I)I

    .line 6530
    iget-object v0, p0, this$0:Lcom/android/server/audio/AudioService;

    iget-object v2, p0, this$0:Lcom/android/server/audio/AudioService;

    # getter for: Lcom/android/server/audio/AudioService;->mTubeAmpEnabled:I
    invoke-static {v2}, Lcom/android/server/audio/AudioService;->access$10300(Lcom/android/server/audio/AudioService;)I

    move-result v2

    # invokes: Lcom/android/server/audio/AudioService;->setGlobalTubeAmp(I)V
    invoke-static {v0, v2}, Lcom/android/server/audio/AudioService;->access$10400(Lcom/android/server/audio/AudioService;I)V
    :try_end_10e
    .catchall {:try_start_a1 .. :try_end_10e} :catchall_9e

    goto/16 :goto_65
.end method
