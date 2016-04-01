.class Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;
.super Landroid/service/wallpaper/IWallpaperConnection$Stub;
.source "WallpaperManagerService.java"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/wallpaper/WallpaperManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "WallpaperConnection"
.end annotation


# instance fields
.field mDimensionsChanged:Z

.field mEngine:Landroid/service/wallpaper/IWallpaperEngine;

.field final mInfo:Landroid/app/WallpaperInfo;

.field mPaddingChanged:Z

.field mReply:Landroid/os/IRemoteCallback;

.field mService:Landroid/service/wallpaper/IWallpaperService;

.field final mToken:Landroid/os/Binder;

.field mWallpaper:Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;

.field final synthetic this$0:Lcom/android/server/wallpaper/WallpaperManagerService;


# direct methods
.method public constructor <init>(Lcom/android/server/wallpaper/WallpaperManagerService;Landroid/app/WallpaperInfo;Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;)V
    .registers 6
    .param p2, "info"    # Landroid/app/WallpaperInfo;
    .param p3, "wallpaper"    # Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;

    .prologue
    const/4 v1, 0x0

    .line 406
    iput-object p1, p0, this$0:Lcom/android/server/wallpaper/WallpaperManagerService;

    invoke-direct {p0}, Landroid/service/wallpaper/IWallpaperConnection$Stub;-><init>()V

    .line 397
    new-instance v0, Landroid/os/Binder;

    invoke-direct {v0}, Landroid/os/Binder;-><init>()V

    iput-object v0, p0, mToken:Landroid/os/Binder;

    .line 403
    iput-boolean v1, p0, mDimensionsChanged:Z

    .line 404
    iput-boolean v1, p0, mPaddingChanged:Z

    .line 407
    iput-object p2, p0, mInfo:Landroid/app/WallpaperInfo;

    .line 408
    iput-object p3, p0, mWallpaper:Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;

    .line 409
    return-void
.end method


