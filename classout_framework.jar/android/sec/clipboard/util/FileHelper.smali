.class public Landroid/sec/clipboard/util/FileHelper;
.super Ljava/lang/Object;
.source "FileHelper.java"


# static fields
.field private static final BASE_64_ENCODING:Ljava/lang/String; = ";base64"

.field private static final LENGTH_CONTENT_URI:I

.field private static final LENGTH_HTTPS_URL:I

.field private static final LENGTH_HTTP_URL:I

.field private static final PREFIX_CONTENT_URI:Ljava/lang/String; = "content://"

.field private static final PREFIX_DATA:Ljava/lang/String; = "data:"

.field private static final PREFIX_HTTPS_URL:Ljava/lang/String; = "https://"

.field private static final PREFIX_HTTP_URL:Ljava/lang/String; = "http://"

.field private static instance:Landroid/sec/clipboard/util/FileHelper;


# instance fields
.field private NullFile:Ljava/io/File;

.field private final TAG:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 57
    new-instance v0, Landroid/sec/clipboard/util/FileHelper;

    invoke-direct {v0}, <init>()V

    sput-object v0, instance:Landroid/sec/clipboard/util/FileHelper;

    .line 66
    const-string v0, "http://"

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    sput v0, LENGTH_HTTP_URL:I

    .line 67
    const-string v0, "https://"

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    sput v0, LENGTH_HTTPS_URL:I

    .line 68
    const-string v0, "content://"

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    sput v0, LENGTH_CONTENT_URI:I

    return-void
.end method

.method public constructor <init>()V
    .registers 3

    .prologue
    .line 55
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 56
    const-string v0, "FileHelper"

    iput-object v0, p0, TAG:Ljava/lang/String;

    .line 58
    new-instance v0, Ljava/io/File;

    const-string v1, "_TEMP_FILE"

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, NullFile:Ljava/io/File;

    return-void
.end method

.method private getBitmap(Ljava/lang/String;II)Landroid/graphics/Bitmap;
    .registers 11
    .param p1, "bitmapPath"    # Ljava/lang/String;
    .param p2, "reqWidth"    # I
    .param p3, "reqHeight"    # I

    .prologue
    const/4 v4, 0x1

    .line 481
    const/4 v3, 0x2

    .line 482
    .local v3, "sampleSize":I
    const/4 v1, 0x0

    .line 484
    .local v1, "bm":Landroid/graphics/Bitmap;
    new-instance v0, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v0}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 489
    .local v0, "bitmapOption":Landroid/graphics/BitmapFactory$Options;
    iput-boolean v4, v0, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 492
    iput-boolean v4, v0, Landroid/graphics/BitmapFactory$Options;->inPurgeable:Z

    .line 498
    :try_start_c
    sget-boolean v4, Landroid/sec/clipboard/data/ClipboardConstants;->DEBUG:Z

    if-eqz v4, :cond_17

    .line 499
    const-string v4, "FileHelper"

    const-string v5, "BitmapFactory.decodeFile(bitmapPath, bitmapOption"

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 501
    :cond_17
    invoke-static {p1, v0}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;
    :try_end_1a
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_1a} :catch_75

    move-result-object v1

    .line 508
    :goto_1b
    sget-boolean v4, Landroid/sec/clipboard/data/ClipboardConstants;->DEBUG:Z

    if-eqz v4, :cond_68

    .line 509
    const-string v4, "FileHelper"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "bitmapOption.outWidth:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, v0, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " bitmapOption.outHieght:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, v0, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 510
    const-string v4, "FileHelper"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "mGridItemWidth:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " mGridItemHeight:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 513
    :cond_68
    :goto_68
    iget v4, v0, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    div-int/2addr v4, v3

    if-lt v4, p2, :cond_7a

    iget v4, v0, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    div-int/2addr v4, v3

    if-lt v4, p3, :cond_7a

    .line 514
    add-int/lit8 v3, v3, 0x1

    goto :goto_68

    .line 502
    :catch_75
    move-exception v2

    .line 503
    .local v2, "e":Ljava/lang/Exception;
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1b

    .line 516
    .end local v2    # "e":Ljava/lang/Exception;
    :cond_7a
    add-int/lit8 v3, v3, -0x1

    .line 520
    iput v3, v0, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    .line 523
    const/4 v4, 0x0

    :try_start_7f
    iput-boolean v4, v0, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 524
    invoke-static {p1, v0}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;
    :try_end_84
    .catch Ljava/lang/Exception; {:try_start_7f .. :try_end_84} :catch_86

    move-result-object v1

    .line 528
    :goto_85
    return-object v1

    .line 525
    :catch_86
    move-exception v2

    .line 526
    .restart local v2    # "e":Ljava/lang/Exception;
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_85
.end method

.method public static getInstance()Landroid/sec/clipboard/util/FileHelper;
    .registers 1

    .prologue
    .line 71
    sget-object v0, instance:Landroid/sec/clipboard/util/FileHelper;

    return-object v0
.end method


# virtual methods
.method public checkDir(Ljava/io/File;)Z
    .registers 3
    .param p1, "file"    # Ljava/io/File;

    .prologue
    .line 588
    invoke-virtual {p1}, Ljava/io/File;->isDirectory()Z

    move-result v0

    return v0
.end method

.method public checkFile(Ljava/io/File;)Z
    .registers 3
    .param p1, "file"    # Ljava/io/File;

    .prologue
    .line 609
    invoke-virtual {p1}, Ljava/io/File;->isFile()Z

    move-result v0

    return v0
.end method

