.class Lcom/android/server/power/ShutdownDialog$StatePrepare;
.super Ljava/lang/Object;
.source "ShutdownDialog.java"

# interfaces
.implements Lcom/android/server/power/ShutdownDialog$DrawState;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/power/ShutdownDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "StatePrepare"
.end annotation


# instance fields
.field private hasAnim:Z

.field private hasSound:Z

.field final synthetic this$0:Lcom/android/server/power/ShutdownDialog;


# direct methods
.method private constructor <init>(Lcom/android/server/power/ShutdownDialog;)V
    .registers 2

    .prologue
    .line 266
    iput-object p1, p0, this$0:Lcom/android/server/power/ShutdownDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/power/ShutdownDialog;Lcom/android/server/power/ShutdownDialog$1;)V
    .registers 3
    .param p1, "x0"    # Lcom/android/server/power/ShutdownDialog;
    .param p2, "x1"    # Lcom/android/server/power/ShutdownDialog$1;

    .prologue
    .line 266
    invoke-direct {p0, p1}, <init>(Lcom/android/server/power/ShutdownDialog;)V

    return-void
.end method

.method static synthetic access$2900(Lcom/android/server/power/ShutdownDialog$StatePrepare;)Z
    .registers 2
    .param p0, "x0"    # Lcom/android/server/power/ShutdownDialog$StatePrepare;

    .prologue
    .line 266
    iget-boolean v0, p0, hasSound:Z

    return v0
.end method

