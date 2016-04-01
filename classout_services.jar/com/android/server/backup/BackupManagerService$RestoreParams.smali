.class Lcom/android/server/backup/BackupManagerService$RestoreParams;
.super Ljava/lang/Object;
.source "BackupManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/backup/BackupManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "RestoreParams"
.end annotation


# instance fields
.field public dirName:Ljava/lang/String;

.field public filterSet:[Ljava/lang/String;

.field public isSystemRestore:Z

.field public observer:Landroid/app/backup/IRestoreObserver;

.field public pkgInfo:Landroid/content/pm/PackageInfo;

.field public pmToken:I

.field final synthetic this$0:Lcom/android/server/backup/BackupManagerService;

.field public token:J

.field public transport:Lcom/android/internal/backup/IBackupTransport;


# direct methods
.method constructor <init>(Lcom/android/server/backup/BackupManagerService;Lcom/android/internal/backup/IBackupTransport;Ljava/lang/String;Landroid/app/backup/IRestoreObserver;J)V
    .registers 10
    .param p2, "_transport"    # Lcom/android/internal/backup/IBackupTransport;
    .param p3, "_dirName"    # Ljava/lang/String;
    .param p4, "_obs"    # Landroid/app/backup/IRestoreObserver;
    .param p5, "_token"    # J

    .prologue
    const/4 v1, 0x0

    .line 487
    iput-object p1, p0, this$0:Lcom/android/server/backup/BackupManagerService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 488
    iput-object p2, p0, transport:Lcom/android/internal/backup/IBackupTransport;

    .line 489
    iput-object p3, p0, dirName:Ljava/lang/String;

    .line 490
    iput-object p4, p0, observer:Landroid/app/backup/IRestoreObserver;

    .line 491
    iput-wide p5, p0, token:J

    .line 492
    iput-object v1, p0, pkgInfo:Landroid/content/pm/PackageInfo;

    .line 493
    const/4 v0, 0x0

    iput v0, p0, pmToken:I

    .line 494
    const/4 v0, 0x1

    iput-boolean v0, p0, isSystemRestore:Z

    .line 495
    iput-object v1, p0, filterSet:[Ljava/lang/String;

    .line 496
    return-void
.end method

.method constructor <init>(Lcom/android/server/backup/BackupManagerService;Lcom/android/internal/backup/IBackupTransport;Ljava/lang/String;Landroid/app/backup/IRestoreObserver;JLandroid/content/pm/PackageInfo;)V
    .registers 9
    .param p2, "_transport"    # Lcom/android/internal/backup/IBackupTransport;
    .param p3, "_dirName"    # Ljava/lang/String;
    .param p4, "_obs"    # Landroid/app/backup/IRestoreObserver;
    .param p5, "_token"    # J
    .param p7, "_pkg"    # Landroid/content/pm/PackageInfo;

    .prologue
    const/4 v0, 0x0

    .line 456
    iput-object p1, p0, this$0:Lcom/android/server/backup/BackupManagerService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 457
    iput-object p2, p0, transport:Lcom/android/internal/backup/IBackupTransport;

    .line 458
    iput-object p3, p0, dirName:Ljava/lang/String;

    .line 459
    iput-object p4, p0, observer:Landroid/app/backup/IRestoreObserver;

    .line 460
    iput-wide p5, p0, token:J

    .line 461
    iput-object p7, p0, pkgInfo:Landroid/content/pm/PackageInfo;

    .line 462
    iput v0, p0, pmToken:I

    .line 463
    iput-boolean v0, p0, isSystemRestore:Z

    .line 464
    const/4 v0, 0x0

    iput-object v0, p0, filterSet:[Ljava/lang/String;

    .line 465
    return-void
.end method

.method constructor <init>(Lcom/android/server/backup/BackupManagerService;Lcom/android/internal/backup/IBackupTransport;Ljava/lang/String;Landroid/app/backup/IRestoreObserver;JLjava/lang/String;I)V
    .registers 12
    .param p2, "_transport"    # Lcom/android/internal/backup/IBackupTransport;
    .param p3, "_dirName"    # Ljava/lang/String;
    .param p4, "_obs"    # Landroid/app/backup/IRestoreObserver;
    .param p5, "_token"    # J
    .param p7, "_pkgName"    # Ljava/lang/String;
    .param p8, "_pmToken"    # I

    .prologue
    const/4 v1, 0x0

    .line 471
    iput-object p1, p0, this$0:Lcom/android/server/backup/BackupManagerService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 472
    iput-object p2, p0, transport:Lcom/android/internal/backup/IBackupTransport;

    .line 473
    iput-object p3, p0, dirName:Ljava/lang/String;

    .line 474
    iput-object p4, p0, observer:Landroid/app/backup/IRestoreObserver;

    .line 475
    iput-wide p5, p0, token:J

    .line 476
    const/4 v0, 0x0

    iput-object v0, p0, pkgInfo:Landroid/content/pm/PackageInfo;

    .line 477
    iput p8, p0, pmToken:I

    .line 478
    iput-boolean v1, p0, isSystemRestore:Z

    .line 479
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    aput-object p7, v0, v1

    iput-object v0, p0, filterSet:[Ljava/lang/String;

    .line 480
    return-void
.end method

.method constructor <init>(Lcom/android/server/backup/BackupManagerService;Lcom/android/internal/backup/IBackupTransport;Ljava/lang/String;Landroid/app/backup/IRestoreObserver;J[Ljava/lang/String;Z)V
    .registers 10
    .param p2, "_transport"    # Lcom/android/internal/backup/IBackupTransport;
    .param p3, "_dirName"    # Ljava/lang/String;
    .param p4, "_obs"    # Landroid/app/backup/IRestoreObserver;
    .param p5, "_token"    # J
    .param p7, "_filterSet"    # [Ljava/lang/String;
    .param p8, "_isSystemRestore"    # Z

    .prologue
    .line 503
    iput-object p1, p0, this$0:Lcom/android/server/backup/BackupManagerService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 504
    iput-object p2, p0, transport:Lcom/android/internal/backup/IBackupTransport;

    .line 505
    iput-object p3, p0, dirName:Ljava/lang/String;

    .line 506
    iput-object p4, p0, observer:Landroid/app/backup/IRestoreObserver;

    .line 507
    iput-wide p5, p0, token:J

    .line 508
    const/4 v0, 0x0

    iput-object v0, p0, pkgInfo:Landroid/content/pm/PackageInfo;

    .line 509
    const/4 v0, 0x0

    iput v0, p0, pmToken:I

    .line 510
    iput-boolean p8, p0, isSystemRestore:Z

    .line 511
    iput-object p7, p0, filterSet:[Ljava/lang/String;

    .line 512
    return-void
.end method
