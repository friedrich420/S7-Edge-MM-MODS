.class public final Lcom/android/server/backup/BackupManagerService$Lifecycle;
.super Lcom/android/server/SystemService;
.source "BackupManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/backup/BackupManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Lifecycle"
.end annotation


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 3
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 377
    invoke-direct {p0, p1}, Lcom/android/server/SystemService;-><init>(Landroid/content/Context;)V

    .line 378
    new-instance v0, Lcom/android/server/backup/Trampoline;

    invoke-direct {v0, p1}, Lcom/android/server/backup/Trampoline;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/android/server/backup/BackupManagerService;->sInstance:Lcom/android/server/backup/Trampoline;

    .line 379
    return-void
.end method


# virtual methods
.method public onBootPhase(I)V
    .registers 5
    .param p1, "phase"    # I

    .prologue
    const/4 v0, 0x0

    .line 388
    const/16 v2, 0x1f4

    if-ne p1, v2, :cond_b

    .line 389
    sget-object v2, Lcom/android/server/backup/BackupManagerService;->sInstance:Lcom/android/server/backup/Trampoline;

    invoke-virtual {v2, v0}, Lcom/android/server/backup/Trampoline;->initialize(I)V

    .line 400
    :cond_a
    :goto_a
    return-void

    .line 390
    :cond_b
    const/16 v2, 0x258

    if-ne p1, v2, :cond_a

    .line 391
    sget-object v2, Lcom/android/server/backup/BackupManagerService;->sInstance:Lcom/android/server/backup/Trampoline;

    iget-object v2, v2, Lcom/android/server/backup/Trampoline;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 392
    .local v1, "r":Landroid/content/ContentResolver;
    const-string v2, "backup_enabled"

    invoke-static {v1, v2, v0}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-eqz v2, :cond_20

    const/4 v0, 0x1

    .line 395
    .local v0, "areEnabled":Z
    :cond_20
    :try_start_20
    sget-object v2, Lcom/android/server/backup/BackupManagerService;->sInstance:Lcom/android/server/backup/Trampoline;

    invoke-virtual {v2, v0}, Lcom/android/server/backup/Trampoline;->setBackupEnabled(Z)V
    :try_end_25
    .catch Landroid/os/RemoteException; {:try_start_20 .. :try_end_25} :catch_26

    goto :goto_a

    .line 396
    :catch_26
    move-exception v2

    goto :goto_a
.end method

.method public onStart()V
    .registers 3

    .prologue
    .line 383
    const-string v0, "backup"

    sget-object v1, Lcom/android/server/backup/BackupManagerService;->sInstance:Lcom/android/server/backup/Trampoline;

    invoke-virtual {p0, v0, v1}, publishBinderService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 384
    return-void
.end method
