.class Lcom/android/server/media/MediaSessionRecord$ControllerStub;
.super Landroid/media/session/ISessionController$Stub;
.source "MediaSessionRecord.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/media/MediaSessionRecord;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "ControllerStub"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/media/MediaSessionRecord;


# direct methods
.method constructor <init>(Lcom/android/server/media/MediaSessionRecord;)V
    .registers 2

    .prologue
    .line 1057
    iput-object p1, p0, this$0:Lcom/android/server/media/MediaSessionRecord;

    invoke-direct {p0}, Landroid/media/session/ISessionController$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public adjustVolume(IILjava/lang/String;)V
    .registers 12
    .param p1, "direction"    # I
    .param p2, "flags"    # I
    .param p3, "packageName"    # Ljava/lang/String;

    .prologue
    .line 1168
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v4

    .line 1169
    .local v4, "uid":I
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v6

    .line 1171
    .local v6, "token":J
    :try_start_8
    iget-object v0, p0, this$0:Lcom/android/server/media/MediaSessionRecord;

    const/4 v5, 0x0

    move v1, p1

    move v2, p2

    move-object v3, p3

    invoke-virtual/range {v0 .. v5}, Lcom/android/server/media/MediaSessionRecord;->adjustVolume(IILjava/lang/String;IZ)V
    :try_end_11
    .catchall {:try_start_8 .. :try_end_11} :catchall_15

    .line 1173
    invoke-static {v6, v7}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1175
    return-void

    .line 1173
    :catchall_15
    move-exception v0

    invoke-static {v6, v7}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v0
.end method

.method public fastForward()V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 1236
    iget-object v0, p0, this$0:Lcom/android/server/media/MediaSessionRecord;

    # getter for: Lcom/android/server/media/MediaSessionRecord;->mSessionCb:Lcom/android/server/media/MediaSessionRecord$SessionCb;
    invoke-static {v0}, Lcom/android/server/media/MediaSessionRecord;->access$2600(Lcom/android/server/media/MediaSessionRecord;)Lcom/android/server/media/MediaSessionRecord$SessionCb;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/media/MediaSessionRecord$SessionCb;->fastForward()V

    .line 1237
    return-void
.end method

