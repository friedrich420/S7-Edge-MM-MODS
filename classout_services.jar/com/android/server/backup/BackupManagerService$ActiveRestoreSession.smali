.class Lcom/android/server/backup/BackupManagerService$ActiveRestoreSession;
.super Landroid/app/backup/IRestoreSession$Stub;
.source "BackupManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/backup/BackupManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "ActiveRestoreSession"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/backup/BackupManagerService$ActiveRestoreSession$EndRestoreRunnable;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "RestoreSession"


# instance fields
.field mEnded:Z

.field private mPackageName:Ljava/lang/String;

.field mRestoreSets:[Landroid/app/backup/RestoreSet;

.field private mRestoreTransport:Lcom/android/internal/backup/IBackupTransport;

.field mTimedOut:Z

.field final synthetic this$0:Lcom/android/server/backup/BackupManagerService;


# direct methods
.method constructor <init>(Lcom/android/server/backup/BackupManagerService;Ljava/lang/String;Ljava/lang/String;)V
    .registers 6
    .param p2, "packageName"    # Ljava/lang/String;
    .param p3, "transport"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x0

    .line 9880
    iput-object p1, p0, this$0:Lcom/android/server/backup/BackupManagerService;

    invoke-direct {p0}, Landroid/app/backup/IRestoreSession$Stub;-><init>()V

    .line 9875
    iput-object v1, p0, mRestoreTransport:Lcom/android/internal/backup/IBackupTransport;

    .line 9876
    iput-object v1, p0, mRestoreSets:[Landroid/app/backup/RestoreSet;

    .line 9877
    iput-boolean v0, p0, mEnded:Z

    .line 9878
    iput-boolean v0, p0, mTimedOut:Z

    .line 9881
    iput-object p2, p0, mPackageName:Ljava/lang/String;

    .line 9882
    # invokes: Lcom/android/server/backup/BackupManagerService;->getTransport(Ljava/lang/String;)Lcom/android/internal/backup/IBackupTransport;
    invoke-static {p1, p3}, Lcom/android/server/backup/BackupManagerService;->access$000(Lcom/android/server/backup/BackupManagerService;Ljava/lang/String;)Lcom/android/internal/backup/IBackupTransport;

    move-result-object v0

    iput-object v0, p0, mRestoreTransport:Lcom/android/internal/backup/IBackupTransport;

    .line 9883
    return-void
.end method

.method static synthetic access$3300(Lcom/android/server/backup/BackupManagerService$ActiveRestoreSession;)Ljava/lang/String;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/backup/BackupManagerService$ActiveRestoreSession;

    .prologue
    .line 9871
    iget-object v0, p0, mPackageName:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$3402(Lcom/android/server/backup/BackupManagerService$ActiveRestoreSession;Lcom/android/internal/backup/IBackupTransport;)Lcom/android/internal/backup/IBackupTransport;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/backup/BackupManagerService$ActiveRestoreSession;
    .param p1, "x1"    # Lcom/android/internal/backup/IBackupTransport;

    .prologue
    .line 9871
    iput-object p1, p0, mRestoreTransport:Lcom/android/internal/backup/IBackupTransport;

    return-object p1
.end method


# virtual methods
.method public declared-synchronized endRestoreSession()V
    .registers 4

    .prologue
    .line 10180
    monitor-enter p0

    :try_start_1
    const-string v0, "RestoreSession"

    const-string/jumbo v1, "endRestoreSession"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 10182
    iget-boolean v0, p0, mTimedOut:Z

    if-eqz v0, :cond_16

    .line 10183
    const-string v0, "RestoreSession"

    const-string v1, "Session already timed out"

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_14
    .catchall {:try_start_1 .. :try_end_14} :catchall_22

    .line 10192
    :goto_14
    monitor-exit p0

    return-void

    .line 10187
    :cond_16
    :try_start_16
    iget-boolean v0, p0, mEnded:Z

    if-eqz v0, :cond_25

    .line 10188
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Restore session already ended"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_22
    .catchall {:try_start_16 .. :try_end_22} :catchall_22

    .line 10180
    :catchall_22
    move-exception v0

    monitor-exit p0

    throw v0

    .line 10191
    :cond_25
    :try_start_25
    iget-object v0, p0, this$0:Lcom/android/server/backup/BackupManagerService;

    iget-object v0, v0, Lcom/android/server/backup/BackupManagerService;->mBackupHandler:Lcom/android/server/backup/BackupManagerService$BackupHandler;

    new-instance v1, Lcom/android/server/backup/BackupManagerService$ActiveRestoreSession$EndRestoreRunnable;

    iget-object v2, p0, this$0:Lcom/android/server/backup/BackupManagerService;

    invoke-direct {v1, p0, v2, p0}, Lcom/android/server/backup/BackupManagerService$ActiveRestoreSession$EndRestoreRunnable;-><init>(Lcom/android/server/backup/BackupManagerService$ActiveRestoreSession;Lcom/android/server/backup/BackupManagerService;Lcom/android/server/backup/BackupManagerService$ActiveRestoreSession;)V

    invoke-virtual {v0, v1}, Lcom/android/server/backup/BackupManagerService$BackupHandler;->post(Ljava/lang/Runnable;)Z
    :try_end_33
    .catchall {:try_start_25 .. :try_end_33} :catchall_22

    goto :goto_14
.end method

.method public declared-synchronized getAvailableRestoreSets(Landroid/app/backup/IRestoreObserver;)I
    .registers 12
    .param p1, "observer"    # Landroid/app/backup/IRestoreObserver;

    .prologue
    const/4 v4, -0x1

    .line 9891
    monitor-enter p0

    :try_start_2
    iget-object v5, p0, this$0:Lcom/android/server/backup/BackupManagerService;

    iget-object v5, v5, Lcom/android/server/backup/BackupManagerService;->mContext:Landroid/content/Context;

    const-string v6, "android.permission.BACKUP"

    const-string/jumbo v7, "getAvailableRestoreSets"

    invoke-virtual {v5, v6, v7}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 9893
    if-nez p1, :cond_1b

    .line 9894
    new-instance v4, Ljava/lang/IllegalArgumentException;

    const-string v5, "Observer must not be null"

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4
    :try_end_18
    .catchall {:try_start_2 .. :try_end_18} :catchall_18

    .line 9891
    :catchall_18
    move-exception v4

    monitor-exit p0

    throw v4

    .line 9897
    :cond_1b
    :try_start_1b
    iget-boolean v5, p0, mEnded:Z

    if-eqz v5, :cond_27

    .line 9898
    new-instance v4, Ljava/lang/IllegalStateException;

    const-string v5, "Restore session already ended"

    invoke-direct {v4, v5}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 9901
    :cond_27
    iget-boolean v5, p0, mTimedOut:Z

    if-eqz v5, :cond_34

    .line 9902
    const-string v5, "RestoreSession"

    const-string v6, "Session already timed out"

    invoke-static {v5, v6}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_32
    .catchall {:try_start_1b .. :try_end_32} :catchall_18

    .line 9928
    :goto_32
    monitor-exit p0

    return v4

    .line 9906
    :cond_34
    :try_start_34
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J
    :try_end_37
    .catchall {:try_start_34 .. :try_end_37} :catchall_18

    move-result-wide v2

    .line 9908
    .local v2, "oldId":J
    :try_start_38
    iget-object v5, p0, mRestoreTransport:Lcom/android/internal/backup/IBackupTransport;

    if-nez v5, :cond_47

    .line 9909
    const-string v5, "RestoreSession"

    const-string v6, "Null transport getting restore sets"

    invoke-static {v5, v6}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_43
    .catch Ljava/lang/Exception; {:try_start_38 .. :try_end_43} :catch_75
    .catchall {:try_start_38 .. :try_end_43} :catchall_81

    .line 9928
    :try_start_43
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V
    :try_end_46
    .catchall {:try_start_43 .. :try_end_46} :catchall_18

    goto :goto_32

    .line 9916
    :cond_47
    :try_start_47
    iget-object v5, p0, this$0:Lcom/android/server/backup/BackupManagerService;

    iget-object v5, v5, Lcom/android/server/backup/BackupManagerService;->mBackupHandler:Lcom/android/server/backup/BackupManagerService$BackupHandler;

    const/16 v6, 0x8

    invoke-virtual {v5, v6}, Lcom/android/server/backup/BackupManagerService$BackupHandler;->removeMessages(I)V

    .line 9919
    iget-object v5, p0, this$0:Lcom/android/server/backup/BackupManagerService;

    iget-object v5, v5, Lcom/android/server/backup/BackupManagerService;->mWakelock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v5}, Landroid/os/PowerManager$WakeLock;->acquire()V

    .line 9920
    iget-object v5, p0, this$0:Lcom/android/server/backup/BackupManagerService;

    iget-object v5, v5, Lcom/android/server/backup/BackupManagerService;->mBackupHandler:Lcom/android/server/backup/BackupManagerService$BackupHandler;

    const/4 v6, 0x6

    new-instance v7, Lcom/android/server/backup/BackupManagerService$RestoreGetSetsParams;

    iget-object v8, p0, this$0:Lcom/android/server/backup/BackupManagerService;

    iget-object v9, p0, mRestoreTransport:Lcom/android/internal/backup/IBackupTransport;

    invoke-direct {v7, v8, v9, p0, p1}, Lcom/android/server/backup/BackupManagerService$RestoreGetSetsParams;-><init>(Lcom/android/server/backup/BackupManagerService;Lcom/android/internal/backup/IBackupTransport;Lcom/android/server/backup/BackupManagerService$ActiveRestoreSession;Landroid/app/backup/IRestoreObserver;)V

    invoke-virtual {v5, v6, v7}, Lcom/android/server/backup/BackupManagerService$BackupHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    .line 9922
    .local v1, "msg":Landroid/os/Message;
    iget-object v5, p0, this$0:Lcom/android/server/backup/BackupManagerService;

    iget-object v5, v5, Lcom/android/server/backup/BackupManagerService;->mBackupHandler:Lcom/android/server/backup/BackupManagerService$BackupHandler;

    invoke-virtual {v5, v1}, Lcom/android/server/backup/BackupManagerService$BackupHandler;->sendMessage(Landroid/os/Message;)Z
    :try_end_70
    .catch Ljava/lang/Exception; {:try_start_47 .. :try_end_70} :catch_75
    .catchall {:try_start_47 .. :try_end_70} :catchall_81

    .line 9923
    const/4 v4, 0x0

    .line 9928
    :try_start_71
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V
    :try_end_74
    .catchall {:try_start_71 .. :try_end_74} :catchall_18

    goto :goto_32

    .line 9924
    .end local v1    # "msg":Landroid/os/Message;
    :catch_75
    move-exception v0

    .line 9925
    .local v0, "e":Ljava/lang/Exception;
    :try_start_76
    const-string v5, "RestoreSession"

    const-string v6, "Error in getAvailableRestoreSets"

    invoke-static {v5, v6, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_7d
    .catchall {:try_start_76 .. :try_end_7d} :catchall_81

    .line 9928
    :try_start_7d
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto :goto_32

    .end local v0    # "e":Ljava/lang/Exception;
    :catchall_81
    move-exception v4

    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v4
    :try_end_86
    .catchall {:try_start_7d .. :try_end_86} :catchall_18
.end method

.method public markTimedOut()V
    .registers 2

    .prologue
    .line 9886
    const/4 v0, 0x1

    iput-boolean v0, p0, mTimedOut:Z

    .line 9887
    return-void
.end method

.method public declared-synchronized restoreAll(JLandroid/app/backup/IRestoreObserver;)I
    .registers 19
    .param p1, "token"    # J
    .param p3, "observer"    # Landroid/app/backup/IRestoreObserver;

    .prologue
    .line 9933
    monitor-enter p0

    :try_start_1
    iget-object v3, p0, this$0:Lcom/android/server/backup/BackupManagerService;

    iget-object v3, v3, Lcom/android/server/backup/BackupManagerService;->mContext:Landroid/content/Context;

    const-string v4, "android.permission.BACKUP"

    const-string/jumbo v5, "performRestore"

    invoke-virtual {v3, v4, v5}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 9936
    const-string v3, "RestoreSession"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "restoreAll token="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static/range {p1 .. p2}, Ljava/lang/Long;->toHexString(J)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " observer="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p3

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 9939
    iget-boolean v3, p0, mEnded:Z

    if-eqz v3, :cond_45

    .line 9940
    new-instance v3, Ljava/lang/IllegalStateException;

    const-string v4, "Restore session already ended"

    invoke-direct {v3, v4}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v3
    :try_end_42
    .catchall {:try_start_1 .. :try_end_42} :catchall_42

    .line 9933
    :catchall_42
    move-exception v3

    monitor-exit p0

    throw v3

    .line 9943
    :cond_45
    :try_start_45
    iget-boolean v3, p0, mTimedOut:Z

    if-eqz v3, :cond_53

    .line 9944
    const-string v3, "RestoreSession"

    const-string v4, "Session already timed out"

    invoke-static {v3, v4}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_50
    .catchall {:try_start_45 .. :try_end_50} :catchall_42

    .line 9945
    const/4 v3, -0x1

    .line 9989
    :goto_51
    monitor-exit p0

    return v3

    .line 9948
    :cond_53
    :try_start_53
    iget-object v3, p0, mRestoreTransport:Lcom/android/internal/backup/IBackupTransport;

    if-eqz v3, :cond_5b

    iget-object v3, p0, mRestoreSets:[Landroid/app/backup/RestoreSet;

    if-nez v3, :cond_64

    .line 9949
    :cond_5b
    const-string v3, "RestoreSession"

    const-string v4, "Ignoring restoreAll() with no restore set"

    invoke-static {v3, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 9950
    const/4 v3, -0x1

    goto :goto_51

    .line 9953
    :cond_64
    iget-object v3, p0, mPackageName:Ljava/lang/String;

    if-eqz v3, :cond_71

    .line 9954
    const-string v3, "RestoreSession"

    const-string v4, "Ignoring restoreAll() on single-package session"

    invoke-static {v3, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_6f
    .catchall {:try_start_53 .. :try_end_6f} :catchall_42

    .line 9955
    const/4 v3, -0x1

    goto :goto_51

    .line 9960
    :cond_71
    :try_start_71
    iget-object v3, p0, mRestoreTransport:Lcom/android/internal/backup/IBackupTransport;

    invoke-interface {v3}, Lcom/android/internal/backup/IBackupTransport;->transportDirName()Ljava/lang/String;
    :try_end_76
    .catch Landroid/os/RemoteException; {:try_start_71 .. :try_end_76} :catch_c8
    .catchall {:try_start_71 .. :try_end_76} :catchall_42

    move-result-object v6

    .line 9967
    .local v6, "dirName":Ljava/lang/String;
    :try_start_77
    iget-object v3, p0, this$0:Lcom/android/server/backup/BackupManagerService;

    iget-object v14, v3, Lcom/android/server/backup/BackupManagerService;->mQueueLock:Ljava/lang/Object;

    monitor-enter v14
    :try_end_7c
    .catchall {:try_start_77 .. :try_end_7c} :catchall_42

    .line 9968
    const/4 v10, 0x0

    .local v10, "i":I
    :goto_7d
    :try_start_7d
    iget-object v3, p0, mRestoreSets:[Landroid/app/backup/RestoreSet;

    array-length v3, v3

    if-ge v10, v3, :cond_d5

    .line 9969
    iget-object v3, p0, mRestoreSets:[Landroid/app/backup/RestoreSet;

    aget-object v3, v3, v10

    iget-wide v4, v3, Landroid/app/backup/RestoreSet;->token:J

    cmp-long v3, p1, v4

    if-nez v3, :cond_d2

    .line 9971
    iget-object v3, p0, this$0:Lcom/android/server/backup/BackupManagerService;

    iget-object v3, v3, Lcom/android/server/backup/BackupManagerService;->mBackupHandler:Lcom/android/server/backup/BackupManagerService$BackupHandler;

    const/16 v4, 0x8

    invoke-virtual {v3, v4}, Lcom/android/server/backup/BackupManagerService$BackupHandler;->removeMessages(I)V

    .line 9973
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v12

    .line 9974
    .local v12, "oldId":J
    iget-object v3, p0, this$0:Lcom/android/server/backup/BackupManagerService;

    iget-object v3, v3, Lcom/android/server/backup/BackupManagerService;->mWakelock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v3}, Landroid/os/PowerManager$WakeLock;->acquire()V

    .line 9978
    iget-object v3, p0, this$0:Lcom/android/server/backup/BackupManagerService;

    iget-object v3, v3, Lcom/android/server/backup/BackupManagerService;->mBackupHandler:Lcom/android/server/backup/BackupManagerService$BackupHandler;

    const/4 v4, 0x3

    invoke-virtual {v3, v4}, Lcom/android/server/backup/BackupManagerService$BackupHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v11

    .line 9979
    .local v11, "msg":Landroid/os/Message;
    new-instance v3, Lcom/android/server/backup/BackupManagerService$RestoreParams;

    iget-object v4, p0, this$0:Lcom/android/server/backup/BackupManagerService;

    iget-object v5, p0, mRestoreTransport:Lcom/android/internal/backup/IBackupTransport;

    move-object/from16 v7, p3

    move-wide/from16 v8, p1

    invoke-direct/range {v3 .. v9}, Lcom/android/server/backup/BackupManagerService$RestoreParams;-><init>(Lcom/android/server/backup/BackupManagerService;Lcom/android/internal/backup/IBackupTransport;Ljava/lang/String;Landroid/app/backup/IRestoreObserver;J)V

    iput-object v3, v11, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 9981
    iget-object v3, p0, this$0:Lcom/android/server/backup/BackupManagerService;

    iget-object v3, v3, Lcom/android/server/backup/BackupManagerService;->mBackupHandler:Lcom/android/server/backup/BackupManagerService$BackupHandler;

    invoke-virtual {v3, v11}, Lcom/android/server/backup/BackupManagerService$BackupHandler;->sendMessage(Landroid/os/Message;)Z

    .line 9982
    invoke-static {v12, v13}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 9983
    const/4 v3, 0x0

    monitor-exit v14

    goto :goto_51

    .line 9986
    .end local v11    # "msg":Landroid/os/Message;
    .end local v12    # "oldId":J
    :catchall_c5
    move-exception v3

    monitor-exit v14
    :try_end_c7
    .catchall {:try_start_7d .. :try_end_c7} :catchall_c5

    :try_start_c7
    throw v3

    .line 9961
    .end local v6    # "dirName":Ljava/lang/String;
    .end local v10    # "i":I
    :catch_c8
    move-exception v2

    .line 9963
    .local v2, "e":Landroid/os/RemoteException;
    const-string v3, "RestoreSession"

    const-string v4, "Unable to contact transport for restore"

    invoke-static {v3, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_d0
    .catchall {:try_start_c7 .. :try_end_d0} :catchall_42

    .line 9964
    const/4 v3, -0x1

    goto :goto_51

    .line 9968
    .end local v2    # "e":Landroid/os/RemoteException;
    .restart local v6    # "dirName":Ljava/lang/String;
    .restart local v10    # "i":I
    :cond_d2
    add-int/lit8 v10, v10, 0x1

    goto :goto_7d

    .line 9986
    :cond_d5
    :try_start_d5
    monitor-exit v14
    :try_end_d6
    .catchall {:try_start_d5 .. :try_end_d6} :catchall_c5

    .line 9988
    :try_start_d6
    const-string v3, "RestoreSession"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Restore token "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static/range {p1 .. p2}, Ljava/lang/Long;->toHexString(J)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " not found"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_f8
    .catchall {:try_start_d6 .. :try_end_f8} :catchall_42

    .line 9989
    const/4 v3, -0x1

    goto/16 :goto_51
.end method

.method public declared-synchronized restorePackage(Ljava/lang/String;Landroid/app/backup/IRestoreObserver;)I
    .registers 19
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "observer"    # Landroid/app/backup/IRestoreObserver;

    .prologue
    .line 10075
    monitor-enter p0

    :try_start_1
    const-string v3, "RestoreSession"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "restorePackage pkg="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p1

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " obs="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p2

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 10077
    move-object/from16 v0, p0

    iget-boolean v3, v0, mEnded:Z

    if-eqz v3, :cond_39

    .line 10078
    new-instance v3, Ljava/lang/IllegalStateException;

    const-string v4, "Restore session already ended"

    invoke-direct {v3, v4}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v3
    :try_end_36
    .catchall {:try_start_1 .. :try_end_36} :catchall_36

    .line 10075
    :catchall_36
    move-exception v3

    monitor-exit p0

    throw v3

    .line 10081
    :cond_39
    :try_start_39
    move-object/from16 v0, p0

    iget-boolean v3, v0, mTimedOut:Z

    if-eqz v3, :cond_49

    .line 10082
    const-string v3, "RestoreSession"

    const-string v4, "Session already timed out"

    invoke-static {v3, v4}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_46
    .catchall {:try_start_39 .. :try_end_46} :catchall_36

    .line 10083
    const/4 v3, -0x1

    .line 10153
    :goto_47
    monitor-exit p0

    return v3

    .line 10086
    :cond_49
    :try_start_49
    move-object/from16 v0, p0

    iget-object v3, v0, mPackageName:Ljava/lang/String;

    if-eqz v3, :cond_85

    .line 10087
    move-object/from16 v0, p0

    iget-object v3, v0, mPackageName:Ljava/lang/String;

    move-object/from16 v0, p1

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_85

    .line 10088
    const-string v3, "RestoreSession"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Ignoring attempt to restore pkg="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p1

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " on session for package "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v5, v0, mPackageName:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_83
    .catchall {:try_start_49 .. :try_end_83} :catchall_36

    .line 10090
    const/4 v3, -0x1

    goto :goto_47

    .line 10094
    :cond_85
    const/4 v10, 0x0

    .line 10096
    .local v10, "app":Landroid/content/pm/PackageInfo;
    :try_start_86
    move-object/from16 v0, p0

    iget-object v3, v0, this$0:Lcom/android/server/backup/BackupManagerService;

    # getter for: Lcom/android/server/backup/BackupManagerService;->mPackageManager:Landroid/content/pm/PackageManager;
    invoke-static {v3}, Lcom/android/server/backup/BackupManagerService;->access$1000(Lcom/android/server/backup/BackupManagerService;)Landroid/content/pm/PackageManager;

    move-result-object v3

    const/4 v4, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v3, v0, v4}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;
    :try_end_94
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_86 .. :try_end_94} :catch_e7
    .catchall {:try_start_86 .. :try_end_94} :catchall_36

    move-result-object v10

    .line 10104
    :try_start_95
    move-object/from16 v0, p0

    iget-object v3, v0, this$0:Lcom/android/server/backup/BackupManagerService;

    iget-object v3, v3, Lcom/android/server/backup/BackupManagerService;->mContext:Landroid/content/Context;

    const-string v4, "android.permission.BACKUP"

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v5

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v7

    invoke-virtual {v3, v4, v5, v7}, Landroid/content/Context;->checkPermission(Ljava/lang/String;II)I

    move-result v13

    .line 10106
    .local v13, "perm":I
    const/4 v3, -0x1

    if-ne v13, v3, :cond_105

    iget-object v3, v10, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v3, v3, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v4

    if-eq v3, v4, :cond_105

    .line 10108
    const-string v3, "RestoreSession"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "restorePackage: bad packageName="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p1

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " or calling uid="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 10110
    new-instance v3, Ljava/lang/SecurityException;

    const-string v4, "No permission to restore other packages"

    invoke-direct {v3, v4}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 10097
    .end local v13    # "perm":I
    :catch_e7
    move-exception v12

    .line 10098
    .local v12, "nnf":Landroid/content/pm/PackageManager$NameNotFoundException;
    const-string v3, "RestoreSession"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Asked to restore nonexistent pkg "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p1

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 10099
    const/4 v3, -0x1

    goto/16 :goto_47

    .line 10114
    .end local v12    # "nnf":Landroid/content/pm/PackageManager$NameNotFoundException;
    .restart local v13    # "perm":I
    :cond_105
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J
    :try_end_108
    .catchall {:try_start_95 .. :try_end_108} :catchall_36

    move-result-wide v14

    .line 10118
    .local v14, "oldId":J
    :try_start_109
    move-object/from16 v0, p0

    iget-object v3, v0, this$0:Lcom/android/server/backup/BackupManagerService;

    move-object/from16 v0, p1

    invoke-virtual {v3, v0}, Lcom/android/server/backup/BackupManagerService;->getAvailableRestoreToken(Ljava/lang/String;)J

    move-result-wide v8

    .line 10119
    .local v8, "token":J
    const-string v3, "RestoreSession"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "restorePackage pkg="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p1

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " token="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {v8, v9}, Ljava/lang/Long;->toHexString(J)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 10125
    const-wide/16 v4, 0x0

    cmp-long v3, v8, v4

    if-nez v3, :cond_14f

    .line 10126
    const-string v3, "RestoreSession"

    const-string v4, "No data available for this package; not restoring"

    invoke-static {v3, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_149
    .catchall {:try_start_109 .. :try_end_149} :catchall_1a4

    .line 10127
    const/4 v3, -0x1

    .line 10151
    :try_start_14a
    invoke-static {v14, v15}, Landroid/os/Binder;->restoreCallingIdentity(J)V
    :try_end_14d
    .catchall {:try_start_14a .. :try_end_14d} :catchall_36

    goto/16 :goto_47

    .line 10132
    :cond_14f
    :try_start_14f
    move-object/from16 v0, p0

    iget-object v3, v0, mRestoreTransport:Lcom/android/internal/backup/IBackupTransport;

    invoke-interface {v3}, Lcom/android/internal/backup/IBackupTransport;->transportDirName()Ljava/lang/String;
    :try_end_156
    .catch Landroid/os/RemoteException; {:try_start_14f .. :try_end_156} :catch_196
    .catchall {:try_start_14f .. :try_end_156} :catchall_1a4

    move-result-object v6

    .line 10140
    .local v6, "dirName":Ljava/lang/String;
    :try_start_157
    move-object/from16 v0, p0

    iget-object v3, v0, this$0:Lcom/android/server/backup/BackupManagerService;

    iget-object v3, v3, Lcom/android/server/backup/BackupManagerService;->mBackupHandler:Lcom/android/server/backup/BackupManagerService$BackupHandler;

    const/16 v4, 0x8

    invoke-virtual {v3, v4}, Lcom/android/server/backup/BackupManagerService$BackupHandler;->removeMessages(I)V

    .line 10143
    move-object/from16 v0, p0

    iget-object v3, v0, this$0:Lcom/android/server/backup/BackupManagerService;

    iget-object v3, v3, Lcom/android/server/backup/BackupManagerService;->mWakelock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v3}, Landroid/os/PowerManager$WakeLock;->acquire()V

    .line 10147
    move-object/from16 v0, p0

    iget-object v3, v0, this$0:Lcom/android/server/backup/BackupManagerService;

    iget-object v3, v3, Lcom/android/server/backup/BackupManagerService;->mBackupHandler:Lcom/android/server/backup/BackupManagerService$BackupHandler;

    const/4 v4, 0x3

    invoke-virtual {v3, v4}, Lcom/android/server/backup/BackupManagerService$BackupHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v11

    .line 10148
    .local v11, "msg":Landroid/os/Message;
    new-instance v3, Lcom/android/server/backup/BackupManagerService$RestoreParams;

    move-object/from16 v0, p0

    iget-object v4, v0, this$0:Lcom/android/server/backup/BackupManagerService;

    move-object/from16 v0, p0

    iget-object v5, v0, mRestoreTransport:Lcom/android/internal/backup/IBackupTransport;

    move-object/from16 v7, p2

    invoke-direct/range {v3 .. v10}, Lcom/android/server/backup/BackupManagerService$RestoreParams;-><init>(Lcom/android/server/backup/BackupManagerService;Lcom/android/internal/backup/IBackupTransport;Ljava/lang/String;Landroid/app/backup/IRestoreObserver;JLandroid/content/pm/PackageInfo;)V

    iput-object v3, v11, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 10149
    move-object/from16 v0, p0

    iget-object v3, v0, this$0:Lcom/android/server/backup/BackupManagerService;

    iget-object v3, v3, Lcom/android/server/backup/BackupManagerService;->mBackupHandler:Lcom/android/server/backup/BackupManagerService$BackupHandler;

    invoke-virtual {v3, v11}, Lcom/android/server/backup/BackupManagerService$BackupHandler;->sendMessage(Landroid/os/Message;)Z
    :try_end_190
    .catchall {:try_start_157 .. :try_end_190} :catchall_1a4

    .line 10151
    :try_start_190
    invoke-static {v14, v15}, Landroid/os/Binder;->restoreCallingIdentity(J)V
    :try_end_193
    .catchall {:try_start_190 .. :try_end_193} :catchall_36

    .line 10153
    const/4 v3, 0x0

    goto/16 :goto_47

    .line 10133
    .end local v6    # "dirName":Ljava/lang/String;
    .end local v11    # "msg":Landroid/os/Message;
    :catch_196
    move-exception v2

    .line 10135
    .local v2, "e":Landroid/os/RemoteException;
    :try_start_197
    const-string v3, "RestoreSession"

    const-string v4, "Unable to contact transport for restore"

    invoke-static {v3, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_19e
    .catchall {:try_start_197 .. :try_end_19e} :catchall_1a4

    .line 10136
    const/4 v3, -0x1

    .line 10151
    :try_start_19f
    invoke-static {v14, v15}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto/16 :goto_47

    .end local v2    # "e":Landroid/os/RemoteException;
    .end local v8    # "token":J
    :catchall_1a4
    move-exception v3

    invoke-static {v14, v15}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v3
    :try_end_1a9
    .catchall {:try_start_19f .. :try_end_1a9} :catchall_36
.end method

.method public declared-synchronized restoreSome(JLandroid/app/backup/IRestoreObserver;[Ljava/lang/String;)I
    .registers 28
    .param p1, "token"    # J
    .param p3, "observer"    # Landroid/app/backup/IRestoreObserver;
    .param p4, "packages"    # [Ljava/lang/String;

    .prologue
    .line 9995
    monitor-enter p0

    :try_start_1
    move-object/from16 v0, p0

    iget-object v3, v0, this$0:Lcom/android/server/backup/BackupManagerService;

    iget-object v3, v3, Lcom/android/server/backup/BackupManagerService;->mContext:Landroid/content/Context;

    const-string v4, "android.permission.BACKUP"

    const-string/jumbo v5, "performRestore"

    invoke-virtual {v3, v4, v5}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 9999
    new-instance v12, Ljava/lang/StringBuilder;

    const/16 v3, 0x80

    invoke-direct {v12, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 10000
    .local v12, "b":Ljava/lang/StringBuilder;
    const-string/jumbo v3, "restoreSome token="

    invoke-virtual {v12, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 10001
    invoke-static/range {p1 .. p2}, Ljava/lang/Long;->toHexString(J)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v12, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 10002
    const-string v3, " observer="

    invoke-virtual {v12, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 10003
    invoke-virtual/range {p3 .. p3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v12, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 10004
    const-string v3, " packages="

    invoke-virtual {v12, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 10005
    if-nez p4, :cond_56

    .line 10006
    const-string/jumbo v3, "null"

    invoke-virtual {v12, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 10018
    :goto_3c
    const-string v3, "RestoreSession"

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 10021
    move-object/from16 v0, p0

    iget-boolean v3, v0, mEnded:Z

    if-eqz v3, :cond_82

    .line 10022
    new-instance v3, Ljava/lang/IllegalStateException;

    const-string v4, "Restore session already ended"

    invoke-direct {v3, v4}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v3
    :try_end_53
    .catchall {:try_start_1 .. :try_end_53} :catchall_53

    .line 9995
    .end local v12    # "b":Ljava/lang/StringBuilder;
    :catchall_53
    move-exception v3

    monitor-exit p0

    throw v3

    .line 10008
    .restart local v12    # "b":Ljava/lang/StringBuilder;
    :cond_56
    const/16 v3, 0x7b

    :try_start_58
    invoke-virtual {v12, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 10009
    const/4 v14, 0x1

    .line 10010
    .local v14, "first":Z
    move-object/from16 v2, p4

    .local v2, "arr$":[Ljava/lang/String;
    array-length v0, v2

    move/from16 v17, v0

    .local v17, "len$":I
    const/16 v16, 0x0

    .local v16, "i$":I
    :goto_63
    move/from16 v0, v16

    move/from16 v1, v17

    if-ge v0, v1, :cond_7c

    aget-object v19, v2, v16

    .line 10011
    .local v19, "s":Ljava/lang/String;
    if-nez v14, :cond_7a

    .line 10012
    const-string v3, ", "

    invoke-virtual {v12, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 10014
    :goto_72
    move-object/from16 v0, v19

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 10010
    add-int/lit8 v16, v16, 0x1

    goto :goto_63

    .line 10013
    :cond_7a
    const/4 v14, 0x0

    goto :goto_72

    .line 10016
    .end local v19    # "s":Ljava/lang/String;
    :cond_7c
    const/16 v3, 0x7d

    invoke-virtual {v12, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_3c

    .line 10025
    .end local v2    # "arr$":[Ljava/lang/String;
    .end local v14    # "first":Z
    .end local v16    # "i$":I
    .end local v17    # "len$":I
    :cond_82
    move-object/from16 v0, p0

    iget-boolean v3, v0, mTimedOut:Z

    if-eqz v3, :cond_92

    .line 10026
    const-string v3, "RestoreSession"

    const-string v4, "Session already timed out"

    invoke-static {v3, v4}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_8f
    .catchall {:try_start_58 .. :try_end_8f} :catchall_53

    .line 10027
    const/4 v3, -0x1

    .line 10071
    :goto_90
    monitor-exit p0

    return v3

    .line 10030
    :cond_92
    :try_start_92
    move-object/from16 v0, p0

    iget-object v3, v0, mRestoreTransport:Lcom/android/internal/backup/IBackupTransport;

    if-eqz v3, :cond_9e

    move-object/from16 v0, p0

    iget-object v3, v0, mRestoreSets:[Landroid/app/backup/RestoreSet;

    if-nez v3, :cond_a7

    .line 10031
    :cond_9e
    const-string v3, "RestoreSession"

    const-string v4, "Ignoring restoreAll() with no restore set"

    invoke-static {v3, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 10032
    const/4 v3, -0x1

    goto :goto_90

    .line 10035
    :cond_a7
    move-object/from16 v0, p0

    iget-object v3, v0, mPackageName:Ljava/lang/String;

    if-eqz v3, :cond_b6

    .line 10036
    const-string v3, "RestoreSession"

    const-string v4, "Ignoring restoreAll() on single-package session"

    invoke-static {v3, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_b4
    .catchall {:try_start_92 .. :try_end_b4} :catchall_53

    .line 10037
    const/4 v3, -0x1

    goto :goto_90

    .line 10042
    :cond_b6
    :try_start_b6
    move-object/from16 v0, p0

    iget-object v3, v0, mRestoreTransport:Lcom/android/internal/backup/IBackupTransport;

    invoke-interface {v3}, Lcom/android/internal/backup/IBackupTransport;->transportDirName()Ljava/lang/String;
    :try_end_bd
    .catch Landroid/os/RemoteException; {:try_start_b6 .. :try_end_bd} :catch_131
    .catchall {:try_start_b6 .. :try_end_bd} :catchall_53

    move-result-object v6

    .line 10049
    .local v6, "dirName":Ljava/lang/String;
    :try_start_be
    move-object/from16 v0, p0

    iget-object v3, v0, this$0:Lcom/android/server/backup/BackupManagerService;

    iget-object v0, v3, Lcom/android/server/backup/BackupManagerService;->mQueueLock:Ljava/lang/Object;

    move-object/from16 v22, v0

    monitor-enter v22
    :try_end_c7
    .catchall {:try_start_be .. :try_end_c7} :catchall_53

    .line 10050
    const/4 v15, 0x0

    .local v15, "i":I
    :goto_c8
    :try_start_c8
    move-object/from16 v0, p0

    iget-object v3, v0, mRestoreSets:[Landroid/app/backup/RestoreSet;

    array-length v3, v3

    if-ge v15, v3, :cond_141

    .line 10051
    move-object/from16 v0, p0

    iget-object v3, v0, mRestoreSets:[Landroid/app/backup/RestoreSet;

    aget-object v3, v3, v15

    iget-wide v4, v3, Landroid/app/backup/RestoreSet;->token:J

    cmp-long v3, p1, v4

    if-nez v3, :cond_13e

    .line 10053
    move-object/from16 v0, p0

    iget-object v3, v0, this$0:Lcom/android/server/backup/BackupManagerService;

    iget-object v3, v3, Lcom/android/server/backup/BackupManagerService;->mBackupHandler:Lcom/android/server/backup/BackupManagerService$BackupHandler;

    const/16 v4, 0x8

    invoke-virtual {v3, v4}, Lcom/android/server/backup/BackupManagerService$BackupHandler;->removeMessages(I)V

    .line 10055
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v20

    .line 10056
    .local v20, "oldId":J
    move-object/from16 v0, p0

    iget-object v3, v0, this$0:Lcom/android/server/backup/BackupManagerService;

    iget-object v3, v3, Lcom/android/server/backup/BackupManagerService;->mWakelock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v3}, Landroid/os/PowerManager$WakeLock;->acquire()V

    .line 10060
    move-object/from16 v0, p0

    iget-object v3, v0, this$0:Lcom/android/server/backup/BackupManagerService;

    iget-object v3, v3, Lcom/android/server/backup/BackupManagerService;->mBackupHandler:Lcom/android/server/backup/BackupManagerService$BackupHandler;

    const/4 v4, 0x3

    invoke-virtual {v3, v4}, Lcom/android/server/backup/BackupManagerService$BackupHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v18

    .line 10061
    .local v18, "msg":Landroid/os/Message;
    new-instance v3, Lcom/android/server/backup/BackupManagerService$RestoreParams;

    move-object/from16 v0, p0

    iget-object v4, v0, this$0:Lcom/android/server/backup/BackupManagerService;

    move-object/from16 v0, p0

    iget-object v5, v0, mRestoreTransport:Lcom/android/internal/backup/IBackupTransport;

    move-object/from16 v0, p4

    array-length v7, v0

    const/4 v8, 0x1

    if-le v7, v8, :cond_13c

    const/4 v11, 0x1

    :goto_10f
    move-object/from16 v7, p3

    move-wide/from16 v8, p1

    move-object/from16 v10, p4

    invoke-direct/range {v3 .. v11}, Lcom/android/server/backup/BackupManagerService$RestoreParams;-><init>(Lcom/android/server/backup/BackupManagerService;Lcom/android/internal/backup/IBackupTransport;Ljava/lang/String;Landroid/app/backup/IRestoreObserver;J[Ljava/lang/String;Z)V

    move-object/from16 v0, v18

    iput-object v3, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 10063
    move-object/from16 v0, p0

    iget-object v3, v0, this$0:Lcom/android/server/backup/BackupManagerService;

    iget-object v3, v3, Lcom/android/server/backup/BackupManagerService;->mBackupHandler:Lcom/android/server/backup/BackupManagerService$BackupHandler;

    move-object/from16 v0, v18

    invoke-virtual {v3, v0}, Lcom/android/server/backup/BackupManagerService$BackupHandler;->sendMessage(Landroid/os/Message;)Z

    .line 10064
    invoke-static/range {v20 .. v21}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 10065
    const/4 v3, 0x0

    monitor-exit v22

    goto/16 :goto_90

    .line 10068
    .end local v18    # "msg":Landroid/os/Message;
    .end local v20    # "oldId":J
    :catchall_12e
    move-exception v3

    monitor-exit v22
    :try_end_130
    .catchall {:try_start_c8 .. :try_end_130} :catchall_12e

    :try_start_130
    throw v3

    .line 10043
    .end local v6    # "dirName":Ljava/lang/String;
    .end local v15    # "i":I
    :catch_131
    move-exception v13

    .line 10045
    .local v13, "e":Landroid/os/RemoteException;
    const-string v3, "RestoreSession"

    const-string v4, "Unable to contact transport for restore"

    invoke-static {v3, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_139
    .catchall {:try_start_130 .. :try_end_139} :catchall_53

    .line 10046
    const/4 v3, -0x1

    goto/16 :goto_90

    .line 10061
    .end local v13    # "e":Landroid/os/RemoteException;
    .restart local v6    # "dirName":Ljava/lang/String;
    .restart local v15    # "i":I
    .restart local v18    # "msg":Landroid/os/Message;
    .restart local v20    # "oldId":J
    :cond_13c
    const/4 v11, 0x0

    goto :goto_10f

    .line 10050
    .end local v18    # "msg":Landroid/os/Message;
    .end local v20    # "oldId":J
    :cond_13e
    add-int/lit8 v15, v15, 0x1

    goto :goto_c8

    .line 10068
    :cond_141
    :try_start_141
    monitor-exit v22
    :try_end_142
    .catchall {:try_start_141 .. :try_end_142} :catchall_12e

    .line 10070
    :try_start_142
    const-string v3, "RestoreSession"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Restore token "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static/range {p1 .. p2}, Ljava/lang/Long;->toHexString(J)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " not found"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_164
    .catchall {:try_start_142 .. :try_end_164} :catchall_53

    .line 10071
    const/4 v3, -0x1

    goto/16 :goto_90
.end method
