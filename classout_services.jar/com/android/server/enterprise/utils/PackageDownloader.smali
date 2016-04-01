.class public Lcom/android/server/enterprise/utils/PackageDownloader;
.super Ljava/lang/Object;
.source "PackageDownloader.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "PackageDownloader"

.field private static UNSPECIFIED:I

.field private static mPackageDownloader:Lcom/android/server/enterprise/utils/PackageDownloader;


# instance fields
.field private final DEBUG:Z

.field private mContext:Landroid/content/Context;

.field private mDialog:Landroid/app/AlertDialog$Builder;

.field private mDownloadManager:Landroid/app/DownloadManager;

.field private mDownloadQueueIdMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private mIsUserAcceptDataNetwork:Z

.field private mReceiver:Landroid/content/BroadcastReceiver;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 41
    const/4 v0, -0x1

    sput v0, UNSPECIFIED:I

    .line 48
    const/4 v0, 0x0

    sput-object v0, mPackageDownloader:Lcom/android/server/enterprise/utils/PackageDownloader;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .registers 5
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v2, 0x0

    .line 50
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, mDownloadQueueIdMap:Ljava/util/HashMap;

    .line 42
    const/4 v1, 0x0

    iput-object v1, p0, mDialog:Landroid/app/AlertDialog$Builder;

    .line 43
    iput-boolean v2, p0, mIsUserAcceptDataNetwork:Z

    .line 46
    iput-boolean v2, p0, DEBUG:Z

    .line 67
    new-instance v1, Lcom/android/server/enterprise/utils/PackageDownloader$1;

    invoke-direct {v1, p0}, Lcom/android/server/enterprise/utils/PackageDownloader$1;-><init>(Lcom/android/server/enterprise/utils/PackageDownloader;)V

    iput-object v1, p0, mReceiver:Landroid/content/BroadcastReceiver;

    .line 51
    iput-object p1, p0, mContext:Landroid/content/Context;

    .line 52
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 53
    .local v0, "filter":Landroid/content/IntentFilter;
    const-string v1, "android.net.conn.CONNECTIVITY_CHANGE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 54
    const-string/jumbo v1, "edm.intent.action.sec.CHECK_REENROLLMENT"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 55
    const-string v1, "android.intent.action.DOWNLOAD_COMPLETE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 56
    iget-object v1, p0, mContext:Landroid/content/Context;

    iget-object v2, p0, mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 57
    return-void
.end method

.method static synthetic access$000(Lcom/android/server/enterprise/utils/PackageDownloader;)Ljava/util/HashMap;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/enterprise/utils/PackageDownloader;

    .prologue
    .line 37
    iget-object v0, p0, mDownloadQueueIdMap:Ljava/util/HashMap;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/server/enterprise/utils/PackageDownloader;)V
    .registers 1
    .param p0, "x0"    # Lcom/android/server/enterprise/utils/PackageDownloader;

    .prologue
    .line 37
    invoke-direct {p0}, handleNetworkState()V

    return-void
.end method

.method static synthetic access$200(Lcom/android/server/enterprise/utils/PackageDownloader;Ljava/lang/String;Ljava/lang/String;)V
    .registers 3
    .param p0, "x0"    # Lcom/android/server/enterprise/utils/PackageDownloader;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # Ljava/lang/String;

    .prologue
    .line 37
    invoke-direct {p0, p1, p2}, handleDownloadProcess(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$300(Lcom/android/server/enterprise/utils/PackageDownloader;)V
    .registers 1
    .param p0, "x0"    # Lcom/android/server/enterprise/utils/PackageDownloader;

    .prologue
    .line 37
    invoke-direct {p0}, handleDownloadComplete()V

    return-void
.end method

.method static synthetic access$400(Lcom/android/server/enterprise/utils/PackageDownloader;)Landroid/content/Context;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/enterprise/utils/PackageDownloader;

    .prologue
    .line 37
    iget-object v0, p0, mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/server/enterprise/utils/PackageDownloader;Ljava/lang/String;)V
    .registers 2
    .param p0, "x0"    # Lcom/android/server/enterprise/utils/PackageDownloader;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 37
    invoke-direct {p0, p1}, postDownload(Ljava/lang/String;)V

    return-void
.end method

