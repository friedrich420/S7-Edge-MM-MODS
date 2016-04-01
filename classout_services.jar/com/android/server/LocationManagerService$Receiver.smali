.class final Lcom/android/server/LocationManagerService$Receiver;
.super Ljava/lang/Object;
.source "LocationManagerService.java"

# interfaces
.implements Landroid/app/PendingIntent$OnFinished;
.implements Landroid/os/IBinder$DeathRecipient;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/LocationManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "Receiver"
.end annotation


# instance fields
.field final mAllowedResolutionLevel:I

.field final mHideFromAppOps:Z

.field final mKey:Ljava/lang/Object;

.field final mListener:Landroid/location/ILocationListener;

.field mOpHighPowerMonitoring:Z

.field mOpMonitoring:Z

.field final mPackageName:Ljava/lang/String;

.field mPendingBroadcasts:I

.field final mPendingIntent:Landroid/app/PendingIntent;

.field final mPid:I

.field final mUid:I

.field final mUpdateRecords:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/android/server/LocationManagerService$UpdateRecord;",
            ">;"
        }
    .end annotation
.end field

.field mWakeLock:Landroid/os/PowerManager$WakeLock;

.field final mWorkSource:Landroid/os/WorkSource;

.field final synthetic this$0:Lcom/android/server/LocationManagerService;


# direct methods
.method constructor <init>(Lcom/android/server/LocationManagerService;Landroid/location/ILocationListener;Landroid/app/PendingIntent;IILjava/lang/String;Landroid/os/WorkSource;Z)V
    .registers 12
    .param p2, "listener"    # Landroid/location/ILocationListener;
    .param p3, "intent"    # Landroid/app/PendingIntent;
    .param p4, "pid"    # I
    .param p5, "uid"    # I
    .param p6, "packageName"    # Ljava/lang/String;
    .param p7, "workSource"    # Landroid/os/WorkSource;
    .param p8, "hideFromAppOps"    # Z

    .prologue
    const/4 v2, 0x1

    .line 1003
    iput-object p1, p0, this$0:Lcom/android/server/LocationManagerService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 993
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, mUpdateRecords:Ljava/util/HashMap;

    .line 1004
    iput-object p2, p0, mListener:Landroid/location/ILocationListener;

    .line 1005
    iput-object p3, p0, mPendingIntent:Landroid/app/PendingIntent;

    .line 1006
    if-eqz p2, :cond_52

    .line 1007
    invoke-interface {p2}, Landroid/location/ILocationListener;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    iput-object v0, p0, mKey:Ljava/lang/Object;

    .line 1011
    :goto_19
    # invokes: Lcom/android/server/LocationManagerService;->getAllowedResolutionLevel(II)I
    invoke-static {p1, p4, p5}, Lcom/android/server/LocationManagerService;->access$1000(Lcom/android/server/LocationManagerService;II)I

    move-result v0

    iput v0, p0, mAllowedResolutionLevel:I

    .line 1012
    iput p5, p0, mUid:I

    .line 1013
    iput p4, p0, mPid:I

    .line 1014
    iput-object p6, p0, mPackageName:Ljava/lang/String;

    .line 1015
    if-eqz p7, :cond_2e

    invoke-virtual {p7}, Landroid/os/WorkSource;->size()I

    move-result v0

    if-gtz v0, :cond_2e

    .line 1016
    const/4 p7, 0x0

    .line 1018
    :cond_2e
    iput-object p7, p0, mWorkSource:Landroid/os/WorkSource;

    .line 1019
    iput-boolean p8, p0, mHideFromAppOps:Z

    .line 1021
    invoke-virtual {p0, v2}, updateMonitoring(Z)V

    .line 1024
    # getter for: Lcom/android/server/LocationManagerService;->mPowerManager:Landroid/os/PowerManager;
    invoke-static {p1}, Lcom/android/server/LocationManagerService;->access$1100(Lcom/android/server/LocationManagerService;)Landroid/os/PowerManager;

    move-result-object v0

    const-string v1, "LocationManagerService"

    invoke-virtual {v0, v2, v1}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v0

    iput-object v0, p0, mWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 1025
    if-nez p7, :cond_4c

    .line 1026
    new-instance p7, Landroid/os/WorkSource;

    .end local p7    # "workSource":Landroid/os/WorkSource;
    iget v0, p0, mUid:I

    iget-object v1, p0, mPackageName:Ljava/lang/String;

    invoke-direct {p7, v0, v1}, Landroid/os/WorkSource;-><init>(ILjava/lang/String;)V

    .line 1028
    .restart local p7    # "workSource":Landroid/os/WorkSource;
    :cond_4c
    iget-object v0, p0, mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0, p7}, Landroid/os/PowerManager$WakeLock;->setWorkSource(Landroid/os/WorkSource;)V

    .line 1029
    return-void

    .line 1009
    :cond_52
    iput-object p3, p0, mKey:Ljava/lang/Object;

    goto :goto_19
