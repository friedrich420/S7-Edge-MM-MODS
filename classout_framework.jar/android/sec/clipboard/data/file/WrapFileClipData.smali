.class public Landroid/sec/clipboard/data/file/WrapFileClipData;
.super Ljava/lang/Object;
.source "WrapFileClipData.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final TAG:Ljava/lang/String; = "WrapFileClipData"

.field private static final serialVersionUID:J = 0x1L


# instance fields
.field private transient mClip:Landroid/sec/clipboard/data/ClipboardData;

.field private mDeletedUserList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mDir:Ljava/io/File;

.field private mIsProtected:Z

.field private mPath:Ljava/io/File;


# direct methods
.method public constructor <init>(Landroid/sec/clipboard/data/ClipboardData;)V
    .registers 3
    .param p1, "clip"    # Landroid/sec/clipboard/data/ClipboardData;

    .prologue
    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, mDeletedUserList:Ljava/util/ArrayList;

    .line 30
    if-eqz p1, :cond_10

    .line 31
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/sec/clipboard/data/ClipboardData;->setClipdata(Landroid/content/ClipData;)V

    .line 33
    :cond_10
    iput-object p1, p0, mClip:Landroid/sec/clipboard/data/ClipboardData;

    .line 34
    invoke-static {}, Landroid/sec/clipboard/util/FileHelper;->getInstance()Landroid/sec/clipboard/util/FileHelper;

    move-result-object v0

    invoke-virtual {v0}, Landroid/sec/clipboard/util/FileHelper;->getNullFile()Ljava/io/File;

    move-result-object v0

    iput-object v0, p0, mPath:Ljava/io/File;

    .line 35
    return-void
.end method

