.class Lcom/android/server/am/ActivityManagerService$1TransferPipeThread;
.super Ljava/lang/Thread;
.source "ActivityManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/am/ActivityManagerService;->dumpDbInfo(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "TransferPipeThread"
.end annotation


# instance fields
.field final args:[Ljava/lang/String;

.field pFd:Landroid/os/ParcelFileDescriptor;

.field final synthetic this$0:Lcom/android/server/am/ActivityManagerService;

.field final thread:Landroid/app/IApplicationThread;


# direct methods
.method public constructor <init>(Lcom/android/server/am/ActivityManagerService;Landroid/app/IApplicationThread;Ljava/io/FileDescriptor;[Ljava/lang/String;)V
    .registers 6
    .param p2, "_thread"    # Landroid/app/IApplicationThread;
    .param p3, "_fd"    # Ljava/io/FileDescriptor;
    .param p4, "_args"    # [Ljava/lang/String;

    .prologue
    .line 20265
    iput-object p1, p0, this$0:Lcom/android/server/am/ActivityManagerService;

    .line 20266
    const-string v0, "TransferPipeWrite"

    invoke-direct {p0, v0}, Ljava/lang/Thread;-><init>(Ljava/lang/String;)V

    .line 20262
    const/4 v0, 0x0

    iput-object v0, p0, pFd:Landroid/os/ParcelFileDescriptor;

    .line 20267
    iput-object p2, p0, thread:Landroid/app/IApplicationThread;

    .line 20268
    iput-object p4, p0, args:[Ljava/lang/String;

    .line 20270
    :try_start_e
    invoke-static {p3}, Landroid/os/ParcelFileDescriptor;->dup(Ljava/io/FileDescriptor;)Landroid/os/ParcelFileDescriptor;

    move-result-object v0

    iput-object v0, p0, pFd:Landroid/os/ParcelFileDescriptor;
    :try_end_14
    .catch Ljava/io/IOException; {:try_start_e .. :try_end_14} :catch_15

    .line 20273
    :goto_14
    return-void

    .line 20271
    :catch_15
    move-exception v0

    goto :goto_14
.end method


# virtual methods
.method public run()V
    .registers 4

    .prologue
    .line 20276
    :try_start_0
    iget-object v0, p0, pFd:Landroid/os/ParcelFileDescriptor;

    if-eqz v0, :cond_16

    .line 20277
    iget-object v0, p0, thread:Landroid/app/IApplicationThread;

    iget-object v1, p0, pFd:Landroid/os/ParcelFileDescriptor;

    invoke-virtual {v1}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v1

    iget-object v2, p0, args:[Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Landroid/app/IApplicationThread;->dumpDbInfo(Ljava/io/FileDescriptor;[Ljava/lang/String;)V

    .line 20278
    iget-object v0, p0, pFd:Landroid/os/ParcelFileDescriptor;

    invoke-virtual {v0}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_16
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_16} :catch_19
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_16} :catch_17

    .line 20283
    :cond_16
    :goto_16
    return-void

    .line 20281
    :catch_17
    move-exception v0

    goto :goto_16

    .line 20280
    :catch_19
    move-exception v0

    goto :goto_16
.end method
