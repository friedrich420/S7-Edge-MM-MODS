.class public Landroid/sec/clipboard/data/list/ClipboardDataHtml;
.super Landroid/sec/clipboard/data/ClipboardData;
.source "ClipboardDataHtml.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "ClipboardDataHtml"

.field private static final regex:Ljava/lang/String; = "<(/)?([a-zA-Z]*)(\\s[a-zA-Z]*=[^>]*)?(\\s)*(/)?>"

.field private static final regex2:Ljava/lang/String; = "(?i)<[^/bpd][^>]*>|<p[a-z][^>]*>|<br[a-z][^>]*>|<d[^i][^v][^>]*>|<div[a-z][^>]*>|</[^bpd]+?>|</p[a-z]+>|</br[a-z]+>|</d[^i][^v]+>|</div[a-z]+>"

.field private static final serialVersionUID:J = 0x1L


# instance fields
.field private mFirstImg:Landroid/graphics/Bitmap;

.field private mFirstImgPath:Ljava/lang/String;

.field private mHtml:Ljava/lang/String;

.field private mPlainText:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 56
    const/4 v0, 0x4

    invoke-direct {p0, v0}, Landroid/sec/clipboard/data/ClipboardData;-><init>(I)V

    .line 47
    const-string v0, ""

    iput-object v0, p0, mHtml:Ljava/lang/String;

    .line 48
    const-string v0, ""

    iput-object v0, p0, mPlainText:Ljava/lang/String;

    .line 49
    const/4 v0, 0x0

    iput-object v0, p0, mFirstImg:Landroid/graphics/Bitmap;

    .line 50
    const-string v0, ""

    iput-object v0, p0, mFirstImgPath:Ljava/lang/String;

    .line 57
    return-void
.end method

.method public constructor <init>(Landroid/sec/clipboard/data/list/ClipboardDataHTMLFragment;)V
    .registers 4
    .param p1, "htmlFragment"    # Landroid/sec/clipboard/data/list/ClipboardDataHTMLFragment;

    .prologue
    .line 61
    invoke-direct {p0}, <init>()V

    .line 62
    iget-object v0, p1, Landroid/sec/clipboard/data/list/ClipboardDataHTMLFragment;->mValue:Ljava/lang/String;

    iput-object v0, p0, mHtml:Ljava/lang/String;

    .line 63
    iget-object v0, p1, Landroid/sec/clipboard/data/list/ClipboardDataHTMLFragment;->mValuePlainText:Ljava/lang/String;

    iput-object v0, p0, mPlainText:Ljava/lang/String;

    .line 64
    iget-object v0, p1, Landroid/sec/clipboard/data/list/ClipboardDataHTMLFragment;->mFirstImg:Landroid/graphics/Bitmap;

    iput-object v0, p0, mFirstImg:Landroid/graphics/Bitmap;

    .line 65
    iget-object v0, p1, Landroid/sec/clipboard/data/list/ClipboardDataHTMLFragment;->mFirstImgPath:Ljava/lang/String;

    iput-object v0, p0, mFirstImgPath:Ljava/lang/String;

    .line 66
    invoke-virtual {p1}, Landroid/sec/clipboard/data/list/ClipboardDataHTMLFragment;->getTimestamp()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, setTimestamp(J)V

    .line 67
    return-void
.end method


