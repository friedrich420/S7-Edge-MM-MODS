.class public Landroid/sec/clipboard/data/ClipboardDataMgr;
.super Ljava/lang/Object;
.source "ClipboardDataMgr.java"

# interfaces
.implements Landroid/sec/clipboard/data/IClipboardDataList;


# static fields
.field private static final TAG:Ljava/lang/String; = "ClipboardDataMgr"


# instance fields
.field private final mBinder:Landroid/sec/clipboard/data/IClipboardDataList$Stub;

.field private mContext:Landroid/content/Context;

.field private mCurrentListIndex:I

.field private mCurrentListOwnerUid:I

.field private mDataArrayList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/sec/clipboard/data/file/FileManager;",
            ">;"
        }
    .end annotation
.end field

.field private mDataList:Landroid/sec/clipboard/data/file/FileManager;

.field private mIsShared:Z

.field private final mMaxSize:I

.field private mPersonaManager:Landroid/os/PersonaManager;

.field private mPersonaPolicyManager:Landroid/os/PersonaPolicyManager;

.field private mUserManager:Landroid/os/UserManager;

.field private tempDeleteItem:Landroid/sec/clipboard/data/ClipboardData;


# direct methods
.method public constructor <init>(ILandroid/content/Context;Z)V
    .registers 7
    .param p1, "size"    # I
    .param p2, "context"    # Landroid/content/Context;
    .param p3, "shared"    # Z

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 138
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 68
    new-instance v0, Landroid/sec/clipboard/data/ClipboardDataMgr$1;

    invoke-direct {v0, p0}, Landroid/sec/clipboard/data/ClipboardDataMgr$1;-><init>(Landroid/sec/clipboard/data/ClipboardDataMgr;)V

    iput-object v0, p0, mBinder:Landroid/sec/clipboard/data/IClipboardDataList$Stub;

    .line 125
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, mDataArrayList:Ljava/util/ArrayList;

    .line 127
    iput v2, p0, mCurrentListOwnerUid:I

    .line 129
    iput-boolean v2, p0, mIsShared:Z

    .line 132
    iput-object v1, p0, tempDeleteItem:Landroid/sec/clipboard/data/ClipboardData;

    .line 133
    iput-object v1, p0, mPersonaManager:Landroid/os/PersonaManager;

    .line 134
    iput-object v1, p0, mPersonaPolicyManager:Landroid/os/PersonaPolicyManager;

    .line 135
    iput-object v1, p0, mUserManager:Landroid/os/UserManager;

    .line 139
    iput p1, p0, mMaxSize:I

    .line 140
    iput-object p2, p0, mContext:Landroid/content/Context;

    .line 141
    iput-boolean p3, p0, mIsShared:Z

    .line 142
    iget-object v0, p0, mContext:Landroid/content/Context;

    const-string/jumbo v1, "persona"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PersonaManager;

    iput-object v0, p0, mPersonaManager:Landroid/os/PersonaManager;

    .line 143
    iget-object v0, p0, mContext:Landroid/content/Context;

    const-string/jumbo v1, "user"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/UserManager;

    iput-object v0, p0, mUserManager:Landroid/os/UserManager;

    .line 144
    invoke-direct {p0, p1}, initializeClipboardDataMgr(I)V

    .line 145
    return-void
.end method

