.class Landroid/sec/clipboard/data/file/FileManager$ConnectFileSystem$1;
.super Ljava/lang/Object;
.source "FileManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/sec/clipboard/data/file/FileManager$ConnectFileSystem;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Landroid/sec/clipboard/data/file/FileManager$ConnectFileSystem;


# direct methods
.method constructor <init>(Landroid/sec/clipboard/data/file/FileManager$ConnectFileSystem;)V
    .registers 2

    .prologue
    .line 327
    iput-object p1, p0, this$1:Landroid/sec/clipboard/data/file/FileManager$ConnectFileSystem;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 4

    .prologue
    .line 330
    iget-object v0, p0, this$1:Landroid/sec/clipboard/data/file/FileManager$ConnectFileSystem;

    # invokes: Landroid/sec/clipboard/data/file/FileManager$ConnectFileSystem;->saveInfoFile()Z
    invoke-static {v0}, Landroid/sec/clipboard/data/file/FileManager$ConnectFileSystem;->access$000(Landroid/sec/clipboard/data/file/FileManager$ConnectFileSystem;)Z

    move-result v0

    if-eqz v0, :cond_44

    .line 331
    iget-object v0, p0, this$1:Landroid/sec/clipboard/data/file/FileManager$ConnectFileSystem;

    # getter for: Landroid/sec/clipboard/data/file/FileManager$ConnectFileSystem;->fileHelper:Landroid/sec/clipboard/util/FileHelper;
    invoke-static {v0}, Landroid/sec/clipboard/data/file/FileManager$ConnectFileSystem;->access$200(Landroid/sec/clipboard/data/file/FileManager$ConnectFileSystem;)Landroid/sec/clipboard/util/FileHelper;

    move-result-object v0

    iget-object v1, p0, this$1:Landroid/sec/clipboard/data/file/FileManager$ConnectFileSystem;

    # getter for: Landroid/sec/clipboard/data/file/FileManager$ConnectFileSystem;->rootPath:Ljava/io/File;
    invoke-static {v1}, Landroid/sec/clipboard/data/file/FileManager$ConnectFileSystem;->access$100(Landroid/sec/clipboard/data/file/FileManager$ConnectFileSystem;)Ljava/io/File;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/sec/clipboard/util/FileHelper;->getList(Ljava/io/File;)[Ljava/io/File;

    move-result-object v0

    if-eqz v0, :cond_38

    iget-object v0, p0, this$1:Landroid/sec/clipboard/data/file/FileManager$ConnectFileSystem;

    # getter for: Landroid/sec/clipboard/data/file/FileManager$ConnectFileSystem;->gcLifeCount:I
    invoke-static {v0}, Landroid/sec/clipboard/data/file/FileManager$ConnectFileSystem;->access$300(Landroid/sec/clipboard/data/file/FileManager$ConnectFileSystem;)I

    move-result v0

    iget-object v1, p0, this$1:Landroid/sec/clipboard/data/file/FileManager$ConnectFileSystem;

    # getter for: Landroid/sec/clipboard/data/file/FileManager$ConnectFileSystem;->fileHelper:Landroid/sec/clipboard/util/FileHelper;
    invoke-static {v1}, Landroid/sec/clipboard/data/file/FileManager$ConnectFileSystem;->access$200(Landroid/sec/clipboard/data/file/FileManager$ConnectFileSystem;)Landroid/sec/clipboard/util/FileHelper;

    move-result-object v1

    iget-object v2, p0, this$1:Landroid/sec/clipboard/data/file/FileManager$ConnectFileSystem;

    # getter for: Landroid/sec/clipboard/data/file/FileManager$ConnectFileSystem;->rootPath:Ljava/io/File;
    invoke-static {v2}, Landroid/sec/clipboard/data/file/FileManager$ConnectFileSystem;->access$100(Landroid/sec/clipboard/data/file/FileManager$ConnectFileSystem;)Ljava/io/File;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/sec/clipboard/util/FileHelper;->getList(Ljava/io/File;)[Ljava/io/File;

    move-result-object v1

    array-length v1, v1

    if-ge v0, v1, :cond_38

    .line 332
    iget-object v0, p0, this$1:Landroid/sec/clipboard/data/file/FileManager$ConnectFileSystem;

    invoke-virtual {v0}, Landroid/sec/clipboard/data/file/FileManager$ConnectFileSystem;->gc()V

    .line 334
    :cond_38
    iget-object v0, p0, this$1:Landroid/sec/clipboard/data/file/FileManager$ConnectFileSystem;

    # invokes: Landroid/sec/clipboard/data/file/FileManager$ConnectFileSystem;->saveTempInfoFile()Z
    invoke-static {v0}, Landroid/sec/clipboard/data/file/FileManager$ConnectFileSystem;->access$400(Landroid/sec/clipboard/data/file/FileManager$ConnectFileSystem;)Z

    .line 335
    iget-object v0, p0, this$1:Landroid/sec/clipboard/data/file/FileManager$ConnectFileSystem;

    iget-object v0, v0, Landroid/sec/clipboard/data/file/FileManager$ConnectFileSystem;->this$0:Landroid/sec/clipboard/data/file/FileManager;

    # invokes: Landroid/sec/clipboard/data/file/FileManager;->updateCategory()V
    invoke-static {v0}, Landroid/sec/clipboard/data/file/FileManager;->access$500(Landroid/sec/clipboard/data/file/FileManager;)V

    .line 337
    :cond_44
    return-void
.end method