.end method

.method static synthetic access$1800(Lcom/android/server/LocationManagerService$Receiver;)V
    .registers 1
    .param p0, "x0"    # Lcom/android/server/LocationManagerService$Receiver;

    .prologue
    .line 981
    invoke-direct {p0}, decrementPendingBroadcastsLocked()V

    return-void
.end method

.method private decrementPendingBroadcastsLocked()V
    .registers 2

    .prologue
    .line 1293
    iget v0, p0, mPendingBroadcasts:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, mPendingBroadcasts:I

    if-nez v0, :cond_15

    .line 1294
    iget-object v0, p0, mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v0

    if-eqz v0, :cond_15

    .line 1295
    iget-object v0, p0, mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 1298
    :cond_15
    return-void
.end method

.method private incrementPendingBroadcastsLocked()V
    .registers 3

    .prologue
    .line 1287
    iget v0, p0, mPendingBroadcasts:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, mPendingBroadcasts:I

    if-nez v0, :cond_d

    .line 1288
    iget-object v0, p0, mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->acquire()V

    .line 1290
    :cond_d
    return-void
.end method

.method private updateMonitoring(ZZI)Z
    .registers 8
    .param p1, "allowMonitoring"    # Z
    .param p2, "currentlyMonitoring"    # Z
    .param p3, "op"    # I

    .prologue
    const/4 v0, 0x0

    .line 1122
    if-nez p2, :cond_17

    .line 1123
    if-eqz p1, :cond_37

    .line 1124
    iget-object v1, p0, this$0:Lcom/android/server/LocationManagerService;

    # getter for: Lcom/android/server/LocationManagerService;->mAppOps:Landroid/app/AppOpsManager;
    invoke-static {v1}, Lcom/android/server/LocationManagerService;->access$1400(Lcom/android/server/LocationManagerService;)Landroid/app/AppOpsManager;

    move-result-object v1

    iget v2, p0, mUid:I

    iget-object v3, p0, mPackageName:Ljava/lang/String;

    invoke-virtual {v1, p3, v2, v3}, Landroid/app/AppOpsManager;->startOpNoThrow(IILjava/lang/String;)I

    move-result v1

    if-nez v1, :cond_16

    const/4 v0, 0x1

    .line 1135
    :cond_16
    :goto_16
    return v0

    .line 1128
    :cond_17
    if-eqz p1, :cond_29

    iget-object v1, p0, this$0:Lcom/android/server/LocationManagerService;

    # getter for: Lcom/android/server/LocationManagerService;->mAppOps:Landroid/app/AppOpsManager;
    invoke-static {v1}, Lcom/android/server/LocationManagerService;->access$1400(Lcom/android/server/LocationManagerService;)Landroid/app/AppOpsManager;

    move-result-object v1

    iget v2, p0, mUid:I

    iget-object v3, p0, mPackageName:Ljava/lang/String;

    invoke-virtual {v1, p3, v2, v3}, Landroid/app/AppOpsManager;->checkOpNoThrow(IILjava/lang/String;)I

    move-result v1

    if-eqz v1, :cond_37

    .line 1130
    :cond_29
    iget-object v1, p0, this$0:Lcom/android/server/LocationManagerService;

    # getter for: Lcom/android/server/LocationManagerService;->mAppOps:Landroid/app/AppOpsManager;
    invoke-static {v1}, Lcom/android/server/LocationManagerService;->access$1400(Lcom/android/server/LocationManagerService;)Landroid/app/AppOpsManager;

    move-result-object v1

    iget v2, p0, mUid:I

    iget-object v3, p0, mPackageName:Ljava/lang/String;

    invoke-virtual {v1, p3, v2, v3}, Landroid/app/AppOpsManager;->finishOp(IILjava/lang/String;)V

    goto :goto_16

    :cond_37
    move v0, p2

    .line 1135
    goto :goto_16
.end method


