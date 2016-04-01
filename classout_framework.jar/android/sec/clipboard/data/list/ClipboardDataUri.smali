.class public Landroid/sec/clipboard/data/list/ClipboardDataUri;
.super Landroid/sec/clipboard/data/ClipboardData;
.source "ClipboardDataUri.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/sec/clipboard/data/list/ClipboardDataUri$1;,
        Landroid/sec/clipboard/data/list/ClipboardDataUri$ImageFileFilter;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "ClipboardDataUri"

.field private static final serialVersionUID:J = 0x1L


# instance fields
.field private mPreviewImgPath:Ljava/lang/String;

.field private mValue:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 47
    const/4 v0, 0x5

    invoke-direct {p0, v0}, Landroid/sec/clipboard/data/ClipboardData;-><init>(I)V

    .line 43
    const-string v0, ""

    iput-object v0, p0, mPreviewImgPath:Ljava/lang/String;

    .line 44
    const-string v0, ""

    iput-object v0, p0, mValue:Ljava/lang/String;

    .line 48
    return-void
.end method


# virtual methods
.method public GetUri()Landroid/net/Uri;
    .registers 2

    .prologue
    .line 122
    invoke-virtual {p0}, getUri()Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method public SetAlternateFormat(ILandroid/sec/clipboard/data/ClipboardData;)Z
    .registers 7
    .param p1, "format"    # I
    .param p2, "altData"    # Landroid/sec/clipboard/data/ClipboardData;

    .prologue
    const/4 v3, 0x1

    .line 59
    invoke-super {p0, p1, p2}, Landroid/sec/clipboard/data/ClipboardData;->SetAlternateFormat(ILandroid/sec/clipboard/data/ClipboardData;)Z

    move-result v0

    .line 60
    .local v0, "Result":Z
    if-eqz v0, :cond_f

    iget-object v2, p0, mValue:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-ge v2, v3, :cond_11

    .line 61
    :cond_f
    const/4 v2, 0x0

    .line 80
    :goto_10
    return v2

    .line 64
    :cond_11
    packed-switch p1, :pswitch_data_3a

    .line 77
    const/4 v0, 0x0

    :cond_15
    :goto_15
    move v2, v0

    .line 80
    goto :goto_10

    .line 66
    :pswitch_17
    instance-of v2, p2, Landroid/sec/clipboard/data/list/ClipboardDataUri;

    if-eqz v2, :cond_38

    move-object v1, p2

    .line 67
    check-cast v1, Landroid/sec/clipboard/data/list/ClipboardDataUri;

    .line 68
    .local v1, "data":Landroid/sec/clipboard/data/list/ClipboardDataUri;
    iget-object v2, p0, mValue:Ljava/lang/String;

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v1, v2}, setUri(Landroid/net/Uri;)Z

    move-result v0

    .line 69
    iget-object v2, p0, mPreviewImgPath:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-le v2, v3, :cond_15

    .line 70
    iget-object v2, p0, mPreviewImgPath:Ljava/lang/String;

    invoke-virtual {v1, v2}, setPreviewImgPath(Ljava/lang/String;)Z

    move-result v2

    and-int/2addr v0, v2

    goto :goto_15

    .line 73
    .end local v1    # "data":Landroid/sec/clipboard/data/list/ClipboardDataUri;
    :cond_38
    const/4 v0, 0x0

    .line 75
    goto :goto_15

    .line 64
    :pswitch_data_3a
    .packed-switch 0x5
        :pswitch_17
    .end packed-switch
.end method

.method public SetUri(Landroid/net/Uri;)Z
    .registers 3
    .param p1, "uri"    # Landroid/net/Uri;

    .prologue
    .line 98
    invoke-virtual {p0, p1}, setUri(Landroid/net/Uri;)Z

    move-result v0

    return v0
.end method

