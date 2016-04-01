.class public final Lcom/android/server/am/ProviderMap;
.super Ljava/lang/Object;
.source "ProviderMap.java"


# static fields
.field private static final DBG:Z = false

.field private static final TAG:Ljava/lang/String; = "ProviderMap"


# instance fields
.field private final mAm:Lcom/android/server/am/ActivityManagerService;

.field private final mProvidersByClassPerUser:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Ljava/util/HashMap",
            "<",
            "Landroid/content/ComponentName;",
            "Lcom/android/server/am/ContentProviderRecord;",
            ">;>;"
        }
    .end annotation
.end field

.field private final mProvidersByNamePerUser:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/android/server/am/ContentProviderRecord;",
            ">;>;"
        }
    .end annotation
.end field

.field private final mSingletonByClass:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Landroid/content/ComponentName;",
            "Lcom/android/server/am/ContentProviderRecord;",
            ">;"
        }
    .end annotation
.end field

.field private final mSingletonByName:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/android/server/am/ContentProviderRecord;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lcom/android/server/am/ActivityManagerService;)V
    .registers 3
    .param p1, "am"    # Lcom/android/server/am/ActivityManagerService;

    .prologue
    .line 58
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 48
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, mSingletonByName:Ljava/util/HashMap;

    .line 50
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, mSingletonByClass:Ljava/util/HashMap;

    .line 53
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, mProvidersByNamePerUser:Landroid/util/SparseArray;

    .line 55
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, mProvidersByClassPerUser:Landroid/util/SparseArray;

    .line 59
    iput-object p1, p0, mAm:Lcom/android/server/am/ActivityManagerService;

    .line 60
    return-void
.end method