.method private loadData()Landroid/sec/clipboard/data/ClipboardData;
    .registers 3

    .prologue
    .line 101
    invoke-static {}, Landroid/sec/clipboard/util/FileHelper;->getInstance()Landroid/sec/clipboard/util/FileHelper;

    move-result-object v0

    iget-object v1, p0, mPath:Ljava/io/File;

    invoke-virtual {v0, v1}, Landroid/sec/clipboard/util/FileHelper;->loadObjectFile(Ljava/io/File;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/sec/clipboard/data/ClipboardData;

    return-object v0
.end method


# virtual methods
.method public addDeletedUserList(I)V
    .registers 5
    .param p1, "userId"    # I

    .prologue
    .line 105
    const-string v0, "WrapFileClipData"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "addDeletedUserList : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 106
    iget-object v0, p0, mDeletedUserList:Ljava/util/ArrayList;

    if-nez v0, :cond_23

    .line 107
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, mDeletedUserList:Ljava/util/ArrayList;

    .line 110
    :cond_23
    invoke-virtual {p0, p1}, isDeletedUser(I)Z

    move-result v0

    if-nez v0, :cond_32

    .line 111
    iget-object v0, p0, mDeletedUserList:Ljava/util/ArrayList;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 113
    :cond_32
    return-void
.end method

.method public getClipData()Landroid/sec/clipboard/data/ClipboardData;
    .registers 3

    .prologue
    .line 38
    iget-object v0, p0, mClip:Landroid/sec/clipboard/data/ClipboardData;

    if-nez v0, :cond_14

    .line 39
    invoke-direct {p0}, loadData()Landroid/sec/clipboard/data/ClipboardData;

    move-result-object v0

    iput-object v0, p0, mClip:Landroid/sec/clipboard/data/ClipboardData;

    .line 41
    iget-object v0, p0, mClip:Landroid/sec/clipboard/data/ClipboardData;

    if-eqz v0, :cond_14

    .line 42
    iget-object v0, p0, mClip:Landroid/sec/clipboard/data/ClipboardData;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/sec/clipboard/data/ClipboardData;->setClipdata(Landroid/content/ClipData;)V

    .line 45
    :cond_14
    iget-object v0, p0, mClip:Landroid/sec/clipboard/data/ClipboardData;

    return-object v0
.end method

.method public getDir()Ljava/io/File;
    .registers 2

    .prologue
    .line 62
    iget-object v0, p0, mDir:Ljava/io/File;

    return-object v0
.end method

.method public getFile()Ljava/io/File;
    .registers 2

    .prologue
    .line 54
    iget-object v0, p0, mPath:Ljava/io/File;

    return-object v0
.end method

.method public isDeletedUser(I)Z
    .registers 4
    .param p1, "userId"    # I

    .prologue
    .line 116
    iget-object v0, p0, mDeletedUserList:Ljava/util/ArrayList;

    if-eqz v0, :cond_f

    .line 117
    iget-object v0, p0, mDeletedUserList:Ljava/util/ArrayList;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    .line 120
    :goto_e
    return v0

    .line 119
    :cond_f
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, mDeletedUserList:Ljava/util/ArrayList;

    .line 120
    const/4 v0, 0x0

    goto :goto_e
.end method

.method public load()Z
    .registers 7

    .prologue
    .line 74
    const/4 v1, 0x0

    .line 75
    .local v1, "result":Z
    invoke-direct {p0}, loadData()Landroid/sec/clipboard/data/ClipboardData;

    move-result-object v4

    iput-object v4, p0, mClip:Landroid/sec/clipboard/data/ClipboardData;

    .line 77
    iget-object v4, p0, mClip:Landroid/sec/clipboard/data/ClipboardData;

    if-eqz v4, :cond_1c

    .line 78
    iget-object v4, p0, mClip:Landroid/sec/clipboard/data/ClipboardData;

    iget-boolean v5, p0, mIsProtected:Z

    invoke-virtual {v4, v5}, Landroid/sec/clipboard/data/ClipboardData;->SetProtectState(Z)V

    .line 79
    iget-object v4, p0, mClip:Landroid/sec/clipboard/data/ClipboardData;

    invoke-virtual {v4}, Landroid/sec/clipboard/data/ClipboardData;->getFormat()I

    move-result v4

    packed-switch v4, :pswitch_data_3c

    .line 93
    const/4 v1, 0x1

    .line 97
    :cond_1c
    :goto_1c
    return v1

    .line 81
    :pswitch_1d
    iget-object v3, p0, mClip:Landroid/sec/clipboard/data/ClipboardData;

    check-cast v3, Landroid/sec/clipboard/data/list/ClipboardDataText;

    .line 82
    .local v3, "text":Landroid/sec/clipboard/data/list/ClipboardDataText;
    invoke-virtual {v3}, Landroid/sec/clipboard/data/list/ClipboardDataText;->toLoad()V

    .line 83
    const/4 v1, 0x1

    .line 84
    goto :goto_1c

    .line 86
    .end local v3    # "text":Landroid/sec/clipboard/data/list/ClipboardDataText;
    :pswitch_26
    iget-object v0, p0, mClip:Landroid/sec/clipboard/data/ClipboardData;

    check-cast v0, Landroid/sec/clipboard/data/list/ClipboardDataBitmap;

    .line 87
    .local v0, "bitmap":Landroid/sec/clipboard/data/list/ClipboardDataBitmap;
    new-instance v2, Ljava/io/File;

    invoke-virtual {v0}, Landroid/sec/clipboard/data/list/ClipboardDataBitmap;->getBitmapPath()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 88
    .local v2, "tempFile":Ljava/io/File;
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v4

    if-eqz v4, :cond_1c

    .line 89
    const/4 v1, 0x1

    goto :goto_1c

    .line 79
    nop

    :pswitch_data_3c
    .packed-switch 0x2
        :pswitch_1d
        :pswitch_26
    .end packed-switch
.end method

.method public reAddForKnox()V
    .registers 4

    .prologue
    .line 125
    iget-object v0, p0, mDeletedUserList:Ljava/util/ArrayList;

    if-eqz v0, :cond_24

    .line 126
    const-string v0, "WrapFileClipData"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "reAddForKnox : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, mDeletedUserList:Ljava/util/ArrayList;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 127
    iget-object v0, p0, mDeletedUserList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 129
    :cond_24
    return-void
.end method

.method public resetOwnerClips(I)V
    .registers 6
    .param p1, "userId"    # I

    .prologue
    .line 132
    const-string v1, "WrapFileClipData"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "resetOwnerClips : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, mDeletedUserList:Ljava/util/ArrayList;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 133
    iget-object v1, p0, mDeletedUserList:Ljava/util/ArrayList;

    if-eqz v1, :cond_62

    .line 134
    iget-object v1, p0, mDeletedUserList:Ljava/util/ArrayList;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v0

    .line 135
    .local v0, "index":I
    const-string v1, "WrapFileClipData"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "index is "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 136
    const/4 v1, -0x1

    if-le v0, v1, :cond_62

    .line 137
    const-string v1, "WrapFileClipData"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "remove : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 138
    iget-object v1, p0, mDeletedUserList:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 141
    .end local v0    # "index":I
    :cond_62
    return-void
.end method

.method public setClipData(Landroid/sec/clipboard/data/ClipboardData;)V
    .registers 3
    .param p1, "clip"    # Landroid/sec/clipboard/data/ClipboardData;

    .prologue
    .line 49
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/sec/clipboard/data/ClipboardData;->setClipdata(Landroid/content/ClipData;)V

    .line 50
    iput-object p1, p0, mClip:Landroid/sec/clipboard/data/ClipboardData;

    .line 51
    return-void
.end method

.method public setDir(Ljava/io/File;)V
    .registers 2
    .param p1, "dir"    # Ljava/io/File;

    .prologue
    .line 66
    iput-object p1, p0, mDir:Ljava/io/File;

    .line 67
    return-void
.end method

.method public setFile(Ljava/io/File;)V
    .registers 2
    .param p1, "path"    # Ljava/io/File;

    .prologue
    .line 58
    iput-object p1, p0, mPath:Ljava/io/File;

    .line 59
    return-void
.end method

.method public setProtectState(Z)V
    .registers 2
    .param p1, "isProtected"    # Z

    .prologue
    .line 70
    iput-boolean p1, p0, mIsProtected:Z

    .line 71
    return-void
.end method
