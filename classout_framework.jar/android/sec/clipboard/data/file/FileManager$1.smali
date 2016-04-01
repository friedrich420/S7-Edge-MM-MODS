.class Landroid/sec/clipboard/data/file/FileManager$1;
.super Ljava/lang/Object;
.source "FileManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/sec/clipboard/data/file/FileManager;->clearDeleteList()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/sec/clipboard/data/file/FileManager;


# direct methods
.method constructor <init>(Landroid/sec/clipboard/data/file/FileManager;)V
    .registers 2

    .prologue
    .line 793
    iput-object p1, p0, this$0:Landroid/sec/clipboard/data/file/FileManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 7

    .prologue
    .line 796
    iget-object v3, p0, this$0:Landroid/sec/clipboard/data/file/FileManager;

    # getter for: Landroid/sec/clipboard/data/file/FileManager;->mDeleteFileList:Ljava/util/ArrayList;
    invoke-static {v3}, Landroid/sec/clipboard/data/file/FileManager;->access$700(Landroid/sec/clipboard/data/file/FileManager;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 797
    .local v2, "size":I
    const/4 v0, 0x0

    .line 798
    .local v0, "f":Ljava/io/File;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_c
    if-ge v1, v2, :cond_66

    .line 799
    iget-object v3, p0, this$0:Landroid/sec/clipboard/data/file/FileManager;

    # getter for: Landroid/sec/clipboard/data/file/FileManager;->mDeleteFileList:Ljava/util/ArrayList;
    invoke-static {v3}, Landroid/sec/clipboard/data/file/FileManager;->access$700(Landroid/sec/clipboard/data/file/FileManager;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    .end local v0    # "f":Ljava/io/File;
    check-cast v0, Ljava/io/File;

    .line 800
    .restart local v0    # "f":Ljava/io/File;
    if-eqz v0, :cond_4a

    .line 801
    iget-object v3, p0, this$0:Landroid/sec/clipboard/data/file/FileManager;

    # invokes: Landroid/sec/clipboard/data/file/FileManager;->deleteDirectoryContent(Ljava/io/File;)Z
    invoke-static {v3, v0}, Landroid/sec/clipboard/data/file/FileManager;->access$800(Landroid/sec/clipboard/data/file/FileManager;Ljava/io/File;)Z

    move-result v3

    if-eqz v3, :cond_4d

    .line 802
    const-string v3, "Clipboard.FileManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "successed remove in clearDeleteList : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 803
    iget-object v3, p0, this$0:Landroid/sec/clipboard/data/file/FileManager;

    # getter for: Landroid/sec/clipboard/data/file/FileManager;->mDeleteFileList:Ljava/util/ArrayList;
    invoke-static {v3}, Landroid/sec/clipboard/data/file/FileManager;->access$700(Landroid/sec/clipboard/data/file/FileManager;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 804
    add-int/lit8 v1, v1, -0x1

    .line 805
    add-int/lit8 v2, v2, -0x1

    .line 798
    :cond_4a
    :goto_4a
    add-int/lit8 v1, v1, 0x1

    goto :goto_c

    .line 807
    :cond_4d
    const-string v3, "Clipboard.FileManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "failed remove in clearDeleteList : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_4a

    .line 811
    :cond_66
    const-string v3, "Clipboard.FileManager"

    const-string v4, "finish clearDeleteList"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 812
    return-void
.end method
