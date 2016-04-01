.class Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator$CoverAuthStateFile$2;
.super Ljava/lang/Thread;
.source "CoverAuthenticator.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator$CoverAuthStateFile;->readFile()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator$CoverAuthStateFile;


# direct methods
.method constructor <init>(Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator$CoverAuthStateFile;Ljava/lang/String;)V
    .registers 3
    .param p2, "x0"    # Ljava/lang/String;

    .prologue
    .line 912
    iput-object p1, p0, this$1:Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator$CoverAuthStateFile;

    invoke-direct {p0, p2}, Ljava/lang/Thread;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 11

    .prologue
    const/4 v9, -0x1

    .line 914
    iget-object v4, p0, this$1:Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator$CoverAuthStateFile;

    # getter for: Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator$CoverAuthStateFile;->mTmpDir:Ljava/io/File;
    invoke-static {v4}, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator$CoverAuthStateFile;->access$2600(Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator$CoverAuthStateFile;)Ljava/io/File;

    move-result-object v5

    monitor-enter v5

    .line 915
    :try_start_8
    # getter for: Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;->DBG:Z
    invoke-static {}, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;->access$000()Z

    move-result v4

    if-eqz v4, :cond_1a

    iget-object v4, p0, this$1:Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator$CoverAuthStateFile;

    # getter for: Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator$CoverAuthStateFile;->TAG:Ljava/lang/String;
    invoke-static {v4}, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator$CoverAuthStateFile;->access$2700(Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator$CoverAuthStateFile;)Ljava/lang/String;

    move-result-object v4

    const-string/jumbo v6, "read authentication state"

    invoke-static {v4, v6}, Landroid/util/Slog;->secI(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1a
    .catchall {:try_start_8 .. :try_end_1a} :catchall_10a

    .line 916
    :cond_1a
    const/4 v1, 0x0

    .line 918
    .local v1, "in":Ljava/io/FileInputStream;
    :try_start_1b
    new-instance v2, Ljava/io/FileInputStream;

    iget-object v4, p0, this$1:Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator$CoverAuthStateFile;

    # getter for: Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator$CoverAuthStateFile;->mPath:Ljava/lang/String;
    invoke-static {v4}, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator$CoverAuthStateFile;->access$2800(Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator$CoverAuthStateFile;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v4}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V
    :try_end_26
    .catch Ljava/io/FileNotFoundException; {:try_start_1b .. :try_end_26} :catch_fa
    .catch Ljava/io/IOException; {:try_start_1b .. :try_end_26} :catch_10d
    .catchall {:try_start_1b .. :try_end_26} :catchall_11d

    .line 920
    .end local v1    # "in":Ljava/io/FileInputStream;
    .local v2, "in":Ljava/io/FileInputStream;
    :try_start_26
    invoke-virtual {v2}, Ljava/io/FileInputStream;->read()I

    move-result v3

    .line 921
    .local v3, "size":I
    if-eq v3, v9, :cond_65

    .line 922
    iget-object v4, p0, this$1:Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator$CoverAuthStateFile;

    new-array v6, v3, [B

    iput-object v6, v4, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator$CoverAuthStateFile;->mId:[B

    .line 923
    iget-object v4, p0, this$1:Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator$CoverAuthStateFile;

    iget-object v4, v4, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator$CoverAuthStateFile;->mId:[B

    invoke-virtual {v2, v4}, Ljava/io/FileInputStream;->read([B)I

    .line 924
    # getter for: Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;->DBG:Z
    invoke-static {}, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;->access$000()Z

    move-result v4

    if-eqz v4, :cond_65

    iget-object v4, p0, this$1:Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator$CoverAuthStateFile;

    # getter for: Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator$CoverAuthStateFile;->TAG:Ljava/lang/String;
    invoke-static {v4}, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator$CoverAuthStateFile;->access$2700(Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator$CoverAuthStateFile;)Ljava/lang/String;

    move-result-object v4

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "id is"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    new-instance v7, Ljava/lang/String;

    iget-object v8, p0, this$1:Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator$CoverAuthStateFile;

    iget-object v8, v8, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator$CoverAuthStateFile;->mId:[B

    invoke-direct {v7, v8}, Ljava/lang/String;-><init>([B)V

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Landroid/util/Slog;->secI(Ljava/lang/String;Ljava/lang/String;)I

    .line 926
    :cond_65
    invoke-virtual {v2}, Ljava/io/FileInputStream;->read()I

    move-result v3

    .line 927
    if-eq v3, v9, :cond_a4

    .line 928
    iget-object v4, p0, this$1:Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator$CoverAuthStateFile;

    new-array v6, v3, [B

    iput-object v6, v4, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator$CoverAuthStateFile;->mUri:[B

    .line 929
    iget-object v4, p0, this$1:Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator$CoverAuthStateFile;

    iget-object v4, v4, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator$CoverAuthStateFile;->mUri:[B

    invoke-virtual {v2, v4}, Ljava/io/FileInputStream;->read([B)I

    .line 930
    # getter for: Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;->DBG:Z
    invoke-static {}, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;->access$000()Z

    move-result v4

    if-eqz v4, :cond_a4

    iget-object v4, p0, this$1:Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator$CoverAuthStateFile;

    # getter for: Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator$CoverAuthStateFile;->TAG:Ljava/lang/String;
    invoke-static {v4}, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator$CoverAuthStateFile;->access$2700(Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator$CoverAuthStateFile;)Ljava/lang/String;

    move-result-object v4

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "uri is"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    new-instance v7, Ljava/lang/String;

    iget-object v8, p0, this$1:Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator$CoverAuthStateFile;

    iget-object v8, v8, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator$CoverAuthStateFile;->mUri:[B

    invoke-direct {v7, v8}, Ljava/lang/String;-><init>([B)V

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Landroid/util/Slog;->secI(Ljava/lang/String;Ljava/lang/String;)I

    .line 932
    :cond_a4
    invoke-virtual {v2}, Ljava/io/FileInputStream;->read()I

    move-result v3

    .line 933
    if-eq v3, v9, :cond_e3

    .line 934
    iget-object v4, p0, this$1:Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator$CoverAuthStateFile;

    new-array v6, v3, [B

    iput-object v6, v4, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator$CoverAuthStateFile;->mExtraData:[B

    .line 935
    iget-object v4, p0, this$1:Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator$CoverAuthStateFile;

    iget-object v4, v4, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator$CoverAuthStateFile;->mExtraData:[B

    invoke-virtual {v2, v4}, Ljava/io/FileInputStream;->read([B)I

    .line 936
    # getter for: Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;->DBG:Z
    invoke-static {}, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;->access$000()Z

    move-result v4

    if-eqz v4, :cond_e3

    iget-object v4, p0, this$1:Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator$CoverAuthStateFile;

    # getter for: Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator$CoverAuthStateFile;->TAG:Ljava/lang/String;
    invoke-static {v4}, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator$CoverAuthStateFile;->access$2700(Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator$CoverAuthStateFile;)Ljava/lang/String;

    move-result-object v4

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "extra data is"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    new-instance v7, Ljava/lang/String;

    iget-object v8, p0, this$1:Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator$CoverAuthStateFile;

    iget-object v8, v8, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator$CoverAuthStateFile;->mExtraData:[B

    invoke-direct {v7, v8}, Ljava/lang/String;-><init>([B)V

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Landroid/util/Slog;->secI(Ljava/lang/String;Ljava/lang/String;)I

    .line 938
    :cond_e3
    # getter for: Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;->DBG:Z
    invoke-static {}, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;->access$000()Z

    move-result v4

    if-eqz v4, :cond_f4

    iget-object v4, p0, this$1:Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator$CoverAuthStateFile;

    # getter for: Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator$CoverAuthStateFile;->TAG:Ljava/lang/String;
    invoke-static {v4}, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator$CoverAuthStateFile;->access$2700(Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator$CoverAuthStateFile;)Ljava/lang/String;

    move-result-object v4

    const-string v6, "An authentication state loaded"

    invoke-static {v4, v6}, Landroid/util/Slog;->secI(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_f4
    .catch Ljava/io/FileNotFoundException; {:try_start_26 .. :try_end_f4} :catch_128
    .catch Ljava/io/IOException; {:try_start_26 .. :try_end_f4} :catch_125
    .catchall {:try_start_26 .. :try_end_f4} :catchall_122

    .line 944
    :cond_f4
    :try_start_f4
    invoke-static {v2}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    move-object v1, v2

    .line 946
    .end local v2    # "in":Ljava/io/FileInputStream;
    .end local v3    # "size":I
    .restart local v1    # "in":Ljava/io/FileInputStream;
    :goto_f8
    monitor-exit v5
    :try_end_f9
    .catchall {:try_start_f4 .. :try_end_f9} :catchall_10a

    .line 947
    return-void

    .line 939
    :catch_fa
    move-exception v0

    .line 940
    .local v0, "e":Ljava/io/FileNotFoundException;
    :goto_fb
    :try_start_fb
    iget-object v4, p0, this$1:Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator$CoverAuthStateFile;

    # getter for: Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator$CoverAuthStateFile;->TAG:Ljava/lang/String;
    invoke-static {v4}, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator$CoverAuthStateFile;->access$2700(Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator$CoverAuthStateFile;)Ljava/lang/String;

    move-result-object v4

    const-string v6, "File does not exist"

    invoke-static {v4, v6}, Landroid/util/Slog;->secI(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_106
    .catchall {:try_start_fb .. :try_end_106} :catchall_11d

    .line 944
    :try_start_106
    invoke-static {v1}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    goto :goto_f8

    .line 946
    .end local v0    # "e":Ljava/io/FileNotFoundException;
    .end local v1    # "in":Ljava/io/FileInputStream;
    :catchall_10a
    move-exception v4

    monitor-exit v5
    :try_end_10c
    .catchall {:try_start_106 .. :try_end_10c} :catchall_10a

    throw v4

    .line 941
    .restart local v1    # "in":Ljava/io/FileInputStream;
    :catch_10d
    move-exception v0

    .line 942
    .local v0, "e":Ljava/io/IOException;
    :goto_10e
    :try_start_10e
    iget-object v4, p0, this$1:Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator$CoverAuthStateFile;

    # getter for: Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator$CoverAuthStateFile;->TAG:Ljava/lang/String;
    invoke-static {v4}, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator$CoverAuthStateFile;->access$2700(Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator$CoverAuthStateFile;)Ljava/lang/String;

    move-result-object v4

    const-string v6, "Failed to read authentication state"

    invoke-static {v4, v6, v0}, Landroid/util/Slog;->secE(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_119
    .catchall {:try_start_10e .. :try_end_119} :catchall_11d

    .line 944
    :try_start_119
    invoke-static {v1}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    goto :goto_f8

    .end local v0    # "e":Ljava/io/IOException;
    :catchall_11d
    move-exception v4

    :goto_11e
    invoke-static {v1}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    throw v4
    :try_end_122
    .catchall {:try_start_119 .. :try_end_122} :catchall_10a

    .end local v1    # "in":Ljava/io/FileInputStream;
    .restart local v2    # "in":Ljava/io/FileInputStream;
    :catchall_122
    move-exception v4

    move-object v1, v2

    .end local v2    # "in":Ljava/io/FileInputStream;
    .restart local v1    # "in":Ljava/io/FileInputStream;
    goto :goto_11e

    .line 941
    .end local v1    # "in":Ljava/io/FileInputStream;
    .restart local v2    # "in":Ljava/io/FileInputStream;
    :catch_125
    move-exception v0

    move-object v1, v2

    .end local v2    # "in":Ljava/io/FileInputStream;
    .restart local v1    # "in":Ljava/io/FileInputStream;
    goto :goto_10e

    .line 939
    .end local v1    # "in":Ljava/io/FileInputStream;
    .restart local v2    # "in":Ljava/io/FileInputStream;
    :catch_128
    move-exception v0

    move-object v1, v2

    .end local v2    # "in":Ljava/io/FileInputStream;
    .restart local v1    # "in":Ljava/io/FileInputStream;
    goto :goto_fb
.end method
