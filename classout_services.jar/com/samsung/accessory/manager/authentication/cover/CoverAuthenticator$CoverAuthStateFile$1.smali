.class Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator$CoverAuthStateFile$1;
.super Ljava/lang/Thread;
.source "CoverAuthenticator.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator$CoverAuthStateFile;->writeFile([B[B[B)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator$CoverAuthStateFile;

.field final synthetic val$extraData:[B

.field final synthetic val$id:[B

.field final synthetic val$uri:[B


# direct methods
.method constructor <init>(Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator$CoverAuthStateFile;Ljava/lang/String;[B[B[B)V
    .registers 6
    .param p2, "x0"    # Ljava/lang/String;

    .prologue
    .line 869
    iput-object p1, p0, this$1:Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator$CoverAuthStateFile;

    iput-object p3, p0, val$id:[B

    iput-object p4, p0, val$uri:[B

    iput-object p5, p0, val$extraData:[B

    invoke-direct {p0, p2}, Ljava/lang/Thread;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 9

    .prologue
    .line 871
    iget-object v4, p0, this$1:Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator$CoverAuthStateFile;

    # getter for: Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator$CoverAuthStateFile;->mTmpDir:Ljava/io/File;
    invoke-static {v4}, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator$CoverAuthStateFile;->access$2600(Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator$CoverAuthStateFile;)Ljava/io/File;

    move-result-object v5

    monitor-enter v5

    .line 872
    :try_start_7
    # getter for: Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;->DBG:Z
    invoke-static {}, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;->access$000()Z

    move-result v4

    if-eqz v4, :cond_18

    iget-object v4, p0, this$1:Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator$CoverAuthStateFile;

    # getter for: Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator$CoverAuthStateFile;->TAG:Ljava/lang/String;
    invoke-static {v4}, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator$CoverAuthStateFile;->access$2700(Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator$CoverAuthStateFile;)Ljava/lang/String;

    move-result-object v4

    const-string v6, "An authentication state changed, updating..."

    invoke-static {v4, v6}, Landroid/util/Slog;->secI(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_18
    .catchall {:try_start_7 .. :try_end_18} :catchall_8e

    .line 873
    :cond_18
    const/4 v1, 0x0

    .line 876
    .local v1, "out":Ljava/io/FileOutputStream;
    :try_start_19
    const-string/jumbo v4, "journal"

    const-string v6, ""

    iget-object v7, p0, this$1:Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator$CoverAuthStateFile;

    # getter for: Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator$CoverAuthStateFile;->mTmpDir:Ljava/io/File;
    invoke-static {v7}, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator$CoverAuthStateFile;->access$2600(Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator$CoverAuthStateFile;)Ljava/io/File;

    move-result-object v7

    invoke-static {v4, v6, v7}, Ljava/io/File;->createTempFile(Ljava/lang/String;Ljava/lang/String;Ljava/io/File;)Ljava/io/File;

    move-result-object v3

    .line 880
    .local v3, "tmp":Ljava/io/File;
    new-instance v2, Ljava/io/FileOutputStream;

    invoke-direct {v2, v3}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_2d
    .catch Ljava/io/FileNotFoundException; {:try_start_19 .. :try_end_2d} :catch_7e
    .catch Ljava/io/IOException; {:try_start_19 .. :try_end_2d} :catch_91
    .catchall {:try_start_19 .. :try_end_2d} :catchall_a1

    .line 881
    .end local v1    # "out":Ljava/io/FileOutputStream;
    .local v2, "out":Ljava/io/FileOutputStream;
    :try_start_2d
    iget-object v4, p0, val$id:[B

    array-length v4, v4

    invoke-virtual {v2, v4}, Ljava/io/FileOutputStream;->write(I)V

    .line 882
    iget-object v4, p0, val$id:[B

    invoke-virtual {v2, v4}, Ljava/io/FileOutputStream;->write([B)V

    .line 884
    iget-object v4, p0, val$uri:[B

    if-eqz v4, :cond_47

    .line 885
    iget-object v4, p0, val$uri:[B

    array-length v4, v4

    invoke-virtual {v2, v4}, Ljava/io/FileOutputStream;->write(I)V

    .line 886
    iget-object v4, p0, val$uri:[B

    invoke-virtual {v2, v4}, Ljava/io/FileOutputStream;->write([B)V

    .line 889
    :cond_47
    iget-object v4, p0, val$extraData:[B

    if-eqz v4, :cond_56

    .line 890
    iget-object v4, p0, val$extraData:[B

    array-length v4, v4

    invoke-virtual {v2, v4}, Ljava/io/FileOutputStream;->write(I)V

    .line 891
    iget-object v4, p0, val$extraData:[B

    invoke-virtual {v2, v4}, Ljava/io/FileOutputStream;->write([B)V

    .line 895
    :cond_56
    invoke-static {v2}, Landroid/os/FileUtils;->sync(Ljava/io/FileOutputStream;)Z

    .line 897
    new-instance v4, Ljava/io/File;

    iget-object v6, p0, this$1:Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator$CoverAuthStateFile;

    # getter for: Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator$CoverAuthStateFile;->mPath:Ljava/lang/String;
    invoke-static {v6}, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator$CoverAuthStateFile;->access$2800(Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator$CoverAuthStateFile;)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v4, v6}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v4}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    .line 898
    # getter for: Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;->DBG:Z
    invoke-static {}, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;->access$000()Z

    move-result v4

    if-eqz v4, :cond_78

    iget-object v4, p0, this$1:Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator$CoverAuthStateFile;

    # getter for: Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator$CoverAuthStateFile;->TAG:Ljava/lang/String;
    invoke-static {v4}, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator$CoverAuthStateFile;->access$2700(Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator$CoverAuthStateFile;)Ljava/lang/String;

    move-result-object v4

    const-string v6, "An authentication state updated"

    invoke-static {v4, v6}, Landroid/util/Slog;->secI(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_78
    .catch Ljava/io/FileNotFoundException; {:try_start_2d .. :try_end_78} :catch_ac
    .catch Ljava/io/IOException; {:try_start_2d .. :try_end_78} :catch_a9
    .catchall {:try_start_2d .. :try_end_78} :catchall_a6

    .line 904
    :cond_78
    :try_start_78
    invoke-static {v2}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    move-object v1, v2

    .line 906
    .end local v2    # "out":Ljava/io/FileOutputStream;
    .end local v3    # "tmp":Ljava/io/File;
    .restart local v1    # "out":Ljava/io/FileOutputStream;
    :goto_7c
    monitor-exit v5
    :try_end_7d
    .catchall {:try_start_78 .. :try_end_7d} :catchall_8e

    .line 907
    return-void

    .line 899
    :catch_7e
    move-exception v0

    .line 900
    .local v0, "e":Ljava/io/FileNotFoundException;
    :goto_7f
    :try_start_7f
    iget-object v4, p0, this$1:Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator$CoverAuthStateFile;

    # getter for: Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator$CoverAuthStateFile;->TAG:Ljava/lang/String;
    invoke-static {v4}, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator$CoverAuthStateFile;->access$2700(Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator$CoverAuthStateFile;)Ljava/lang/String;

    move-result-object v4

    const-string v6, "File does not exist"

    invoke-static {v4, v6}, Landroid/util/Slog;->secI(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_8a
    .catchall {:try_start_7f .. :try_end_8a} :catchall_a1

    .line 904
    :try_start_8a
    invoke-static {v1}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    goto :goto_7c

    .line 906
    .end local v0    # "e":Ljava/io/FileNotFoundException;
    .end local v1    # "out":Ljava/io/FileOutputStream;
    :catchall_8e
    move-exception v4

    monitor-exit v5
    :try_end_90
    .catchall {:try_start_8a .. :try_end_90} :catchall_8e

    throw v4

    .line 901
    .restart local v1    # "out":Ljava/io/FileOutputStream;
    :catch_91
    move-exception v0

    .line 902
    .local v0, "e":Ljava/io/IOException;
    :goto_92
    :try_start_92
    iget-object v4, p0, this$1:Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator$CoverAuthStateFile;

    # getter for: Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator$CoverAuthStateFile;->TAG:Ljava/lang/String;
    invoke-static {v4}, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator$CoverAuthStateFile;->access$2700(Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator$CoverAuthStateFile;)Ljava/lang/String;

    move-result-object v4

    const-string v6, "Failed to write authentication state"

    invoke-static {v4, v6, v0}, Landroid/util/Slog;->secE(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_9d
    .catchall {:try_start_92 .. :try_end_9d} :catchall_a1

    .line 904
    :try_start_9d
    invoke-static {v1}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    goto :goto_7c

    .end local v0    # "e":Ljava/io/IOException;
    :catchall_a1
    move-exception v4

    :goto_a2
    invoke-static {v1}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    throw v4
    :try_end_a6
    .catchall {:try_start_9d .. :try_end_a6} :catchall_8e

    .end local v1    # "out":Ljava/io/FileOutputStream;
    .restart local v2    # "out":Ljava/io/FileOutputStream;
    .restart local v3    # "tmp":Ljava/io/File;
    :catchall_a6
    move-exception v4

    move-object v1, v2

    .end local v2    # "out":Ljava/io/FileOutputStream;
    .restart local v1    # "out":Ljava/io/FileOutputStream;
    goto :goto_a2

    .line 901
    .end local v1    # "out":Ljava/io/FileOutputStream;
    .restart local v2    # "out":Ljava/io/FileOutputStream;
    :catch_a9
    move-exception v0

    move-object v1, v2

    .end local v2    # "out":Ljava/io/FileOutputStream;
    .restart local v1    # "out":Ljava/io/FileOutputStream;
    goto :goto_92

    .line 899
    .end local v1    # "out":Ljava/io/FileOutputStream;
    .restart local v2    # "out":Ljava/io/FileOutputStream;
    :catch_ac
    move-exception v0

    move-object v1, v2

    .end local v2    # "out":Ljava/io/FileOutputStream;
    .restart local v1    # "out":Ljava/io/FileOutputStream;
    goto :goto_7f
.end method