.method public clearData()V
    .registers 2

    .prologue
    .line 89
    const-string v0, ""

    iput-object v0, p0, mValue:Ljava/lang/String;

    .line 90
    return-void
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 6
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    .line 148
    sget-boolean v2, Landroid/sec/clipboard/data/ClipboardConstants;->DEBUG:Z

    if-eqz v2, :cond_c

    .line 149
    const-string v2, "ClipboardDataUri"

    const-string/jumbo v3, "uri equals"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 151
    :cond_c
    const/4 v0, 0x0

    .line 152
    .local v0, "Result":Z
    invoke-super {p0, p1}, Landroid/sec/clipboard/data/ClipboardData;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_14

    .line 162
    .end local v0    # "Result":Z
    :cond_13
    :goto_13
    return v0

    .line 156
    .restart local v0    # "Result":Z
    :cond_14
    instance-of v2, p1, Landroid/sec/clipboard/data/list/ClipboardDataUri;

    if-eqz v2, :cond_13

    move-object v1, p1

    .line 160
    check-cast v1, Landroid/sec/clipboard/data/list/ClipboardDataUri;

    .line 162
    .local v1, "trgData":Landroid/sec/clipboard/data/list/ClipboardDataUri;
    iget-object v2, p0, mValue:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1}, getUri()Landroid/net/Uri;

    move-result-object v3

    invoke-virtual {v3}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v2

    if-nez v2, :cond_32

    const/4 v2, 0x1

    :goto_30
    move v0, v2

    goto :goto_13

    :cond_32
    const/4 v2, 0x0

    goto :goto_30
.end method

.method public getPreviewImgPath()Ljava/lang/String;
    .registers 2

    .prologue
    .line 242
    iget-object v0, p0, mPreviewImgPath:Ljava/lang/String;

    return-object v0
.end method

.method public getUri()Landroid/net/Uri;
    .registers 2

    .prologue
    .line 130
    iget-object v0, p0, mValue:Ljava/lang/String;

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method public isImagefile()Z
    .registers 5

    .prologue
    .line 250
    invoke-virtual {p0}, getUri()Landroid/net/Uri;

    move-result-object v1

    .line 251
    .local v1, "uri":Landroid/net/Uri;
    if-eqz v1, :cond_26

    const-string v2, "file"

    invoke-virtual {v1}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_26

    .line 252
    new-instance v0, Ljava/io/File;

    invoke-virtual {v1}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 253
    .local v0, "file":Ljava/io/File;
    new-instance v2, Landroid/sec/clipboard/data/list/ClipboardDataUri$ImageFileFilter;

    const/4 v3, 0x0

    invoke-direct {v2, v3}, Landroid/sec/clipboard/data/list/ClipboardDataUri$ImageFileFilter;-><init>(Landroid/sec/clipboard/data/list/ClipboardDataUri$1;)V

    invoke-virtual {v2, v0}, Landroid/sec/clipboard/data/list/ClipboardDataUri$ImageFileFilter;->accept(Ljava/io/File;)Z

    move-result v2

    .line 255
    .end local v0    # "file":Ljava/io/File;
    :goto_25
    return v2

    :cond_26
    const/4 v2, 0x0

    goto :goto_25
.end method

.method public isValidData()Z
    .registers 2

    .prologue
    .line 135
    iget-object v0, p0, mValue:Ljava/lang/String;

    if-nez v0, :cond_6

    .line 136
    const/4 v0, 0x0

    .line 138
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
    .line 282
    return-void
.end method

