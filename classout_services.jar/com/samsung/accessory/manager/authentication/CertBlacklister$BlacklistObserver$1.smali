.class Lcom/samsung/accessory/manager/authentication/CertBlacklister$BlacklistObserver$1;
.super Ljava/lang/Thread;
.source "CertBlacklister.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/accessory/manager/authentication/CertBlacklister$BlacklistObserver;->readFile()V
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
    .line 108
    iput-object p1, p0, this$0:Lcom/samsung/accessory/manager/authentication/CertBlacklister$BlacklistObserver;

    invoke-direct {p0, p2}, Ljava/lang/Thread;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 6

    .prologue
    .line 110
    iget-object v1, p0, this$0:Lcom/samsung/accessory/manager/authentication/CertBlacklister$BlacklistObserver;

    # getter for: Lcom/samsung/accessory/manager/authentication/CertBlacklister$BlacklistObserver;->mTmpDir:Ljava/io/File;
    invoke-static {v1}, Lcom/samsung/accessory/manager/authentication/CertBlacklister$BlacklistObserver;->access$100(Lcom/samsung/accessory/manager/authentication/CertBlacklister$BlacklistObserver;)Ljava/io/File;

    move-result-object v2

    monitor-enter v2

    .line 111
    :try_start_7
    # getter for: Lcom/samsung/accessory/manager/authentication/CertBlacklister;->DBG:Z
    invoke-static {}, Lcom/samsung/accessory/manager/authentication/CertBlacklister;->access$000()Z

    move-result v1

    if-eqz v1, :cond_14

    const-string v1, "CertBlacklister"

    const-string v3, "Read a blacklist from file.."

    invoke-static {v1, v3}, Landroid/util/Slog;->secD(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_14
    .catchall {:try_start_7 .. :try_end_14} :catchall_4f

    .line 113
    :cond_14
    :try_start_14
    iget-object v1, p0, this$0:Lcom/samsung/accessory/manager/authentication/CertBlacklister$BlacklistObserver;

    sget-object v3, Lcom/samsung/accessory/manager/authentication/CertBlacklister;->PUBKEY_PATH:Ljava/lang/String;

    invoke-static {v3}, Llibcore/io/IoUtils;->readFileAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    # setter for: Lcom/samsung/accessory/manager/authentication/CertBlacklister$BlacklistObserver;->mBlacklist:Ljava/lang/String;
    invoke-static {v1, v3}, Lcom/samsung/accessory/manager/authentication/CertBlacklister$BlacklistObserver;->access$202(Lcom/samsung/accessory/manager/authentication/CertBlacklister$BlacklistObserver;Ljava/lang/String;)Ljava/lang/String;
    :try_end_1f
    .catch Ljava/io/FileNotFoundException; {:try_start_14 .. :try_end_1f} :catch_46
    .catch Ljava/io/IOException; {:try_start_14 .. :try_end_1f} :catch_52
    .catchall {:try_start_14 .. :try_end_1f} :catchall_4f

    .line 120
    :goto_1f
    :try_start_1f
    # getter for: Lcom/samsung/accessory/manager/authentication/CertBlacklister;->DBG:Z
    invoke-static {}, Lcom/samsung/accessory/manager/authentication/CertBlacklister;->access$000()Z

    move-result v1

    if-eqz v1, :cond_44

    const-string v1, "CertBlacklister"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "mBlacklist = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, this$0:Lcom/samsung/accessory/manager/authentication/CertBlacklister$BlacklistObserver;

    # getter for: Lcom/samsung/accessory/manager/authentication/CertBlacklister$BlacklistObserver;->mBlacklist:Ljava/lang/String;
    invoke-static {v4}, Lcom/samsung/accessory/manager/authentication/CertBlacklister$BlacklistObserver;->access$200(Lcom/samsung/accessory/manager/authentication/CertBlacklister$BlacklistObserver;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Slog;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 121
    :cond_44
    monitor-exit v2

    .line 122
    return-void

    .line 114
    :catch_46
    move-exception v0

    .line 115
    .local v0, "e":Ljava/io/FileNotFoundException;
    const-string v1, "CertBlacklister"

    const-string v3, "File does not exist"

    invoke-static {v1, v3}, Landroid/util/Slog;->secI(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1f

    .line 121
    .end local v0    # "e":Ljava/io/FileNotFoundException;
    :catchall_4f
    move-exception v1

    monitor-exit v2
    :try_end_51
    .catchall {:try_start_1f .. :try_end_51} :catchall_4f

    throw v1

    .line 116
    :catch_52
    move-exception v0

    .line 117
    .local v0, "e":Ljava/io/IOException;
    :try_start_53
    const-string v1, "CertBlacklister"

    const-string v3, "Failed to read list"

    invoke-static {v1, v3, v0}, Landroid/util/Slog;->secE(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_5a
    .catchall {:try_start_53 .. :try_end_5a} :catchall_4f

    goto :goto_1f
.end method
