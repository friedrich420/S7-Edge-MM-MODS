.class public Lcom/android/server/enterprise/lso/LSOService;
.super Landroid/app/enterprise/lso/ILockscreenOverlay$Stub;
.source "LSOService.java"

# interfaces
.implements Lcom/android/server/enterprise/EnterpriseServiceCallback;


# static fields
.field private static final MAX_SUPPORTED_LAYER:I = 0x3

.field private static final NO_ADMIN_SET:I = -0x1

.field private static final TAG:Ljava/lang/String; = "LSO"

.field private static final singleAdmin:Z = true


# instance fields
.field private lsoPref:Landroid/app/enterprise/lso/LSOAttributeSet;

.field private final mContext:Landroid/content/Context;

.field private mEDM:Landroid/app/enterprise/EnterpriseDeviceManager;

.field private mItemData:[Landroid/app/enterprise/lso/LSOItemData;

.field private mOverlayAdminUid:I

.field private mWallpaperAdminUid:I

.field private screenDimesions:Landroid/graphics/Point;

.field private final storageProvider:Lcom/android/server/enterprise/lso/LSOStorageProvider;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 6
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 88
    invoke-direct {p0}, Landroid/app/enterprise/lso/ILockscreenOverlay$Stub;-><init>()V

    .line 75
    const/4 v2, 0x0

    iput-object v2, p0, mEDM:Landroid/app/enterprise/EnterpriseDeviceManager;

    .line 89
    iput-object p1, p0, mContext:Landroid/content/Context;

    .line 90
    new-instance v2, Lcom/android/server/enterprise/lso/LSOStorageProvider;

    iget-object v3, p0, mContext:Landroid/content/Context;

    invoke-direct {v2, v3}, Lcom/android/server/enterprise/lso/LSOStorageProvider;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, storageProvider:Lcom/android/server/enterprise/lso/LSOStorageProvider;

    .line 91
    iget-object v2, p0, storageProvider:Lcom/android/server/enterprise/lso/LSOStorageProvider;

    invoke-virtual {v2}, Lcom/android/server/enterprise/lso/LSOStorageProvider;->getOverlayAdminUid()I

    move-result v2

    iput v2, p0, mOverlayAdminUid:I

    .line 92
    iget-object v2, p0, storageProvider:Lcom/android/server/enterprise/lso/LSOStorageProvider;

    invoke-virtual {v2}, Lcom/android/server/enterprise/lso/LSOStorageProvider;->getWallpaperAdminUid()I

    move-result v2

    iput v2, p0, mWallpaperAdminUid:I

    .line 93
    iget v2, p0, mOverlayAdminUid:I

    const/4 v3, -0x1

    if-eq v2, v3, :cond_2e

    .line 94
    iget-object v2, p0, storageProvider:Lcom/android/server/enterprise/lso/LSOStorageProvider;

    invoke-virtual {v2}, Lcom/android/server/enterprise/lso/LSOStorageProvider;->getAdminPref()Landroid/app/enterprise/lso/LSOAttributeSet;

    move-result-object v2

    iput-object v2, p0, lsoPref:Landroid/app/enterprise/lso/LSOAttributeSet;

    .line 97
    :cond_2e
    new-instance v2, Landroid/graphics/Point;

    invoke-direct {v2}, Landroid/graphics/Point;-><init>()V

    iput-object v2, p0, screenDimesions:Landroid/graphics/Point;

    .line 98
    iget-object v2, p0, mContext:Landroid/content/Context;

    const-string/jumbo v3, "window"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/WindowManager;

    .line 99
    .local v1, "winMgr":Landroid/view/WindowManager;
    invoke-interface {v1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v2

    iget-object v3, p0, screenDimesions:Landroid/graphics/Point;

    invoke-virtual {v2, v3}, Landroid/view/Display;->getSize(Landroid/graphics/Point;)V

    .line 101
    iget-object v2, p0, screenDimesions:Landroid/graphics/Point;

    iget v2, v2, Landroid/graphics/Point;->x:I

    iget-object v3, p0, screenDimesions:Landroid/graphics/Point;

    iget v3, v3, Landroid/graphics/Point;->y:I

    if-le v2, v3, :cond_71

    .line 102
    iget-object v2, p0, screenDimesions:Landroid/graphics/Point;

    iget-object v3, p0, screenDimesions:Landroid/graphics/Point;

    iget v3, v3, Landroid/graphics/Point;->x:I

    iput v3, v2, Landroid/graphics/Point;->y:I

    .line 106
    :goto_5b
    const/4 v2, 0x4

    new-array v2, v2, [Landroid/app/enterprise/lso/LSOItemData;

    iput-object v2, p0, mItemData:[Landroid/app/enterprise/lso/LSOItemData;

    .line 107
    const/4 v0, 0x1

    .local v0, "i":I
    :goto_61
    const/4 v2, 0x3

    if-gt v0, v2, :cond_7a

    .line 108
    iget-object v2, p0, mItemData:[Landroid/app/enterprise/lso/LSOItemData;

    iget-object v3, p0, storageProvider:Lcom/android/server/enterprise/lso/LSOStorageProvider;

    invoke-virtual {v3, v0}, Lcom/android/server/enterprise/lso/LSOStorageProvider;->getOverlay(I)Landroid/app/enterprise/lso/LSOItemData;

    move-result-object v3

    aput-object v3, v2, v0

    .line 107
    add-int/lit8 v0, v0, 0x1

    goto :goto_61

    .line 104
    .end local v0    # "i":I
    :cond_71
    iget-object v2, p0, screenDimesions:Landroid/graphics/Point;

    iget-object v3, p0, screenDimesions:Landroid/graphics/Point;

    iget v3, v3, Landroid/graphics/Point;->y:I

    iput v3, v2, Landroid/graphics/Point;->x:I

    goto :goto_5b

    .line 110
    .restart local v0    # "i":I
    :cond_7a
    return-void
.end method

.method private copyFileFromParcel(Landroid/os/ParcelFileDescriptor;Ljava/lang/String;)Ljava/lang/String;
    .registers 15
    .param p1, "fd"    # Landroid/os/ParcelFileDescriptor;
    .param p2, "path"    # Ljava/lang/String;

    .prologue
    const/4 v8, 0x0

    .line 698
    const-string v9, "/data/system/enterprise/temp"

    invoke-static {v9}, Landroid/app/enterprise/lso/LSOUtils;->mkDir(Ljava/lang/String;)Z

    move-result v9

    if-nez v9, :cond_b

    move-object v1, v8

    .line 736
    :cond_a
    :goto_a
    return-object v1

    .line 701
    :cond_b
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "/data/system/enterprise/temp/"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    new-instance v10, Ljava/io/File;

    invoke-direct {v10, p2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v10}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 704
    .local v1, "candidatePath":Ljava/lang/String;
    const/16 v9, 0x400

    new-array v0, v9, [B

    .line 707
    .local v0, "buffer":[B
    const/4 v3, 0x0

    .line 708
    .local v3, "fileInputStream":Ljava/io/FileInputStream;
    const/4 v5, 0x0

    .line 710
    .local v5, "fileOutputStream":Ljava/io/FileOutputStream;
    :try_start_2d
    new-instance v4, Ljava/io/FileInputStream;

    invoke-virtual {p1}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v9

    invoke-direct {v4, v9}, Ljava/io/FileInputStream;-><init>(Ljava/io/FileDescriptor;)V
    :try_end_36
    .catch Ljava/lang/Exception; {:try_start_2d .. :try_end_36} :catch_cf
    .catchall {:try_start_2d .. :try_end_36} :catchall_a8

    .line 711
    .end local v3    # "fileInputStream":Ljava/io/FileInputStream;
    .local v4, "fileInputStream":Ljava/io/FileInputStream;
    :try_start_36
    new-instance v6, Ljava/io/FileOutputStream;

    invoke-direct {v6, v1}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V
    :try_end_3b
    .catch Ljava/lang/Exception; {:try_start_36 .. :try_end_3b} :catch_d2
    .catchall {:try_start_36 .. :try_end_3b} :catchall_c8

    .line 712
    .end local v5    # "fileOutputStream":Ljava/io/FileOutputStream;
    .local v6, "fileOutputStream":Ljava/io/FileOutputStream;
    :goto_3b
    :try_start_3b
    invoke-virtual {v4, v0}, Ljava/io/FileInputStream;->read([B)I

    move-result v7

    .local v7, "length":I
    if-lez v7, :cond_72

    .line 713
    const/4 v9, 0x0

    invoke-virtual {v6, v0, v9, v7}, Ljava/io/FileOutputStream;->write([BII)V
    :try_end_45
    .catch Ljava/lang/Exception; {:try_start_3b .. :try_end_45} :catch_46
    .catchall {:try_start_3b .. :try_end_45} :catchall_cb

    goto :goto_3b

    .line 717
    .end local v7    # "length":I
    :catch_46
    move-exception v2

    move-object v5, v6

    .end local v6    # "fileOutputStream":Ljava/io/FileOutputStream;
    .restart local v5    # "fileOutputStream":Ljava/io/FileOutputStream;
    move-object v3, v4

    .line 718
    .end local v4    # "fileInputStream":Ljava/io/FileInputStream;
    .local v2, "ex":Ljava/lang/Exception;
    .restart local v3    # "fileInputStream":Ljava/io/FileInputStream;
    :goto_49
    :try_start_49
    const-string v9, "LSO"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "failed to copy image from parcel "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v2}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Lcom/android/server/enterprise/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_66
    .catchall {:try_start_49 .. :try_end_66} :catchall_a8

    .line 721
    if-eqz v3, :cond_6b

    .line 723
    :try_start_68
    invoke-virtual {v3}, Ljava/io/FileInputStream;->close()V
    :try_end_6b
    .catch Ljava/io/IOException; {:try_start_68 .. :try_end_6b} :catch_94

    .line 728
    .end local v2    # "ex":Ljava/lang/Exception;
    :cond_6b
    :goto_6b
    if-eqz v5, :cond_70

    .line 730
    :try_start_6d
    invoke-virtual {v5}, Ljava/io/FileOutputStream;->close()V
    :try_end_70
    .catch Ljava/io/IOException; {:try_start_6d .. :try_end_70} :catch_9e

    :cond_70
    :goto_70
    move-object v1, v8

    .line 733
    goto :goto_a

    .line 716
    .end local v3    # "fileInputStream":Ljava/io/FileInputStream;
    .end local v5    # "fileOutputStream":Ljava/io/FileOutputStream;
    .restart local v4    # "fileInputStream":Ljava/io/FileInputStream;
    .restart local v6    # "fileOutputStream":Ljava/io/FileOutputStream;
    .restart local v7    # "length":I
    :cond_72
    :try_start_72
    invoke-virtual {v6}, Ljava/io/FileOutputStream;->flush()V
    :try_end_75
    .catch Ljava/lang/Exception; {:try_start_72 .. :try_end_75} :catch_46
    .catchall {:try_start_72 .. :try_end_75} :catchall_cb

    .line 721
    if-eqz v4, :cond_7a

    .line 723
    :try_start_77
    invoke-virtual {v4}, Ljava/io/FileInputStream;->close()V
    :try_end_7a
    .catch Ljava/io/IOException; {:try_start_77 .. :try_end_7a} :catch_8a

    .line 728
    :cond_7a
    :goto_7a
    if-eqz v6, :cond_a

    .line 730
    :try_start_7c
    invoke-virtual {v6}, Ljava/io/FileOutputStream;->close()V
    :try_end_7f
    .catch Ljava/io/IOException; {:try_start_7c .. :try_end_7f} :catch_80

    goto :goto_a

    .line 731
    :catch_80
    move-exception v2

    .line 732
    .local v2, "ex":Ljava/io/IOException;
    const-string v8, "LSO"

    const-string/jumbo v9, "failed to close outputstream"

    invoke-static {v8, v9}, Lcom/android/server/enterprise/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_a

    .line 724
    .end local v2    # "ex":Ljava/io/IOException;
    :catch_8a
    move-exception v2

    .line 725
    .restart local v2    # "ex":Ljava/io/IOException;
    const-string v8, "LSO"

    const-string/jumbo v9, "failed to close inputstream"

    invoke-static {v8, v9}, Lcom/android/server/enterprise/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_7a

    .line 724
    .end local v4    # "fileInputStream":Ljava/io/FileInputStream;
    .end local v6    # "fileOutputStream":Ljava/io/FileOutputStream;
    .end local v7    # "length":I
    .local v2, "ex":Ljava/lang/Exception;
    .restart local v3    # "fileInputStream":Ljava/io/FileInputStream;
    .restart local v5    # "fileOutputStream":Ljava/io/FileOutputStream;
    :catch_94
    move-exception v2

    .line 725
    .local v2, "ex":Ljava/io/IOException;
    const-string v9, "LSO"

    const-string/jumbo v10, "failed to close inputstream"

    invoke-static {v9, v10}, Lcom/android/server/enterprise/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_6b

    .line 731
    .end local v2    # "ex":Ljava/io/IOException;
    :catch_9e
    move-exception v2

    .line 732
    .restart local v2    # "ex":Ljava/io/IOException;
    const-string v9, "LSO"

    const-string/jumbo v10, "failed to close outputstream"

    invoke-static {v9, v10}, Lcom/android/server/enterprise/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_70

    .line 721
    .end local v2    # "ex":Ljava/io/IOException;
    :catchall_a8
    move-exception v8

    :goto_a9
    if-eqz v3, :cond_ae

    .line 723
    :try_start_ab
    invoke-virtual {v3}, Ljava/io/FileInputStream;->close()V
    :try_end_ae
    .catch Ljava/io/IOException; {:try_start_ab .. :try_end_ae} :catch_b4

    .line 728
    :cond_ae
    :goto_ae
    if-eqz v5, :cond_b3

    .line 730
    :try_start_b0
    invoke-virtual {v5}, Ljava/io/FileOutputStream;->close()V
    :try_end_b3
    .catch Ljava/io/IOException; {:try_start_b0 .. :try_end_b3} :catch_be

    .line 733
    :cond_b3
    :goto_b3
    throw v8

    .line 724
    :catch_b4
    move-exception v2

    .line 725
    .restart local v2    # "ex":Ljava/io/IOException;
    const-string v9, "LSO"

    const-string/jumbo v10, "failed to close inputstream"

    invoke-static {v9, v10}, Lcom/android/server/enterprise/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_ae

    .line 731
    .end local v2    # "ex":Ljava/io/IOException;
    :catch_be
    move-exception v2

    .line 732
    .restart local v2    # "ex":Ljava/io/IOException;
    const-string v9, "LSO"

    const-string/jumbo v10, "failed to close outputstream"

    invoke-static {v9, v10}, Lcom/android/server/enterprise/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_b3

    .line 721
    .end local v2    # "ex":Ljava/io/IOException;
    .end local v3    # "fileInputStream":Ljava/io/FileInputStream;
    .restart local v4    # "fileInputStream":Ljava/io/FileInputStream;
    :catchall_c8
    move-exception v8

    move-object v3, v4

    .end local v4    # "fileInputStream":Ljava/io/FileInputStream;
    .restart local v3    # "fileInputStream":Ljava/io/FileInputStream;
    goto :goto_a9

    .end local v3    # "fileInputStream":Ljava/io/FileInputStream;
    .end local v5    # "fileOutputStream":Ljava/io/FileOutputStream;
    .restart local v4    # "fileInputStream":Ljava/io/FileInputStream;
    .restart local v6    # "fileOutputStream":Ljava/io/FileOutputStream;
    :catchall_cb
    move-exception v8

    move-object v5, v6

    .end local v6    # "fileOutputStream":Ljava/io/FileOutputStream;
    .restart local v5    # "fileOutputStream":Ljava/io/FileOutputStream;
    move-object v3, v4

    .end local v4    # "fileInputStream":Ljava/io/FileInputStream;
    .restart local v3    # "fileInputStream":Ljava/io/FileInputStream;
    goto :goto_a9

    .line 717
    :catch_cf
    move-exception v2

    goto/16 :goto_49

    .end local v3    # "fileInputStream":Ljava/io/FileInputStream;
    .restart local v4    # "fileInputStream":Ljava/io/FileInputStream;
    :catch_d2
    move-exception v2

    move-object v3, v4

    .end local v4    # "fileInputStream":Ljava/io/FileInputStream;
    .restart local v3    # "fileInputStream":Ljava/io/FileInputStream;
    goto/16 :goto_49
.end method

.method private declared-synchronized deleteFiles(I)V
    .registers 8
    .param p1, "layer"    # I

    .prologue
    .line 551
    monitor-enter p0

    :try_start_1
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J
    :try_end_4
    .catchall {:try_start_1 .. :try_end_4} :catchall_4e

    move-result-wide v2

    .line 553
    .local v2, "token":J
    if-eqz p1, :cond_27

    .line 554
    :try_start_7
    new-instance v1, Ljava/io/File;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "/data/system/enterprise/lso/"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v1, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v1}, Landroid/app/enterprise/lso/LSOUtils;->deleteRecursive(Ljava/io/File;)V
    :try_end_22
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_22} :catch_49
    .catchall {:try_start_7 .. :try_end_22} :catchall_51

    .line 562
    :cond_22
    :try_start_22
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V
    :try_end_25
    .catchall {:try_start_22 .. :try_end_25} :catchall_4e

    .line 564
    :goto_25
    monitor-exit p0

    return-void

    .line 556
    :cond_27
    const/4 v0, 0x1

    .local v0, "i":I
    :goto_28
    const/4 v1, 0x3

    if-gt v0, v1, :cond_22

    .line 557
    :try_start_2b
    new-instance v1, Ljava/io/File;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "/data/system/enterprise/lso/"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v1, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v1}, Landroid/app/enterprise/lso/LSOUtils;->deleteRecursive(Ljava/io/File;)V
    :try_end_46
    .catch Ljava/lang/Exception; {:try_start_2b .. :try_end_46} :catch_49
    .catchall {:try_start_2b .. :try_end_46} :catchall_51

    .line 556
    add-int/lit8 v0, v0, 0x1

    goto :goto_28

    .line 560
    .end local v0    # "i":I
    :catch_49
    move-exception v1

    .line 562
    :try_start_4a
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V
    :try_end_4d
    .catchall {:try_start_4a .. :try_end_4d} :catchall_4e

    goto :goto_25

    .line 551
    .end local v2    # "token":J
    :catchall_4e
    move-exception v1

    monitor-exit p0

    throw v1

    .line 562
    .restart local v2    # "token":J
    :catchall_51
    move-exception v1

    :try_start_52
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v1
    :try_end_56
    .catchall {:try_start_52 .. :try_end_56} :catchall_4e
.end method

.method private deleteWallpaperFiles()V
    .registers 4

    .prologue
    .line 542
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 544
    .local v0, "token":J
    const-string v2, "/data/system/enterprise/lso/lockscreen_wallpaper.jpg"

    invoke-static {v2}, Landroid/app/enterprise/lso/LSOUtils;->deleteFile(Ljava/lang/String;)V

    .line 545
    const-string v2, "/data/system/enterprise/lso/lockscreen_wallpaper_ripple.jpg"

    invoke-static {v2}, Landroid/app/enterprise/lso/LSOUtils;->deleteFile(Ljava/lang/String;)V

    .line 547
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 548
    return-void
.end method

.method private enforceOwnerOnlyPermission(Landroid/app/enterprise/ContextInfo;)Landroid/app/enterprise/ContextInfo;
    .registers 4
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;

    .prologue
    .line 489
    invoke-direct {p0}, getEDM()Landroid/app/enterprise/EnterpriseDeviceManager;

    move-result-object v0

    const-string v1, "android.permission.sec.MDM_LOCKSCREEN"

    invoke-virtual {v0, p1, v1}, Landroid/app/enterprise/EnterpriseDeviceManager;->enforceOwnerOnlyAndActiveAdminPermission(Landroid/app/enterprise/ContextInfo;Ljava/lang/String;)Landroid/app/enterprise/ContextInfo;

    move-result-object v0

    return-object v0
.end method

.method private enforcePermission(Landroid/app/enterprise/ContextInfo;)Landroid/app/enterprise/ContextInfo;
    .registers 4
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;

    .prologue
    .line 480
    invoke-direct {p0}, getEDM()Landroid/app/enterprise/EnterpriseDeviceManager;

    move-result-object v0

    const-string v1, "android.permission.sec.MDM_LOCKSCREEN"

    invoke-virtual {v0, p1, v1}, Landroid/app/enterprise/EnterpriseDeviceManager;->enforceActiveAdminPermissionByContext(Landroid/app/enterprise/ContextInfo;Ljava/lang/String;)Landroid/app/enterprise/ContextInfo;

    move-result-object v0

    return-object v0
.end method

.method private getEDM()Landroid/app/enterprise/EnterpriseDeviceManager;
    .registers 3

    .prologue
    .line 467
    iget-object v0, p0, mEDM:Landroid/app/enterprise/EnterpriseDeviceManager;

    if-nez v0, :cond_11

    .line 468
    iget-object v0, p0, mContext:Landroid/content/Context;

    const-string/jumbo v1, "enterprise_policy"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/enterprise/EnterpriseDeviceManager;

    iput-object v0, p0, mEDM:Landroid/app/enterprise/EnterpriseDeviceManager;

    .line 472
    :cond_11
    iget-object v0, p0, mEDM:Landroid/app/enterprise/EnterpriseDeviceManager;

    return-object v0
.end method

.method public static getServiceName()Ljava/lang/String;
    .registers 1

    .prologue
    .line 85
    const-string/jumbo v0, "lockscreen_overlay"

    return-object v0
.end method

.method private sendConfigChangeNotfication(I)V
    .registers 9
    .param p1, "enable"    # I

    .prologue
    .line 526
    const-string v4, "LSO"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "sendConfigChangeNotfication: enabled = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 527
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    .line 529
    .local v2, "token":J
    :try_start_1d
    iget-object v4, p0, mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string/jumbo v5, "mdm_wallpaper_enabled"

    const/4 v6, 0x0

    invoke-static {v4, v5, p1, v6}, Landroid/provider/Settings$System;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    .line 531
    new-instance v1, Landroid/content/Intent;

    const-string/jumbo v4, "edm.intent.action.internal.sec.LSO_CONFIG_CHANGED"

    invoke-direct {v1, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 532
    .local v1, "intent":Landroid/content/Intent;
    const-string/jumbo v4, "mdm_wallpaper_enabled"

    invoke-virtual {v1, v4, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 533
    iget-object v4, p0, mContext:Landroid/content/Context;

    invoke-virtual {v4, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V
    :try_end_3d
    .catch Ljava/lang/Exception; {:try_start_1d .. :try_end_3d} :catch_41
    .catchall {:try_start_1d .. :try_end_3d} :catchall_62

    .line 537
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 539
    .end local v1    # "intent":Landroid/content/Intent;
    :goto_40
    return-void

    .line 534
    :catch_41
    move-exception v0

    .line 535
    .local v0, "ex":Ljava/lang/Exception;
    :try_start_42
    const-string v4, "LSO"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Exception while updating setting or sending intent"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/android/server/enterprise/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_5e
    .catchall {:try_start_42 .. :try_end_5e} :catchall_62

    .line 537
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto :goto_40

    .end local v0    # "ex":Ljava/lang/Exception;
    :catchall_62
    move-exception v4

    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v4
.end method


# virtual methods
.method public canConfigure(Landroid/app/enterprise/ContextInfo;I)Z
    .registers 12
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;
    .param p2, "feature"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v8, -0x1

    .line 302
    const-string v5, "LSO"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "canConfigure("

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ")"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 303
    const/4 v0, 0x0

    .line 304
    .local v0, "allowedCnt":I
    const/4 v2, 0x0

    .line 307
    .local v2, "featureCnt":I
    :try_start_21
    invoke-direct {p0, p1}, enforceOwnerOnlyPermission(Landroid/app/enterprise/ContextInfo;)Landroid/app/enterprise/ContextInfo;

    move-result-object p1

    .line 308
    iget v4, p1, Landroid/app/enterprise/ContextInfo;->mCallerUid:I

    .line 311
    .local v4, "uid":I
    const/4 p2, -0x1

    .line 315
    add-int/lit8 v2, v2, 0x1

    .line 316
    iget v5, p0, mOverlayAdminUid:I

    if-eq v5, v8, :cond_32

    iget v5, p0, mOverlayAdminUid:I

    if-ne v5, v4, :cond_34

    .line 317
    :cond_32
    add-int/lit8 v0, v0, 0x1

    .line 321
    :cond_34
    add-int/lit8 v2, v2, 0x1

    .line 322
    iget v5, p0, mWallpaperAdminUid:I

    if-eq v5, v8, :cond_3e

    iget v5, p0, mWallpaperAdminUid:I
    :try_end_3c
    .catch Ljava/lang/Exception; {:try_start_21 .. :try_end_3c} :catch_68

    if-ne v5, v4, :cond_40

    .line 323
    :cond_3e
    add-int/lit8 v0, v0, 0x1

    .line 329
    .end local v4    # "uid":I
    :cond_40
    :goto_40
    if-lez v2, :cond_82

    if-ne v2, v0, :cond_82

    const/4 v3, 0x1

    .line 330
    .local v3, "result":Z
    :goto_45
    const-string v5, "LSO"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "canConfigure("

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ") - "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 331
    return v3

    .line 325
    .end local v3    # "result":Z
    :catch_68
    move-exception v1

    .line 326
    .local v1, "e":Ljava/lang/Exception;
    const-string v5, "LSO"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Unhandled exception in canConfigure: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/android/server/enterprise/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_40

    .line 329
    .end local v1    # "e":Ljava/lang/Exception;
    :cond_82
    const/4 v3, 0x0

    goto :goto_45
.end method

.method public declared-synchronized copyFile(Ljava/lang/String;Ljava/lang/String;II)Ljava/lang/String;
    .registers 10
    .param p1, "source"    # Ljava/lang/String;
    .param p2, "prefix"    # Ljava/lang/String;
    .param p3, "depth"    # I
    .param p4, "breadth"    # I

    .prologue
    .line 691
    monitor-enter p0

    :try_start_1
    const-string v1, "%s_%s%s_%s"

    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p2, v2, v3

    const/4 v3, 0x1

    invoke-static {p3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x2

    invoke-static {p4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x3

    new-instance v4, Ljava/io/File;

    invoke-direct {v4, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 693
    .local v0, "destFile":Ljava/lang/String;
    invoke-static {p1, v0}, Landroid/app/enterprise/lso/LSOUtils;->copyFile(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_2a
    .catchall {:try_start_1 .. :try_end_2a} :catchall_2d

    move-result-object v1

    monitor-exit p0

    return-object v1

    .line 691
    .end local v0    # "destFile":Ljava/lang/String;
    :catchall_2d
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public declared-synchronized copyFiles(ILandroid/app/enterprise/lso/LSOItemData;I)Z
    .registers 11
    .param p1, "adminUid"    # I
    .param p2, "lsoData"    # Landroid/app/enterprise/lso/LSOItemData;
    .param p3, "layer"    # I

    .prologue
    const/4 v4, 0x0

    .line 567
    monitor-enter p0

    :try_start_2
    const-string v5, "LSO"

    const-string v6, "copyFiles()"

    invoke-static {v5, v6}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 568
    const/4 v1, 0x0

    .line 569
    .local v1, "retVal":Z
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "/data/system/enterprise/lso/"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 570
    .local v0, "layerDir":Ljava/lang/String;
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J
    :try_end_20
    .catchall {:try_start_2 .. :try_end_20} :catchall_3d

    move-result-wide v2

    .line 573
    .local v2, "token":J
    :try_start_21
    invoke-direct {p0, p3}, deleteFiles(I)V

    .line 575
    const-string v5, "/data/system/enterprise"

    invoke-static {v5}, Landroid/app/enterprise/lso/LSOUtils;->mkDir(Ljava/lang/String;)Z
    :try_end_29
    .catch Ljava/lang/Exception; {:try_start_21 .. :try_end_29} :catch_71
    .catchall {:try_start_21 .. :try_end_29} :catchall_76

    move-result v5

    if-nez v5, :cond_31

    .line 592
    :try_start_2c
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V
    :try_end_2f
    .catchall {:try_start_2c .. :try_end_2f} :catchall_3d

    .line 600
    :goto_2f
    monitor-exit p0

    return v4

    .line 579
    :cond_31
    :try_start_31
    const-string v5, "/data/system/enterprise/lso"

    invoke-static {v5}, Landroid/app/enterprise/lso/LSOUtils;->mkDir(Ljava/lang/String;)Z
    :try_end_36
    .catch Ljava/lang/Exception; {:try_start_31 .. :try_end_36} :catch_71
    .catchall {:try_start_31 .. :try_end_36} :catchall_76

    move-result v5

    if-nez v5, :cond_40

    .line 592
    :try_start_39
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V
    :try_end_3c
    .catchall {:try_start_39 .. :try_end_3c} :catchall_3d

    goto :goto_2f

    .line 567
    .end local v0    # "layerDir":Ljava/lang/String;
    .end local v1    # "retVal":Z
    .end local v2    # "token":J
    :catchall_3d
    move-exception v4

    monitor-exit p0

    throw v4

    .line 583
    .restart local v0    # "layerDir":Ljava/lang/String;
    .restart local v1    # "retVal":Z
    .restart local v2    # "token":J
    :cond_40
    :try_start_40
    invoke-static {v0}, Landroid/app/enterprise/lso/LSOUtils;->mkDir(Ljava/lang/String;)Z
    :try_end_43
    .catch Ljava/lang/Exception; {:try_start_40 .. :try_end_43} :catch_71
    .catchall {:try_start_40 .. :try_end_43} :catchall_76

    move-result v5

    if-nez v5, :cond_4a

    .line 592
    :try_start_46
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V
    :try_end_49
    .catchall {:try_start_46 .. :try_end_49} :catchall_3d

    goto :goto_2f

    .line 587
    :cond_4a
    :try_start_4a
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "/"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {p0, p2, v4, v5}, copyFiles(Landroid/app/enterprise/lso/LSOItemData;Ljava/lang/String;I)Z
    :try_end_65
    .catch Ljava/lang/Exception; {:try_start_4a .. :try_end_65} :catch_71
    .catchall {:try_start_4a .. :try_end_65} :catchall_76

    move-result v1

    .line 588
    const/4 v1, 0x1

    .line 592
    :try_start_67
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 595
    :goto_6a
    if-nez v1, :cond_6f

    .line 597
    invoke-direct {p0, p3}, deleteFiles(I)V

    :cond_6f
    move v4, v1

    .line 600
    goto :goto_2f

    .line 589
    :catch_71
    move-exception v4

    .line 592
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto :goto_6a

    :catchall_76
    move-exception v4

    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v4
    :try_end_7b
    .catchall {:try_start_67 .. :try_end_7b} :catchall_3d
.end method

.method public declared-synchronized copyFiles(Landroid/app/enterprise/lso/LSOItemData;Ljava/lang/String;I)Z
    .registers 19
    .param p1, "lsoData"    # Landroid/app/enterprise/lso/LSOItemData;
    .param p2, "filePrefix"    # Ljava/lang/String;
    .param p3, "depth"    # I

    .prologue
    .line 605
    monitor-enter p0

    if-nez p1, :cond_6

    .line 606
    const/4 v9, 0x1

    .line 687
    :cond_4
    :goto_4
    monitor-exit p0

    return v9

    .line 609
    :cond_6
    :try_start_6
    const-string v12, "LSO"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "copyFiles() - "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    move-object/from16 v0, p2

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 610
    const/4 v12, 0x0

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
    :try_end_24
    .catchall {:try_start_6 .. :try_end_24} :catchall_103

    move-result-object v3

    .line 612
    .local v3, "breadth":Ljava/lang/Integer;
    const/4 v9, 0x1

    .line 614
    .local v9, "retVal":Z
    :try_start_26
    invoke-virtual/range {p1 .. p1}, Landroid/app/enterprise/lso/LSOItemData;->getType()B

    move-result v11

    .line 615
    .local v11, "type":I
    packed-switch v11, :pswitch_data_106

    .line 664
    :cond_2d
    :goto_2d
    if-eqz v9, :cond_4

    .line 665
    invoke-virtual/range {p1 .. p1}, Landroid/app/enterprise/lso/LSOItemData;->getAttrs()Landroid/app/enterprise/lso/LSOAttributeSet;

    move-result-object v2

    .line 666
    .local v2, "attrSet":Landroid/app/enterprise/lso/LSOAttributeSet;
    if-eqz v2, :cond_4

    const-string v12, "android:src"

    invoke-virtual {v2, v12}, Landroid/app/enterprise/lso/LSOAttributeSet;->containsKey(Ljava/lang/String;)Z

    move-result v12

    if-eqz v12, :cond_4

    .line 667
    invoke-virtual/range {p1 .. p1}, Landroid/app/enterprise/lso/LSOItemData;->getFileDescriptor()Landroid/os/ParcelFileDescriptor;

    move-result-object v12

    const-string v13, "android:src"

    invoke-virtual {v2, v13}, Landroid/app/enterprise/lso/LSOAttributeSet;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    invoke-direct {p0, v12, v13}, copyFileFromParcel(Landroid/os/ParcelFileDescriptor;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 669
    .local v10, "tempFilePath":Ljava/lang/String;
    if-nez v10, :cond_e6

    .line 670
    const-string v12, "LSO"

    const-string v13, "copyFiles - attrSet ATTR_IMAGE_SRC : file no created"

    invoke-static {v12, v13}, Lcom/android/server/enterprise/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 671
    const/4 v9, 0x0

    goto :goto_4

    .line 617
    .end local v2    # "attrSet":Landroid/app/enterprise/lso/LSOAttributeSet;
    .end local v10    # "tempFilePath":Ljava/lang/String;
    :pswitch_56
    move-object/from16 v0, p1

    check-cast v0, Landroid/app/enterprise/lso/LSOItemContainer;

    move-object v7, v0

    .line 618
    .local v7, "itemContainer":Landroid/app/enterprise/lso/LSOItemContainer;
    invoke-virtual {v7}, Landroid/app/enterprise/lso/LSOItemContainer;->getBGImagePath()Ljava/lang/String;

    move-result-object v12

    if-eqz v12, :cond_8e

    .line 619
    invoke-virtual {v7}, Landroid/app/enterprise/lso/LSOItemContainer;->getFileDescriptor()Landroid/os/ParcelFileDescriptor;

    move-result-object v12

    invoke-virtual {v7}, Landroid/app/enterprise/lso/LSOItemContainer;->getBGImagePath()Ljava/lang/String;

    move-result-object v13

    invoke-direct {p0, v12, v13}, copyFileFromParcel(Landroid/os/ParcelFileDescriptor;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 621
    .restart local v10    # "tempFilePath":Ljava/lang/String;
    if-nez v10, :cond_78

    .line 622
    const-string v12, "LSO"

    const-string v13, "copyFiles - LSO_ITEM_TYPE_CONTAINER : file no created"

    invoke-static {v12, v13}, Lcom/android/server/enterprise/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 623
    const/4 v9, 0x0

    goto :goto_4

    .line 626
    :cond_78
    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v12

    move-object/from16 v0, p2

    move/from16 v1, p3

    invoke-virtual {p0, v10, v0, v1, v12}, copyFile(Ljava/lang/String;Ljava/lang/String;II)Ljava/lang/String;

    move-result-object v6

    .line 628
    .local v6, "imagePath":Ljava/lang/String;
    invoke-static {v10}, Landroid/app/enterprise/lso/LSOUtils;->deleteFile(Ljava/lang/String;)V

    .line 629
    if-nez v6, :cond_8b

    .line 630
    const/4 v9, 0x0

    .line 631
    goto :goto_2d

    .line 633
    :cond_8b
    invoke-virtual {v7, v6}, Landroid/app/enterprise/lso/LSOItemContainer;->setBGImage(Ljava/lang/String;)V

    .line 636
    .end local v6    # "imagePath":Ljava/lang/String;
    .end local v10    # "tempFilePath":Ljava/lang/String;
    :cond_8e
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_8f
    invoke-virtual {v7}, Landroid/app/enterprise/lso/LSOItemContainer;->getNumItems()I

    move-result v12

    if-ge v5, v12, :cond_2d

    if-eqz v9, :cond_2d

    .line 637
    invoke-virtual {v7, v5}, Landroid/app/enterprise/lso/LSOItemContainer;->getItem(I)Landroid/app/enterprise/lso/LSOItemData;

    move-result-object v12

    add-int/lit8 v13, p3, 0x1

    move-object/from16 v0, p2

    invoke-virtual {p0, v12, v0, v13}, copyFiles(Landroid/app/enterprise/lso/LSOItemData;Ljava/lang/String;I)Z

    move-result v9

    .line 636
    add-int/lit8 v5, v5, 0x1

    goto :goto_8f

    .line 643
    .end local v5    # "i":I
    .end local v7    # "itemContainer":Landroid/app/enterprise/lso/LSOItemContainer;
    :pswitch_a6
    move-object/from16 v0, p1

    check-cast v0, Landroid/app/enterprise/lso/LSOItemImage;

    move-object v8, v0

    .line 644
    .local v8, "itemImage":Landroid/app/enterprise/lso/LSOItemImage;
    invoke-virtual {v8}, Landroid/app/enterprise/lso/LSOItemImage;->getImagePath()Ljava/lang/String;

    move-result-object v12

    if-eqz v12, :cond_2d

    .line 645
    invoke-virtual {v8}, Landroid/app/enterprise/lso/LSOItemImage;->getFileDescriptor()Landroid/os/ParcelFileDescriptor;

    move-result-object v12

    invoke-virtual {v8}, Landroid/app/enterprise/lso/LSOItemImage;->getImagePath()Ljava/lang/String;

    move-result-object v13

    invoke-direct {p0, v12, v13}, copyFileFromParcel(Landroid/os/ParcelFileDescriptor;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 647
    .restart local v10    # "tempFilePath":Ljava/lang/String;
    if-nez v10, :cond_c9

    .line 648
    const-string v12, "LSO"

    const-string v13, "copyFiles - LSO_ITEM_TYPE_IMAGE : file no created"

    invoke-static {v12, v13}, Lcom/android/server/enterprise/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 649
    const/4 v9, 0x0

    goto/16 :goto_4

    .line 652
    :cond_c9
    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v12

    move-object/from16 v0, p2

    move/from16 v1, p3

    invoke-virtual {p0, v10, v0, v1, v12}, copyFile(Ljava/lang/String;Ljava/lang/String;II)Ljava/lang/String;

    move-result-object v6

    .line 654
    .restart local v6    # "imagePath":Ljava/lang/String;
    invoke-static {v10}, Landroid/app/enterprise/lso/LSOUtils;->deleteFile(Ljava/lang/String;)V

    .line 655
    if-nez v6, :cond_dd

    .line 656
    const/4 v9, 0x0

    .line 657
    goto/16 :goto_2d

    .line 659
    :cond_dd
    invoke-virtual {v8, v6}, Landroid/app/enterprise/lso/LSOItemImage;->setImagePath(Ljava/lang/String;)V

    goto/16 :goto_2d

    .line 684
    .end local v6    # "imagePath":Ljava/lang/String;
    .end local v8    # "itemImage":Landroid/app/enterprise/lso/LSOItemImage;
    .end local v10    # "tempFilePath":Ljava/lang/String;
    .end local v11    # "type":I
    :catch_e2
    move-exception v4

    .line 685
    .local v4, "e":Ljava/lang/Exception;
    const/4 v9, 0x0

    goto/16 :goto_4

    .line 674
    .end local v4    # "e":Ljava/lang/Exception;
    .restart local v2    # "attrSet":Landroid/app/enterprise/lso/LSOAttributeSet;
    .restart local v10    # "tempFilePath":Ljava/lang/String;
    .restart local v11    # "type":I
    :cond_e6
    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v12

    move-object/from16 v0, p2

    move/from16 v1, p3

    invoke-virtual {p0, v10, v0, v1, v12}, copyFile(Ljava/lang/String;Ljava/lang/String;II)Ljava/lang/String;

    move-result-object v6

    .line 676
    .restart local v6    # "imagePath":Ljava/lang/String;
    invoke-static {v10}, Landroid/app/enterprise/lso/LSOUtils;->deleteFile(Ljava/lang/String;)V

    .line 677
    if-nez v6, :cond_fa

    .line 678
    const/4 v9, 0x0

    goto/16 :goto_4

    .line 680
    :cond_fa
    const-string v12, "android:src"

    move-object/from16 v0, p1

    invoke-virtual {v0, v12, v6}, Landroid/app/enterprise/lso/LSOItemData;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_101
    .catch Ljava/lang/Exception; {:try_start_26 .. :try_end_101} :catch_e2
    .catchall {:try_start_26 .. :try_end_101} :catchall_103

    goto/16 :goto_4

    .line 605
    .end local v2    # "attrSet":Landroid/app/enterprise/lso/LSOAttributeSet;
    .end local v3    # "breadth":Ljava/lang/Integer;
    .end local v6    # "imagePath":Ljava/lang/String;
    .end local v9    # "retVal":Z
    .end local v10    # "tempFilePath":Ljava/lang/String;
    .end local v11    # "type":I
    :catchall_103
    move-exception v12

    monitor-exit p0

    throw v12

    .line 615
    :pswitch_data_106
    .packed-switch 0x3
        :pswitch_a6
        :pswitch_56
    .end packed-switch
.end method

.method public getData(Landroid/app/enterprise/ContextInfo;I)Landroid/app/enterprise/lso/LSOItemData;
    .registers 5
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;
    .param p2, "layer"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 177
    const-string v0, "LSO"

    const-string/jumbo v1, "getData()"

    invoke-static {v0, v1}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 178
    const/4 v0, 0x1

    if-lt p2, v0, :cond_e

    const/4 v0, 0x3

    if-le p2, v0, :cond_16

    .line 179
    :cond_e
    new-instance v0, Ljava/security/InvalidParameterException;

    const-string v1, "Invalid layer. Layer must be 1...3"

    invoke-direct {v0, v1}, Ljava/security/InvalidParameterException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 183
    :cond_16
    iget-object v0, p0, mItemData:[Landroid/app/enterprise/lso/LSOItemData;

    aget-object v0, v0, p2

    return-object v0
.end method

.method public getPreferences(Landroid/app/enterprise/ContextInfo;)Landroid/app/enterprise/lso/LSOAttributeSet;
    .registers 3
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;

    .prologue
    .line 462
    iget-object v0, p0, lsoPref:Landroid/app/enterprise/lso/LSOAttributeSet;

    return-object v0
.end method

.method public isConfigured(Landroid/app/enterprise/ContextInfo;I)Z
    .registers 11
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;
    .param p2, "feature"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v1, 0x1

    const/4 v3, 0x0

    const/4 v7, -0x1

    .line 269
    const-string v4, "LSO"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "isConfigured("

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ")"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 272
    const/4 p2, 0x0

    .line 275
    const/4 v0, 0x0

    .line 276
    .local v0, "featureCnt":I
    const/4 v2, 0x0

    .line 277
    .local v2, "resultCnt":I
    if-eqz p2, :cond_2e

    .line 284
    :cond_27
    :goto_27
    if-eqz p2, :cond_37

    .line 292
    :cond_29
    :goto_29
    if-nez p2, :cond_42

    .line 293
    if-lez v2, :cond_40

    .line 298
    .local v1, "result":Z
    :goto_2d
    return v1

    .line 279
    .end local v1    # "result":Z
    :cond_2e
    add-int/lit8 v0, v0, 0x1

    .line 280
    iget v4, p0, mOverlayAdminUid:I

    if-eq v4, v7, :cond_27

    .line 281
    add-int/lit8 v2, v2, 0x1

    goto :goto_27

    .line 286
    :cond_37
    add-int/lit8 v0, v0, 0x1

    .line 287
    iget v4, p0, mWallpaperAdminUid:I

    if-eq v4, v7, :cond_29

    .line 288
    add-int/lit8 v2, v2, 0x1

    goto :goto_29

    :cond_40
    move v1, v3

    .line 293
    goto :goto_2d

    .line 295
    :cond_42
    if-lez v0, :cond_47

    if-ne v0, v2, :cond_47

    .restart local v1    # "result":Z
    :goto_46
    goto :goto_2d

    .end local v1    # "result":Z
    :cond_47
    move v1, v3

    goto :goto_46
.end method

.method public onAdminAdded(I)V
    .registers 2
    .param p1, "uid"    # I

    .prologue
    .line 499
    return-void
.end method

.method public onAdminRemoved(I)V
    .registers 2
    .param p1, "uid"    # I

    .prologue
    .line 523
    return-void
.end method

.method public onPreAdminRemoval(I)V
    .registers 7
    .param p1, "uid"    # I

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x0

    const/4 v2, -0x1

    .line 503
    iget v1, p0, mOverlayAdminUid:I

    if-ne p1, v1, :cond_1e

    .line 504
    invoke-direct {p0, v3}, deleteFiles(I)V

    .line 505
    iget-object v1, p0, storageProvider:Lcom/android/server/enterprise/lso/LSOStorageProvider;

    invoke-virtual {v1, v3}, Lcom/android/server/enterprise/lso/LSOStorageProvider;->resetOverlayData(I)V

    .line 506
    iput v2, p0, mOverlayAdminUid:I

    .line 507
    iput-object v4, p0, lsoPref:Landroid/app/enterprise/lso/LSOAttributeSet;

    .line 508
    const/4 v0, 0x1

    .local v0, "i":I
    :goto_14
    const/4 v1, 0x3

    if-gt v0, v1, :cond_1e

    .line 509
    iget-object v1, p0, mItemData:[Landroid/app/enterprise/lso/LSOItemData;

    aput-object v4, v1, v0

    .line 508
    add-int/lit8 v0, v0, 0x1

    goto :goto_14

    .line 513
    .end local v0    # "i":I
    :cond_1e
    iget v1, p0, mWallpaperAdminUid:I

    if-ne p1, v1, :cond_2c

    .line 514
    invoke-direct {p0}, deleteWallpaperFiles()V

    .line 515
    iget-object v1, p0, storageProvider:Lcom/android/server/enterprise/lso/LSOStorageProvider;

    invoke-virtual {v1}, Lcom/android/server/enterprise/lso/LSOStorageProvider;->resetWallpaperData()V

    .line 516
    iput v2, p0, mWallpaperAdminUid:I

    .line 519
    :cond_2c
    return-void
.end method

.method public resetData(Landroid/app/enterprise/ContextInfo;I)V
    .registers 14
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;
    .param p2, "layer"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v5, 0x3

    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 187
    const-string v0, "LSO"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "resetData("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 188
    const/4 v10, 0x0

    .line 189
    .local v10, "sendNotification":Z
    invoke-direct {p0, p1}, enforceOwnerOnlyPermission(Landroid/app/enterprise/ContextInfo;)Landroid/app/enterprise/ContextInfo;

    move-result-object p1

    .line 191
    if-ltz p2, :cond_2b

    if-le p2, v5, :cond_33

    .line 192
    :cond_2b
    new-instance v0, Ljava/security/InvalidParameterException;

    const-string v1, "Invalid layer. Layer must be 0...3"

    invoke-direct {v0, v1}, Ljava/security/InvalidParameterException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 196
    :cond_33
    invoke-virtual {p0, p1, v3}, canConfigure(Landroid/app/enterprise/ContextInfo;I)Z

    move-result v0

    if-nez v0, :cond_41

    .line 197
    const-string v0, "LSO"

    const-string v1, "Not allowed to reset Overlay"

    invoke-static {v0, v1}, Lcom/android/server/enterprise/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 233
    :cond_40
    :goto_40
    return-void

    .line 201
    :cond_41
    iget v0, p1, Landroid/app/enterprise/ContextInfo;->mCallerUid:I

    iget v1, p0, mOverlayAdminUid:I

    if-ne v0, v1, :cond_99

    .line 202
    invoke-direct {p0, p2}, deleteFiles(I)V

    .line 203
    iget-object v0, p0, storageProvider:Lcom/android/server/enterprise/lso/LSOStorageProvider;

    invoke-virtual {v0, p2}, Lcom/android/server/enterprise/lso/LSOStorageProvider;->resetOverlayData(I)V

    .line 204
    iget-object v0, p0, storageProvider:Lcom/android/server/enterprise/lso/LSOStorageProvider;

    invoke-virtual {v0}, Lcom/android/server/enterprise/lso/LSOStorageProvider;->getOverlayAdminUid()I

    move-result v0

    iput v0, p0, mOverlayAdminUid:I

    .line 206
    iget v0, p0, mOverlayAdminUid:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_5e

    .line 207
    iput-object v4, p0, lsoPref:Landroid/app/enterprise/lso/LSOAttributeSet;

    .line 210
    :cond_5e
    if-eqz p2, :cond_a0

    .line 211
    iget-object v0, p0, mItemData:[Landroid/app/enterprise/lso/LSOItemData;

    aput-object v4, v0, p2

    .line 218
    :cond_64
    const/4 v10, 0x1

    .line 220
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v8

    .line 222
    .local v8, "psToken":J
    const/4 v0, 0x5

    const/4 v1, 0x1

    const/4 v2, 0x1

    :try_start_6c
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v3

    const-string v4, "LSOService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Admin "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p1, Landroid/app/enterprise/ContextInfo;->mCallerUid:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " has reset banner settings."

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    iget v6, p1, Landroid/app/enterprise/ContextInfo;->mCallerUid:I

    invoke-static {v6}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v6

    invoke-static/range {v0 .. v6}, Landroid/sec/enterprise/auditlog/AuditLog;->logAsUser(IIZILjava/lang/String;Ljava/lang/String;I)V
    :try_end_96
    .catchall {:try_start_6c .. :try_end_96} :catchall_aa

    .line 226
    invoke-static {v8, v9}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 231
    .end local v8    # "psToken":J
    :cond_99
    if-eqz v10, :cond_40

    .line 232
    const/4 v0, 0x0

    invoke-direct {p0, v0}, sendConfigChangeNotfication(I)V

    goto :goto_40

    .line 213
    :cond_a0
    const/4 v7, 0x1

    .local v7, "i":I
    :goto_a1
    if-gt v7, v5, :cond_64

    .line 214
    iget-object v0, p0, mItemData:[Landroid/app/enterprise/lso/LSOItemData;

    aput-object v4, v0, v7

    .line 213
    add-int/lit8 v7, v7, 0x1

    goto :goto_a1

    .line 226
    .end local v7    # "i":I
    .restart local v8    # "psToken":J
    :catchall_aa
    move-exception v0

    invoke-static {v8, v9}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v0
.end method

.method public resetWallpaper(Landroid/app/enterprise/ContextInfo;)V
    .registers 13
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 236
    const-string v0, "LSO"

    const-string/jumbo v1, "resetWallpaper()"

    invoke-static {v0, v1}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 237
    const/4 v7, 0x0

    .line 238
    .local v7, "sendNotification":Z
    invoke-direct {p0, p1}, enforceOwnerOnlyPermission(Landroid/app/enterprise/ContextInfo;)Landroid/app/enterprise/ContextInfo;

    move-result-object p1

    .line 240
    const/4 v0, 0x2

    invoke-virtual {p0, p1, v0}, canConfigure(Landroid/app/enterprise/ContextInfo;I)Z

    move-result v0

    if-nez v0, :cond_1c

    .line 241
    const-string v0, "LSO"

    const-string v1, "Not allowed to reset Wallpaper"

    invoke-static {v0, v1}, Lcom/android/server/enterprise/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 266
    :cond_1b
    :goto_1b
    return-void

    .line 245
    :cond_1c
    iget v0, p1, Landroid/app/enterprise/ContextInfo;->mCallerUid:I

    iget v1, p0, mWallpaperAdminUid:I

    if-ne v0, v1, :cond_62

    .line 246
    iget-object v0, p0, storageProvider:Lcom/android/server/enterprise/lso/LSOStorageProvider;

    invoke-virtual {v0}, Lcom/android/server/enterprise/lso/LSOStorageProvider;->resetWallpaperData()V

    .line 247
    invoke-direct {p0}, deleteWallpaperFiles()V

    .line 248
    const/4 v0, -0x1

    iput v0, p0, mWallpaperAdminUid:I

    .line 249
    const/4 v7, 0x1

    .line 252
    iget v0, p1, Landroid/app/enterprise/ContextInfo;->mCallerUid:I

    invoke-static {v0}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v6

    .line 253
    .local v6, "userId":I
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v8

    .line 255
    .local v8, "token":J
    const/4 v0, 0x5

    const/4 v1, 0x1

    const/4 v2, 0x1

    :try_start_3b
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v3

    const-string v4, "LSOService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Admin "

    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v10, p1, Landroid/app/enterprise/ContextInfo;->mCallerUid:I

    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v10, " has reset banner wallpaper."

    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static/range {v0 .. v6}, Landroid/sec/enterprise/auditlog/AuditLog;->logAsUser(IIZILjava/lang/String;Ljava/lang/String;I)V
    :try_end_5f
    .catchall {:try_start_3b .. :try_end_5f} :catchall_69

    .line 259
    invoke-static {v8, v9}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 264
    .end local v6    # "userId":I
    .end local v8    # "token":J
    :cond_62
    if-eqz v7, :cond_1b

    .line 265
    const/4 v0, 0x0

    invoke-direct {p0, v0}, sendConfigChangeNotfication(I)V

    goto :goto_1b

    .line 259
    .restart local v6    # "userId":I
    .restart local v8    # "token":J
    :catchall_69
    move-exception v0

    invoke-static {v8, v9}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v0
.end method

.method public declared-synchronized setData(Landroid/app/enterprise/ContextInfo;Landroid/app/enterprise/lso/LSOItemData;I)I
    .registers 19
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;
    .param p2, "lsoData"    # Landroid/app/enterprise/lso/LSOItemData;
    .param p3, "layer"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 113
    monitor-enter p0

    :try_start_1
    const-string v2, "LSO"

    const-string/jumbo v3, "setData()"

    invoke-static {v2, v3}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 115
    invoke-direct/range {p0 .. p1}, enforceOwnerOnlyPermission(Landroid/app/enterprise/ContextInfo;)Landroid/app/enterprise/ContextInfo;

    move-result-object p1

    .line 116
    move-object/from16 v0, p1

    iget v11, v0, Landroid/app/enterprise/ContextInfo;->mCallerUid:I
    :try_end_11
    .catchall {:try_start_1 .. :try_end_11} :catchall_28

    .line 119
    .local v11, "uid":I
    const/4 v2, 0x1

    move/from16 v0, p3

    if-lt v0, v2, :cond_1b

    const/4 v2, 0x3

    move/from16 v0, p3

    if-le v0, v2, :cond_2b

    .line 120
    :cond_1b
    :try_start_1b
    new-instance v2, Ljava/security/InvalidParameterException;

    const-string v3, "Invalid layer. Layer must be 1...3"

    invoke-direct {v2, v3}, Ljava/security/InvalidParameterException;-><init>(Ljava/lang/String;)V

    throw v2
    :try_end_23
    .catchall {:try_start_1b .. :try_end_23} :catchall_23

    .line 157
    :catchall_23
    move-exception v2

    :try_start_24
    invoke-virtual/range {p2 .. p2}, Landroid/app/enterprise/lso/LSOItemData;->closeFileDescriptor()V

    throw v2
    :try_end_28
    .catchall {:try_start_24 .. :try_end_28} :catchall_28

    .line 113
    .end local v11    # "uid":I
    :catchall_28
    move-exception v2

    monitor-exit p0

    throw v2

    .line 124
    .restart local v11    # "uid":I
    :cond_2b
    const/4 v2, 0x1

    :try_start_2c
    move-object/from16 v0, p1

    invoke-virtual {p0, v0, v2}, canConfigure(Landroid/app/enterprise/ContextInfo;I)Z

    move-result v2

    if-nez v2, :cond_41

    .line 125
    const-string v2, "LSO"

    const-string v3, "Lockscreen is configured by another admin. Overwrite not allowed."

    invoke-static {v2, v3}, Lcom/android/server/enterprise/log/Log;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_3b
    .catchall {:try_start_2c .. :try_end_3b} :catchall_23

    .line 126
    const/4 v2, -0x1

    .line 157
    :try_start_3c
    invoke-virtual/range {p2 .. p2}, Landroid/app/enterprise/lso/LSOItemData;->closeFileDescriptor()V
    :try_end_3f
    .catchall {:try_start_3c .. :try_end_3f} :catchall_28

    .line 173
    :goto_3f
    monitor-exit p0

    return v2

    .line 129
    :cond_41
    :try_start_41
    iget-object v2, p0, mContext:Landroid/content/Context;

    const-string/jumbo v3, "phone"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/telephony/TelephonyManager;

    .line 133
    .local v10, "telMgr":Landroid/telephony/TelephonyManager;
    const/4 v2, 0x3

    move/from16 v0, p3

    if-ne v0, v2, :cond_65

    if-eqz v10, :cond_59

    invoke-virtual {v10}, Landroid/telephony/TelephonyManager;->isVoiceCapable()Z

    move-result v2

    if-nez v2, :cond_65

    .line 134
    :cond_59
    const-string v2, "LSO"

    const-string v3, "Telephony is not supported"

    invoke-static {v2, v3}, Lcom/android/server/enterprise/log/Log;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_60
    .catchall {:try_start_41 .. :try_end_60} :catchall_23

    .line 135
    const/4 v2, -0x3

    .line 157
    :try_start_61
    invoke-virtual/range {p2 .. p2}, Landroid/app/enterprise/lso/LSOItemData;->closeFileDescriptor()V
    :try_end_64
    .catchall {:try_start_61 .. :try_end_64} :catchall_28

    goto :goto_3f

    .line 138
    :cond_65
    :try_start_65
    move-object/from16 v0, p2

    move/from16 v1, p3

    invoke-virtual {p0, v11, v0, v1}, copyFiles(ILandroid/app/enterprise/lso/LSOItemData;I)Z
    :try_end_6c
    .catchall {:try_start_65 .. :try_end_6c} :catchall_23

    move-result v2

    if-nez v2, :cond_74

    .line 139
    const/4 v2, -0x4

    .line 157
    :try_start_70
    invoke-virtual/range {p2 .. p2}, Landroid/app/enterprise/lso/LSOItemData;->closeFileDescriptor()V
    :try_end_73
    .catchall {:try_start_70 .. :try_end_73} :catchall_28

    goto :goto_3f

    .line 142
    :cond_74
    :try_start_74
    iget-object v3, p0, storageProvider:Lcom/android/server/enterprise/lso/LSOStorageProvider;

    int-to-long v4, v11

    iget-object v8, p0, lsoPref:Landroid/app/enterprise/lso/LSOAttributeSet;

    move-object/from16 v6, p2

    move/from16 v7, p3

    invoke-virtual/range {v3 .. v8}, Lcom/android/server/enterprise/lso/LSOStorageProvider;->setOverlayData(JLandroid/app/enterprise/lso/LSOItemData;ILandroid/app/enterprise/lso/LSOAttributeSet;)Z

    move-result v9

    .line 143
    .local v9, "result":Z
    if-nez v9, :cond_a2

    .line 144
    iget-object v2, p0, storageProvider:Lcom/android/server/enterprise/lso/LSOStorageProvider;

    invoke-virtual {v2}, Lcom/android/server/enterprise/lso/LSOStorageProvider;->getOverlayAdminUid()I

    move-result v2

    iput v2, p0, mOverlayAdminUid:I

    .line 145
    iget-object v2, p0, mItemData:[Landroid/app/enterprise/lso/LSOItemData;

    const/4 v3, 0x0

    aput-object v3, v2, p3

    .line 146
    iget v2, p0, mOverlayAdminUid:I

    const/4 v3, -0x1

    if-ne v2, v3, :cond_98

    .line 147
    const/4 v2, 0x0

    iput-object v2, p0, lsoPref:Landroid/app/enterprise/lso/LSOAttributeSet;

    .line 149
    :cond_98
    move/from16 v0, p3

    invoke-direct {p0, v0}, deleteFiles(I)V
    :try_end_9d
    .catchall {:try_start_74 .. :try_end_9d} :catchall_23

    .line 150
    const/4 v2, -0x4

    .line 157
    :try_start_9e
    invoke-virtual/range {p2 .. p2}, Landroid/app/enterprise/lso/LSOItemData;->closeFileDescriptor()V
    :try_end_a1
    .catchall {:try_start_9e .. :try_end_a1} :catchall_28

    goto :goto_3f

    .line 153
    :cond_a2
    :try_start_a2
    iput v11, p0, mOverlayAdminUid:I

    .line 154
    iget-object v2, p0, mItemData:[Landroid/app/enterprise/lso/LSOItemData;

    aput-object p2, v2, p3
    :try_end_a8
    .catchall {:try_start_a2 .. :try_end_a8} :catchall_23

    .line 157
    :try_start_a8
    invoke-virtual/range {p2 .. p2}, Landroid/app/enterprise/lso/LSOItemData;->closeFileDescriptor()V

    .line 159
    const/4 v2, 0x1

    invoke-direct {p0, v2}, sendConfigChangeNotfication(I)V

    .line 162
    invoke-static {v11}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v8

    .line 163
    .local v8, "userId":I
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J
    :try_end_b6
    .catchall {:try_start_a8 .. :try_end_b6} :catchall_28

    move-result-wide v12

    .line 165
    .local v12, "token":J
    const/4 v2, 0x5

    const/4 v3, 0x1

    const/4 v4, 0x1

    :try_start_ba
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v5

    const-string v6, "LSOService"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "Admin "

    invoke-virtual {v7, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move-object/from16 v0, p1

    iget v14, v0, Landroid/app/enterprise/ContextInfo;->mCallerUid:I

    invoke-virtual {v7, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v14, " has changed banner settings."

    invoke-virtual {v7, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static/range {v2 .. v8}, Landroid/sec/enterprise/auditlog/AuditLog;->logAsUser(IIZILjava/lang/String;Ljava/lang/String;I)V
    :try_end_e0
    .catchall {:try_start_ba .. :try_end_e0} :catchall_e6

    .line 169
    :try_start_e0
    invoke-static {v12, v13}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 173
    const/4 v2, 0x0

    goto/16 :goto_3f

    .line 169
    :catchall_e6
    move-exception v2

    invoke-static {v12, v13}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v2
    :try_end_eb
    .catchall {:try_start_e0 .. :try_end_eb} :catchall_28
.end method

.method public setPreferences(Landroid/app/enterprise/ContextInfo;Landroid/app/enterprise/lso/LSOAttributeSet;)I
    .registers 13
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;
    .param p2, "pref"    # Landroid/app/enterprise/lso/LSOAttributeSet;

    .prologue
    const/4 v1, -0x1

    const/4 v0, -0x6

    const/4 v4, 0x1

    .line 423
    const/4 v7, 0x1

    .line 425
    .local v7, "result":Z
    invoke-direct {p0, p1}, enforceOwnerOnlyPermission(Landroid/app/enterprise/ContextInfo;)Landroid/app/enterprise/ContextInfo;

    move-result-object p1

    .line 427
    iget v2, p0, mOverlayAdminUid:I

    if-ne v2, v1, :cond_d

    .line 458
    :cond_c
    :goto_c
    return v0

    .line 432
    :cond_d
    iget v2, p0, mOverlayAdminUid:I

    iget v3, p1, Landroid/app/enterprise/ContextInfo;->mCallerUid:I

    if-eq v2, v3, :cond_1c

    .line 433
    const-string v0, "LSO"

    const-string v2, "Lockscreen is configured by another admin. Overwrite not allowed."

    invoke-static {v0, v2}, Lcom/android/server/enterprise/log/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    move v0, v1

    .line 434
    goto :goto_c

    .line 437
    :cond_1c
    iget-object v1, p0, mItemData:[Landroid/app/enterprise/lso/LSOItemData;

    aget-object v1, v1, v4

    if-nez v1, :cond_29

    iget-object v1, p0, mItemData:[Landroid/app/enterprise/lso/LSOItemData;

    const/4 v2, 0x2

    aget-object v1, v1, v2

    if-eqz v1, :cond_c

    .line 443
    :cond_29
    iget-object v0, p0, storageProvider:Lcom/android/server/enterprise/lso/LSOStorageProvider;

    invoke-virtual {v0, p2}, Lcom/android/server/enterprise/lso/LSOStorageProvider;->updateAdminPref(Landroid/app/enterprise/lso/LSOAttributeSet;)Z

    move-result v7

    .line 445
    if-eqz v7, :cond_67

    .line 446
    iput-object p2, p0, lsoPref:Landroid/app/enterprise/lso/LSOAttributeSet;

    .line 447
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v8

    .line 449
    .local v8, "psToken":J
    const/4 v0, 0x5

    const/4 v1, 0x1

    const/4 v2, 0x1

    :try_start_3a
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v3

    const-string v4, "LSOService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Admin "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p1, Landroid/app/enterprise/ContextInfo;->mCallerUid:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " has changed banner settings."

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    iget v6, p1, Landroid/app/enterprise/ContextInfo;->mCallerUid:I

    invoke-static {v6}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v6

    invoke-static/range {v0 .. v6}, Landroid/sec/enterprise/auditlog/AuditLog;->logAsUser(IIZILjava/lang/String;Ljava/lang/String;I)V
    :try_end_64
    .catchall {:try_start_3a .. :try_end_64} :catchall_6b

    .line 454
    invoke-static {v8, v9}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 458
    .end local v8    # "psToken":J
    :cond_67
    if-eqz v7, :cond_70

    const/4 v0, 0x0

    goto :goto_c

    .line 454
    .restart local v8    # "psToken":J
    :catchall_6b
    move-exception v0

    invoke-static {v8, v9}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v0

    .line 458
    .end local v8    # "psToken":J
    :cond_70
    const/4 v0, -0x4

    goto :goto_c
.end method

.method public setWallpaper(Landroid/app/enterprise/ContextInfo;Ljava/lang/String;Landroid/os/ParcelFileDescriptor;)I
    .registers 23
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;
    .param p2, "imageFilePath"    # Ljava/lang/String;
    .param p3, "image"    # Landroid/os/ParcelFileDescriptor;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 335
    const-string v4, "LSO"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "setWallpaper("

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p2

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ")"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 336
    invoke-direct/range {p0 .. p1}, enforceOwnerOnlyPermission(Landroid/app/enterprise/ContextInfo;)Landroid/app/enterprise/ContextInfo;

    move-result-object p1

    .line 337
    move-object/from16 v0, p1

    iget v15, v0, Landroid/app/enterprise/ContextInfo;->mCallerUid:I

    .line 338
    .local v15, "uid":I
    const/4 v4, 0x2

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-virtual {v0, v1, v4}, canConfigure(Landroid/app/enterprise/ContextInfo;I)Z

    move-result v4

    if-nez v4, :cond_3d

    .line 339
    const-string v4, "LSO"

    const-string v5, "Lockscreen is configured by another admin. Overwrite not allowed."

    invoke-static {v4, v5}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 340
    const/4 v4, -0x1

    .line 419
    :goto_3c
    return v4

    .line 342
    :cond_3d
    if-eqz p2, :cond_41

    if-nez p3, :cond_4b

    .line 343
    :cond_41
    const-string v4, "LSO"

    const-string/jumbo v5, "imageFilePath or image is null, please check path"

    invoke-static {v4, v5}, Lcom/android/server/enterprise/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 344
    const/4 v4, -0x4

    goto :goto_3c

    .line 347
    :cond_4b
    move-object/from16 v0, p0

    move-object/from16 v1, p3

    move-object/from16 v2, p2

    invoke-direct {v0, v1, v2}, copyFileFromParcel(Landroid/os/ParcelFileDescriptor;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    .line 348
    .local v14, "tempFilePath":Ljava/lang/String;
    if-nez v14, :cond_61

    .line 349
    const-string v4, "LSO"

    const-string/jumbo v5, "file not created"

    invoke-static {v4, v5}, Lcom/android/server/enterprise/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 350
    const/4 v4, -0x4

    goto :goto_3c

    .line 352
    :cond_61
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v16

    .line 353
    .local v16, "token":J
    const/4 v11, 0x0

    .line 355
    .local v11, "bCopied":Z
    :try_start_66
    new-instance v4, Ljava/io/File;

    const-string v5, "/data/data/com.sec.android.gallery3d"

    invoke-direct {v4, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v4

    if-nez v4, :cond_7f

    .line 356
    const-string v4, "LSO"

    const-string v5, "/data/data/com.sec.android.gallery3d does not exists"

    invoke-static {v4, v5}, Lcom/android/server/enterprise/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_7a
    .catch Ljava/lang/Exception; {:try_start_66 .. :try_end_7a} :catch_d1
    .catchall {:try_start_66 .. :try_end_7a} :catchall_d7

    .line 357
    const/4 v4, -0x3

    .line 384
    invoke-static/range {v16 .. v17}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto :goto_3c

    .line 360
    :cond_7f
    :try_start_7f
    const-string v4, "/data/system/enterprise"

    invoke-static {v4}, Landroid/app/enterprise/lso/LSOUtils;->mkDir(Ljava/lang/String;)Z
    :try_end_84
    .catch Ljava/lang/Exception; {:try_start_7f .. :try_end_84} :catch_d1
    .catchall {:try_start_7f .. :try_end_84} :catchall_d7

    move-result v4

    if-nez v4, :cond_8c

    .line 361
    const/4 v4, -0x4

    .line 384
    invoke-static/range {v16 .. v17}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto :goto_3c

    .line 364
    :cond_8c
    :try_start_8c
    const-string v4, "/data/system/enterprise/lso"

    invoke-static {v4}, Landroid/app/enterprise/lso/LSOUtils;->mkDir(Ljava/lang/String;)Z
    :try_end_91
    .catch Ljava/lang/Exception; {:try_start_8c .. :try_end_91} :catch_d1
    .catchall {:try_start_8c .. :try_end_91} :catchall_d7

    move-result v4

    if-nez v4, :cond_99

    .line 365
    const/4 v4, -0x4

    .line 384
    invoke-static/range {v16 .. v17}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto :goto_3c

    .line 368
    :cond_99
    :try_start_99
    move-object/from16 v0, p0

    iget-object v4, v0, storageProvider:Lcom/android/server/enterprise/lso/LSOStorageProvider;

    invoke-virtual {v4}, Lcom/android/server/enterprise/lso/LSOStorageProvider;->resetWallpaperData()V

    .line 372
    sget-object v4, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    const-string v5, "/data/system/enterprise/lso/lockscreen_wallpaper.jpg"

    move-object/from16 v0, p0

    iget-object v6, v0, screenDimesions:Landroid/graphics/Point;

    invoke-static {v14, v4, v5, v6}, Landroid/app/enterprise/lso/LSOUtils;->convertImageFormat(Ljava/lang/String;Landroid/graphics/Bitmap$CompressFormat;Ljava/lang/String;Landroid/graphics/Point;)Z

    move-result v11

    .line 374
    if-eqz v11, :cond_bf

    .line 375
    const-string v4, "LSO"

    const-string v5, "Create Ripple image"

    invoke-static {v4, v5}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 376
    const-string v4, "/data/system/enterprise/lso/lockscreen_wallpaper.jpg"

    sget-object v5, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    const-string v6, "/data/system/enterprise/lso/lockscreen_wallpaper_ripple.jpg"

    invoke-static {v4, v5, v6}, Landroid/app/enterprise/lso/LSOUtils;->createRippleImage(Ljava/lang/String;Landroid/graphics/Bitmap$CompressFormat;Ljava/lang/String;)Z
    :try_end_be
    .catch Ljava/lang/Exception; {:try_start_99 .. :try_end_be} :catch_d1
    .catchall {:try_start_99 .. :try_end_be} :catchall_d7

    move-result v11

    .line 384
    :cond_bf
    invoke-static/range {v16 .. v17}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 387
    :goto_c2
    if-nez v11, :cond_dc

    .line 388
    const-string v4, "LSO"

    const-string v5, "Error in copying file"

    invoke-static {v4, v5}, Lcom/android/server/enterprise/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 389
    invoke-static {v14}, Landroid/app/enterprise/lso/LSOUtils;->deleteFile(Ljava/lang/String;)V

    .line 390
    const/4 v4, -0x4

    goto/16 :goto_3c

    .line 381
    :catch_d1
    move-exception v12

    .line 382
    .local v12, "e":Ljava/lang/Exception;
    const/4 v11, 0x0

    .line 384
    invoke-static/range {v16 .. v17}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto :goto_c2

    .end local v12    # "e":Ljava/lang/Exception;
    :catchall_d7
    move-exception v4

    invoke-static/range {v16 .. v17}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v4

    .line 393
    :cond_dc
    move-object/from16 v0, p0

    iget-object v4, v0, storageProvider:Lcom/android/server/enterprise/lso/LSOStorageProvider;

    int-to-long v6, v15

    invoke-virtual {v4, v6, v7, v14}, Lcom/android/server/enterprise/lso/LSOStorageProvider;->setWallpaperData(JLjava/lang/String;)Z

    move-result v13

    .line 394
    .local v13, "result":Z
    if-nez v13, :cond_f5

    .line 395
    const/4 v4, -0x1

    move-object/from16 v0, p0

    iput v4, v0, mWallpaperAdminUid:I

    .line 396
    invoke-static {v14}, Landroid/app/enterprise/lso/LSOUtils;->deleteFile(Ljava/lang/String;)V

    .line 397
    invoke-direct/range {p0 .. p0}, deleteWallpaperFiles()V

    .line 398
    const/4 v4, -0x4

    goto/16 :goto_3c

    .line 401
    :cond_f5
    move-object/from16 v0, p0

    iput v15, v0, mWallpaperAdminUid:I

    .line 403
    const/4 v4, 0x1

    move-object/from16 v0, p0

    invoke-direct {v0, v4}, sendConfigChangeNotfication(I)V

    .line 406
    invoke-static {v15}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v10

    .line 407
    .local v10, "userId":I
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v16

    .line 409
    const/4 v4, 0x5

    const/4 v5, 0x1

    const/4 v6, 0x1

    :try_start_10a
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v7

    const-string v8, "LSOService"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v18, "Admin "

    move-object/from16 v0, v18

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    move-object/from16 v0, p1

    iget v0, v0, Landroid/app/enterprise/ContextInfo;->mCallerUid:I

    move/from16 v18, v0

    move/from16 v0, v18

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v18, " has changed banner wallpaper to file "

    move-object/from16 v0, v18

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    move-object/from16 v0, p2

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static/range {v4 .. v10}, Landroid/sec/enterprise/auditlog/AuditLog;->logAsUser(IIZILjava/lang/String;Ljava/lang/String;I)V
    :try_end_13e
    .catchall {:try_start_10a .. :try_end_13e} :catchall_147

    .line 414
    invoke-static/range {v16 .. v17}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 418
    invoke-static {v14}, Landroid/app/enterprise/lso/LSOUtils;->deleteFile(Ljava/lang/String;)V

    .line 419
    const/4 v4, 0x0

    goto/16 :goto_3c

    .line 414
    :catchall_147
    move-exception v4

    invoke-static/range {v16 .. v17}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v4
.end method

.method public systemReady()V
    .registers 1

    .prologue
    .line 495
    return-void
.end method
