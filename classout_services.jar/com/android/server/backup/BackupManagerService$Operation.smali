.class Lcom/android/server/backup/BackupManagerService$Operation;
.super Ljava/lang/Object;
.source "BackupManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/backup/BackupManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "Operation"
.end annotation


# instance fields
.field public callback:Lcom/android/server/backup/BackupManagerService$BackupRestoreTask;

.field public state:I

.field final synthetic this$0:Lcom/android/server/backup/BackupManagerService;


# direct methods
.method constructor <init>(Lcom/android/server/backup/BackupManagerService;ILcom/android/server/backup/BackupManagerService$BackupRestoreTask;)V
    .registers 4
    .param p2, "initialState"    # I
    .param p3, "callbackObj"    # Lcom/android/server/backup/BackupManagerService$BackupRestoreTask;

    .prologue
    .line 592
    iput-object p1, p0, this$0:Lcom/android/server/backup/BackupManagerService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 593
    iput p2, p0, state:I

    .line 594
    iput-object p3, p0, callback:Lcom/android/server/backup/BackupManagerService$BackupRestoreTask;

    .line 595
    return-void
.end method