# virtual methods
.method public SetAlternateFormat(ILandroid/sec/clipboard/data/ClipboardData;)Z
    .registers 9
    .param p1, "format"    # I
    .param p2, "altData"    # Landroid/sec/clipboard/data/ClipboardData;

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 95
    invoke-super {p0, p1, p2}, Landroid/sec/clipboard/data/ClipboardData;->SetAlternateFormat(ILandroid/sec/clipboard/data/ClipboardData;)Z

    move-result v0

    .line 96
    .local v0, "Result":Z
    if-eqz v0, :cond_10

    iget-object v3, p0, mHtml:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    if-ge v3, v1, :cond_11

    .line 112
    .end local p2    # "altData":Landroid/sec/clipboard/data/ClipboardData;
    :cond_10
    :goto_10
    return v2

    .line 100
    .restart local p2    # "altData":Landroid/sec/clipboard/data/ClipboardData;
    :cond_11
    packed-switch p1, :pswitch_data_3c

    .line 109
    :pswitch_14
    const/4 v0, 0x0

    .end local p2    # "altData":Landroid/sec/clipboard/data/ClipboardData;
    :goto_15
    move v2, v0

    .line 112
    goto :goto_10

    .line 102
    .restart local p2    # "altData":Landroid/sec/clipboard/data/ClipboardData;
    :pswitch_17
    check-cast p2, Landroid/sec/clipboard/data/list/ClipboardDataText;

    .end local p2    # "altData":Landroid/sec/clipboard/data/ClipboardData;
    iget-object v1, p0, mPlainText:Ljava/lang/String;

    invoke-virtual {p2, v1}, Landroid/sec/clipboard/data/list/ClipboardDataText;->setText(Ljava/lang/CharSequence;)Z

    move-result v0

    .line 103
    goto :goto_15

    .line 105
    .restart local p2    # "altData":Landroid/sec/clipboard/data/ClipboardData;
    :pswitch_20
    check-cast p2, Landroid/sec/clipboard/data/list/ClipboardDataHtml;

    .end local p2    # "altData":Landroid/sec/clipboard/data/ClipboardData;
    iget-object v3, p0, mPlainText:Ljava/lang/String;

    iget-object v4, p0, mHtml:Ljava/lang/String;

    iget-object v5, p0, mFirstImgPath:Ljava/lang/String;

    invoke-virtual {v5}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p2, v3, v4, v5}, setHtmlWithImagePathInternal(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    .line 106
    iget-object v3, p0, mHtml:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    if-lez v3, :cond_39

    move v0, v1

    .line 107
    :goto_38
    goto :goto_15

    :cond_39
    move v0, v2

    .line 106
    goto :goto_38

    .line 100
    nop

    :pswitch_data_3c
    .packed-switch 0x2
        :pswitch_17
        :pswitch_14
        :pswitch_20
    .end packed-switch
.end method

.method public clearData()V
    .registers 2

    .prologue
    .line 120
    const-string v0, ""

    iput-object v0, p0, mHtml:Ljava/lang/String;

    .line 121
    const-string v0, ""

    iput-object v0, p0, mPlainText:Ljava/lang/String;

    .line 122
    const/4 v0, 0x0

    iput-object v0, p0, mFirstImg:Landroid/graphics/Bitmap;

    .line 123
    const-string v0, ""

    iput-object v0, p0, mFirstImgPath:Ljava/lang/String;

    .line 124
    return-void
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 6
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    const/4 v1, 0x0

    .line 291
    sget-boolean v2, Landroid/sec/clipboard/data/ClipboardConstants;->DEBUG:Z

    if-eqz v2, :cond_c

    .line 292
    const-string v2, "ClipboardDataHtml"

    const-string v3, "html equals"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 295
    :cond_c
    invoke-super {p0, p1}, Landroid/sec/clipboard/data/ClipboardData;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_13

    .line 304
    :cond_12
    :goto_12
    return v1

    .line 299
    :cond_13
    instance-of v2, p1, Landroid/sec/clipboard/data/list/ClipboardDataHtml;

    if-eqz v2, :cond_12

    move-object v0, p1

    .line 303
    check-cast v0, Landroid/sec/clipboard/data/list/ClipboardDataHtml;

    .line 304
    .local v0, "trgData":Landroid/sec/clipboard/data/list/ClipboardDataHtml;
    iget-object v2, p0, mHtml:Ljava/lang/String;

    invoke-virtual {v0}, getHtml()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v2

    if-nez v2, :cond_12

    const/4 v1, 0x1

    goto :goto_12
.end method

.method public getFirstImage(II)Landroid/graphics/Bitmap;
    .registers 13
    .param p1, "reqWidth"    # I
    .param p2, "reqHeight"    # I

    .prologue
    const/4 v9, 0x1

    const/4 v8, 0x0

    const/4 v7, 0x7

    .line 235
    iget-object v4, p0, mFirstImg:Landroid/graphics/Bitmap;

    if-eqz v4, :cond_a

    .line 236
    iget-object v0, p0, mFirstImg:Landroid/graphics/Bitmap;

    .line 273
    :cond_9
    :goto_9
    return-object v0

    .line 239
    :cond_a
    const/4 v0, 0x0

    .line 240
    .local v0, "Result":Landroid/graphics/Bitmap;
    iget-object v4, p0, mHtml:Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    if-ge v4, v9, :cond_1f

    .line 241
    sget-boolean v4, Landroid/sec/clipboard/data/ClipboardConstants;->DEBUG:Z

    if-eqz v4, :cond_9

    .line 242
    const-string v4, "ClipboardDataHtml"

    const-string v5, "getFirstImage : Data is empty."

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_9

    .line 247
    :cond_1f
    const-string v2, ""

    .line 249
    .local v2, "sFileName":Ljava/lang/String;
    :try_start_21
    iget-object v4, p0, mHtml:Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/sec/clipboard/util/ClipboardProcText;->getImgFileNameFormHtml(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 250
    invoke-static {v2}, Landroid/net/Uri;->decode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 251
    invoke-static {v2}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;
    :try_end_36
    .catch Ljava/lang/Exception; {:try_start_21 .. :try_end_36} :catch_4b

    move-result-object v2

    .line 258
    :cond_37
    :goto_37
    if-eqz v2, :cond_6d

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v4

    if-ge v4, v9, :cond_6d

    .line 259
    sget-boolean v4, Landroid/sec/clipboard/data/ClipboardConstants;->DEBUG:Z

    if-eqz v4, :cond_9

    .line 260
    const-string v4, "ClipboardDataHtml"

    const-string v5, "getFirstImage : FileName is empty."

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_9

    .line 252
    :catch_4b
    move-exception v1

    .line 253
    .local v1, "e":Ljava/lang/Exception;
    sget-boolean v4, Landroid/sec/clipboard/data/ClipboardConstants;->DEBUG:Z

    if-eqz v4, :cond_37

    .line 254
    const-string v4, "ClipboardDataHtml"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "getFirstImage : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_37

    .line 265
    .end local v1    # "e":Ljava/lang/Exception;
    :cond_6d
    if-eqz v2, :cond_84

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v4

    if-le v4, v7, :cond_84

    invoke-virtual {v2, v8, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    const-string v5, "http://"

    invoke-virtual {v4, v5}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v4

    if-nez v4, :cond_84

    .line 272
    :goto_81
    iput-object v0, p0, mFirstImg:Landroid/graphics/Bitmap;

    goto :goto_9

    .line 266
    :cond_84
    if-eqz v2, :cond_a5

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v4

    if-le v4, v7, :cond_a5

    invoke-virtual {v2, v8, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    const-string v5, "file://"

    invoke-virtual {v4, v5}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v4

    if-nez v4, :cond_a5

    .line 267
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v4

    invoke-virtual {v2, v7, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    .line 268
    .local v3, "substring":Ljava/lang/String;
    invoke-static {v3, p1, p2}, Landroid/sec/clipboard/util/ClipboardDataBitmapUrl;->getFilePathBitmap(Ljava/lang/String;II)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 269
    goto :goto_81

    .line 270
    .end local v3    # "substring":Ljava/lang/String;
    :cond_a5
    invoke-static {v2, p2, p2}, Landroid/sec/clipboard/util/ClipboardDataBitmapUrl;->getFilePathBitmap(Ljava/lang/String;II)Landroid/graphics/Bitmap;

    move-result-object v0

    goto :goto_81
.end method

.method public getFirstImgPath()Ljava/lang/String;
    .registers 2

    .prologue
    .line 393
    iget-object v0, p0, mFirstImgPath:Ljava/lang/String;

    return-object v0
.end method

.method public getHtml()Ljava/lang/String;
    .registers 2

    .prologue
    .line 223
    iget-object v0, p0, mHtml:Ljava/lang/String;

    return-object v0
.end method

.method public getPlainText()Ljava/lang/String;
    .registers 2

    .prologue
    .line 281
    iget-object v0, p0, mPlainText:Ljava/lang/String;

    return-object v0
.end method

.method public isValidData()Z
    .registers 2

    .prologue
    .line 79
    iget-object v0, p0, mHtml:Ljava/lang/String;

    if-nez v0, :cond_6

    .line 80
    const/4 v0, 0x0

    .line 82
    :goto_5
    return v0

    :cond_6
    const/4 v0, 0x1

    goto :goto_5
.end method

.method protected readFormSource(Landroid/os/Parcel;)V
    .registers 2
    .param p1, "source"    # Landroid/os/Parcel;

    .prologue
    .line 400
    return-void
.end method

.method protected readFromSource(Landroid/os/Parcel;)V
    .registers 6
    .param p1, "source"    # Landroid/os/Parcel;

    .prologue
    .line 342
    :try_start_0
    const-class v1, Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->readValue(Ljava/lang/ClassLoader;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    iput-object v1, p0, mHtml:Ljava/lang/String;

    .line 343
    const-class v1, Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->readValue(Ljava/lang/ClassLoader;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    iput-object v1, p0, mPlainText:Ljava/lang/String;

    .line 344
    const-class v1, Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->readValue(Ljava/lang/ClassLoader;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    iput-object v1, p0, mFirstImgPath:Ljava/lang/String;

    .line 345
    const-class v1, Landroid/content/ClipData;

    invoke-virtual {v1}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->readValue(Ljava/lang/ClassLoader;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/ClipData;

    iput-object v1, p0, mClipdata:Landroid/content/ClipData;

    .line 346
    const-class v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->readValue(Ljava/lang/ClassLoader;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    iput-boolean v1, p0, mIsProtected:Z

    .line 347
    sget-boolean v1, Landroid/sec/clipboard/data/ClipboardConstants;->INFO_DEBUG:Z

    if-eqz v1, :cond_68

    .line 348
    const-string v1, "ClipboardDataHtml"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "ClipboardDataHtml : readFromSource : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, mHtml:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_68
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_68} :catch_69

    .line 353
    :cond_68
    :goto_68
    return-void

    .line 350
    :catch_69
    move-exception v0

    .line 351
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "ClipboardDataHtml"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "readFromSource~Exception :"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_68
.end method

.method protected setClipboardDataHtml(Ljava/lang/String;Ljava/lang/String;Landroid/graphics/Bitmap;Ljava/lang/String;)V
    .registers 5
    .param p1, "html"    # Ljava/lang/String;
    .param p2, "plain"    # Ljava/lang/String;
    .param p3, "firstImg"    # Landroid/graphics/Bitmap;
    .param p4, "firstImgPath"    # Ljava/lang/String;

    .prologue
    .line 71
    iput-object p1, p0, mHtml:Ljava/lang/String;

    .line 72
    iput-object p2, p0, mPlainText:Ljava/lang/String;

    .line 73
    iput-object p3, p0, mFirstImg:Landroid/graphics/Bitmap;

    .line 74
    iput-object p4, p0, mFirstImgPath:Ljava/lang/String;

    .line 75
    return-void
.end method

.method public setFirstImgPath(Ljava/lang/String;)Z
    .registers 6
    .param p1, "FilePath"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 371
    if-eqz p1, :cond_a

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v3

    if-ge v3, v1, :cond_c

    :cond_a
    move v1, v2

    .line 384
    :cond_b
    :goto_b
    return v1

    .line 375
    :cond_c
    iput-object p1, p0, mFirstImgPath:Ljava/lang/String;

    .line 376
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 377
    .local v0, "tempFile":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->isFile()Z

    move-result v3

    if-nez v3, :cond_b

    .line 380
    sget-boolean v1, Landroid/sec/clipboard/data/ClipboardConstants;->DEBUG:Z

    if-eqz v1, :cond_24

    .line 381
    const-string v1, "ClipboardDataHtml"

    const-string v3, "ClipboardDataHtml : value is no file path ..check plz"

    invoke-static {v1, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_24
    move v1, v2

    .line 384
    goto :goto_b
.end method

.method public setHtml(Ljava/lang/CharSequence;)Z
    .registers 3
    .param p1, "text"    # Ljava/lang/CharSequence;

    .prologue
    .line 133
    iget-object v0, p0, mPlainText:Ljava/lang/String;

    invoke-virtual {p0, v0, p1}, setHtmlInternal(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    return v0
.end method

.method public setHtmlInternal(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z
    .registers 6
    .param p1, "text"    # Ljava/lang/CharSequence;
    .param p2, "html"    # Ljava/lang/CharSequence;

    .prologue
    const/high16 v2, 0x20000

    const/4 v0, 0x0

    .line 140
    if-eqz p2, :cond_f

    invoke-interface {p2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_10

    .line 169
    :cond_f
    :goto_f
    return v0

    .line 144
    :cond_10
    invoke-interface {p2}, Ljava/lang/CharSequence;->length()I

    move-result v1

    if-le v1, v2, :cond_1a

    .line 145
    invoke-interface {p2, v0, v2}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object p2

    .line 148
    :cond_1a
    invoke-interface {p2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, mHtml:Ljava/lang/String;

    .line 149
    sget-boolean v0, Landroid/sec/clipboard/data/ClipboardConstants;->INFO_DEBUG:Z

    if-eqz v0, :cond_2b

    .line 150
    const-string v0, "ClipboardDataHtml"

    iget-object v1, p0, mHtml:Ljava/lang/String;

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 153
    :cond_2b
    if-eqz p1, :cond_37

    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-gtz v0, :cond_67

    .line 155
    :cond_37
    iget-object v0, p0, mHtml:Ljava/lang/String;

    const-string v1, "(?i)<[^/bpd][^>]*>|<p[a-z][^>]*>|<br[a-z][^>]*>|<d[^i][^v][^>]*>|<div[a-z][^>]*>|</[^bpd]+?>|</p[a-z]+>|</br[a-z]+>|</d[^i][^v]+>|</div[a-z]+>"

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, mPlainText:Ljava/lang/String;

    .line 156
    iget-object v0, p0, mPlainText:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, mPlainText:Ljava/lang/String;

    .line 162
    :goto_4f
    sget-boolean v0, Landroid/sec/clipboard/data/ClipboardConstants;->INFO_DEBUG:Z

    if-eqz v0, :cond_5e

    .line 163
    const-string v0, "ClipboardDataHtml"

    iget-object v1, p0, mPlainText:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 166
    :cond_5e
    iget-object v0, p0, mFirstImg:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_65

    .line 167
    const/4 v0, 0x0

    iput-object v0, p0, mFirstImg:Landroid/graphics/Bitmap;

    .line 169
    :cond_65
    const/4 v0, 0x1

    goto :goto_f

    .line 159
    :cond_67
    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, mPlainText:Ljava/lang/String;

    goto :goto_4f
.end method

.method public setHtmlWithImagePath(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z
    .registers 7
    .param p1, "text"    # Ljava/lang/CharSequence;
    .param p2, "filePath"    # Ljava/lang/CharSequence;

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 190
    iget-object v3, p0, mPlainText:Ljava/lang/String;

    invoke-virtual {p0, v3, p1}, setHtmlInternal(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_b

    .line 213
    :cond_a
    :goto_a
    return v1

    .line 194
    :cond_b
    if-eqz p2, :cond_13

    invoke-interface {p2}, Ljava/lang/CharSequence;->length()I

    move-result v3

    if-ge v3, v2, :cond_1f

    .line 195
    :cond_13
    sget-boolean v2, Landroid/sec/clipboard/data/ClipboardConstants;->DEBUG:Z

    if-eqz v2, :cond_a

    .line 196
    const-string v2, "ClipboardDataHtml"

    const-string v3, "filePath is null"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_a

    .line 200
    :cond_1f
    invoke-interface {p2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, mFirstImgPath:Ljava/lang/String;

    .line 201
    new-instance v0, Ljava/io/File;

    invoke-interface {p2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 202
    .local v0, "tempFile":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->isFile()Z

    move-result v3

    if-nez v3, :cond_41

    .line 203
    sget-boolean v2, Landroid/sec/clipboard/data/ClipboardConstants;->DEBUG:Z

    if-eqz v2, :cond_a

    .line 204
    const-string v2, "ClipboardDataHtml"

    const-string/jumbo v3, "setHtmlWithImagePath : value is no file path ..check plz"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_a

    .line 210
    :cond_41
    sget-boolean v1, Landroid/sec/clipboard/data/ClipboardConstants;->DEBUG:Z

    if-eqz v1, :cond_4d

    .line 211
    const-string v1, "ClipboardDataHtml"

    const-string/jumbo v3, "setHtmlWithImagePath : value is GOOD file path."

    invoke-static {v1, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_4d
    move v1, v2

    .line 213
    goto :goto_a
.end method

.method public setHtmlWithImagePathInternal(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z
    .registers 5
    .param p1, "text"    # Ljava/lang/CharSequence;
    .param p2, "html"    # Ljava/lang/CharSequence;
    .param p3, "filePath"    # Ljava/lang/CharSequence;

    .prologue
    .line 176
    if-eqz p1, :cond_12

    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_12

    .line 177
    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, mPlainText:Ljava/lang/String;

    .line 179
    :cond_12
    invoke-virtual {p0, p2, p3}, setHtmlWithImagePath(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .registers 5

    .prologue
    const/16 v3, 0x14

    .line 361
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "this Html class. Value is "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v0, p0, mHtml:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-le v0, v3, :cond_26

    iget-object v0, p0, mHtml:Ljava/lang/String;

    const/4 v2, 0x0

    invoke-virtual {v0, v2, v3}, Ljava/lang/String;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v0

    :goto_1d
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_26
    iget-object v0, p0, mHtml:Ljava/lang/String;

    goto :goto_1d
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .registers 10
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    const/4 v6, 0x0

    .line 315
    sget-boolean v2, Landroid/sec/clipboard/data/ClipboardConstants;->DEBUG:Z

    if-eqz v2, :cond_c

    .line 316
    const-string v2, "ClipboardDataHtml"

    const-string v3, "html write to parcel"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 318
    :cond_c
    invoke-super {p0, p1, p2}, Landroid/sec/clipboard/data/ClipboardData;->writeToParcel(Landroid/os/Parcel;I)V

    .line 320
    iget-object v2, p0, Landroid/sec/clipboard/data/ClipboardData;->mClipdata:Landroid/content/ClipData;

    if-nez v2, :cond_37

    .line 321
    const/4 v2, 0x1

    new-array v1, v2, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string/jumbo v3, "text/html"

    aput-object v3, v1, v2

    .line 322
    .local v1, "mimeType":[Ljava/lang/String;
    new-instance v0, Landroid/content/ClipData$Item;

    iget-object v2, p0, mPlainText:Ljava/lang/String;

    iget-object v3, p0, mHtml:Ljava/lang/String;

    new-instance v4, Ljava/io/File;

    iget-object v5, p0, mFirstImgPath:Ljava/lang/String;

    invoke-direct {v4, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v4}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v4

    invoke-direct {v0, v2, v3, v6, v4}, Landroid/content/ClipData$Item;-><init>(Ljava/lang/CharSequence;Ljava/lang/String;Landroid/content/Intent;Landroid/net/Uri;)V

    .line 323
    .local v0, "item":Landroid/content/ClipData$Item;
    new-instance v2, Landroid/content/ClipData;

    invoke-direct {v2, v6, v1, v0}, Landroid/content/ClipData;-><init>(Ljava/lang/CharSequence;[Ljava/lang/String;Landroid/content/ClipData$Item;)V

    iput-object v2, p0, Landroid/sec/clipboard/data/ClipboardData;->mClipdata:Landroid/content/ClipData;

    .line 325
    .end local v0    # "item":Landroid/content/ClipData$Item;
    .end local v1    # "mimeType":[Ljava/lang/String;
    :cond_37
    iget-object v2, p0, mHtml:Ljava/lang/String;

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeValue(Ljava/lang/Object;)V

    .line 326
    iget-object v2, p0, mPlainText:Ljava/lang/String;

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeValue(Ljava/lang/Object;)V

    .line 327
    iget-object v2, p0, mFirstImgPath:Ljava/lang/String;

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeValue(Ljava/lang/Object;)V

    .line 328
    iget-object v2, p0, Landroid/sec/clipboard/data/ClipboardData;->mClipdata:Landroid/content/ClipData;

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeValue(Ljava/lang/Object;)V

    .line 329
    iget-boolean v2, p0, Landroid/sec/clipboard/data/ClipboardData;->mIsProtected:Z

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeValue(Ljava/lang/Object;)V

    .line 331
    return-void
.end method