.method private createUserDBAndConnect(I)Landroid/sec/clipboard/data/file/FileManager;
    .registers 8
    .param p1, "cat"    # I

    .prologue
    const/4 v5, 0x0

    .line 363
    const/4 v0, 0x0

    .line 365
    .local v0, "fm":Landroid/sec/clipboard/data/file/FileManager;
    add-int/lit16 v3, p1, -0x3e8

    invoke-static {v3}, Landroid/os/PersonaManager;->isBBCContainer(I)Z

    move-result v3

    if-eqz v3, :cond_35

    .line 366
    invoke-virtual {p0, v5}, findFileManagerIndex(I)I

    move-result v1

    .line 367
    .local v1, "index":I
    if-ltz v1, :cond_19

    .line 368
    iget-object v3, p0, mDataArrayList:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/sec/clipboard/data/file/FileManager;

    .line 410
    :goto_18
    return-object v3

    .line 370
    :cond_19
    new-instance v2, Ljava/io/File;

    const-string v3, "/data/clipboard"

    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 372
    .local v2, "rootPath":Ljava/io/File;
    new-instance v0, Landroid/sec/clipboard/data/file/FileManager;

    .end local v0    # "fm":Landroid/sec/clipboard/data/file/FileManager;
    new-instance v3, Ljava/io/File;

    const-string v4, "clips.info"

    invoke-direct {v3, v2, v4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iget-object v4, p0, mContext:Landroid/content/Context;

    invoke-direct {v0, v3, v5, v4}, Landroid/sec/clipboard/data/file/FileManager;-><init>(Ljava/io/File;ILandroid/content/Context;)V

    .line 373
    .restart local v0    # "fm":Landroid/sec/clipboard/data/file/FileManager;
    iget-object v3, p0, mDataArrayList:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-object v3, v0

    .line 374
    goto :goto_18

    .line 377
    .end local v1    # "index":I
    .end local v2    # "rootPath":Ljava/io/File;
    :cond_35
    invoke-virtual {p0, p1}, findFileManagerIndex(I)I

    move-result v1

    .line 378
    .restart local v1    # "index":I
    if-ltz v1, :cond_44

    .line 379
    iget-object v3, p0, mDataArrayList:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/sec/clipboard/data/file/FileManager;

    goto :goto_18

    .line 382
    :cond_44
    const/16 v3, 0x66

    if-ne p1, v3, :cond_98

    .line 383
    new-instance v2, Ljava/io/File;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "/data/clipboard/secontainer/"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 384
    .restart local v2    # "rootPath":Ljava/io/File;
    new-instance v0, Landroid/sec/clipboard/data/file/FileManager;

    .end local v0    # "fm":Landroid/sec/clipboard/data/file/FileManager;
    new-instance v3, Ljava/io/File;

    const-string v4, "clips.info"

    invoke-direct {v3, v2, v4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iget-object v4, p0, mContext:Landroid/content/Context;

    invoke-direct {v0, v3, p1, v4}, Landroid/sec/clipboard/data/file/FileManager;-><init>(Ljava/io/File;ILandroid/content/Context;)V

    .line 385
    .restart local v0    # "fm":Landroid/sec/clipboard/data/file/FileManager;
    iget-object v3, p0, mDataArrayList:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 386
    sget-boolean v3, Landroid/sec/clipboard/data/ClipboardConstants;->DEBUG:Z

    if-eqz v3, :cond_93

    const-string v3, "ClipboardDataMgr"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "createUserDBAndConnect, good container, cat:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 387
    :cond_93
    invoke-static {v2}, Landroid/os/SELinux;->restoreconRecursive(Ljava/io/File;)Z

    move-object v3, v0

    .line 388
    goto :goto_18

    .line 389
    .end local v2    # "rootPath":Ljava/io/File;
    :cond_98
    const/16 v3, 0xc9

    if-lt p1, v3, :cond_108

    const/16 v3, 0x1f4

    if-gt p1, v3, :cond_108

    .line 390
    new-instance v2, Ljava/io/File;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "/data/clipboard/secontainer/"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 391
    .restart local v2    # "rootPath":Ljava/io/File;
    new-instance v0, Landroid/sec/clipboard/data/file/FileManager;

    .end local v0    # "fm":Landroid/sec/clipboard/data/file/FileManager;
    new-instance v3, Ljava/io/File;

    const-string v4, "clips.info"

    invoke-direct {v3, v2, v4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iget-object v4, p0, mContext:Landroid/content/Context;

    invoke-direct {v0, v3, p1, v4}, Landroid/sec/clipboard/data/file/FileManager;-><init>(Ljava/io/File;ILandroid/content/Context;)V

    .line 392
    .restart local v0    # "fm":Landroid/sec/clipboard/data/file/FileManager;
    iget-object v3, p0, mDataArrayList:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 393
    sget-boolean v3, Landroid/sec/clipboard/data/ClipboardConstants;->DEBUG:Z

    if-eqz v3, :cond_eb

    const-string v3, "ClipboardDataMgr"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "createUserDBAndConnect, third party container, cat:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 394
    :cond_eb
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "/data/clipboard/secontainer/"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3, p1}, Landroid/os/SELinux;->restorecon_with_category(Ljava/lang/String;I)Z

    move-object v3, v0

    .line 395
    goto/16 :goto_18

    .line 398
    .end local v2    # "rootPath":Ljava/io/File;
    :cond_108
    new-instance v2, Ljava/io/File;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "/data/clipboard"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    add-int/lit16 v4, p1, -0x3e8

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 399
    .restart local v2    # "rootPath":Ljava/io/File;
    new-instance v0, Landroid/sec/clipboard/data/file/FileManager;

    .end local v0    # "fm":Landroid/sec/clipboard/data/file/FileManager;
    new-instance v3, Ljava/io/File;

    const-string v4, "clips.info"

    invoke-direct {v3, v2, v4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iget-object v4, p0, mContext:Landroid/content/Context;

    invoke-direct {v0, v3, p1, v4}, Landroid/sec/clipboard/data/file/FileManager;-><init>(Ljava/io/File;ILandroid/content/Context;)V

    .line 400
    .restart local v0    # "fm":Landroid/sec/clipboard/data/file/FileManager;
    iget-object v3, p0, mDataArrayList:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 402
    sget-boolean v3, Landroid/sec/clipboard/data/ClipboardConstants;->SUPPORT_KNOX:Z

    if-nez v3, :cond_163

    .line 403
    const/16 v3, 0x44c

    if-gt v3, p1, :cond_163

    const/16 v3, 0x4aa

    if-gt p1, v3, :cond_163

    .line 404
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "/data/clipboard"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    add-int/lit16 v4, p1, -0x3e8

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    add-int/lit16 v4, p1, -0x3e8

    invoke-static {v3, v4}, Landroid/os/SELinux;->restorecon_with_category(Ljava/lang/String;I)Z

    .line 407
    :cond_163
    if-eqz p1, :cond_18b

    add-int/lit16 v3, p1, -0x3e8

    invoke-virtual {p0, v3}, isManagedProfile(I)Z

    move-result v3

    if-nez v3, :cond_18b

    .line 408
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "/data/clipboard"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    add-int/lit16 v4, p1, -0x3e8

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    add-int/lit16 v4, p1, -0x3e8

    invoke-static {v3, v4}, Landroid/os/SELinux;->restorecon_with_category(Ljava/lang/String;I)Z

    :cond_18b
    move-object v3, v0

    .line 410
    goto/16 :goto_18
.end method

.method private getAllSEContainerCategory()Ljava/util/List;
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 447
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 448
    .local v7, "res":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    iget-object v0, p0, mContext:Landroid/content/Context;

    if-nez v0, :cond_b

    .line 472
    :cond_a
    :goto_a
    return-object v7

    .line 452
    :cond_b
    const-string v0, "content://com.sec.knox.provider/SeamsPolicy"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 453
    .local v1, "uri":Landroid/net/Uri;
    iget-object v0, p0, mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v3, "getAllSEContainerCategory"

    move-object v4, v2

    move-object v5, v2

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 454
    .local v6, "cr":Landroid/database/Cursor;
    if-eqz v6, :cond_73

    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-lez v0, :cond_73

    .line 456
    :try_start_27
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    .line 458
    :cond_2a
    const-string v0, "ClipboardDataMgr"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getAllSEContainerCategory, cat result from query:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "getAllSEContainerCategory"

    invoke-interface {v6, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v6, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 459
    const-string v0, "getAllSEContainerCategory"

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {v7, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 460
    invoke-interface {v6}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_60
    .catchall {:try_start_27 .. :try_end_60} :catchall_6e

    move-result v0

    if-nez v0, :cond_2a

    .line 462
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 471
    const-string v0, "ClipboardDataMgr"

    const-string v2, "getAllSEContainerCategory success, return res"

    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_a

    .line 462
    :catchall_6e
    move-exception v0

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    throw v0

    .line 465
    :cond_73
    const-string v0, "ClipboardDataMgr"

    const-string v2, "getAllSEContainerCategory query error, return -1"

    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 466
    if-eqz v6, :cond_a

    .line 467
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    goto :goto_a
.end method

.method private getPersonaManager()Z
    .registers 4

    .prologue
    const/4 v1, 0x1

    .line 153
    iget-object v0, p0, mPersonaManager:Landroid/os/PersonaManager;

    if-eqz v0, :cond_6

    .line 161
    :goto_5
    return v1

    .line 156
    :cond_6
    sget-boolean v0, Landroid/sec/clipboard/data/ClipboardConstants;->HAS_KNOX_FEATURE:Z

    if-eqz v0, :cond_1f

    .line 157
    const-string v0, "ClipboardDataMgr"

    const-string/jumbo v2, "personaManager is null!"

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 158
    iget-object v0, p0, mContext:Landroid/content/Context;

    const-string/jumbo v2, "persona"

    invoke-virtual {v0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PersonaManager;

    iput-object v0, p0, mPersonaManager:Landroid/os/PersonaManager;

    .line 161
    :cond_1f
    iget-object v0, p0, mPersonaManager:Landroid/os/PersonaManager;

    if-eqz v0, :cond_26

    move v0, v1

    :goto_24
    move v1, v0

    goto :goto_5

    :cond_26
    const/4 v0, 0x0

    goto :goto_24
.end method

.method private getUserId()I
    .registers 5

    .prologue
    .line 165
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    .line 166
    .local v0, "callingUid":I
    invoke-static {v0}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v1

    .line 167
    .local v1, "userId":I
    invoke-static {v1}, Landroid/os/PersonaManager;->isBBCContainer(I)Z

    move-result v2

    if-eqz v2, :cond_16

    .line 168
    const/4 v1, 0x0

    .line 169
    const-string v2, "ClipboardDataMgr"

    const-string v3, "getUserId is BBC"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 171
    :cond_16
    return v1
.end method

.method private initializeClipboardDataMgr(I)V
    .registers 15
    .param p1, "size"    # I

    .prologue
    const/16 v12, 0x64

    const/4 v11, 0x0

    .line 219
    iput v11, p0, mCurrentListIndex:I

    .line 221
    new-instance v6, Ljava/io/File;

    const-string v8, "/data/clipboard"

    invoke-direct {v6, v8}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 222
    .local v6, "rootPath":Ljava/io/File;
    const-string v8, "ClipboardDataMgr"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "ClipboardDefine.SUPPORT_KNOX :"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    sget-boolean v10, Landroid/sec/clipboard/data/ClipboardConstants;->SUPPORT_KNOX:Z

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 225
    const-string v2, "clips.info"

    .line 228
    .local v2, "clipFile":Ljava/lang/String;
    new-instance v8, Landroid/sec/clipboard/data/file/FileManager;

    new-instance v9, Ljava/io/File;

    invoke-direct {v9, v6, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iget-object v10, p0, mContext:Landroid/content/Context;

    invoke-direct {v8, v9, v11, v10}, Landroid/sec/clipboard/data/file/FileManager;-><init>(Ljava/io/File;ILandroid/content/Context;)V

    iput-object v8, p0, mDataList:Landroid/sec/clipboard/data/file/FileManager;

    .line 229
    iget-object v8, p0, mDataArrayList:Ljava/util/ArrayList;

    iget-object v9, p0, mDataList:Landroid/sec/clipboard/data/file/FileManager;

    invoke-virtual {v8, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 230
    iput v11, p0, mCurrentListOwnerUid:I

    .line 233
    const/4 v7, 0x0

    .line 234
    .local v7, "userlist":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/UserInfo;>;"
    iget-object v8, p0, mUserManager:Landroid/os/UserManager;

    if-eqz v8, :cond_e6

    .line 235
    iget-object v8, p0, mUserManager:Landroid/os/UserManager;

    invoke-virtual {v8}, Landroid/os/UserManager;->getUsers()Ljava/util/List;

    move-result-object v7

    .line 236
    if-eqz v7, :cond_e6

    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v8

    const/4 v9, 0x1

    if-le v8, v9, :cond_e6

    .line 237
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_54
    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v8

    if-ge v3, v8, :cond_e6

    .line 238
    invoke-interface {v7, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    if-eqz v8, :cond_b4

    invoke-interface {v7, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/content/pm/UserInfo;

    invoke-virtual {v8}, Landroid/content/pm/UserInfo;->isAdmin()Z

    move-result v8

    if-nez v8, :cond_b4

    .line 240
    invoke-interface {v7, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/content/pm/UserInfo;

    iget v5, v8, Landroid/content/pm/UserInfo;->id:I

    .line 241
    .local v5, "id":I
    const-string v8, "ClipboardDataMgr"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "add multi user db...id :"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 242
    const/4 v0, 0x0

    .line 243
    .local v0, "cat":I
    if-lt v5, v12, :cond_b7

    const/16 v8, 0xc2

    if-gt v5, v8, :cond_b7

    .line 244
    add-int/lit16 v0, v5, 0x3e8

    .line 245
    sget-boolean v8, Landroid/sec/clipboard/data/ClipboardConstants;->DEBUG:Z

    if-eqz v8, :cond_b1

    const-string v8, "ClipboardDataMgr"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "RS:add multi user db...cat :"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 251
    :cond_b1
    :goto_b1
    invoke-direct {p0, v0}, createUserDBAndConnect(I)Landroid/sec/clipboard/data/file/FileManager;

    .line 237
    .end local v0    # "cat":I
    .end local v5    # "id":I
    :cond_b4
    add-int/lit8 v3, v3, 0x1

    goto :goto_54

    .line 246
    .restart local v0    # "cat":I
    .restart local v5    # "id":I
    :cond_b7
    if-eqz v5, :cond_b1

    if-ge v5, v12, :cond_b1

    invoke-virtual {p0, v5}, isManagedProfile(I)Z

    move-result v8

    if-nez v8, :cond_b1

    invoke-static {v5}, Landroid/os/PersonaManager;->isBBCContainer(I)Z

    move-result v8

    if-nez v8, :cond_b1

    .line 248
    sget-boolean v8, Landroid/sec/clipboard/data/ClipboardConstants;->DEBUG:Z

    if-eqz v8, :cond_e3

    const-string v8, "ClipboardDataMgr"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "RS:secondary user usecase :"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 249
    :cond_e3
    add-int/lit16 v0, v5, 0x3e8

    goto :goto_b1

    .line 256
    .end local v0    # "cat":I
    .end local v3    # "i":I
    .end local v5    # "id":I
    :cond_e6
    const/4 v1, 0x0

    .line 257
    .local v1, "category":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    invoke-direct {p0}, getAllSEContainerCategory()Ljava/util/List;

    move-result-object v1

    .line 258
    if-eqz v1, :cond_10b

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v8

    if-lez v8, :cond_10b

    .line 259
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .local v4, "i$":Ljava/util/Iterator;
    :goto_f7
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_10b

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Integer;

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v3

    .line 260
    .restart local v3    # "i":I
    invoke-direct {p0, v3}, createUserDBAndConnect(I)Landroid/sec/clipboard/data/file/FileManager;

    goto :goto_f7

    .line 263
    .end local v3    # "i":I
    .end local v4    # "i$":Ljava/util/Iterator;
    :cond_10b
    return-void
.end method


# virtual methods
.method public declared-synchronized addData(Landroid/sec/clipboard/data/ClipboardData;)Z
    .registers 15
    .param p1, "data"    # Landroid/sec/clipboard/data/ClipboardData;

    .prologue
    const/4 v12, 0x2

    const/4 v10, 0x0

    .line 623
    monitor-enter p0

    const/4 v1, 0x1

    .line 624
    .local v1, "Result":Z
    :try_start_4
    iget-object v9, p0, mDataList:Landroid/sec/clipboard/data/file/FileManager;

    invoke-virtual {v9}, Landroid/sec/clipboard/data/file/FileManager;->size()I

    move-result v5

    .line 625
    .local v5, "iSize":I
    invoke-virtual {p1}, Landroid/sec/clipboard/data/ClipboardData;->GetFomat()I

    move-result v9

    if-ne v9, v12, :cond_46

    .line 626
    move-object v0, p1

    check-cast v0, Landroid/sec/clipboard/data/list/ClipboardDataText;

    move-object v9, v0

    invoke-virtual {v9}, Landroid/sec/clipboard/data/list/ClipboardDataText;->GetText()Ljava/lang/CharSequence;

    move-result-object v9

    invoke-interface {v9}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v8

    .line 627
    .local v8, "textValue":Ljava/lang/String;
    const-string v9, ""

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_21
    .catchall {:try_start_4 .. :try_end_21} :catchall_a2

    move-result v9

    if-eqz v9, :cond_27

    move v9, v10

    .line 665
    .end local v8    # "textValue":Ljava/lang/String;
    :goto_25
    monitor-exit p0

    return v9

    .line 629
    .restart local v8    # "textValue":Ljava/lang/String;
    :cond_27
    :try_start_27
    iget-object v9, p0, mDataList:Landroid/sec/clipboard/data/file/FileManager;

    invoke-virtual {v9}, Landroid/sec/clipboard/data/file/FileManager;->size()I

    move-result v9

    if-lez v9, :cond_46

    .line 630
    iget-object v9, p0, mDataList:Landroid/sec/clipboard/data/file/FileManager;

    const/4 v11, 0x0

    invoke-virtual {v9, v11}, Landroid/sec/clipboard/data/file/FileManager;->get(I)Landroid/sec/clipboard/data/ClipboardData;

    move-result-object v7

    .line 631
    .local v7, "latestData":Landroid/sec/clipboard/data/ClipboardData;
    if-eqz v7, :cond_46

    invoke-virtual {v7}, Landroid/sec/clipboard/data/ClipboardData;->GetFomat()I

    move-result v9

    if-ne v9, v12, :cond_46

    .line 632
    invoke-virtual {v7, p1}, Landroid/sec/clipboard/data/ClipboardData;->equals(Ljava/lang/Object;)Z
    :try_end_41
    .catchall {:try_start_27 .. :try_end_41} :catchall_a2

    move-result v9

    if-eqz v9, :cond_46

    move v9, v10

    .line 633
    goto :goto_25

    .line 640
    .end local v7    # "latestData":Landroid/sec/clipboard/data/ClipboardData;
    .end local v8    # "textValue":Ljava/lang/String;
    :cond_46
    const/4 v6, -0x1

    .line 641
    .local v6, "index":I
    :try_start_47
    iget v9, p0, mMaxSize:I

    if-lt v5, v9, :cond_97

    .line 642
    add-int/lit8 v4, v5, -0x1

    .local v4, "i":I
    :goto_4d
    if-ltz v4, :cond_7e

    .line 643
    iget-object v9, p0, mDataList:Landroid/sec/clipboard/data/file/FileManager;

    invoke-virtual {v9, v4}, Landroid/sec/clipboard/data/file/FileManager;->get(I)Landroid/sec/clipboard/data/ClipboardData;

    move-result-object v2

    .line 644
    .local v2, "deleteData":Landroid/sec/clipboard/data/ClipboardData;
    if-eqz v2, :cond_94

    .line 645
    sget-boolean v9, Landroid/sec/clipboard/data/ClipboardConstants;->DEBUG:Z

    if-eqz v9, :cond_77

    .line 646
    const-string v9, "ClipboardDataMgr"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "[addData] deleteData.GetProtectState() : "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v2}, Landroid/sec/clipboard/data/ClipboardData;->GetProtectState()Z

    move-result v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 648
    :cond_77
    invoke-virtual {v2}, Landroid/sec/clipboard/data/ClipboardData;->GetProtectState()Z

    move-result v9

    if-nez v9, :cond_94

    .line 649
    move v6, v4

    .line 654
    .end local v2    # "deleteData":Landroid/sec/clipboard/data/ClipboardData;
    :cond_7e
    if-ltz v6, :cond_92

    .line 655
    iget-object v9, p0, mDataList:Landroid/sec/clipboard/data/file/FileManager;

    invoke-virtual {v9, v6}, Landroid/sec/clipboard/data/file/FileManager;->get(I)Landroid/sec/clipboard/data/ClipboardData;

    move-result-object v9

    iput-object v9, p0, tempDeleteItem:Landroid/sec/clipboard/data/ClipboardData;

    .line 656
    invoke-virtual {p0, v6}, removeData(I)Z

    .line 657
    iget-object v9, p0, mDataList:Landroid/sec/clipboard/data/file/FileManager;

    const/4 v10, 0x0

    invoke-virtual {v9, v10, p1}, Landroid/sec/clipboard/data/file/FileManager;->add(ILandroid/sec/clipboard/data/ClipboardData;)Z

    move-result v1

    .end local v4    # "i":I
    :cond_92
    :goto_92
    move v9, v1

    .line 665
    goto :goto_25

    .line 642
    .restart local v2    # "deleteData":Landroid/sec/clipboard/data/ClipboardData;
    .restart local v4    # "i":I
    :cond_94
    add-int/lit8 v4, v4, -0x1

    goto :goto_4d

    .line 660
    .end local v2    # "deleteData":Landroid/sec/clipboard/data/ClipboardData;
    .end local v4    # "i":I
    :cond_97
    iget-object v9, p0, mDataList:Landroid/sec/clipboard/data/file/FileManager;

    const/4 v10, 0x0

    invoke-virtual {v9, v10, p1}, Landroid/sec/clipboard/data/file/FileManager;->add(ILandroid/sec/clipboard/data/ClipboardData;)Z
    :try_end_9d
    .catch Ljava/lang/Exception; {:try_start_47 .. :try_end_9d} :catch_9f
    .catchall {:try_start_47 .. :try_end_9d} :catchall_a2

    move-result v1

    goto :goto_92

    .line 662
    :catch_9f
    move-exception v3

    .line 663
    .local v3, "e":Ljava/lang/Exception;
    const/4 v1, 0x0

    goto :goto_92

    .line 623
    .end local v3    # "e":Ljava/lang/Exception;
    .end local v5    # "iSize":I
    .end local v6    # "index":I
    :catchall_a2
    move-exception v9

    monitor-exit p0

    throw v9
.end method

.method public asBinder()Landroid/os/IBinder;
    .registers 2

    .prologue
    .line 772
    iget-object v0, p0, mBinder:Landroid/sec/clipboard/data/IClipboardDataList$Stub;

    return-object v0
.end method

.method public findFileManagerIndex(I)I
    .registers 7
    .param p1, "id"    # I

    .prologue
    .line 266
    const-string v2, "ClipboardDataMgr"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "findFileManagerIndex. id :"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 267
    const/4 v1, 0x0

    .line 268
    .local v1, "mgr":Landroid/sec/clipboard/data/file/FileManager;
    iget-object v2, p0, mDataArrayList:Ljava/util/ArrayList;

    if-eqz v2, :cond_5c

    .line 269
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1e
    iget-object v2, p0, mDataArrayList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v0, v2, :cond_5c

    .line 270
    iget-object v2, p0, mDataArrayList:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    .end local v1    # "mgr":Landroid/sec/clipboard/data/file/FileManager;
    check-cast v1, Landroid/sec/clipboard/data/file/FileManager;

    .line 271
    .restart local v1    # "mgr":Landroid/sec/clipboard/data/file/FileManager;
    if-eqz v1, :cond_59

    invoke-virtual {v1}, Landroid/sec/clipboard/data/file/FileManager;->getHandleId()I

    move-result v2

    if-ne v2, p1, :cond_59

    .line 272
    const-string v2, "ClipboardDataMgr"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "findFileManagerIndex. find DB... id :"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", i :"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 278
    .end local v0    # "i":I
    :goto_58
    return v0

    .line 269
    .restart local v0    # "i":I
    :cond_59
    add-int/lit8 v0, v0, 0x1

    goto :goto_1e

    .line 277
    .end local v0    # "i":I
    :cond_5c
    const-string v2, "ClipboardDataMgr"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Can not find file manager. id : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 278
    const/4 v0, -0x1

    goto :goto_58
.end method

.method public getCurrentListOwnerUid()I
    .registers 2

    .prologue
    .line 189
    iget v0, p0, mCurrentListOwnerUid:I

    return v0
.end method

.method public getFileManagerList()Ljava/util/ArrayList;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/sec/clipboard/data/file/FileManager;",
            ">;"
        }
    .end annotation

    .prologue
    .line 149
    iget-object v0, p0, mDataArrayList:Ljava/util/ArrayList;

    return-object v0
.end method

.method public getItem(I)Landroid/sec/clipboard/data/ClipboardData;
    .registers 14
    .param p1, "index"    # I

    .prologue
    .line 563
    iget-object v9, p0, mDataList:Landroid/sec/clipboard/data/file/FileManager;

    invoke-virtual {v9}, Landroid/sec/clipboard/data/file/FileManager;->size()I

    move-result v7

    .line 564
    .local v7, "myListSize":I
    const/4 v0, 0x0

    .line 565
    .local v0, "Result":Landroid/sec/clipboard/data/ClipboardData;
    if-ge p1, v7, :cond_11

    .line 566
    iget-object v9, p0, mDataList:Landroid/sec/clipboard/data/file/FileManager;

    invoke-virtual {v9, p1}, Landroid/sec/clipboard/data/file/FileManager;->get(I)Landroid/sec/clipboard/data/ClipboardData;

    move-result-object v0

    :cond_f
    :goto_f
    move-object v9, v0

    .line 597
    :goto_10
    return-object v9

    .line 568
    :cond_11
    invoke-direct {p0}, getPersonaManager()Z

    move-result v9

    if-eqz v9, :cond_f

    .line 569
    iget-object v9, p0, mDataArrayList:Ljava/util/ArrayList;

    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 570
    .local v1, "arrayListSize":I
    iget-object v9, p0, mPersonaManager:Landroid/os/PersonaManager;

    invoke-virtual {v9}, Landroid/os/PersonaManager;->getPersonaIds()[I

    move-result-object v3

    .line 572
    .local v3, "ids":[I
    if-eqz v3, :cond_f

    array-length v9, v3

    if-lez v9, :cond_f

    .line 573
    const/4 v5, 0x0

    .line 574
    .local v5, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/sec/clipboard/data/ClipboardData;>;"
    const/4 v2, 0x1

    .local v2, "i":I
    move v8, v7

    .local v8, "totalSize":I
    const/4 v6, 0x0

    .local v6, "listSize":I
    const/4 v4, 0x0

    .local v4, "idsIndex":I
    :goto_2d
    if-ge v2, v1, :cond_f

    .line 575
    array-length v9, v3

    if-ge v4, v9, :cond_cf

    .line 576
    aget v9, v3, v4

    invoke-virtual {p0, v9}, getKnoxPolicy(I)Z

    move-result v9

    if-eqz v9, :cond_b3

    .line 577
    iget-object v9, p0, mDataArrayList:Ljava/util/ArrayList;

    invoke-virtual {v9, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/sec/clipboard/data/file/FileManager;

    const/4 v10, 0x0

    invoke-virtual {v9, v10}, Landroid/sec/clipboard/data/file/FileManager;->getNonDeletedClips(I)Ljava/util/ArrayList;

    move-result-object v5

    .line 578
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v6

    .line 579
    add-int v9, v8, v6

    if-ge p1, v9, :cond_7d

    .line 580
    const-string v9, "ClipboardDataMgr"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "return : "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ", "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    sub-int v11, p1, v8

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 581
    sub-int v9, p1, v8

    invoke-virtual {v5, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/sec/clipboard/data/ClipboardData;

    goto :goto_10

    .line 583
    :cond_7d
    add-int/2addr v8, v6

    .line 584
    const-string v9, "ClipboardDataMgr"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "next : "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ", "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    aget v11, v3, v4

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ", "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 574
    :goto_ad
    add-int/lit8 v2, v2, 0x1

    add-int/lit8 v4, v4, 0x1

    goto/16 :goto_2d

    .line 587
    :cond_b3
    const-string v9, "ClipboardDataMgr"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "not allow! "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    aget v11, v3, v4

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_ad

    .line 590
    :cond_cf
    const-string v9, "ClipboardDataMgr"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "overflow! "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ", "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    array-length v11, v3

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_f
.end method

.method public getKnoxPolicy(I)Z
    .registers 5
    .param p1, "userId"    # I

    .prologue
    .line 415
    :try_start_0
    invoke-direct {p0}, getPersonaManager()Z

    move-result v1

    if-eqz v1, :cond_2a

    .line 416
    iget-object v1, p0, mPersonaPolicyManager:Landroid/os/PersonaPolicyManager;

    if-nez v1, :cond_17

    .line 417
    iget-object v1, p0, mPersonaManager:Landroid/os/PersonaManager;

    const-string/jumbo v2, "persona_policy"

    invoke-virtual {v1, v2}, Landroid/os/PersonaManager;->getPersonaService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/PersonaPolicyManager;

    iput-object v1, p0, mPersonaPolicyManager:Landroid/os/PersonaPolicyManager;

    .line 420
    :cond_17
    iget-object v1, p0, mPersonaPolicyManager:Landroid/os/PersonaPolicyManager;

    if-eqz v1, :cond_22

    .line 421
    iget-object v1, p0, mPersonaPolicyManager:Landroid/os/PersonaPolicyManager;

    invoke-virtual {v1, p1}, Landroid/os/PersonaPolicyManager;->isShareClipboardDataToOwnerAllowed(I)Z

    move-result v1

    .line 429
    :goto_21
    return v1

    .line 423
    :cond_22
    const-string v1, "ClipboardDataMgr"

    const-string/jumbo v2, "mPersonaPolicyManager is null!"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2a
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_2a} :catch_2c

    .line 429
    :cond_2a
    :goto_2a
    const/4 v1, 0x0

    goto :goto_21

    .line 426
    :catch_2c
    move-exception v0

    .line 427
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_2a
.end method

.method public getPersonaId()I
    .registers 3

    .prologue
    .line 175
    const/4 v0, 0x0

    .line 176
    .local v0, "userId":I
    sget-boolean v1, Landroid/sec/clipboard/data/ClipboardConstants;->HAS_KNOX_FEATURE:Z

    if-eqz v1, :cond_17

    .line 177
    invoke-direct {p0}, getPersonaManager()Z

    move-result v1

    if-eqz v1, :cond_12

    .line 178
    iget-object v1, p0, mPersonaManager:Landroid/os/PersonaManager;

    invoke-virtual {v1}, Landroid/os/PersonaManager;->getFocusedUser()I

    move-result v0

    .line 185
    :goto_11
    return v0

    .line 180
    :cond_12
    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v0

    goto :goto_11

    .line 183
    :cond_17
    invoke-direct {p0}, getUserId()I

    move-result v0

    goto :goto_11
.end method

.method public getScrapItem(I)Landroid/sec/clipboard/data/ClipboardData;
    .registers 3
    .param p1, "index"    # I

    .prologue
    .line 114
    const/4 v0, 0x0

    return-object v0
.end method

.method public getSharedItem(I)Landroid/sec/clipboard/data/ClipboardData;
    .registers 8
    .param p1, "index"    # I

    .prologue
    .line 601
    const/4 v1, 0x0

    .line 603
    .local v1, "Result":Landroid/sec/clipboard/data/ClipboardData;
    :try_start_1
    invoke-virtual {p0}, getPersonaId()I

    move-result v4

    .line 604
    .local v4, "userId":I
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 605
    .local v3, "nonDeletedlist":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/sec/clipboard/data/ClipboardData;>;"
    iget-object v5, p0, mDataList:Landroid/sec/clipboard/data/file/FileManager;

    invoke-virtual {v5, v4}, Landroid/sec/clipboard/data/file/FileManager;->getNonDeletedClips(I)Ljava/util/ArrayList;

    move-result-object v3

    .line 606
    invoke-virtual {v3, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    move-object v0, v5

    check-cast v0, Landroid/sec/clipboard/data/ClipboardData;

    move-object v1, v0
    :try_end_18
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_18} :catch_19

    .line 610
    .end local v3    # "nonDeletedlist":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/sec/clipboard/data/ClipboardData;>;"
    .end local v4    # "userId":I
    :goto_18
    return-object v1

    .line 607
    :catch_19
    move-exception v2

    .line 608
    .local v2, "e":Ljava/lang/Exception;
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_18
.end method

.method public getdeletedItem()Landroid/sec/clipboard/data/ClipboardData;
    .registers 2

    .prologue
    .line 777
    iget-object v0, p0, tempDeleteItem:Landroid/sec/clipboard/data/ClipboardData;

    return-object v0
.end method

.method public isManagedProfile(I)Z
    .registers 12
    .param p1, "userId"    # I

    .prologue
    const-wide/16 v8, -0x1

    .line 193
    const-wide/16 v2, -0x1

    .line 194
    .local v2, "origId":J
    const/4 v1, 0x0

    .line 196
    .local v1, "isManagedProfile":Z
    :try_start_5
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    .line 197
    iget-object v5, p0, mUserManager:Landroid/os/UserManager;

    invoke-virtual {v5, p1}, Landroid/os/UserManager;->getUserInfo(I)Landroid/content/pm/UserInfo;

    move-result-object v4

    .line 198
    .local v4, "ui":Landroid/content/pm/UserInfo;
    invoke-virtual {v4}, Landroid/content/pm/UserInfo;->isManagedProfile()Z

    move-result v1

    .line 199
    const-string v5, "ClipboardDataMgr"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "isManagedProfile for userId:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " is value:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_35
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_35} :catch_5f
    .catchall {:try_start_5 .. :try_end_35} :catchall_73

    .line 205
    cmp-long v5, v2, v8

    if-eqz v5, :cond_3c

    .line 206
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 209
    .end local v4    # "ui":Landroid/content/pm/UserInfo;
    :cond_3c
    :goto_3c
    const-string v5, "ClipboardDataMgr"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "isManagedProfile for userId: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " is value: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 210
    return v1

    .line 200
    :catch_5f
    move-exception v0

    .line 201
    .local v0, "ex":Ljava/lang/Exception;
    :try_start_60
    const-string v5, "ClipboardDataMgr"

    const-string v6, "isManagedProfile() Exception!"

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 202
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_6a
    .catchall {:try_start_60 .. :try_end_6a} :catchall_73

    .line 203
    const/4 v1, 0x0

    .line 205
    cmp-long v5, v2, v8

    if-eqz v5, :cond_3c

    .line 206
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto :goto_3c

    .line 205
    .end local v0    # "ex":Ljava/lang/Exception;
    :catchall_73
    move-exception v5

    cmp-long v6, v2, v8

    if-eqz v6, :cond_7b

    .line 206
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    :cond_7b
    throw v5
.end method

.method public loadSEContainerDB(I)V
    .registers 6
    .param p1, "category"    # I

    .prologue
    .line 433
    sget-boolean v1, Landroid/sec/clipboard/data/ClipboardConstants;->DEBUG:Z

    if-eqz v1, :cond_2c

    const-string v1, "ClipboardDataMgr"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "loadSEContainerDB, category:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", previous category:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, mDataList:Landroid/sec/clipboard/data/file/FileManager;

    invoke-virtual {v3}, Landroid/sec/clipboard/data/file/FileManager;->getHandleId()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 434
    :cond_2c
    iget-object v1, p0, mDataList:Landroid/sec/clipboard/data/file/FileManager;

    invoke-virtual {v1}, Landroid/sec/clipboard/data/file/FileManager;->getHandleId()I

    move-result v1

    if-eq v1, p1, :cond_48

    .line 435
    invoke-virtual {p0, p1}, findFileManagerIndex(I)I

    move-result v0

    .line 436
    .local v0, "index":I
    const/4 v1, -0x1

    if-eq v0, v1, :cond_49

    .line 437
    iget-object v1, p0, mDataArrayList:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/sec/clipboard/data/file/FileManager;

    iput-object v1, p0, mDataList:Landroid/sec/clipboard/data/file/FileManager;

    .line 438
    invoke-virtual {p0}, refresh()V

    .line 444
    .end local v0    # "index":I
    :cond_48
    :goto_48
    return-void

    .line 440
    .restart local v0    # "index":I
    :cond_49
    sget-boolean v1, Landroid/sec/clipboard/data/ClipboardConstants;->DEBUG:Z

    if-eqz v1, :cond_65

    const-string v1, "ClipboardDataMgr"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "loadSEContainerDB, findFileManagerIndex returned -1, create db, category :"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 441
    :cond_65
    invoke-direct {p0, p1}, createUserDBAndConnect(I)Landroid/sec/clipboard/data/file/FileManager;

    move-result-object v1

    iput-object v1, p0, mDataList:Landroid/sec/clipboard/data/file/FileManager;

    goto :goto_48
.end method

.method public multiUserMode(ILjava/lang/String;)V
    .registers 11
    .param p1, "id"    # I
    .param p2, "mode"    # Ljava/lang/String;

    .prologue
    const/16 v7, 0x64

    const/4 v6, -0x1

    .line 317
    const-string v3, "ClipboardDataMgr"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "multiUserMode_Called mode :"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", id :"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", mCurrentListIndex :"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, mCurrentListIndex:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 318
    iput p1, p0, mCurrentListOwnerUid:I

    .line 320
    const/4 v0, 0x0

    .line 321
    .local v0, "cat":I
    if-lt p1, v7, :cond_4f

    const/16 v3, 0xc2

    if-gt p1, v3, :cond_4f

    .line 322
    add-int/lit16 v0, p1, 0x3e8

    .line 328
    :goto_3d
    if-eqz p2, :cond_4e

    iget-object v3, p0, mDataArrayList:Ljava/util/ArrayList;

    if-eqz v3, :cond_4e

    .line 329
    const-string v3, "ADDED"

    invoke-virtual {p2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_64

    .line 330
    invoke-direct {p0, v0}, createUserDBAndConnect(I)Landroid/sec/clipboard/data/file/FileManager;

    .line 360
    :cond_4e
    :goto_4e
    return-void

    .line 323
    :cond_4f
    if-eqz p1, :cond_62

    if-ge p1, v7, :cond_62

    invoke-virtual {p0, p1}, isManagedProfile(I)Z

    move-result v3

    if-nez v3, :cond_62

    invoke-static {p1}, Landroid/os/PersonaManager;->isBBCContainer(I)Z

    move-result v3

    if-nez v3, :cond_62

    .line 324
    add-int/lit16 v0, p1, 0x3e8

    goto :goto_3d

    .line 326
    :cond_62
    move v0, p1

    goto :goto_3d

    .line 331
    :cond_64
    const-string v3, "REMOVED"

    invoke-virtual {p2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_ad

    .line 332
    invoke-virtual {p0, v0}, findFileManagerIndex(I)I

    move-result v1

    .line 333
    .local v1, "deleteIndex":I
    if-eq v1, v6, :cond_8a

    .line 334
    iget-object v3, p0, mDataArrayList:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/sec/clipboard/data/file/FileManager;

    .line 335
    .local v2, "mgr":Landroid/sec/clipboard/data/file/FileManager;
    if-eqz v2, :cond_4e

    .line 336
    invoke-virtual {v2}, Landroid/sec/clipboard/data/file/FileManager;->removeClipboardDB()V

    .line 337
    iget-object v3, p0, mDataArrayList:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 338
    iget-object v3, p0, mDataList:Landroid/sec/clipboard/data/file/FileManager;

    invoke-virtual {v3, v0}, Landroid/sec/clipboard/data/file/FileManager;->resetOwnerClips(I)V

    goto :goto_4e

    .line 341
    .end local v2    # "mgr":Landroid/sec/clipboard/data/file/FileManager;
    :cond_8a
    const-string v3, "ClipboardDataMgr"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "findFileManagerIndex return an invalid index. id :"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", return value :"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_4e

    .line 343
    .end local v1    # "deleteIndex":I
    :cond_ad
    const-string v3, "SWITCHED"

    invoke-virtual {p2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_157

    .line 344
    iget v3, p0, mCurrentListIndex:I

    if-ne v0, v3, :cond_e9

    .line 345
    const-string v3, "ClipboardDataMgr"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "USER_SWITCHED, but same user : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", category: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", mCurrentListIndex: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, mCurrentListIndex:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_4e

    .line 348
    :cond_e9
    invoke-virtual {p0, v0}, findFileManagerIndex(I)I

    move-result v3

    iput v3, p0, mCurrentListIndex:I

    .line 349
    iget v3, p0, mCurrentListIndex:I

    if-eq v3, v6, :cond_12b

    .line 350
    iget-object v3, p0, mDataArrayList:Ljava/util/ArrayList;

    iget v4, p0, mCurrentListIndex:I

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/sec/clipboard/data/file/FileManager;

    iput-object v3, p0, mDataList:Landroid/sec/clipboard/data/file/FileManager;

    .line 351
    const-string v3, "ClipboardDataMgr"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "RS, multiUserMode, findFileManagerIndex returned index:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, mCurrentListIndex:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", now getting relevant datalist with handleid:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, mDataList:Landroid/sec/clipboard/data/file/FileManager;

    invoke-virtual {v5}, Landroid/sec/clipboard/data/file/FileManager;->getHandleId()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_4e

    .line 353
    :cond_12b
    const-string v3, "ClipboardDataMgr"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "findFileManagerIndex return an invalid index. id :"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", return value :"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, mCurrentListIndex:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 354
    invoke-direct {p0, v0}, createUserDBAndConnect(I)Landroid/sec/clipboard/data/file/FileManager;

    move-result-object v3

    iput-object v3, p0, mDataList:Landroid/sec/clipboard/data/file/FileManager;

    goto/16 :goto_4e

    .line 357
    :cond_157
    const-string v3, "ClipboardDataMgr"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "multiUserMode_Called wrong mode : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", id : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_4e
.end method

.method public reAddForKnox(Landroid/sec/clipboard/data/ClipboardData;)V
    .registers 8
    .param p1, "data"    # Landroid/sec/clipboard/data/ClipboardData;

    .prologue
    .line 742
    const-string v3, "ClipboardDataMgr"

    const-string/jumbo v4, "reAddForKnox"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 743
    const/4 v2, 0x0

    .line 744
    .local v2, "listData":Landroid/sec/clipboard/data/ClipboardData;
    iget-object v3, p0, mDataList:Landroid/sec/clipboard/data/file/FileManager;

    invoke-virtual {v3}, Landroid/sec/clipboard/data/file/FileManager;->size()I

    move-result v0

    .line 745
    .local v0, "dataListSize":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_10
    if-ge v1, v0, :cond_3f

    .line 746
    iget-object v3, p0, mDataList:Landroid/sec/clipboard/data/file/FileManager;

    invoke-virtual {v3, v1}, Landroid/sec/clipboard/data/file/FileManager;->get(I)Landroid/sec/clipboard/data/ClipboardData;

    move-result-object v2

    .line 747
    invoke-virtual {p1}, Landroid/sec/clipboard/data/ClipboardData;->GetFomat()I

    move-result v3

    invoke-virtual {v2}, Landroid/sec/clipboard/data/ClipboardData;->GetFomat()I

    move-result v4

    if-ne v3, v4, :cond_40

    .line 748
    iget-object v3, p0, mDataList:Landroid/sec/clipboard/data/file/FileManager;

    invoke-virtual {v3, v1}, Landroid/sec/clipboard/data/file/FileManager;->reAddForKnox(I)V

    .line 749
    const-string v3, "ClipboardDataMgr"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "call : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 753
    :cond_3f
    return-void

    .line 745
    :cond_40
    add-int/lit8 v1, v1, 0x1

    goto :goto_10
.end method

.method public refresh()V
    .registers 2

    .prologue
    .line 310
    iget-object v0, p0, mDataList:Landroid/sec/clipboard/data/file/FileManager;

    if-eqz v0, :cond_9

    .line 311
    iget-object v0, p0, mDataList:Landroid/sec/clipboard/data/file/FileManager;

    invoke-virtual {v0}, Landroid/sec/clipboard/data/file/FileManager;->refresh()V

    .line 313
    :cond_9
    return-void
.end method

.method public removeAll()Z
    .registers 16

    .prologue
    const/4 v11, 0x1

    const/4 v12, 0x0

    .line 669
    const-string v10, "ClipboardDataMgr"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "inside remove all method in data mgr mshared is "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    iget-boolean v14, p0, mIsShared:Z

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v10, v13}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 670
    const/4 v0, 0x0

    .line 671
    .local v0, "bRes":Z
    const/4 v9, 0x0

    .line 672
    .local v9, "ownRes":Z
    invoke-virtual {p0}, getPersonaId()I

    move-result v10

    if-nez v10, :cond_66

    move v6, v11

    .line 674
    .local v6, "isOwner":Z
    :goto_25
    :try_start_25
    invoke-direct {p0}, getPersonaManager()Z

    move-result v10

    if-eqz v10, :cond_6d

    if-eqz v6, :cond_6d

    .line 675
    iget-object v10, p0, mPersonaManager:Landroid/os/PersonaManager;

    invoke-virtual {v10}, Landroid/os/PersonaManager;->getPersonaIds()[I

    move-result-object v3

    .line 676
    .local v3, "ids":[I
    if-eqz v3, :cond_6d

    .line 677
    const/4 v8, 0x0

    .line 678
    .local v8, "listSize":I
    const/4 v7, 0x0

    .line 679
    .local v7, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/sec/clipboard/data/file/WrapFileClipData;>;"
    const/4 v2, 0x1

    .local v2, "i":I
    const/4 v4, 0x0

    .local v4, "idsIndex":I
    :goto_39
    array-length v10, v3

    if-ge v4, v10, :cond_6d

    .line 680
    iget-object v10, p0, mDataArrayList:Ljava/util/ArrayList;

    invoke-virtual {v10, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/sec/clipboard/data/file/FileManager;

    const/4 v13, 0x0

    invoke-virtual {v10, v13}, Landroid/sec/clipboard/data/file/FileManager;->getNonDeletedClipsFromKnox(I)Ljava/util/ArrayList;

    move-result-object v7

    .line 681
    if-eqz v7, :cond_68

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v10

    if-lez v10, :cond_68

    .line 682
    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v8

    .line 683
    const/4 v5, 0x0

    .local v5, "index":I
    :goto_56
    if-ge v5, v8, :cond_68

    .line 684
    invoke-virtual {v7, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/sec/clipboard/data/file/WrapFileClipData;

    const/4 v13, 0x0

    invoke-virtual {v10, v13}, Landroid/sec/clipboard/data/file/WrapFileClipData;->addDeletedUserList(I)V

    .line 685
    const/4 v9, 0x1

    .line 683
    add-int/lit8 v5, v5, 0x1

    goto :goto_56

    .end local v2    # "i":I
    .end local v3    # "ids":[I
    .end local v4    # "idsIndex":I
    .end local v5    # "index":I
    .end local v6    # "isOwner":Z
    .end local v7    # "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/sec/clipboard/data/file/WrapFileClipData;>;"
    .end local v8    # "listSize":I
    :cond_66
    move v6, v12

    .line 672
    goto :goto_25

    .line 679
    .restart local v2    # "i":I
    .restart local v3    # "ids":[I
    .restart local v4    # "idsIndex":I
    .restart local v6    # "isOwner":Z
    .restart local v7    # "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/sec/clipboard/data/file/WrapFileClipData;>;"
    .restart local v8    # "listSize":I
    :cond_68
    add-int/lit8 v2, v2, 0x1

    add-int/lit8 v4, v4, 0x1

    goto :goto_39

    .line 691
    .end local v2    # "i":I
    .end local v3    # "ids":[I
    .end local v4    # "idsIndex":I
    .end local v7    # "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/sec/clipboard/data/file/WrapFileClipData;>;"
    .end local v8    # "listSize":I
    :cond_6d
    iget-object v10, p0, mDataList:Landroid/sec/clipboard/data/file/FileManager;

    iget-boolean v13, p0, mIsShared:Z

    if-nez v13, :cond_81

    :goto_73
    invoke-virtual {p0}, getPersonaId()I

    move-result v12

    invoke-virtual {v10, v11, v12}, Landroid/sec/clipboard/data/file/FileManager;->removeAll(ZI)Z
    :try_end_7a
    .catch Ljava/lang/Exception; {:try_start_25 .. :try_end_7a} :catch_83

    move-result v0

    .line 695
    :goto_7b
    if-eqz v6, :cond_80

    if-eqz v9, :cond_80

    .line 696
    const/4 v0, 0x1

    .line 698
    :cond_80
    return v0

    :cond_81
    move v11, v12

    .line 691
    goto :goto_73

    .line 692
    :catch_83
    move-exception v1

    .line 693
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_7b
.end method

.method public removeData(I)Z
    .registers 15
    .param p1, "index"    # I

    .prologue
    const/4 v9, 0x1

    const/4 v10, 0x0

    .line 708
    const-string v8, "ClipboardDataMgr"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "inside removeData method"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v8, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 711
    :try_start_1a
    iget-object v8, p0, mDataList:Landroid/sec/clipboard/data/file/FileManager;

    invoke-virtual {v8}, Landroid/sec/clipboard/data/file/FileManager;->size()I

    move-result v6

    .line 712
    .local v6, "size":I
    if-ge p1, v6, :cond_39

    .line 713
    iget-object v11, p0, mDataList:Landroid/sec/clipboard/data/file/FileManager;

    iget-boolean v8, p0, mIsShared:Z

    if-nez v8, :cond_35

    move v8, v9

    :goto_29
    invoke-virtual {p0}, getPersonaId()I

    move-result v12

    invoke-virtual {v11, v8, v12, p1}, Landroid/sec/clipboard/data/file/FileManager;->remove(ZII)Landroid/sec/clipboard/data/ClipboardData;

    move-result-object v8

    if-eqz v8, :cond_37

    move v8, v9

    .line 738
    .end local v6    # "size":I
    :goto_34
    return v8

    .restart local v6    # "size":I
    :cond_35
    move v8, v10

    .line 713
    goto :goto_29

    :cond_37
    move v8, v10

    goto :goto_34

    .line 715
    :cond_39
    invoke-direct {p0}, getPersonaManager()Z

    move-result v8

    if-eqz v8, :cond_d5

    .line 716
    iget-object v8, p0, mDataArrayList:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 717
    .local v0, "arrayListSize":I
    iget-object v8, p0, mPersonaManager:Landroid/os/PersonaManager;

    invoke-virtual {v8}, Landroid/os/PersonaManager;->getPersonaIds()[I

    move-result-object v3

    .line 718
    .local v3, "ids":[I
    if-eqz v3, :cond_d5

    array-length v8, v3

    if-lez v8, :cond_d5

    .line 719
    const/4 v4, 0x0

    .line 720
    .local v4, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/sec/clipboard/data/file/WrapFileClipData;>;"
    const/4 v2, 0x1

    .local v2, "i":I
    move v7, v6

    .local v7, "totalSize":I
    const/4 v5, 0x0

    .local v5, "listSize":I
    :goto_54
    if-ge v2, v0, :cond_d5

    .line 721
    iget-object v8, p0, mDataArrayList:Ljava/util/ArrayList;

    invoke-virtual {v8, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/sec/clipboard/data/file/FileManager;

    const/4 v11, 0x0

    invoke-virtual {v8, v11}, Landroid/sec/clipboard/data/file/FileManager;->getNonDeletedClipsFromKnox(I)Ljava/util/ArrayList;

    move-result-object v4

    .line 722
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v5

    .line 723
    add-int v8, v7, v5

    if-ge p1, v8, :cond_9e

    .line 724
    const-string v8, "ClipboardDataMgr"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "return : "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, ", "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    sub-int v12, p1, v7

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v8, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 725
    sub-int v8, p1, v7

    invoke-virtual {v4, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/sec/clipboard/data/file/WrapFileClipData;

    const/4 v11, 0x0

    invoke-virtual {v8, v11}, Landroid/sec/clipboard/data/file/WrapFileClipData;->addDeletedUserList(I)V

    move v8, v9

    .line 726
    goto :goto_34

    .line 728
    :cond_9e
    add-int/2addr v7, v5

    .line 729
    const-string v8, "ClipboardDataMgr"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "next : "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, ", "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    aget v12, v3, v2

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, ", "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v8, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_ce
    .catch Ljava/lang/Exception; {:try_start_1a .. :try_end_ce} :catch_d1

    .line 720
    add-int/lit8 v2, v2, 0x1

    goto :goto_54

    .line 735
    .end local v0    # "arrayListSize":I
    .end local v2    # "i":I
    .end local v3    # "ids":[I
    .end local v4    # "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/sec/clipboard/data/file/WrapFileClipData;>;"
    .end local v5    # "listSize":I
    .end local v6    # "size":I
    .end local v7    # "totalSize":I
    :catch_d1
    move-exception v1

    .line 736
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .end local v1    # "e":Ljava/lang/Exception;
    :cond_d5
    move v8, v10

    .line 738
    goto/16 :goto_34
.end method

.method public removeScrapData(I)Z
    .registers 3
    .param p1, "index"    # I

    .prologue
    .line 110
    const/4 v0, 0x0

    return v0
.end method

.method public replaceWithTargetForUser(Landroid/sec/clipboard/data/ClipboardDataMgr;I)V
    .registers 12
    .param p1, "dataList"    # Landroid/sec/clipboard/data/ClipboardDataMgr;
    .param p2, "userId"    # I

    .prologue
    const/16 v8, 0x64

    const/4 v7, -0x1

    .line 282
    const-string v4, "ClipboardDataMgr"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "replaceWithTargetForUser : userId - "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 283
    const/4 v0, 0x0

    .line 284
    .local v0, "cat":I
    if-lt p2, v8, :cond_7e

    const/16 v4, 0xc2

    if-gt p2, v4, :cond_7e

    .line 285
    add-int/lit16 v0, p2, 0x3e8

    .line 291
    :goto_25
    invoke-virtual {p0, v0}, findFileManagerIndex(I)I

    move-result v3

    .line 292
    .local v3, "targetId":I
    if-eq v3, v7, :cond_7d

    .line 293
    const-string v4, "ClipboardDataMgr"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "replaceWithTargetForUser : targetId - "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 294
    invoke-virtual {p1, v0}, findFileManagerIndex(I)I

    move-result v2

    .line 295
    .local v2, "sourceId":I
    if-eq v2, v7, :cond_7d

    .line 296
    invoke-virtual {p1}, getFileManagerList()Ljava/util/ArrayList;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/sec/clipboard/data/file/FileManager;

    .line 297
    .local v1, "sourceDataList":Landroid/sec/clipboard/data/file/FileManager;
    const-string v4, "ClipboardDataMgr"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v1}, Landroid/sec/clipboard/data/file/FileManager;->size()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 298
    iget-object v4, p0, mDataArrayList:Ljava/util/ArrayList;

    invoke-virtual {v4, v3, v1}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 299
    iput-object v1, p0, mDataList:Landroid/sec/clipboard/data/file/FileManager;

    .line 300
    iput v3, p0, mCurrentListIndex:I

    .line 303
    .end local v1    # "sourceDataList":Landroid/sec/clipboard/data/file/FileManager;
    .end local v2    # "sourceId":I
    :cond_7d
    return-void

    .line 286
    .end local v3    # "targetId":I
    :cond_7e
    if-eqz p2, :cond_91

    if-ge p2, v8, :cond_91

    invoke-virtual {p0, p2}, isManagedProfile(I)Z

    move-result v4

    if-nez v4, :cond_91

    invoke-static {p2}, Landroid/os/PersonaManager;->isBBCContainer(I)Z

    move-result v4

    if-nez v4, :cond_91

    .line 287
    add-int/lit16 v0, p2, 0x3e8

    goto :goto_25

    .line 289
    :cond_91
    move v0, p2

    goto :goto_25
.end method

.method public scrapSize()I
    .registers 2

    .prologue
    .line 118
    const/4 v0, 0x0

    return v0
.end method

.method public secontainerClipboardMode(Ljava/lang/String;I)V
    .registers 8
    .param p1, "mode"    # Ljava/lang/String;
    .param p2, "category"    # I

    .prologue
    .line 476
    const-string v2, "android.intent.action.SECONTAINER_REMOVED"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_48

    .line 477
    invoke-virtual {p0, p2}, findFileManagerIndex(I)I

    move-result v0

    .line 478
    .local v0, "deleteIndex":I
    const/4 v2, -0x1

    if-eq v0, v2, :cond_25

    .line 479
    iget-object v2, p0, mDataArrayList:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/sec/clipboard/data/file/FileManager;

    .line 480
    .local v1, "mgr":Landroid/sec/clipboard/data/file/FileManager;
    if-eqz v1, :cond_24

    .line 481
    invoke-virtual {v1}, Landroid/sec/clipboard/data/file/FileManager;->removeClipboardDB()V

    .line 482
    iget-object v2, p0, mDataArrayList:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 483
    invoke-virtual {v1, p2}, Landroid/sec/clipboard/data/file/FileManager;->resetOwnerClips(I)V

    .line 492
    .end local v0    # "deleteIndex":I
    .end local v1    # "mgr":Landroid/sec/clipboard/data/file/FileManager;
    :cond_24
    :goto_24
    return-void

    .line 486
    .restart local v0    # "deleteIndex":I
    :cond_25
    const-string v2, "ClipboardDataMgr"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "findFileManagerIndex return an invalid index. id:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", return value :"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_24

    .line 488
    .end local v0    # "deleteIndex":I
    :cond_48
    const-string v2, "android.intent.action.SECONTAINER_ADDED"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_24

    .line 489
    const-string v2, "ClipboardDataMgr"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "action secontainer added for category:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", creating clipboard db"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 490
    invoke-direct {p0, p2}, createUserDBAndConnect(I)Landroid/sec/clipboard/data/file/FileManager;

    goto :goto_24
.end method

.method public setdeletedItem(Landroid/sec/clipboard/data/ClipboardData;)V
    .registers 2
    .param p1, "data"    # Landroid/sec/clipboard/data/ClipboardData;

    .prologue
    .line 781
    iput-object p1, p0, tempDeleteItem:Landroid/sec/clipboard/data/ClipboardData;

    .line 782
    return-void
.end method

.method public sharedSize()I
    .registers 3

    .prologue
    .line 531
    iget-object v0, p0, mDataList:Landroid/sec/clipboard/data/file/FileManager;

    if-eqz v0, :cond_f

    .line 532
    iget-object v0, p0, mDataList:Landroid/sec/clipboard/data/file/FileManager;

    invoke-virtual {p0}, getPersonaId()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/sec/clipboard/data/file/FileManager;->sharedSize(I)I

    move-result v0

    .line 534
    :goto_e
    return v0

    :cond_f
    const/4 v0, 0x0

    goto :goto_e
.end method

.method public size()I
    .registers 9

    .prologue
    .line 499
    const/4 v0, 0x0

    .line 501
    .local v0, "finalSize":I
    invoke-direct {p0}, getPersonaManager()Z

    move-result v5

    if-eqz v5, :cond_7e

    invoke-virtual {p0}, getPersonaId()I

    move-result v5

    if-nez v5, :cond_7e

    .line 502
    iget-object v5, p0, mPersonaManager:Landroid/os/PersonaManager;

    invoke-virtual {v5}, Landroid/os/PersonaManager;->getPersonaIds()[I

    move-result-object v3

    .line 503
    .local v3, "ids":[I
    if-eqz v3, :cond_7e

    .line 504
    const/4 v1, 0x0

    .line 505
    .local v1, "fm":Landroid/sec/clipboard/data/file/FileManager;
    const/4 v4, 0x0

    .line 506
    .local v4, "isAllowed":Z
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_18
    array-length v5, v3

    if-ge v2, v5, :cond_7e

    .line 507
    aget v5, v3, v2

    invoke-virtual {p0, v5}, getKnoxPolicy(I)Z

    move-result v4

    .line 508
    const-string v5, "ClipboardDataMgr"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "policy is "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    aget v7, v3, v2

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 510
    if-eqz v4, :cond_62

    .line 511
    iget-object v5, p0, mDataArrayList:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-le v5, v2, :cond_65

    .line 512
    iget-object v5, p0, mDataArrayList:Ljava/util/ArrayList;

    add-int/lit8 v6, v2, 0x1

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    .end local v1    # "fm":Landroid/sec/clipboard/data/file/FileManager;
    check-cast v1, Landroid/sec/clipboard/data/file/FileManager;

    .line 513
    .restart local v1    # "fm":Landroid/sec/clipboard/data/file/FileManager;
    if-eqz v1, :cond_62

    .line 514
    const/4 v5, 0x0

    invoke-virtual {v1, v5}, Landroid/sec/clipboard/data/file/FileManager;->sharedSize(I)I

    move-result v5

    add-int/2addr v0, v5

    .line 506
    :cond_62
    :goto_62
    add-int/lit8 v2, v2, 0x1

    goto :goto_18

    .line 517
    :cond_65
    const-string v5, "ClipboardDataMgr"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "data list is less than "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_62

    .line 524
    .end local v1    # "fm":Landroid/sec/clipboard/data/file/FileManager;
    .end local v2    # "i":I
    .end local v3    # "ids":[I
    .end local v4    # "isAllowed":Z
    :cond_7e
    iget-object v5, p0, mDataList:Landroid/sec/clipboard/data/file/FileManager;

    if-eqz v5, :cond_89

    .line 525
    iget-object v5, p0, mDataList:Landroid/sec/clipboard/data/file/FileManager;

    invoke-virtual {v5}, Landroid/sec/clipboard/data/file/FileManager;->size()I

    move-result v5

    add-int/2addr v0, v5

    .line 527
    .end local v0    # "finalSize":I
    :cond_89
    return v0
.end method

.method public updateData(ILandroid/sec/clipboard/data/ClipboardData;)Z
    .registers 7
    .param p1, "index"    # I
    .param p2, "clipData"    # Landroid/sec/clipboard/data/ClipboardData;

    .prologue
    const/4 v1, 0x0

    .line 757
    if-eqz p2, :cond_d

    .line 758
    :try_start_3
    iget-object v2, p0, mDataList:Landroid/sec/clipboard/data/file/FileManager;

    invoke-virtual {v2, p1, p2}, Landroid/sec/clipboard/data/file/FileManager;->set(ILandroid/sec/clipboard/data/ClipboardData;)Landroid/sec/clipboard/data/ClipboardData;

    move-result-object v2

    if-eqz v2, :cond_c

    const/4 v1, 0x1

    .line 767
    :cond_c
    :goto_c
    return v1

    .line 760
    :cond_d
    sget-boolean v2, Landroid/sec/clipboard/data/ClipboardConstants;->DEBUG:Z

    if-eqz v2, :cond_c

    .line 761
    const-string v2, "ClipboardDataMgr"

    const-string/jumbo v3, "updateData-ClipboardData is null"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_19
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_19} :catch_1a

    goto :goto_c

    .line 765
    :catch_1a
    move-exception v0

    .line 766
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_c
.end method

.method public updateFotaClips(ILjava/util/ArrayList;)V
    .registers 10
    .param p1, "userId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 538
    .local p2, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    iget-object v5, p0, mDataArrayList:Ljava/util/ArrayList;

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/sec/clipboard/data/file/FileManager;

    .line 539
    .local v0, "fmg":Landroid/sec/clipboard/data/file/FileManager;
    if-eqz v0, :cond_3b

    .line 540
    invoke-virtual {v0}, Landroid/sec/clipboard/data/file/FileManager;->size()I

    move-result v3

    .line 541
    .local v3, "size":I
    const/4 v4, 0x0

    .line 542
    .local v4, "wrap":Landroid/sec/clipboard/data/file/WrapFileClipData;
    const-string v2, ""

    .line 543
    .local v2, "path":Ljava/lang/String;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_13
    if-ge v1, v3, :cond_3b

    .line 544
    invoke-virtual {v0, v1}, Landroid/sec/clipboard/data/file/FileManager;->getWrap(I)Landroid/sec/clipboard/data/file/WrapFileClipData;

    move-result-object v4

    .line 545
    if-eqz v4, :cond_38

    .line 546
    invoke-virtual {v4}, Landroid/sec/clipboard/data/file/WrapFileClipData;->getDir()Ljava/io/File;

    move-result-object v5

    invoke-virtual {v5}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v2

    .line 547
    const-string v5, "/"

    invoke-virtual {v2, v5}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v5

    add-int/lit8 v5, v5, 0x1

    invoke-virtual {v2, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    .line 548
    invoke-virtual {p2, v2}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_38

    .line 549
    invoke-virtual {v4, p1}, Landroid/sec/clipboard/data/file/WrapFileClipData;->addDeletedUserList(I)V

    .line 543
    :cond_38
    add-int/lit8 v1, v1, 0x1

    goto :goto_13

    .line 554
    .end local v1    # "i":I
    .end local v2    # "path":Ljava/lang/String;
    .end local v3    # "size":I
    .end local v4    # "wrap":Landroid/sec/clipboard/data/file/WrapFileClipData;
    :cond_3b
    return-void
.end method

.method public updateScrapData(ILandroid/sec/clipboard/data/ClipboardData;)Z
    .registers 4
    .param p1, "index"    # I
    .param p2, "clipData"    # Landroid/sec/clipboard/data/ClipboardData;

    .prologue
    .line 106
    const/4 v0, 0x0

    return v0
.end method