# virtual methods
.method public binderDied()V
    .registers 3

    .prologue
    .line 1266
    sget-boolean v0, Lcom/android/server/LocationManagerService;->D:Z

    if-eqz v0, :cond_b

    const-string v0, "LocationManagerService"

    const-string v1, "Location listener died"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1268
    :cond_b
    iget-object v0, p0, this$0:Lcom/android/server/LocationManagerService;

    # getter for: Lcom/android/server/LocationManagerService;->mLock:Ljava/lang/Object;
    invoke-static {v0}, Lcom/android/server/LocationManagerService;->access$100(Lcom/android/server/LocationManagerService;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    .line 1269
    :try_start_12
    iget-object v0, p0, this$0:Lcom/android/server/LocationManagerService;

    # invokes: Lcom/android/server/LocationManagerService;->removeUpdatesLocked(Lcom/android/server/LocationManagerService$Receiver;)V
    invoke-static {v0, p0}, Lcom/android/server/LocationManagerService;->access$1700(Lcom/android/server/LocationManagerService;Lcom/android/server/LocationManagerService$Receiver;)V

    .line 1270
    monitor-exit v1
    :try_end_18
    .catchall {:try_start_12 .. :try_end_18} :catchall_1e

    .line 1271
    monitor-enter p0

    .line 1272
    :try_start_19
    invoke-virtual {p0}, clearPendingBroadcastsLocked()V

    .line 1273
    monitor-exit p0
    :try_end_1d
    .catchall {:try_start_19 .. :try_end_1d} :catchall_21

    .line 1274
    return-void

    .line 1270
    :catchall_1e
    move-exception v0

    :try_start_1f
    monitor-exit v1
    :try_end_20
    .catchall {:try_start_1f .. :try_end_20} :catchall_1e

    throw v0

    .line 1273
    :catchall_21
    move-exception v0

    :try_start_22
    monitor-exit p0
    :try_end_23
    .catchall {:try_start_22 .. :try_end_23} :catchall_21

    throw v0
.end method

.method public callLocationChangedLocked(Landroid/location/Location;)Z
    .registers 11
    .param p1, "location"    # Landroid/location/Location;

    .prologue
    const/4 v8, 0x0

    .line 1189
    iget-object v0, p0, mListener:Landroid/location/ILocationListener;

    if-eqz v0, :cond_1c

    .line 1191
    :try_start_5
    monitor-enter p0
    :try_end_6
    .catch Landroid/os/RemoteException; {:try_start_5 .. :try_end_6} :catch_19

    .line 1194
    :try_start_6
    iget-object v0, p0, mListener:Landroid/location/ILocationListener;

    new-instance v1, Landroid/location/Location;

    invoke-direct {v1, p1}, Landroid/location/Location;-><init>(Landroid/location/Location;)V

    invoke-interface {v0, v1}, Landroid/location/ILocationListener;->onLocationChanged(Landroid/location/Location;)V

    .line 1197
    invoke-direct {p0}, incrementPendingBroadcastsLocked()V

    .line 1198
    monitor-exit p0

    .line 1219
    :goto_14
    const/4 v0, 0x1

    :goto_15
    return v0

    .line 1198
    :catchall_16
    move-exception v0

    monitor-exit p0
    :try_end_18
    .catchall {:try_start_6 .. :try_end_18} :catchall_16

    :try_start_18
    throw v0
    :try_end_19
    .catch Landroid/os/RemoteException; {:try_start_18 .. :try_end_19} :catch_19

    .line 1199
    :catch_19
    move-exception v7

    .local v7, "e":Landroid/os/RemoteException;
    move v0, v8

    .line 1200
    goto :goto_15

    .line 1203
    .end local v7    # "e":Landroid/os/RemoteException;
    :cond_1c
    new-instance v3, Landroid/content/Intent;

    invoke-direct {v3}, Landroid/content/Intent;-><init>()V

    .line 1204
    .local v3, "locationChanged":Landroid/content/Intent;
    const-string/jumbo v0, "location"

    new-instance v1, Landroid/location/Location;

    invoke-direct {v1, p1}, Landroid/location/Location;-><init>(Landroid/location/Location;)V

    invoke-virtual {v3, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 1206
    :try_start_2c
    monitor-enter p0
    :try_end_2d
    .catch Landroid/app/PendingIntent$CanceledException; {:try_start_2c .. :try_end_2d} :catch_50

    .line 1209
    :try_start_2d
    iget-object v0, p0, mPendingIntent:Landroid/app/PendingIntent;

    iget-object v1, p0, this$0:Lcom/android/server/LocationManagerService;

    # getter for: Lcom/android/server/LocationManagerService;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/android/server/LocationManagerService;->access$000(Lcom/android/server/LocationManagerService;)Landroid/content/Context;

    move-result-object v1

    const/4 v2, 0x0

    iget-object v4, p0, this$0:Lcom/android/server/LocationManagerService;

    # getter for: Lcom/android/server/LocationManagerService;->mLocationHandler:Lcom/android/server/LocationManagerService$LocationWorkerHandler;
    invoke-static {v4}, Lcom/android/server/LocationManagerService;->access$1500(Lcom/android/server/LocationManagerService;)Lcom/android/server/LocationManagerService$LocationWorkerHandler;

    move-result-object v5

    iget-object v4, p0, this$0:Lcom/android/server/LocationManagerService;

    iget v6, p0, mAllowedResolutionLevel:I

    # invokes: Lcom/android/server/LocationManagerService;->getResolutionPermission(I)Ljava/lang/String;
    invoke-static {v4, v6}, Lcom/android/server/LocationManagerService;->access$1600(Lcom/android/server/LocationManagerService;I)Ljava/lang/String;

    move-result-object v6

    move-object v4, p0

    invoke-virtual/range {v0 .. v6}, Landroid/app/PendingIntent;->send(Landroid/content/Context;ILandroid/content/Intent;Landroid/app/PendingIntent$OnFinished;Landroid/os/Handler;Ljava/lang/String;)V

    .line 1213
    invoke-direct {p0}, incrementPendingBroadcastsLocked()V

    .line 1214
    monitor-exit p0

    goto :goto_14

    :catchall_4d
    move-exception v0

    monitor-exit p0
    :try_end_4f
    .catchall {:try_start_2d .. :try_end_4f} :catchall_4d

    :try_start_4f
    throw v0
    :try_end_50
    .catch Landroid/app/PendingIntent$CanceledException; {:try_start_4f .. :try_end_50} :catch_50

    .line 1215
    :catch_50
    move-exception v7

    .local v7, "e":Landroid/app/PendingIntent$CanceledException;
    move v0, v8

    .line 1216
    goto :goto_15
.end method

.method public callProviderEnabledLocked(Ljava/lang/String;Z)Z
    .registers 13
    .param p1, "provider"    # Ljava/lang/String;
    .param p2, "enabled"    # Z

    .prologue
    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 1225
    invoke-virtual {p0, v9}, updateMonitoring(Z)V

    .line 1227
    iget-object v0, p0, mListener:Landroid/location/ILocationListener;

    if-eqz v0, :cond_23

    .line 1229
    :try_start_9
    monitor-enter p0
    :try_end_a
    .catch Landroid/os/RemoteException; {:try_start_9 .. :try_end_a} :catch_20

    .line 1232
    if-eqz p2, :cond_17

    .line 1233
    :try_start_c
    iget-object v0, p0, mListener:Landroid/location/ILocationListener;

    invoke-interface {v0, p1}, Landroid/location/ILocationListener;->onProviderEnabled(Ljava/lang/String;)V

    .line 1239
    :goto_11
    invoke-direct {p0}, incrementPendingBroadcastsLocked()V

    .line 1240
    monitor-exit p0

    :goto_15
    move v0, v9

    .line 1261
    :goto_16
    return v0

    .line 1235
    :cond_17
    iget-object v0, p0, mListener:Landroid/location/ILocationListener;

    invoke-interface {v0, p1}, Landroid/location/ILocationListener;->onProviderDisabled(Ljava/lang/String;)V

    goto :goto_11

    .line 1240
    :catchall_1d
    move-exception v0

    monitor-exit p0
    :try_end_1f
    .catchall {:try_start_c .. :try_end_1f} :catchall_1d

    :try_start_1f
    throw v0
    :try_end_20
    .catch Landroid/os/RemoteException; {:try_start_1f .. :try_end_20} :catch_20

    .line 1241
    :catch_20
    move-exception v7

    .local v7, "e":Landroid/os/RemoteException;
    move v0, v8

    .line 1242
    goto :goto_16

    .line 1245
    .end local v7    # "e":Landroid/os/RemoteException;
    :cond_23
    new-instance v3, Landroid/content/Intent;

    invoke-direct {v3}, Landroid/content/Intent;-><init>()V

    .line 1246
    .local v3, "providerIntent":Landroid/content/Intent;
    const-string/jumbo v0, "providerEnabled"

    invoke-virtual {v3, v0, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 1248
    :try_start_2e
    monitor-enter p0
    :try_end_2f
    .catch Landroid/app/PendingIntent$CanceledException; {:try_start_2e .. :try_end_2f} :catch_52

    .line 1251
    :try_start_2f
    iget-object v0, p0, mPendingIntent:Landroid/app/PendingIntent;

    iget-object v1, p0, this$0:Lcom/android/server/LocationManagerService;

    # getter for: Lcom/android/server/LocationManagerService;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/android/server/LocationManagerService;->access$000(Lcom/android/server/LocationManagerService;)Landroid/content/Context;

    move-result-object v1

    const/4 v2, 0x0

    iget-object v4, p0, this$0:Lcom/android/server/LocationManagerService;

    # getter for: Lcom/android/server/LocationManagerService;->mLocationHandler:Lcom/android/server/LocationManagerService$LocationWorkerHandler;
    invoke-static {v4}, Lcom/android/server/LocationManagerService;->access$1500(Lcom/android/server/LocationManagerService;)Lcom/android/server/LocationManagerService$LocationWorkerHandler;

    move-result-object v5

    iget-object v4, p0, this$0:Lcom/android/server/LocationManagerService;

    iget v6, p0, mAllowedResolutionLevel:I

    # invokes: Lcom/android/server/LocationManagerService;->getResolutionPermission(I)Ljava/lang/String;
    invoke-static {v4, v6}, Lcom/android/server/LocationManagerService;->access$1600(Lcom/android/server/LocationManagerService;I)Ljava/lang/String;

    move-result-object v6

    move-object v4, p0

    invoke-virtual/range {v0 .. v6}, Landroid/app/PendingIntent;->send(Landroid/content/Context;ILandroid/content/Intent;Landroid/app/PendingIntent$OnFinished;Landroid/os/Handler;Ljava/lang/String;)V

    .line 1255
    invoke-direct {p0}, incrementPendingBroadcastsLocked()V

    .line 1256
    monitor-exit p0

    goto :goto_15

    :catchall_4f
    move-exception v0

    monitor-exit p0
    :try_end_51
    .catchall {:try_start_2f .. :try_end_51} :catchall_4f

    :try_start_51
    throw v0
    :try_end_52
    .catch Landroid/app/PendingIntent$CanceledException; {:try_start_51 .. :try_end_52} :catch_52

    .line 1257
    :catch_52
    move-exception v7

    .local v7, "e":Landroid/app/PendingIntent$CanceledException;
    move v0, v8

    .line 1258
    goto :goto_16
.end method

.method public callStatusChangedLocked(Ljava/lang/String;ILandroid/os/Bundle;)Z
    .registers 13
    .param p1, "provider"    # Ljava/lang/String;
    .param p2, "status"    # I
    .param p3, "extras"    # Landroid/os/Bundle;

    .prologue
    const/4 v8, 0x0

    .line 1154
    iget-object v0, p0, mListener:Landroid/location/ILocationListener;

    if-eqz v0, :cond_17

    .line 1156
    :try_start_5
    monitor-enter p0
    :try_end_6
    .catch Landroid/os/RemoteException; {:try_start_5 .. :try_end_6} :catch_14

    .line 1159
    :try_start_6
    iget-object v0, p0, mListener:Landroid/location/ILocationListener;

    invoke-interface {v0, p1, p2, p3}, Landroid/location/ILocationListener;->onStatusChanged(Ljava/lang/String;ILandroid/os/Bundle;)V

    .line 1162
    invoke-direct {p0}, incrementPendingBroadcastsLocked()V

    .line 1163
    monitor-exit p0

    .line 1185
    :goto_f
    const/4 v0, 0x1

    :goto_10
    return v0

    .line 1163
    :catchall_11
    move-exception v0

    monitor-exit p0
    :try_end_13
    .catchall {:try_start_6 .. :try_end_13} :catchall_11

    :try_start_13
    throw v0
    :try_end_14
    .catch Landroid/os/RemoteException; {:try_start_13 .. :try_end_14} :catch_14

    .line 1164
    :catch_14
    move-exception v7

    .local v7, "e":Landroid/os/RemoteException;
    move v0, v8

    .line 1165
    goto :goto_10

    .line 1168
    .end local v7    # "e":Landroid/os/RemoteException;
    :cond_17
    new-instance v3, Landroid/content/Intent;

    invoke-direct {v3}, Landroid/content/Intent;-><init>()V

    .line 1169
    .local v3, "statusChanged":Landroid/content/Intent;
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0, p3}, Landroid/os/Bundle;-><init>(Landroid/os/Bundle;)V

    invoke-virtual {v3, v0}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 1170
    const-string/jumbo v0, "status"

    invoke-virtual {v3, v0, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1172
    :try_start_2a
    monitor-enter p0
    :try_end_2b
    .catch Landroid/app/PendingIntent$CanceledException; {:try_start_2a .. :try_end_2b} :catch_4e

    .line 1175
    :try_start_2b
    iget-object v0, p0, mPendingIntent:Landroid/app/PendingIntent;

    iget-object v1, p0, this$0:Lcom/android/server/LocationManagerService;

    # getter for: Lcom/android/server/LocationManagerService;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/android/server/LocationManagerService;->access$000(Lcom/android/server/LocationManagerService;)Landroid/content/Context;

    move-result-object v1

    const/4 v2, 0x0

    iget-object v4, p0, this$0:Lcom/android/server/LocationManagerService;

    # getter for: Lcom/android/server/LocationManagerService;->mLocationHandler:Lcom/android/server/LocationManagerService$LocationWorkerHandler;
    invoke-static {v4}, Lcom/android/server/LocationManagerService;->access$1500(Lcom/android/server/LocationManagerService;)Lcom/android/server/LocationManagerService$LocationWorkerHandler;

    move-result-object v5

    iget-object v4, p0, this$0:Lcom/android/server/LocationManagerService;

    iget v6, p0, mAllowedResolutionLevel:I

    # invokes: Lcom/android/server/LocationManagerService;->getResolutionPermission(I)Ljava/lang/String;
    invoke-static {v4, v6}, Lcom/android/server/LocationManagerService;->access$1600(Lcom/android/server/LocationManagerService;I)Ljava/lang/String;

    move-result-object v6

    move-object v4, p0

    invoke-virtual/range {v0 .. v6}, Landroid/app/PendingIntent;->send(Landroid/content/Context;ILandroid/content/Intent;Landroid/app/PendingIntent$OnFinished;Landroid/os/Handler;Ljava/lang/String;)V

    .line 1179
    invoke-direct {p0}, incrementPendingBroadcastsLocked()V

    .line 1180
    monitor-exit p0

    goto :goto_f

    :catchall_4b
    move-exception v0

    monitor-exit p0
    :try_end_4d
    .catchall {:try_start_2b .. :try_end_4d} :catchall_4b

    :try_start_4d
    throw v0
    :try_end_4e
    .catch Landroid/app/PendingIntent$CanceledException; {:try_start_4d .. :try_end_4e} :catch_4e

    .line 1181
    :catch_4e
    move-exception v7

    .local v7, "e":Landroid/app/PendingIntent$CanceledException;
    move v0, v8

    .line 1182
    goto :goto_10
.end method

.method public clearPendingBroadcastsLocked()V
    .registers 2

    .prologue
    .line 1301
    iget v0, p0, mPendingBroadcasts:I

    if-lez v0, :cond_14

    .line 1302
    const/4 v0, 0x0

    iput v0, p0, mPendingBroadcasts:I

    .line 1303
    iget-object v0, p0, mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v0

    if-eqz v0, :cond_14

    .line 1304
    iget-object v0, p0, mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 1307
    :cond_14
    return-void
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 4
    .param p1, "otherObj"    # Ljava/lang/Object;

    .prologue
    .line 1033
    instance-of v0, p1, Lcom/android/server/LocationManagerService$Receiver;

    if-eqz v0, :cond_f

    .line 1034
    iget-object v0, p0, mKey:Ljava/lang/Object;

    check-cast p1, Lcom/android/server/LocationManagerService$Receiver;

    .end local p1    # "otherObj":Ljava/lang/Object;
    iget-object v1, p1, mKey:Ljava/lang/Object;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    .line 1036
    :goto_e
    return v0

    .restart local p1    # "otherObj":Ljava/lang/Object;
    :cond_f
    const/4 v0, 0x0

    goto :goto_e
.end method

.method public getListener()Landroid/location/ILocationListener;
    .registers 3

    .prologue
    .line 1147
    iget-object v0, p0, mListener:Landroid/location/ILocationListener;

    if-eqz v0, :cond_7

    .line 1148
    iget-object v0, p0, mListener:Landroid/location/ILocationListener;

    return-object v0

    .line 1150
    :cond_7
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Request for non-existent listener"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public hashCode()I
    .registers 2

    .prologue
    .line 1041
    iget-object v0, p0, mKey:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    return v0
.end method

.method public isListener()Z
    .registers 2

    .prologue
    .line 1139
    iget-object v0, p0, mListener:Landroid/location/ILocationListener;

    if-eqz v0, :cond_6

    const/4 v0, 0x1

    :goto_5
    return v0

    :cond_6
    const/4 v0, 0x0

    goto :goto_5
.end method

.method public isPendingIntent()Z
    .registers 2

    .prologue
    .line 1143
    iget-object v0, p0, mPendingIntent:Landroid/app/PendingIntent;

    if-eqz v0, :cond_6

    const/4 v0, 0x1

    :goto_5
    return v0

    :cond_6
    const/4 v0, 0x0

    goto :goto_5
.end method

.method public onSendFinished(Landroid/app/PendingIntent;Landroid/content/Intent;ILjava/lang/String;Landroid/os/Bundle;)V
    .registers 7
    .param p1, "pendingIntent"    # Landroid/app/PendingIntent;
    .param p2, "intent"    # Landroid/content/Intent;
    .param p3, "resultCode"    # I
    .param p4, "resultData"    # Ljava/lang/String;
    .param p5, "resultExtras"    # Landroid/os/Bundle;

    .prologue
    .line 1279
    monitor-enter p0

    .line 1280
    :try_start_1
    invoke-direct {p0}, decrementPendingBroadcastsLocked()V

    .line 1281
    monitor-exit p0

    .line 1282
    return-void

    .line 1281
    :catchall_6
    move-exception v0

    monitor-exit p0
    :try_end_8
    .catchall {:try_start_1 .. :try_end_8} :catchall_6

    throw v0
.end method

.method public toString()Ljava/lang/String;
    .registers 6

    .prologue
    .line 1046
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 1047
    .local v2, "s":Ljava/lang/StringBuilder;
    const-string v3, "Reciever["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1048
    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1049
    iget-object v3, p0, mListener:Landroid/location/ILocationListener;

    if-eqz v3, :cond_4a

    .line 1050
    const-string v3, " listener"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1054
    :goto_1e
    iget-object v3, p0, mUpdateRecords:Ljava/util/HashMap;

    invoke-virtual {v3}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_28
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_50

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 1055
    .local v1, "p":Ljava/lang/String;
    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v3, p0, mUpdateRecords:Ljava/util/HashMap;

    invoke-virtual {v3, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/LocationManagerService$UpdateRecord;

    invoke-virtual {v3}, Lcom/android/server/LocationManagerService$UpdateRecord;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_28

    .line 1052
    .end local v0    # "i$":Ljava/util/Iterator;
    .end local v1    # "p":Ljava/lang/String;
    :cond_4a
    const-string v3, " intent"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1e

    .line 1057
    .restart local v0    # "i$":Ljava/util/Iterator;
    :cond_50
    const-string v3, "]"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1058
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3
.end method

.method public updateMonitoring(Z)V
    .registers 14
    .param p1, "allow"    # Z

    .prologue
    .line 1067
    iget-boolean v8, p0, mHideFromAppOps:Z

    if-eqz v8, :cond_5

    .line 1110
    :cond_4
    :goto_4
    return-void

    .line 1071
    :cond_5
    const/4 v5, 0x0

    .line 1072
    .local v5, "requestingLocation":Z
    const/4 v4, 0x0

    .line 1073
    .local v4, "requestingHighPowerLocation":Z
    if-eqz p1, :cond_53

    .line 1076
    iget-object v8, p0, mUpdateRecords:Ljava/util/HashMap;

    invoke-virtual {v8}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v8

    invoke-interface {v8}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :cond_13
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_53

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/server/LocationManagerService$UpdateRecord;

    .line 1077
    .local v6, "updateRecord":Lcom/android/server/LocationManagerService$UpdateRecord;
    iget-object v8, p0, this$0:Lcom/android/server/LocationManagerService;

    iget-object v9, v6, Lcom/android/server/LocationManagerService$UpdateRecord;->mProvider:Ljava/lang/String;

    # invokes: Lcom/android/server/LocationManagerService;->isAllowedByCurrentUserSettingsLocked(Ljava/lang/String;)Z
    invoke-static {v8, v9}, Lcom/android/server/LocationManagerService;->access$1200(Lcom/android/server/LocationManagerService;Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_13

    .line 1078
    const/4 v5, 0x1

    .line 1079
    iget-object v8, p0, this$0:Lcom/android/server/LocationManagerService;

    # getter for: Lcom/android/server/LocationManagerService;->mProvidersByName:Ljava/util/HashMap;
    invoke-static {v8}, Lcom/android/server/LocationManagerService;->access$1300(Lcom/android/server/LocationManagerService;)Ljava/util/HashMap;

    move-result-object v8

    iget-object v9, v6, Lcom/android/server/LocationManagerService$UpdateRecord;->mProvider:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/location/LocationProviderInterface;

    .line 1081
    .local v2, "locationProvider":Lcom/android/server/location/LocationProviderInterface;
    if-eqz v2, :cond_80

    invoke-interface {v2}, Lcom/android/server/location/LocationProviderInterface;->getProperties()Lcom/android/internal/location/ProviderProperties;

    move-result-object v3

    .line 1083
    .local v3, "properties":Lcom/android/internal/location/ProviderProperties;
    :goto_3e
    if-eqz v3, :cond_13

    iget v8, v3, Lcom/android/internal/location/ProviderProperties;->mPowerRequirement:I

    const/4 v9, 0x3

    if-ne v8, v9, :cond_13

    iget-object v8, v6, Lcom/android/server/LocationManagerService$UpdateRecord;->mRequest:Landroid/location/LocationRequest;

    invoke-virtual {v8}, Landroid/location/LocationRequest;->getInterval()J

    move-result-wide v8

    const-wide/32 v10, 0x493e0

    cmp-long v8, v8, v10

    if-gez v8, :cond_13

    .line 1086
    const/4 v4, 0x1

    .line 1094
    .end local v0    # "i$":Ljava/util/Iterator;
    .end local v2    # "locationProvider":Lcom/android/server/location/LocationProviderInterface;
    .end local v3    # "properties":Lcom/android/internal/location/ProviderProperties;
    .end local v6    # "updateRecord":Lcom/android/server/LocationManagerService$UpdateRecord;
    :cond_53
    iget-boolean v8, p0, mOpMonitoring:Z

    const/16 v9, 0x29

    invoke-direct {p0, v5, v8, v9}, updateMonitoring(ZZI)Z

    move-result v8

    iput-boolean v8, p0, mOpMonitoring:Z

    .line 1100
    iget-boolean v7, p0, mOpHighPowerMonitoring:Z

    .line 1101
    .local v7, "wasHighPowerMonitoring":Z
    iget-boolean v8, p0, mOpHighPowerMonitoring:Z

    const/16 v9, 0x2a

    invoke-direct {p0, v4, v8, v9}, updateMonitoring(ZZI)Z

    move-result v8

    iput-boolean v8, p0, mOpHighPowerMonitoring:Z

    .line 1105
    iget-boolean v8, p0, mOpHighPowerMonitoring:Z

    if-eq v8, v7, :cond_4

    .line 1107
    new-instance v1, Landroid/content/Intent;

    const-string v8, "android.location.HIGH_POWER_REQUEST_CHANGE"

    invoke-direct {v1, v8}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1108
    .local v1, "intent":Landroid/content/Intent;
    iget-object v8, p0, this$0:Lcom/android/server/LocationManagerService;

    # getter for: Lcom/android/server/LocationManagerService;->mContext:Landroid/content/Context;
    invoke-static {v8}, Lcom/android/server/LocationManagerService;->access$000(Lcom/android/server/LocationManagerService;)Landroid/content/Context;

    move-result-object v8

    sget-object v9, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {v8, v1, v9}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    goto :goto_4

    .line 1081
    .end local v1    # "intent":Landroid/content/Intent;
    .end local v7    # "wasHighPowerMonitoring":Z
    .restart local v0    # "i$":Ljava/util/Iterator;
    .restart local v2    # "locationProvider":Lcom/android/server/location/LocationProviderInterface;
    .restart local v6    # "updateRecord":Lcom/android/server/LocationManagerService$UpdateRecord;
    :cond_80
    const/4 v3, 0x0

    goto :goto_3e
.end method