.method private collectPackageProvidersLocked(Ljava/lang/String;Ljava/util/Set;ZZLjava/util/HashMap;Ljava/util/ArrayList;)Z
    .registers 13
    .param p1, "packageName"    # Ljava/lang/String;
    .param p3, "doit"    # Z
    .param p4, "evenPersistent"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;ZZ",
            "Ljava/util/HashMap",
            "<",
            "Landroid/content/ComponentName;",
            "Lcom/android/server/am/ContentProviderRecord;",
            ">;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/server/am/ContentProviderRecord;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .local p2, "filterByClasses":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    .local p5, "providers":Ljava/util/HashMap;, "Ljava/util/HashMap<Landroid/content/ComponentName;Lcom/android/server/am/ContentProviderRecord;>;"
    .local p6, "result":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ContentProviderRecord;>;"
    const/4 v4, 0x1

    .line 192
    const/4 v0, 0x0

    .line 193
    .local v0, "didSomething":Z
    invoke-virtual {p5}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_a
    :goto_a
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_42

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/am/ContentProviderRecord;

    .line 194
    .local v2, "provider":Lcom/android/server/am/ContentProviderRecord;
    if-eqz p1, :cond_30

    iget-object v5, v2, Lcom/android/server/am/ContentProviderRecord;->info:Landroid/content/pm/ProviderInfo;

    iget-object v5, v5, Landroid/content/pm/ProviderInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v5, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_43

    if-eqz p2, :cond_30

    iget-object v5, v2, Lcom/android/server/am/ContentProviderRecord;->name:Landroid/content/ComponentName;

    invoke-virtual {v5}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v5

    invoke-interface {p2, v5}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_43

    :cond_30
    move v3, v4

    .line 198
    .local v3, "sameComponent":Z
    :goto_31
    if-eqz v3, :cond_a

    iget-object v5, v2, Lcom/android/server/am/ContentProviderRecord;->proc:Lcom/android/server/am/ProcessRecord;

    if-eqz v5, :cond_3f

    if-nez p4, :cond_3f

    iget-object v5, v2, Lcom/android/server/am/ContentProviderRecord;->proc:Lcom/android/server/am/ProcessRecord;

    iget-boolean v5, v5, Lcom/android/server/am/ProcessRecord;->persistent:Z

    if-nez v5, :cond_a

    .line 200
    :cond_3f
    if-nez p3, :cond_45

    move v0, v4

    .line 207
    .end local v0    # "didSomething":Z
    .end local v2    # "provider":Lcom/android/server/am/ContentProviderRecord;
    .end local v3    # "sameComponent":Z
    :cond_42
    return v0

    .line 194
    .restart local v0    # "didSomething":Z
    .restart local v2    # "provider":Lcom/android/server/am/ContentProviderRecord;
    :cond_43
    const/4 v3, 0x0

    goto :goto_31

    .line 203
    .restart local v3    # "sameComponent":Z
    :cond_45
    const/4 v0, 0x1

    .line 204
    invoke-virtual {p6, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_a
.end method

.method private dumpProvider(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;Lcom/android/server/am/ContentProviderRecord;[Ljava/lang/String;Z)V
    .registers 13
    .param p1, "prefix"    # Ljava/lang/String;
    .param p2, "fd"    # Ljava/io/FileDescriptor;
    .param p3, "pw"    # Ljava/io/PrintWriter;
    .param p4, "r"    # Lcom/android/server/am/ContentProviderRecord;
    .param p5, "args"    # [Ljava/lang/String;
    .param p6, "dumpAll"    # Z

    .prologue
    .line 390
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "  "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 391
    .local v1, "innerPrefix":Ljava/lang/String;
    iget-object v4, p0, mAm:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v4

    .line 392
    :try_start_16
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v3, "PROVIDER "

    invoke-virtual {p3, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 393
    invoke-virtual {p3, p4}, Ljava/io/PrintWriter;->print(Ljava/lang/Object;)V

    .line 394
    const-string v3, " pid="

    invoke-virtual {p3, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 395
    iget-object v3, p4, Lcom/android/server/am/ContentProviderRecord;->proc:Lcom/android/server/am/ProcessRecord;

    if-eqz v3, :cond_72

    iget-object v3, p4, Lcom/android/server/am/ContentProviderRecord;->proc:Lcom/android/server/am/ProcessRecord;

    iget v3, v3, Lcom/android/server/am/ProcessRecord;->pid:I

    invoke-virtual {p3, v3}, Ljava/io/PrintWriter;->println(I)V

    .line 397
    :goto_31
    if-eqz p6, :cond_37

    .line 398
    const/4 v3, 0x1

    invoke-virtual {p4, p3, v1, v3}, Lcom/android/server/am/ContentProviderRecord;->dump(Ljava/io/PrintWriter;Ljava/lang/String;Z)V

    .line 400
    :cond_37
    monitor-exit v4
    :try_end_38
    .catchall {:try_start_16 .. :try_end_38} :catchall_78

    .line 401
    iget-object v3, p4, Lcom/android/server/am/ContentProviderRecord;->proc:Lcom/android/server/am/ProcessRecord;

    if-eqz v3, :cond_71

    iget-object v3, p4, Lcom/android/server/am/ContentProviderRecord;->proc:Lcom/android/server/am/ProcessRecord;

    iget-object v3, v3, Lcom/android/server/am/ProcessRecord;->thread:Landroid/app/IApplicationThread;

    if-eqz v3, :cond_71

    .line 402
    const-string v3, "    Client:"

    invoke-virtual {p3, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 403
    invoke-virtual {p3}, Ljava/io/PrintWriter;->flush()V

    .line 405
    :try_start_4a
    new-instance v2, Lcom/android/internal/os/TransferPipe;

    invoke-direct {v2}, Lcom/android/internal/os/TransferPipe;-><init>()V
    :try_end_4f
    .catch Ljava/io/IOException; {:try_start_4a .. :try_end_4f} :catch_80
    .catch Landroid/os/RemoteException; {:try_start_4a .. :try_end_4f} :catch_98

    .line 407
    .local v2, "tp":Lcom/android/internal/os/TransferPipe;
    :try_start_4f
    iget-object v3, p4, Lcom/android/server/am/ContentProviderRecord;->proc:Lcom/android/server/am/ProcessRecord;

    iget-object v3, v3, Lcom/android/server/am/ProcessRecord;->thread:Landroid/app/IApplicationThread;

    invoke-virtual {v2}, Lcom/android/internal/os/TransferPipe;->getWriteFd()Landroid/os/ParcelFileDescriptor;

    move-result-object v4

    invoke-virtual {v4}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v4

    iget-object v5, p4, Lcom/android/server/am/ContentProviderRecord;->provider:Landroid/content/IContentProvider;

    invoke-interface {v5}, Landroid/content/IContentProvider;->asBinder()Landroid/os/IBinder;

    move-result-object v5

    invoke-interface {v3, v4, v5, p5}, Landroid/app/IApplicationThread;->dumpProvider(Ljava/io/FileDescriptor;Landroid/os/IBinder;[Ljava/lang/String;)V

    .line 409
    const-string v3, "      "

    invoke-virtual {v2, v3}, Lcom/android/internal/os/TransferPipe;->setBufferPrefix(Ljava/lang/String;)V

    .line 412
    const-wide/16 v4, 0x7d0

    invoke-virtual {v2, p2, v4, v5}, Lcom/android/internal/os/TransferPipe;->go(Ljava/io/FileDescriptor;J)V
    :try_end_6e
    .catchall {:try_start_4f .. :try_end_6e} :catchall_7b

    .line 414
    :try_start_6e
    invoke-virtual {v2}, Lcom/android/internal/os/TransferPipe;->kill()V
    :try_end_71
    .catch Ljava/io/IOException; {:try_start_6e .. :try_end_71} :catch_80
    .catch Landroid/os/RemoteException; {:try_start_6e .. :try_end_71} :catch_98

    .line 422
    .end local v2    # "tp":Lcom/android/internal/os/TransferPipe;
    :cond_71
    :goto_71
    return-void

    .line 396
    :cond_72
    :try_start_72
    const-string v3, "(not running)"

    invoke-virtual {p3, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_31

    .line 400
    :catchall_78
    move-exception v3

    monitor-exit v4
    :try_end_7a
    .catchall {:try_start_72 .. :try_end_7a} :catchall_78

    throw v3

    .line 414
    .restart local v2    # "tp":Lcom/android/internal/os/TransferPipe;
    :catchall_7b
    move-exception v3

    :try_start_7c
    invoke-virtual {v2}, Lcom/android/internal/os/TransferPipe;->kill()V

    throw v3
    :try_end_80
    .catch Ljava/io/IOException; {:try_start_7c .. :try_end_80} :catch_80
    .catch Landroid/os/RemoteException; {:try_start_7c .. :try_end_80} :catch_98

    .line 416
    .end local v2    # "tp":Lcom/android/internal/os/TransferPipe;
    :catch_80
    move-exception v0

    .line 417
    .local v0, "ex":Ljava/io/IOException;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "      Failure while dumping the provider: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p3, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_71

    .line 418
    .end local v0    # "ex":Ljava/io/IOException;
    :catch_98
    move-exception v0

    .line 419
    .local v0, "ex":Landroid/os/RemoteException;
    const-string v3, "      Got a RemoteException while dumping the service"

    invoke-virtual {p3, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_71
.end method

.method private dumpProvidersByClassLocked(Ljava/io/PrintWriter;ZLjava/lang/String;Ljava/lang/String;ZLjava/util/HashMap;)Z
    .registers 12
    .param p1, "pw"    # Ljava/io/PrintWriter;
    .param p2, "dumpAll"    # Z
    .param p3, "dumpPackage"    # Ljava/lang/String;
    .param p4, "header"    # Ljava/lang/String;
    .param p5, "needSep"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/PrintWriter;",
            "Z",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Z",
            "Ljava/util/HashMap",
            "<",
            "Landroid/content/ComponentName;",
            "Lcom/android/server/am/ContentProviderRecord;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .line 244
    .local p6, "map":Ljava/util/HashMap;, "Ljava/util/HashMap<Landroid/content/ComponentName;Lcom/android/server/am/ContentProviderRecord;>;"
    invoke-virtual {p6}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 245
    .local v1, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<Landroid/content/ComponentName;Lcom/android/server/am/ContentProviderRecord;>;>;"
    const/4 v3, 0x0

    .line 246
    .local v3, "written":Z
    :cond_9
    :goto_9
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_44

    .line 247
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 248
    .local v0, "e":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Landroid/content/ComponentName;Lcom/android/server/am/ContentProviderRecord;>;"
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/am/ContentProviderRecord;

    .line 249
    .local v2, "r":Lcom/android/server/am/ContentProviderRecord;
    if-eqz p3, :cond_27

    iget-object v4, v2, Lcom/android/server/am/ContentProviderRecord;->appInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v4, v4, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {p3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_9

    .line 252
    :cond_27
    if-eqz p5, :cond_2f

    .line 253
    const-string v4, ""

    invoke-virtual {p1, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 254
    const/4 p5, 0x0

    .line 256
    :cond_2f
    if-eqz p4, :cond_35

    .line 257
    invoke-virtual {p1, p4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 258
    const/4 p4, 0x0

    .line 260
    :cond_35
    const/4 v3, 0x1

    .line 261
    const-string v4, "  * "

    invoke-virtual {p1, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 262
    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 263
    const-string v4, "    "

    invoke-virtual {v2, p1, v4, p2}, Lcom/android/server/am/ContentProviderRecord;->dump(Ljava/io/PrintWriter;Ljava/lang/String;Z)V

    goto :goto_9

    .line 265
    .end local v0    # "e":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Landroid/content/ComponentName;Lcom/android/server/am/ContentProviderRecord;>;"
    .end local v2    # "r":Lcom/android/server/am/ContentProviderRecord;
    :cond_44
    return v3
.end method

.method private dumpProvidersByNameLocked(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;ZLjava/util/HashMap;)Z
    .registers 11
    .param p1, "pw"    # Ljava/io/PrintWriter;
    .param p2, "dumpPackage"    # Ljava/lang/String;
    .param p3, "header"    # Ljava/lang/String;
    .param p4, "needSep"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/PrintWriter;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Z",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/android/server/am/ContentProviderRecord;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .line 270
    .local p5, "map":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Lcom/android/server/am/ContentProviderRecord;>;"
    invoke-virtual {p5}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 271
    .local v1, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/lang/String;Lcom/android/server/am/ContentProviderRecord;>;>;"
    const/4 v3, 0x0

    .line 272
    .local v3, "written":Z
    :cond_9
    :goto_9
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_51

    .line 273
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 274
    .local v0, "e":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lcom/android/server/am/ContentProviderRecord;>;"
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/am/ContentProviderRecord;

    .line 275
    .local v2, "r":Lcom/android/server/am/ContentProviderRecord;
    if-eqz p2, :cond_27

    iget-object v4, v2, Lcom/android/server/am/ContentProviderRecord;->appInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v4, v4, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {p2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_9

    .line 278
    :cond_27
    if-eqz p4, :cond_2f

    .line 279
    const-string v4, ""

    invoke-virtual {p1, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 280
    const/4 p4, 0x0

    .line 282
    :cond_2f
    if-eqz p3, :cond_35

    .line 283
    invoke-virtual {p1, p3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 284
    const/4 p3, 0x0

    .line 286
    :cond_35
    const/4 v3, 0x1

    .line 287
    const-string v4, "  "

    invoke-virtual {p1, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 288
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-virtual {p1, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 289
    const-string v4, ": "

    invoke-virtual {p1, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 290
    invoke-virtual {v2}, Lcom/android/server/am/ContentProviderRecord;->toShortString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_9

    .line 292
    .end local v0    # "e":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lcom/android/server/am/ContentProviderRecord;>;"
    .end local v2    # "r":Lcom/android/server/am/ContentProviderRecord;
    :cond_51
    return v3
.end method

.method private getProvidersByName(I)Ljava/util/HashMap;
    .registers 7
    .param p1, "userId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/android/server/am/ContentProviderRecord;",
            ">;"
        }
    .end annotation

    .prologue
    .line 163
    if-gez p1, :cond_1b

    new-instance v2, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Bad user "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 164
    :cond_1b
    iget-object v2, p0, mProvidersByNamePerUser:Landroid/util/SparseArray;

    invoke-virtual {v2, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/HashMap;

    .line 165
    .local v0, "map":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Lcom/android/server/am/ContentProviderRecord;>;"
    if-nez v0, :cond_30

    .line 166
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 167
    .local v1, "newMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Lcom/android/server/am/ContentProviderRecord;>;"
    iget-object v2, p0, mProvidersByNamePerUser:Landroid/util/SparseArray;

    invoke-virtual {v2, p1, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 170
    .end local v1    # "newMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Lcom/android/server/am/ContentProviderRecord;>;"
    :goto_2f
    return-object v1

    :cond_30
    move-object v1, v0

    goto :goto_2f
.end method


# virtual methods
.method collectPackageProvidersLocked(Ljava/lang/String;Ljava/util/Set;ZZILjava/util/ArrayList;)Z
    .registers 16
    .param p1, "packageName"    # Ljava/lang/String;
    .param p3, "doit"    # Z
    .param p4, "evenPersistent"    # Z
    .param p5, "userId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;ZZI",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/server/am/ContentProviderRecord;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .line 213
    .local p2, "filterByClasses":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    .local p6, "result":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ContentProviderRecord;>;"
    const/4 v7, 0x0

    .line 214
    .local v7, "didSomething":Z
    const/4 v0, -0x1

    if-eq p5, v0, :cond_6

    if-nez p5, :cond_12

    .line 215
    :cond_6
    iget-object v5, p0, mSingletonByClass:Ljava/util/HashMap;

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move v4, p4

    move-object v6, p6

    invoke-direct/range {v0 .. v6}, collectPackageProvidersLocked(Ljava/lang/String;Ljava/util/Set;ZZLjava/util/HashMap;Ljava/util/ArrayList;)Z

    move-result v7

    .line 218
    :cond_12
    if-nez p3, :cond_18

    if-eqz v7, :cond_18

    .line 219
    const/4 v0, 0x1

    .line 239
    :goto_17
    return v0

    .line 221
    :cond_18
    const/4 v0, -0x1

    if-ne p5, v0, :cond_40

    .line 222
    const/4 v8, 0x0

    .local v8, "i":I
    :goto_1c
    iget-object v0, p0, mProvidersByClassPerUser:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    if-ge v8, v0, :cond_51

    .line 223
    iget-object v0, p0, mProvidersByClassPerUser:Landroid/util/SparseArray;

    invoke-virtual {v0, v8}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/HashMap;

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move v4, p4

    move-object v6, p6

    invoke-direct/range {v0 .. v6}, collectPackageProvidersLocked(Ljava/lang/String;Ljava/util/Set;ZZLjava/util/HashMap;Ljava/util/ArrayList;)Z

    move-result v0

    if-eqz v0, :cond_3d

    .line 225
    if-nez p3, :cond_3c

    .line 226
    const/4 v0, 0x1

    goto :goto_17

    .line 228
    :cond_3c
    const/4 v7, 0x1

    .line 222
    :cond_3d
    add-int/lit8 v8, v8, 0x1

    goto :goto_1c

    .line 232
    .end local v8    # "i":I
    :cond_40
    invoke-virtual {p0, p5}, getProvidersByClass(I)Ljava/util/HashMap;

    move-result-object v5

    .line 234
    .local v5, "items":Ljava/util/HashMap;, "Ljava/util/HashMap<Landroid/content/ComponentName;Lcom/android/server/am/ContentProviderRecord;>;"
    if-eqz v5, :cond_51

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move v4, p4

    move-object v6, p6

    .line 235
    invoke-direct/range {v0 .. v6}, collectPackageProvidersLocked(Ljava/lang/String;Ljava/util/Set;ZZLjava/util/HashMap;Ljava/util/ArrayList;)Z

    move-result v0

    or-int/2addr v7, v0

    .end local v5    # "items":Ljava/util/HashMap;, "Ljava/util/HashMap<Landroid/content/ComponentName;Lcom/android/server/am/ContentProviderRecord;>;"
    :cond_51
    move v0, v7

    .line 239
    goto :goto_17
.end method

.method protected dumpProvider(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;Ljava/lang/String;[Ljava/lang/String;IZ)Z
    .registers 22
    .param p1, "fd"    # Ljava/io/FileDescriptor;
    .param p2, "pw"    # Ljava/io/PrintWriter;
    .param p3, "name"    # Ljava/lang/String;
    .param p4, "args"    # [Ljava/lang/String;
    .param p5, "opti"    # I
    .param p6, "dumpAll"    # Z

    .prologue
    .line 327
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    .line 328
    .local v8, "allProviders":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ContentProviderRecord;>;"
    new-instance v13, Ljava/util/ArrayList;

    invoke-direct {v13}, Ljava/util/ArrayList;-><init>()V

    .line 330
    .local v13, "providers":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ContentProviderRecord;>;"
    iget-object v2, p0, mAm:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v2

    .line 331
    :try_start_d
    iget-object v1, p0, mSingletonByClass:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-virtual {v8, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 332
    const/4 v10, 0x0

    .local v10, "i":I
    :goto_17
    iget-object v1, p0, mProvidersByClassPerUser:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v1

    if-ge v10, v1, :cond_31

    .line 333
    iget-object v1, p0, mProvidersByClassPerUser:Landroid/util/SparseArray;

    invoke-virtual {v1, v10}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-virtual {v8, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 332
    add-int/lit8 v10, v10, 0x1

    goto :goto_17

    .line 336
    :cond_31
    const-string v1, "all"

    move-object/from16 v0, p3

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_47

    .line 337
    invoke-virtual {v13, v8}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 367
    :cond_3e
    monitor-exit v2
    :try_end_3f
    .catchall {:try_start_d .. :try_end_3f} :catchall_8e

    .line 369
    invoke-virtual {v13}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-gtz v1, :cond_9b

    .line 370
    const/4 v1, 0x0

    .line 381
    :goto_46
    return v1

    .line 339
    :cond_47
    if-eqz p3, :cond_78

    :try_start_49
    invoke-static/range {p3 .. p3}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;
    :try_end_4c
    .catchall {:try_start_49 .. :try_end_4c} :catchall_8e

    move-result-object v9

    .line 341
    .local v9, "componentName":Landroid/content/ComponentName;
    :goto_4d
    const/4 v12, 0x0

    .line 342
    .local v12, "objectId":I
    if-nez v9, :cond_5b

    .line 345
    const/16 v1, 0x10

    :try_start_52
    move-object/from16 v0, p3

    invoke-static {v0, v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I
    :try_end_57
    .catch Ljava/lang/RuntimeException; {:try_start_52 .. :try_end_57} :catch_c2
    .catchall {:try_start_52 .. :try_end_57} :catchall_8e

    move-result v12

    .line 346
    const/16 p3, 0x0

    .line 347
    const/4 v9, 0x0

    .line 352
    :cond_5b
    :goto_5b
    const/4 v10, 0x0

    :goto_5c
    :try_start_5c
    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v10, v1, :cond_3e

    .line 353
    invoke-virtual {v8, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lcom/android/server/am/ContentProviderRecord;

    .line 354
    .local v14, "r1":Lcom/android/server/am/ContentProviderRecord;
    if-eqz v9, :cond_7a

    .line 355
    iget-object v1, v14, Lcom/android/server/am/ContentProviderRecord;->name:Landroid/content/ComponentName;

    invoke-virtual {v1, v9}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_75

    .line 356
    invoke-virtual {v13, v14}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 352
    :cond_75
    :goto_75
    add-int/lit8 v10, v10, 0x1

    goto :goto_5c

    .line 339
    .end local v9    # "componentName":Landroid/content/ComponentName;
    .end local v12    # "objectId":I
    .end local v14    # "r1":Lcom/android/server/am/ContentProviderRecord;
    :cond_78
    const/4 v9, 0x0

    goto :goto_4d

    .line 358
    .restart local v9    # "componentName":Landroid/content/ComponentName;
    .restart local v12    # "objectId":I
    .restart local v14    # "r1":Lcom/android/server/am/ContentProviderRecord;
    :cond_7a
    if-eqz p3, :cond_91

    .line 359
    iget-object v1, v14, Lcom/android/server/am/ContentProviderRecord;->name:Landroid/content/ComponentName;

    invoke-virtual {v1}, Landroid/content/ComponentName;->flattenToString()Ljava/lang/String;

    move-result-object v1

    move-object/from16 v0, p3

    invoke-virtual {v1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_75

    .line 360
    invoke-virtual {v13, v14}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_75

    .line 367
    .end local v9    # "componentName":Landroid/content/ComponentName;
    .end local v10    # "i":I
    .end local v12    # "objectId":I
    .end local v14    # "r1":Lcom/android/server/am/ContentProviderRecord;
    :catchall_8e
    move-exception v1

    monitor-exit v2
    :try_end_90
    .catchall {:try_start_5c .. :try_end_90} :catchall_8e

    throw v1

    .line 362
    .restart local v9    # "componentName":Landroid/content/ComponentName;
    .restart local v10    # "i":I
    .restart local v12    # "objectId":I
    .restart local v14    # "r1":Lcom/android/server/am/ContentProviderRecord;
    :cond_91
    :try_start_91
    invoke-static {v14}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v1

    if-ne v1, v12, :cond_75

    .line 363
    invoke-virtual {v13, v14}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_9a
    .catchall {:try_start_91 .. :try_end_9a} :catchall_8e

    goto :goto_75

    .line 373
    .end local v9    # "componentName":Landroid/content/ComponentName;
    .end local v12    # "objectId":I
    .end local v14    # "r1":Lcom/android/server/am/ContentProviderRecord;
    :cond_9b
    const/4 v11, 0x0

    .line 374
    .local v11, "needSep":Z
    const/4 v10, 0x0

    :goto_9d
    invoke-virtual {v13}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v10, v1, :cond_c0

    .line 375
    if-eqz v11, :cond_a8

    .line 376
    invoke-virtual/range {p2 .. p2}, Ljava/io/PrintWriter;->println()V

    .line 378
    :cond_a8
    const/4 v11, 0x1

    .line 379
    const-string v2, ""

    invoke-virtual {v13, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/am/ContentProviderRecord;

    move-object v1, p0

    move-object/from16 v3, p1

    move-object/from16 v4, p2

    move-object/from16 v6, p4

    move/from16 v7, p6

    invoke-direct/range {v1 .. v7}, dumpProvider(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;Lcom/android/server/am/ContentProviderRecord;[Ljava/lang/String;Z)V

    .line 374
    add-int/lit8 v10, v10, 0x1

    goto :goto_9d

    .line 381
    :cond_c0
    const/4 v1, 0x1

    goto :goto_46

    .line 348
    .end local v11    # "needSep":Z
    .restart local v9    # "componentName":Landroid/content/ComponentName;
    .restart local v12    # "objectId":I
    :catch_c2
    move-exception v1

    goto :goto_5b
.end method

.method dumpProvidersLocked(Ljava/io/PrintWriter;ZLjava/lang/String;)Z
    .registers 18
    .param p1, "pw"    # Ljava/io/PrintWriter;
    .param p2, "dumpAll"    # Z
    .param p3, "dumpPackage"    # Ljava/lang/String;

    .prologue
    .line 296
    const/4 v5, 0x0

    .line 298
    .local v5, "needSep":Z
    iget-object v0, p0, mSingletonByClass:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->size()I

    move-result v0

    if-lez v0, :cond_18

    .line 299
    const-string v4, "  Published single-user content providers (by class):"

    iget-object v6, p0, mSingletonByClass:Ljava/util/HashMap;

    move-object v0, p0

    move-object v1, p1

    move/from16 v2, p2

    move-object/from16 v3, p3

    invoke-direct/range {v0 .. v6}, dumpProvidersByClassLocked(Ljava/io/PrintWriter;ZLjava/lang/String;Ljava/lang/String;ZLjava/util/HashMap;)Z

    move-result v0

    or-int/2addr v5, v0

    .line 304
    :cond_18
    const/4 v13, 0x0

    .local v13, "i":I
    :goto_19
    iget-object v0, p0, mProvidersByClassPerUser:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    if-ge v13, v0, :cond_56

    .line 305
    iget-object v0, p0, mProvidersByClassPerUser:Landroid/util/SparseArray;

    invoke-virtual {v0, v13}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/HashMap;

    .line 306
    .local v6, "map":Ljava/util/HashMap;, "Ljava/util/HashMap<Landroid/content/ComponentName;Lcom/android/server/am/ContentProviderRecord;>;"
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  Published user "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, mProvidersByClassPerUser:Landroid/util/SparseArray;

    invoke-virtual {v1, v13}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " content providers (by class):"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    move-object v0, p0

    move-object v1, p1

    move/from16 v2, p2

    move-object/from16 v3, p3

    invoke-direct/range {v0 .. v6}, dumpProvidersByClassLocked(Ljava/io/PrintWriter;ZLjava/lang/String;Ljava/lang/String;ZLjava/util/HashMap;)Z

    move-result v0

    or-int/2addr v5, v0

    .line 304
    add-int/lit8 v13, v13, 0x1

    goto :goto_19

    .line 311
    .end local v6    # "map":Ljava/util/HashMap;, "Ljava/util/HashMap<Landroid/content/ComponentName;Lcom/android/server/am/ContentProviderRecord;>;"
    :cond_56
    if-eqz p2, :cond_a3

    .line 312
    const-string v10, "  Single-user authority to provider mappings:"

    iget-object v12, p0, mSingletonByName:Ljava/util/HashMap;

    move-object v7, p0

    move-object v8, p1

    move-object/from16 v9, p3

    move v11, v5

    invoke-direct/range {v7 .. v12}, dumpProvidersByNameLocked(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;ZLjava/util/HashMap;)Z

    move-result v0

    or-int/2addr v5, v0

    .line 315
    const/4 v13, 0x0

    :goto_67
    iget-object v0, p0, mProvidersByNamePerUser:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    if-ge v13, v0, :cond_a3

    .line 316
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  User "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, mProvidersByNamePerUser:Landroid/util/SparseArray;

    invoke-virtual {v1, v13}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " authority to provider mappings:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    iget-object v0, p0, mProvidersByNamePerUser:Landroid/util/SparseArray;

    invoke-virtual {v0, v13}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/util/HashMap;

    move-object v7, p0

    move-object v8, p1

    move-object/from16 v9, p3

    move v11, v5

    invoke-direct/range {v7 .. v12}, dumpProvidersByNameLocked(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;ZLjava/util/HashMap;)Z

    move-result v0

    or-int/2addr v5, v0

    .line 315
    add-int/lit8 v13, v13, 0x1

    goto :goto_67

    .line 322
    :cond_a3
    return v5
.end method

.method getProviderByClass(Landroid/content/ComponentName;)Lcom/android/server/am/ContentProviderRecord;
    .registers 3
    .param p1, "name"    # Landroid/content/ComponentName;

    .prologue
    .line 81
    const/4 v0, -0x1

    invoke-virtual {p0, p1, v0}, getProviderByClass(Landroid/content/ComponentName;I)Lcom/android/server/am/ContentProviderRecord;

    move-result-object v0

    return-object v0
.end method

.method getProviderByClass(Landroid/content/ComponentName;I)Lcom/android/server/am/ContentProviderRecord;
    .registers 5
    .param p1, "name"    # Landroid/content/ComponentName;
    .param p2, "userId"    # I

    .prologue
    .line 89
    iget-object v1, p0, mSingletonByClass:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/am/ContentProviderRecord;

    .line 90
    .local v0, "record":Lcom/android/server/am/ContentProviderRecord;
    if-eqz v0, :cond_b

    .line 95
    .end local v0    # "record":Lcom/android/server/am/ContentProviderRecord;
    :goto_a
    return-object v0

    .restart local v0    # "record":Lcom/android/server/am/ContentProviderRecord;
    :cond_b
    invoke-virtual {p0, p2}, getProvidersByClass(I)Ljava/util/HashMap;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/am/ContentProviderRecord;

    move-object v0, v1

    goto :goto_a
.end method

.method getProviderByName(Ljava/lang/String;)Lcom/android/server/am/ContentProviderRecord;
    .registers 3
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 63
    const/4 v0, -0x1

    invoke-virtual {p0, p1, v0}, getProviderByName(Ljava/lang/String;I)Lcom/android/server/am/ContentProviderRecord;

    move-result-object v0

    return-object v0
.end method

.method getProviderByName(Ljava/lang/String;I)Lcom/android/server/am/ContentProviderRecord;
    .registers 5
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "userId"    # I

    .prologue
    .line 71
    iget-object v1, p0, mSingletonByName:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/am/ContentProviderRecord;

    .line 72
    .local v0, "record":Lcom/android/server/am/ContentProviderRecord;
    if-eqz v0, :cond_b

    .line 77
    .end local v0    # "record":Lcom/android/server/am/ContentProviderRecord;
    :goto_a
    return-object v0

    .restart local v0    # "record":Lcom/android/server/am/ContentProviderRecord;
    :cond_b
    invoke-direct {p0, p2}, getProvidersByName(I)Ljava/util/HashMap;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/am/ContentProviderRecord;

    move-object v0, v1

    goto :goto_a
.end method

.method getProvidersByClass(I)Ljava/util/HashMap;
    .registers 7
    .param p1, "userId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/HashMap",
            "<",
            "Landroid/content/ComponentName;",
            "Lcom/android/server/am/ContentProviderRecord;",
            ">;"
        }
    .end annotation

    .prologue
    .line 175
    if-gez p1, :cond_1b

    new-instance v2, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Bad user "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 176
    :cond_1b
    iget-object v2, p0, mProvidersByClassPerUser:Landroid/util/SparseArray;

    invoke-virtual {v2, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/HashMap;

    .line 178
    .local v0, "map":Ljava/util/HashMap;, "Ljava/util/HashMap<Landroid/content/ComponentName;Lcom/android/server/am/ContentProviderRecord;>;"
    if-nez v0, :cond_30

    .line 179
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 181
    .local v1, "newMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Landroid/content/ComponentName;Lcom/android/server/am/ContentProviderRecord;>;"
    iget-object v2, p0, mProvidersByClassPerUser:Landroid/util/SparseArray;

    invoke-virtual {v2, p1, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 184
    .end local v1    # "newMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Landroid/content/ComponentName;Lcom/android/server/am/ContentProviderRecord;>;"
    :goto_2f
    return-object v1

    :cond_30
    move-object v1, v0

    goto :goto_2f
.end method

.method putProviderByClass(Landroid/content/ComponentName;Lcom/android/server/am/ContentProviderRecord;)V
    .registers 5
    .param p1, "name"    # Landroid/content/ComponentName;
    .param p2, "record"    # Lcom/android/server/am/ContentProviderRecord;

    .prologue
    .line 116
    iget-boolean v1, p2, Lcom/android/server/am/ContentProviderRecord;->singleton:Z

    if-eqz v1, :cond_a

    .line 117
    iget-object v1, p0, mSingletonByClass:Ljava/util/HashMap;

    invoke-virtual {v1, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 122
    :goto_9
    return-void

    .line 119
    :cond_a
    iget-object v1, p2, Lcom/android/server/am/ContentProviderRecord;->appInfo:Landroid/content/pm/ApplicationInfo;

    iget v1, v1, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-static {v1}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v0

    .line 120
    .local v0, "userId":I
    invoke-virtual {p0, v0}, getProvidersByClass(I)Ljava/util/HashMap;

    move-result-object v1

    invoke-virtual {v1, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_9
.end method

.method putProviderByName(Ljava/lang/String;Lcom/android/server/am/ContentProviderRecord;)V
    .registers 5
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "record"    # Lcom/android/server/am/ContentProviderRecord;

    .prologue
    .line 103
    iget-boolean v1, p2, Lcom/android/server/am/ContentProviderRecord;->singleton:Z

    if-eqz v1, :cond_a

    .line 104
    iget-object v1, p0, mSingletonByName:Ljava/util/HashMap;

    invoke-virtual {v1, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 109
    :goto_9
    return-void

    .line 106
    :cond_a
    iget-object v1, p2, Lcom/android/server/am/ContentProviderRecord;->appInfo:Landroid/content/pm/ApplicationInfo;

    iget v1, v1, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-static {v1}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v0

    .line 107
    .local v0, "userId":I
    invoke-direct {p0, v0}, getProvidersByName(I)Ljava/util/HashMap;

    move-result-object v1

    invoke-virtual {v1, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_9
.end method

.method removeProviderByClass(Landroid/content/ComponentName;I)V
    .registers 7
    .param p1, "name"    # Landroid/content/ComponentName;
    .param p2, "userId"    # I

    .prologue
    .line 144
    iget-object v1, p0, mSingletonByClass:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_e

    .line 147
    iget-object v1, p0, mSingletonByClass:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 160
    :cond_d
    :goto_d
    return-void

    .line 149
    :cond_e
    if-gez p2, :cond_29

    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Bad user "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 153
    :cond_29
    invoke-virtual {p0, p2}, getProvidersByClass(I)Ljava/util/HashMap;

    move-result-object v0

    .line 155
    .local v0, "map":Ljava/util/HashMap;, "Ljava/util/HashMap<Landroid/content/ComponentName;Lcom/android/server/am/ContentProviderRecord;>;"
    invoke-virtual {v0, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 156
    invoke-virtual {v0}, Ljava/util/HashMap;->size()I

    move-result v1

    if-nez v1, :cond_d

    .line 157
    iget-object v1, p0, mProvidersByClassPerUser:Landroid/util/SparseArray;

    invoke-virtual {v1, p2}, Landroid/util/SparseArray;->remove(I)V

    goto :goto_d
.end method

.method removeProviderByName(Ljava/lang/String;I)V
    .registers 7
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "userId"    # I

    .prologue
    .line 125
    iget-object v1, p0, mSingletonByName:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_e

    .line 128
    iget-object v1, p0, mSingletonByName:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 141
    :cond_d
    :goto_d
    return-void

    .line 130
    :cond_e
    if-gez p2, :cond_29

    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Bad user "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 134
    :cond_29
    invoke-direct {p0, p2}, getProvidersByName(I)Ljava/util/HashMap;

    move-result-object v0

    .line 136
    .local v0, "map":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Lcom/android/server/am/ContentProviderRecord;>;"
    invoke-virtual {v0, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 137
    invoke-virtual {v0}, Ljava/util/HashMap;->size()I

    move-result v1

    if-nez v1, :cond_d

    .line 138
    iget-object v1, p0, mProvidersByNamePerUser:Landroid/util/SparseArray;

    invoke-virtual {v1, p2}, Landroid/util/SparseArray;->remove(I)V

    goto :goto_d
.end method
