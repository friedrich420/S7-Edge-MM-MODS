.class Lcom/samsung/accessory/manager/authentication/CertBlacklister$BlacklistObserver$2;
.super Ljava/lang/Thread;
.source "CertBlacklister.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/accessory/manager/authentication/CertBlacklister$BlacklistObserver;->writeBlacklist()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/accessory/manager/authentication/CertBlacklister$BlacklistObserver;


# direct methods
.method constructor <init>(Lcom/samsung/accessory/manager/authentication/CertBlacklister$BlacklistObserver;Ljava/lang/String;)V
    .registers 3
    .param p2, "x0"    # Ljava/lang/String;

    .prologue
    .line 137
    iput-object p1, p0, this$0:Lcom/samsung/accessory/manager/authentication/CertBlacklister$BlacklistObserver;

    invoke-direct {p0, p2}, Ljava/lang/Thread;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 10

    .prologue
    .line 139
    iget-object v5, p0, this$0:Lcom/samsung/accessory/manager/authentication/CertBlacklister$BlacklistObserver;

    # getter for: Lcom/samsung/accessory/manager/authentication/CertBlacklister$BlacklistObserver;->mTmpDir:Ljava/io/File;
    invoke-static {v5}, Lcom/samsung/accessory/manager/authentication/CertBlacklister$BlacklistObserver;->access$100(Lcom/samsung/accessory/manager/authentication/CertBlacklister$BlacklistObserver;)Ljava/io/File;

    move-result-object v6

    monitor-enter v6

    .line 140
    :try_start_7
    iget-object v5, p0, this$0:Lcom/samsung/accessory/manager/authentication/CertBlacklister$BlacklistObserver;

    invoke-virtual {v5}, Lcom/samsung/accessory/manager/authentication/CertBlacklister$BlacklistObserver;->getValue()Ljava/lang/String;

    move-result-object v4

    .line 142
    .local v4, "tmpValue":Ljava/lang/String;
    if-eqz v4, :cond_2a

    iget-object v5, p0, this$0:Lcom/samsung/accessory/manager/authentication/CertBlacklister$BlacklistObserver;

    # getter for: Lcom/samsung/accessory/manager/authentication/CertBlacklister$BlacklistObserver;->mBlacklist:Ljava/lang/String;
    invoke-static {v5}, Lcom/samsung/accessory/manager/authentication/CertBlacklister$BlacklistObserver;->access$200(Lcom/samsung/accessory/manager/authentication/CertBlacklister$BlacklistObserver;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2a

    .line 143
    # getter for: Lcom/samsung/accessory/manager/authentication/CertBlacklister;->DBG:Z
    invoke-static {}, Lcom/samsung/accessory/manager/authentication/CertBlacklister;->access$000()Z

    move-result v5

    if-eqz v5, :cond_28

    const-string v5, "CertBlacklister"

    const-string v7, "Certificate blacklist not changed, return..."

    invoke-static {v5, v7}, Landroid/util/Slog;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 144
    :cond_28
    monitor-exit v6

    .line 174
    :goto_29
    return-void

    .line 147
    :cond_2a
    if-eqz v4, :cond_94

    .line 148
    iget-object v5, p0, this$0:Lcom/samsung/accessory/manager/authentication/CertBlacklister$BlacklistObserver;

    # setter for: Lcom/samsung/accessory/manager/authentication/CertBlacklister$BlacklistObserver;->mBlacklist:Ljava/lang/String;
    invoke-static {v5, v4}, Lcom/samsung/accessory/manager/authentication/CertBlacklister$BlacklistObserver;->access$202(Lcom/samsung/accessory/manager/authentication/CertBlacklister$BlacklistObserver;Ljava/lang/String;)Ljava/lang/String;

    .line 149
    # getter for: Lcom/samsung/accessory/manager/authentication/CertBlacklister;->DBG:Z
    invoke-static {}, Lcom/samsung/accessory/manager/authentication/CertBlacklister;->access$000()Z

    move-result v5

    if-eqz v5, :cond_3e

    const-string v5, "CertBlacklister"

    const-string v7, "Certificate blacklist changed, updating..."

    invoke-static {v5, v7}, Landroid/util/Slog;->secD(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3e
    .catchall {:try_start_7 .. :try_end_3e} :catchall_96

    .line 150
    :cond_3e
    const/4 v1, 0x0

    .line 153
    .local v1, "out":Ljava/io/FileOutputStream;
    :try_start_3f
    const-string/jumbo v5, "journal"

    const-string v7, ""

    iget-object v8, p0, this$0:Lcom/samsung/accessory/manager/authentication/CertBlacklister$BlacklistObserver;

    # getter for: Lcom/samsung/accessory/manager/authentication/CertBlacklister$BlacklistObserver;->mTmpDir:Ljava/io/File;
    invoke-static {v8}, Lcom/samsung/accessory/manager/authentication/CertBlacklister$BlacklistObserver;->access$100(Lcom/samsung/accessory/manager/authentication/CertBlacklister$BlacklistObserver;)Ljava/io/File;

    move-result-object v8

    invoke-static {v5, v7, v8}, Ljava/io/File;->createTempFile(Ljava/lang/String;Ljava/lang/String;Ljava/io/File;)Ljava/io/File;

    move-result-object v3

    .line 155
    .local v3, "tmp":Ljava/io/File;
    const/4 v5, 0x1

    const/4 v7, 0x0

    invoke-virtual {v3, v5, v7}, Ljava/io/File;->setReadable(ZZ)Z

    .line 157
    new-instance v2, Ljava/io/FileOutputStream;

    invoke-direct {v2, v3}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_58
    .catch Ljava/io/IOException; {:try_start_3f .. :try_end_58} :catch_99
    .catchall {:try_start_3f .. :try_end_58} :catchall_a5

    .line 158
    .end local v1    # "out":Ljava/io/FileOutputStream;
    .local v2, "out":Ljava/io/FileOutputStream;
    :try_start_58
    iget-object v5, p0, this$0:Lcom/samsung/accessory/manager/authentication/CertBlacklister$BlacklistObserver;

    # getter for: Lcom/samsung/accessory/manager/authentication/CertBlacklister$BlacklistObserver;->mBlacklist:Ljava/lang/String;
    invoke-static {v5}, Lcom/samsung/accessory/manager/authentication/CertBlacklister$BlacklistObserver;->access$200(Lcom/samsung/accessory/manager/authentication/CertBlacklister$BlacklistObserver;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->getBytes()[B

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/io/FileOutputStream;->write([B)V

    .line 160
    invoke-static {v2}, Landroid/os/FileUtils;->sync(Ljava/io/FileOutputStream;)Z

    .line 162
    new-instance v5, Ljava/io/File;

    iget-object v7, p0, this$0:Lcom/samsung/accessory/manager/authentication/CertBlacklister$BlacklistObserver;

    # getter for: Lcom/samsung/accessory/manager/authentication/CertBlacklister$BlacklistObserver;->mPath:Ljava/lang/String;
    invoke-static {v7}, Lcom/samsung/accessory/manager/authentication/CertBlacklister$BlacklistObserver;->access$300(Lcom/samsung/accessory/manager/authentication/CertBlacklister$BlacklistObserver;)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v5, v7}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v5}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    .line 163
    # getter for: Lcom/samsung/accessory/manager/authentication/CertBlacklister;->DBG:Z
    invoke-static {}, Lcom/samsung/accessory/manager/authentication/CertBlacklister;->access$000()Z

    move-result v5

    if-eqz v5, :cond_83

    const-string v5, "CertBlacklister"

    const-string v7, "Certificate blacklist updated"

    invoke-static {v5, v7}, Landroid/util/Slog;->secD(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_83
    .catch Ljava/io/IOException; {:try_start_58 .. :try_end_83} :catch_ad
    .catchall {:try_start_58 .. :try_end_83} :catchall_aa

    .line 167
    :cond_83
    :try_start_83
    invoke-static {v2}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    move-object v1, v2

    .line 170
    .end local v2    # "out":Ljava/io/FileOutputStream;
    .end local v3    # "tmp":Ljava/io/File;
    .restart local v1    # "out":Ljava/io/FileOutputStream;
    :goto_87
    # getter for: Lcom/samsung/accessory/manager/authentication/CertBlacklister;->mCertBlacklistListener:Lcom/samsung/accessory/manager/authentication/CertBlacklister$CertBlacklistListener;
    invoke-static {}, Lcom/samsung/accessory/manager/authentication/CertBlacklister;->access$400()Lcom/samsung/accessory/manager/authentication/CertBlacklister$CertBlacklistListener;

    move-result-object v5

    if-eqz v5, :cond_94

    .line 171
    # getter for: Lcom/samsung/accessory/manager/authentication/CertBlacklister;->mCertBlacklistListener:Lcom/samsung/accessory/manager/authentication/CertBlacklister$CertBlacklistListener;
    invoke-static {}, Lcom/samsung/accessory/manager/authentication/CertBlacklister;->access$400()Lcom/samsung/accessory/manager/authentication/CertBlacklister$CertBlacklistListener;

    move-result-object v5

    invoke-interface {v5}, Lcom/samsung/accessory/manager/authentication/CertBlacklister$CertBlacklistListener;->onCertBlacklistChanged()V

    .line 173
    .end local v1    # "out":Ljava/io/FileOutputStream;
    :cond_94
    monitor-exit v6

    goto :goto_29

    .end local v4    # "tmpValue":Ljava/lang/String;
    :catchall_96
    move-exception v5

    monitor-exit v6
    :try_end_98
    .catchall {:try_start_83 .. :try_end_98} :catchall_96

    throw v5

    .line 164
    .restart local v1    # "out":Ljava/io/FileOutputStream;
    .restart local v4    # "tmpValue":Ljava/lang/String;
    :catch_99
    move-exception v0

    .line 165
    .local v0, "e":Ljava/io/IOException;
    :goto_9a
    :try_start_9a
    const-string v5, "CertBlacklister"

    const-string v7, "Failed to write list"

    invoke-static {v5, v7, v0}, Landroid/util/Slog;->secE(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_a1
    .catchall {:try_start_9a .. :try_end_a1} :catchall_a5

    .line 167
    :try_start_a1
    invoke-static {v1}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    goto :goto_87

    .end local v0    # "e":Ljava/io/IOException;
    :catchall_a5
    move-exception v5

    :goto_a6
    invoke-static {v1}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    throw v5
    :try_end_aa
    .catchall {:try_start_a1 .. :try_end_aa} :catchall_96

    .end local v1    # "out":Ljava/io/FileOutputStream;
    .restart local v2    # "out":Ljava/io/FileOutputStream;
    .restart local v3    # "tmp":Ljava/io/File;
    :catchall_aa
    move-exception v5

    move-object v1, v2

    .end local v2    # "out":Ljava/io/FileOutputStream;
    .restart local v1    # "out":Ljava/io/FileOutputStream;
    goto :goto_a6

    .line 164
    .end local v1    # "out":Ljava/io/FileOutputStream;
    .restart local v2    # "out":Ljava/io/FileOutputStream;
    :catch_ad
    move-exception v0

    move-object v1, v2

    .end local v2    # "out":Ljava/io/FileOutputStream;
    .restart local v1    # "out":Ljava/io/FileOutputStream;
    goto :goto_9a
.end method
