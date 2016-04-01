.class Lcom/android/server/audio/MediaFocusControl$1;
.super Landroid/telephony/PhoneStateListener;
.source "MediaFocusControl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/audio/MediaFocusControl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/audio/MediaFocusControl;


# direct methods
.method constructor <init>(Lcom/android/server/audio/MediaFocusControl;)V
    .registers 2

    .prologue
    .line 455
    iput-object p1, p0, this$0:Lcom/android/server/audio/MediaFocusControl;

    invoke-direct {p0}, Landroid/telephony/PhoneStateListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onCallStateChanged(ILjava/lang/String;)V
    .registers 8
    .param p1, "state"    # I
    .param p2, "incomingNumber"    # Ljava/lang/String;

    .prologue
    const/4 v4, 0x2

    const/4 v1, 0x1

    .line 458
    if-ne p1, v1, :cond_14

    .line 460
    # getter for: Lcom/android/server/audio/MediaFocusControl;->mRingingLock:Ljava/lang/Object;
    invoke-static {}, Lcom/android/server/audio/MediaFocusControl;->access$1600()Ljava/lang/Object;

    move-result-object v2

    monitor-enter v2

    .line 461
    :try_start_9
    iget-object v1, p0, this$0:Lcom/android/server/audio/MediaFocusControl;

    const/4 v3, 0x1

    # setter for: Lcom/android/server/audio/MediaFocusControl;->mIsRinging:Z
    invoke-static {v1, v3}, Lcom/android/server/audio/MediaFocusControl;->access$1702(Lcom/android/server/audio/MediaFocusControl;Z)Z

    .line 462
    monitor-exit v2

    .line 485
    :cond_10
    :goto_10
    return-void

    .line 462
    :catchall_11
    move-exception v1

    monitor-exit v2
    :try_end_13
    .catchall {:try_start_9 .. :try_end_13} :catchall_11

    throw v1

    .line 463
    :cond_14
    if-eq p1, v4, :cond_18

    if-nez p1, :cond_10

    .line 465
    :cond_18
    # getter for: Lcom/android/server/audio/MediaFocusControl;->mRingingLock:Ljava/lang/Object;
    invoke-static {}, Lcom/android/server/audio/MediaFocusControl;->access$1600()Ljava/lang/Object;

    move-result-object v2

    monitor-enter v2

    .line 466
    :try_start_1d
    iget-object v1, p0, this$0:Lcom/android/server/audio/MediaFocusControl;

    const/4 v3, 0x0

    # setter for: Lcom/android/server/audio/MediaFocusControl;->mIsRinging:Z
    invoke-static {v1, v3}, Lcom/android/server/audio/MediaFocusControl;->access$1702(Lcom/android/server/audio/MediaFocusControl;Z)Z

    .line 468
    if-ne p1, v4, :cond_5d

    const/4 v1, 0x3

    const/4 v3, 0x0

    invoke-static {v1, v3}, Landroid/media/AudioSystem;->isStreamActiveRemotely(II)Z

    move-result v1

    if-eqz v1, :cond_5d

    iget-object v1, p0, this$0:Lcom/android/server/audio/MediaFocusControl;

    # getter for: Lcom/android/server/audio/MediaFocusControl;->mContentResolver:Landroid/content/ContentResolver;
    invoke-static {v1}, Lcom/android/server/audio/MediaFocusControl;->access$100(Lcom/android/server/audio/MediaFocusControl;)Landroid/content/ContentResolver;

    move-result-object v1

    const-string/jumbo v3, "sidesync_source_connect"

    const/4 v4, 0x0

    invoke-static {v1, v3, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-nez v1, :cond_5d

    .line 469
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 470
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "com.sec.android.intent.action.SPLIT_SOUND_SERVICE"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 471
    const-string/jumbo v1, "enabled"

    const/4 v3, 0x1

    invoke-virtual {v0, v1, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 472
    iget-object v1, p0, this$0:Lcom/android/server/audio/MediaFocusControl;

    # getter for: Lcom/android/server/audio/MediaFocusControl;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/android/server/audio/MediaFocusControl;->access$1800(Lcom/android/server/audio/MediaFocusControl;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 473
    iget-object v1, p0, this$0:Lcom/android/server/audio/MediaFocusControl;

    const/4 v3, 0x1

    # setter for: Lcom/android/server/audio/MediaFocusControl;->mSplitSoundService:Z
    invoke-static {v1, v3}, Lcom/android/server/audio/MediaFocusControl;->access$1902(Lcom/android/server/audio/MediaFocusControl;Z)Z

    .line 475
    .end local v0    # "intent":Landroid/content/Intent;
    :cond_5d
    if-nez p1, :cond_87

    iget-object v1, p0, this$0:Lcom/android/server/audio/MediaFocusControl;

    # getter for: Lcom/android/server/audio/MediaFocusControl;->mSplitSoundService:Z
    invoke-static {v1}, Lcom/android/server/audio/MediaFocusControl;->access$1900(Lcom/android/server/audio/MediaFocusControl;)Z

    move-result v1

    if-eqz v1, :cond_87

    .line 476
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 477
    .restart local v0    # "intent":Landroid/content/Intent;
    const-string v1, "com.sec.android.intent.action.SPLIT_SOUND_SERVICE"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 478
    const-string/jumbo v1, "enabled"

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 479
    iget-object v1, p0, this$0:Lcom/android/server/audio/MediaFocusControl;

    # getter for: Lcom/android/server/audio/MediaFocusControl;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/android/server/audio/MediaFocusControl;->access$1800(Lcom/android/server/audio/MediaFocusControl;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 480
    iget-object v1, p0, this$0:Lcom/android/server/audio/MediaFocusControl;

    const/4 v3, 0x0

    # setter for: Lcom/android/server/audio/MediaFocusControl;->mSplitSoundService:Z
    invoke-static {v1, v3}, Lcom/android/server/audio/MediaFocusControl;->access$1902(Lcom/android/server/audio/MediaFocusControl;Z)Z

    .line 483
    .end local v0    # "intent":Landroid/content/Intent;
    :cond_87
    monitor-exit v2

    goto :goto_10

    :catchall_89
    move-exception v1

    monitor-exit v2
    :try_end_8b
    .catchall {:try_start_1d .. :try_end_8b} :catchall_89

    throw v1
.end method

.method public onServiceStateChanged(Landroid/telephony/ServiceState;)V
    .registers 6
    .param p1, "serviceState"    # Landroid/telephony/ServiceState;

    .prologue
    .line 489
    if-eqz p1, :cond_52

    .line 490
    invoke-virtual {p1}, Landroid/telephony/ServiceState;->getState()I

    move-result v0

    .line 491
    .local v0, "updateState":I
    iget-object v1, p0, this$0:Lcom/android/server/audio/MediaFocusControl;

    # getter for: Lcom/android/server/audio/MediaFocusControl;->mRilState:I
    invoke-static {v1}, Lcom/android/server/audio/MediaFocusControl;->access$2000(Lcom/android/server/audio/MediaFocusControl;)I

    move-result v1

    if-eq v0, v1, :cond_52

    .line 492
    const-string v1, "MediaFocusControl"

    const-string v2, "##################################################"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 493
    const-string v1, "MediaFocusControl"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "### RIL State is changed"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, this$0:Lcom/android/server/audio/MediaFocusControl;

    # getter for: Lcom/android/server/audio/MediaFocusControl;->mRilState:I
    invoke-static {v3}, Lcom/android/server/audio/MediaFocusControl;->access$2000(Lcom/android/server/audio/MediaFocusControl;)I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " -> "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 494
    const-string v1, "MediaFocusControl"

    const-string v2, "##################################################"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 495
    const/4 v1, 0x1

    if-eq v0, v1, :cond_4d

    .line 496
    const-string/jumbo v1, "ril_state_connected=1"

    invoke-static {v1}, Landroid/media/AudioSystem;->setParameters(Ljava/lang/String;)I

    .line 498
    :cond_4d
    iget-object v1, p0, this$0:Lcom/android/server/audio/MediaFocusControl;

    # setter for: Lcom/android/server/audio/MediaFocusControl;->mRilState:I
    invoke-static {v1, v0}, Lcom/android/server/audio/MediaFocusControl;->access$2002(Lcom/android/server/audio/MediaFocusControl;I)I

    .line 501
    .end local v0    # "updateState":I
    :cond_52
    return-void
.end method
