.class final Lcom/android/server/media/MediaSessionRecord$SessionStub;
.super Landroid/media/session/ISession$Stub;
.source "MediaSessionRecord.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/media/MediaSessionRecord;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "SessionStub"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/media/MediaSessionRecord;


# direct methods
.method private constructor <init>(Lcom/android/server/media/MediaSessionRecord;)V
    .registers 2

    .prologue
    .line 723
    iput-object p1, p0, this$0:Lcom/android/server/media/MediaSessionRecord;

    invoke-direct {p0}, Landroid/media/session/ISession$Stub;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/media/MediaSessionRecord;Lcom/android/server/media/MediaSessionRecord$1;)V
    .registers 3
    .param p1, "x0"    # Lcom/android/server/media/MediaSessionRecord;
    .param p2, "x1"    # Lcom/android/server/media/MediaSessionRecord$1;

    .prologue
    .line 723
    invoke-direct {p0, p1}, <init>(Lcom/android/server/media/MediaSessionRecord;)V

    return-void
.end method


# virtual methods
.method public destroy()V
    .registers 3

    .prologue
    .line 726
    iget-object v0, p0, this$0:Lcom/android/server/media/MediaSessionRecord;

    # getter for: Lcom/android/server/media/MediaSessionRecord;->mService:Lcom/android/server/media/MediaSessionService;
    invoke-static {v0}, Lcom/android/server/media/MediaSessionRecord;->access$600(Lcom/android/server/media/MediaSessionRecord;)Lcom/android/server/media/MediaSessionService;

    move-result-object v0

    iget-object v1, p0, this$0:Lcom/android/server/media/MediaSessionRecord;

    invoke-virtual {v0, v1}, Lcom/android/server/media/MediaSessionService;->destroySession(Lcom/android/server/media/MediaSessionRecord;)V

    .line 727
    return-void
.end method

.method public getController()Landroid/media/session/ISessionController;
    .registers 2

    .prologue
    .line 737
    iget-object v0, p0, this$0:Lcom/android/server/media/MediaSessionRecord;

    # getter for: Lcom/android/server/media/MediaSessionRecord;->mController:Lcom/android/server/media/MediaSessionRecord$ControllerStub;
    invoke-static {v0}, Lcom/android/server/media/MediaSessionRecord;->access$800(Lcom/android/server/media/MediaSessionRecord;)Lcom/android/server/media/MediaSessionRecord$ControllerStub;

    move-result-object v0

    return-object v0
.end method

.method public sendEvent(Ljava/lang/String;Landroid/os/Bundle;)V
    .registers 6
    .param p1, "event"    # Ljava/lang/String;
    .param p2, "data"    # Landroid/os/Bundle;

    .prologue
    .line 731
    iget-object v0, p0, this$0:Lcom/android/server/media/MediaSessionRecord;

    # getter for: Lcom/android/server/media/MediaSessionRecord;->mHandler:Lcom/android/server/media/MediaSessionRecord$MessageHandler;
    invoke-static {v0}, Lcom/android/server/media/MediaSessionRecord;->access$700(Lcom/android/server/media/MediaSessionRecord;)Lcom/android/server/media/MediaSessionRecord$MessageHandler;

    move-result-object v1

    const/4 v2, 0x6

    if-nez p2, :cond_e

    const/4 v0, 0x0

    :goto_a
    invoke-virtual {v1, v2, p1, v0}, Lcom/android/server/media/MediaSessionRecord$MessageHandler;->post(ILjava/lang/Object;Landroid/os/Bundle;)V

    .line 733
    return-void

    .line 731
    :cond_e
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0, p2}, Landroid/os/Bundle;-><init>(Landroid/os/Bundle;)V

    goto :goto_a
.end method

