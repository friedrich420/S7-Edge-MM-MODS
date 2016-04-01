.class public Landroid/view/inputmethod/InputMethodSubtypeArray;
.super Ljava/lang/Object;
.source "InputMethodSubtypeArray.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "InputMethodSubtypeArray"


# instance fields
.field private volatile mCompressedData:[B

.field private final mCount:I

.field private volatile mDecompressedSize:I

.field private volatile mInstance:[Landroid/view/inputmethod/InputMethodSubtype;

.field private final mLockObject:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Landroid/os/Parcel;)V
    .registers 3
    .param p1, "source"    # Landroid/os/Parcel;

    .prologue
    .line 68
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 164
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, mLockObject:Ljava/lang/Object;

    .line 69
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, mCount:I

    .line 70
    iget v0, p0, mCount:I

    if-lez v0, :cond_20

    .line 71
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, mDecompressedSize:I

    .line 72
    invoke-virtual {p1}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v0

    iput-object v0, p0, mCompressedData:[B

    .line 74
    :cond_20
    return-void
.end method

.method public constructor <init>(Ljava/util/List;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/view/inputmethod/InputMethodSubtype;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 52
    .local p1, "subtypes":Ljava/util/List;, "Ljava/util/List<Landroid/view/inputmethod/InputMethodSubtype;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 164
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, mLockObject:Ljava/lang/Object;

    .line 53
    if-nez p1, :cond_10

    .line 54
    const/4 v0, 0x0

    iput v0, p0, mCount:I

    .line 59
    :goto_f
    return-void

    .line 57
    :cond_10
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    iput v0, p0, mCount:I

    .line 58
    iget v0, p0, mCount:I

    new-array v0, v0, [Landroid/view/inputmethod/InputMethodSubtype;

    invoke-interface {p1, v0}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/view/inputmethod/InputMethodSubtype;

    iput-object v0, p0, mInstance:[Landroid/view/inputmethod/InputMethodSubtype;

    goto :goto_f
.end method

.method private static compress([B)[B
    .registers 10
    .param p0, "data"    # [B

    .prologue
    const/4 v5, 0x0

    .line 201
    :try_start_1
    new-instance v1, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v1}, Ljava/io/ByteArrayOutputStream;-><init>()V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_6} :catch_39

    .local v1, "resultStream":Ljava/io/ByteArrayOutputStream;
    const/4 v6, 0x0

    .line 202
    :try_start_7
    new-instance v3, Ljava/util/zip/GZIPOutputStream;

    invoke-direct {v3, v1}, Ljava/util/zip/GZIPOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_c
    .catch Ljava/lang/Throwable; {:try_start_7 .. :try_end_c} :catch_2b
    .catchall {:try_start_7 .. :try_end_c} :catchall_47

    .line 201
    .local v3, "zipper":Ljava/util/zip/GZIPOutputStream;
    const/4 v7, 0x0

    .line 203
    :try_start_d
    invoke-virtual {v3, p0}, Ljava/util/zip/GZIPOutputStream;->write([B)V

    .line 204
    invoke-virtual {v3}, Ljava/util/zip/GZIPOutputStream;->finish()V

    .line 205
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B
    :try_end_16
    .catch Ljava/lang/Throwable; {:try_start_d .. :try_end_16} :catch_53
    .catchall {:try_start_d .. :try_end_16} :catchall_73

    move-result-object v4

    .line 206
    if-eqz v3, :cond_1e

    if-eqz v5, :cond_43

    :try_start_1b
    invoke-virtual {v3}, Ljava/util/zip/GZIPOutputStream;->close()V
    :try_end_1e
    .catch Ljava/lang/Throwable; {:try_start_1b .. :try_end_1e} :catch_26
    .catchall {:try_start_1b .. :try_end_1e} :catchall_47

    :cond_1e
    :goto_1e
    if-eqz v1, :cond_25

    if-eqz v5, :cond_4f

    :try_start_22
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_25
    .catch Ljava/lang/Throwable; {:try_start_22 .. :try_end_25} :catch_4a
    .catch Ljava/lang/Exception; {:try_start_22 .. :try_end_25} :catch_39

    .line 208
    .end local v1    # "resultStream":Ljava/io/ByteArrayOutputStream;
    .end local v3    # "zipper":Ljava/util/zip/GZIPOutputStream;
    :cond_25
    :goto_25
    return-object v4

    .line 206
    .restart local v1    # "resultStream":Ljava/io/ByteArrayOutputStream;
    .restart local v3    # "zipper":Ljava/util/zip/GZIPOutputStream;
    :catch_26
    move-exception v2

    .local v2, "x2":Ljava/lang/Throwable;
    :try_start_27
    invoke-virtual {v7, v2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V
    :try_end_2a
    .catch Ljava/lang/Throwable; {:try_start_27 .. :try_end_2a} :catch_2b
    .catchall {:try_start_27 .. :try_end_2a} :catchall_47

    goto :goto_1e

    .line 201
    .end local v2    # "x2":Ljava/lang/Throwable;
    .end local v3    # "zipper":Ljava/util/zip/GZIPOutputStream;
    :catch_2b
    move-exception v4

    :try_start_2c
    throw v4
    :try_end_2d
    .catchall {:try_start_2c .. :try_end_2d} :catchall_2d

    .line 206
    :catchall_2d
    move-exception v6

    move-object v8, v6

    move-object v6, v4

    move-object v4, v8

    :goto_31
    if-eqz v1, :cond_38

    if-eqz v6, :cond_6f

    :try_start_35
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_38
    .catch Ljava/lang/Throwable; {:try_start_35 .. :try_end_38} :catch_6a
    .catch Ljava/lang/Exception; {:try_start_35 .. :try_end_38} :catch_39

    :cond_38
    :goto_38
    :try_start_38
    throw v4
    :try_end_39
    .catch Ljava/lang/Exception; {:try_start_38 .. :try_end_39} :catch_39

    .end local v1    # "resultStream":Ljava/io/ByteArrayOutputStream;
    :catch_39
    move-exception v0

    .line 207
    .local v0, "e":Ljava/lang/Exception;
    const-string v4, "InputMethodSubtypeArray"

    const-string v6, "Failed to compress the data."

    invoke-static {v4, v6, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move-object v4, v5

    .line 208
    goto :goto_25

    .line 206
    .end local v0    # "e":Ljava/lang/Exception;
    .restart local v1    # "resultStream":Ljava/io/ByteArrayOutputStream;
    .restart local v3    # "zipper":Ljava/util/zip/GZIPOutputStream;
    :cond_43
    :try_start_43
    invoke-virtual {v3}, Ljava/util/zip/GZIPOutputStream;->close()V
    :try_end_46
    .catch Ljava/lang/Throwable; {:try_start_43 .. :try_end_46} :catch_2b
    .catchall {:try_start_43 .. :try_end_46} :catchall_47

    goto :goto_1e

    .end local v3    # "zipper":Ljava/util/zip/GZIPOutputStream;
    :catchall_47
    move-exception v4

    move-object v6, v5

    goto :goto_31

    .restart local v3    # "zipper":Ljava/util/zip/GZIPOutputStream;
    :catch_4a
    move-exception v2

    .restart local v2    # "x2":Ljava/lang/Throwable;
    :try_start_4b
    invoke-virtual {v6, v2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    goto :goto_25

    .end local v2    # "x2":Ljava/lang/Throwable;
    :cond_4f
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_52
    .catch Ljava/lang/Exception; {:try_start_4b .. :try_end_52} :catch_39

    goto :goto_25

    .line 201
    :catch_53
    move-exception v4

    :try_start_54
    throw v4
    :try_end_55
    .catchall {:try_start_54 .. :try_end_55} :catchall_55

    .line 206
    :catchall_55
    move-exception v6

    move-object v8, v6

    move-object v6, v4

    move-object v4, v8

    :goto_59
    if-eqz v3, :cond_60

    if-eqz v6, :cond_66

    :try_start_5d
    invoke-virtual {v3}, Ljava/util/zip/GZIPOutputStream;->close()V
    :try_end_60
    .catch Ljava/lang/Throwable; {:try_start_5d .. :try_end_60} :catch_61
    .catchall {:try_start_5d .. :try_end_60} :catchall_47

    :cond_60
    :goto_60
    :try_start_60
    throw v4

    :catch_61
    move-exception v2

    .restart local v2    # "x2":Ljava/lang/Throwable;
    invoke-virtual {v6, v2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    goto :goto_60

    .end local v2    # "x2":Ljava/lang/Throwable;
    :cond_66
    invoke-virtual {v3}, Ljava/util/zip/GZIPOutputStream;->close()V
    :try_end_69
    .catch Ljava/lang/Throwable; {:try_start_60 .. :try_end_69} :catch_2b
    .catchall {:try_start_60 .. :try_end_69} :catchall_47

    goto :goto_60

    .end local v3    # "zipper":Ljava/util/zip/GZIPOutputStream;
    :catch_6a
    move-exception v2

    .restart local v2    # "x2":Ljava/lang/Throwable;
    :try_start_6b
    invoke-virtual {v6, v2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    goto :goto_38

    .end local v2    # "x2":Ljava/lang/Throwable;
    :cond_6f
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_72
    .catch Ljava/lang/Exception; {:try_start_6b .. :try_end_72} :catch_39

    goto :goto_38

    .restart local v3    # "zipper":Ljava/util/zip/GZIPOutputStream;
    :catchall_73
    move-exception v4

    move-object v6, v5

    goto :goto_59
.end method

.method private static decompress([BI)[B
    .registers 15
    .param p0, "data"    # [B
    .param p1, "expectedSize"    # I

    .prologue
    const/4 v8, 0x0

    .line 213
    :try_start_1
    new-instance v1, Ljava/io/ByteArrayInputStream;

    invoke-direct {v1, p0}, Ljava/io/ByteArrayInputStream;-><init>([B)V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_6} :catch_43

    .local v1, "inputStream":Ljava/io/ByteArrayInputStream;
    const/4 v9, 0x0

    .line 214
    :try_start_7
    new-instance v6, Ljava/util/zip/GZIPInputStream;

    invoke-direct {v6, v1}, Ljava/util/zip/GZIPInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_c
    .catch Ljava/lang/Throwable; {:try_start_7 .. :try_end_c} :catch_35
    .catchall {:try_start_7 .. :try_end_c} :catchall_51

    .line 213
    .local v6, "unzipper":Ljava/util/zip/GZIPInputStream;
    const/4 v10, 0x0

    .line 215
    :try_start_d
    new-array v4, p1, [B

    .line 216
    .local v4, "result":[B
    const/4 v5, 0x0

    .line 217
    .local v5, "totalReadBytes":I
    :goto_10
    array-length v11, v4

    if-ge v5, v11, :cond_1c

    .line 218
    array-length v11, v4

    sub-int v3, v11, v5

    .line 219
    .local v3, "restBytes":I
    invoke-virtual {v6, v4, v5, v3}, Ljava/util/zip/GZIPInputStream;->read([BII)I
    :try_end_19
    .catch Ljava/lang/Throwable; {:try_start_d .. :try_end_19} :catch_7e
    .catchall {:try_start_d .. :try_end_19} :catchall_9e

    move-result v2

    .line 220
    .local v2, "readBytes":I
    if-gez v2, :cond_2e

    .line 225
    .end local v2    # "readBytes":I
    .end local v3    # "restBytes":I
    :cond_1c
    if-eq p1, v5, :cond_5d

    .line 229
    if-eqz v6, :cond_25

    if-eqz v8, :cond_4d

    :try_start_22
    invoke-virtual {v6}, Ljava/util/zip/GZIPInputStream;->close()V
    :try_end_25
    .catch Ljava/lang/Throwable; {:try_start_22 .. :try_end_25} :catch_30
    .catchall {:try_start_22 .. :try_end_25} :catchall_51

    :cond_25
    :goto_25
    if-eqz v1, :cond_2c

    if-eqz v8, :cond_59

    :try_start_29
    invoke-virtual {v1}, Ljava/io/ByteArrayInputStream;->close()V
    :try_end_2c
    .catch Ljava/lang/Throwable; {:try_start_29 .. :try_end_2c} :catch_54
    .catch Ljava/lang/Exception; {:try_start_29 .. :try_end_2c} :catch_43

    :cond_2c
    :goto_2c
    move-object v4, v8

    .line 231
    .end local v1    # "inputStream":Ljava/io/ByteArrayInputStream;
    .end local v4    # "result":[B
    .end local v5    # "totalReadBytes":I
    .end local v6    # "unzipper":Ljava/util/zip/GZIPInputStream;
    :cond_2d
    :goto_2d
    return-object v4

    .line 223
    .restart local v1    # "inputStream":Ljava/io/ByteArrayInputStream;
    .restart local v2    # "readBytes":I
    .restart local v3    # "restBytes":I
    .restart local v4    # "result":[B
    .restart local v5    # "totalReadBytes":I
    .restart local v6    # "unzipper":Ljava/util/zip/GZIPInputStream;
    :cond_2e
    add-int/2addr v5, v2

    .line 224
    goto :goto_10

    .line 229
    .end local v2    # "readBytes":I
    .end local v3    # "restBytes":I
    :catch_30
    move-exception v7

    .local v7, "x2":Ljava/lang/Throwable;
    :try_start_31
    invoke-virtual {v10, v7}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V
    :try_end_34
    .catch Ljava/lang/Throwable; {:try_start_31 .. :try_end_34} :catch_35
    .catchall {:try_start_31 .. :try_end_34} :catchall_51

    goto :goto_25

    .line 213
    .end local v4    # "result":[B
    .end local v5    # "totalReadBytes":I
    .end local v6    # "unzipper":Ljava/util/zip/GZIPInputStream;
    .end local v7    # "x2":Ljava/lang/Throwable;
    :catch_35
    move-exception v9

    :try_start_36
    throw v9
    :try_end_37
    .catchall {:try_start_36 .. :try_end_37} :catchall_37

    .line 229
    :catchall_37
    move-exception v10

    move-object v12, v10

    move-object v10, v9

    move-object v9, v12

    :goto_3b
    if-eqz v1, :cond_42

    if-eqz v10, :cond_9a

    :try_start_3f
    invoke-virtual {v1}, Ljava/io/ByteArrayInputStream;->close()V
    :try_end_42
    .catch Ljava/lang/Throwable; {:try_start_3f .. :try_end_42} :catch_95
    .catch Ljava/lang/Exception; {:try_start_3f .. :try_end_42} :catch_43

    :cond_42
    :goto_42
    :try_start_42
    throw v9
    :try_end_43
    .catch Ljava/lang/Exception; {:try_start_42 .. :try_end_43} :catch_43

    .end local v1    # "inputStream":Ljava/io/ByteArrayInputStream;
    :catch_43
    move-exception v0

    .line 230
    .local v0, "e":Ljava/lang/Exception;
    const-string v9, "InputMethodSubtypeArray"

    const-string v10, "Failed to decompress the data."

    invoke-static {v9, v10, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move-object v4, v8

    .line 231
    goto :goto_2d

    .line 229
    .end local v0    # "e":Ljava/lang/Exception;
    .restart local v1    # "inputStream":Ljava/io/ByteArrayInputStream;
    .restart local v4    # "result":[B
    .restart local v5    # "totalReadBytes":I
    .restart local v6    # "unzipper":Ljava/util/zip/GZIPInputStream;
    :cond_4d
    :try_start_4d
    invoke-virtual {v6}, Ljava/util/zip/GZIPInputStream;->close()V
    :try_end_50
    .catch Ljava/lang/Throwable; {:try_start_4d .. :try_end_50} :catch_35
    .catchall {:try_start_4d .. :try_end_50} :catchall_51

    goto :goto_25

    .end local v4    # "result":[B
    .end local v5    # "totalReadBytes":I
    .end local v6    # "unzipper":Ljava/util/zip/GZIPInputStream;
    :catchall_51
    move-exception v9

    move-object v10, v8

    goto :goto_3b

    .restart local v4    # "result":[B
    .restart local v5    # "totalReadBytes":I
    .restart local v6    # "unzipper":Ljava/util/zip/GZIPInputStream;
    :catch_54
    move-exception v7

    .restart local v7    # "x2":Ljava/lang/Throwable;
    :try_start_55
    invoke-virtual {v9, v7}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    goto :goto_2c

    .end local v7    # "x2":Ljava/lang/Throwable;
    :cond_59
    invoke-virtual {v1}, Ljava/io/ByteArrayInputStream;->close()V
    :try_end_5c
    .catch Ljava/lang/Exception; {:try_start_55 .. :try_end_5c} :catch_43

    goto :goto_2c

    :cond_5d
    if-eqz v6, :cond_64

    if-eqz v8, :cond_76

    :try_start_61
    invoke-virtual {v6}, Ljava/util/zip/GZIPInputStream;->close()V
    :try_end_64
    .catch Ljava/lang/Throwable; {:try_start_61 .. :try_end_64} :catch_71
    .catchall {:try_start_61 .. :try_end_64} :catchall_51

    :cond_64
    :goto_64
    if-eqz v1, :cond_2d

    if-eqz v8, :cond_7a

    :try_start_68
    invoke-virtual {v1}, Ljava/io/ByteArrayInputStream;->close()V
    :try_end_6b
    .catch Ljava/lang/Throwable; {:try_start_68 .. :try_end_6b} :catch_6c
    .catch Ljava/lang/Exception; {:try_start_68 .. :try_end_6b} :catch_43

    goto :goto_2d

    :catch_6c
    move-exception v7

    .restart local v7    # "x2":Ljava/lang/Throwable;
    :try_start_6d
    invoke-virtual {v9, v7}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V
    :try_end_70
    .catch Ljava/lang/Exception; {:try_start_6d .. :try_end_70} :catch_43

    goto :goto_2d

    .end local v7    # "x2":Ljava/lang/Throwable;
    :catch_71
    move-exception v7

    .restart local v7    # "x2":Ljava/lang/Throwable;
    :try_start_72
    invoke-virtual {v10, v7}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    goto :goto_64

    .end local v7    # "x2":Ljava/lang/Throwable;
    :cond_76
    invoke-virtual {v6}, Ljava/util/zip/GZIPInputStream;->close()V
    :try_end_79
    .catch Ljava/lang/Throwable; {:try_start_72 .. :try_end_79} :catch_35
    .catchall {:try_start_72 .. :try_end_79} :catchall_51

    goto :goto_64

    :cond_7a
    :try_start_7a
    invoke-virtual {v1}, Ljava/io/ByteArrayInputStream;->close()V
    :try_end_7d
    .catch Ljava/lang/Exception; {:try_start_7a .. :try_end_7d} :catch_43

    goto :goto_2d

    .line 213
    .end local v4    # "result":[B
    .end local v5    # "totalReadBytes":I
    :catch_7e
    move-exception v9

    :try_start_7f
    throw v9
    :try_end_80
    .catchall {:try_start_7f .. :try_end_80} :catchall_80

    .line 229
    :catchall_80
    move-exception v10

    move-object v12, v10

    move-object v10, v9

    move-object v9, v12

    :goto_84
    if-eqz v6, :cond_8b

    if-eqz v10, :cond_91

    :try_start_88
    invoke-virtual {v6}, Ljava/util/zip/GZIPInputStream;->close()V
    :try_end_8b
    .catch Ljava/lang/Throwable; {:try_start_88 .. :try_end_8b} :catch_8c
    .catchall {:try_start_88 .. :try_end_8b} :catchall_51

    :cond_8b
    :goto_8b
    :try_start_8b
    throw v9

    :catch_8c
    move-exception v7

    .restart local v7    # "x2":Ljava/lang/Throwable;
    invoke-virtual {v10, v7}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    goto :goto_8b

    .end local v7    # "x2":Ljava/lang/Throwable;
    :cond_91
    invoke-virtual {v6}, Ljava/util/zip/GZIPInputStream;->close()V
    :try_end_94
    .catch Ljava/lang/Throwable; {:try_start_8b .. :try_end_94} :catch_35
    .catchall {:try_start_8b .. :try_end_94} :catchall_51

    goto :goto_8b

    .end local v6    # "unzipper":Ljava/util/zip/GZIPInputStream;
    :catch_95
    move-exception v7

    .restart local v7    # "x2":Ljava/lang/Throwable;
    :try_start_96
    invoke-virtual {v10, v7}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    goto :goto_42

    .end local v7    # "x2":Ljava/lang/Throwable;
    :cond_9a
    invoke-virtual {v1}, Ljava/io/ByteArrayInputStream;->close()V
    :try_end_9d
    .catch Ljava/lang/Exception; {:try_start_96 .. :try_end_9d} :catch_43

    goto :goto_42

    .restart local v6    # "unzipper":Ljava/util/zip/GZIPInputStream;
    :catchall_9e
    move-exception v9

    move-object v10, v8

    goto :goto_84
.end method

.method private static marshall([Landroid/view/inputmethod/InputMethodSubtype;)[B
    .registers 3
    .param p0, "array"    # [Landroid/view/inputmethod/InputMethodSubtype;

    .prologue
    .line 172
    const/4 v0, 0x0

    .line 174
    .local v0, "parcel":Landroid/os/Parcel;
    :try_start_1
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 175
    const/4 v1, 0x0

    invoke-virtual {v0, p0, v1}, Landroid/os/Parcel;->writeTypedArray([Landroid/os/Parcelable;I)V

    .line 176
    invoke-virtual {v0}, Landroid/os/Parcel;->marshall()[B
    :try_end_c
    .catchall {:try_start_1 .. :try_end_c} :catchall_14

    move-result-object v1

    .line 178
    if-eqz v0, :cond_13

    .line 179
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 180
    const/4 v0, 0x0

    :cond_13
    return-object v1

    .line 178
    :catchall_14
    move-exception v1

    if-eqz v0, :cond_1b

    .line 179
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 180
    const/4 v0, 0x0

    :cond_1b
    throw v1
.end method

.method private static unmarshall([B)[Landroid/view/inputmethod/InputMethodSubtype;
    .registers 4
    .param p0, "data"    # [B

    .prologue
    .line 186
    const/4 v0, 0x0

    .line 188
    .local v0, "parcel":Landroid/os/Parcel;
    :try_start_1
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 189
    const/4 v1, 0x0

    array-length v2, p0

    invoke-virtual {v0, p0, v1, v2}, Landroid/os/Parcel;->unmarshall([BII)V

    .line 190
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 191
    sget-object v1, Landroid/view/inputmethod/InputMethodSubtype;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->createTypedArray(Landroid/os/Parcelable$Creator;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Landroid/view/inputmethod/InputMethodSubtype;
    :try_end_16
    .catchall {:try_start_1 .. :try_end_16} :catchall_1d

    .line 193
    if-eqz v0, :cond_1c

    .line 194
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 195
    const/4 v0, 0x0

    :cond_1c
    return-object v1

    .line 193
    :catchall_1d
    move-exception v1

    if-eqz v0, :cond_24

    .line 194
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 195
    const/4 v0, 0x0

    :cond_24
    throw v1
.end method


# virtual methods
.method public get(I)Landroid/view/inputmethod/InputMethodSubtype;
    .registers 7
    .param p1, "index"    # I

    .prologue
    .line 131
    if-ltz p1, :cond_6

    iget v2, p0, mCount:I

    if-gt v2, p1, :cond_c

    .line 132
    :cond_6
    new-instance v2, Ljava/lang/ArrayIndexOutOfBoundsException;

    invoke-direct {v2}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>()V

    throw v2

    .line 134
    :cond_c
    iget-object v1, p0, mInstance:[Landroid/view/inputmethod/InputMethodSubtype;

    .line 135
    .local v1, "instance":[Landroid/view/inputmethod/InputMethodSubtype;
    if-nez v1, :cond_2e

    .line 136
    iget-object v3, p0, mLockObject:Ljava/lang/Object;

    monitor-enter v3

    .line 137
    :try_start_13
    iget-object v1, p0, mInstance:[Landroid/view/inputmethod/InputMethodSubtype;

    .line 138
    if-nez v1, :cond_2d

    .line 139
    iget-object v2, p0, mCompressedData:[B

    iget v4, p0, mDecompressedSize:I

    invoke-static {v2, v4}, decompress([BI)[B

    move-result-object v0

    .line 142
    .local v0, "decompressedData":[B
    const/4 v2, 0x0

    iput-object v2, p0, mCompressedData:[B

    .line 143
    const/4 v2, 0x0

    iput v2, p0, mDecompressedSize:I

    .line 144
    if-eqz v0, :cond_31

    .line 145
    invoke-static {v0}, unmarshall([B)[Landroid/view/inputmethod/InputMethodSubtype;

    move-result-object v1

    .line 150
    :goto_2b
    iput-object v1, p0, mInstance:[Landroid/view/inputmethod/InputMethodSubtype;

    .line 152
    .end local v0    # "decompressedData":[B
    :cond_2d
    monitor-exit v3
    :try_end_2e
    .catchall {:try_start_13 .. :try_end_2e} :catchall_3d

    .line 154
    :cond_2e
    aget-object v2, v1, p1

    return-object v2

    .line 147
    .restart local v0    # "decompressedData":[B
    :cond_31
    :try_start_31
    const-string v2, "InputMethodSubtypeArray"

    const-string v4, "Failed to decompress data. Returns null as fallback."

    invoke-static {v2, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 148
    iget v2, p0, mCount:I

    new-array v1, v2, [Landroid/view/inputmethod/InputMethodSubtype;

    goto :goto_2b

    .line 152
    .end local v0    # "decompressedData":[B
    :catchall_3d
    move-exception v2

    monitor-exit v3
    :try_end_3f
    .catchall {:try_start_31 .. :try_end_3f} :catchall_3d

    throw v2
.end method

.method public getCount()I
    .registers 2

    .prologue
    .line 161
    iget v0, p0, mCount:I

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;)V
    .registers 8
    .param p1, "dest"    # Landroid/os/Parcel;

    .prologue
    .line 86
    iget v3, p0, mCount:I

    if-nez v3, :cond_a

    .line 87
    iget v3, p0, mCount:I

    invoke-virtual {p1, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 120
    :goto_9
    return-void

    .line 91
    :cond_a
    iget-object v0, p0, mCompressedData:[B

    .line 92
    .local v0, "compressedData":[B
    iget v2, p0, mDecompressedSize:I

    .line 93
    .local v2, "decompressedSize":I
    if-nez v0, :cond_36

    if-nez v2, :cond_36

    .line 94
    iget-object v4, p0, mLockObject:Ljava/lang/Object;

    monitor-enter v4

    .line 95
    :try_start_15
    iget-object v0, p0, mCompressedData:[B

    .line 96
    iget v2, p0, mDecompressedSize:I

    .line 97
    if-nez v0, :cond_35

    if-nez v2, :cond_35

    .line 98
    iget-object v3, p0, mInstance:[Landroid/view/inputmethod/InputMethodSubtype;

    invoke-static {v3}, marshall([Landroid/view/inputmethod/InputMethodSubtype;)[B

    move-result-object v1

    .line 99
    .local v1, "decompressedData":[B
    invoke-static {v1}, compress([B)[B

    move-result-object v0

    .line 100
    if-nez v0, :cond_46

    .line 101
    const/4 v2, -0x1

    .line 102
    const-string v3, "InputMethodSubtypeArray"

    const-string v5, "Failed to compress data."

    invoke-static {v3, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 106
    :goto_31
    iput v2, p0, mDecompressedSize:I

    .line 107
    iput-object v0, p0, mCompressedData:[B

    .line 109
    .end local v1    # "decompressedData":[B
    :cond_35
    monitor-exit v4
    :try_end_36
    .catchall {:try_start_15 .. :try_end_36} :catchall_48

    .line 112
    :cond_36
    if-eqz v0, :cond_4b

    if-lez v2, :cond_4b

    .line 113
    iget v3, p0, mCount:I

    invoke-virtual {p1, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 114
    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 115
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByteArray([B)V

    goto :goto_9

    .line 104
    .restart local v1    # "decompressedData":[B
    :cond_46
    :try_start_46
    array-length v2, v1

    goto :goto_31

    .line 109
    .end local v1    # "decompressedData":[B
    :catchall_48
    move-exception v3

    monitor-exit v4
    :try_end_4a
    .catchall {:try_start_46 .. :try_end_4a} :catchall_48

    throw v3

    .line 117
    :cond_4b
    const-string v3, "InputMethodSubtypeArray"

    const-string v4, "Unexpected state. Behaving as an empty array."

    invoke-static {v3, v4}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 118
    const/4 v3, 0x0

    invoke-virtual {p1, v3}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_9
.end method