# virtual methods
.method public attachEngine(Landroid/service/wallpaper/IWallpaperEngine;)V
    .registers 7
    .param p1, "engine"    # Landroid/service/wallpaper/IWallpaperEngine;

    .prologue
    .line 525
    iget-object v1, p0, this$0:Lcom/android/server/wallpaper/WallpaperManagerService;

    iget-object v2, v1, Lcom/android/server/wallpaper/WallpaperManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v2

    .line 526
    :try_start_5
    iput-object p1, p0, mEngine:Landroid/service/wallpaper/IWallpaperEngine;

    .line 527
    iget-boolean v1, p0, mDimensionsChanged:Z
    :try_end_9
    .catchall {:try_start_5 .. :try_end_9} :catchall_36

    if-eqz v1, :cond_1b

    .line 529
    :try_start_b
    iget-object v1, p0, mEngine:Landroid/service/wallpaper/IWallpaperEngine;

    iget-object v3, p0, mWallpaper:Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;

    iget v3, v3, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->width:I

    iget-object v4, p0, mWallpaper:Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;

    iget v4, v4, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->height:I

    invoke-interface {v1, v3, v4}, Landroid/service/wallpaper/IWallpaperEngine;->setDesiredSize(II)V
    :try_end_18
    .catch Landroid/os/RemoteException; {:try_start_b .. :try_end_18} :catch_2d
    .catchall {:try_start_b .. :try_end_18} :catchall_36

    .line 533
    :goto_18
    const/4 v1, 0x0

    :try_start_19
    iput-boolean v1, p0, mDimensionsChanged:Z

    .line 535
    :cond_1b
    iget-boolean v1, p0, mPaddingChanged:Z
    :try_end_1d
    .catchall {:try_start_19 .. :try_end_1d} :catchall_36

    if-eqz v1, :cond_2b

    .line 537
    :try_start_1f
    iget-object v1, p0, mEngine:Landroid/service/wallpaper/IWallpaperEngine;

    iget-object v3, p0, mWallpaper:Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;

    iget-object v3, v3, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->padding:Landroid/graphics/Rect;

    invoke-interface {v1, v3}, Landroid/service/wallpaper/IWallpaperEngine;->setDisplayPadding(Landroid/graphics/Rect;)V
    :try_end_28
    .catch Landroid/os/RemoteException; {:try_start_1f .. :try_end_28} :catch_39
    .catchall {:try_start_1f .. :try_end_28} :catchall_36

    .line 541
    :goto_28
    const/4 v1, 0x0

    :try_start_29
    iput-boolean v1, p0, mPaddingChanged:Z

    .line 543
    :cond_2b
    monitor-exit v2

    .line 544
    return-void

    .line 530
    :catch_2d
    move-exception v0

    .line 531
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "WallpaperManagerService"

    const-string v3, "Failed to set wallpaper dimensions"

    invoke-static {v1, v3, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_18

    .line 543
    .end local v0    # "e":Landroid/os/RemoteException;
    :catchall_36
    move-exception v1

    monitor-exit v2
    :try_end_38
    .catchall {:try_start_29 .. :try_end_38} :catchall_36

    throw v1

    .line 538
    :catch_39
    move-exception v0

    .line 539
    .restart local v0    # "e":Landroid/os/RemoteException;
    :try_start_3a
    const-string v1, "WallpaperManagerService"

    const-string v3, "Failed to set wallpaper padding"

    invoke-static {v1, v3, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_41
    .catchall {:try_start_3a .. :try_end_41} :catchall_36

    goto :goto_28
.end method

.method public engineShown(Landroid/service/wallpaper/IWallpaperEngine;)V
    .registers 8
    .param p1, "engine"    # Landroid/service/wallpaper/IWallpaperEngine;

    .prologue
    .line 548
    iget-object v1, p0, this$0:Lcom/android/server/wallpaper/WallpaperManagerService;

    iget-object v4, v1, Lcom/android/server/wallpaper/WallpaperManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v4

    .line 549
    :try_start_5
    iget-object v1, p0, mReply:Landroid/os/IRemoteCallback;

    if-eqz v1, :cond_16

    .line 550
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J
    :try_end_c
    .catchall {:try_start_5 .. :try_end_c} :catchall_1d

    move-result-wide v2

    .line 552
    .local v2, "ident":J
    :try_start_d
    iget-object v1, p0, mReply:Landroid/os/IRemoteCallback;

    const/4 v5, 0x0

    invoke-interface {v1, v5}, Landroid/os/IRemoteCallback;->sendResult(Landroid/os/Bundle;)V
    :try_end_13
    .catch Landroid/os/RemoteException; {:try_start_d .. :try_end_13} :catch_18
    .catchall {:try_start_d .. :try_end_13} :catchall_1d

    .line 556
    :goto_13
    const/4 v1, 0x0

    :try_start_14
    iput-object v1, p0, mReply:Landroid/os/IRemoteCallback;

    .line 558
    .end local v2    # "ident":J
    :cond_16
    monitor-exit v4

    .line 559
    return-void

    .line 553
    .restart local v2    # "ident":J
    :catch_18
    move-exception v0

    .line 554
    .local v0, "e":Landroid/os/RemoteException;
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto :goto_13

    .line 558
    .end local v0    # "e":Landroid/os/RemoteException;
    .end local v2    # "ident":J
    :catchall_1d
    move-exception v1

    monitor-exit v4
    :try_end_1f
    .catchall {:try_start_14 .. :try_end_1f} :catchall_1d

    throw v1
.end method

.method isSameWithPreviousWallpaper(Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;)Z
    .registers 19
    .param p1, "wallpaperFromService"    # Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;

    .prologue
    .line 430
    move-object/from16 v0, p1

    iget v11, v0, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->userId:I

    .line 432
    .local v11, "userId":I
    # invokes: Lcom/android/server/wallpaper/WallpaperManagerService;->makeJournaledFile(I)Lcom/android/internal/util/JournaledFile;
    invoke-static {v11}, Lcom/android/server/wallpaper/WallpaperManagerService;->access$300(I)Lcom/android/internal/util/JournaledFile;

    move-result-object v4

    .line 433
    .local v4, "journal":Lcom/android/internal/util/JournaledFile;
    const/4 v7, 0x0

    .line 434
    .local v7, "stream":Ljava/io/FileInputStream;
    invoke-virtual {v4}, Lcom/android/internal/util/JournaledFile;->chooseForRead()Ljava/io/File;

    move-result-object v3

    .line 435
    .local v3, "file":Ljava/io/File;
    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v14

    if-nez v14, :cond_15

    const/4 v14, 0x0

    .line 483
    :goto_14
    return v14

    .line 436
    :cond_15
    new-instance v12, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;

    invoke-direct {v12, v11}, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;-><init>(I)V

    .line 439
    .local v12, "wallpaper":Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;
    :try_start_1a
    new-instance v8, Ljava/io/FileInputStream;

    invoke-direct {v8, v3}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_1f
    .catch Ljava/lang/NullPointerException; {:try_start_1a .. :try_end_1f} :catch_127
    .catch Ljava/lang/NumberFormatException; {:try_start_1a .. :try_end_1f} :catch_14d
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_1a .. :try_end_1f} :catch_173
    .catch Ljava/io/IOException; {:try_start_1a .. :try_end_1f} :catch_199
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_1a .. :try_end_1f} :catch_1bf

    .line 440
    .end local v7    # "stream":Ljava/io/FileInputStream;
    .local v8, "stream":Ljava/io/FileInputStream;
    :try_start_1f
    invoke-static {}, Landroid/util/Xml;->newPullParser()Lorg/xmlpull/v1/XmlPullParser;

    move-result-object v5

    .line 441
    .local v5, "parser":Lorg/xmlpull/v1/XmlPullParser;
    const/4 v14, 0x0

    invoke-interface {v5, v8, v14}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/InputStream;Ljava/lang/String;)V

    .line 445
    :cond_27
    invoke-interface {v5}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v10

    .line 446
    .local v10, "type":I
    const/4 v14, 0x2

    if-ne v10, v14, :cond_70

    .line 447
    invoke-interface {v5}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v9

    .line 448
    .local v9, "tag":Ljava/lang/String;
    const-string/jumbo v14, "wp"

    invoke-virtual {v14, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_70

    .line 449
    const/4 v14, 0x0

    const-string/jumbo v15, "width"

    invoke-interface {v5, v14, v15}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    invoke-static {v14}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v14

    iput v14, v12, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->width:I

    .line 450
    const/4 v14, 0x0

    const-string/jumbo v15, "height"

    invoke-interface {v5, v14, v15}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    invoke-static {v14}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v14

    iput v14, v12, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->height:I

    .line 451
    const/4 v14, 0x0

    const-string/jumbo v15, "name"

    invoke-interface {v5, v14, v15}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    iput-object v14, v12, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->name:Ljava/lang/String;

    .line 452
    const/4 v14, 0x0

    const-string v15, "component"

    invoke-interface {v5, v14, v15}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 453
    .local v1, "comp":Ljava/lang/String;
    if-eqz v1, :cond_124

    invoke-static {v1}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v14

    :goto_6e
    iput-object v14, v12, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->wallpaperComponent:Landroid/content/ComponentName;
    :try_end_70
    .catch Ljava/lang/NullPointerException; {:try_start_1f .. :try_end_70} :catch_208
    .catch Ljava/lang/NumberFormatException; {:try_start_1f .. :try_end_70} :catch_204
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_1f .. :try_end_70} :catch_200
    .catch Ljava/io/IOException; {:try_start_1f .. :try_end_70} :catch_1fd
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_1f .. :try_end_70} :catch_1fa

    .line 458
    .end local v1    # "comp":Ljava/lang/String;
    .end local v9    # "tag":Ljava/lang/String;
    :cond_70
    const/4 v14, 0x1

    if-ne v10, v14, :cond_27

    move-object v7, v8

    .line 471
    .end local v5    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .end local v8    # "stream":Ljava/io/FileInputStream;
    .end local v10    # "type":I
    .restart local v7    # "stream":Ljava/io/FileInputStream;
    :goto_74
    if-eqz v7, :cond_79

    .line 472
    :try_start_76
    invoke-virtual {v7}, Ljava/io/FileInputStream;->close()V
    :try_end_79
    .catch Ljava/io/IOException; {:try_start_76 .. :try_end_79} :catch_1f7

    .line 477
    :cond_79
    :goto_79
    iget-object v14, v12, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->wallpaperComponent:Landroid/content/ComponentName;

    if-nez v14, :cond_1e5

    const/4 v13, 0x0

    .line 478
    .local v13, "xmlfileCompnont":Ljava/lang/String;
    :goto_7e
    move-object/from16 v0, p1

    iget-object v14, v0, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->wallpaperComponent:Landroid/content/ComponentName;

    if-nez v14, :cond_1ed

    const/4 v6, 0x0

    .line 479
    .local v6, "serviceCompnont":Ljava/lang/String;
    :goto_85
    const-string v14, "WallpaperManagerService"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, ".xml file : width("

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    iget v0, v12, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->width:I

    move/from16 v16, v0

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, "), height("

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    iget v0, v12, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->height:I

    move/from16 v16, v0

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, "), name("

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    iget-object v0, v12, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->name:Ljava/lang/String;

    move-object/from16 v16, v0

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, "), component("

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, ")"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 481
    const-string v14, "WallpaperManagerService"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v16, "service  : width("

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    move-object/from16 v0, p1

    iget v0, v0, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->width:I

    move/from16 v16, v0

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, "), height("

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    move-object/from16 v0, p1

    iget v0, v0, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->height:I

    move/from16 v16, v0

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, "), name("

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->name:Ljava/lang/String;

    move-object/from16 v16, v0

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, "), component("

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, ")"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 483
    move-object/from16 v0, p1

    invoke-virtual {v12, v0}, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->equals(Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;)Z

    move-result v14

    goto/16 :goto_14

    .line 453
    .end local v6    # "serviceCompnont":Ljava/lang/String;
    .end local v7    # "stream":Ljava/io/FileInputStream;
    .end local v13    # "xmlfileCompnont":Ljava/lang/String;
    .restart local v1    # "comp":Ljava/lang/String;
    .restart local v5    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .restart local v8    # "stream":Ljava/io/FileInputStream;
    .restart local v9    # "tag":Ljava/lang/String;
    .restart local v10    # "type":I
    :cond_124
    const/4 v14, 0x0

    goto/16 :goto_6e

    .line 459
    .end local v1    # "comp":Ljava/lang/String;
    .end local v5    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .end local v8    # "stream":Ljava/io/FileInputStream;
    .end local v9    # "tag":Ljava/lang/String;
    .end local v10    # "type":I
    .restart local v7    # "stream":Ljava/io/FileInputStream;
    :catch_127
    move-exception v2

    .line 460
    .local v2, "e":Ljava/lang/NullPointerException;
    :goto_128
    const-string v14, "WallpaperManagerService"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v16, "failed parsing "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, " "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_74

    .line 461
    .end local v2    # "e":Ljava/lang/NullPointerException;
    :catch_14d
    move-exception v2

    .line 462
    .local v2, "e":Ljava/lang/NumberFormatException;
    :goto_14e
    const-string v14, "WallpaperManagerService"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v16, "failed parsing "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, " "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_74

    .line 463
    .end local v2    # "e":Ljava/lang/NumberFormatException;
    :catch_173
    move-exception v2

    .line 464
    .local v2, "e":Lorg/xmlpull/v1/XmlPullParserException;
    :goto_174
    const-string v14, "WallpaperManagerService"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v16, "failed parsing "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, " "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_74

    .line 465
    .end local v2    # "e":Lorg/xmlpull/v1/XmlPullParserException;
    :catch_199
    move-exception v2

    .line 466
    .local v2, "e":Ljava/io/IOException;
    :goto_19a
    const-string v14, "WallpaperManagerService"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v16, "failed parsing "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, " "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_74

    .line 467
    .end local v2    # "e":Ljava/io/IOException;
    :catch_1bf
    move-exception v2

    .line 468
    .local v2, "e":Ljava/lang/IndexOutOfBoundsException;
    :goto_1c0
    const-string v14, "WallpaperManagerService"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v16, "failed parsing "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, " "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_74

    .line 477
    .end local v2    # "e":Ljava/lang/IndexOutOfBoundsException;
    :cond_1e5
    iget-object v14, v12, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->wallpaperComponent:Landroid/content/ComponentName;

    invoke-virtual {v14}, Landroid/content/ComponentName;->toString()Ljava/lang/String;

    move-result-object v13

    goto/16 :goto_7e

    .line 478
    .restart local v13    # "xmlfileCompnont":Ljava/lang/String;
    :cond_1ed
    move-object/from16 v0, p1

    iget-object v14, v0, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->wallpaperComponent:Landroid/content/ComponentName;

    invoke-virtual {v14}, Landroid/content/ComponentName;->toString()Ljava/lang/String;

    move-result-object v6

    goto/16 :goto_85

    .line 474
    .end local v13    # "xmlfileCompnont":Ljava/lang/String;
    :catch_1f7
    move-exception v14

    goto/16 :goto_79

    .line 467
    .end local v7    # "stream":Ljava/io/FileInputStream;
    .restart local v8    # "stream":Ljava/io/FileInputStream;
    :catch_1fa
    move-exception v2

    move-object v7, v8

    .end local v8    # "stream":Ljava/io/FileInputStream;
    .restart local v7    # "stream":Ljava/io/FileInputStream;
    goto :goto_1c0

    .line 465
    .end local v7    # "stream":Ljava/io/FileInputStream;
    .restart local v8    # "stream":Ljava/io/FileInputStream;
    :catch_1fd
    move-exception v2

    move-object v7, v8

    .end local v8    # "stream":Ljava/io/FileInputStream;
    .restart local v7    # "stream":Ljava/io/FileInputStream;
    goto :goto_19a

    .line 463
    .end local v7    # "stream":Ljava/io/FileInputStream;
    .restart local v8    # "stream":Ljava/io/FileInputStream;
    :catch_200
    move-exception v2

    move-object v7, v8

    .end local v8    # "stream":Ljava/io/FileInputStream;
    .restart local v7    # "stream":Ljava/io/FileInputStream;
    goto/16 :goto_174

    .line 461
    .end local v7    # "stream":Ljava/io/FileInputStream;
    .restart local v8    # "stream":Ljava/io/FileInputStream;
    :catch_204
    move-exception v2

    move-object v7, v8

    .end local v8    # "stream":Ljava/io/FileInputStream;
    .restart local v7    # "stream":Ljava/io/FileInputStream;
    goto/16 :goto_14e

    .line 459
    .end local v7    # "stream":Ljava/io/FileInputStream;
    .restart local v8    # "stream":Ljava/io/FileInputStream;
    :catch_208
    move-exception v2

    move-object v7, v8

    .end local v8    # "stream":Ljava/io/FileInputStream;
    .restart local v7    # "stream":Ljava/io/FileInputStream;
    goto/16 :goto_128