.method public setActive(Z)V
    .registers 4
    .param p1, "active"    # Z

    .prologue
    .line 742
    iget-object v0, p0, this$0:Lcom/android/server/media/MediaSessionRecord;

    # setter for: Lcom/android/server/media/MediaSessionRecord;->mIsActive:Z
    invoke-static {v0, p1}, Lcom/android/server/media/MediaSessionRecord;->access$902(Lcom/android/server/media/MediaSessionRecord;Z)Z

    .line 743
    iget-object v0, p0, this$0:Lcom/android/server/media/MediaSessionRecord;

    # getter for: Lcom/android/server/media/MediaSessionRecord;->mService:Lcom/android/server/media/MediaSessionService;
    invoke-static {v0}, Lcom/android/server/media/MediaSessionRecord;->access$600(Lcom/android/server/media/MediaSessionRecord;)Lcom/android/server/media/MediaSessionService;

    move-result-object v0

    iget-object v1, p0, this$0:Lcom/android/server/media/MediaSessionRecord;

    invoke-virtual {v0, v1}, Lcom/android/server/media/MediaSessionService;->updateSession(Lcom/android/server/media/MediaSessionRecord;)V

    .line 744
    iget-object v0, p0, this$0:Lcom/android/server/media/MediaSessionRecord;

    # getter for: Lcom/android/server/media/MediaSessionRecord;->mHandler:Lcom/android/server/media/MediaSessionRecord$MessageHandler;
    invoke-static {v0}, Lcom/android/server/media/MediaSessionRecord;->access$700(Lcom/android/server/media/MediaSessionRecord;)Lcom/android/server/media/MediaSessionRecord$MessageHandler;

    move-result-object v0

    const/4 v1, 0x7

    invoke-virtual {v0, v1}, Lcom/android/server/media/MediaSessionRecord$MessageHandler;->post(I)V

    .line 745
    return-void
.end method

.method public setCurrentVolume(I)V
    .registers 4
    .param p1, "volume"    # I

    .prologue
    .line 860
    iget-object v0, p0, this$0:Lcom/android/server/media/MediaSessionRecord;

    # setter for: Lcom/android/server/media/MediaSessionRecord;->mCurrentVolume:I
    invoke-static {v0, p1}, Lcom/android/server/media/MediaSessionRecord;->access$402(Lcom/android/server/media/MediaSessionRecord;I)I

    .line 861
    iget-object v0, p0, this$0:Lcom/android/server/media/MediaSessionRecord;

    # getter for: Lcom/android/server/media/MediaSessionRecord;->mHandler:Lcom/android/server/media/MediaSessionRecord$MessageHandler;
    invoke-static {v0}, Lcom/android/server/media/MediaSessionRecord;->access$700(Lcom/android/server/media/MediaSessionRecord;)Lcom/android/server/media/MediaSessionRecord$MessageHandler;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/android/server/media/MediaSessionRecord$MessageHandler;->post(I)V

    .line 862
    return-void
.end method

.method public setExtras(Landroid/os/Bundle;)V
    .registers 5
    .param p1, "extras"    # Landroid/os/Bundle;

    .prologue
    .line 847
    iget-object v0, p0, this$0:Lcom/android/server/media/MediaSessionRecord;

    # getter for: Lcom/android/server/media/MediaSessionRecord;->mLock:Ljava/lang/Object;
    invoke-static {v0}, Lcom/android/server/media/MediaSessionRecord;->access$1300(Lcom/android/server/media/MediaSessionRecord;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    .line 848
    :try_start_7
    iget-object v2, p0, this$0:Lcom/android/server/media/MediaSessionRecord;

    if-nez p1, :cond_1b

    const/4 v0, 0x0

    :goto_c
    # setter for: Lcom/android/server/media/MediaSessionRecord;->mExtras:Landroid/os/Bundle;
    invoke-static {v2, v0}, Lcom/android/server/media/MediaSessionRecord;->access$2002(Lcom/android/server/media/MediaSessionRecord;Landroid/os/Bundle;)Landroid/os/Bundle;

    .line 849
    monitor-exit v1
    :try_end_10
    .catchall {:try_start_7 .. :try_end_10} :catchall_21

    .line 850
    iget-object v0, p0, this$0:Lcom/android/server/media/MediaSessionRecord;

    # getter for: Lcom/android/server/media/MediaSessionRecord;->mHandler:Lcom/android/server/media/MediaSessionRecord$MessageHandler;
    invoke-static {v0}, Lcom/android/server/media/MediaSessionRecord;->access$700(Lcom/android/server/media/MediaSessionRecord;)Lcom/android/server/media/MediaSessionRecord$MessageHandler;

    move-result-object v0

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Lcom/android/server/media/MediaSessionRecord$MessageHandler;->post(I)V

    .line 851
    return-void

    .line 848
    :cond_1b
    :try_start_1b
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0, p1}, Landroid/os/Bundle;-><init>(Landroid/os/Bundle;)V

    goto :goto_c

    .line 849
    :catchall_21
    move-exception v0

    monitor-exit v1
    :try_end_23
    .catchall {:try_start_1b .. :try_end_23} :catchall_21

    throw v0