.method private compareFileStr(Ljava/lang/String;Ljava/lang/String;)Z
    .registers 13
    .param p1, "filename"    # Ljava/lang/String;
    .param p2, "targetStr"    # Ljava/lang/String;

    .prologue
    .line 307
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 308
    .local v1, "f":Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v7

    if-eqz v7, :cond_3f

    .line 309
    const/4 v5, 0x0

    .line 311
    .local v5, "reader":Ljava/io/BufferedReader;
    :try_start_c
    new-instance v2, Ljava/io/FileInputStream;

    invoke-direct {v2, v1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    .line 312
    .local v2, "fis":Ljava/io/InputStream;
    new-instance v4, Ljava/io/InputStreamReader;

    invoke-direct {v4, v2}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    .line 313
    .local v4, "r":Ljava/io/InputStreamReader;
    new-instance v6, Ljava/io/BufferedReader;

    invoke-direct {v6, v4}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_1b
    .catch Ljava/io/FileNotFoundException; {:try_start_c .. :try_end_1b} :catch_32
    .catch Ljava/io/IOException; {:try_start_c .. :try_end_1b} :catch_4a
    .catchall {:try_start_c .. :try_end_1b} :catchall_61

    .line 314
    .end local v5    # "reader":Ljava/io/BufferedReader;
    .local v6, "reader":Ljava/io/BufferedReader;
    :try_start_1b
    invoke-virtual {v6}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v3

    .line 315
    .local v3, "line":Ljava/lang/String;
    invoke-virtual {p2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_22
    .catch Ljava/io/FileNotFoundException; {:try_start_1b .. :try_end_22} :catch_77
    .catch Ljava/io/IOException; {:try_start_1b .. :try_end_22} :catch_74
    .catchall {:try_start_1b .. :try_end_22} :catchall_71

    move-result v7

    .line 321
    if-eqz v6, :cond_28

    .line 323
    :try_start_25
    invoke-virtual {v6}, Ljava/io/BufferedReader;->close()V
    :try_end_28
    .catch Ljava/io/IOException; {:try_start_25 .. :try_end_28} :catch_29

    .line 330
    .end local v2    # "fis":Ljava/io/InputStream;
    .end local v3    # "line":Ljava/lang/String;
    .end local v4    # "r":Ljava/io/InputStreamReader;
    .end local v6    # "reader":Ljava/io/BufferedReader;
    :cond_28
    :goto_28
    return v7

    .line 324
    .restart local v2    # "fis":Ljava/io/InputStream;
    .restart local v3    # "line":Ljava/lang/String;
    .restart local v4    # "r":Ljava/io/InputStreamReader;
    .restart local v6    # "reader":Ljava/io/BufferedReader;
    :catch_29
    move-exception v0

    .line 325
    .local v0, "e":Ljava/io/IOException;
    const-string v8, "ShutdownDialog"

    const-string v9, "File close error"

    invoke-static {v8, v9, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_28

    .line 316
    .end local v0    # "e":Ljava/io/IOException;
    .end local v2    # "fis":Ljava/io/InputStream;
    .end local v3    # "line":Ljava/lang/String;
    .end local v4    # "r":Ljava/io/InputStreamReader;
    .end local v6    # "reader":Ljava/io/BufferedReader;
    .restart local v5    # "reader":Ljava/io/BufferedReader;
    :catch_32
    move-exception v0

    .line 317
    .local v0, "e":Ljava/io/FileNotFoundException;
    :goto_33
    :try_start_33
    const-string v7, "ShutdownDialog"

    const-string v8, "Exception"

    invoke-static {v7, v8, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_3a
    .catchall {:try_start_33 .. :try_end_3a} :catchall_61

    .line 321
    if-eqz v5, :cond_3f

    .line 323
    :try_start_3c
    invoke-virtual {v5}, Ljava/io/BufferedReader;->close()V
    :try_end_3f
    .catch Ljava/io/IOException; {:try_start_3c .. :try_end_3f} :catch_41

    .line 330
    .end local v0    # "e":Ljava/io/FileNotFoundException;
    .end local v5    # "reader":Ljava/io/BufferedReader;
    :cond_3f
    :goto_3f
    const/4 v7, 0x0

    goto :goto_28

    .line 324
    .restart local v0    # "e":Ljava/io/FileNotFoundException;
    .restart local v5    # "reader":Ljava/io/BufferedReader;
    :catch_41
    move-exception v0

    .line 325
    .local v0, "e":Ljava/io/IOException;
    const-string v7, "ShutdownDialog"

    const-string v8, "File close error"

    invoke-static {v7, v8, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_3f

    .line 318
    .end local v0    # "e":Ljava/io/IOException;
    :catch_4a
    move-exception v0

    .line 319
    .restart local v0    # "e":Ljava/io/IOException;
    :goto_4b
    :try_start_4b
    const-string v7, "ShutdownDialog"

    const-string v8, "Exception"

    invoke-static {v7, v8, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_52
    .catchall {:try_start_4b .. :try_end_52} :catchall_61

    .line 321
    if-eqz v5, :cond_3f

    .line 323
    :try_start_54
    invoke-virtual {v5}, Ljava/io/BufferedReader;->close()V
    :try_end_57
    .catch Ljava/io/IOException; {:try_start_54 .. :try_end_57} :catch_58

    goto :goto_3f

    .line 324
    :catch_58
    move-exception v0

    .line 325
    const-string v7, "ShutdownDialog"

    const-string v8, "File close error"

    invoke-static {v7, v8, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_3f

    .line 321
    .end local v0    # "e":Ljava/io/IOException;
    :catchall_61
    move-exception v7

    :goto_62
    if-eqz v5, :cond_67

    .line 323
    :try_start_64
    invoke-virtual {v5}, Ljava/io/BufferedReader;->close()V
    :try_end_67
    .catch Ljava/io/IOException; {:try_start_64 .. :try_end_67} :catch_68

    .line 326
    :cond_67
    :goto_67
    throw v7

    .line 324
    :catch_68
    move-exception v0

    .line 325
    .restart local v0    # "e":Ljava/io/IOException;
    const-string v8, "ShutdownDialog"

    const-string v9, "File close error"

    invoke-static {v8, v9, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_67

    .line 321
    .end local v0    # "e":Ljava/io/IOException;
    .end local v5    # "reader":Ljava/io/BufferedReader;
    .restart local v2    # "fis":Ljava/io/InputStream;
    .restart local v4    # "r":Ljava/io/InputStreamReader;
    .restart local v6    # "reader":Ljava/io/BufferedReader;
    :catchall_71
    move-exception v7

    move-object v5, v6

    .end local v6    # "reader":Ljava/io/BufferedReader;
    .restart local v5    # "reader":Ljava/io/BufferedReader;
    goto :goto_62

    .line 318
    .end local v5    # "reader":Ljava/io/BufferedReader;
    .restart local v6    # "reader":Ljava/io/BufferedReader;
    :catch_74
    move-exception v0

    move-object v5, v6

    .end local v6    # "reader":Ljava/io/BufferedReader;
    .restart local v5    # "reader":Ljava/io/BufferedReader;
    goto :goto_4b

    .line 316
    .end local v5    # "reader":Ljava/io/BufferedReader;
    .restart local v6    # "reader":Ljava/io/BufferedReader;
    :catch_77
    move-exception v0

    move-object v5, v6

    .end local v6    # "reader":Ljava/io/BufferedReader;
    .restart local v5    # "reader":Ljava/io/BufferedReader;
    goto :goto_33
.end method

.method private disableWindowRotation(II)V
    .registers 6
    .param p1, "width"    # I
    .param p2, "height"    # I

    .prologue
    .line 355
    iget-object v2, p0, this$0:Lcom/android/server/power/ShutdownDialog;

    invoke-virtual {v2}, Lcom/android/server/power/ShutdownDialog;->getWindow()Landroid/view/Window;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    .line 356
    .local v0, "l":Landroid/view/WindowManager$LayoutParams;
    new-instance v1, Landroid/view/WindowManager$LayoutParams;

    invoke-direct {v1}, Landroid/view/WindowManager$LayoutParams;-><init>()V

    .line 357
    .local v1, "nl":Landroid/view/WindowManager$LayoutParams;
    invoke-virtual {v1, v0}, Landroid/view/WindowManager$LayoutParams;->copyFrom(Landroid/view/WindowManager$LayoutParams;)I

    .line 358
    if-le p1, p2, :cond_21

    .line 359
    const/4 v2, 0x0

    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->screenOrientation:I

    .line 363
    :goto_17
    iget-object v2, p0, this$0:Lcom/android/server/power/ShutdownDialog;

    invoke-virtual {v2}, Lcom/android/server/power/ShutdownDialog;->getWindow()Landroid/view/Window;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    .line 364
    return-void

    .line 361
    :cond_21
    const/4 v2, 0x1

    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->screenOrientation:I

    goto :goto_17
.end method


# virtual methods
.method public checkFotaSilent()Z
    .registers 3

    .prologue
    .line 334
    const-string v0, "/efs/sec_efs/auto_reboot/autoinstall.status"

    const-string v1, "AUTO_INSTALL"

    invoke-direct {p0, v0, v1}, compareFileStr(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public checkRunning()Z
    .registers 2

    .prologue
    .line 348
    iget-boolean v0, p0, hasSound:Z

    if-nez v0, :cond_8

    iget-boolean v0, p0, hasAnim:Z

    if-eqz v0, :cond_a

    .line 349
    :cond_8
    const/4 v0, 0x1

    .line 351
    :goto_9
    return v0

    :cond_a
    const/4 v0, 0x0

    goto :goto_9
.end method

.method public checkStart()Z
    .registers 2

    .prologue
    .line 344
    const/4 v0, 0x0

    return v0
.end method

.method public prepare()V
    .registers 10

    .prologue
    .line 271
    const-string v7, "ShutdownDialog"

    const-string/jumbo v8, "prepare shutdown dialog image and sound"

    invoke-static {v7, v8}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 273
    iget-object v7, p0, this$0:Lcom/android/server/power/ShutdownDialog;

    # getter for: Lcom/android/server/power/ShutdownDialog;->qmgList:Ljava/util/List;
    invoke-static {v7}, Lcom/android/server/power/ShutdownDialog;->access$400(Lcom/android/server/power/ShutdownDialog;)Ljava/util/List;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v7

    if-lez v7, :cond_54

    .line 275
    iget-object v7, p0, this$0:Lcom/android/server/power/ShutdownDialog;

    # getter for: Lcom/android/server/power/ShutdownDialog;->qmgList:Ljava/util/List;
    invoke-static {v7}, Lcom/android/server/power/ShutdownDialog;->access$400(Lcom/android/server/power/ShutdownDialog;)Ljava/util/List;

    move-result-object v7

    const/4 v8, 0x0

    invoke-interface {v7, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/power/LibQmg;

    .line 276
    .local v2, "qmg":Lcom/android/server/power/LibQmg;
    const-string v7, "ShutdownDialog"

    invoke-virtual {v2}, Lcom/android/server/power/LibQmg;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 277
    invoke-virtual {v2}, Lcom/android/server/power/LibQmg;->getWidth()I

    move-result v6

    .line 278
    .local v6, "width":I
    invoke-virtual {v2}, Lcom/android/server/power/LibQmg;->getHeight()I

    move-result v0

    .line 280
    .local v0, "height":I
    invoke-direct {p0, v6, v0}, disableWindowRotation(II)V

    .line 281
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_36
    const/4 v7, 0x3

    if-ge v1, v7, :cond_5c

    .line 282
    iget-object v7, p0, this$0:Lcom/android/server/power/ShutdownDialog;

    # getter for: Lcom/android/server/power/ShutdownDialog;->bitmapQ:[Landroid/graphics/Bitmap;
    invoke-static {v7}, Lcom/android/server/power/ShutdownDialog;->access$500(Lcom/android/server/power/ShutdownDialog;)[Landroid/graphics/Bitmap;

    move-result-object v7

    aget-object v7, v7, v1

    if-nez v7, :cond_51

    .line 283
    iget-object v7, p0, this$0:Lcom/android/server/power/ShutdownDialog;

    # getter for: Lcom/android/server/power/ShutdownDialog;->bitmapQ:[Landroid/graphics/Bitmap;
    invoke-static {v7}, Lcom/android/server/power/ShutdownDialog;->access$500(Lcom/android/server/power/ShutdownDialog;)[Landroid/graphics/Bitmap;

    move-result-object v7

    sget-object v8, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    invoke-static {v6, v0, v8}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v8

    aput-object v8, v7, v1

    .line 281
    :cond_51
    add-int/lit8 v1, v1, 0x1

    goto :goto_36

    .line 287
    .end local v0    # "height":I
    .end local v1    # "i":I
    .end local v2    # "qmg":Lcom/android/server/power/LibQmg;
    .end local v6    # "width":I
    :cond_54
    const-string v7, "ShutdownDialog"

    const-string/jumbo v8, "qmglist error"

    invoke-static {v7, v8}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 291
    :cond_5c
    iget-object v7, p0, this$0:Lcom/android/server/power/ShutdownDialog;

    # invokes: Lcom/android/server/power/ShutdownDialog;->getSystemVolume()I
    invoke-static {v7}, Lcom/android/server/power/ShutdownDialog;->access$600(Lcom/android/server/power/ShutdownDialog;)I

    move-result v5

    .line 292
    .local v5, "systemVolume":I
    iget-object v7, p0, this$0:Lcom/android/server/power/ShutdownDialog;

    iget-object v8, p0, this$0:Lcom/android/server/power/ShutdownDialog;

    # getter for: Lcom/android/server/power/ShutdownDialog;->shutdownSoundPath:Ljava/lang/String;
    invoke-static {v8}, Lcom/android/server/power/ShutdownDialog;->access$700(Lcom/android/server/power/ShutdownDialog;)Ljava/lang/String;

    move-result-object v8

    # invokes: Lcom/android/server/power/ShutdownDialog;->getShutdownSoundPath(Ljava/lang/String;)Ljava/lang/String;
    invoke-static {v7, v8}, Lcom/android/server/power/ShutdownDialog;->access$800(Lcom/android/server/power/ShutdownDialog;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 293
    .local v3, "soundPathConfirmed":Ljava/lang/String;
    iget-object v7, p0, this$0:Lcom/android/server/power/ShutdownDialog;

    # getter for: Lcom/android/server/power/ShutdownDialog;->silentShutdown:Z
    invoke-static {v7}, Lcom/android/server/power/ShutdownDialog;->access$900(Lcom/android/server/power/ShutdownDialog;)Z

    move-result v7

    if-nez v7, :cond_80

    if-eqz v3, :cond_80

    if-eqz v5, :cond_80

    invoke-virtual {p0}, checkFotaSilent()Z

    move-result v7

    if-eqz v7, :cond_97

    .line 295
    :cond_80
    const-string/jumbo v7, "poweroff_sound=suspend"

    invoke-static {v7}, Landroid/media/AudioSystem;->setParameters(Ljava/lang/String;)I

    .line 302
    :goto_86
    new-instance v4, Landroid/content/Intent;

    const-string v7, "POWER_OFF_ANIMATION_START"

    invoke-direct {v4, v7}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 303
    .local v4, "startAnimation":Landroid/content/Intent;
    iget-object v7, p0, this$0:Lcom/android/server/power/ShutdownDialog;

    # getter for: Lcom/android/server/power/ShutdownDialog;->mContext:Landroid/content/Context;
    invoke-static {v7}, Lcom/android/server/power/ShutdownDialog;->access$1100(Lcom/android/server/power/ShutdownDialog;)Landroid/content/Context;

    move-result-object v7

    invoke-virtual {v7, v4}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 304
    return-void

    .line 297
    .end local v4    # "startAnimation":Landroid/content/Intent;
    :cond_97
    const/4 v7, 0x1

    iput-boolean v7, p0, hasSound:Z

    .line 298
    iget-object v7, p0, this$0:Lcom/android/server/power/ShutdownDialog;

    # invokes: Lcom/android/server/power/ShutdownDialog;->prepareSound(Ljava/lang/String;)V
    invoke-static {v7, v3}, Lcom/android/server/power/ShutdownDialog;->access$1000(Lcom/android/server/power/ShutdownDialog;Ljava/lang/String;)V

    goto :goto_86
.end method

.method public start()V
    .registers 3

    .prologue
    .line 338
    const-string v0, "ShutdownDialog"

    const-string/jumbo v1, "start draw"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 339
    iget-object v0, p0, this$0:Lcom/android/server/power/ShutdownDialog;

    # getter for: Lcom/android/server/power/ShutdownDialog;->mStateDrawing:Lcom/android/server/power/ShutdownDialog$StateDrawing;
    invoke-static {v0}, Lcom/android/server/power/ShutdownDialog;->access$1200(Lcom/android/server/power/ShutdownDialog;)Lcom/android/server/power/ShutdownDialog$StateDrawing;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/power/ShutdownDialog$StateDrawing;->start()V

    .line 340
    iget-object v0, p0, this$0:Lcom/android/server/power/ShutdownDialog;

    iget-object v1, p0, this$0:Lcom/android/server/power/ShutdownDialog;

    # getter for: Lcom/android/server/power/ShutdownDialog;->mStateDrawing:Lcom/android/server/power/ShutdownDialog$StateDrawing;
    invoke-static {v1}, Lcom/android/server/power/ShutdownDialog;->access$1200(Lcom/android/server/power/ShutdownDialog;)Lcom/android/server/power/ShutdownDialog$StateDrawing;

    move-result-object v1

    # setter for: Lcom/android/server/power/ShutdownDialog;->mState:Lcom/android/server/power/ShutdownDialog$DrawState;
    invoke-static {v0, v1}, Lcom/android/server/power/ShutdownDialog;->access$1302(Lcom/android/server/power/ShutdownDialog;Lcom/android/server/power/ShutdownDialog$DrawState;)Lcom/android/server/power/ShutdownDialog$DrawState;

    .line 341
    return-void
.end method