.end method

.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .registers 6
    .param p1, "name"    # Landroid/content/ComponentName;
    .param p2, "service"    # Landroid/os/IBinder;

    .prologue
    .line 413
    iget-object v0, p0, this$0:Lcom/android/server/wallpaper/WallpaperManagerService;

    iget-object v1, v0, Lcom/android/server/wallpaper/WallpaperManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 414
    :try_start_5
    iget-object v0, p0, mWallpaper:Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;

    iget-object v0, v0, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->connection:Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;

    if-ne v0, p0, :cond_2f

    .line 415
    const-string v0, "WallpaperManagerService"

    const-string/jumbo v2, "onServiceConnected"

    invoke-static {v0, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 416
    invoke-static {p2}, Landroid/service/wallpaper/IWallpaperService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/service/wallpaper/IWallpaperService;

    move-result-object v0

    iput-object v0, p0, mService:Landroid/service/wallpaper/IWallpaperService;

    .line 417
    iget-object v0, p0, this$0:Lcom/android/server/wallpaper/WallpaperManagerService;

    iget-object v2, p0, mWallpaper:Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;

    invoke-virtual {v0, p0, v2}, Lcom/android/server/wallpaper/WallpaperManagerService;->attachServiceLocked(Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;)V

    .line 422
    iget-object v0, p0, mWallpaper:Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;

    invoke-virtual {p0, v0}, isSameWithPreviousWallpaper(Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;)Z

    move-result v0

    if-nez v0, :cond_2f

    .line 423
    iget-object v0, p0, this$0:Lcom/android/server/wallpaper/WallpaperManagerService;

    iget-object v2, p0, mWallpaper:Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;

    # invokes: Lcom/android/server/wallpaper/WallpaperManagerService;->saveSettingsLocked(Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;)V
    invoke-static {v0, v2}, Lcom/android/server/wallpaper/WallpaperManagerService;->access$200(Lcom/android/server/wallpaper/WallpaperManagerService;Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;)V

    .line 426
    :cond_2f
    monitor-exit v1

    .line 427
    return-void

    .line 426
    :catchall_31
    move-exception v0

    monitor-exit v1
    :try_end_33
    .catchall {:try_start_5 .. :try_end_33} :catchall_31

    throw v0
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .registers 10
    .param p1, "name"    # Landroid/content/ComponentName;

    .prologue
    .line 488
    iget-object v1, p0, this$0:Lcom/android/server/wallpaper/WallpaperManagerService;

    iget-object v2, v1, Lcom/android/server/wallpaper/WallpaperManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v2

    .line 489
    const/4 v1, 0x0

    :try_start_6
    iput-object v1, p0, mService:Landroid/service/wallpaper/IWallpaperService;

    .line 490
    const/4 v1, 0x0

    iput-object v1, p0, mEngine:Landroid/service/wallpaper/IWallpaperEngine;

    .line 491
    iget-object v1, p0, mWallpaper:Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;

    iget-object v1, v1, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->connection:Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;

    if-ne v1, p0, :cond_92

    .line 492
    const-string v1, "WallpaperManagerService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Wallpaper service gone: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, mWallpaper:Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;

    iget-object v4, v4, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->wallpaperComponent:Landroid/content/ComponentName;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 493
    iget-object v1, p0, mWallpaper:Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;

    iget-boolean v1, v1, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->wallpaperUpdating:Z

    if-nez v1, :cond_92

    iget-object v1, p0, mWallpaper:Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;

    iget v1, v1, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->userId:I

    iget-object v3, p0, this$0:Lcom/android/server/wallpaper/WallpaperManagerService;

    iget v3, v3, Lcom/android/server/wallpaper/WallpaperManagerService;->mCurrentUserId:I

    if-ne v1, v3, :cond_92

    .line 501
    iget-object v1, p0, mWallpaper:Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;

    iget-wide v4, v1, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->lastDiedTime:J

    const-wide/16 v6, 0x0

    cmp-long v1, v4, v6

    if-eqz v1, :cond_9f

    iget-object v1, p0, mWallpaper:Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;

    iget-wide v4, v1, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->lastDiedTime:J

    const-wide/16 v6, 0x2710

    add-long/2addr v4, v6

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v6

    cmp-long v1, v4, v6

    if-lez v1, :cond_9f

    .line 504
    const-string v1, "WallpaperManagerService"

    const-string v3, "Reverting to built-in wallpaper!"

    invoke-static {v1, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 505
    iget-object v1, p0, this$0:Lcom/android/server/wallpaper/WallpaperManagerService;

    const-string v3, "Reverting to built-in wallpaper!"

    invoke-virtual {v1, v3}, Lcom/android/server/wallpaper/WallpaperManagerService;->writeResetLog(Ljava/lang/String;)V

    .line 506
    iget-object v1, p0, this$0:Lcom/android/server/wallpaper/WallpaperManagerService;

    iget-object v1, v1, Lcom/android/server/wallpaper/WallpaperManagerService;->mImageWallpaper:Landroid/content/ComponentName;

    invoke-virtual {p1, v1}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_94

    .line 507
    iget-object v1, p0, this$0:Lcom/android/server/wallpaper/WallpaperManagerService;

    const/4 v3, 0x1

    iget-object v4, p0, mWallpaper:Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;

    iget v4, v4, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->userId:I

    const/4 v5, 0x0

    invoke-virtual {v1, v3, v4, v5}, Lcom/android/server/wallpaper/WallpaperManagerService;->clearWallpaperLocked(ZILandroid/os/IRemoteCallback;)V

    .line 514
    :goto_79
    invoke-virtual {p1}, Landroid/content/ComponentName;->flattenToString()Ljava/lang/String;

    move-result-object v0

    .line 515
    .local v0, "flattened":Ljava/lang/String;
    const v1, 0x80e8

    const/4 v3, 0x0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v4

    const/16 v5, 0x80

    invoke-static {v4, v5}, Ljava/lang/Math;->min(II)I

    move-result v4

    invoke-virtual {v0, v3, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/EventLog;->writeEvent(ILjava/lang/String;)I

    .line 520
    .end local v0    # "flattened":Ljava/lang/String;
    :cond_92
    monitor-exit v2

    .line 521
    return-void

    .line 509
    :cond_94
    iget-object v1, p0, this$0:Lcom/android/server/wallpaper/WallpaperManagerService;

    const-string v3, "ImageWallpaper not reverted"

    invoke-virtual {v1, v3}, Lcom/android/server/wallpaper/WallpaperManagerService;->writeResetLog(Ljava/lang/String;)V

    goto :goto_79

    .line 520
    :catchall_9c
    move-exception v1

    monitor-exit v2
    :try_end_9e
    .catchall {:try_start_6 .. :try_end_9e} :catchall_9c

    throw v1

    .line 512
    :cond_9f
    :try_start_9f
    iget-object v1, p0, mWallpaper:Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v4

    iput-wide v4, v1, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->lastDiedTime:J
    :try_end_a7
    .catchall {:try_start_9f .. :try_end_a7} :catchall_9c

    goto :goto_79
.end method

.method public setWallpaper(Ljava/lang/String;)Landroid/os/ParcelFileDescriptor;
    .registers 5
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 563
    iget-object v0, p0, this$0:Lcom/android/server/wallpaper/WallpaperManagerService;

    iget-object v1, v0, Lcom/android/server/wallpaper/WallpaperManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 564
    :try_start_5
    const-string v0, "WallpaperManagerService"

    const-string/jumbo v2, "setWallpaper "

    invoke-static {v0, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 565
    iget-object v0, p0, mWallpaper:Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;

    iget-object v0, v0, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->connection:Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;

    if-ne v0, p0, :cond_1d

    .line 566
    iget-object v0, p0, this$0:Lcom/android/server/wallpaper/WallpaperManagerService;

    iget-object v2, p0, mWallpaper:Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;

    invoke-virtual {v0, p1, v2}, Lcom/android/server/wallpaper/WallpaperManagerService;->updateWallpaperBitmapLocked(Ljava/lang/String;Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;)Landroid/os/ParcelFileDescriptor;

    move-result-object v0

    monitor-exit v1

    .line 568
    :goto_1c
    return-object v0

    :cond_1d
    const/4 v0, 0x0

    monitor-exit v1

    goto :goto_1c

    .line 569
    :catchall_20
    move-exception v0

    monitor-exit v1
    :try_end_22
    .catchall {:try_start_5 .. :try_end_22} :catchall_20

    throw v0
.end method
