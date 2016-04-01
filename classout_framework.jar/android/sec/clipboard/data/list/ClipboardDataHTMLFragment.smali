.class public Landroid/sec/clipboard/data/list/ClipboardDataHTMLFragment;
.super Landroid/sec/clipboard/data/list/ClipboardDataHtml;
.source "ClipboardDataHTMLFragment.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "ClipboardDataHTMLFragment"

.field private static final serialVersionUID:J = 0x1L


# instance fields
.field public mFirstImg:Landroid/graphics/Bitmap;

.field public mFirstImgPath:Ljava/lang/String;

.field public mValue:Ljava/lang/String;

.field public mValuePlainText:Ljava/lang/String;

.field public mValueUrl:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 68
    invoke-direct {p0}, Landroid/sec/clipboard/data/list/ClipboardDataHtml;-><init>()V

    .line 54
    const-string v0, ""

    iput-object v0, p0, mValue:Ljava/lang/String;

    .line 56
    const-string v0, ""

    iput-object v0, p0, mValueUrl:Ljava/lang/String;

    .line 58
    const-string v0, ""

    iput-object v0, p0, mValuePlainText:Ljava/lang/String;

    .line 60
    const/4 v0, 0x0

    iput-object v0, p0, mFirstImg:Landroid/graphics/Bitmap;

    .line 62
    const-string v0, ""

    iput-object v0, p0, mFirstImgPath:Ljava/lang/String;

    .line 69
    return-void
.end method


# virtual methods
.method public GetFirstImgPath()Ljava/lang/String;
    .registers 2

    .prologue
    .line 300
    invoke-super {p0}, Landroid/sec/clipboard/data/list/ClipboardDataHtml;->getFirstImgPath()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public GetHTMLFragment()Ljava/lang/CharSequence;
    .registers 2

    .prologue
    .line 151
    invoke-super {p0}, Landroid/sec/clipboard/data/list/ClipboardDataHtml;->getHtml()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public GetHTMLUrl()Ljava/lang/CharSequence;
    .registers 2

    .prologue
    .line 160
    iget-object v0, p0, mValueUrl:Ljava/lang/String;

    return-object v0
.end method

.method public SetAlternateFormat(ILandroid/sec/clipboard/data/ClipboardData;)Z
    .registers 4
    .param p1, "format"    # I
    .param p2, "altData"    # Landroid/sec/clipboard/data/ClipboardData;

    .prologue
    .line 81
    invoke-super {p0, p1, p2}, Landroid/sec/clipboard/data/list/ClipboardDataHtml;->SetAlternateFormat(ILandroid/sec/clipboard/data/ClipboardData;)Z

    move-result v0

    return v0
.end method

