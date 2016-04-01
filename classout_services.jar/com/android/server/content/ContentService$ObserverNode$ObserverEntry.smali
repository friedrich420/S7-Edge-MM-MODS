.class Lcom/android/server/content/ContentService$ObserverNode$ObserverEntry;
.super Ljava/lang/Object;
.source "ContentService.java"

# interfaces
.implements Landroid/os/IBinder$DeathRecipient;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/content/ContentService$ObserverNode;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ObserverEntry"
.end annotation


# instance fields
.field public final notifyForDescendants:Z

.field public final observer:Landroid/database/IContentObserver;

.field private final observersLock:Ljava/lang/Object;

.field public final pid:I

.field final synthetic this$0:Lcom/android/server/content/ContentService$ObserverNode;

.field public final uid:I

.field private final userHandle:I


# direct methods
.method public constructor <init>(Lcom/android/server/content/ContentService$ObserverNode;Landroid/database/IContentObserver;ZLjava/lang/Object;III)V
    .registers 11
    .param p2, "o"    # Landroid/database/IContentObserver;
    .param p3, "n"    # Z
    .param p4, "observersLock"    # Ljava/lang/Object;
    .param p5, "_uid"    # I
    .param p6, "_pid"    # I
    .param p7, "_userHandle"    # I

    .prologue
    .line 1020
    iput-object p1, p0, this$0:Lcom/android/server/content/ContentService$ObserverNode;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1021
    iput-object p4, p0, observersLock:Ljava/lang/Object;

    .line 1022
    iput-object p2, p0, observer:Landroid/database/IContentObserver;

    .line 1023
    iput p5, p0, uid:I

    .line 1024
    iput p6, p0, pid:I

    .line 1025
    iput p7, p0, userHandle:I

    .line 1026
    iput-boolean p3, p0, notifyForDescendants:Z

    .line 1028
    :try_start_11
    iget-object v1, p0, observer:Landroid/database/IContentObserver;

    invoke-interface {v1}, Landroid/database/IContentObserver;->asBinder()Landroid/os/IBinder;

    move-result-object v1

    const/4 v2, 0x0

    invoke-interface {v1, p0, v2}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V
    :try_end_1b
    .catch Landroid/os/RemoteException; {:try_start_11 .. :try_end_1b} :catch_1c

    .line 1032
    :goto_1b
    return-void

    .line 1029
    :catch_1c
    move-exception v0

    .line 1030
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {p0}, binderDied()V

    goto :goto_1b
.end method

.method static synthetic access$100(Lcom/android/server/content/ContentService$ObserverNode$ObserverEntry;)I
    .registers 2
    .param p0, "x0"    # Lcom/android/server/content/ContentService$ObserverNode$ObserverEntry;

    .prologue
    .line 1011
    iget v0, p0, userHandle:I

    return v0
.end method


# virtual methods
.method public binderDied()V
    .registers 4

    .prologue
    .line 1035
    iget-object v1, p0, observersLock:Ljava/lang/Object;

    monitor-enter v1

    .line 1036
    :try_start_3
    iget-object v0, p0, this$0:Lcom/android/server/content/ContentService$ObserverNode;

    iget-object v2, p0, observer:Landroid/database/IContentObserver;

    invoke-virtual {v0, v2}, Lcom/android/server/content/ContentService$ObserverNode;->removeObserverLocked(Landroid/database/IContentObserver;)Z

    .line 1037
    monitor-exit v1

    .line 1038
    return-void

    .line 1037
    :catchall_c
    move-exception v0

    monitor-exit v1
    :try_end_e
    .catchall {:try_start_3 .. :try_end_e} :catchall_c

    throw v0
.end method

.method public dumpLocked(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/util/SparseIntArray;)V
    .registers 9
    .param p1, "fd"    # Ljava/io/FileDescriptor;
    .param p2, "pw"    # Ljava/io/PrintWriter;
    .param p3, "args"    # [Ljava/lang/String;
    .param p4, "name"    # Ljava/lang/String;
    .param p5, "prefix"    # Ljava/lang/String;
    .param p6, "pidCounts"    # Landroid/util/SparseIntArray;

    .prologue
    .line 1042
    iget v0, p0, pid:I

    iget v1, p0, pid:I

    invoke-virtual {p6, v1}, Landroid/util/SparseIntArray;->get(I)I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {p6, v0, v1}, Landroid/util/SparseIntArray;->put(II)V

    .line 1043
    invoke-virtual {p2, p5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p2, p4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, ": pid="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1044
    iget v0, p0, pid:I

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(I)V

    const-string v0, " uid="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1045
    iget v0, p0, uid:I

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(I)V

    const-string v0, " user="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1046
    iget v0, p0, userHandle:I

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(I)V

    const-string v0, " target="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1047
    iget-object v0, p0, observer:Landroid/database/IContentObserver;

    if-eqz v0, :cond_4c

    iget-object v0, p0, observer:Landroid/database/IContentObserver;

    invoke-interface {v0}, Landroid/database/IContentObserver;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    :goto_40
    invoke-static {v0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1049
    return-void

    .line 1047
    :cond_4c
    const/4 v0, 0x0

    goto :goto_40
.end method
