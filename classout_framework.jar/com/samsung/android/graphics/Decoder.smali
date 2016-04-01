.class public Lcom/samsung/android/graphics/Decoder;
.super Ljava/lang/Object;
.source "Decoder.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/graphics/Decoder$Options;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "Decoder"


# direct methods
.method static constructor <clinit>()V
    .registers 4

    .prologue
    .line 28
    :try_start_0
    const-string v1, "MMCodec"

    invoke-static {v1}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_5} :catch_6

    .line 32
    .local v0, "e":Ljava/lang/Exception;
    :goto_5
    return-void

    .line 29
    .end local v0    # "e":Ljava/lang/Exception;
    :catch_6
    move-exception v0

    .line 30
    .restart local v0    # "e":Ljava/lang/Exception;
    const-string v1, "Decoder"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Load library fail : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_5
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 178
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 180
    return-void
.end method

.method public static decodeByteArray([BII)Landroid/graphics/Bitmap;
    .registers 19
    .param p0, "data"    # [B
    .param p1, "offset"    # I
    .param p2, "length"    # I

    .prologue
    .line 225
    if-eqz p0, :cond_35

    if-lez p2, :cond_35

    move/from16 v0, p1

    move/from16 v1, p2

    if-ge v0, v1, :cond_35

    .line 226
    const/4 v2, 0x2

    new-array v7, v2, [I

    .line 227
    .local v7, "tmp":[I
    const-string/jumbo v2, "nofile"

    move-object/from16 v0, p0

    array-length v5, v0

    const/4 v6, 0x0

    move-object/from16 v3, p0

    move/from16 v4, p1

    invoke-static/range {v2 .. v7}, nativedecinstance(Ljava/lang/String;[BIII[I)J

    move-result-wide v12

    .line 228
    .local v12, "secmmfd":J
    const-wide/16 v2, 0x0

    cmp-long v2, v12, v2

    if-eqz v2, :cond_30

    .line 229
    move-object/from16 v0, p0

    array-length v11, v0

    const/4 v14, 0x1

    const/4 v15, 0x0

    move-object/from16 v9, p0

    move/from16 v10, p1

    invoke-static/range {v9 .. v15}, nativeDecodeByteArray([BIIJILandroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v2

    .line 234
    .end local v7    # "tmp":[I
    .end local v12    # "secmmfd":J
    :goto_2f
    return-object v2

    .line 231
    .restart local v7    # "tmp":[I
    .restart local v12    # "secmmfd":J
    :cond_30
    invoke-static/range {p0 .. p2}, Landroid/graphics/BitmapFactory;->decodeByteArray([BII)Landroid/graphics/Bitmap;

    move-result-object v2

    goto :goto_2f

    .line 234
    .end local v7    # "tmp":[I
    .end local v12    # "secmmfd":J
    :cond_35
    const/4 v2, 0x0

    goto :goto_2f
.end method

.method public static decodeByteArray([BIILcom/samsung/android/graphics/Decoder$Options;)Landroid/graphics/Bitmap;
    .registers 10
    .param p0, "data"    # [B
    .param p1, "offset"    # I
    .param p2, "length"    # I
    .param p3, "opts"    # Lcom/samsung/android/graphics/Decoder$Options;

    .prologue
    .line 196
    if-eqz p0, :cond_2e

    if-lez p2, :cond_2e

    if-ge p1, p2, :cond_2e

    .line 197
    invoke-static {}, nativeCreateFds()J

    move-result-wide v2

    .line 198
    .local v2, "secmmfd":J
    const/4 v5, 0x2

    new-array v4, v5, [I

    .line 199
    .local v4, "tmp":[I
    array-length v5, p0

    invoke-static {v2, v3, p0, p1, v5}, nativecopybytebuffer(J[BII)I

    .line 200
    invoke-static {v2, v3, v4}, nativegetImageinfo(J[I)I

    .line 201
    invoke-static {v2, v3, v4, p3}, doDecode(J[ILcom/samsung/android/graphics/Decoder$Options;)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 202
    .local v1, "mBm":Landroid/graphics/Bitmap;
    invoke-static {v2, v3}, nativefreeFds(J)I

    .line 203
    if-nez v1, :cond_2d

    .line 204
    invoke-static {p3}, getBitmapFactoryOptions(Lcom/samsung/android/graphics/Decoder$Options;)Landroid/graphics/BitmapFactory$Options;

    move-result-object v0

    .line 205
    .local v0, "bfOptions":Landroid/graphics/BitmapFactory$Options;
    invoke-static {p0, p1, p2, v0}, Landroid/graphics/BitmapFactory;->decodeByteArray([BIILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 206
    iget v5, v0, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    iput v5, p3, Lcom/samsung/android/graphics/Decoder$Options;->outWidth:I

    .line 207
    iget v5, v0, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    iput v5, p3, Lcom/samsung/android/graphics/Decoder$Options;->outHeight:I

    .line 211
    .end local v0    # "bfOptions":Landroid/graphics/BitmapFactory$Options;
    .end local v1    # "mBm":Landroid/graphics/Bitmap;
    .end local v2    # "secmmfd":J
    .end local v4    # "tmp":[I
    :cond_2d
    :goto_2d
    return-object v1

    :cond_2e
    const/4 v1, 0x0

    goto :goto_2d
.end method

.method public static decodeFile(Ljava/lang/String;)Landroid/graphics/Bitmap;
    .registers 9
    .param p0, "pathName"    # Ljava/lang/String;

    .prologue
    const/4 v4, 0x1

    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 246
    if-eqz p0, :cond_18

    .line 247
    const/4 v0, 0x2

    new-array v5, v0, [I

    .local v5, "tmp":[I
    move-object v0, p0

    move v3, v2

    .line 248
    invoke-static/range {v0 .. v5}, nativedecinstance(Ljava/lang/String;[BIII[I)J

    move-result-wide v6

    .line 249
    .local v6, "secmmfd":J
    const-wide/16 v2, 0x0

    cmp-long v0, v6, v2

    if-eqz v0, :cond_19

    .line 250
    invoke-static {p0, v6, v7, v4, v1}, nativeDecodeFile(Ljava/lang/String;JILandroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 255
    .end local v5    # "tmp":[I
    .end local v6    # "secmmfd":J
    :cond_18
    :goto_18
    return-object v1

    .line 252
    .restart local v5    # "tmp":[I
    .restart local v6    # "secmmfd":J
    :cond_19
    invoke-static {p0}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v1

    goto :goto_18
.end method

.method public static decodeFile(Ljava/lang/String;Lcom/samsung/android/graphics/Decoder$Options;)Landroid/graphics/Bitmap;
    .registers 8
    .param p0, "pathName"    # Ljava/lang/String;
    .param p1, "opts"    # Lcom/samsung/android/graphics/Decoder$Options;

    .prologue
    .line 271
    if-eqz p0, :cond_29

    .line 272
    invoke-static {}, nativeCreateFds()J

    move-result-wide v2

    .line 273
    .local v2, "secmmfd":J
    const/4 v5, 0x2

    new-array v4, v5, [I

    .line 274
    .local v4, "tmp":[I
    invoke-static {v2, v3, p0}, nativecopyfilename(JLjava/lang/String;)I

    .line 275
    invoke-static {v2, v3, v4}, nativegetImageinfo(J[I)I

    .line 276
    invoke-static {v2, v3, v4, p1}, doDecode(J[ILcom/samsung/android/graphics/Decoder$Options;)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 277
    .local v1, "mBm":Landroid/graphics/Bitmap;
    invoke-static {v2, v3}, nativefreeFds(J)I

    .line 278
    if-nez v1, :cond_28

    .line 279
    invoke-static {p1}, getBitmapFactoryOptions(Lcom/samsung/android/graphics/Decoder$Options;)Landroid/graphics/BitmapFactory$Options;

    move-result-object v0

    .line 280
    .local v0, "bfOptions":Landroid/graphics/BitmapFactory$Options;
    invoke-static {p0, v0}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 281
    iget v5, v0, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    iput v5, p1, Lcom/samsung/android/graphics/Decoder$Options;->outWidth:I

    .line 282
    iget v5, v0, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    iput v5, p1, Lcom/samsung/android/graphics/Decoder$Options;->outHeight:I

    .line 286
    .end local v0    # "bfOptions":Landroid/graphics/BitmapFactory$Options;
    .end local v1    # "mBm":Landroid/graphics/Bitmap;
    .end local v2    # "secmmfd":J
    .end local v4    # "tmp":[I
    :cond_28
    :goto_28
    return-object v1

    :cond_29
    const/4 v1, 0x0

    goto :goto_28
.end method

.method private static doDecode(J[ILcom/samsung/android/graphics/Decoder$Options;)Landroid/graphics/Bitmap;
    .registers 12
    .param p0, "secmmfd"    # J
    .param p2, "tmp"    # [I
    .param p3, "opts"    # Lcom/samsung/android/graphics/Decoder$Options;

    .prologue
    const/4 v2, 0x0

    const/4 v6, -0x1

    .line 291
    const-wide/16 v4, 0x0

    cmp-long v4, p0, v4

    if-nez v4, :cond_9

    .line 327
    :cond_8
    :goto_8
    return-object v2

    .line 294
    :cond_9
    const/4 v4, 0x0

    aget v1, p2, v4

    .line 295
    .local v1, "img_wid":I
    const/4 v4, 0x1

    aget v0, p2, v4

    .line 296
    .local v0, "img_hei":I
    if-eq v1, v6, :cond_8

    if-eq v0, v6, :cond_8

    .line 297
    iget-boolean v4, p3, Lcom/samsung/android/graphics/Decoder$Options;->inJustDecodeBounds:Z

    if-eqz v4, :cond_1e

    .line 298
    iput v1, p3, Lcom/samsung/android/graphics/Decoder$Options;->outWidth:I

    .line 299
    iput v0, p3, Lcom/samsung/android/graphics/Decoder$Options;->outHeight:I

    .line 300
    iget-object v2, p3, Lcom/samsung/android/graphics/Decoder$Options;->inBitmap:Landroid/graphics/Bitmap;

    goto :goto_8

    .line 303
    :cond_1e
    iget v3, p3, Lcom/samsung/android/graphics/Decoder$Options;->inSampleSize:I

    .line 304
    .local v3, "samplesize":I
    if-nez v3, :cond_23

    .line 305
    const/4 v3, 0x1

    .line 307
    :cond_23
    add-int v4, v1, v3

    add-int/lit8 v4, v4, -0x1

    div-int v1, v4, v3

    .line 308
    add-int v4, v0, v3

    add-int/lit8 v4, v4, -0x1

    div-int v0, v4, v3

    .line 309
    iget-object v4, p3, Lcom/samsung/android/graphics/Decoder$Options;->inBitmap:Landroid/graphics/Bitmap;

    if-eqz v4, :cond_5a

    .line 310
    iget-object v4, p3, Lcom/samsung/android/graphics/Decoder$Options;->inBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v4

    if-ne v4, v1, :cond_43

    iget-object v4, p3, Lcom/samsung/android/graphics/Decoder$Options;->inBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    if-eq v4, v0, :cond_57

    .line 311
    :cond_43
    const-string v4, "Decoder"

    const-string v5, "inBitmap Erraneous\n"

    invoke-static {v4, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 312
    const/4 v2, 0x0

    .line 319
    .local v2, "mBm":Landroid/graphics/Bitmap;
    :goto_4b
    if-eqz v2, :cond_8

    .line 320
    invoke-static {p0, p1, v2}, nativelockBitmap(JLandroid/graphics/Bitmap;)I

    .line 321
    invoke-static {p0, p1, v3}, nativeDecode(JI)I

    .line 322
    invoke-static {v2}, nativeunlockBitmap(Landroid/graphics/Bitmap;)I

    goto :goto_8

    .line 314
    .end local v2    # "mBm":Landroid/graphics/Bitmap;
    :cond_57
    iget-object v2, p3, Lcom/samsung/android/graphics/Decoder$Options;->inBitmap:Landroid/graphics/Bitmap;

    .restart local v2    # "mBm":Landroid/graphics/Bitmap;
    goto :goto_4b

    .line 317
    .end local v2    # "mBm":Landroid/graphics/Bitmap;
    :cond_5a
    invoke-static {v1, v0}, nativeCreateBitmap(II)Landroid/graphics/Bitmap;

    move-result-object v2

    .restart local v2    # "mBm":Landroid/graphics/Bitmap;
    goto :goto_4b
.end method

.method protected static getBitmapFactoryOptions(Lcom/samsung/android/graphics/Decoder$Options;)Landroid/graphics/BitmapFactory$Options;
    .registers 3
    .param p0, "options"    # Lcom/samsung/android/graphics/Decoder$Options;

    .prologue
    .line 333
    new-instance v0, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v0}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 334
    .local v0, "bfOptions":Landroid/graphics/BitmapFactory$Options;
    if-eqz p0, :cond_23

    .line 335
    iget-object v1, p0, Lcom/samsung/android/graphics/Decoder$Options;->inBitmap:Landroid/graphics/Bitmap;

    iput-object v1, v0, Landroid/graphics/BitmapFactory$Options;->inBitmap:Landroid/graphics/Bitmap;

    .line 336
    iget-boolean v1, p0, Lcom/samsung/android/graphics/Decoder$Options;->inMutable:Z

    iput-boolean v1, v0, Landroid/graphics/BitmapFactory$Options;->inMutable:Z

    .line 337
    iget-boolean v1, p0, Lcom/samsung/android/graphics/Decoder$Options;->inJustDecodeBounds:Z

    iput-boolean v1, v0, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 338
    iget v1, p0, Lcom/samsung/android/graphics/Decoder$Options;->inSampleSize:I

    iput v1, v0, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    .line 339
    iget-object v1, p0, Lcom/samsung/android/graphics/Decoder$Options;->inPreferredConfig:Landroid/graphics/Bitmap$Config;

    iput-object v1, v0, Landroid/graphics/BitmapFactory$Options;->inPreferredConfig:Landroid/graphics/Bitmap$Config;

    .line 340
    iget-boolean v1, p0, Lcom/samsung/android/graphics/Decoder$Options;->inPreferQualityOverSpeed:Z

    iput-boolean v1, v0, Landroid/graphics/BitmapFactory$Options;->inPreferQualityOverSpeed:Z

    .line 341
    iget-boolean v1, p0, Lcom/samsung/android/graphics/Decoder$Options;->isPreview:Z

    iput-boolean v1, v0, Landroid/graphics/BitmapFactory$Options;->isPreview:Z

    .line 343
    :cond_23
    return-object v0
.end method

.method private static native nativeCreateBitmap(II)Landroid/graphics/Bitmap;
.end method

.method private static native nativeCreateFds()J
.end method

.method private static native nativeDecode(JI)I
.end method

.method private static native nativeDecodeByteArray([BIIJILandroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
.end method

.method private static native nativeDecodeFile(Ljava/lang/String;JILandroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
.end method

.method private static native nativecopybytebuffer(J[BII)I
.end method

.method private static native nativecopyfilename(JLjava/lang/String;)I
.end method

.method private static native nativedecinstance(Ljava/lang/String;[BIII[I)J
.end method

.method private static native nativefreeFds(J)I
.end method

.method private static native nativegetImageinfo(J[I)I
.end method

.method private static native nativelockBitmap(JLandroid/graphics/Bitmap;)I
.end method

.method private static native nativeunlockBitmap(Landroid/graphics/Bitmap;)I
.end method