.method public SetFirstImgPath(Ljava/lang/String;)Z
    .registers 3
    .param p1, "FilePath"    # Ljava/lang/String;

    .prologue
    .line 291
    invoke-super {p0, p1}, Landroid/sec/clipboard/data/list/ClipboardDataHtml;->setFirstImgPath(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public SetHTMLFragment(Ljava/lang/CharSequence;)Z
    .registers 3
    .param p1, "text"    # Ljava/lang/CharSequence;

    .prologue
    .line 99
    invoke-super {p0, p1}, Landroid/sec/clipboard/data/list/ClipboardDataHtml;->setHtml(Ljava/lang/CharSequence;)Z

    move-result v0

    return v0
.end method

.method public SetHTMLFragment(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z
    .registers 4
    .param p1, "text"    # Ljava/lang/CharSequence;
    .param p2, "HtmlUrl"    # Ljava/lang/CharSequence;

    .prologue
    .line 135
    iget-object v0, p0, mValuePlainText:Ljava/lang/String;

    invoke-virtual {p0, v0, p1}, SetHTMLFragmentInternal(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_a

    .line 136
    const/4 v0, 0x0

    .line 142
    :goto_9
    return v0

    .line 139
    :cond_a
    if-eqz p2, :cond_18

    invoke-interface {p2}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-lez v0, :cond_18

    .line 140
    invoke-interface {p2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, mValueUrl:Ljava/lang/String;

    .line 142
    :cond_18
    const/4 v0, 0x1

    goto :goto_9
.end method

.method public SetHTMLFragmentInternal(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z
    .registers 4
    .param p1, "text"    # Ljava/lang/CharSequence;
    .param p2, "html"    # Ljava/lang/CharSequence;

    .prologue
    .line 106
    invoke-super {p0, p1, p2}, Landroid/sec/clipboard/data/list/ClipboardDataHtml;->setHtmlInternal(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    return v0
.end method

.method public SetHTMLFragmentWithImagePath(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z
    .registers 4
    .param p1, "text"    # Ljava/lang/CharSequence;
    .param p2, "filePath"    # Ljava/lang/CharSequence;

    .prologue
    .line 124
    invoke-super {p0, p1, p2}, Landroid/sec/clipboard/data/list/ClipboardDataHtml;->setHtmlWithImagePath(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    return v0
.end method

.method public SetHTMLFragmentWithImagePathInternal(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z
    .registers 5
    .param p1, "text"    # Ljava/lang/CharSequence;
    .param p2, "html"    # Ljava/lang/CharSequence;
    .param p3, "filePath"    # Ljava/lang/CharSequence;

    .prologue
    .line 113
    invoke-super {p0, p1, p2, p3}, Landroid/sec/clipboard/data/list/ClipboardDataHtml;->setHtmlWithImagePathInternal(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    return v0
.end method

.method public clearData()V
    .registers 1

    .prologue
    .line 89
    invoke-super {p0}, Landroid/sec/clipboard/data/list/ClipboardDataHtml;->clearData()V

    .line 90
    return-void
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 3
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    .line 250
    invoke-super {p0, p1}, Landroid/sec/clipboard/data/list/ClipboardDataHtml;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public getClipHtmlImageFilePath()Ljava/lang/String;
    .registers 7

    .prologue
    .line 181
    const-string v1, ""

    .line 183
    .local v1, "sFileName":Ljava/lang/String;
    :try_start_2
    iget-object v3, p0, mValue:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    const/4 v4, 0x1

    if-ge v3, v4, :cond_18

    .line 184
    sget-boolean v3, Landroid/sec/clipboard/data/ClipboardDefine;->DEBUG:Z

    if-eqz v3, :cond_16

    .line 185
    const-string v3, "ClipboardDataHTMLFragment"

    const-string v4, "getClipHtmlImageFilePath : Data is empty."

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_16
    move-object v2, v1

    .line 200
    .end local v1    # "sFileName":Ljava/lang/String;
    .local v2, "sFileName":Ljava/lang/String;
    :goto_17
    return-object v2

    .line 189
    .end local v2    # "sFileName":Ljava/lang/String;
    .restart local v1    # "sFileName":Ljava/lang/String;
    :cond_18
    iget-object v3, p0, mValue:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/sec/clipboard/util/ClipboardProcText;->getImgFileNameFormHtml(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 192
    if-eqz v1, :cond_28

    .line 193
    invoke-static {v1}, Landroid/net/Uri;->decode(Ljava/lang/String;)Ljava/lang/String;
    :try_end_27
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_27} :catch_2a

    move-result-object v1

    :cond_28
    :goto_28
    move-object v2, v1

    .line 200
    .end local v1    # "sFileName":Ljava/lang/String;
    .restart local v2    # "sFileName":Ljava/lang/String;
    goto :goto_17

    .line 195
    .end local v2    # "sFileName":Ljava/lang/String;
    .restart local v1    # "sFileName":Ljava/lang/String;
    :catch_2a
    move-exception v0

    .line 196
    .local v0, "e":Ljava/lang/Exception;
    sget-boolean v3, Landroid/sec/clipboard/data/ClipboardDefine;->DEBUG:Z

    if-eqz v3, :cond_28

    .line 197
    const-string v3, "ClipboardDataHTMLFragment"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "getHtmlImageFilePath : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_28
.end method

.method public getDimensionsFromHTML(Ljava/lang/String;)Ljava/lang/String;
    .registers 12
    .param p1, "aInput"    # Ljava/lang/String;

    .prologue
    .line 210
    const-string v2, ""

    .line 212
    .local v2, "lDimen":Ljava/lang/String;
    :try_start_2
    iget-object v7, p0, mValue:Ljava/lang/String;

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v7

    const/4 v8, 0x1

    if-ge v7, v8, :cond_18

    .line 213
    sget-boolean v7, Landroid/sec/clipboard/data/ClipboardDefine;->DEBUG:Z

    if-eqz v7, :cond_16

    .line 214
    const-string v7, "ClipboardDataHTMLFragment"

    const-string v8, "getDimensionsFromHTML : Data is empty."

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_16
    move-object v3, v2

    .line 230
    .end local v2    # "lDimen":Ljava/lang/String;
    .local v3, "lDimen":Ljava/lang/String;
    :goto_17
    return-object v3

    .line 218
    .end local v3    # "lDimen":Ljava/lang/String;
    .restart local v2    # "lDimen":Ljava/lang/String;
    :cond_18
    const-string v0, "<img"

    .line 219
    .local v0, "IMG_BEGIN":Ljava/lang/String;
    iget-object v6, p0, mValue:Ljava/lang/String;

    .line 220
    .local v6, "lImgTag":Ljava/lang/String;
    invoke-virtual {v6}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v6

    .line 221
    iget-object v7, p0, mValue:Ljava/lang/String;

    const-string v8, "<img"

    invoke-virtual {v6, v8}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v6

    .line 222
    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v4

    .line 223
    .local v4, "lDimenIndex":I
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v7

    add-int/2addr v7, v4

    const-string v8, "=\""

    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v8

    add-int/2addr v7, v8

    invoke-virtual {v6, v7}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v5

    .line 224
    .local v5, "lDimenSub":Ljava/lang/String;
    const/4 v7, 0x0

    const-string v8, "\""

    invoke-virtual {v5, v8}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v8

    invoke-virtual {v5, v7, v8}, Ljava/lang/String;->substring(II)Ljava/lang/String;
    :try_end_4e
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_4e} :catch_51

    move-result-object v2

    .end local v0    # "IMG_BEGIN":Ljava/lang/String;
    .end local v4    # "lDimenIndex":I
    .end local v5    # "lDimenSub":Ljava/lang/String;
    .end local v6    # "lImgTag":Ljava/lang/String;
    :cond_4f
    :goto_4f
    move-object v3, v2

    .line 230
    .end local v2    # "lDimen":Ljava/lang/String;
    .restart local v3    # "lDimen":Ljava/lang/String;
    goto :goto_17

    .line 225
    .end local v3    # "lDimen":Ljava/lang/String;
    .restart local v2    # "lDimen":Ljava/lang/String;
    :catch_51
    move-exception v1

    .line 226
    .local v1, "e":Ljava/lang/Exception;
    sget-boolean v7, Landroid/sec/clipboard/data/ClipboardDefine;->DEBUG:Z

    if-eqz v7, :cond_4f

    .line 227
    const-string v7, "ClipboardDataHTMLFragment"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "getDimensionsFromHTML Exception: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_4f
.end method

.method public getFirstImage(II)Landroid/graphics/Bitmap;
    .registers 4
    .param p1, "reqWidth"    # I
    .param p2, "reqHeight"    # I

    .prologue
    .line 172
    invoke-super {p0, p1, p2}, Landroid/sec/clipboard/data/list/ClipboardDataHtml;->getFirstImage(II)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method public getText()Ljava/lang/String;
    .registers 2

    .prologue
    .line 240
    invoke-super {p0}, Landroid/sec/clipboard/data/list/ClipboardDataHtml;->getPlainText()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected readFormSource(Landroid/os/Parcel;)V
    .registers 2
    .param p1, "source"    # Landroid/os/Parcel;

    .prologue
    .line 307
    return-void
.end method

.method protected readFromSource(Landroid/os/Parcel;)V
    .registers 2
    .param p1, "source"    # Landroid/os/Parcel;

    .prologue
    .line 272
    invoke-super {p0, p1}, Landroid/sec/clipboard/data/list/ClipboardDataHtml;->readFromSource(Landroid/os/Parcel;)V

    .line 273
    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 2

    .prologue
    .line 281
    invoke-super {p0}, Landroid/sec/clipboard/data/list/ClipboardDataHtml;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .registers 3
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    .line 261
    invoke-super {p0, p1, p2}, Landroid/sec/clipboard/data/list/ClipboardDataHtml;->writeToParcel(Landroid/os/Parcel;I)V

    .line 262
    return-void
.end method