.end method

.method public setFlags(I)V
    .registers 8
    .param p1, "flags"    # I

    .prologue
    .line 749
    const/high16 v2, 0x10000

    and-int/2addr v2, p1

    if-eqz v2, :cond_16

    .line 750
    invoke-static {}, getCallingPid()I

    move-result v0

    .line 751
    .local v0, "pid":I
    invoke-static {}, getCallingUid()I

    move-result v1

    .line 752
    .local v1, "uid":I
    iget-object v2, p0, this$0:Lcom/android/server/media/MediaSessionRecord;

    # getter for: Lcom/android/server/media/MediaSessionRecord;->mService:Lcom/android/server/media/MediaSessionService;
    invoke-static {v2}, Lcom/android/server/media/MediaSessionRecord;->access$600(Lcom/android/server/media/MediaSessionRecord;)Lcom/android/server/media/MediaSessionService;

    move-result-object v2

    invoke-virtual {v2, v0, v1}, Lcom/android/server/media/MediaSessionService;->enforcePhoneStatePermission(II)V

    .line 754
    .end local v0    # "pid":I
    .end local v1    # "uid":I
    :cond_16
    iget-object v2, p0, this$0:Lcom/android/server/media/MediaSessionRecord;

    int-to-long v4, p1

    # setter for: Lcom/android/server/media/MediaSessionRecord;->mFlags:J
    invoke-static {v2, v4, v5}, Lcom/android/server/media/MediaSessionRecord;->access$1002(Lcom/android/server/media/MediaSessionRecord;J)J

    .line 755
    iget-object v2, p0, this$0:Lcom/android/server/media/MediaSessionRecord;

    # getter for: Lcom/android/server/media/MediaSessionRecord;->mHandler:Lcom/android/server/media/MediaSessionRecord$MessageHandler;
    invoke-static {v2}, Lcom/android/server/media/MediaSessionRecord;->access$700(Lcom/android/server/media/MediaSessionRecord;)Lcom/android/server/media/MediaSessionRecord$MessageHandler;

    move-result-object v2

    const/4 v3, 0x7

    invoke-virtual {v2, v3}, Lcom/android/server/media/MediaSessionRecord$MessageHandler;->post(I)V

    .line 756
    return-void
.end method

.method public setLaunchPendingIntent(Landroid/app/PendingIntent;)V
    .registers 3
    .param p1, "pi"    # Landroid/app/PendingIntent;

    .prologue
    .line 765
    iget-object v0, p0, this$0:Lcom/android/server/media/MediaSessionRecord;

    # setter for: Lcom/android/server/media/MediaSessionRecord;->mLaunchIntent:Landroid/app/PendingIntent;
    invoke-static {v0, p1}, Lcom/android/server/media/MediaSessionRecord;->access$1202(Lcom/android/server/media/MediaSessionRecord;Landroid/app/PendingIntent;)Landroid/app/PendingIntent;

    .line 766
    return-void
.end method

.method public setMediaButtonReceiver(Landroid/app/PendingIntent;)V
    .registers 3
    .param p1, "pi"    # Landroid/app/PendingIntent;

    .prologue
    .line 760
    iget-object v0, p0, this$0:Lcom/android/server/media/MediaSessionRecord;

    # setter for: Lcom/android/server/media/MediaSessionRecord;->mMediaButtonReceiver:Landroid/app/PendingIntent;
    invoke-static {v0, p1}, Lcom/android/server/media/MediaSessionRecord;->access$1102(Lcom/android/server/media/MediaSessionRecord;Landroid/app/PendingIntent;)Landroid/app/PendingIntent;

    .line 761
    return-void
.end method

