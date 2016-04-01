.class Lcom/android/server/am/ActivityManagerService$29;
.super Ljava/lang/Object;
.source "ActivityManagerService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/am/ActivityManagerService;->recordPssSampleLocked(Lcom/android/server/am/ProcessRecord;IJJJ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/am/ActivityManagerService;

.field final synthetic val$heapdumpFile:Ljava/io/File;

.field final synthetic val$myProc:Lcom/android/server/am/ProcessRecord;


# direct methods
.method constructor <init>(Lcom/android/server/am/ActivityManagerService;Ljava/io/File;Lcom/android/server/am/ProcessRecord;)V
    .registers 4

    .prologue
    .line 25364
    iput-object p1, p0, this$0:Lcom/android/server/am/ActivityManagerService;

    iput-object p2, p0, val$heapdumpFile:Ljava/io/File;

    iput-object p3, p0, val$myProc:Lcom/android/server/am/ProcessRecord;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 9

    .prologue
    .line 25367
    iget-object v3, p0, this$0:Lcom/android/server/am/ActivityManagerService;

    invoke-static {}, Landroid/app/ActivityThread;->currentActivityThread()Landroid/app/ActivityThread;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/ActivityThread;->getApplicationThread()Landroid/app/ActivityThread$ApplicationThread;

    move-result-object v4

    sget-object v5, Lcom/android/internal/app/DumpHeapActivity;->JAVA_URI:Landroid/net/Uri;

    const/4 v6, 0x3

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v7

    invoke-virtual {v3, v4, v5, v6, v7}, Lcom/android/server/am/ActivityManagerService;->revokeUriPermission(Landroid/app/IApplicationThread;Landroid/net/Uri;II)V

    .line 25373
    const/4 v1, 0x0

    .line 25375
    .local v1, "fd":Landroid/os/ParcelFileDescriptor;
    :try_start_15
    iget-object v3, p0, val$heapdumpFile:Ljava/io/File;

    invoke-virtual {v3}, Ljava/io/File;->delete()Z

    .line 25376
    iget-object v3, p0, val$heapdumpFile:Ljava/io/File;

    const/high16 v4, 0x2e000000

    invoke-static {v3, v4}, Landroid/os/ParcelFileDescriptor;->open(Ljava/io/File;I)Landroid/os/ParcelFileDescriptor;

    move-result-object v1

    .line 25381
    iget-object v3, p0, val$myProc:Lcom/android/server/am/ProcessRecord;

    iget-object v2, v3, Lcom/android/server/am/ProcessRecord;->thread:Landroid/app/IApplicationThread;
    :try_end_26
    .catch Ljava/io/FileNotFoundException; {:try_start_15 .. :try_end_26} :catch_38
    .catchall {:try_start_15 .. :try_end_26} :catchall_44

    .line 25382
    .local v2, "thread":Landroid/app/IApplicationThread;
    if-eqz v2, :cond_32

    .line 25387
    const/4 v3, 0x1

    :try_start_29
    iget-object v4, p0, val$heapdumpFile:Ljava/io/File;

    invoke-virtual {v4}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v2, v3, v4, v1}, Landroid/app/IApplicationThread;->dumpHeap(ZLjava/lang/String;Landroid/os/ParcelFileDescriptor;)V
    :try_end_32
    .catch Landroid/os/RemoteException; {:try_start_29 .. :try_end_32} :catch_4f
    .catch Ljava/io/FileNotFoundException; {:try_start_29 .. :try_end_32} :catch_38
    .catchall {:try_start_29 .. :try_end_32} :catchall_44

    .line 25394
    :cond_32
    :goto_32
    if-eqz v1, :cond_37

    .line 25396
    :try_start_34
    invoke-virtual {v1}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_37
    .catch Ljava/io/IOException; {:try_start_34 .. :try_end_37} :catch_4b

    .line 25401
    .end local v2    # "thread":Landroid/app/IApplicationThread;
    :cond_37
    :goto_37
    return-void

    .line 25391
    :catch_38
    move-exception v0

    .line 25392
    .local v0, "e":Ljava/io/FileNotFoundException;
    :try_start_39
    invoke-virtual {v0}, Ljava/io/FileNotFoundException;->printStackTrace()V
    :try_end_3c
    .catchall {:try_start_39 .. :try_end_3c} :catchall_44

    .line 25394
    if-eqz v1, :cond_37

    .line 25396
    :try_start_3e
    invoke-virtual {v1}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_41
    .catch Ljava/io/IOException; {:try_start_3e .. :try_end_41} :catch_42

    goto :goto_37

    .line 25397
    :catch_42
    move-exception v3

    goto :goto_37

    .line 25394
    .end local v0    # "e":Ljava/io/FileNotFoundException;
    :catchall_44
    move-exception v3

    if-eqz v1, :cond_4a

    .line 25396
    :try_start_47
    invoke-virtual {v1}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_4a
    .catch Ljava/io/IOException; {:try_start_47 .. :try_end_4a} :catch_4d

    .line 25398
    :cond_4a
    :goto_4a
    throw v3

    .line 25397
    .restart local v2    # "thread":Landroid/app/IApplicationThread;
    :catch_4b
    move-exception v3

    goto :goto_37

    .end local v2    # "thread":Landroid/app/IApplicationThread;
    :catch_4d
    move-exception v4

    goto :goto_4a

    .line 25388
    .restart local v2    # "thread":Landroid/app/IApplicationThread;
    :catch_4f
    move-exception v3

    goto :goto_32
.end method