.method public getExtras()Landroid/os/Bundle;
    .registers 3

    .prologue
    .line 1287
    iget-object v0, p0, this$0:Lcom/android/server/media/MediaSessionRecord;

    # getter for: Lcom/android/server/media/MediaSessionRecord;->mLock:Ljava/lang/Object;
    invoke-static {v0}, Lcom/android/server/media/MediaSessionRecord;->access$1300(Lcom/android/server/media/MediaSessionRecord;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    .line 1288
    :try_start_7
    iget-object v0, p0, this$0:Lcom/android/server/media/MediaSessionRecord;

    # getter for: Lcom/android/server/media/MediaSessionRecord;->mExtras:Landroid/os/Bundle;
    invoke-static {v0}, Lcom/android/server/media/MediaSessionRecord;->access$2000(Lcom/android/server/media/MediaSessionRecord;)Landroid/os/Bundle;

    move-result-object v0

    monitor-exit v1

    return-object v0

    .line 1289
    :catchall_f
    move-exception v0

    monitor-exit v1
    :try_end_11
    .catchall {:try_start_7 .. :try_end_11} :catchall_f

    throw v0
.end method

.method public getFlags()J
    .registers 3

    .prologue
    .line 1143
    iget-object v0, p0, this$0:Lcom/android/server/media/MediaSessionRecord;

    # getter for: Lcom/android/server/media/MediaSessionRecord;->mFlags:J
    invoke-static {v0}, Lcom/android/server/media/MediaSessionRecord;->access$1000(Lcom/android/server/media/MediaSessionRecord;)J

    move-result-wide v0

    return-wide v0
.end method

.method public getLaunchPendingIntent()Landroid/app/PendingIntent;
    .registers 2

    .prologue
    .line 1138
    iget-object v0, p0, this$0:Lcom/android/server/media/MediaSessionRecord;

    # getter for: Lcom/android/server/media/MediaSessionRecord;->mLaunchIntent:Landroid/app/PendingIntent;
    invoke-static {v0}, Lcom/android/server/media/MediaSessionRecord;->access$1200(Lcom/android/server/media/MediaSessionRecord;)Landroid/app/PendingIntent;

    move-result-object v0

    return-object v0
.end method

.method public getMetadata()Landroid/media/MediaMetadata;
    .registers 3

    .prologue
    .line 1263
    iget-object v0, p0, this$0:Lcom/android/server/media/MediaSessionRecord;

    # getter for: Lcom/android/server/media/MediaSessionRecord;->mLock:Ljava/lang/Object;
    invoke-static {v0}, Lcom/android/server/media/MediaSessionRecord;->access$1300(Lcom/android/server/media/MediaSessionRecord;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    .line 1264
    :try_start_7
    iget-object v0, p0, this$0:Lcom/android/server/media/MediaSessionRecord;

    # getter for: Lcom/android/server/media/MediaSessionRecord;->mMetadata:Landroid/media/MediaMetadata;
    invoke-static {v0}, Lcom/android/server/media/MediaSessionRecord;->access$1400(Lcom/android/server/media/MediaSessionRecord;)Landroid/media/MediaMetadata;

    move-result-object v0

    monitor-exit v1

    return-object v0

    .line 1265
    :catchall_f
    move-exception v0

    monitor-exit v1
    :try_end_11
    .catchall {:try_start_7 .. :try_end_11} :catchall_f

    throw v0
.end method

.method public getPackageName()Ljava/lang/String;
    .registers 2

    .prologue
    .line 1128
    iget-object v0, p0, this$0:Lcom/android/server/media/MediaSessionRecord;

    # getter for: Lcom/android/server/media/MediaSessionRecord;->mPackageName:Ljava/lang/String;
    invoke-static {v0}, Lcom/android/server/media/MediaSessionRecord;->access$1600(Lcom/android/server/media/MediaSessionRecord;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getPlaybackState()Landroid/media/session/PlaybackState;
    .registers 2

    .prologue
    .line 1270
    iget-object v0, p0, this$0:Lcom/android/server/media/MediaSessionRecord;

    # invokes: Lcom/android/server/media/MediaSessionRecord;->getStateWithUpdatedPosition()Landroid/media/session/PlaybackState;
    invoke-static {v0}, Lcom/android/server/media/MediaSessionRecord;->access$3400(Lcom/android/server/media/MediaSessionRecord;)Landroid/media/session/PlaybackState;

    move-result-object v0

    return-object v0
.end method

.method public getQueue()Landroid/content/pm/ParceledListSlice;
    .registers 3

    .prologue
    .line 1275
    iget-object v0, p0, this$0:Lcom/android/server/media/MediaSessionRecord;

    # getter for: Lcom/android/server/media/MediaSessionRecord;->mLock:Ljava/lang/Object;
    invoke-static {v0}, Lcom/android/server/media/MediaSessionRecord;->access$1300(Lcom/android/server/media/MediaSessionRecord;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    .line 1276
    :try_start_7
    iget-object v0, p0, this$0:Lcom/android/server/media/MediaSessionRecord;

    # getter for: Lcom/android/server/media/MediaSessionRecord;->mQueue:Landroid/content/pm/ParceledListSlice;
    invoke-static {v0}, Lcom/android/server/media/MediaSessionRecord;->access$1800(Lcom/android/server/media/MediaSessionRecord;)Landroid/content/pm/ParceledListSlice;

    move-result-object v0

    monitor-exit v1

    return-object v0

    .line 1277
    :catchall_f
    move-exception v0

    monitor-exit v1
    :try_end_11
    .catchall {:try_start_7 .. :try_end_11} :catchall_f

    throw v0
.end method

.method public getQueueTitle()Ljava/lang/CharSequence;
    .registers 2

    .prologue
    .line 1282
    iget-object v0, p0, this$0:Lcom/android/server/media/MediaSessionRecord;

    # getter for: Lcom/android/server/media/MediaSessionRecord;->mQueueTitle:Ljava/lang/CharSequence;
    invoke-static {v0}, Lcom/android/server/media/MediaSessionRecord;->access$1900(Lcom/android/server/media/MediaSessionRecord;)Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0
.end method

.method public getRatingType()I
    .registers 2

    .prologue
    .line 1294
    iget-object v0, p0, this$0:Lcom/android/server/media/MediaSessionRecord;

    # getter for: Lcom/android/server/media/MediaSessionRecord;->mRatingType:I
    invoke-static {v0}, Lcom/android/server/media/MediaSessionRecord;->access$2100(Lcom/android/server/media/MediaSessionRecord;)I

    move-result v0

    return v0
.end method

.method public getTag()Ljava/lang/String;
    .registers 2

    .prologue
    .line 1133
    iget-object v0, p0, this$0:Lcom/android/server/media/MediaSessionRecord;

    # getter for: Lcom/android/server/media/MediaSessionRecord;->mTag:Ljava/lang/String;
    invoke-static {v0}, Lcom/android/server/media/MediaSessionRecord;->access$3200(Lcom/android/server/media/MediaSessionRecord;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getVolumeAttributes()Landroid/media/session/ParcelableVolumeInfo;
    .registers 10

    .prologue
    const/4 v3, 0x2

    .line 1150
    iget-object v0, p0, this$0:Lcom/android/server/media/MediaSessionRecord;

    # getter for: Lcom/android/server/media/MediaSessionRecord;->mLock:Ljava/lang/Object;
    invoke-static {v0}, Lcom/android/server/media/MediaSessionRecord;->access$1300(Lcom/android/server/media/MediaSessionRecord;)Ljava/lang/Object;

    move-result-object v7

    monitor-enter v7

    .line 1151
    :try_start_8
    iget-object v0, p0, this$0:Lcom/android/server/media/MediaSessionRecord;

    # getter for: Lcom/android/server/media/MediaSessionRecord;->mVolumeType:I
    invoke-static {v0}, Lcom/android/server/media/MediaSessionRecord;->access$2200(Lcom/android/server/media/MediaSessionRecord;)I

    move-result v0

    if-ne v0, v3, :cond_45

    .line 1152
    iget-object v0, p0, this$0:Lcom/android/server/media/MediaSessionRecord;

    # getter for: Lcom/android/server/media/MediaSessionRecord;->mOptimisticVolume:I
    invoke-static {v0}, Lcom/android/server/media/MediaSessionRecord;->access$300(Lcom/android/server/media/MediaSessionRecord;)I

    move-result v0

    const/4 v3, -0x1

    if-eq v0, v3, :cond_3e

    iget-object v0, p0, this$0:Lcom/android/server/media/MediaSessionRecord;

    # getter for: Lcom/android/server/media/MediaSessionRecord;->mOptimisticVolume:I
    invoke-static {v0}, Lcom/android/server/media/MediaSessionRecord;->access$300(Lcom/android/server/media/MediaSessionRecord;)I

    move-result v5

    .line 1153
    .local v5, "current":I
    :goto_1f
    new-instance v0, Landroid/media/session/ParcelableVolumeInfo;

    iget-object v3, p0, this$0:Lcom/android/server/media/MediaSessionRecord;

    # getter for: Lcom/android/server/media/MediaSessionRecord;->mVolumeType:I
    invoke-static {v3}, Lcom/android/server/media/MediaSessionRecord;->access$2200(Lcom/android/server/media/MediaSessionRecord;)I

    move-result v1

    iget-object v3, p0, this$0:Lcom/android/server/media/MediaSessionRecord;

    # getter for: Lcom/android/server/media/MediaSessionRecord;->mAudioAttrs:Landroid/media/AudioAttributes;
    invoke-static {v3}, Lcom/android/server/media/MediaSessionRecord;->access$2300(Lcom/android/server/media/MediaSessionRecord;)Landroid/media/AudioAttributes;

    move-result-object v2

    iget-object v3, p0, this$0:Lcom/android/server/media/MediaSessionRecord;

    # getter for: Lcom/android/server/media/MediaSessionRecord;->mVolumeControlType:I
    invoke-static {v3}, Lcom/android/server/media/MediaSessionRecord;->access$2400(Lcom/android/server/media/MediaSessionRecord;)I

    move-result v3

    iget-object v8, p0, this$0:Lcom/android/server/media/MediaSessionRecord;

    # getter for: Lcom/android/server/media/MediaSessionRecord;->mMaxVolume:I
    invoke-static {v8}, Lcom/android/server/media/MediaSessionRecord;->access$2500(Lcom/android/server/media/MediaSessionRecord;)I

    move-result v4

    invoke-direct/range {v0 .. v5}, Landroid/media/session/ParcelableVolumeInfo;-><init>(ILandroid/media/AudioAttributes;III)V

    monitor-exit v7

    .line 1162
    :goto_3d
    return-object v0

    .line 1152
    .end local v5    # "current":I
    :cond_3e
    iget-object v0, p0, this$0:Lcom/android/server/media/MediaSessionRecord;

    # getter for: Lcom/android/server/media/MediaSessionRecord;->mCurrentVolume:I
    invoke-static {v0}, Lcom/android/server/media/MediaSessionRecord;->access$400(Lcom/android/server/media/MediaSessionRecord;)I

    move-result v5

    goto :goto_1f

    .line 1156
    :cond_45
    iget-object v0, p0, this$0:Lcom/android/server/media/MediaSessionRecord;

    # getter for: Lcom/android/server/media/MediaSessionRecord;->mVolumeType:I
    invoke-static {v0}, Lcom/android/server/media/MediaSessionRecord;->access$2200(Lcom/android/server/media/MediaSessionRecord;)I

    move-result v1

    .line 1157
    .local v1, "volumeType":I
    iget-object v0, p0, this$0:Lcom/android/server/media/MediaSessionRecord;

    # getter for: Lcom/android/server/media/MediaSessionRecord;->mAudioAttrs:Landroid/media/AudioAttributes;
    invoke-static {v0}, Lcom/android/server/media/MediaSessionRecord;->access$2300(Lcom/android/server/media/MediaSessionRecord;)Landroid/media/AudioAttributes;

    move-result-object v2

    .line 1158
    .local v2, "attributes":Landroid/media/AudioAttributes;
    monitor-exit v7
    :try_end_52
    .catchall {:try_start_8 .. :try_end_52} :catchall_70

    .line 1159
    invoke-static {v2}, Landroid/media/AudioAttributes;->toLegacyStreamType(Landroid/media/AudioAttributes;)I

    move-result v6

    .line 1160
    .local v6, "stream":I
    iget-object v0, p0, this$0:Lcom/android/server/media/MediaSessionRecord;

    # getter for: Lcom/android/server/media/MediaSessionRecord;->mAudioManager:Landroid/media/AudioManager;
    invoke-static {v0}, Lcom/android/server/media/MediaSessionRecord;->access$3300(Lcom/android/server/media/MediaSessionRecord;)Landroid/media/AudioManager;

    move-result-object v0

    invoke-virtual {v0, v6}, Landroid/media/AudioManager;->getStreamMaxVolume(I)I

    move-result v4

    .line 1161
    .local v4, "max":I
    iget-object v0, p0, this$0:Lcom/android/server/media/MediaSessionRecord;

    # getter for: Lcom/android/server/media/MediaSessionRecord;->mAudioManager:Landroid/media/AudioManager;
    invoke-static {v0}, Lcom/android/server/media/MediaSessionRecord;->access$3300(Lcom/android/server/media/MediaSessionRecord;)Landroid/media/AudioManager;

    move-result-object v0

    invoke-virtual {v0, v6}, Landroid/media/AudioManager;->getStreamVolume(I)I

    move-result v5

    .line 1162
    .restart local v5    # "current":I
    new-instance v0, Landroid/media/session/ParcelableVolumeInfo;

    invoke-direct/range {v0 .. v5}, Landroid/media/session/ParcelableVolumeInfo;-><init>(ILandroid/media/AudioAttributes;III)V

    goto :goto_3d

    .line 1158
    .end local v1    # "volumeType":I
    .end local v2    # "attributes":Landroid/media/AudioAttributes;
    .end local v4    # "max":I
    .end local v5    # "current":I
    .end local v6    # "stream":I
    :catchall_70
    move-exception v0

    :try_start_71
    monitor-exit v7
    :try_end_72
    .catchall {:try_start_71 .. :try_end_72} :catchall_70

    throw v0
.end method

.method public isTransportControlEnabled()Z
    .registers 2

    .prologue
    .line 1299
    iget-object v0, p0, this$0:Lcom/android/server/media/MediaSessionRecord;

    invoke-virtual {v0}, Lcom/android/server/media/MediaSessionRecord;->isTransportControlEnabled()Z

    move-result v0

    return v0
.end method

.method public next()V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 1226
    iget-object v0, p0, this$0:Lcom/android/server/media/MediaSessionRecord;

    # getter for: Lcom/android/server/media/MediaSessionRecord;->mSessionCb:Lcom/android/server/media/MediaSessionRecord$SessionCb;
    invoke-static {v0}, Lcom/android/server/media/MediaSessionRecord;->access$2600(Lcom/android/server/media/MediaSessionRecord;)Lcom/android/server/media/MediaSessionRecord$SessionCb;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/media/MediaSessionRecord$SessionCb;->next()V

    .line 1227
    return-void
.end method

.method public pause()V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 1216
    iget-object v0, p0, this$0:Lcom/android/server/media/MediaSessionRecord;

    # getter for: Lcom/android/server/media/MediaSessionRecord;->mSessionCb:Lcom/android/server/media/MediaSessionRecord$SessionCb;
    invoke-static {v0}, Lcom/android/server/media/MediaSessionRecord;->access$2600(Lcom/android/server/media/MediaSessionRecord;)Lcom/android/server/media/MediaSessionRecord$SessionCb;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/media/MediaSessionRecord$SessionCb;->pause()V

    .line 1217
    return-void
.end method

.method public play()V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 1190
    iget-object v0, p0, this$0:Lcom/android/server/media/MediaSessionRecord;

    # getter for: Lcom/android/server/media/MediaSessionRecord;->mSessionCb:Lcom/android/server/media/MediaSessionRecord$SessionCb;
    invoke-static {v0}, Lcom/android/server/media/MediaSessionRecord;->access$2600(Lcom/android/server/media/MediaSessionRecord;)Lcom/android/server/media/MediaSessionRecord$SessionCb;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/media/MediaSessionRecord$SessionCb;->play()V

    .line 1191
    return-void
.end method

.method public playFromMediaId(Ljava/lang/String;Landroid/os/Bundle;)V
    .registers 4
    .param p1, "mediaId"    # Ljava/lang/String;
    .param p2, "extras"    # Landroid/os/Bundle;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 1195
    iget-object v0, p0, this$0:Lcom/android/server/media/MediaSessionRecord;

    # getter for: Lcom/android/server/media/MediaSessionRecord;->mSessionCb:Lcom/android/server/media/MediaSessionRecord$SessionCb;
    invoke-static {v0}, Lcom/android/server/media/MediaSessionRecord;->access$2600(Lcom/android/server/media/MediaSessionRecord;)Lcom/android/server/media/MediaSessionRecord$SessionCb;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/android/server/media/MediaSessionRecord$SessionCb;->playFromMediaId(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 1196
    return-void
.end method

.method public playFromSearch(Ljava/lang/String;Landroid/os/Bundle;)V
    .registers 4
    .param p1, "query"    # Ljava/lang/String;
    .param p2, "extras"    # Landroid/os/Bundle;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 1200
    iget-object v0, p0, this$0:Lcom/android/server/media/MediaSessionRecord;

    # getter for: Lcom/android/server/media/MediaSessionRecord;->mSessionCb:Lcom/android/server/media/MediaSessionRecord$SessionCb;
    invoke-static {v0}, Lcom/android/server/media/MediaSessionRecord;->access$2600(Lcom/android/server/media/MediaSessionRecord;)Lcom/android/server/media/MediaSessionRecord$SessionCb;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/android/server/media/MediaSessionRecord$SessionCb;->playFromSearch(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 1201
    return-void
.end method

.method public playFromUri(Landroid/net/Uri;Landroid/os/Bundle;)V
    .registers 4
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "extras"    # Landroid/os/Bundle;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 1205
    iget-object v0, p0, this$0:Lcom/android/server/media/MediaSessionRecord;

    # getter for: Lcom/android/server/media/MediaSessionRecord;->mSessionCb:Lcom/android/server/media/MediaSessionRecord$SessionCb;
    invoke-static {v0}, Lcom/android/server/media/MediaSessionRecord;->access$2600(Lcom/android/server/media/MediaSessionRecord;)Lcom/android/server/media/MediaSessionRecord$SessionCb;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/android/server/media/MediaSessionRecord$SessionCb;->playFromUri(Landroid/net/Uri;Landroid/os/Bundle;)V

    .line 1206
    return-void
.end method

.method public previous()V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 1231
    iget-object v0, p0, this$0:Lcom/android/server/media/MediaSessionRecord;

    # getter for: Lcom/android/server/media/MediaSessionRecord;->mSessionCb:Lcom/android/server/media/MediaSessionRecord$SessionCb;
    invoke-static {v0}, Lcom/android/server/media/MediaSessionRecord;->access$2600(Lcom/android/server/media/MediaSessionRecord;)Lcom/android/server/media/MediaSessionRecord$SessionCb;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/media/MediaSessionRecord$SessionCb;->previous()V

    .line 1232
    return-void
.end method

.method public rate(Landroid/media/Rating;)V
    .registers 3
    .param p1, "rating"    # Landroid/media/Rating;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 1251
    iget-object v0, p0, this$0:Lcom/android/server/media/MediaSessionRecord;

    # getter for: Lcom/android/server/media/MediaSessionRecord;->mSessionCb:Lcom/android/server/media/MediaSessionRecord$SessionCb;
    invoke-static {v0}, Lcom/android/server/media/MediaSessionRecord;->access$2600(Lcom/android/server/media/MediaSessionRecord;)Lcom/android/server/media/MediaSessionRecord$SessionCb;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/server/media/MediaSessionRecord$SessionCb;->rate(Landroid/media/Rating;)V

    .line 1252
    return-void
.end method

.method public registerCallbackListener(Landroid/media/session/ISessionControllerCallback;)V
    .registers 4
    .param p1, "cb"    # Landroid/media/session/ISessionControllerCallback;

    .prologue
    .line 1071
    iget-object v0, p0, this$0:Lcom/android/server/media/MediaSessionRecord;

    # getter for: Lcom/android/server/media/MediaSessionRecord;->mLock:Ljava/lang/Object;
    invoke-static {v0}, Lcom/android/server/media/MediaSessionRecord;->access$1300(Lcom/android/server/media/MediaSessionRecord;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    .line 1074
    :try_start_7
    iget-object v0, p0, this$0:Lcom/android/server/media/MediaSessionRecord;

    # getter for: Lcom/android/server/media/MediaSessionRecord;->mDestroyed:Z
    invoke-static {v0}, Lcom/android/server/media/MediaSessionRecord;->access$2700(Lcom/android/server/media/MediaSessionRecord;)Z
    :try_end_c
    .catchall {:try_start_7 .. :try_end_c} :catchall_27

    move-result v0

    if-eqz v0, :cond_14

    .line 1076
    :try_start_f
    invoke-interface {p1}, Landroid/media/session/ISessionControllerCallback;->onSessionDestroyed()V
    :try_end_12
    .catch Ljava/lang/Exception; {:try_start_f .. :try_end_12} :catch_2a
    .catchall {:try_start_f .. :try_end_12} :catchall_27

    .line 1080
    :goto_12
    :try_start_12
    monitor-exit v1

    .line 1089
    :goto_13
    return-void

    .line 1082
    :cond_14
    iget-object v0, p0, this$0:Lcom/android/server/media/MediaSessionRecord;

    # invokes: Lcom/android/server/media/MediaSessionRecord;->getControllerCbIndexForCb(Landroid/media/session/ISessionControllerCallback;)I
    invoke-static {v0, p1}, Lcom/android/server/media/MediaSessionRecord;->access$2800(Lcom/android/server/media/MediaSessionRecord;Landroid/media/session/ISessionControllerCallback;)I

    move-result v0

    if-gez v0, :cond_25

    .line 1083
    iget-object v0, p0, this$0:Lcom/android/server/media/MediaSessionRecord;

    # getter for: Lcom/android/server/media/MediaSessionRecord;->mControllerCallbacks:Ljava/util/ArrayList;
    invoke-static {v0}, Lcom/android/server/media/MediaSessionRecord;->access$2900(Lcom/android/server/media/MediaSessionRecord;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1088
    :cond_25
    monitor-exit v1

    goto :goto_13

    :catchall_27
    move-exception v0

    monitor-exit v1
    :try_end_29
    .catchall {:try_start_12 .. :try_end_29} :catchall_27

    throw v0

    .line 1077
    :catch_2a
    move-exception v0

    goto :goto_12
.end method

.method public releaseLock()V
    .registers 4

    .prologue
    .line 1117
    const-string v0, "MediaSessionRecord"

    const-string/jumbo v1, "releaseLock"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1118
    iget-object v0, p0, this$0:Lcom/android/server/media/MediaSessionRecord;

    # getter for: Lcom/android/server/media/MediaSessionRecord;->mLockForDualScreen:Ljava/lang/Object;
    invoke-static {v0}, Lcom/android/server/media/MediaSessionRecord;->access$3000(Lcom/android/server/media/MediaSessionRecord;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    .line 1119
    :try_start_f
    iget-object v0, p0, this$0:Lcom/android/server/media/MediaSessionRecord;

    # getter for: Lcom/android/server/media/MediaSessionRecord;->isRequestLockCalled:Z
    invoke-static {v0}, Lcom/android/server/media/MediaSessionRecord;->access$3100(Lcom/android/server/media/MediaSessionRecord;)Z

    move-result v0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_27

    .line 1120
    iget-object v0, p0, this$0:Lcom/android/server/media/MediaSessionRecord;

    # getter for: Lcom/android/server/media/MediaSessionRecord;->mLockForDualScreen:Ljava/lang/Object;
    invoke-static {v0}, Lcom/android/server/media/MediaSessionRecord;->access$3000(Lcom/android/server/media/MediaSessionRecord;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->notify()V

    .line 1121
    iget-object v0, p0, this$0:Lcom/android/server/media/MediaSessionRecord;

    const/4 v2, 0x0

    # setter for: Lcom/android/server/media/MediaSessionRecord;->isRequestLockCalled:Z
    invoke-static {v0, v2}, Lcom/android/server/media/MediaSessionRecord;->access$3102(Lcom/android/server/media/MediaSessionRecord;Z)Z

    .line 1123
    :cond_27
    monitor-exit v1

    .line 1124
    return-void

    .line 1123
    :catchall_29
    move-exception v0

    monitor-exit v1
    :try_end_2b
    .catchall {:try_start_f .. :try_end_2b} :catchall_29

    throw v0
.end method

.method public requestLock()V
    .registers 4

    .prologue
    .line 1108
    const-string v0, "MediaSessionRecord"

    const-string/jumbo v1, "requestLock"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1109
    iget-object v0, p0, this$0:Lcom/android/server/media/MediaSessionRecord;

    # getter for: Lcom/android/server/media/MediaSessionRecord;->mLockForDualScreen:Ljava/lang/Object;
    invoke-static {v0}, Lcom/android/server/media/MediaSessionRecord;->access$3000(Lcom/android/server/media/MediaSessionRecord;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    .line 1110
    :try_start_f
    iget-object v0, p0, this$0:Lcom/android/server/media/MediaSessionRecord;

    const/4 v2, 0x1

    # setter for: Lcom/android/server/media/MediaSessionRecord;->isRequestLockCalled:Z
    invoke-static {v0, v2}, Lcom/android/server/media/MediaSessionRecord;->access$3102(Lcom/android/server/media/MediaSessionRecord;Z)Z

    .line 1111
    monitor-exit v1

    .line 1112
    return-void

    .line 1111
    :catchall_17
    move-exception v0

    monitor-exit v1
    :try_end_19
    .catchall {:try_start_f .. :try_end_19} :catchall_17

    throw v0
.end method

.method public rewind()V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 1241
    iget-object v0, p0, this$0:Lcom/android/server/media/MediaSessionRecord;

    # getter for: Lcom/android/server/media/MediaSessionRecord;->mSessionCb:Lcom/android/server/media/MediaSessionRecord$SessionCb;
    invoke-static {v0}, Lcom/android/server/media/MediaSessionRecord;->access$2600(Lcom/android/server/media/MediaSessionRecord;)Lcom/android/server/media/MediaSessionRecord$SessionCb;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/media/MediaSessionRecord$SessionCb;->rewind()V

    .line 1242
    return-void
.end method

.method public seekTo(J)V
    .registers 4
    .param p1, "pos"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 1246
    iget-object v0, p0, this$0:Lcom/android/server/media/MediaSessionRecord;

    # getter for: Lcom/android/server/media/MediaSessionRecord;->mSessionCb:Lcom/android/server/media/MediaSessionRecord$SessionCb;
    invoke-static {v0}, Lcom/android/server/media/MediaSessionRecord;->access$2600(Lcom/android/server/media/MediaSessionRecord;)Lcom/android/server/media/MediaSessionRecord$SessionCb;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/android/server/media/MediaSessionRecord$SessionCb;->seekTo(J)V

    .line 1247
    return-void
.end method

.method public sendCommand(Ljava/lang/String;Landroid/os/Bundle;Landroid/os/ResultReceiver;)V
    .registers 5
    .param p1, "command"    # Ljava/lang/String;
    .param p2, "args"    # Landroid/os/Bundle;
    .param p3, "cb"    # Landroid/os/ResultReceiver;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 1061
    iget-object v0, p0, this$0:Lcom/android/server/media/MediaSessionRecord;

    # getter for: Lcom/android/server/media/MediaSessionRecord;->mSessionCb:Lcom/android/server/media/MediaSessionRecord$SessionCb;
    invoke-static {v0}, Lcom/android/server/media/MediaSessionRecord;->access$2600(Lcom/android/server/media/MediaSessionRecord;)Lcom/android/server/media/MediaSessionRecord$SessionCb;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/server/media/MediaSessionRecord$SessionCb;->sendCommand(Ljava/lang/String;Landroid/os/Bundle;Landroid/os/ResultReceiver;)V

    .line 1062
    return-void
.end method

.method public sendCustomAction(Ljava/lang/String;Landroid/os/Bundle;)V
    .registers 4
    .param p1, "action"    # Ljava/lang/String;
    .param p2, "args"    # Landroid/os/Bundle;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 1257
    iget-object v0, p0, this$0:Lcom/android/server/media/MediaSessionRecord;

    # getter for: Lcom/android/server/media/MediaSessionRecord;->mSessionCb:Lcom/android/server/media/MediaSessionRecord$SessionCb;
    invoke-static {v0}, Lcom/android/server/media/MediaSessionRecord;->access$2600(Lcom/android/server/media/MediaSessionRecord;)Lcom/android/server/media/MediaSessionRecord$SessionCb;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/android/server/media/MediaSessionRecord$SessionCb;->sendCustomAction(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 1258
    return-void
.end method

.method public sendMediaButton(Landroid/view/KeyEvent;)Z
    .registers 5
    .param p1, "mediaButtonIntent"    # Landroid/view/KeyEvent;

    .prologue
    .line 1066
    iget-object v0, p0, this$0:Lcom/android/server/media/MediaSessionRecord;

    # getter for: Lcom/android/server/media/MediaSessionRecord;->mSessionCb:Lcom/android/server/media/MediaSessionRecord$SessionCb;
    invoke-static {v0}, Lcom/android/server/media/MediaSessionRecord;->access$2600(Lcom/android/server/media/MediaSessionRecord;)Lcom/android/server/media/MediaSessionRecord$SessionCb;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-virtual {v0, p1, v1, v2}, Lcom/android/server/media/MediaSessionRecord$SessionCb;->sendMediaButton(Landroid/view/KeyEvent;ILandroid/os/ResultReceiver;)Z

    move-result v0

    return v0
.end method

.method public setVolumeTo(IILjava/lang/String;)V
    .registers 8
    .param p1, "value"    # I
    .param p2, "flags"    # I
    .param p3, "packageName"    # Ljava/lang/String;

    .prologue
    .line 1179
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v2

    .line 1180
    .local v2, "uid":I
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 1182
    .local v0, "token":J
    :try_start_8
    iget-object v3, p0, this$0:Lcom/android/server/media/MediaSessionRecord;

    invoke-virtual {v3, p1, p2, p3, v2}, Lcom/android/server/media/MediaSessionRecord;->setVolumeTo(IILjava/lang/String;I)V
    :try_end_d
    .catchall {:try_start_8 .. :try_end_d} :catchall_11

    .line 1184
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1186
    return-void

    .line 1184
    :catchall_11
    move-exception v3

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v3
.end method

.method public skipToQueueItem(J)V
    .registers 4
    .param p1, "id"    # J

    .prologue
    .line 1210
    iget-object v0, p0, this$0:Lcom/android/server/media/MediaSessionRecord;

    # getter for: Lcom/android/server/media/MediaSessionRecord;->mSessionCb:Lcom/android/server/media/MediaSessionRecord$SessionCb;
    invoke-static {v0}, Lcom/android/server/media/MediaSessionRecord;->access$2600(Lcom/android/server/media/MediaSessionRecord;)Lcom/android/server/media/MediaSessionRecord$SessionCb;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/android/server/media/MediaSessionRecord$SessionCb;->skipToTrack(J)V

    .line 1211
    return-void
.end method

.method public stop()V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 1221
    iget-object v0, p0, this$0:Lcom/android/server/media/MediaSessionRecord;

    # getter for: Lcom/android/server/media/MediaSessionRecord;->mSessionCb:Lcom/android/server/media/MediaSessionRecord$SessionCb;
    invoke-static {v0}, Lcom/android/server/media/MediaSessionRecord;->access$2600(Lcom/android/server/media/MediaSessionRecord;)Lcom/android/server/media/MediaSessionRecord$SessionCb;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/media/MediaSessionRecord$SessionCb;->stop()V

    .line 1222
    return-void
.end method

.method public unregisterCallbackListener(Landroid/media/session/ISessionControllerCallback;)V
    .registers 5
    .param p1, "cb"    # Landroid/media/session/ISessionControllerCallback;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 1094
    iget-object v1, p0, this$0:Lcom/android/server/media/MediaSessionRecord;

    # getter for: Lcom/android/server/media/MediaSessionRecord;->mLock:Ljava/lang/Object;
    invoke-static {v1}, Lcom/android/server/media/MediaSessionRecord;->access$1300(Lcom/android/server/media/MediaSessionRecord;)Ljava/lang/Object;

    move-result-object v2

    monitor-enter v2

    .line 1095
    :try_start_7
    iget-object v1, p0, this$0:Lcom/android/server/media/MediaSessionRecord;

    # invokes: Lcom/android/server/media/MediaSessionRecord;->getControllerCbIndexForCb(Landroid/media/session/ISessionControllerCallback;)I
    invoke-static {v1, p1}, Lcom/android/server/media/MediaSessionRecord;->access$2800(Lcom/android/server/media/MediaSessionRecord;Landroid/media/session/ISessionControllerCallback;)I

    move-result v0

    .line 1096
    .local v0, "index":I
    const/4 v1, -0x1

    if-eq v0, v1, :cond_19

    .line 1097
    iget-object v1, p0, this$0:Lcom/android/server/media/MediaSessionRecord;

    # getter for: Lcom/android/server/media/MediaSessionRecord;->mControllerCallbacks:Ljava/util/ArrayList;
    invoke-static {v1}, Lcom/android/server/media/MediaSessionRecord;->access$2900(Lcom/android/server/media/MediaSessionRecord;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 1102
    :cond_19
    monitor-exit v2

    .line 1103
    return-void

    .line 1102
    .end local v0    # "index":I
    :catchall_1b
    move-exception v1

    monitor-exit v2
    :try_end_1d
    .catchall {:try_start_7 .. :try_end_1d} :catchall_1b

    throw v1
.end method
