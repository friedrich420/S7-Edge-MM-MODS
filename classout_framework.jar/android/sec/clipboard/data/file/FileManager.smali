.class public Landroid/sec/clipboard/data/file/FileManager;
.super Ljava/lang/Object;
.source "FileManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/sec/clipboard/data/file/FileManager$ConnectFileSystem;
    }
.end annotation


# static fields
.field private static final CLEAR_DELETE_LIST_TIMER:I = 0xea60

.field private static final TAG:Ljava/lang/String; = "Clipboard.FileManager"


# instance fields
.field private mConnectFileSystem:Landroid/sec/clipboard/data/file/FileManager$ConnectFileSystem;

.field private mContext:Landroid/content/Context;

.field private mDataList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/sec/clipboard/data/file/WrapFileClipData;",
            ">;"
        }
    .end annotation
.end field

.field private mDeleteFileList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/io/File;",
            ">;"
        }
    .end annotation
.end field

.field public mHandleID:I


# direct methods
.method public constructor <init>(Ljava/io/File;I)V
    .registers 4
    .param p1, "infoFile"    # Ljava/io/File;
    .param p2, "id"    # I

    .prologue
    .line 834
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 65
    const/4 v0, 0x0

    iput-object v0, p0, mConnectFileSystem:Landroid/sec/clipboard/data/file/FileManager$ConnectFileSystem;

    .line 66
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, mDeleteFileList:Ljava/util/ArrayList;

    .line 836
    return-void
.end method

.method public constructor <init>(Ljava/io/File;ILandroid/content/Context;)V
    .registers 5
    .param p1, "infoFile"    # Ljava/io/File;
    .param p2, "id"    # I
    .param p3, "context"    # Landroid/content/Context;

    .prologue
    .line 74
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 65
    const/4 v0, 0x0

    iput-object v0, p0, mConnectFileSystem:Landroid/sec/clipboard/data/file/FileManager$ConnectFileSystem;

    .line 66
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, mDeleteFileList:Ljava/util/ArrayList;

    .line 75
    iput-object p3, p0, mContext:Landroid/content/Context;

    .line 77
    new-instance v0, Landroid/sec/clipboard/data/file/FileManager$ConnectFileSystem;

    invoke-direct {v0, p0, p1}, Landroid/sec/clipboard/data/file/FileManager$ConnectFileSystem;-><init>(Landroid/sec/clipboard/data/file/FileManager;Ljava/io/File;)V

    iput-object v0, p0, mConnectFileSystem:Landroid/sec/clipboard/data/file/FileManager$ConnectFileSystem;

    .line 78
    iget-object v0, p0, mConnectFileSystem:Landroid/sec/clipboard/data/file/FileManager$ConnectFileSystem;

    invoke-virtual {v0}, Landroid/sec/clipboard/data/file/FileManager$ConnectFileSystem;->load()Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, mDataList:Ljava/util/ArrayList;

    .line 79
    iput p2, p0, mHandleID:I

    .line 80
    invoke-virtual {p0}, updateList()V

    .line 81
    return-void
.end method

.method public constructor <init>(Ljava/io/File;Ljava/io/File;II)V
    .registers 6
    .param p1, "infoFile"    # Ljava/io/File;
    .param p2, "infoFileKNOX"    # Ljava/io/File;
    .param p3, "containerID"    # I
    .param p4, "id"    # I

    .prologue
    .line 819
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 65
    const/4 v0, 0x0

    iput-object v0, p0, mConnectFileSystem:Landroid/sec/clipboard/data/file/FileManager$ConnectFileSystem;

    .line 66
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, mDeleteFileList:Ljava/util/ArrayList;

    .line 821
    return-void
.end method

.method public constructor <init>(Ljava/io/File;Ljava/io/File;IILandroid/content/Context;)V
    .registers 7
    .param p1, "infoFile"    # Ljava/io/File;
    .param p2, "infoFileKNOX"    # Ljava/io/File;
    .param p3, "containerID"    # I
    .param p4, "id"    # I
    .param p5, "context"    # Landroid/content/Context;

    .prologue
    .line 824
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 65
    const/4 v0, 0x0

    iput-object v0, p0, mConnectFileSystem:Landroid/sec/clipboard/data/file/FileManager$ConnectFileSystem;

    .line 66
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, mDeleteFileList:Ljava/util/ArrayList;

    .line 826
    return-void
.end method

.method static synthetic access$500(Landroid/sec/clipboard/data/file/FileManager;)V
    .registers 1
    .param p0, "x0"    # Landroid/sec/clipboard/data/file/FileManager;

    .prologue
    .line 61
    invoke-direct {p0}, updateCategory()V

    return-void
.end method

.method static synthetic access$600(Landroid/sec/clipboard/data/file/FileManager;)Landroid/content/Context;
    .registers 2
    .param p0, "x0"    # Landroid/sec/clipboard/data/file/FileManager;

    .prologue
    .line 61
    iget-object v0, p0, mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$700(Landroid/sec/clipboard/data/file/FileManager;)Ljava/util/ArrayList;
    .registers 2
    .param p0, "x0"    # Landroid/sec/clipboard/data/file/FileManager;

    .prologue
    .line 61
    iget-object v0, p0, mDeleteFileList:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$800(Landroid/sec/clipboard/data/file/FileManager;Ljava/io/File;)Z
    .registers 3
    .param p0, "x0"    # Landroid/sec/clipboard/data/file/FileManager;
    .param p1, "x1"    # Ljava/io/File;

    .prologue
    .line 61
    invoke-direct {p0, p1}, deleteDirectoryContent(Ljava/io/File;)Z

    move-result v0

    return v0