.method public setMetadata(Landroid/media/MediaMetadata;)V
    .registers 5
    .param p1, "metadata"    # Landroid/media/MediaMetadata;

    .prologue
    .line 770
    iget-object v1, p0, this$0:Lcom/android/server/media/MediaSessionRecord;

    # getter for: Lcom/android/server/media/MediaSessionRecord;->mLock:Ljava/lang/Object;
    invoke-static {v1}, Lcom/android/server/media/MediaSessionRecord;->access$1300(Lcom/android/server/media/MediaSessionRecord;)Ljava/lang/Object;

    move-result-object v2

    monitor-enter v2

    .line 771
    if-nez p1, :cond_20

    const/4 v0, 0x0

    .line 776
    .local v0, "temp":Landroid/media/MediaMetadata;
    :goto_a
    if-eqz v0, :cond_f

    .line 777
    :try_start_c
    invoke-virtual {v0}, Landroid/media/MediaMetadata;->size()I

    .line 779
    :cond_f
    iget-object v1, p0, this$0:Lcom/android/server/media/MediaSessionRecord;

    # setter for: Lcom/android/server/media/MediaSessionRecord;->mMetadata:Landroid/media/MediaMetadata;
    invoke-static {v1, v0}, Lcom/android/server/media/MediaSessionRecord;->access$1402(Lcom/android/server/media/MediaSessionRecord;Landroid/media/MediaMetadata;)Landroid/media/MediaMetadata;

    .line 780
    monitor-exit v2
    :try_end_15
    .catchall {:try_start_c .. :try_end_15} :catchall_2a

    .line 781
    iget-object v1, p0, this$0:Lcom/android/server/media/MediaSessionRecord;

    # getter for: Lcom/android/server/media/MediaSessionRecord;->mHandler:Lcom/android/server/media/MediaSessionRecord$MessageHandler;
    invoke-static {v1}, Lcom/android/server/media/MediaSessionRecord;->access$700(Lcom/android/server/media/MediaSessionRecord;)Lcom/android/server/media/MediaSessionRecord$MessageHandler;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/android/server/media/MediaSessionRecord$MessageHandler;->post(I)V

    .line 782
    return-void

    .line 771
    .end local v0    # "temp":Landroid/media/MediaMetadata;
    :cond_20
    :try_start_20
    new-instance v1, Landroid/media/MediaMetadata$Builder;

    invoke-direct {v1, p1}, Landroid/media/MediaMetadata$Builder;-><init>(Landroid/media/MediaMetadata;)V

    invoke-virtual {v1}, Landroid/media/MediaMetadata$Builder;->build()Landroid/media/MediaMetadata;

    move-result-object v0

    goto :goto_a

    .line 780
    :catchall_2a
    move-exception v1

    monitor-exit v2
    :try_end_2c
    .catchall {:try_start_20 .. :try_end_2c} :catchall_2a

    throw v1
.end method