.method private cancelAllDownload()V
    .registers 11

    .prologue
    .line 322
    iget-object v8, p0, mDownloadQueueIdMap:Ljava/util/HashMap;

    if-eqz v8, :cond_5f

    iget-object v8, p0, mDownloadQueueIdMap:Ljava/util/HashMap;

    invoke-virtual {v8}, Ljava/util/HashMap;->isEmpty()Z

    move-result v8

    if-nez v8, :cond_5f

    .line 323
    iget-object v8, p0, mDownloadQueueIdMap:Ljava/util/HashMap;

    invoke-virtual {v8}, Ljava/util/HashMap;->size()I

    move-result v7

    .line 324
    .local v7, "size":I
    if-lez v7, :cond_5f

    .line 325
    new-array v6, v7, [Ljava/lang/String;

    .line 326
    .local v6, "pkgs":[Ljava/lang/String;
    iget-object v8, p0, mDownloadQueueIdMap:Ljava/util/HashMap;

    invoke-virtual {v8}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v8

    invoke-interface {v8}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 328
    .local v1, "iter":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    const/4 v0, 0x0

    .line 329
    .local v0, "i":I
    :goto_21
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_32

    .line 330
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    aput-object v8, v6, v0

    .line 331
    add-int/lit8 v0, v0, 0x1

    goto :goto_21

    .line 334
    :cond_32
    const-string v5, ""

    .line 335
    .local v5, "pkg":Ljava/lang/String;
    sget v8, UNSPECIFIED:I

    int-to-long v2, v8

    .line 337
    .local v2, "id":J
    const/4 v4, 0x0

    .local v4, "j":I
    :goto_38
    if-ge v4, v7, :cond_5a

    .line 338
    aget-object v5, v6, v4

    .line 339
    iget-object v8, p0, mDownloadQueueIdMap:Ljava/util/HashMap;

    invoke-virtual {v8, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Long;

    invoke-virtual {v8}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    .line 341
    sget v8, UNSPECIFIED:I

    int-to-long v8, v8

    cmp-long v8, v2, v8

    if-eqz v8, :cond_52

    .line 342
    invoke-direct {p0, v5}, postDownload(Ljava/lang/String;)V

    .line 343
    :cond_52
    iget-object v8, p0, mDownloadQueueIdMap:Ljava/util/HashMap;

    invoke-virtual {v8, v5}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 337
    add-int/lit8 v4, v4, 0x1

    goto :goto_38

    .line 345
    :cond_5a
    iget-object v8, p0, mDownloadQueueIdMap:Ljava/util/HashMap;

    invoke-virtual {v8}, Ljava/util/HashMap;->clear()V

    .line 348
    .end local v0    # "i":I
    .end local v1    # "iter":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    .end local v2    # "id":J
    .end local v4    # "j":I
    .end local v5    # "pkg":Ljava/lang/String;
    .end local v6    # "pkgs":[Ljava/lang/String;
    .end local v7    # "size":I
    :cond_5f
    return-void
.end method

.method private checkPackage(Ljava/lang/String;)Z
    .registers 19
    .param p1, "pkgName"    # Ljava/lang/String;

    .prologue
    .line 221
    const/4 v11, 0x0

    .line 222
    .local v11, "ret":Z
    const/4 v10, 0x0

    .line 224
    .local v10, "real_pkg":Ljava/lang/String;
    const/4 v12, 0x1

    .line 225
    .local v12, "status":I
    const/4 v5, 0x0

    .line 226
    .local v5, "filename":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v13, v0, mDownloadQueueIdMap:Ljava/util/HashMap;

    move-object/from16 v0, p1

    invoke-virtual {v13, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/Long;

    invoke-virtual {v13}, Ljava/lang/Long;->longValue()J

    move-result-wide v8

    .line 227
    .local v8, "queueId":J
    move-object/from16 v0, p0

    iget-object v13, v0, mDownloadManager:Landroid/app/DownloadManager;

    new-instance v14, Landroid/app/DownloadManager$Query;

    invoke-direct {v14}, Landroid/app/DownloadManager$Query;-><init>()V

    const/4 v15, 0x1

    new-array v15, v15, [J

    const/16 v16, 0x0

    aput-wide v8, v15, v16

    invoke-virtual {v14, v15}, Landroid/app/DownloadManager$Query;->setFilterById([J)Landroid/app/DownloadManager$Query;

    move-result-object v14

    invoke-virtual {v13, v14}, Landroid/app/DownloadManager;->query(Landroid/app/DownloadManager$Query;)Landroid/database/Cursor;

    move-result-object v2

    .line 229
    .local v2, "c":Landroid/database/Cursor;
    if-eqz v2, :cond_4a

    :try_start_2e
    invoke-interface {v2}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v13

    if-eqz v13, :cond_4a

    .line 230
    const-string/jumbo v13, "status"

    invoke-interface {v2, v13}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v13

    invoke-interface {v2, v13}, Landroid/database/Cursor;->getInt(I)I

    move-result v12

    .line 231
    const-string/jumbo v13, "local_filename"

    invoke-interface {v2, v13}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v13

    invoke-interface {v2, v13}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 234
    :cond_4a
    new-instance v4, Ljava/io/File;

    invoke-direct {v4, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 235
    .local v4, "f":Ljava/io/File;
    const/4 v7, 0x0

    .line 236
    .local v7, "pi":Landroid/content/pm/PackageInfo;
    move-object/from16 v0, p0

    iget-object v13, v0, mContext:Landroid/content/Context;

    if-eqz v13, :cond_67

    .line 237
    move-object/from16 v0, p0

    iget-object v13, v0, mContext:Landroid/content/Context;

    invoke-virtual {v13}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v13

    invoke-virtual {v4}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v14

    const/4 v15, 0x0

    invoke-virtual {v13, v14, v15}, Landroid/content/pm/PackageManager;->getPackageArchiveInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v7

    .line 238
    :cond_67
    if-eqz v7, :cond_6f

    iget-object v13, v7, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    if-eqz v13, :cond_6f

    .line 239
    iget-object v10, v7, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    .line 242
    :cond_6f
    if-nez v10, :cond_91

    .line 243
    const/4 v11, 0x0

    .line 244
    move-object/from16 v0, p0

    iget-object v13, v0, mContext:Landroid/content/Context;

    if-eqz v13, :cond_86

    .line 245
    move-object/from16 v0, p0

    iget-object v13, v0, mContext:Landroid/content/Context;

    const v14, 0x1040b9c

    invoke-virtual {v13, v14}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v13

    invoke-static {v13}, Lcom/android/server/enterprise/RestrictionToastManager;->show(Ljava/lang/String;)V
    :try_end_86
    .catchall {:try_start_2e .. :try_end_86} :catchall_ff

    .line 281
    :cond_86
    :goto_86
    if-eqz v2, :cond_8b

    .line 282
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    .line 285
    :cond_8b
    if-nez v11, :cond_90

    .line 286
    invoke-direct/range {p0 .. p1}, postDownload(Ljava/lang/String;)V

    .line 288
    :cond_90
    return v11

    .line 247
    :cond_91
    :try_start_91
    move-object/from16 v0, p0

    iget-object v13, v0, mContext:Landroid/content/Context;

    invoke-static {v13}, Lcom/android/server/enterprise/utils/ConstrainedState;->getInstance(Landroid/content/Context;)Lcom/android/server/enterprise/utils/ConstrainedState;

    move-result-object v6

    .line 248
    .local v6, "mConstrained":Lcom/android/server/enterprise/utils/ConstrainedState;
    invoke-static {v4}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v13

    move-object/from16 v0, p1

    invoke-virtual {v6, v0, v13}, Lcom/android/server/enterprise/utils/ConstrainedState;->checkSignature(Ljava/lang/String;Landroid/net/Uri;)Z

    move-result v13

    const/4 v14, 0x1

    if-ne v13, v14, :cond_d5

    .line 250
    move-object/from16 v0, p1

    invoke-virtual {v10, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-nez v13, :cond_c2

    .line 251
    move-object/from16 v0, p0

    iget-object v13, v0, mDownloadQueueIdMap:Ljava/util/HashMap;

    move-object/from16 v0, p1

    invoke-virtual {v13, v0}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 252
    move-object/from16 v0, p0

    iget-object v13, v0, mDownloadQueueIdMap:Ljava/util/HashMap;

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v14

    invoke-virtual {v13, v10, v14}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_c2
    .catchall {:try_start_91 .. :try_end_c2} :catchall_ff

    .line 255
    :cond_c2
    const/16 v13, 0x8

    if-ne v12, v13, :cond_86

    if-eqz v5, :cond_86

    .line 257
    :try_start_c8
    move-object/from16 v0, p0

    invoke-direct {v0, v5}, installPackage(Ljava/lang/String;)V
    :try_end_cd
    .catch Ljava/lang/Exception; {:try_start_c8 .. :try_end_cd} :catch_cf
    .catchall {:try_start_c8 .. :try_end_cd} :catchall_ff

    .line 258
    const/4 v11, 0x1

    goto :goto_86

    .line 259
    :catch_cf
    move-exception v3

    .line 260
    .local v3, "e":Ljava/lang/Exception;
    :try_start_d0
    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V

    .line 261
    const/4 v11, 0x0

    .line 262
    goto :goto_86

    .line 264
    .end local v3    # "e":Ljava/lang/Exception;
    :cond_d5
    invoke-static {v4}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v13

    move-object/from16 v0, p1

    invoke-virtual {v6, v0, v13}, Lcom/android/server/enterprise/utils/ConstrainedState;->checkSignatureTarget(Ljava/lang/String;Landroid/net/Uri;)Z

    move-result v13

    const/4 v14, 0x1

    if-ne v13, v14, :cond_fd

    .line 265
    move-object/from16 v0, p1

    invoke-virtual {v10, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_e7
    .catchall {:try_start_d0 .. :try_end_e7} :catchall_ff

    move-result v13

    if-eqz v13, :cond_86

    .line 266
    const/16 v13, 0x8

    if-ne v12, v13, :cond_86

    if-eqz v5, :cond_86

    .line 268
    :try_start_f0
    move-object/from16 v0, p0

    invoke-direct {v0, v5}, installPackage(Ljava/lang/String;)V
    :try_end_f5
    .catch Ljava/lang/Exception; {:try_start_f0 .. :try_end_f5} :catch_f7
    .catchall {:try_start_f0 .. :try_end_f5} :catchall_ff

    .line 269
    const/4 v11, 0x1

    goto :goto_86

    .line 270
    :catch_f7
    move-exception v3

    .line 271
    .restart local v3    # "e":Ljava/lang/Exception;
    :try_start_f8
    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_fb
    .catchall {:try_start_f8 .. :try_end_fb} :catchall_ff

    .line 272
    const/4 v11, 0x0

    .line 273
    goto :goto_86

    .line 277
    .end local v3    # "e":Ljava/lang/Exception;
    :cond_fd
    const/4 v11, 0x0

    goto :goto_86

    .line 281
    .end local v4    # "f":Ljava/io/File;
    .end local v6    # "mConstrained":Lcom/android/server/enterprise/utils/ConstrainedState;
    .end local v7    # "pi":Landroid/content/pm/PackageInfo;
    :catchall_ff
    move-exception v13

    if-eqz v2, :cond_105

    .line 282
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    :cond_105
    throw v13
.end method

.method private download(Ljava/lang/String;Ljava/lang/String;)V
    .registers 13
    .param p1, "pkgName"    # Ljava/lang/String;
    .param p2, "pkgUrl"    # Ljava/lang/String;

    .prologue
    .line 196
    if-eqz p1, :cond_48

    if-eqz p2, :cond_48

    .line 198
    :try_start_4
    invoke-static {p2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    .line 199
    .local v4, "uri":Landroid/net/Uri;
    iget-object v5, p0, mContext:Landroid/content/Context;

    invoke-direct {p0, v5}, getDownloadManager(Landroid/content/Context;)Landroid/app/DownloadManager;

    move-result-object v5

    iput-object v5, p0, mDownloadManager:Landroid/app/DownloadManager;

    .line 200
    iget-object v5, p0, mDownloadManager:Landroid/app/DownloadManager;

    if-eqz v5, :cond_48

    if-eqz v4, :cond_48

    .line 201
    iget-object v5, p0, mDownloadQueueIdMap:Ljava/util/HashMap;

    invoke-virtual {v5}, Ljava/util/HashMap;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_48

    .line 202
    iget-object v5, p0, mDownloadQueueIdMap:Ljava/util/HashMap;

    invoke-virtual {v5, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Long;

    invoke-virtual {v5}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    sget v5, UNSPECIFIED:I

    int-to-long v8, v5

    cmp-long v5, v6, v8

    if-nez v5, :cond_48

    .line 203
    new-instance v1, Landroid/app/DownloadManager$Request;

    invoke-direct {v1, v4}, Landroid/app/DownloadManager$Request;-><init>(Landroid/net/Uri;)V

    .line 204
    .local v1, "request":Landroid/app/DownloadManager$Request;
    invoke-virtual {v1}, Landroid/app/DownloadManager$Request;->setDestinationToSystemCache()Landroid/app/DownloadManager$Request;

    .line 205
    iget-object v5, p0, mDownloadManager:Landroid/app/DownloadManager;

    invoke-virtual {v5, v1}, Landroid/app/DownloadManager;->enqueue(Landroid/app/DownloadManager$Request;)J

    move-result-wide v2

    .line 206
    .local v2, "queueId":J
    iget-object v5, p0, mDownloadQueueIdMap:Ljava/util/HashMap;

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-virtual {v5, p1, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_48
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_48} :catch_49

    .line 214
    .end local v1    # "request":Landroid/app/DownloadManager$Request;
    .end local v2    # "queueId":J
    .end local v4    # "uri":Landroid/net/Uri;
    :cond_48
    :goto_48
    return-void

    .line 210
    :catch_49
    move-exception v0

    .line 211
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_48
.end method

.method private getDownloadManager(Landroid/content/Context;)Landroid/app/DownloadManager;
    .registers 3
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 217
    const-string/jumbo v0, "download"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/DownloadManager;

    return-object v0
.end method

.method public static getInstance(Landroid/content/Context;)Lcom/android/server/enterprise/utils/PackageDownloader;
    .registers 2
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 60
    sget-object v0, mPackageDownloader:Lcom/android/server/enterprise/utils/PackageDownloader;

    if-nez v0, :cond_b

    .line 61
    new-instance v0, Lcom/android/server/enterprise/utils/PackageDownloader;

    invoke-direct {v0, p0}, <init>(Landroid/content/Context;)V

    sput-object v0, mPackageDownloader:Lcom/android/server/enterprise/utils/PackageDownloader;

    .line 64
    :cond_b
    sget-object v0, mPackageDownloader:Lcom/android/server/enterprise/utils/PackageDownloader;

    return-object v0
.end method

.method private handleDownloadComplete()V
    .registers 11

    .prologue
    .line 125
    iget-object v8, p0, mDownloadQueueIdMap:Ljava/util/HashMap;

    if-eqz v8, :cond_55

    iget-object v8, p0, mDownloadQueueIdMap:Ljava/util/HashMap;

    invoke-virtual {v8}, Ljava/util/HashMap;->isEmpty()Z

    move-result v8

    if-nez v8, :cond_55

    .line 126
    iget-object v8, p0, mDownloadQueueIdMap:Ljava/util/HashMap;

    invoke-virtual {v8}, Ljava/util/HashMap;->size()I

    move-result v7

    .line 128
    .local v7, "size":I
    if-lez v7, :cond_55

    .line 129
    new-array v6, v7, [Ljava/lang/String;

    .line 130
    .local v6, "pkgs":[Ljava/lang/String;
    iget-object v8, p0, mDownloadQueueIdMap:Ljava/util/HashMap;

    invoke-virtual {v8}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v8

    invoke-interface {v8}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 132
    .local v1, "iter":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    const/4 v0, 0x0

    .line 133
    .local v0, "i":I
    :goto_21
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_32

    .line 134
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    aput-object v8, v6, v0

    .line 135
    add-int/lit8 v0, v0, 0x1

    goto :goto_21

    .line 138
    :cond_32
    const-string v5, ""

    .line 139
    .local v5, "pkg":Ljava/lang/String;
    sget v8, UNSPECIFIED:I

    int-to-long v2, v8

    .line 141
    .local v2, "id":J
    const/4 v4, 0x0

    .local v4, "j":I
    :goto_38
    if-ge v4, v7, :cond_55

    .line 142
    aget-object v5, v6, v4

    .line 143
    iget-object v8, p0, mDownloadQueueIdMap:Ljava/util/HashMap;

    invoke-virtual {v8, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Long;

    invoke-virtual {v8}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    .line 144
    sget v8, UNSPECIFIED:I

    int-to-long v8, v8

    cmp-long v8, v2, v8

    if-eqz v8, :cond_52

    .line 145
    invoke-direct {p0, v5}, checkPackage(Ljava/lang/String;)Z

    .line 141
    :cond_52
    add-int/lit8 v4, v4, 0x1

    goto :goto_38

    .line 149
    .end local v0    # "i":I
    .end local v1    # "iter":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    .end local v2    # "id":J
    .end local v4    # "j":I
    .end local v5    # "pkg":Ljava/lang/String;
    .end local v6    # "pkgs":[Ljava/lang/String;
    .end local v7    # "size":I
    :cond_55
    return-void
.end method

.method private handleDownloadProcess(Ljava/lang/String;Ljava/lang/String;)V
    .registers 7
    .param p1, "pkgName"    # Ljava/lang/String;
    .param p2, "pkgUrl"    # Ljava/lang/String;

    .prologue
    .line 99
    if-eqz p1, :cond_2b

    .line 100
    invoke-direct {p0}, isNetworkConnectionAvailable()Z

    move-result v0

    if-eqz v0, :cond_2b

    iget-object v0, p0, mDownloadQueueIdMap:Ljava/util/HashMap;

    if-eqz v0, :cond_2b

    .line 101
    iget-object v0, p0, mDownloadQueueIdMap:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1c

    iget-object v0, p0, mDownloadQueueIdMap:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2b

    .line 102
    :cond_1c
    iget-object v0, p0, mDownloadQueueIdMap:Ljava/util/HashMap;

    sget v1, UNSPECIFIED:I

    int-to-long v2, v1

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 103
    invoke-direct {p0, p1, p2}, download(Ljava/lang/String;Ljava/lang/String;)V

    .line 114
    :cond_2b
    return-void
.end method

.method private handleNetworkState()V
    .registers 3

    .prologue
    .line 117
    invoke-direct {p0}, isNetworkConnectionAvailable()Z

    move-result v0

    if-nez v0, :cond_19

    .line 118
    iget-object v0, p0, mContext:Landroid/content/Context;

    if-eqz v0, :cond_16

    .line 119
    iget-object v0, p0, mContext:Landroid/content/Context;

    const v1, 0x1040b9b

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/enterprise/RestrictionToastManager;->show(Ljava/lang/String;)V

    .line 120
    :cond_16
    invoke-direct {p0}, cancelAllDownload()V

    .line 122
    :cond_19
    return-void
.end method

.method private installPackage(Ljava/lang/String;)V
    .registers 7
    .param p1, "filePath"    # Ljava/lang/String;

    .prologue
    .line 292
    new-instance v0, Lcom/android/server/enterprise/utils/PackageDownloader$2;

    invoke-direct {v0, p0}, Lcom/android/server/enterprise/utils/PackageDownloader$2;-><init>(Lcom/android/server/enterprise/utils/PackageDownloader;)V

    .line 312
    .local v0, "packageInstallObserver":Landroid/content/pm/IPackageInstallObserver;
    iget-object v1, p0, mContext:Landroid/content/Context;

    if-eqz v1, :cond_22

    .line 313
    iget-object v1, p0, mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    new-instance v2, Ljava/io/File;

    invoke-direct {v2, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v2}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v2

    const/4 v3, 0x0

    iget-object v4, p0, mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v2, v0, v3, v4}, Landroid/content/pm/PackageManager;->installPackage(Landroid/net/Uri;Landroid/content/pm/IPackageInstallObserver;ILjava/lang/String;)V

    .line 319
    :cond_22
    return-void
.end method

.method private isApplicationInstalled(Ljava/lang/String;)Z
    .registers 7
    .param p1, "packageName"    # Ljava/lang/String;

    .prologue
    const/4 v3, 0x1

    .line 185
    iget-object v4, p0, mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    invoke-virtual {v4, v3}, Landroid/content/pm/PackageManager;->getInstalledApplications(I)Ljava/util/List;

    move-result-object v1

    .line 186
    .local v1, "appInfos":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ApplicationInfo;>;"
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_c
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v4

    if-ge v2, v4, :cond_24

    .line 187
    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/ApplicationInfo;

    .line 188
    .local v0, "aInfo":Landroid/content/pm/ApplicationInfo;
    iget-object v4, v0, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v4, p1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_21

    .line 192
    .end local v0    # "aInfo":Landroid/content/pm/ApplicationInfo;
    :goto_20
    return v3

    .line 186
    .restart local v0    # "aInfo":Landroid/content/pm/ApplicationInfo;
    :cond_21
    add-int/lit8 v2, v2, 0x1

    goto :goto_c

    .line 192
    .end local v0    # "aInfo":Landroid/content/pm/ApplicationInfo;
    :cond_24
    const/4 v3, 0x0

    goto :goto_20
.end method

.method private isConnectionAvailable(I)Z
    .registers 6
    .param p1, "type"    # I

    .prologue
    .line 172
    const/4 v1, 0x0

    .line 174
    .local v1, "result":Z
    const/4 v0, 0x0

    .line 175
    .local v0, "cm":Landroid/net/ConnectivityManager;
    iget-object v2, p0, mContext:Landroid/content/Context;

    if-eqz v2, :cond_10

    .line 176
    iget-object v2, p0, mContext:Landroid/content/Context;

    const-string v3, "connectivity"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .end local v0    # "cm":Landroid/net/ConnectivityManager;
    check-cast v0, Landroid/net/ConnectivityManager;

    .line 178
    .restart local v0    # "cm":Landroid/net/ConnectivityManager;
    :cond_10
    if-eqz v0, :cond_21

    invoke-virtual {v0, p1}, Landroid/net/ConnectivityManager;->isNetworkSupported(I)Z

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_21

    .line 179
    invoke-virtual {v0, p1}, Landroid/net/ConnectivityManager;->getNetworkInfo(I)Landroid/net/NetworkInfo;

    move-result-object v2

    invoke-virtual {v2}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v1

    .line 181
    :cond_21
    return v1
.end method

.method private isNetworkConnectionAvailable()Z
    .registers 6

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 152
    const/4 v2, 0x1

    .line 153
    .local v2, "result":Z
    invoke-direct {p0, v4}, isConnectionAvailable(I)Z

    move-result v1

    .line 154
    .local v1, "isWifi":Z
    invoke-direct {p0, v3}, isConnectionAvailable(I)Z

    move-result v0

    .line 155
    .local v0, "isMobile":Z
    if-nez v1, :cond_f

    if-eqz v0, :cond_24

    :cond_f
    move v2, v4

    .line 157
    :goto_10
    if-nez v2, :cond_23

    .line 158
    iget-object v3, p0, mContext:Landroid/content/Context;

    if-eqz v3, :cond_23

    .line 159
    iget-object v3, p0, mContext:Landroid/content/Context;

    const v4, 0x1040b9e

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/android/server/enterprise/RestrictionToastManager;->show(Ljava/lang/String;)V

    .line 160
    const/4 v2, 0x0

    .line 168
    :cond_23
    return v2

    :cond_24
    move v2, v3

    .line 155
    goto :goto_10
.end method

.method private postDownload(Ljava/lang/String;)V
    .registers 7
    .param p1, "pkgName"    # Ljava/lang/String;

    .prologue
    .line 354
    sget v2, UNSPECIFIED:I

    int-to-long v0, v2

    .line 380
    .local v0, "id":J
    iget-object v2, p0, mDownloadQueueIdMap:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->size()I

    move-result v2

    if-lez v2, :cond_40

    .line 381
    iget-object v2, p0, mDownloadQueueIdMap:Ljava/util/HashMap;

    invoke-virtual {v2, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_41

    .line 382
    iget-object v2, p0, mDownloadQueueIdMap:Ljava/util/HashMap;

    invoke-virtual {v2, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    .line 384
    if-eqz p1, :cond_3b

    sget v2, UNSPECIFIED:I

    int-to-long v2, v2

    cmp-long v2, v0, v2

    if-eqz v2, :cond_3b

    .line 385
    iget-object v2, p0, mContext:Landroid/content/Context;

    invoke-direct {p0, v2}, getDownloadManager(Landroid/content/Context;)Landroid/app/DownloadManager;

    move-result-object v2

    iput-object v2, p0, mDownloadManager:Landroid/app/DownloadManager;

    .line 386
    iget-object v2, p0, mDownloadManager:Landroid/app/DownloadManager;

    const/4 v3, 0x1

    new-array v3, v3, [J

    const/4 v4, 0x0

    aput-wide v0, v3, v4

    invoke-virtual {v2, v3}, Landroid/app/DownloadManager;->remove([J)I

    .line 390
    :cond_3b
    iget-object v2, p0, mDownloadQueueIdMap:Ljava/util/HashMap;

    invoke-virtual {v2, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 395
    :cond_40
    :goto_40
    return-void

    .line 392
    :cond_41
    const-string v2, "PackageDownloader"

    const-string/jumbo v3, "something\'s wrong...size is 0"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_40
.end method