.method public createTemporaryThumnailImage(Ljava/lang/String;)Z
    .registers 11
    .param p1, "filePath"    # Ljava/lang/String;

    .prologue
    .line 327
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "_thum.jpg"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 328
    .local v6, "thumFullPath":Ljava/lang/String;
    const/4 v2, 0x0

    .line 329
    .local v2, "bm":Landroid/graphics/Bitmap;
    const/4 v0, 0x0

    .line 330
    .local v0, "Result":Z
    const/16 v7, 0x14a

    const/16 v8, 0xf0

    invoke-direct {p0, p1, v7, v8}, getBitmap(Ljava/lang/String;II)Landroid/graphics/Bitmap;

    move-result-object v2

    .line 332
    if-nez v2, :cond_2c

    .line 333
    sget-boolean v7, Landroid/sec/clipboard/data/ClipboardConstants;->DEBUG:Z

    if-eqz v7, :cond_2a

    .line 334
    const-string v7, "FileHelper"

    const-string v8, "createThumnailImage Bitmap is null"

    invoke-static {v7, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2a
    move v1, v0

    .line 361
    .end local v0    # "Result":Z
    .local v1, "Result":I
    :goto_2b
    return v1

    .line 339
    .end local v1    # "Result":I
    .restart local v0    # "Result":Z
    :cond_2c
    const/4 v4, 0x0

    .line 342
    .local v4, "fos":Ljava/io/FileOutputStream;
    :try_start_2d
    new-instance v5, Ljava/io/FileOutputStream;

    invoke-direct {v5, v6}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V
    :try_end_32
    .catch Ljava/lang/Exception; {:try_start_2d .. :try_end_32} :catch_4d
    .catchall {:try_start_2d .. :try_end_32} :catchall_5c

    .line 344
    .end local v4    # "fos":Ljava/io/FileOutputStream;
    .local v5, "fos":Ljava/io/FileOutputStream;
    if-eqz v5, :cond_3c

    .line 345
    :try_start_34
    sget-object v7, Landroid/graphics/Bitmap$CompressFormat;->PNG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v8, 0x32

    invoke-virtual {v2, v7, v8, v5}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z
    :try_end_3b
    .catch Ljava/lang/Exception; {:try_start_34 .. :try_end_3b} :catch_6b
    .catchall {:try_start_34 .. :try_end_3b} :catchall_68

    .line 346
    const/4 v0, 0x1

    .line 352
    :cond_3c
    if-eqz v5, :cond_41

    .line 353
    :try_start_3e
    invoke-virtual {v5}, Ljava/io/FileOutputStream;->close()V
    :try_end_41
    .catch Ljava/io/IOException; {:try_start_3e .. :try_end_41} :catch_47

    :cond_41
    move-object v4, v5

    .line 360
    .end local v5    # "fos":Ljava/io/FileOutputStream;
    .restart local v4    # "fos":Ljava/io/FileOutputStream;
    :cond_42
    :goto_42
    invoke-virtual {v2}, Landroid/graphics/Bitmap;->recycle()V

    move v1, v0

    .line 361
    .restart local v1    # "Result":I
    goto :goto_2b

    .line 355
    .end local v1    # "Result":I
    .end local v4    # "fos":Ljava/io/FileOutputStream;
    .restart local v5    # "fos":Ljava/io/FileOutputStream;
    :catch_47
    move-exception v3

    .line 356
    .local v3, "e":Ljava/io/IOException;
    invoke-virtual {v3}, Ljava/io/IOException;->printStackTrace()V

    move-object v4, v5

    .line 358
    .end local v5    # "fos":Ljava/io/FileOutputStream;
    .restart local v4    # "fos":Ljava/io/FileOutputStream;
    goto :goto_42

    .line 348
    .end local v3    # "e":Ljava/io/IOException;
    :catch_4d
    move-exception v3

    .line 349
    .local v3, "e":Ljava/lang/Exception;
    :goto_4e
    :try_start_4e
    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_51
    .catchall {:try_start_4e .. :try_end_51} :catchall_5c

    .line 352
    if-eqz v4, :cond_42

    .line 353
    :try_start_53
    invoke-virtual {v4}, Ljava/io/FileOutputStream;->close()V
    :try_end_56
    .catch Ljava/io/IOException; {:try_start_53 .. :try_end_56} :catch_57

    goto :goto_42

    .line 355
    :catch_57
    move-exception v3

    .line 356
    .local v3, "e":Ljava/io/IOException;
    invoke-virtual {v3}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_42

    .line 351
    .end local v3    # "e":Ljava/io/IOException;
    :catchall_5c
    move-exception v7

    .line 352
    :goto_5d
    if-eqz v4, :cond_62

    .line 353
    :try_start_5f
    invoke-virtual {v4}, Ljava/io/FileOutputStream;->close()V
    :try_end_62
    .catch Ljava/io/IOException; {:try_start_5f .. :try_end_62} :catch_63

    .line 357
    :cond_62
    :goto_62
    throw v7

    .line 355
    :catch_63
    move-exception v3

    .line 356
    .restart local v3    # "e":Ljava/io/IOException;
    invoke-virtual {v3}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_62

    .line 351
    .end local v3    # "e":Ljava/io/IOException;
    .end local v4    # "fos":Ljava/io/FileOutputStream;
    .restart local v5    # "fos":Ljava/io/FileOutputStream;
    :catchall_68
    move-exception v7

    move-object v4, v5

    .end local v5    # "fos":Ljava/io/FileOutputStream;
    .restart local v4    # "fos":Ljava/io/FileOutputStream;
    goto :goto_5d

    .line 348
    .end local v4    # "fos":Ljava/io/FileOutputStream;
    .restart local v5    # "fos":Ljava/io/FileOutputStream;
    :catch_6b
    move-exception v3

    move-object v4, v5

    .end local v5    # "fos":Ljava/io/FileOutputStream;
    .restart local v4    # "fos":Ljava/io/FileOutputStream;
    goto :goto_4e
.end method

.method public createThumnailFromData(Landroid/content/Context;Landroid/sec/clipboard/data/ClipboardData;)Ljava/lang/String;
    .registers 24
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "clip"    # Landroid/sec/clipboard/data/ClipboardData;

    .prologue
    .line 365
    const/4 v9, 0x0

    .line 366
    .local v9, "htmlClip":Landroid/sec/clipboard/data/list/ClipboardDataHtml;
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    .line 368
    .local v3, "contentResolver":Landroid/content/ContentResolver;
    const/16 v16, 0x180

    .line 369
    .local v16, "thumbImageWidth":I
    const/16 v15, 0x180

    .line 372
    .local v15, "thumbImageHeight":I
    :try_start_9
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v18

    const v19, 0x1050195

    invoke-virtual/range {v18 .. v19}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v18

    move/from16 v0, v18

    float-to-int v0, v0

    move/from16 v16, v0

    .line 373
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v18

    const v19, 0x1050194

    invoke-virtual/range {v18 .. v19}, Landroid/content/res/Resources;->getDimension(I)F
    :try_end_23
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_23} :catch_7c

    move-result v18

    move/from16 v0, v18

    float-to-int v15, v0

    .line 378
    :goto_27
    if-eqz p2, :cond_a3

    .line 379
    invoke-virtual/range {p2 .. p2}, Landroid/sec/clipboard/data/ClipboardData;->getFormat()I

    move-result v18

    const/16 v19, 0x4

    move/from16 v0, v18

    move/from16 v1, v19

    if-ne v0, v1, :cond_81

    move-object/from16 v9, p2

    .line 380
    check-cast v9, Landroid/sec/clipboard/data/list/ClipboardDataHtml;

    .line 394
    sget-boolean v18, Landroid/sec/clipboard/data/ClipboardConstants;->DEBUG:Z

    if-eqz v18, :cond_44

    .line 395
    const-string v18, "FileHelper"

    const-string v19, "Create preview image for html data in createThumnailFromData()"

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 397
    :cond_44
    const/4 v2, 0x0

    .line 398
    .local v2, "bm":Landroid/graphics/Bitmap;
    const-string v12, ""

    .line 400
    .local v12, "sFileName":Ljava/lang/String;
    :try_start_47
    invoke-virtual {v9}, Landroid/sec/clipboard/data/list/ClipboardDataHtml;->getHtml()Ljava/lang/String;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v18 .. v18}, Landroid/sec/clipboard/util/ClipboardProcText;->getImgFileNameFormHtml(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    .line 403
    invoke-static {v12}, Landroid/net/Uri;->decode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    .line 404
    invoke-static {v12}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/Object;->toString()Ljava/lang/String;
    :try_end_5e
    .catch Ljava/lang/Exception; {:try_start_47 .. :try_end_5e} :catch_c5

    move-result-object v12

    .line 409
    :goto_5f
    if-eqz v12, :cond_6f

    if-eqz v12, :cond_ca

    invoke-virtual {v12}, Ljava/lang/String;->length()I

    move-result v18

    const/16 v19, 0x1

    move/from16 v0, v18

    move/from16 v1, v19

    if-ge v0, v1, :cond_ca

    .line 410
    :cond_6f
    sget-boolean v18, Landroid/sec/clipboard/data/ClipboardConstants;->DEBUG:Z

    if-eqz v18, :cond_7a

    .line 411
    const-string v18, "FileHelper"

    const-string v19, "getFirstImage : FileName is empty."

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 413
    :cond_7a
    const/4 v14, 0x0

    .line 476
    .end local v2    # "bm":Landroid/graphics/Bitmap;
    .end local v12    # "sFileName":Ljava/lang/String;
    :goto_7b
    return-object v14

    .line 374
    :catch_7c
    move-exception v6

    .line 375
    .local v6, "e":Ljava/lang/Exception;
    invoke-virtual {v6}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_27

    .line 382
    .end local v6    # "e":Ljava/lang/Exception;
    :cond_81
    sget-boolean v18, Landroid/sec/clipboard/data/ClipboardConstants;->DEBUG:Z

    if-eqz v18, :cond_a1

    .line 383
    const-string v18, "FileHelper"

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "createThumnailFromData() is false because clip is not html type. clip.GetFomat() :"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {p2 .. p2}, Landroid/sec/clipboard/data/ClipboardData;->getFormat()I

    move-result v20

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 385
    :cond_a1
    const/4 v14, 0x0

    goto :goto_7b

    .line 388
    :cond_a3
    sget-boolean v18, Landroid/sec/clipboard/data/ClipboardConstants;->DEBUG:Z

    if-eqz v18, :cond_c3

    .line 389
    const-string v18, "FileHelper"

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "createThumnailFromData() is false because clip is invalid data. clip :"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 391
    :cond_c3
    const/4 v14, 0x0

    goto :goto_7b

    .line 405
    .restart local v2    # "bm":Landroid/graphics/Bitmap;
    .restart local v12    # "sFileName":Ljava/lang/String;
    :catch_c5
    move-exception v6

    .line 406
    .restart local v6    # "e":Ljava/lang/Exception;
    invoke-virtual {v6}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_5f

    .line 416
    .end local v6    # "e":Ljava/lang/Exception;
    :cond_ca
    const-string v18, "FileHelper"

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v20, "name = "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 418
    invoke-virtual {v12}, Ljava/lang/String;->length()I

    move-result v11

    .line 419
    .local v11, "length":I
    const-string v18, "data:"

    move-object/from16 v0, v18

    invoke-virtual {v12, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v18

    if-eqz v18, :cond_188

    .line 420
    const/16 v18, 0x2c

    move/from16 v0, v18

    invoke-virtual {v12, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v10

    .line 421
    .local v10, "index":I
    if-lez v10, :cond_12d

    if-ge v10, v11, :cond_12d

    const-string v18, "data:"

    invoke-virtual/range {v18 .. v18}, Ljava/lang/String;->length()I

    move-result v18

    move/from16 v0, v18

    invoke-virtual {v12, v0, v10}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v18

    const-string v19, ";base64"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v18

    if-eqz v18, :cond_12d

    .line 422
    add-int/lit8 v18, v10, 0x1

    move/from16 v0, v18

    invoke-virtual {v12, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/String;->getBytes()[B

    move-result-object v5

    .line 423
    .local v5, "decodedString":[B
    const/16 v18, 0x4

    move/from16 v0, v18

    invoke-static {v5, v0}, Landroid/util/Base64;->decode([BI)[B

    move-result-object v5

    .line 424
    move/from16 v0, v16

    invoke-static {v5, v0, v15}, Landroid/sec/clipboard/util/ClipboardDataBitmapUrl;->getResizeBitmap([BII)Landroid/graphics/Bitmap;

    move-result-object v2

    .line 449
    .end local v5    # "decodedString":[B
    .end local v10    # "index":I
    :cond_12d
    :goto_12d
    if-eqz v2, :cond_250

    .line 450
    new-instance v13, Ljava/io/File;

    const-string v18, "/data/clipboard/temp/"

    move-object/from16 v0, v18

    invoke-direct {v13, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 451
    .local v13, "tempFolder":Ljava/io/File;
    invoke-static {}, getInstance()Landroid/sec/clipboard/util/FileHelper;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v13}, makeDir(Ljava/io/File;)V

    .line 453
    new-instance v4, Ljava/io/File;

    const-string v18, "/data/clipboard/temp/"

    const-string/jumbo v19, "previewhtemlclipboarditem"

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    invoke-direct {v4, v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 454
    .local v4, "createFile":Ljava/io/File;
    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v18

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v19, "_thum.jpg"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v19, "_thum.jpg"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    .line 455
    .local v14, "thumFullPath":Ljava/lang/String;
    const/4 v7, 0x0

    .line 457
    .local v7, "fos":Ljava/io/FileOutputStream;
    :try_start_16b
    new-instance v8, Ljava/io/FileOutputStream;

    invoke-direct {v8, v14}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V
    :try_end_170
    .catch Ljava/lang/Exception; {:try_start_16b .. :try_end_170} :catch_233
    .catchall {:try_start_16b .. :try_end_170} :catchall_244

    .line 458
    .end local v7    # "fos":Ljava/io/FileOutputStream;
    .local v8, "fos":Ljava/io/FileOutputStream;
    if-eqz v8, :cond_17d

    .line 459
    :try_start_172
    sget-object v18, Landroid/graphics/Bitmap$CompressFormat;->PNG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v19, 0x32

    move-object/from16 v0, v18

    move/from16 v1, v19

    invoke-virtual {v2, v0, v1, v8}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z
    :try_end_17d
    .catch Ljava/lang/Exception; {:try_start_172 .. :try_end_17d} :catch_256
    .catchall {:try_start_172 .. :try_end_17d} :catchall_253

    .line 465
    :cond_17d
    if-eqz v8, :cond_182

    .line 466
    :try_start_17f
    invoke-virtual {v8}, Ljava/io/FileOutputStream;->close()V
    :try_end_182
    .catch Ljava/io/IOException; {:try_start_17f .. :try_end_182} :catch_22c

    :cond_182
    move-object v7, v8

    .line 473
    .end local v8    # "fos":Ljava/io/FileOutputStream;
    .restart local v7    # "fos":Ljava/io/FileOutputStream;
    :cond_183
    :goto_183
    invoke-virtual {v2}, Landroid/graphics/Bitmap;->recycle()V

    goto/16 :goto_7b

    .line 427
    .end local v4    # "createFile":Ljava/io/File;
    .end local v7    # "fos":Ljava/io/FileOutputStream;
    .end local v13    # "tempFolder":Ljava/io/File;
    .end local v14    # "thumFullPath":Ljava/lang/String;
    :cond_188
    sget v18, LENGTH_HTTP_URL:I

    move/from16 v0, v18

    if-le v11, v0, :cond_1a2

    const/16 v18, 0x0

    sget v19, LENGTH_HTTP_URL:I

    move/from16 v0, v18

    move/from16 v1, v19

    invoke-virtual {v12, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v18

    const-string v19, "http://"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v18

    if-eqz v18, :cond_1bc

    :cond_1a2
    sget v18, LENGTH_HTTPS_URL:I

    move/from16 v0, v18

    if-le v11, v0, :cond_1f2

    const/16 v18, 0x0

    sget v19, LENGTH_HTTPS_URL:I

    move/from16 v0, v18

    move/from16 v1, v19

    invoke-virtual {v12, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v18

    const-string v19, "https://"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v18

    if-nez v18, :cond_1f2

    .line 429
    :cond_1bc
    const-string v18, "FileHelper"

    const-string v19, "downloadSimpleBitmap"

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 432
    :try_start_1c3
    const-string v18, "FileHelper"

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "html : "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual {v9}, Landroid/sec/clipboard/data/list/ClipboardDataHtml;->getHtml()Ljava/lang/String;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 433
    move/from16 v0, v16

    invoke-static {v12, v0, v15}, Landroid/sec/clipboard/util/ClipboardDataBitmapUrl;->downloadSimpleBitmap(Ljava/lang/String;II)Landroid/graphics/Bitmap;
    :try_end_1e8
    .catch Ljava/lang/Exception; {:try_start_1c3 .. :try_end_1e8} :catch_1eb

    move-result-object v2

    goto/16 :goto_12d

    .line 434
    :catch_1eb
    move-exception v6

    .line 435
    .restart local v6    # "e":Ljava/lang/Exception;
    invoke-virtual {v6}, Ljava/lang/Exception;->printStackTrace()V

    .line 436
    const/4 v14, 0x0

    goto/16 :goto_7b

    .line 439
    .end local v6    # "e":Ljava/lang/Exception;
    :cond_1f2
    if-eqz v3, :cond_223

    sget v18, LENGTH_CONTENT_URI:I

    move/from16 v0, v18

    if-le v11, v0, :cond_223

    const/16 v18, 0x0

    sget v19, LENGTH_CONTENT_URI:I

    move/from16 v0, v18

    move/from16 v1, v19

    invoke-virtual {v12, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v18

    const-string v19, "content://"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v18

    if-nez v18, :cond_223

    .line 441
    const-string v18, "FileHelper"

    const-string v19, "getUriPathBitmap..."

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 442
    invoke-static {v12}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v17

    .line 443
    .local v17, "uri":Landroid/net/Uri;
    move-object/from16 v0, v17

    move/from16 v1, v16

    invoke-static {v3, v0, v1, v15}, Landroid/sec/clipboard/util/ClipboardDataBitmapUrl;->getUriPathBitmap(Landroid/content/ContentResolver;Landroid/net/Uri;II)Landroid/graphics/Bitmap;

    move-result-object v2

    .line 444
    goto/16 :goto_12d

    .line 445
    .end local v17    # "uri":Landroid/net/Uri;
    :cond_223
    const-string v18, "FileHelper"

    const-string v19, "invalid data"

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_12d

    .line 468
    .restart local v4    # "createFile":Ljava/io/File;
    .restart local v8    # "fos":Ljava/io/FileOutputStream;
    .restart local v13    # "tempFolder":Ljava/io/File;
    .restart local v14    # "thumFullPath":Ljava/lang/String;
    :catch_22c
    move-exception v6

    .line 469
    .local v6, "e":Ljava/io/IOException;
    invoke-virtual {v6}, Ljava/io/IOException;->printStackTrace()V

    move-object v7, v8

    .line 471
    .end local v8    # "fos":Ljava/io/FileOutputStream;
    .restart local v7    # "fos":Ljava/io/FileOutputStream;
    goto/16 :goto_183

    .line 461
    .end local v6    # "e":Ljava/io/IOException;
    :catch_233
    move-exception v6

    .line 462
    .local v6, "e":Ljava/lang/Exception;
    :goto_234
    :try_start_234
    invoke-virtual {v6}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_237
    .catchall {:try_start_234 .. :try_end_237} :catchall_244

    .line 465
    if-eqz v7, :cond_183

    .line 466
    :try_start_239
    invoke-virtual {v7}, Ljava/io/FileOutputStream;->close()V
    :try_end_23c
    .catch Ljava/io/IOException; {:try_start_239 .. :try_end_23c} :catch_23e

    goto/16 :goto_183

    .line 468
    :catch_23e
    move-exception v6

    .line 469
    .local v6, "e":Ljava/io/IOException;
    invoke-virtual {v6}, Ljava/io/IOException;->printStackTrace()V

    goto/16 :goto_183

    .line 464
    .end local v6    # "e":Ljava/io/IOException;
    :catchall_244
    move-exception v18

    .line 465
    :goto_245
    if-eqz v7, :cond_24a

    .line 466
    :try_start_247
    invoke-virtual {v7}, Ljava/io/FileOutputStream;->close()V
    :try_end_24a
    .catch Ljava/io/IOException; {:try_start_247 .. :try_end_24a} :catch_24b

    .line 470
    :cond_24a
    :goto_24a
    throw v18

    .line 468
    :catch_24b
    move-exception v6

    .line 469
    .restart local v6    # "e":Ljava/io/IOException;
    invoke-virtual {v6}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_24a

    .line 476
    .end local v4    # "createFile":Ljava/io/File;
    .end local v6    # "e":Ljava/io/IOException;
    .end local v7    # "fos":Ljava/io/FileOutputStream;
    .end local v13    # "tempFolder":Ljava/io/File;
    .end local v14    # "thumFullPath":Ljava/lang/String;
    :cond_250
    const/4 v14, 0x0

    goto/16 :goto_7b

    .line 464
    .restart local v4    # "createFile":Ljava/io/File;
    .restart local v8    # "fos":Ljava/io/FileOutputStream;
    .restart local v13    # "tempFolder":Ljava/io/File;
    .restart local v14    # "thumFullPath":Ljava/lang/String;
    :catchall_253
    move-exception v18

    move-object v7, v8

    .end local v8    # "fos":Ljava/io/FileOutputStream;
    .restart local v7    # "fos":Ljava/io/FileOutputStream;
    goto :goto_245

    .line 461
    .end local v7    # "fos":Ljava/io/FileOutputStream;
    .restart local v8    # "fos":Ljava/io/FileOutputStream;
    :catch_256
    move-exception v6

    move-object v7, v8

    .end local v8    # "fos":Ljava/io/FileOutputStream;
    .restart local v7    # "fos":Ljava/io/FileOutputStream;
    goto :goto_234
.end method

.method public createThumnailImage(Ljava/lang/String;)Z
    .registers 11
    .param p1, "filePath"    # Ljava/lang/String;

    .prologue
    .line 257
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "_thum.jpg"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 258
    .local v6, "thumFullPath":Ljava/lang/String;
    const/4 v2, 0x0

    .line 259
    .local v2, "bm":Landroid/graphics/Bitmap;
    const/4 v0, 0x0

    .line 260
    .local v0, "Result":Z
    const/16 v7, 0x99

    const/16 v8, 0x56

    invoke-direct {p0, p1, v7, v8}, getBitmap(Ljava/lang/String;II)Landroid/graphics/Bitmap;

    move-result-object v2

    .line 261
    if-nez v2, :cond_2c

    .line 262
    sget-boolean v7, Landroid/sec/clipboard/data/ClipboardConstants;->DEBUG:Z

    if-eqz v7, :cond_2a

    .line 263
    const-string v7, "FileHelper"

    const-string v8, "createThumnailImage Bitmap is null"

    invoke-static {v7, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2a
    move v1, v0

    .line 289
    .end local v0    # "Result":Z
    .local v1, "Result":I
    :goto_2b
    return v1

    .line 268
    .end local v1    # "Result":I
    .restart local v0    # "Result":Z
    :cond_2c
    const/4 v4, 0x0

    .line 271
    .local v4, "fos":Ljava/io/FileOutputStream;
    :try_start_2d
    new-instance v5, Ljava/io/FileOutputStream;

    invoke-direct {v5, v6}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V
    :try_end_32
    .catch Ljava/lang/Exception; {:try_start_2d .. :try_end_32} :catch_4d
    .catchall {:try_start_2d .. :try_end_32} :catchall_5c

    .line 273
    .end local v4    # "fos":Ljava/io/FileOutputStream;
    .local v5, "fos":Ljava/io/FileOutputStream;
    if-eqz v5, :cond_3c

    .line 274
    :try_start_34
    sget-object v7, Landroid/graphics/Bitmap$CompressFormat;->PNG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v8, 0x32

    invoke-virtual {v2, v7, v8, v5}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z
    :try_end_3b
    .catch Ljava/lang/Exception; {:try_start_34 .. :try_end_3b} :catch_6b
    .catchall {:try_start_34 .. :try_end_3b} :catchall_68

    .line 275
    const/4 v0, 0x1

    .line 281
    :cond_3c
    if-eqz v5, :cond_41

    .line 282
    :try_start_3e
    invoke-virtual {v5}, Ljava/io/FileOutputStream;->close()V
    :try_end_41
    .catch Ljava/io/IOException; {:try_start_3e .. :try_end_41} :catch_47

    :cond_41
    move-object v4, v5

    .line 288
    .end local v5    # "fos":Ljava/io/FileOutputStream;
    .restart local v4    # "fos":Ljava/io/FileOutputStream;
    :cond_42
    :goto_42
    invoke-virtual {v2}, Landroid/graphics/Bitmap;->recycle()V

    move v1, v0

    .line 289
    .restart local v1    # "Result":I
    goto :goto_2b

    .line 284
    .end local v1    # "Result":I
    .end local v4    # "fos":Ljava/io/FileOutputStream;
    .restart local v5    # "fos":Ljava/io/FileOutputStream;
    :catch_47
    move-exception v3

    .line 285
    .local v3, "e":Ljava/io/IOException;
    invoke-virtual {v3}, Ljava/io/IOException;->printStackTrace()V

    move-object v4, v5

    .line 287
    .end local v5    # "fos":Ljava/io/FileOutputStream;
    .restart local v4    # "fos":Ljava/io/FileOutputStream;
    goto :goto_42

    .line 277
    .end local v3    # "e":Ljava/io/IOException;
    :catch_4d
    move-exception v3

    .line 278
    .local v3, "e":Ljava/lang/Exception;
    :goto_4e
    :try_start_4e
    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_51
    .catchall {:try_start_4e .. :try_end_51} :catchall_5c

    .line 281
    if-eqz v4, :cond_42

    .line 282
    :try_start_53
    invoke-virtual {v4}, Ljava/io/FileOutputStream;->close()V
    :try_end_56
    .catch Ljava/io/IOException; {:try_start_53 .. :try_end_56} :catch_57

    goto :goto_42

    .line 284
    :catch_57
    move-exception v3

    .line 285
    .local v3, "e":Ljava/io/IOException;
    invoke-virtual {v3}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_42

    .line 280
    .end local v3    # "e":Ljava/io/IOException;
    :catchall_5c
    move-exception v7

    .line 281
    :goto_5d
    if-eqz v4, :cond_62

    .line 282
    :try_start_5f
    invoke-virtual {v4}, Ljava/io/FileOutputStream;->close()V
    :try_end_62
    .catch Ljava/io/IOException; {:try_start_5f .. :try_end_62} :catch_63

    .line 286
    :cond_62
    :goto_62
    throw v7

    .line 284
    :catch_63
    move-exception v3

    .line 285
    .restart local v3    # "e":Ljava/io/IOException;
    invoke-virtual {v3}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_62

    .line 280
    .end local v3    # "e":Ljava/io/IOException;
    .end local v4    # "fos":Ljava/io/FileOutputStream;
    .restart local v5    # "fos":Ljava/io/FileOutputStream;
    :catchall_68
    move-exception v7

    move-object v4, v5

    .end local v5    # "fos":Ljava/io/FileOutputStream;
    .restart local v4    # "fos":Ljava/io/FileOutputStream;
    goto :goto_5d

    .line 277
    .end local v4    # "fos":Ljava/io/FileOutputStream;
    .restart local v5    # "fos":Ljava/io/FileOutputStream;
    :catch_6b
    move-exception v3

    move-object v4, v5

    .end local v5    # "fos":Ljava/io/FileOutputStream;
    .restart local v4    # "fos":Ljava/io/FileOutputStream;
    goto :goto_4e
.end method

.method public createThumnailImage(Ljava/lang/String;II)Z
    .registers 13
    .param p1, "filePath"    # Ljava/lang/String;
    .param p2, "width"    # I
    .param p3, "height"    # I

    .prologue
    .line 293
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "_thum.jpg"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 294
    .local v6, "thumFullPath":Ljava/lang/String;
    invoke-direct {p0, p1, p2, p3}, getBitmap(Ljava/lang/String;II)Landroid/graphics/Bitmap;

    move-result-object v2

    .line 295
    .local v2, "bm":Landroid/graphics/Bitmap;
    const/4 v0, 0x0

    .line 296
    .local v0, "Result":Z
    if-nez v2, :cond_27

    .line 297
    sget-boolean v7, Landroid/sec/clipboard/data/ClipboardConstants;->DEBUG:Z

    if-eqz v7, :cond_25

    .line 298
    const-string v7, "FileHelper"

    const-string v8, "createThumnailImage Bitmap is null"

    invoke-static {v7, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_25
    move v1, v0

    .line 323
    .end local v0    # "Result":Z
    .local v1, "Result":I
    :goto_26
    return v1

    .line 302
    .end local v1    # "Result":I
    .restart local v0    # "Result":Z
    :cond_27
    const/4 v4, 0x0

    .line 304
    .local v4, "fos":Ljava/io/FileOutputStream;
    :try_start_28
    new-instance v5, Ljava/io/FileOutputStream;

    invoke-direct {v5, v6}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V
    :try_end_2d
    .catch Ljava/lang/Exception; {:try_start_28 .. :try_end_2d} :catch_48
    .catchall {:try_start_28 .. :try_end_2d} :catchall_57

    .line 306
    .end local v4    # "fos":Ljava/io/FileOutputStream;
    .local v5, "fos":Ljava/io/FileOutputStream;
    if-eqz v5, :cond_37

    .line 307
    :try_start_2f
    sget-object v7, Landroid/graphics/Bitmap$CompressFormat;->PNG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v8, 0x32

    invoke-virtual {v2, v7, v8, v5}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z
    :try_end_36
    .catch Ljava/lang/Exception; {:try_start_2f .. :try_end_36} :catch_66
    .catchall {:try_start_2f .. :try_end_36} :catchall_63

    .line 308
    const/4 v0, 0x1

    .line 314
    :cond_37
    if-eqz v5, :cond_3c

    .line 315
    :try_start_39
    invoke-virtual {v5}, Ljava/io/FileOutputStream;->close()V
    :try_end_3c
    .catch Ljava/io/IOException; {:try_start_39 .. :try_end_3c} :catch_42

    :cond_3c
    move-object v4, v5

    .line 322
    .end local v5    # "fos":Ljava/io/FileOutputStream;
    .restart local v4    # "fos":Ljava/io/FileOutputStream;
    :cond_3d
    :goto_3d
    invoke-virtual {v2}, Landroid/graphics/Bitmap;->recycle()V

    move v1, v0

    .line 323
    .restart local v1    # "Result":I
    goto :goto_26

    .line 317
    .end local v1    # "Result":I
    .end local v4    # "fos":Ljava/io/FileOutputStream;
    .restart local v5    # "fos":Ljava/io/FileOutputStream;
    :catch_42
    move-exception v3

    .line 318
    .local v3, "e":Ljava/io/IOException;
    invoke-virtual {v3}, Ljava/io/IOException;->printStackTrace()V

    move-object v4, v5

    .line 320
    .end local v5    # "fos":Ljava/io/FileOutputStream;
    .restart local v4    # "fos":Ljava/io/FileOutputStream;
    goto :goto_3d

    .line 310
    .end local v3    # "e":Ljava/io/IOException;
    :catch_48
    move-exception v3

    .line 311
    .local v3, "e":Ljava/lang/Exception;
    :goto_49
    :try_start_49
    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_4c
    .catchall {:try_start_49 .. :try_end_4c} :catchall_57

    .line 314
    if-eqz v4, :cond_3d

    .line 315
    :try_start_4e
    invoke-virtual {v4}, Ljava/io/FileOutputStream;->close()V
    :try_end_51
    .catch Ljava/io/IOException; {:try_start_4e .. :try_end_51} :catch_52

    goto :goto_3d

    .line 317
    :catch_52
    move-exception v3

    .line 318
    .local v3, "e":Ljava/io/IOException;
    invoke-virtual {v3}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_3d

    .line 313
    .end local v3    # "e":Ljava/io/IOException;
    :catchall_57
    move-exception v7

    .line 314
    :goto_58
    if-eqz v4, :cond_5d

    .line 315
    :try_start_5a
    invoke-virtual {v4}, Ljava/io/FileOutputStream;->close()V
    :try_end_5d
    .catch Ljava/io/IOException; {:try_start_5a .. :try_end_5d} :catch_5e

    .line 319
    :cond_5d
    :goto_5d
    throw v7

    .line 317
    :catch_5e
    move-exception v3

    .line 318
    .restart local v3    # "e":Ljava/io/IOException;
    invoke-virtual {v3}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_5d

    .line 313
    .end local v3    # "e":Ljava/io/IOException;
    .end local v4    # "fos":Ljava/io/FileOutputStream;
    .restart local v5    # "fos":Ljava/io/FileOutputStream;
    :catchall_63
    move-exception v7

    move-object v4, v5

    .end local v5    # "fos":Ljava/io/FileOutputStream;
    .restart local v4    # "fos":Ljava/io/FileOutputStream;
    goto :goto_58

    .line 310
    .end local v4    # "fos":Ljava/io/FileOutputStream;
    .restart local v5    # "fos":Ljava/io/FileOutputStream;
    :catch_66
    move-exception v3

    move-object v4, v5

    .end local v5    # "fos":Ljava/io/FileOutputStream;
    .restart local v4    # "fos":Ljava/io/FileOutputStream;
    goto :goto_49
.end method

.method public delete(Ljava/io/File;)V
    .registers 8
    .param p1, "file"    # Ljava/io/File;

    .prologue
    .line 619
    invoke-virtual {p1}, Ljava/io/File;->isFile()Z

    move-result v5

    if-eqz v5, :cond_a

    .line 620
    invoke-virtual {p1}, Ljava/io/File;->delete()Z

    .line 633
    :cond_9
    :goto_9
    return-void

    .line 624
    :cond_a
    invoke-virtual {p1}, Ljava/io/File;->isDirectory()Z

    move-result v5

    if-eqz v5, :cond_9

    .line 625
    invoke-virtual {p1}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v4

    .line 626
    .local v4, "list":[Ljava/io/File;
    if-eqz v4, :cond_9

    .line 627
    move-object v0, v4

    .local v0, "arr$":[Ljava/io/File;
    array-length v3, v0

    .local v3, "len$":I
    const/4 v2, 0x0

    .local v2, "i$":I
    :goto_19
    if-ge v2, v3, :cond_23

    aget-object v1, v0, v2

    .line 628
    .local v1, "f":Ljava/io/File;
    invoke-virtual {p0, v1}, delete(Ljava/io/File;)V

    .line 627
    add-int/lit8 v2, v2, 0x1

    goto :goto_19

    .line 630
    .end local v1    # "f":Ljava/io/File;
    :cond_23
    invoke-virtual {p1}, Ljava/io/File;->delete()Z

    goto :goto_9
.end method

.method public fileCopy(Landroid/os/ParcelFileDescriptor;Ljava/io/File;)Z
    .registers 21
    .param p1, "pfd"    # Landroid/os/ParcelFileDescriptor;
    .param p2, "dest"    # Ljava/io/File;

    .prologue
    .line 162
    const/4 v2, 0x0

    .line 163
    .local v2, "Result":Z
    const/4 v12, 0x0

    .line 164
    .local v12, "inputStream":Ljava/io/FileInputStream;
    const/4 v14, 0x0

    .line 165
    .local v14, "outputStream":Ljava/io/FileOutputStream;
    const/4 v3, 0x0

    .line 166
    .local v3, "fcin":Ljava/nio/channels/FileChannel;
    const/4 v8, 0x0

    .line 167
    .local v8, "fcout":Ljava/nio/channels/FileChannel;
    invoke-virtual/range {p1 .. p1}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v11

    .line 169
    .local v11, "fd":Ljava/io/FileDescriptor;
    :try_start_9
    invoke-virtual/range {p2 .. p2}, Ljava/io/File;->createNewFile()Z

    .line 170
    invoke-virtual/range {p2 .. p2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v4

    const/16 v5, 0x1fd

    const/16 v16, -0x1

    const/16 v17, -0x1

    move/from16 v0, v16

    move/from16 v1, v17

    invoke-static {v4, v5, v0, v1}, Landroid/os/FileUtils;->setPermissions(Ljava/lang/String;III)I

    .line 171
    new-instance v13, Ljava/io/FileInputStream;

    invoke-direct {v13, v11}, Ljava/io/FileInputStream;-><init>(Ljava/io/FileDescriptor;)V
    :try_end_22
    .catch Ljava/io/FileNotFoundException; {:try_start_9 .. :try_end_22} :catch_5f
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_22} :catch_83
    .catchall {:try_start_9 .. :try_end_22} :catchall_a6

    .line 172
    .end local v12    # "inputStream":Ljava/io/FileInputStream;
    .local v13, "inputStream":Ljava/io/FileInputStream;
    :try_start_22
    new-instance v15, Ljava/io/FileOutputStream;

    move-object/from16 v0, p2

    invoke-direct {v15, v0}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_29
    .catch Ljava/io/FileNotFoundException; {:try_start_22 .. :try_end_29} :catch_d4
    .catch Ljava/io/IOException; {:try_start_22 .. :try_end_29} :catch_cd
    .catchall {:try_start_22 .. :try_end_29} :catchall_c6

    .line 173
    .end local v14    # "outputStream":Ljava/io/FileOutputStream;
    .local v15, "outputStream":Ljava/io/FileOutputStream;
    :try_start_29
    invoke-virtual {v13}, Ljava/io/FileInputStream;->getChannel()Ljava/nio/channels/FileChannel;

    move-result-object v3

    .line 174
    invoke-virtual {v15}, Ljava/io/FileOutputStream;->getChannel()Ljava/nio/channels/FileChannel;

    move-result-object v8

    .line 175
    invoke-virtual {v3}, Ljava/nio/channels/FileChannel;->size()J

    move-result-wide v6

    .line 176
    .local v6, "lSize":J
    const-wide/16 v4, 0x0

    invoke-virtual/range {v3 .. v8}, Ljava/nio/channels/FileChannel;->transferTo(JJLjava/nio/channels/WritableByteChannel;)J
    :try_end_3a
    .catch Ljava/io/FileNotFoundException; {:try_start_29 .. :try_end_3a} :catch_d7
    .catch Ljava/io/IOException; {:try_start_29 .. :try_end_3a} :catch_d0
    .catchall {:try_start_29 .. :try_end_3a} :catchall_c9

    .line 177
    const/4 v2, 0x1

    .line 185
    if-eqz v3, :cond_40

    .line 186
    :try_start_3d
    invoke-virtual {v3}, Ljava/nio/channels/FileChannel;->close()V

    .line 188
    :cond_40
    if-eqz v8, :cond_45

    .line 189
    invoke-virtual {v8}, Ljava/nio/channels/FileChannel;->close()V

    .line 191
    :cond_45
    if-eqz v13, :cond_4a

    .line 192
    invoke-virtual {v13}, Ljava/io/FileInputStream;->close()V

    .line 194
    :cond_4a
    if-eqz v15, :cond_4f

    .line 195
    invoke-virtual {v15}, Ljava/io/FileOutputStream;->close()V

    .line 198
    :cond_4f
    invoke-virtual/range {p1 .. p1}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_52
    .catch Ljava/io/IOException; {:try_start_3d .. :try_end_52} :catch_58

    .line 199
    const/16 p1, 0x0

    move-object v14, v15

    .end local v15    # "outputStream":Ljava/io/FileOutputStream;
    .restart local v14    # "outputStream":Ljava/io/FileOutputStream;
    move-object v12, v13

    .end local v6    # "lSize":J
    .end local v13    # "inputStream":Ljava/io/FileInputStream;
    .restart local v12    # "inputStream":Ljava/io/FileInputStream;
    :goto_56
    move v9, v2

    .line 204
    .end local v2    # "Result":Z
    .local v9, "Result":I
    :goto_57
    return v9

    .line 200
    .end local v9    # "Result":I
    .end local v12    # "inputStream":Ljava/io/FileInputStream;
    .end local v14    # "outputStream":Ljava/io/FileOutputStream;
    .restart local v2    # "Result":Z
    .restart local v6    # "lSize":J
    .restart local v13    # "inputStream":Ljava/io/FileInputStream;
    .restart local v15    # "outputStream":Ljava/io/FileOutputStream;
    :catch_58
    move-exception v10

    .line 201
    .local v10, "e":Ljava/io/IOException;
    invoke-virtual {v10}, Ljava/io/IOException;->printStackTrace()V

    move-object v14, v15

    .end local v15    # "outputStream":Ljava/io/FileOutputStream;
    .restart local v14    # "outputStream":Ljava/io/FileOutputStream;
    move-object v12, v13

    .line 203
    .end local v13    # "inputStream":Ljava/io/FileInputStream;
    .restart local v12    # "inputStream":Ljava/io/FileInputStream;
    goto :goto_56

    .line 178
    .end local v6    # "lSize":J
    .end local v10    # "e":Ljava/io/IOException;
    :catch_5f
    move-exception v10

    .line 179
    .local v10, "e":Ljava/io/FileNotFoundException;
    :goto_60
    :try_start_60
    invoke-virtual {v10}, Ljava/io/FileNotFoundException;->printStackTrace()V
    :try_end_63
    .catchall {:try_start_60 .. :try_end_63} :catchall_a6

    .line 185
    if-eqz v3, :cond_68

    .line 186
    :try_start_65
    invoke-virtual {v3}, Ljava/nio/channels/FileChannel;->close()V

    .line 188
    :cond_68
    if-eqz v8, :cond_6d

    .line 189
    invoke-virtual {v8}, Ljava/nio/channels/FileChannel;->close()V

    .line 191
    :cond_6d
    if-eqz v12, :cond_72

    .line 192
    invoke-virtual {v12}, Ljava/io/FileInputStream;->close()V

    .line 194
    :cond_72
    if-eqz v14, :cond_77

    .line 195
    invoke-virtual {v14}, Ljava/io/FileOutputStream;->close()V

    .line 198
    :cond_77
    invoke-virtual/range {p1 .. p1}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_7a
    .catch Ljava/io/IOException; {:try_start_65 .. :try_end_7a} :catch_7e

    .line 199
    const/16 p1, 0x0

    .end local v10    # "e":Ljava/io/FileNotFoundException;
    :goto_7c
    move v9, v2

    .line 202
    .restart local v9    # "Result":I
    goto :goto_57

    .line 200
    .end local v9    # "Result":I
    .restart local v10    # "e":Ljava/io/FileNotFoundException;
    :catch_7e
    move-exception v10

    .line 201
    .local v10, "e":Ljava/io/IOException;
    invoke-virtual {v10}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_7c

    .line 181
    .end local v10    # "e":Ljava/io/IOException;
    :catch_83
    move-exception v10

    .line 182
    .restart local v10    # "e":Ljava/io/IOException;
    :goto_84
    :try_start_84
    invoke-virtual {v10}, Ljava/io/IOException;->printStackTrace()V
    :try_end_87
    .catchall {:try_start_84 .. :try_end_87} :catchall_a6

    .line 185
    if-eqz v3, :cond_8c

    .line 186
    :try_start_89
    invoke-virtual {v3}, Ljava/nio/channels/FileChannel;->close()V

    .line 188
    :cond_8c
    if-eqz v8, :cond_91

    .line 189
    invoke-virtual {v8}, Ljava/nio/channels/FileChannel;->close()V

    .line 191
    :cond_91
    if-eqz v12, :cond_96

    .line 192
    invoke-virtual {v12}, Ljava/io/FileInputStream;->close()V

    .line 194
    :cond_96
    if-eqz v14, :cond_9b

    .line 195
    invoke-virtual {v14}, Ljava/io/FileOutputStream;->close()V

    .line 198
    :cond_9b
    invoke-virtual/range {p1 .. p1}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_9e
    .catch Ljava/io/IOException; {:try_start_89 .. :try_end_9e} :catch_a1

    .line 199
    const/16 p1, 0x0

    goto :goto_56

    .line 200
    :catch_a1
    move-exception v10

    .line 201
    invoke-virtual {v10}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_56

    .line 184
    .end local v10    # "e":Ljava/io/IOException;
    :catchall_a6
    move-exception v4

    .line 185
    :goto_a7
    if-eqz v3, :cond_ac

    .line 186
    :try_start_a9
    invoke-virtual {v3}, Ljava/nio/channels/FileChannel;->close()V

    .line 188
    :cond_ac
    if-eqz v8, :cond_b1

    .line 189
    invoke-virtual {v8}, Ljava/nio/channels/FileChannel;->close()V

    .line 191
    :cond_b1
    if-eqz v12, :cond_b6

    .line 192
    invoke-virtual {v12}, Ljava/io/FileInputStream;->close()V

    .line 194
    :cond_b6
    if-eqz v14, :cond_bb

    .line 195
    invoke-virtual {v14}, Ljava/io/FileOutputStream;->close()V

    .line 198
    :cond_bb
    invoke-virtual/range {p1 .. p1}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_be
    .catch Ljava/io/IOException; {:try_start_a9 .. :try_end_be} :catch_c1

    .line 199
    const/16 p1, 0x0

    .line 202
    :goto_c0
    throw v4

    .line 200
    :catch_c1
    move-exception v10

    .line 201
    .restart local v10    # "e":Ljava/io/IOException;
    invoke-virtual {v10}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_c0

    .line 184
    .end local v10    # "e":Ljava/io/IOException;
    .end local v12    # "inputStream":Ljava/io/FileInputStream;
    .restart local v13    # "inputStream":Ljava/io/FileInputStream;
    :catchall_c6
    move-exception v4

    move-object v12, v13

    .end local v13    # "inputStream":Ljava/io/FileInputStream;
    .restart local v12    # "inputStream":Ljava/io/FileInputStream;
    goto :goto_a7

    .end local v12    # "inputStream":Ljava/io/FileInputStream;
    .end local v14    # "outputStream":Ljava/io/FileOutputStream;
    .restart local v13    # "inputStream":Ljava/io/FileInputStream;
    .restart local v15    # "outputStream":Ljava/io/FileOutputStream;
    :catchall_c9
    move-exception v4

    move-object v14, v15

    .end local v15    # "outputStream":Ljava/io/FileOutputStream;
    .restart local v14    # "outputStream":Ljava/io/FileOutputStream;
    move-object v12, v13

    .end local v13    # "inputStream":Ljava/io/FileInputStream;
    .restart local v12    # "inputStream":Ljava/io/FileInputStream;
    goto :goto_a7

    .line 181
    .end local v12    # "inputStream":Ljava/io/FileInputStream;
    .restart local v13    # "inputStream":Ljava/io/FileInputStream;
    :catch_cd
    move-exception v10

    move-object v12, v13

    .end local v13    # "inputStream":Ljava/io/FileInputStream;
    .restart local v12    # "inputStream":Ljava/io/FileInputStream;
    goto :goto_84

    .end local v12    # "inputStream":Ljava/io/FileInputStream;
    .end local v14    # "outputStream":Ljava/io/FileOutputStream;
    .restart local v13    # "inputStream":Ljava/io/FileInputStream;
    .restart local v15    # "outputStream":Ljava/io/FileOutputStream;
    :catch_d0
    move-exception v10

    move-object v14, v15

    .end local v15    # "outputStream":Ljava/io/FileOutputStream;
    .restart local v14    # "outputStream":Ljava/io/FileOutputStream;
    move-object v12, v13

    .end local v13    # "inputStream":Ljava/io/FileInputStream;
    .restart local v12    # "inputStream":Ljava/io/FileInputStream;
    goto :goto_84

    .line 178
    .end local v12    # "inputStream":Ljava/io/FileInputStream;
    .restart local v13    # "inputStream":Ljava/io/FileInputStream;
    :catch_d4
    move-exception v10

    move-object v12, v13

    .end local v13    # "inputStream":Ljava/io/FileInputStream;
    .restart local v12    # "inputStream":Ljava/io/FileInputStream;
    goto :goto_60

    .end local v12    # "inputStream":Ljava/io/FileInputStream;
    .end local v14    # "outputStream":Ljava/io/FileOutputStream;
    .restart local v13    # "inputStream":Ljava/io/FileInputStream;
    .restart local v15    # "outputStream":Ljava/io/FileOutputStream;
    :catch_d7
    move-exception v10

    move-object v14, v15

    .end local v15    # "outputStream":Ljava/io/FileOutputStream;
    .restart local v14    # "outputStream":Ljava/io/FileOutputStream;
    move-object v12, v13

    .end local v13    # "inputStream":Ljava/io/FileInputStream;
    .restart local v12    # "inputStream":Ljava/io/FileInputStream;
    goto :goto_60
.end method

.method public fileCopy(Ljava/io/File;Ljava/io/File;)Z
    .registers 20
    .param p1, "src"    # Ljava/io/File;
    .param p2, "dest"    # Ljava/io/File;

    .prologue
    .line 81
    const/4 v2, 0x0

    .line 82
    .local v2, "Result":Z
    const/4 v11, 0x0

    .line 83
    .local v11, "inputStream":Ljava/io/FileInputStream;
    const/4 v13, 0x0

    .line 86
    .local v13, "outputStream":Ljava/io/FileOutputStream;
    :try_start_3
    invoke-virtual/range {p2 .. p2}, Ljava/io/File;->createNewFile()Z

    .line 87
    invoke-virtual/range {p2 .. p2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v4

    const/16 v5, 0x1fd

    const/4 v15, -0x1

    const/16 v16, -0x1

    move/from16 v0, v16

    invoke-static {v4, v5, v15, v0}, Landroid/os/FileUtils;->setPermissions(Ljava/lang/String;III)I

    .line 88
    new-instance v12, Ljava/io/FileInputStream;

    move-object/from16 v0, p1

    invoke-direct {v12, v0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_1b
    .catch Ljava/io/FileNotFoundException; {:try_start_3 .. :try_end_1b} :catch_5a
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_1b} :catch_60

    .end local v11    # "inputStream":Ljava/io/FileInputStream;
    .local v12, "inputStream":Ljava/io/FileInputStream;
    move-object v11, v12

    .line 98
    .end local v12    # "inputStream":Ljava/io/FileInputStream;
    .restart local v11    # "inputStream":Ljava/io/FileInputStream;
    :goto_1c
    :try_start_1c
    new-instance v14, Ljava/io/FileOutputStream;

    move-object/from16 v0, p2

    invoke-direct {v14, v0}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_23
    .catch Ljava/io/FileNotFoundException; {:try_start_1c .. :try_end_23} :catch_65

    .line 104
    .end local v13    # "outputStream":Ljava/io/FileOutputStream;
    .local v14, "outputStream":Ljava/io/FileOutputStream;
    if-eqz v11, :cond_27

    if-nez v14, :cond_70

    .line 105
    :cond_27
    sget-boolean v4, Landroid/sec/clipboard/data/ClipboardConstants;->DEBUG:Z

    if-eqz v4, :cond_4d

    .line 106
    const-string v4, "FileHelper"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "break fileCopy()...because of inputStream :"

    invoke-virtual {v5, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v15, ", or outputStream :"

    invoke-virtual {v5, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 109
    :cond_4d
    if-eqz v14, :cond_52

    .line 110
    :try_start_4f
    invoke-virtual {v14}, Ljava/io/FileOutputStream;->close()V

    .line 112
    :cond_52
    if-eqz v11, :cond_57

    .line 113
    invoke-virtual {v11}, Ljava/io/FileInputStream;->close()V
    :try_end_57
    .catch Ljava/io/IOException; {:try_start_4f .. :try_end_57} :catch_6b

    :cond_57
    :goto_57
    move-object v13, v14

    .end local v14    # "outputStream":Ljava/io/FileOutputStream;
    .restart local v13    # "outputStream":Ljava/io/FileOutputStream;
    move v9, v2

    .line 158
    .end local v2    # "Result":Z
    .local v9, "Result":I
    :goto_59
    return v9

    .line 90
    .end local v9    # "Result":I
    .restart local v2    # "Result":Z
    :catch_5a
    move-exception v10

    .line 91
    .local v10, "e":Ljava/io/FileNotFoundException;
    invoke-virtual {v10}, Ljava/io/FileNotFoundException;->printStackTrace()V

    move v9, v2

    .line 92
    .restart local v9    # "Result":I
    goto :goto_59

    .line 93
    .end local v9    # "Result":I
    .end local v10    # "e":Ljava/io/FileNotFoundException;
    :catch_60
    move-exception v10

    .line 94
    .local v10, "e":Ljava/io/IOException;
    invoke-virtual {v10}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_1c

    .line 99
    .end local v10    # "e":Ljava/io/IOException;
    :catch_65
    move-exception v10

    .line 100
    .local v10, "e":Ljava/io/FileNotFoundException;
    invoke-virtual {v10}, Ljava/io/FileNotFoundException;->printStackTrace()V

    move v9, v2

    .line 101
    .restart local v9    # "Result":I
    goto :goto_59

    .line 115
    .end local v9    # "Result":I
    .end local v10    # "e":Ljava/io/FileNotFoundException;
    .end local v13    # "outputStream":Ljava/io/FileOutputStream;
    .restart local v14    # "outputStream":Ljava/io/FileOutputStream;
    :catch_6b
    move-exception v10

    .line 116
    .local v10, "e":Ljava/io/IOException;
    invoke-virtual {v10}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_57

    .line 121
    .end local v10    # "e":Ljava/io/IOException;
    :cond_70
    invoke-virtual {v11}, Ljava/io/FileInputStream;->getChannel()Ljava/nio/channels/FileChannel;

    move-result-object v3

    .line 122
    .local v3, "fcin":Ljava/nio/channels/FileChannel;
    invoke-virtual {v14}, Ljava/io/FileOutputStream;->getChannel()Ljava/nio/channels/FileChannel;

    move-result-object v8

    .line 124
    .local v8, "fcout":Ljava/nio/channels/FileChannel;
    :try_start_78
    invoke-virtual {v3}, Ljava/nio/channels/FileChannel;->size()J

    move-result-wide v6

    .line 125
    .local v6, "lSize":J
    const-wide/16 v4, 0x0

    invoke-virtual/range {v3 .. v8}, Ljava/nio/channels/FileChannel;->transferTo(JJLjava/nio/channels/WritableByteChannel;)J

    .line 127
    invoke-virtual {v8}, Ljava/nio/channels/FileChannel;->close()V

    .line 128
    invoke-virtual {v3}, Ljava/nio/channels/FileChannel;->close()V

    .line 130
    invoke-virtual {v14}, Ljava/io/FileOutputStream;->close()V

    .line 131
    invoke-virtual {v11}, Ljava/io/FileInputStream;->close()V
    :try_end_8d
    .catch Ljava/io/IOException; {:try_start_78 .. :try_end_8d} :catch_aa
    .catchall {:try_start_78 .. :try_end_8d} :catchall_c9

    .line 132
    const/4 v2, 0x1

    .line 140
    if-eqz v3, :cond_93

    .line 141
    :try_start_90
    invoke-virtual {v3}, Ljava/nio/channels/FileChannel;->close()V

    .line 143
    :cond_93
    if-eqz v8, :cond_98

    .line 144
    invoke-virtual {v8}, Ljava/nio/channels/FileChannel;->close()V

    .line 146
    :cond_98
    if-eqz v11, :cond_9d

    .line 147
    invoke-virtual {v11}, Ljava/io/FileInputStream;->close()V

    .line 149
    :cond_9d
    if-eqz v14, :cond_a2

    .line 150
    invoke-virtual {v14}, Ljava/io/FileOutputStream;->close()V
    :try_end_a2
    .catch Ljava/io/IOException; {:try_start_90 .. :try_end_a2} :catch_a5

    .end local v6    # "lSize":J
    :cond_a2
    :goto_a2
    move-object v13, v14

    .end local v14    # "outputStream":Ljava/io/FileOutputStream;
    .restart local v13    # "outputStream":Ljava/io/FileOutputStream;
    move v9, v2

    .line 158
    .restart local v9    # "Result":I
    goto :goto_59

    .line 152
    .end local v9    # "Result":I
    .end local v13    # "outputStream":Ljava/io/FileOutputStream;
    .restart local v6    # "lSize":J
    .restart local v14    # "outputStream":Ljava/io/FileOutputStream;
    :catch_a5
    move-exception v10

    .line 153
    .restart local v10    # "e":Ljava/io/IOException;
    invoke-virtual {v10}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_a2

    .line 133
    .end local v6    # "lSize":J
    .end local v10    # "e":Ljava/io/IOException;
    :catch_aa
    move-exception v10

    .line 134
    .restart local v10    # "e":Ljava/io/IOException;
    :try_start_ab
    invoke-virtual {v10}, Ljava/io/IOException;->printStackTrace()V
    :try_end_ae
    .catchall {:try_start_ab .. :try_end_ae} :catchall_c9

    .line 135
    const/4 v2, 0x0

    .line 140
    if-eqz v3, :cond_b4

    .line 141
    :try_start_b1
    invoke-virtual {v3}, Ljava/nio/channels/FileChannel;->close()V

    .line 143
    :cond_b4
    if-eqz v8, :cond_b9

    .line 144
    invoke-virtual {v8}, Ljava/nio/channels/FileChannel;->close()V

    .line 146
    :cond_b9
    if-eqz v11, :cond_be

    .line 147
    invoke-virtual {v11}, Ljava/io/FileInputStream;->close()V

    .line 149
    :cond_be
    if-eqz v14, :cond_a2

    .line 150
    invoke-virtual {v14}, Ljava/io/FileOutputStream;->close()V
    :try_end_c3
    .catch Ljava/io/IOException; {:try_start_b1 .. :try_end_c3} :catch_c4

    goto :goto_a2

    .line 152
    :catch_c4
    move-exception v10

    .line 153
    invoke-virtual {v10}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_a2

    .line 139
    .end local v10    # "e":Ljava/io/IOException;
    :catchall_c9
    move-exception v4

    .line 140
    if-eqz v3, :cond_cf

    .line 141
    :try_start_cc
    invoke-virtual {v3}, Ljava/nio/channels/FileChannel;->close()V

    .line 143
    :cond_cf
    if-eqz v8, :cond_d4

    .line 144
    invoke-virtual {v8}, Ljava/nio/channels/FileChannel;->close()V

    .line 146
    :cond_d4
    if-eqz v11, :cond_d9

    .line 147
    invoke-virtual {v11}, Ljava/io/FileInputStream;->close()V

    .line 149
    :cond_d9
    if-eqz v14, :cond_de

    .line 150
    invoke-virtual {v14}, Ljava/io/FileOutputStream;->close()V
    :try_end_de
    .catch Ljava/io/IOException; {:try_start_cc .. :try_end_de} :catch_df

    .line 154
    :cond_de
    :goto_de
    throw v4

    .line 152
    :catch_df
    move-exception v10

    .line 153
    .restart local v10    # "e":Ljava/io/IOException;
    invoke-virtual {v10}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_de
.end method

.method public getAbsoluteNullFile()Ljava/lang/String;
    .registers 2

    .prologue
    .line 640
    iget-object v0, p0, NullFile:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getList(Ljava/io/File;)[Ljava/io/File;
    .registers 3
    .param p1, "file"    # Ljava/io/File;

    .prologue
    .line 613
    invoke-virtual {p1}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v0

    .line 615
    .local v0, "list":[Ljava/io/File;
    return-object v0
.end method

.method public getNullFile()Ljava/io/File;
    .registers 2

    .prologue
    .line 636
    iget-object v0, p0, NullFile:Ljava/io/File;

    return-object v0
.end method

.method public getSDCardPath()Ljava/lang/String;
    .registers 4

    .prologue
    .line 572
    const-string v1, ""

    .line 573
    .local v1, "path":Ljava/lang/String;
    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v0

    .line 574
    .local v0, "ext":Ljava/lang/String;
    const-string/jumbo v2, "mounted"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_18

    .line 575
    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v2

    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    .line 579
    :goto_17
    return-object v1

    .line 577
    :cond_18
    const-string/jumbo v1, "unmounted"

    goto :goto_17
.end method

.method public loadObjectFile(Ljava/io/File;)Ljava/lang/Object;
    .registers 10
    .param p1, "file"    # Ljava/io/File;

    .prologue
    .line 532
    const/4 v5, 0x0

    .line 533
    .local v5, "result":Ljava/lang/Object;
    const/4 v1, 0x0

    .line 534
    .local v1, "fis":Ljava/io/FileInputStream;
    const/4 v3, 0x0

    .line 536
    .local v3, "ois":Ljava/io/ObjectInputStream;
    :try_start_3
    sget-boolean v6, Landroid/sec/clipboard/data/ClipboardConstants;->DEBUG:Z

    if-eqz v6, :cond_e

    .line 537
    const-string v6, "FileHelper"

    const-string v7, "load object file"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 539
    :cond_e
    new-instance v2, Ljava/io/FileInputStream;

    invoke-direct {v2, p1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_13
    .catch Ljava/io/FileNotFoundException; {:try_start_3 .. :try_end_13} :catch_30
    .catch Ljava/io/StreamCorruptedException; {:try_start_3 .. :try_end_13} :catch_44
    .catch Ljava/lang/ClassNotFoundException; {:try_start_3 .. :try_end_13} :catch_58
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_13} :catch_6c
    .catch Ljava/lang/ClassCastException; {:try_start_3 .. :try_end_13} :catch_80
    .catchall {:try_start_3 .. :try_end_13} :catchall_94

    .line 540
    .end local v1    # "fis":Ljava/io/FileInputStream;
    .local v2, "fis":Ljava/io/FileInputStream;
    :try_start_13
    new-instance v4, Ljava/io/ObjectInputStream;

    invoke-direct {v4, v2}, Ljava/io/ObjectInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_18
    .catch Ljava/io/FileNotFoundException; {:try_start_13 .. :try_end_18} :catch_c9
    .catch Ljava/io/StreamCorruptedException; {:try_start_13 .. :try_end_18} :catch_c1
    .catch Ljava/lang/ClassNotFoundException; {:try_start_13 .. :try_end_18} :catch_ba
    .catch Ljava/io/IOException; {:try_start_13 .. :try_end_18} :catch_b3
    .catch Ljava/lang/ClassCastException; {:try_start_13 .. :try_end_18} :catch_ac
    .catchall {:try_start_13 .. :try_end_18} :catchall_a5

    .line 541
    .end local v3    # "ois":Ljava/io/ObjectInputStream;
    .local v4, "ois":Ljava/io/ObjectInputStream;
    :try_start_18
    invoke-virtual {v4}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;
    :try_end_1b
    .catch Ljava/io/FileNotFoundException; {:try_start_18 .. :try_end_1b} :catch_cd
    .catch Ljava/io/StreamCorruptedException; {:try_start_18 .. :try_end_1b} :catch_c4
    .catch Ljava/lang/ClassNotFoundException; {:try_start_18 .. :try_end_1b} :catch_bd
    .catch Ljava/io/IOException; {:try_start_18 .. :try_end_1b} :catch_b6
    .catch Ljava/lang/ClassCastException; {:try_start_18 .. :try_end_1b} :catch_af
    .catchall {:try_start_18 .. :try_end_1b} :catchall_a8

    move-result-object v5

    .line 554
    if-eqz v4, :cond_21

    .line 555
    :try_start_1e
    invoke-virtual {v4}, Ljava/io/ObjectInputStream;->close()V

    .line 557
    :cond_21
    if-eqz v2, :cond_26

    .line 558
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V
    :try_end_26
    .catch Ljava/io/IOException; {:try_start_1e .. :try_end_26} :catch_29

    :cond_26
    move-object v3, v4

    .end local v4    # "ois":Ljava/io/ObjectInputStream;
    .restart local v3    # "ois":Ljava/io/ObjectInputStream;
    move-object v1, v2

    .line 564
    .end local v2    # "fis":Ljava/io/FileInputStream;
    .end local v5    # "result":Ljava/lang/Object;
    .restart local v1    # "fis":Ljava/io/FileInputStream;
    :cond_28
    :goto_28
    return-object v5

    .line 560
    .end local v1    # "fis":Ljava/io/FileInputStream;
    .end local v3    # "ois":Ljava/io/ObjectInputStream;
    .restart local v2    # "fis":Ljava/io/FileInputStream;
    .restart local v4    # "ois":Ljava/io/ObjectInputStream;
    .restart local v5    # "result":Ljava/lang/Object;
    :catch_29
    move-exception v0

    .line 561
    .local v0, "e":Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    move-object v3, v4

    .end local v4    # "ois":Ljava/io/ObjectInputStream;
    .restart local v3    # "ois":Ljava/io/ObjectInputStream;
    move-object v1, v2

    .line 563
    .end local v2    # "fis":Ljava/io/FileInputStream;
    .restart local v1    # "fis":Ljava/io/FileInputStream;
    goto :goto_28

    .line 542
    .end local v0    # "e":Ljava/io/IOException;
    :catch_30
    move-exception v0

    .line 543
    .local v0, "e":Ljava/io/FileNotFoundException;
    :goto_31
    :try_start_31
    invoke-virtual {v0}, Ljava/io/FileNotFoundException;->printStackTrace()V
    :try_end_34
    .catchall {:try_start_31 .. :try_end_34} :catchall_94

    .line 554
    if-eqz v3, :cond_39

    .line 555
    :try_start_36
    invoke-virtual {v3}, Ljava/io/ObjectInputStream;->close()V

    .line 557
    :cond_39
    if-eqz v1, :cond_28

    .line 558
    invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V
    :try_end_3e
    .catch Ljava/io/IOException; {:try_start_36 .. :try_end_3e} :catch_3f

    goto :goto_28

    .line 560
    :catch_3f
    move-exception v0

    .line 561
    .local v0, "e":Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_28

    .line 544
    .end local v0    # "e":Ljava/io/IOException;
    :catch_44
    move-exception v0

    .line 545
    .local v0, "e":Ljava/io/StreamCorruptedException;
    :goto_45
    :try_start_45
    invoke-virtual {v0}, Ljava/io/StreamCorruptedException;->printStackTrace()V
    :try_end_48
    .catchall {:try_start_45 .. :try_end_48} :catchall_94

    .line 554
    if-eqz v3, :cond_4d

    .line 555
    :try_start_4a
    invoke-virtual {v3}, Ljava/io/ObjectInputStream;->close()V

    .line 557
    :cond_4d
    if-eqz v1, :cond_28

    .line 558
    invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V
    :try_end_52
    .catch Ljava/io/IOException; {:try_start_4a .. :try_end_52} :catch_53

    goto :goto_28

    .line 560
    :catch_53
    move-exception v0

    .line 561
    .local v0, "e":Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_28

    .line 546
    .end local v0    # "e":Ljava/io/IOException;
    :catch_58
    move-exception v0

    .line 547
    .local v0, "e":Ljava/lang/ClassNotFoundException;
    :goto_59
    :try_start_59
    invoke-virtual {v0}, Ljava/lang/ClassNotFoundException;->printStackTrace()V
    :try_end_5c
    .catchall {:try_start_59 .. :try_end_5c} :catchall_94

    .line 554
    if-eqz v3, :cond_61

    .line 555
    :try_start_5e
    invoke-virtual {v3}, Ljava/io/ObjectInputStream;->close()V

    .line 557
    :cond_61
    if-eqz v1, :cond_28

    .line 558
    invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V
    :try_end_66
    .catch Ljava/io/IOException; {:try_start_5e .. :try_end_66} :catch_67

    goto :goto_28

    .line 560
    :catch_67
    move-exception v0

    .line 561
    .local v0, "e":Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_28

    .line 548
    .end local v0    # "e":Ljava/io/IOException;
    :catch_6c
    move-exception v0

    .line 549
    .restart local v0    # "e":Ljava/io/IOException;
    :goto_6d
    :try_start_6d
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V
    :try_end_70
    .catchall {:try_start_6d .. :try_end_70} :catchall_94

    .line 554
    if-eqz v3, :cond_75

    .line 555
    :try_start_72
    invoke-virtual {v3}, Ljava/io/ObjectInputStream;->close()V

    .line 557
    :cond_75
    if-eqz v1, :cond_28

    .line 558
    invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V
    :try_end_7a
    .catch Ljava/io/IOException; {:try_start_72 .. :try_end_7a} :catch_7b

    goto :goto_28

    .line 560
    :catch_7b
    move-exception v0

    .line 561
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_28

    .line 550
    .end local v0    # "e":Ljava/io/IOException;
    :catch_80
    move-exception v0

    .line 551
    .local v0, "e":Ljava/lang/ClassCastException;
    :goto_81
    :try_start_81
    invoke-virtual {v0}, Ljava/lang/ClassCastException;->printStackTrace()V
    :try_end_84
    .catchall {:try_start_81 .. :try_end_84} :catchall_94

    .line 554
    if-eqz v3, :cond_89

    .line 555
    :try_start_86
    invoke-virtual {v3}, Ljava/io/ObjectInputStream;->close()V

    .line 557
    :cond_89
    if-eqz v1, :cond_28

    .line 558
    invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V
    :try_end_8e
    .catch Ljava/io/IOException; {:try_start_86 .. :try_end_8e} :catch_8f

    goto :goto_28

    .line 560
    :catch_8f
    move-exception v0

    .line 561
    .local v0, "e":Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_28

    .line 553
    .end local v0    # "e":Ljava/io/IOException;
    :catchall_94
    move-exception v6

    .line 554
    :goto_95
    if-eqz v3, :cond_9a

    .line 555
    :try_start_97
    invoke-virtual {v3}, Ljava/io/ObjectInputStream;->close()V

    .line 557
    :cond_9a
    if-eqz v1, :cond_9f

    .line 558
    invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V
    :try_end_9f
    .catch Ljava/io/IOException; {:try_start_97 .. :try_end_9f} :catch_a0

    .line 562
    :cond_9f
    :goto_9f
    throw v6

    .line 560
    :catch_a0
    move-exception v0

    .line 561
    .restart local v0    # "e":Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_9f

    .line 553
    .end local v0    # "e":Ljava/io/IOException;
    .end local v1    # "fis":Ljava/io/FileInputStream;
    .restart local v2    # "fis":Ljava/io/FileInputStream;
    :catchall_a5
    move-exception v6

    move-object v1, v2

    .end local v2    # "fis":Ljava/io/FileInputStream;
    .restart local v1    # "fis":Ljava/io/FileInputStream;
    goto :goto_95

    .end local v1    # "fis":Ljava/io/FileInputStream;
    .end local v3    # "ois":Ljava/io/ObjectInputStream;
    .restart local v2    # "fis":Ljava/io/FileInputStream;
    .restart local v4    # "ois":Ljava/io/ObjectInputStream;
    :catchall_a8
    move-exception v6

    move-object v3, v4

    .end local v4    # "ois":Ljava/io/ObjectInputStream;
    .restart local v3    # "ois":Ljava/io/ObjectInputStream;
    move-object v1, v2

    .end local v2    # "fis":Ljava/io/FileInputStream;
    .restart local v1    # "fis":Ljava/io/FileInputStream;
    goto :goto_95

    .line 550
    .end local v1    # "fis":Ljava/io/FileInputStream;
    .restart local v2    # "fis":Ljava/io/FileInputStream;
    :catch_ac
    move-exception v0

    move-object v1, v2

    .end local v2    # "fis":Ljava/io/FileInputStream;
    .restart local v1    # "fis":Ljava/io/FileInputStream;
    goto :goto_81

    .end local v1    # "fis":Ljava/io/FileInputStream;
    .end local v3    # "ois":Ljava/io/ObjectInputStream;
    .restart local v2    # "fis":Ljava/io/FileInputStream;
    .restart local v4    # "ois":Ljava/io/ObjectInputStream;
    :catch_af
    move-exception v0

    move-object v3, v4

    .end local v4    # "ois":Ljava/io/ObjectInputStream;
    .restart local v3    # "ois":Ljava/io/ObjectInputStream;
    move-object v1, v2

    .end local v2    # "fis":Ljava/io/FileInputStream;
    .restart local v1    # "fis":Ljava/io/FileInputStream;
    goto :goto_81

    .line 548
    .end local v1    # "fis":Ljava/io/FileInputStream;
    .restart local v2    # "fis":Ljava/io/FileInputStream;
    :catch_b3
    move-exception v0

    move-object v1, v2

    .end local v2    # "fis":Ljava/io/FileInputStream;
    .restart local v1    # "fis":Ljava/io/FileInputStream;
    goto :goto_6d

    .end local v1    # "fis":Ljava/io/FileInputStream;
    .end local v3    # "ois":Ljava/io/ObjectInputStream;
    .restart local v2    # "fis":Ljava/io/FileInputStream;
    .restart local v4    # "ois":Ljava/io/ObjectInputStream;
    :catch_b6
    move-exception v0

    move-object v3, v4

    .end local v4    # "ois":Ljava/io/ObjectInputStream;
    .restart local v3    # "ois":Ljava/io/ObjectInputStream;
    move-object v1, v2

    .end local v2    # "fis":Ljava/io/FileInputStream;
    .restart local v1    # "fis":Ljava/io/FileInputStream;
    goto :goto_6d

    .line 546
    .end local v1    # "fis":Ljava/io/FileInputStream;
    .restart local v2    # "fis":Ljava/io/FileInputStream;
    :catch_ba
    move-exception v0

    move-object v1, v2

    .end local v2    # "fis":Ljava/io/FileInputStream;
    .restart local v1    # "fis":Ljava/io/FileInputStream;
    goto :goto_59

    .end local v1    # "fis":Ljava/io/FileInputStream;
    .end local v3    # "ois":Ljava/io/ObjectInputStream;
    .restart local v2    # "fis":Ljava/io/FileInputStream;
    .restart local v4    # "ois":Ljava/io/ObjectInputStream;
    :catch_bd
    move-exception v0

    move-object v3, v4

    .end local v4    # "ois":Ljava/io/ObjectInputStream;
    .restart local v3    # "ois":Ljava/io/ObjectInputStream;
    move-object v1, v2

    .end local v2    # "fis":Ljava/io/FileInputStream;
    .restart local v1    # "fis":Ljava/io/FileInputStream;
    goto :goto_59

    .line 544
    .end local v1    # "fis":Ljava/io/FileInputStream;
    .restart local v2    # "fis":Ljava/io/FileInputStream;
    :catch_c1
    move-exception v0

    move-object v1, v2

    .end local v2    # "fis":Ljava/io/FileInputStream;
    .restart local v1    # "fis":Ljava/io/FileInputStream;
    goto :goto_45

    .end local v1    # "fis":Ljava/io/FileInputStream;
    .end local v3    # "ois":Ljava/io/ObjectInputStream;
    .restart local v2    # "fis":Ljava/io/FileInputStream;
    .restart local v4    # "ois":Ljava/io/ObjectInputStream;
    :catch_c4
    move-exception v0

    move-object v3, v4

    .end local v4    # "ois":Ljava/io/ObjectInputStream;
    .restart local v3    # "ois":Ljava/io/ObjectInputStream;
    move-object v1, v2

    .end local v2    # "fis":Ljava/io/FileInputStream;
    .restart local v1    # "fis":Ljava/io/FileInputStream;
    goto/16 :goto_45

    .line 542
    .end local v1    # "fis":Ljava/io/FileInputStream;
    .restart local v2    # "fis":Ljava/io/FileInputStream;
    :catch_c9
    move-exception v0

    move-object v1, v2

    .end local v2    # "fis":Ljava/io/FileInputStream;
    .restart local v1    # "fis":Ljava/io/FileInputStream;
    goto/16 :goto_31

    .end local v1    # "fis":Ljava/io/FileInputStream;
    .end local v3    # "ois":Ljava/io/ObjectInputStream;
    .restart local v2    # "fis":Ljava/io/FileInputStream;
    .restart local v4    # "ois":Ljava/io/ObjectInputStream;
    :catch_cd
    move-exception v0

    move-object v3, v4

    .end local v4    # "ois":Ljava/io/ObjectInputStream;
    .restart local v3    # "ois":Ljava/io/ObjectInputStream;
    move-object v1, v2

    .end local v2    # "fis":Ljava/io/FileInputStream;
    .restart local v1    # "fis":Ljava/io/FileInputStream;
    goto/16 :goto_31
.end method

.method public makeDir(Ljava/io/File;)V
    .registers 5
    .param p1, "file"    # Ljava/io/File;

    .prologue
    const/4 v2, -0x1

    .line 597
    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_13

    .line 598
    invoke-virtual {p1}, Ljava/io/File;->mkdirs()Z

    .line 599
    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0x1fd

    invoke-static {v0, v1, v2, v2}, Landroid/os/FileUtils;->setPermissions(Ljava/lang/String;III)I

    .line 601
    :cond_13
    return-void
.end method

.method public saveObjectFile(Ljava/lang/String;Ljava/lang/Object;)Z
    .registers 13
    .param p1, "file"    # Ljava/lang/String;
    .param p2, "obj"    # Ljava/lang/Object;

    .prologue
    .line 214
    if-nez p2, :cond_10

    .line 215
    sget-boolean v6, Landroid/sec/clipboard/data/ClipboardConstants;->DEBUG:Z

    if-eqz v6, :cond_e

    .line 216
    const-string v6, "FileHelper"

    const-string/jumbo v7, "obj == null"

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 218
    :cond_e
    const/4 v5, 0x0

    .line 252
    :cond_f
    :goto_f
    return v5

    .line 222
    :cond_10
    const/4 v5, 0x1

    .line 223
    .local v5, "result":Z
    const/4 v1, 0x0

    .line 224
    .local v1, "fos":Ljava/io/FileOutputStream;
    const/4 v3, 0x0

    .line 227
    .local v3, "oos":Ljava/io/ObjectOutputStream;
    :try_start_13
    new-instance v2, Ljava/io/FileOutputStream;

    invoke-direct {v2, p1}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V
    :try_end_18
    .catch Ljava/io/IOException; {:try_start_13 .. :try_end_18} :catch_54
    .catchall {:try_start_13 .. :try_end_18} :catchall_ab

    .line 228
    .end local v1    # "fos":Ljava/io/FileOutputStream;
    .local v2, "fos":Ljava/io/FileOutputStream;
    :try_start_18
    new-instance v4, Ljava/io/ObjectOutputStream;

    invoke-direct {v4, v2}, Ljava/io/ObjectOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_1d
    .catch Ljava/io/IOException; {:try_start_18 .. :try_end_1d} :catch_e3
    .catchall {:try_start_18 .. :try_end_1d} :catchall_dc

    .line 229
    .end local v3    # "oos":Ljava/io/ObjectOutputStream;
    .local v4, "oos":Ljava/io/ObjectOutputStream;
    :try_start_1d
    invoke-virtual {v4, p2}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V
    :try_end_20
    .catch Ljava/io/IOException; {:try_start_1d .. :try_end_20} :catch_e7
    .catchall {:try_start_1d .. :try_end_20} :catchall_df

    .line 238
    if-eqz v4, :cond_25

    .line 239
    :try_start_22
    invoke-virtual {v4}, Ljava/io/ObjectOutputStream;->close()V

    .line 241
    :cond_25
    if-eqz v2, :cond_2a

    .line 242
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V
    :try_end_2a
    .catch Ljava/io/IOException; {:try_start_22 .. :try_end_2a} :catch_2d

    :cond_2a
    move-object v3, v4

    .end local v4    # "oos":Ljava/io/ObjectOutputStream;
    .restart local v3    # "oos":Ljava/io/ObjectOutputStream;
    move-object v1, v2

    .line 249
    .end local v2    # "fos":Ljava/io/FileOutputStream;
    .restart local v1    # "fos":Ljava/io/FileOutputStream;
    goto :goto_f

    .line 244
    .end local v1    # "fos":Ljava/io/FileOutputStream;
    .end local v3    # "oos":Ljava/io/ObjectOutputStream;
    .restart local v2    # "fos":Ljava/io/FileOutputStream;
    .restart local v4    # "oos":Ljava/io/ObjectOutputStream;
    :catch_2d
    move-exception v0

    .line 245
    .local v0, "e":Ljava/io/IOException;
    sget-boolean v6, Landroid/sec/clipboard/data/ClipboardConstants;->DEBUG:Z

    if-eqz v6, :cond_4e

    .line 246
    const-string v6, "FileHelper"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "close : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 248
    :cond_4e
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    move-object v3, v4

    .end local v4    # "oos":Ljava/io/ObjectOutputStream;
    .restart local v3    # "oos":Ljava/io/ObjectOutputStream;
    move-object v1, v2

    .line 250
    .end local v2    # "fos":Ljava/io/FileOutputStream;
    .restart local v1    # "fos":Ljava/io/FileOutputStream;
    goto :goto_f

    .line 230
    .end local v0    # "e":Ljava/io/IOException;
    :catch_54
    move-exception v0

    .line 231
    .restart local v0    # "e":Ljava/io/IOException;
    :goto_55
    :try_start_55
    sget-boolean v6, Landroid/sec/clipboard/data/ClipboardConstants;->DEBUG:Z

    if-eqz v6, :cond_76

    .line 232
    const-string v6, "FileHelper"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "saveObjectFile~IOException :"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 234
    :cond_76
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V
    :try_end_79
    .catchall {:try_start_55 .. :try_end_79} :catchall_ab

    .line 235
    const/4 v5, 0x0

    .line 238
    if-eqz v3, :cond_7f

    .line 239
    :try_start_7c
    invoke-virtual {v3}, Ljava/io/ObjectOutputStream;->close()V

    .line 241
    :cond_7f
    if-eqz v1, :cond_f

    .line 242
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V
    :try_end_84
    .catch Ljava/io/IOException; {:try_start_7c .. :try_end_84} :catch_85

    goto :goto_f

    .line 244
    :catch_85
    move-exception v0

    .line 245
    sget-boolean v6, Landroid/sec/clipboard/data/ClipboardConstants;->DEBUG:Z

    if-eqz v6, :cond_a6

    .line 246
    const-string v6, "FileHelper"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "close : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 248
    :cond_a6
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto/16 :goto_f

    .line 237
    .end local v0    # "e":Ljava/io/IOException;
    :catchall_ab
    move-exception v6

    .line 238
    :goto_ac
    if-eqz v3, :cond_b1

    .line 239
    :try_start_ae
    invoke-virtual {v3}, Ljava/io/ObjectOutputStream;->close()V

    .line 241
    :cond_b1
    if-eqz v1, :cond_b6

    .line 242
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V
    :try_end_b6
    .catch Ljava/io/IOException; {:try_start_ae .. :try_end_b6} :catch_b7

    .line 249
    :cond_b6
    :goto_b6
    throw v6

    .line 244
    :catch_b7
    move-exception v0

    .line 245
    .restart local v0    # "e":Ljava/io/IOException;
    sget-boolean v7, Landroid/sec/clipboard/data/ClipboardConstants;->DEBUG:Z

    if-eqz v7, :cond_d8

    .line 246
    const-string v7, "FileHelper"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "close : "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 248
    :cond_d8
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_b6

    .line 237
    .end local v0    # "e":Ljava/io/IOException;
    .end local v1    # "fos":Ljava/io/FileOutputStream;
    .restart local v2    # "fos":Ljava/io/FileOutputStream;
    :catchall_dc
    move-exception v6

    move-object v1, v2

    .end local v2    # "fos":Ljava/io/FileOutputStream;
    .restart local v1    # "fos":Ljava/io/FileOutputStream;
    goto :goto_ac

    .end local v1    # "fos":Ljava/io/FileOutputStream;
    .end local v3    # "oos":Ljava/io/ObjectOutputStream;
    .restart local v2    # "fos":Ljava/io/FileOutputStream;
    .restart local v4    # "oos":Ljava/io/ObjectOutputStream;
    :catchall_df
    move-exception v6

    move-object v3, v4

    .end local v4    # "oos":Ljava/io/ObjectOutputStream;
    .restart local v3    # "oos":Ljava/io/ObjectOutputStream;
    move-object v1, v2

    .end local v2    # "fos":Ljava/io/FileOutputStream;
    .restart local v1    # "fos":Ljava/io/FileOutputStream;
    goto :goto_ac

    .line 230
    .end local v1    # "fos":Ljava/io/FileOutputStream;
    .restart local v2    # "fos":Ljava/io/FileOutputStream;
    :catch_e3
    move-exception v0

    move-object v1, v2

    .end local v2    # "fos":Ljava/io/FileOutputStream;
    .restart local v1    # "fos":Ljava/io/FileOutputStream;
    goto/16 :goto_55

    .end local v1    # "fos":Ljava/io/FileOutputStream;
    .end local v3    # "oos":Ljava/io/ObjectOutputStream;
    .restart local v2    # "fos":Ljava/io/FileOutputStream;
    .restart local v4    # "oos":Ljava/io/ObjectOutputStream;
    :catch_e7
    move-exception v0

    move-object v3, v4

    .end local v4    # "oos":Ljava/io/ObjectOutputStream;
    .restart local v3    # "oos":Ljava/io/ObjectOutputStream;
    move-object v1, v2

    .end local v2    # "fos":Ljava/io/FileOutputStream;
    .restart local v1    # "fos":Ljava/io/FileOutputStream;
    goto/16 :goto_55
.end method