.end method

.method private clearDeleteList()V
    .registers 5

    .prologue
    .line 792
    const-string v0, "Clipboard.FileManager"

    const-string v1, "clearDeleteList"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 793
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    new-instance v1, Landroid/sec/clipboard/data/file/FileManager$1;

    invoke-direct {v1, p0}, Landroid/sec/clipboard/data/file/FileManager$1;-><init>(Landroid/sec/clipboard/data/file/FileManager;)V

    const-wide/32 v2, 0xea60

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 814
    return-void
.end method

.method private deleteDirectoryContent(Ljava/io/File;)Z
    .registers 6
    .param p1, "dir"    # Ljava/io/File;

    .prologue
    .line 159
    invoke-virtual {p1}, Ljava/io/File;->isDirectory()Z

    move-result v2

    if-eqz v2, :cond_20

    .line 160
    invoke-virtual {p1}, Ljava/io/File;->list()[Ljava/lang/String;

    move-result-object v0

    .line 161
    .local v0, "children":[Ljava/lang/String;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_b
    array-length v2, v0

    if-ge v1, v2, :cond_1b

    .line 162
    new-instance v2, Ljava/io/File;

    aget-object v3, v0, v1

    invoke-direct {v2, p1, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/File;->delete()Z

    .line 161
    add-int/lit8 v1, v1, 0x1

    goto :goto_b

    .line 164
    :cond_1b
    invoke-virtual {p1}, Ljava/io/File;->delete()Z

    move-result v2

    .line 166
    .end local v0    # "children":[Ljava/lang/String;
    .end local v1    # "i":I
    :goto_1f
    return v2

    :cond_20
    const/4 v2, 0x0

    goto :goto_1f
.end method

.method private updateCategory()V
    .registers 4

    .prologue
    .line 123
    iget v0, p0, mHandleID:I

    const/16 v1, 0x44c

    if-lt v0, v1, :cond_4f

    iget v0, p0, mHandleID:I

    const/16 v1, 0x4aa

    if-gt v0, v1, :cond_4f

    .line 124
    sget-boolean v0, Landroid/sec/clipboard/data/ClipboardConstants;->DEBUG:Z

    if-eqz v0, :cond_2c

    const-string v0, "Clipboard.FileManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "RS: FileManager, add: knox case, user: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, mHandleID:I

    add-int/lit16 v2, v2, -0x3e8

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 125
    :cond_2c
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "/data/clipboard"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, mHandleID:I

    add-int/lit16 v1, v1, -0x3e8

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iget v1, p0, mHandleID:I

    add-int/lit16 v1, v1, -0x3e8

    invoke-static {v0, v1}, Landroid/os/SELinux;->restorecon_with_category(Ljava/lang/String;I)Z

    .line 133
    :cond_4e
    :goto_4e
    return-void

    .line 126
    :cond_4f
    iget v0, p0, mHandleID:I

    const/16 v1, 0x66

    if-ne v0, v1, :cond_95

    .line 127
    sget-boolean v0, Landroid/sec/clipboard/data/ClipboardConstants;->DEBUG:Z

    if-eqz v0, :cond_73

    const-string v0, "Clipboard.FileManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "FileManager, add: GOOD CATEGORY, adding clip, cat value:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, mHandleID:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 128
    :cond_73
    new-instance v0, Ljava/io/File;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "/data/clipboard/secontainer/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, mHandleID:I

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Landroid/os/SELinux;->restoreconRecursive(Ljava/io/File;)Z

    goto :goto_4e

    .line 129
    :cond_95
    iget v0, p0, mHandleID:I

    const/16 v1, 0xc9

    if-lt v0, v1, :cond_4e

    iget v0, p0, mHandleID:I

    const/16 v1, 0x1f4

    if-gt v0, v1, :cond_4e

    .line 130
    sget-boolean v0, Landroid/sec/clipboard/data/ClipboardConstants;->DEBUG:Z

    if-eqz v0, :cond_bf

    const-string v0, "Clipboard.FileManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "FileManager, add: GENERIC CONTAINER CATEGORY, mHandleID"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, mHandleID:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 131
    :cond_bf
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "/data/clipboard/secontainer/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, mHandleID:I

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iget v1, p0, mHandleID:I

    invoke-static {v0, v1}, Landroid/os/SELinux;->restorecon_with_category(Ljava/lang/String;I)Z

    goto/16 :goto_4e
.end method


# virtual methods
.method public UpdateClipboardDB(I)V
    .registers 2
    .param p1, "format"    # I

    .prologue
    .line 831
    return-void
.end method

.method public add(ILandroid/sec/clipboard/data/ClipboardData;)Z
    .registers 7
    .param p1, "index"    # I
    .param p2, "element"    # Landroid/sec/clipboard/data/ClipboardData;

    .prologue
    .line 145
    sget-boolean v1, Landroid/sec/clipboard/data/ClipboardConstants;->DEBUG:Z

    if-eqz v1, :cond_1e

    .line 146
    const-string v1, "Clipboard.FileManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "add data..file system, handleid:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, mHandleID:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 148
    :cond_1e
    iget-object v1, p0, mConnectFileSystem:Landroid/sec/clipboard/data/file/FileManager$ConnectFileSystem;

    invoke-virtual {v1, p2}, Landroid/sec/clipboard/data/file/FileManager$ConnectFileSystem;->createData(Landroid/sec/clipboard/data/ClipboardData;)Landroid/sec/clipboard/data/file/WrapFileClipData;

    move-result-object v0

    .line 150
    .local v0, "wrap":Landroid/sec/clipboard/data/file/WrapFileClipData;
    iget-object v1, p0, mConnectFileSystem:Landroid/sec/clipboard/data/file/FileManager$ConnectFileSystem;

    invoke-virtual {v1, v0}, Landroid/sec/clipboard/data/file/FileManager$ConnectFileSystem;->save(Landroid/sec/clipboard/data/file/WrapFileClipData;)Z

    move-result v1

    if-eqz v1, :cond_38

    .line 151
    iget-object v1, p0, mDataList:Ljava/util/ArrayList;

    invoke-virtual {v1, p1, v0}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 152
    iget-object v1, p0, mConnectFileSystem:Landroid/sec/clipboard/data/file/FileManager$ConnectFileSystem;

    invoke-virtual {v1}, Landroid/sec/clipboard/data/file/FileManager$ConnectFileSystem;->update()V

    .line 153
    const/4 v1, 0x1

    .line 155
    :goto_37
    return v1

    :cond_38
    const/4 v1, 0x0

    goto :goto_37
.end method

.method public add(Landroid/sec/clipboard/data/ClipboardData;)Z
    .registers 4
    .param p1, "element"    # Landroid/sec/clipboard/data/ClipboardData;

    .prologue
    .line 136
    iget-object v1, p0, mConnectFileSystem:Landroid/sec/clipboard/data/file/FileManager$ConnectFileSystem;

    invoke-virtual {v1, p1}, Landroid/sec/clipboard/data/file/FileManager$ConnectFileSystem;->createData(Landroid/sec/clipboard/data/ClipboardData;)Landroid/sec/clipboard/data/file/WrapFileClipData;

    move-result-object v0

    .line 137
    .local v0, "wrap":Landroid/sec/clipboard/data/file/WrapFileClipData;
    iget-object v1, p0, mDataList:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_15

    .line 138
    iget-object v1, p0, mConnectFileSystem:Landroid/sec/clipboard/data/file/FileManager$ConnectFileSystem;

    invoke-virtual {v1}, Landroid/sec/clipboard/data/file/FileManager$ConnectFileSystem;->update()V

    .line 139
    const/4 v1, 0x1

    .line 141
    :goto_14
    return v1

    :cond_15
    const/4 v1, 0x0

    goto :goto_14
.end method

.method public clear()V
    .registers 2

    .prologue
    .line 287
    iget-object v0, p0, mConnectFileSystem:Landroid/sec/clipboard/data/file/FileManager$ConnectFileSystem;

    invoke-virtual {v0}, Landroid/sec/clipboard/data/file/FileManager$ConnectFileSystem;->allDelete()V

    .line 288
    iget-object v0, p0, mDataList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 289
    return-void
.end method

.method public get(I)Landroid/sec/clipboard/data/ClipboardData;
    .registers 3
    .param p1, "index"    # I

    .prologue
    .line 306
    if-ltz p1, :cond_15

    invoke-virtual {p0}, size()I

    move-result v0

    if-ge p1, v0, :cond_15

    .line 307
    iget-object v0, p0, mDataList:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/sec/clipboard/data/file/WrapFileClipData;

    invoke-virtual {v0}, Landroid/sec/clipboard/data/file/WrapFileClipData;->getClipData()Landroid/sec/clipboard/data/ClipboardData;

    move-result-object v0

    .line 309
    :goto_14
    return-object v0

    :cond_15
    const/4 v0, 0x0

    goto :goto_14
.end method

.method public getHandleId()I
    .registers 2

    .prologue
    .line 84
    iget v0, p0, mHandleID:I

    return v0
.end method

.method public getNonDeletedClips(I)Ljava/util/ArrayList;
    .registers 6
    .param p1, "userId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/sec/clipboard/data/ClipboardData;",
            ">;"
        }
    .end annotation

    .prologue
    .line 217
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 218
    .local v2, "realDataList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/sec/clipboard/data/ClipboardData;>;"
    iget-object v3, p0, mDataList:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_b
    :goto_b
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_25

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/sec/clipboard/data/file/WrapFileClipData;

    .line 219
    .local v0, "data":Landroid/sec/clipboard/data/file/WrapFileClipData;
    invoke-virtual {v0, p1}, Landroid/sec/clipboard/data/file/WrapFileClipData;->isDeletedUser(I)Z

    move-result v3

    if-nez v3, :cond_b

    .line 220
    invoke-virtual {v0}, Landroid/sec/clipboard/data/file/WrapFileClipData;->getClipData()Landroid/sec/clipboard/data/ClipboardData;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_b

    .line 223
    .end local v0    # "data":Landroid/sec/clipboard/data/file/WrapFileClipData;
    :cond_25
    return-object v2
.end method

.method public getNonDeletedClipsFromKnox(I)Ljava/util/ArrayList;
    .registers 6
    .param p1, "userId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/sec/clipboard/data/file/WrapFileClipData;",
            ">;"
        }
    .end annotation

    .prologue
    .line 227
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 228
    .local v2, "realDataList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/sec/clipboard/data/file/WrapFileClipData;>;"
    iget-object v3, p0, mDataList:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_b
    :goto_b
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_21

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/sec/clipboard/data/file/WrapFileClipData;

    .line 229
    .local v0, "data":Landroid/sec/clipboard/data/file/WrapFileClipData;
    invoke-virtual {v0, p1}, Landroid/sec/clipboard/data/file/WrapFileClipData;->isDeletedUser(I)Z

    move-result v3

    if-nez v3, :cond_b

    .line 230
    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_b

    .line 233
    .end local v0    # "data":Landroid/sec/clipboard/data/file/WrapFileClipData;
    :cond_21
    return-object v2
.end method

.method public getWrap(I)Landroid/sec/clipboard/data/file/WrapFileClipData;
    .registers 3
    .param p1, "index"    # I

    .prologue
    .line 313
    if-ltz p1, :cond_11

    invoke-virtual {p0}, size()I

    move-result v0

    if-ge p1, v0, :cond_11

    .line 314
    iget-object v0, p0, mDataList:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/sec/clipboard/data/file/WrapFileClipData;

    .line 316
    :goto_10
    return-object v0

    :cond_11
    const/4 v0, 0x0

    goto :goto_10
.end method

.method public reAddForKnox(I)V
    .registers 3
    .param p1, "index"    # I

    .prologue
    .line 213
    iget-object v0, p0, mDataList:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/sec/clipboard/data/file/WrapFileClipData;

    invoke-virtual {v0}, Landroid/sec/clipboard/data/file/WrapFileClipData;->reAddForKnox()V

    .line 214
    return-void
.end method

.method public refresh()V
    .registers 3

    .prologue
    .line 89
    sget-boolean v0, Landroid/sec/clipboard/data/ClipboardConstants;->DEBUG:Z

    if-eqz v0, :cond_c

    .line 90
    const-string v0, "Clipboard.FileManager"

    const-string/jumbo v1, "refresh() - reload the mDataList "

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 93
    :cond_c
    iget-object v0, p0, mConnectFileSystem:Landroid/sec/clipboard/data/file/FileManager$ConnectFileSystem;

    if-eqz v0, :cond_18

    .line 94
    iget-object v0, p0, mConnectFileSystem:Landroid/sec/clipboard/data/file/FileManager$ConnectFileSystem;

    invoke-virtual {v0}, Landroid/sec/clipboard/data/file/FileManager$ConnectFileSystem;->load()Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, mDataList:Ljava/util/ArrayList;

    .line 96
    :cond_18
    return-void
.end method

.method public remove(I)Landroid/sec/clipboard/data/ClipboardData;
    .registers 7
    .param p1, "index"    # I

    .prologue
    .line 258
    const/4 v1, 0x0

    .line 259
    .local v1, "wrap":Landroid/sec/clipboard/data/file/WrapFileClipData;
    iget-object v2, p0, mDataList:Ljava/util/ArrayList;

    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v1

    .end local v1    # "wrap":Landroid/sec/clipboard/data/file/WrapFileClipData;
    check-cast v1, Landroid/sec/clipboard/data/file/WrapFileClipData;

    .line 261
    .restart local v1    # "wrap":Landroid/sec/clipboard/data/file/WrapFileClipData;
    if-eqz v1, :cond_2f

    .line 262
    invoke-virtual {v1}, Landroid/sec/clipboard/data/file/WrapFileClipData;->getDir()Ljava/io/File;

    move-result-object v0

    .line 263
    .local v0, "dir":Ljava/io/File;
    if-eqz v0, :cond_2f

    .line 264
    invoke-direct {p0, v0}, deleteDirectoryContent(Ljava/io/File;)Z

    move-result v2

    if-nez v2, :cond_2f

    .line 265
    const-string v2, "Clipboard.FileManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "failed removing data : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 269
    .end local v0    # "dir":Ljava/io/File;
    :cond_2f
    iget-object v2, p0, mConnectFileSystem:Landroid/sec/clipboard/data/file/FileManager$ConnectFileSystem;

    invoke-virtual {v2}, Landroid/sec/clipboard/data/file/FileManager$ConnectFileSystem;->update()V

    .line 271
    if-nez v1, :cond_38

    .line 272
    const/4 v2, 0x0

    .line 274
    :goto_37
    return-object v2

    :cond_38
    invoke-virtual {v1}, Landroid/sec/clipboard/data/file/WrapFileClipData;->getClipData()Landroid/sec/clipboard/data/ClipboardData;

    move-result-object v2

    goto :goto_37
.end method

.method public remove(ZII)Landroid/sec/clipboard/data/ClipboardData;
    .registers 12
    .param p1, "isOwner"    # Z
    .param p2, "userId"    # I
    .param p3, "index"    # I

    .prologue
    .line 237
    if-eqz p1, :cond_7

    .line 238
    invoke-virtual {p0, p3}, remove(I)Landroid/sec/clipboard/data/ClipboardData;

    move-result-object v3

    .line 253
    :cond_6
    :goto_6
    return-object v3

    .line 240
    :cond_7
    const/4 v3, 0x0

    .line 241
    .local v3, "retData":Landroid/sec/clipboard/data/ClipboardData;
    const/4 v1, 0x0

    .line 242
    .local v1, "realIndex":I
    iget-object v5, p0, mDataList:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :cond_f
    :goto_f
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_6

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/sec/clipboard/data/file/WrapFileClipData;

    .line 243
    .local v4, "wrap":Landroid/sec/clipboard/data/file/WrapFileClipData;
    invoke-virtual {v4, p2}, Landroid/sec/clipboard/data/file/WrapFileClipData;->isDeletedUser(I)Z

    move-result v5

    if-nez v5, :cond_f

    .line 244
    add-int/lit8 v2, v1, 0x1

    .end local v1    # "realIndex":I
    .local v2, "realIndex":I
    if-ne p3, v1, :cond_4b

    .line 245
    const-string v5, "Clipboard.FileManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "index is "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 246
    invoke-virtual {v4, p2}, Landroid/sec/clipboard/data/file/WrapFileClipData;->addDeletedUserList(I)V

    .line 247
    invoke-virtual {v4}, Landroid/sec/clipboard/data/file/WrapFileClipData;->getClipData()Landroid/sec/clipboard/data/ClipboardData;

    move-result-object v3

    .line 248
    iget-object v5, p0, mConnectFileSystem:Landroid/sec/clipboard/data/file/FileManager$ConnectFileSystem;

    invoke-virtual {v5}, Landroid/sec/clipboard/data/file/FileManager$ConnectFileSystem;->update()V

    move v1, v2

    .line 249
    .end local v2    # "realIndex":I
    .restart local v1    # "realIndex":I
    goto :goto_6

    .end local v1    # "realIndex":I
    .restart local v2    # "realIndex":I
    :cond_4b
    move v1, v2

    .end local v2    # "realIndex":I
    .restart local v1    # "realIndex":I
    goto :goto_f
.end method

.method public remove(Landroid/sec/clipboard/data/ClipboardData;)Z
    .registers 3
    .param p1, "clip"    # Landroid/sec/clipboard/data/ClipboardData;

    .prologue
    .line 279
    iget-object v0, p0, mDataList:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_f

    .line 280
    iget-object v0, p0, mConnectFileSystem:Landroid/sec/clipboard/data/file/FileManager$ConnectFileSystem;

    invoke-virtual {v0}, Landroid/sec/clipboard/data/file/FileManager$ConnectFileSystem;->update()V

    .line 281
    const/4 v0, 0x1

    .line 283
    :goto_e
    return v0

    :cond_f
    const/4 v0, 0x0

    goto :goto_e
.end method

.method public removeAll(ZI)Z
    .registers 12
    .param p1, "isOwner"    # Z
    .param p2, "userId"    # I

    .prologue
    .line 170
    const/4 v0, 0x0

    .line 171
    .local v0, "bRes":Z
    if-eqz p1, :cond_47

    .line 172
    const/4 v1, 0x0

    .line 173
    .local v1, "clipboardData":Landroid/sec/clipboard/data/ClipboardData;
    const/4 v7, 0x0

    .line 174
    .local v7, "wrap":Landroid/sec/clipboard/data/file/WrapFileClipData;
    iget-object v8, p0, mDataList:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v8

    add-int/lit8 v3, v8, -0x1

    .line 176
    .local v3, "dataListSize":I
    move v5, v3

    .local v5, "i":I
    :goto_e
    if-ltz v5, :cond_68

    .line 177
    iget-object v8, p0, mDataList:Ljava/util/ArrayList;

    invoke-virtual {v8, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    .end local v7    # "wrap":Landroid/sec/clipboard/data/file/WrapFileClipData;
    check-cast v7, Landroid/sec/clipboard/data/file/WrapFileClipData;

    .line 178
    .restart local v7    # "wrap":Landroid/sec/clipboard/data/file/WrapFileClipData;
    invoke-virtual {v7}, Landroid/sec/clipboard/data/file/WrapFileClipData;->getClipData()Landroid/sec/clipboard/data/ClipboardData;

    move-result-object v1

    .line 179
    if-eqz v1, :cond_44

    invoke-virtual {v1}, Landroid/sec/clipboard/data/ClipboardData;->GetProtectState()Z

    move-result v8

    if-nez v8, :cond_44

    .line 180
    iget-object v8, p0, mDataList:Ljava/util/ArrayList;

    invoke-virtual {v8, v7}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_44

    .line 181
    invoke-virtual {v7}, Landroid/sec/clipboard/data/file/WrapFileClipData;->getDir()Ljava/io/File;

    move-result-object v4

    .line 182
    .local v4, "dir":Ljava/io/File;
    if-nez v4, :cond_3a

    .line 183
    invoke-virtual {v7}, Landroid/sec/clipboard/data/file/WrapFileClipData;->getFile()Ljava/io/File;

    move-result-object v8

    invoke-virtual {v8}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v4

    .line 185
    :cond_3a
    if-eqz v4, :cond_44

    .line 186
    invoke-static {}, Landroid/sec/clipboard/util/FileHelper;->getInstance()Landroid/sec/clipboard/util/FileHelper;

    move-result-object v8

    invoke-virtual {v8, v4}, Landroid/sec/clipboard/util/FileHelper;->delete(Ljava/io/File;)V

    .line 187
    const/4 v0, 0x1

    .line 176
    .end local v4    # "dir":Ljava/io/File;
    :cond_44
    add-int/lit8 v5, v5, -0x1

    goto :goto_e

    .line 193
    .end local v1    # "clipboardData":Landroid/sec/clipboard/data/ClipboardData;
    .end local v3    # "dataListSize":I
    .end local v5    # "i":I
    .end local v7    # "wrap":Landroid/sec/clipboard/data/file/WrapFileClipData;
    :cond_47
    iget-object v8, p0, mDataList:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v6

    .local v6, "i$":Ljava/util/Iterator;
    :cond_4d
    :goto_4d
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_68

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/sec/clipboard/data/file/WrapFileClipData;

    .line 194
    .local v2, "data":Landroid/sec/clipboard/data/file/WrapFileClipData;
    invoke-virtual {v2}, Landroid/sec/clipboard/data/file/WrapFileClipData;->getClipData()Landroid/sec/clipboard/data/ClipboardData;

    move-result-object v8

    invoke-virtual {v8}, Landroid/sec/clipboard/data/ClipboardData;->GetProtectState()Z

    move-result v8

    if-nez v8, :cond_4d

    .line 195
    invoke-virtual {v2, p2}, Landroid/sec/clipboard/data/file/WrapFileClipData;->addDeletedUserList(I)V

    .line 196
    const/4 v0, 0x1

    goto :goto_4d

    .line 200
    .end local v2    # "data":Landroid/sec/clipboard/data/file/WrapFileClipData;
    .end local v6    # "i$":Ljava/util/Iterator;
    :cond_68
    if-eqz v0, :cond_6f

    .line 201
    iget-object v8, p0, mConnectFileSystem:Landroid/sec/clipboard/data/file/FileManager$ConnectFileSystem;

    invoke-virtual {v8}, Landroid/sec/clipboard/data/file/FileManager$ConnectFileSystem;->update()V

    .line 203
    :cond_6f
    return v0
.end method

.method public removeClipboardDB()V
    .registers 2

    .prologue
    .line 99
    iget-object v0, p0, mConnectFileSystem:Landroid/sec/clipboard/data/file/FileManager$ConnectFileSystem;

    if-eqz v0, :cond_c

    .line 100
    iget-object v0, p0, mConnectFileSystem:Landroid/sec/clipboard/data/file/FileManager$ConnectFileSystem;

    invoke-virtual {v0}, Landroid/sec/clipboard/data/file/FileManager$ConnectFileSystem;->removeDB()V

    .line 101
    const/4 v0, 0x0

    iput-object v0, p0, mConnectFileSystem:Landroid/sec/clipboard/data/file/FileManager$ConnectFileSystem;

    .line 103
    :cond_c
    return-void
.end method

.method public resetOwnerClips(I)V
    .registers 5
    .param p1, "userId"    # I

    .prologue
    .line 207
    iget-object v2, p0, mDataList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_6
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_16

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/sec/clipboard/data/file/WrapFileClipData;

    .line 208
    .local v0, "data":Landroid/sec/clipboard/data/file/WrapFileClipData;
    invoke-virtual {v0, p1}, Landroid/sec/clipboard/data/file/WrapFileClipData;->resetOwnerClips(I)V

    goto :goto_6

    .line 210
    .end local v0    # "data":Landroid/sec/clipboard/data/file/WrapFileClipData;
    :cond_16
    return-void
.end method

.method public set(ILandroid/sec/clipboard/data/ClipboardData;)Landroid/sec/clipboard/data/ClipboardData;
    .registers 5
    .param p1, "index"    # I
    .param p2, "element"    # Landroid/sec/clipboard/data/ClipboardData;

    .prologue
    .line 107
    iget-object v1, p0, mDataList:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/sec/clipboard/data/file/WrapFileClipData;

    .line 108
    .local v0, "wrap":Landroid/sec/clipboard/data/file/WrapFileClipData;
    invoke-virtual {v0, p2}, Landroid/sec/clipboard/data/file/WrapFileClipData;->setClipData(Landroid/sec/clipboard/data/ClipboardData;)V

    .line 109
    invoke-virtual {p2}, Landroid/sec/clipboard/data/ClipboardData;->GetProtectState()Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/sec/clipboard/data/file/WrapFileClipData;->setProtectState(Z)V

    .line 110
    iget-object v1, p0, mDataList:Ljava/util/ArrayList;

    invoke-virtual {v1, p1, v0}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .end local v0    # "wrap":Landroid/sec/clipboard/data/file/WrapFileClipData;
    check-cast v0, Landroid/sec/clipboard/data/file/WrapFileClipData;

    .line 111
    .restart local v0    # "wrap":Landroid/sec/clipboard/data/file/WrapFileClipData;
    if-eqz v0, :cond_21

    .line 112
    iget-object v1, p0, mConnectFileSystem:Landroid/sec/clipboard/data/file/FileManager$ConnectFileSystem;

    invoke-virtual {v1}, Landroid/sec/clipboard/data/file/FileManager$ConnectFileSystem;->update()V

    .line 115
    :cond_21
    if-eqz v0, :cond_28

    .line 116
    invoke-virtual {v0}, Landroid/sec/clipboard/data/file/WrapFileClipData;->getClipData()Landroid/sec/clipboard/data/ClipboardData;

    move-result-object v1

    .line 118
    :goto_27
    return-object v1

    :cond_28
    const/4 v1, 0x0

    goto :goto_27
.end method

.method public sharedSize(I)I
    .registers 6
    .param p1, "userId"    # I

    .prologue
    .line 296
    const/4 v1, 0x0

    .line 297
    .local v1, "sharedSize":I
    iget-object v3, p0, mDataList:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :cond_7
    :goto_7
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1c

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/sec/clipboard/data/file/WrapFileClipData;

    .line 298
    .local v2, "wrapData":Landroid/sec/clipboard/data/file/WrapFileClipData;
    invoke-virtual {v2, p1}, Landroid/sec/clipboard/data/file/WrapFileClipData;->isDeletedUser(I)Z

    move-result v3

    if-nez v3, :cond_7

    .line 299
    add-int/lit8 v1, v1, 0x1

    goto :goto_7

    .line 302
    .end local v2    # "wrapData":Landroid/sec/clipboard/data/file/WrapFileClipData;
    :cond_1c
    return v1
.end method

.method public size()I
    .registers 2

    .prologue
    .line 292
    iget-object v0, p0, mDataList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public updateList()V
    .registers 17

    .prologue
    .line 724
    const/4 v9, 0x0

    .line 725
    .local v9, "updated":Z
    move-object/from16 v0, p0

    iget-object v12, v0, mDeleteFileList:Ljava/util/ArrayList;

    invoke-virtual {v12}, Ljava/util/ArrayList;->clear()V

    .line 726
    const/4 v4, 0x0

    .line 727
    .local v4, "dir":Ljava/io/File;
    const-wide/16 v10, 0x0

    .line 729
    .local v10, "timestamp":J
    const/4 v2, 0x0

    .line 730
    .local v2, "clipboard":Landroid/sec/clipboard/data/ClipboardData;
    const/4 v3, 0x0

    .line 731
    .local v3, "data":Landroid/sec/clipboard/data/file/WrapFileClipData;
    :try_start_d
    move-object/from16 v0, p0

    iget-object v12, v0, mDataList:Ljava/util/ArrayList;

    invoke-virtual {v12}, Ljava/util/ArrayList;->size()I

    move-result v8

    .line 732
    .local v8, "listSize":I
    const/4 v7, 0x0

    .local v7, "i":I
    :goto_16
    if-ge v7, v8, :cond_109

    .line 733
    move-object/from16 v0, p0

    iget-object v12, v0, mDataList:Ljava/util/ArrayList;

    invoke-virtual {v12, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v12

    move-object v0, v12

    check-cast v0, Landroid/sec/clipboard/data/file/WrapFileClipData;

    move-object v3, v0

    .line 734
    if-eqz v3, :cond_a6

    .line 735
    invoke-virtual {v3}, Landroid/sec/clipboard/data/file/WrapFileClipData;->getClipData()Landroid/sec/clipboard/data/ClipboardData;

    move-result-object v2

    .line 736
    if-eqz v2, :cond_ef

    .line 737
    invoke-virtual {v3}, Landroid/sec/clipboard/data/file/WrapFileClipData;->getDir()Ljava/io/File;

    move-result-object v4

    .line 738
    instance-of v12, v2, Landroid/sec/clipboard/data/list/ClipboardDataHTMLFragment;

    if-eqz v12, :cond_62

    .line 739
    new-instance v6, Landroid/sec/clipboard/data/list/ClipboardDataHtml;

    move-object v0, v2

    check-cast v0, Landroid/sec/clipboard/data/list/ClipboardDataHTMLFragment;

    move-object v12, v0

    invoke-direct {v6, v12}, Landroid/sec/clipboard/data/list/ClipboardDataHtml;-><init>(Landroid/sec/clipboard/data/list/ClipboardDataHTMLFragment;)V

    .line 740
    .local v6, "html":Landroid/sec/clipboard/data/list/ClipboardDataHtml;
    const-wide/16 v12, 0x0

    cmp-long v12, v10, v12

    if-nez v12, :cond_47

    .line 741
    invoke-virtual {v2}, Landroid/sec/clipboard/data/ClipboardData;->getTimestamp()J

    move-result-wide v10

    .line 743
    :cond_47
    invoke-virtual {v6, v10, v11}, Landroid/sec/clipboard/data/list/ClipboardDataHtml;->setTimestamp(J)V

    .line 744
    invoke-virtual {v3, v6}, Landroid/sec/clipboard/data/file/WrapFileClipData;->setClipData(Landroid/sec/clipboard/data/ClipboardData;)V

    .line 745
    move-object/from16 v0, p0

    iget-object v12, v0, mDeleteFileList:Ljava/util/ArrayList;

    invoke-virtual {v12, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 746
    move-object/from16 v0, p0

    iget-object v12, v0, mConnectFileSystem:Landroid/sec/clipboard/data/file/FileManager$ConnectFileSystem;

    const/4 v13, 0x1

    invoke-virtual {v12, v3, v13}, Landroid/sec/clipboard/data/file/FileManager$ConnectFileSystem;->save(Landroid/sec/clipboard/data/file/WrapFileClipData;Z)Z

    .line 747
    const-wide/32 v12, 0x186a0

    sub-long/2addr v10, v12

    .line 748
    move-object v2, v6

    .line 749
    const/4 v9, 0x1

    .line 752
    .end local v6    # "html":Landroid/sec/clipboard/data/list/ClipboardDataHtml;
    :cond_62
    invoke-virtual {v2}, Landroid/sec/clipboard/data/ClipboardData;->isValidData()Z

    move-result v12

    if-nez v12, :cond_aa

    .line 753
    move-object/from16 v0, p0

    iget-object v12, v0, mDeleteFileList:Ljava/util/ArrayList;

    invoke-virtual {v12, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 754
    move-object/from16 v0, p0

    iget-object v12, v0, mDataList:Ljava/util/ArrayList;

    invoke-virtual {v12, v7}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 755
    add-int/lit8 v7, v7, -0x1

    .line 756
    add-int/lit8 v8, v8, -0x1

    .line 757
    const-string v12, "Clipboard.FileManager"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v14, "updateList invalid data : "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v2}, Landroid/sec/clipboard/data/ClipboardData;->getFormat()I

    move-result v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, ", "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v2}, Landroid/sec/clipboard/data/ClipboardData;->getTimestamp()J

    move-result-wide v14

    invoke-virtual {v13, v14, v15}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 758
    const/4 v9, 0x1

    .line 732
    :cond_a6
    :goto_a6
    add-int/lit8 v7, v7, 0x1

    goto/16 :goto_16

    .line 759
    :cond_aa
    invoke-virtual {v2}, Landroid/sec/clipboard/data/ClipboardData;->getStateToSave()Z

    move-result v12

    if-eqz v12, :cond_a6

    .line 760
    const-wide/16 v12, 0x0

    cmp-long v12, v10, v12

    if-nez v12, :cond_ba

    .line 761
    invoke-virtual {v2}, Landroid/sec/clipboard/data/ClipboardData;->getTimestamp()J

    move-result-wide v10

    .line 763
    :cond_ba
    invoke-virtual {v2, v10, v11}, Landroid/sec/clipboard/data/ClipboardData;->setTimestamp(J)V

    .line 764
    const-wide/32 v12, 0x186a0

    sub-long/2addr v10, v12

    .line 765
    move-object/from16 v0, p0

    iget-object v12, v0, mDeleteFileList:Ljava/util/ArrayList;

    invoke-virtual {v12, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 766
    const-string v12, "Clipboard.FileManager"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v14, "updateList timestamp : "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v2}, Landroid/sec/clipboard/data/ClipboardData;->getTimestamp()J

    move-result-wide v14

    invoke-virtual {v13, v14, v15}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 767
    move-object/from16 v0, p0

    iget-object v12, v0, mConnectFileSystem:Landroid/sec/clipboard/data/file/FileManager$ConnectFileSystem;

    const/4 v13, 0x1

    invoke-virtual {v12, v3, v13}, Landroid/sec/clipboard/data/file/FileManager$ConnectFileSystem;->save(Landroid/sec/clipboard/data/file/WrapFileClipData;Z)Z

    .line 768
    const/4 v9, 0x1

    goto :goto_a6

    .line 771
    :cond_ef
    move-object/from16 v0, p0

    iget-object v12, v0, mDataList:Ljava/util/ArrayList;

    invoke-virtual {v12, v7}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 772
    add-int/lit8 v7, v7, -0x1

    .line 773
    add-int/lit8 v8, v8, -0x1

    .line 774
    const-string v12, "Clipboard.FileManager"

    const-string/jumbo v13, "updateList null"

    invoke-static {v12, v13}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_102
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_102} :catch_104

    .line 775
    const/4 v9, 0x1

    goto :goto_a6

    .line 779
    .end local v7    # "i":I
    .end local v8    # "listSize":I
    :catch_104
    move-exception v5

    .line 780
    .local v5, "e":Ljava/lang/Exception;
    invoke-virtual {v5}, Ljava/lang/Exception;->printStackTrace()V

    .line 781
    const/4 v9, 0x1

    .line 783
    .end local v5    # "e":Ljava/lang/Exception;
    :cond_109
    if-eqz v9, :cond_11d

    .line 784
    const-string v12, "Clipboard.FileManager"

    const-string/jumbo v13, "updateList update!"

    invoke-static {v12, v13}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 785
    move-object/from16 v0, p0

    iget-object v12, v0, mConnectFileSystem:Landroid/sec/clipboard/data/file/FileManager$ConnectFileSystem;

    invoke-virtual {v12}, Landroid/sec/clipboard/data/file/FileManager$ConnectFileSystem;->updateForced()V

    .line 787
    invoke-direct/range {p0 .. p0}, clearDeleteList()V

    .line 789
    :cond_11d
    return-void
.end method