.method public setPlaybackState(Landroid/media/session/PlaybackState;)V
    .registers 14
    .param p1, "state"    # Landroid/media/session/PlaybackState;

    .prologue
    .line 787
    const/4 v7, 0x0

    .local v7, "oldState":I
    const/4 v3, 0x0

    .line 788
    .local v3, "newState":I
    const-wide/16 v4, 0x0

    .local v4, "oldPosition":J
    const-wide/16 v0, 0x0

    .line 789
    .local v0, "newPosition":J
    const/4 v6, 0x0

    .local v6, "oldSpeed":F
    const/4 v2, 0x0

    .line 791
    .local v2, "newSpeed":F
    iget-object v8, p0, this$0:Lcom/android/server/media/MediaSessionRecord;

    # getter for: Lcom/android/server/media/MediaSessionRecord;->mPlaybackState:Landroid/media/session/PlaybackState;
    invoke-static {v8}, Lcom/android/server/media/MediaSessionRecord;->access$1500(Lcom/android/server/media/MediaSessionRecord;)Landroid/media/session/PlaybackState;

    move-result-object v8

    if-eqz v8, :cond_2e

    .line 792
    iget-object v8, p0, this$0:Lcom/android/server/media/MediaSessionRecord;

    # getter for: Lcom/android/server/media/MediaSessionRecord;->mPlaybackState:Landroid/media/session/PlaybackState;
    invoke-static {v8}, Lcom/android/server/media/MediaSessionRecord;->access$1500(Lcom/android/server/media/MediaSessionRecord;)Landroid/media/session/PlaybackState;

    move-result-object v8

    invoke-virtual {v8}, Landroid/media/session/PlaybackState;->getState()I

    move-result v7

    .line 793
    iget-object v8, p0, this$0:Lcom/android/server/media/MediaSessionRecord;

    # getter for: Lcom/android/server/media/MediaSessionRecord;->mPlaybackState:Landroid/media/session/PlaybackState;
    invoke-static {v8}, Lcom/android/server/media/MediaSessionRecord;->access$1500(Lcom/android/server/media/MediaSessionRecord;)Landroid/media/session/PlaybackState;

    move-result-object v8

    invoke-virtual {v8}, Landroid/media/session/PlaybackState;->getPosition()J

    move-result-wide v4

    .line 794
    iget-object v8, p0, this$0:Lcom/android/server/media/MediaSessionRecord;

    # getter for: Lcom/android/server/media/MediaSessionRecord;->mPlaybackState:Landroid/media/session/PlaybackState;
    invoke-static {v8}, Lcom/android/server/media/MediaSessionRecord;->access$1500(Lcom/android/server/media/MediaSessionRecord;)Landroid/media/session/PlaybackState;

    move-result-object v8

    invoke-virtual {v8}, Landroid/media/session/PlaybackState;->getPlaybackSpeed()F

    move-result v6

    .line 797
    :cond_2e
    if-eqz p1, :cond_3c

    .line 798
    invoke-virtual {p1}, Landroid/media/session/PlaybackState;->getState()I

    move-result v3

    .line 799
    invoke-virtual {p1}, Landroid/media/session/PlaybackState;->getPosition()J

    move-result-wide v0

    .line 800
    invoke-virtual {p1}, Landroid/media/session/PlaybackState;->getPlaybackSpeed()F

    move-result v2

    .line 802
    :cond_3c
    const-string v8, "MediaSessionRecord"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "setPlaybackState oldState:"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ", newState:"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ", packageName:"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, p0, this$0:Lcom/android/server/media/MediaSessionRecord;

    # getter for: Lcom/android/server/media/MediaSessionRecord;->mPackageName:Ljava/lang/String;
    invoke-static {v10}, Lcom/android/server/media/MediaSessionRecord;->access$1600(Lcom/android/server/media/MediaSessionRecord;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 804
    if-ne v7, v3, :cond_85

    cmp-long v8, v4, v0

    if-nez v8, :cond_85

    cmpl-float v8, v6, v2

    if-nez v8, :cond_85

    const-wide/16 v8, 0x0

    cmp-long v8, v4, v8

    if-nez v8, :cond_b9

    const-wide/16 v8, 0x0

    cmp-long v8, v0, v8

    if-nez v8, :cond_b9

    .line 807
    :cond_85
    invoke-static {v7}, Landroid/media/session/MediaSession;->isActiveState(I)Z

    move-result v8

    if-eqz v8, :cond_97

    const/4 v8, 0x2

    if-ne v3, v8, :cond_97

    .line 808
    iget-object v8, p0, this$0:Lcom/android/server/media/MediaSessionRecord;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v10

    # setter for: Lcom/android/server/media/MediaSessionRecord;->mLastActiveTime:J
    invoke-static {v8, v10, v11}, Lcom/android/server/media/MediaSessionRecord;->access$1702(Lcom/android/server/media/MediaSessionRecord;J)J

    .line 810
    :cond_97
    iget-object v8, p0, this$0:Lcom/android/server/media/MediaSessionRecord;

    # getter for: Lcom/android/server/media/MediaSessionRecord;->mLock:Ljava/lang/Object;
    invoke-static {v8}, Lcom/android/server/media/MediaSessionRecord;->access$1300(Lcom/android/server/media/MediaSessionRecord;)Ljava/lang/Object;

    move-result-object v9

    monitor-enter v9

    .line 811
    :try_start_9e
    iget-object v8, p0, this$0:Lcom/android/server/media/MediaSessionRecord;

    # setter for: Lcom/android/server/media/MediaSessionRecord;->mPlaybackState:Landroid/media/session/PlaybackState;
    invoke-static {v8, p1}, Lcom/android/server/media/MediaSessionRecord;->access$1502(Lcom/android/server/media/MediaSessionRecord;Landroid/media/session/PlaybackState;)Landroid/media/session/PlaybackState;

    .line 812
    monitor-exit v9
    :try_end_a4
    .catchall {:try_start_9e .. :try_end_a4} :catchall_ba

    .line 813
    iget-object v8, p0, this$0:Lcom/android/server/media/MediaSessionRecord;

    # getter for: Lcom/android/server/media/MediaSessionRecord;->mService:Lcom/android/server/media/MediaSessionService;
    invoke-static {v8}, Lcom/android/server/media/MediaSessionRecord;->access$600(Lcom/android/server/media/MediaSessionRecord;)Lcom/android/server/media/MediaSessionService;

    move-result-object v8

    iget-object v9, p0, this$0:Lcom/android/server/media/MediaSessionRecord;

    invoke-virtual {v8, v9, v7, v3}, Lcom/android/server/media/MediaSessionService;->onSessionPlaystateChange(Lcom/android/server/media/MediaSessionRecord;II)V

    .line 814
    iget-object v8, p0, this$0:Lcom/android/server/media/MediaSessionRecord;

    # getter for: Lcom/android/server/media/MediaSessionRecord;->mHandler:Lcom/android/server/media/MediaSessionRecord$MessageHandler;
    invoke-static {v8}, Lcom/android/server/media/MediaSessionRecord;->access$700(Lcom/android/server/media/MediaSessionRecord;)Lcom/android/server/media/MediaSessionRecord$MessageHandler;

    move-result-object v8

    const/4 v9, 0x2

    invoke-virtual {v8, v9}, Lcom/android/server/media/MediaSessionRecord$MessageHandler;->post(I)V

    .line 829
    :cond_b9
    return-void

    .line 812
    :catchall_ba
    move-exception v8

    :try_start_bb
    monitor-exit v9
    :try_end_bc
    .catchall {:try_start_bb .. :try_end_bc} :catchall_ba

    throw v8
.end method

.method public setPlaybackToLocal(Landroid/media/AudioAttributes;)V
    .registers 6
    .param p1, "attributes"    # Landroid/media/AudioAttributes;

    .prologue
    const/4 v0, 0x1

    .line 867
    iget-object v1, p0, this$0:Lcom/android/server/media/MediaSessionRecord;

    # getter for: Lcom/android/server/media/MediaSessionRecord;->mLock:Ljava/lang/Object;
    invoke-static {v1}, Lcom/android/server/media/MediaSessionRecord;->access$1300(Lcom/android/server/media/MediaSessionRecord;)Ljava/lang/Object;

    move-result-object v2

    monitor-enter v2

    .line 868
    :try_start_8
    iget-object v1, p0, this$0:Lcom/android/server/media/MediaSessionRecord;

    # getter for: Lcom/android/server/media/MediaSessionRecord;->mVolumeType:I
    invoke-static {v1}, Lcom/android/server/media/MediaSessionRecord;->access$2200(Lcom/android/server/media/MediaSessionRecord;)I

    move-result v1

    const/4 v3, 0x2

    if-ne v1, v3, :cond_38

    .line 869
    .local v0, "typeChanged":Z
    :goto_11
    iget-object v1, p0, this$0:Lcom/android/server/media/MediaSessionRecord;

    const/4 v3, 0x1

    # setter for: Lcom/android/server/media/MediaSessionRecord;->mVolumeType:I
    invoke-static {v1, v3}, Lcom/android/server/media/MediaSessionRecord;->access$2202(Lcom/android/server/media/MediaSessionRecord;I)I

    .line 870
    if-eqz p1, :cond_3a

    .line 871
    iget-object v1, p0, this$0:Lcom/android/server/media/MediaSessionRecord;

    # setter for: Lcom/android/server/media/MediaSessionRecord;->mAudioAttrs:Landroid/media/AudioAttributes;
    invoke-static {v1, p1}, Lcom/android/server/media/MediaSessionRecord;->access$2302(Lcom/android/server/media/MediaSessionRecord;Landroid/media/AudioAttributes;)Landroid/media/AudioAttributes;

    .line 875
    :goto_1e
    monitor-exit v2
    :try_end_1f
    .catchall {:try_start_8 .. :try_end_1f} :catchall_42

    .line 876
    if-eqz v0, :cond_37

    .line 877
    iget-object v1, p0, this$0:Lcom/android/server/media/MediaSessionRecord;

    # getter for: Lcom/android/server/media/MediaSessionRecord;->mService:Lcom/android/server/media/MediaSessionService;
    invoke-static {v1}, Lcom/android/server/media/MediaSessionRecord;->access$600(Lcom/android/server/media/MediaSessionRecord;)Lcom/android/server/media/MediaSessionService;

    move-result-object v1

    iget-object v2, p0, this$0:Lcom/android/server/media/MediaSessionRecord;

    invoke-virtual {v1, v2}, Lcom/android/server/media/MediaSessionService;->onSessionPlaybackTypeChanged(Lcom/android/server/media/MediaSessionRecord;)V

    .line 878
    iget-object v1, p0, this$0:Lcom/android/server/media/MediaSessionRecord;

    # getter for: Lcom/android/server/media/MediaSessionRecord;->mHandler:Lcom/android/server/media/MediaSessionRecord$MessageHandler;
    invoke-static {v1}, Lcom/android/server/media/MediaSessionRecord;->access$700(Lcom/android/server/media/MediaSessionRecord;)Lcom/android/server/media/MediaSessionRecord$MessageHandler;

    move-result-object v1

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Lcom/android/server/media/MediaSessionRecord$MessageHandler;->post(I)V

    .line 880
    :cond_37
    return-void

    .line 868
    .end local v0    # "typeChanged":Z
    :cond_38
    const/4 v0, 0x0

    goto :goto_11

    .line 873
    .restart local v0    # "typeChanged":Z
    :cond_3a
    :try_start_3a
    const-string v1, "MediaSessionRecord"

    const-string v3, "Received null audio attributes, using existing attributes"

    invoke-static {v1, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1e

    .line 875
    .end local v0    # "typeChanged":Z
    :catchall_42
    move-exception v1

    monitor-exit v2
    :try_end_44
    .catchall {:try_start_3a .. :try_end_44} :catchall_42

    throw v1
.end method

.method public setPlaybackToRemote(II)V
    .registers 7
    .param p1, "control"    # I
    .param p2, "max"    # I

    .prologue
    const/4 v0, 0x1

    .line 885
    iget-object v1, p0, this$0:Lcom/android/server/media/MediaSessionRecord;

    # getter for: Lcom/android/server/media/MediaSessionRecord;->mLock:Ljava/lang/Object;
    invoke-static {v1}, Lcom/android/server/media/MediaSessionRecord;->access$1300(Lcom/android/server/media/MediaSessionRecord;)Ljava/lang/Object;

    move-result-object v2

    monitor-enter v2

    .line 886
    :try_start_8
    iget-object v1, p0, this$0:Lcom/android/server/media/MediaSessionRecord;

    # getter for: Lcom/android/server/media/MediaSessionRecord;->mVolumeType:I
    invoke-static {v1}, Lcom/android/server/media/MediaSessionRecord;->access$2200(Lcom/android/server/media/MediaSessionRecord;)I

    move-result v1

    if-ne v1, v0, :cond_3a

    .line 887
    .local v0, "typeChanged":Z
    :goto_10
    iget-object v1, p0, this$0:Lcom/android/server/media/MediaSessionRecord;

    const/4 v3, 0x2

    # setter for: Lcom/android/server/media/MediaSessionRecord;->mVolumeType:I
    invoke-static {v1, v3}, Lcom/android/server/media/MediaSessionRecord;->access$2202(Lcom/android/server/media/MediaSessionRecord;I)I

    .line 888
    iget-object v1, p0, this$0:Lcom/android/server/media/MediaSessionRecord;

    # setter for: Lcom/android/server/media/MediaSessionRecord;->mVolumeControlType:I
    invoke-static {v1, p1}, Lcom/android/server/media/MediaSessionRecord;->access$2402(Lcom/android/server/media/MediaSessionRecord;I)I

    .line 889
    iget-object v1, p0, this$0:Lcom/android/server/media/MediaSessionRecord;

    # setter for: Lcom/android/server/media/MediaSessionRecord;->mMaxVolume:I
    invoke-static {v1, p2}, Lcom/android/server/media/MediaSessionRecord;->access$2502(Lcom/android/server/media/MediaSessionRecord;I)I

    .line 890
    monitor-exit v2
    :try_end_21
    .catchall {:try_start_8 .. :try_end_21} :catchall_3c

    .line 891
    if-eqz v0, :cond_39

    .line 892
    iget-object v1, p0, this$0:Lcom/android/server/media/MediaSessionRecord;

    # getter for: Lcom/android/server/media/MediaSessionRecord;->mService:Lcom/android/server/media/MediaSessionService;
    invoke-static {v1}, Lcom/android/server/media/MediaSessionRecord;->access$600(Lcom/android/server/media/MediaSessionRecord;)Lcom/android/server/media/MediaSessionService;

    move-result-object v1

    iget-object v2, p0, this$0:Lcom/android/server/media/MediaSessionRecord;

    invoke-virtual {v1, v2}, Lcom/android/server/media/MediaSessionService;->onSessionPlaybackTypeChanged(Lcom/android/server/media/MediaSessionRecord;)V

    .line 893
    iget-object v1, p0, this$0:Lcom/android/server/media/MediaSessionRecord;

    # getter for: Lcom/android/server/media/MediaSessionRecord;->mHandler:Lcom/android/server/media/MediaSessionRecord$MessageHandler;
    invoke-static {v1}, Lcom/android/server/media/MediaSessionRecord;->access$700(Lcom/android/server/media/MediaSessionRecord;)Lcom/android/server/media/MediaSessionRecord$MessageHandler;

    move-result-object v1

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Lcom/android/server/media/MediaSessionRecord$MessageHandler;->post(I)V

    .line 895
    :cond_39
    return-void

    .line 886
    .end local v0    # "typeChanged":Z
    :cond_3a
    const/4 v0, 0x0

    goto :goto_10

    .line 890
    :catchall_3c
    move-exception v1

    :try_start_3d
    monitor-exit v2
    :try_end_3e
    .catchall {:try_start_3d .. :try_end_3e} :catchall_3c

    throw v1
.end method

.method public setQueue(Landroid/content/pm/ParceledListSlice;)V
    .registers 4
    .param p1, "queue"    # Landroid/content/pm/ParceledListSlice;

    .prologue
    .line 833
    iget-object v0, p0, this$0:Lcom/android/server/media/MediaSessionRecord;

    # getter for: Lcom/android/server/media/MediaSessionRecord;->mLock:Ljava/lang/Object;
    invoke-static {v0}, Lcom/android/server/media/MediaSessionRecord;->access$1300(Lcom/android/server/media/MediaSessionRecord;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    .line 834
    :try_start_7
    iget-object v0, p0, this$0:Lcom/android/server/media/MediaSessionRecord;

    # setter for: Lcom/android/server/media/MediaSessionRecord;->mQueue:Landroid/content/pm/ParceledListSlice;
    invoke-static {v0, p1}, Lcom/android/server/media/MediaSessionRecord;->access$1802(Lcom/android/server/media/MediaSessionRecord;Landroid/content/pm/ParceledListSlice;)Landroid/content/pm/ParceledListSlice;

    .line 835
    monitor-exit v1
    :try_end_d
    .catchall {:try_start_7 .. :try_end_d} :catchall_18

    .line 836
    iget-object v0, p0, this$0:Lcom/android/server/media/MediaSessionRecord;

    # getter for: Lcom/android/server/media/MediaSessionRecord;->mHandler:Lcom/android/server/media/MediaSessionRecord$MessageHandler;
    invoke-static {v0}, Lcom/android/server/media/MediaSessionRecord;->access$700(Lcom/android/server/media/MediaSessionRecord;)Lcom/android/server/media/MediaSessionRecord$MessageHandler;

    move-result-object v0

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Lcom/android/server/media/MediaSessionRecord$MessageHandler;->post(I)V

    .line 837
    return-void

    .line 835
    :catchall_18
    move-exception v0

    :try_start_19
    monitor-exit v1
    :try_end_1a
    .catchall {:try_start_19 .. :try_end_1a} :catchall_18

    throw v0
.end method

.method public setQueueTitle(Ljava/lang/CharSequence;)V
    .registers 4
    .param p1, "title"    # Ljava/lang/CharSequence;

    .prologue
    .line 841
    iget-object v0, p0, this$0:Lcom/android/server/media/MediaSessionRecord;

    # setter for: Lcom/android/server/media/MediaSessionRecord;->mQueueTitle:Ljava/lang/CharSequence;
    invoke-static {v0, p1}, Lcom/android/server/media/MediaSessionRecord;->access$1902(Lcom/android/server/media/MediaSessionRecord;Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    .line 842
    iget-object v0, p0, this$0:Lcom/android/server/media/MediaSessionRecord;

    # getter for: Lcom/android/server/media/MediaSessionRecord;->mHandler:Lcom/android/server/media/MediaSessionRecord$MessageHandler;
    invoke-static {v0}, Lcom/android/server/media/MediaSessionRecord;->access$700(Lcom/android/server/media/MediaSessionRecord;)Lcom/android/server/media/MediaSessionRecord$MessageHandler;

    move-result-object v0

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/android/server/media/MediaSessionRecord$MessageHandler;->post(I)V

    .line 843
    return-void
.end method

.method public setRatingType(I)V
    .registers 3
    .param p1, "type"    # I

    .prologue
    .line 855
    iget-object v0, p0, this$0:Lcom/android/server/media/MediaSessionRecord;

    # setter for: Lcom/android/server/media/MediaSessionRecord;->mRatingType:I
    invoke-static {v0, p1}, Lcom/android/server/media/MediaSessionRecord;->access$2102(Lcom/android/server/media/MediaSessionRecord;I)I

    .line 856
    return-void
.end method