.method protected readFromSource(Landroid/os/Parcel;)V
    .registers 3
    .param p1, "source"    # Landroid/os/Parcel;

    .prologue
    .line 197
    const-class v0, Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readValue(Ljava/lang/ClassLoader;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, mValue:Ljava/lang/String;

    .line 198
    const-class v0, Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readValue(Ljava/lang/ClassLoader;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, mPreviewImgPath:Ljava/lang/String;

    .line 199
    const-class v0, Landroid/content/ClipData;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readValue(Ljava/lang/ClassLoader;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/ClipData;

    iput-object v0, p0, Landroid/sec/clipboard/data/ClipboardData;->mClipdata:Landroid/content/ClipData;

    .line 200
    const-class v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readValue(Ljava/lang/ClassLoader;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    iput-boolean v0, p0, Landroid/sec/clipboard/data/ClipboardData;->mIsProtected:Z

    .line 201
    return-void
.end method

.method public setPreviewImgPath(Ljava/lang/String;)Z
    .registers 8
    .param p1, "FilePath"    # Ljava/lang/String;

    .prologue
    .line 218
    sget-boolean v3, Landroid/sec/clipboard/data/ClipboardConstants;->INFO_DEBUG:Z

    if-eqz v3, :cond_1d

    .line 219
    const-string v3, "ClipboardDataUri"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "setPreviewImgPath :"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 221
    :cond_1d
    const/4 v0, 0x0

    .line 222
    .local v0, "Result":Z
    if-eqz p1, :cond_27

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v3

    const/4 v4, 0x1

    if-ge v3, v4, :cond_29

    :cond_27
    move v1, v0

    .line 233
    .end local v0    # "Result":Z
    .local v1, "Result":I
    :goto_28
    return v1

    .line 225
    .end local v1    # "Result":I
    .restart local v0    # "Result":Z
    :cond_29
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 226
    .local v2, "tempFile":Ljava/io/File;
    invoke-virtual {v2}, Ljava/io/File;->isFile()Z

    move-result v3

    if-eqz v3, :cond_3f

    invoke-virtual {p0}, isImagefile()Z

    move-result v3

    if-eqz v3, :cond_3f

    .line 227
    iput-object p1, p0, mPreviewImgPath:Ljava/lang/String;

    .line 228
    const/4 v0, 0x1

    :cond_3d
    :goto_3d
    move v1, v0

    .line 233
    .restart local v1    # "Result":I
    goto :goto_28

    .line 230
    .end local v1    # "Result":I
    :cond_3f
    const-string v3, ""

    iput-object v3, p0, mPreviewImgPath:Ljava/lang/String;

    .line 231
    sget-boolean v3, Landroid/sec/clipboard/data/ClipboardConstants;->DEBUG:Z

    if-eqz v3, :cond_3d

    const-string v3, "ClipboardDataUri"

    const-string v4, "ClipboardDataUri : value is no file path or not image file"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3d
.end method

.method public setUri(Landroid/net/Uri;)Z
    .registers 3
    .param p1, "uri"    # Landroid/net/Uri;

    .prologue
    .line 108
    if-eqz p1, :cond_c

    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_e

    .line 109
    :cond_c
    const/4 v0, 0x0

    .line 113
    :goto_d
    return v0

    .line 112
    :cond_e
    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, mValue:Ljava/lang/String;

    .line 113
    const/4 v0, 0x1

    goto :goto_d
.end method

.method public toString()Ljava/lang/String;
    .registers 5

    .prologue
    const/16 v3, 0x14

    .line 208
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "this Uri class. Value is "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v0, p0, mValue:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-le v0, v3, :cond_26

    iget-object v0, p0, mValue:Ljava/lang/String;

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
    iget-object v0, p0, mValue:Ljava/lang/String;

    goto :goto_1d
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .registers 7
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    .line 173
    sget-boolean v2, Landroid/sec/clipboard/data/ClipboardConstants;->DEBUG:Z

    if-eqz v2, :cond_b

    .line 174
    const-string v2, "ClipboardDataUri"

    const-string v3, "Uri write to parcel"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 176
    :cond_b
    invoke-super {p0, p1, p2}, Landroid/sec/clipboard/data/ClipboardData;->writeToParcel(Landroid/os/Parcel;I)V

    .line 178
    iget-object v2, p0, Landroid/sec/clipboard/data/ClipboardData;->mClipdata:Landroid/content/ClipData;

    if-nez v2, :cond_2f

    .line 179
    const/4 v2, 0x1

    new-array v1, v2, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string/jumbo v3, "text/uri-list"

    aput-object v3, v1, v2

    .line 180
    .local v1, "mimeType":[Ljava/lang/String;
    new-instance v0, Landroid/content/ClipData$Item;

    iget-object v2, p0, mValue:Ljava/lang/String;

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-direct {v0, v2}, Landroid/content/ClipData$Item;-><init>(Landroid/net/Uri;)V

    .line 181
    .local v0, "item":Landroid/content/ClipData$Item;
    new-instance v2, Landroid/content/ClipData;

    const-string v3, "MultiWindow_DragDrop"

    invoke-direct {v2, v3, v1, v0}, Landroid/content/ClipData;-><init>(Ljava/lang/CharSequence;[Ljava/lang/String;Landroid/content/ClipData$Item;)V

    iput-object v2, p0, Landroid/sec/clipboard/data/ClipboardData;->mClipdata:Landroid/content/ClipData;

    .line 183
    .end local v0    # "item":Landroid/content/ClipData$Item;
    .end local v1    # "mimeType":[Ljava/lang/String;
    :cond_2f
    iget-object v2, p0, mValue:Ljava/lang/String;

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeValue(Ljava/lang/Object;)V

    .line 184
    iget-object v2, p0, mPreviewImgPath:Ljava/lang/String;

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeValue(Ljava/lang/Object;)V

    .line 185
    iget-object v2, p0, Landroid/sec/clipboard/data/ClipboardData;->mClipdata:Landroid/content/ClipData;

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeValue(Ljava/lang/Object;)V

    .line 186
    iget-boolean v2, p0, Landroid/sec/clipboard/data/ClipboardData;->mIsProtected:Z

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeValue(Ljava/lang/Object;)V

    .line 187
    return-void
.end method
