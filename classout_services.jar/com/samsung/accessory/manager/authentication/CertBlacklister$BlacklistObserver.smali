.class Lcom/samsung/accessory/manager/authentication/CertBlacklister$BlacklistObserver;
.super Landroid/database/ContentObserver;
.source "CertBlacklister.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/accessory/manager/authentication/CertBlacklister;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "BlacklistObserver"
.end annotation


# instance fields
.field private mBlacklist:Ljava/lang/String;

.field private final mContentResolver:Landroid/content/ContentResolver;

.field private final mKey:Ljava/lang/String;

.field private final mName:Ljava/lang/String;

.field private final mPath:Ljava/lang/String;

.field private final mTmpDir:Ljava/io/File;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentResolver;)V
    .registers 7
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "name"    # Ljava/lang/String;
    .param p3, "path"    # Ljava/lang/String;
    .param p4, "cr"    # Landroid/content/ContentResolver;

    .prologue
    .line 89
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    .line 90
    iput-object p1, p0, mKey:Ljava/lang/String;

    .line 91
    iput-object p2, p0, mName:Ljava/lang/String;

    .line 92
    iput-object p3, p0, mPath:Ljava/lang/String;

    .line 93
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, mPath:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v0

    iput-object v0, p0, mTmpDir:Ljava/io/File;

    .line 94
    iput-object p4, p0, mContentResolver:Landroid/content/ContentResolver;

    .line 95
    return-void
.end method

.method static synthetic access$100(Lcom/samsung/accessory/manager/authentication/CertBlacklister$BlacklistObserver;)Ljava/io/File;
    .registers 2
    .param p0, "x0"    # Lcom/samsung/accessory/manager/authentication/CertBlacklister$BlacklistObserver;

    .prologue
    .line 78
    iget-object v0, p0, mTmpDir:Ljava/io/File;

    return-object v0
.end method

.method static synthetic access$200(Lcom/samsung/accessory/manager/authentication/CertBlacklister$BlacklistObserver;)Ljava/lang/String;
    .registers 2
    .param p0, "x0"    # Lcom/samsung/accessory/manager/authentication/CertBlacklister$BlacklistObserver;

    .prologue
    .line 78
    iget-object v0, p0, mBlacklist:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$202(Lcom/samsung/accessory/manager/authentication/CertBlacklister$BlacklistObserver;Ljava/lang/String;)Ljava/lang/String;
    .registers 2
    .param p0, "x0"    # Lcom/samsung/accessory/manager/authentication/CertBlacklister$BlacklistObserver;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 78
    iput-object p1, p0, mBlacklist:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$300(Lcom/samsung/accessory/manager/authentication/CertBlacklister$BlacklistObserver;)Ljava/lang/String;
    .registers 2
    .param p0, "x0"    # Lcom/samsung/accessory/manager/authentication/CertBlacklister$BlacklistObserver;

    .prologue
    .line 78
    iget-object v0, p0, mPath:Ljava/lang/String;

    return-object v0
.end method

.method private writeBlacklist()V
    .registers 3

    .prologue
    .line 137
    new-instance v0, Lcom/samsung/accessory/manager/authentication/CertBlacklister$BlacklistObserver$2;

    const-string v1, "BlacklistUpdater"

    invoke-direct {v0, p0, v1}, Lcom/samsung/accessory/manager/authentication/CertBlacklister$BlacklistObserver$2;-><init>(Lcom/samsung/accessory/manager/authentication/CertBlacklister$BlacklistObserver;Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/samsung/accessory/manager/authentication/CertBlacklister$BlacklistObserver$2;->start()V

    .line 176
    return-void
.end method


# virtual methods
.method public getValue()Ljava/lang/String;
    .registers 3

    .prologue
    .line 133
    iget-object v0, p0, mContentResolver:Landroid/content/ContentResolver;

    iget-object v1, p0, mKey:Ljava/lang/String;

    invoke-static {v0, v1}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public isThisKeyBlacklisted(Ljava/lang/String;)Z
    .registers 6
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    .line 98
    if-eqz p1, :cond_27

    iget-object v0, p0, mBlacklist:Ljava/lang/String;

    if-eqz v0, :cond_27

    .line 99
    iget-object v1, p0, mTmpDir:Ljava/io/File;

    monitor-enter v1

    .line 100
    :try_start_9
    iget-object v0, p0, mBlacklist:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ","

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    monitor-exit v1

    .line 104
    :goto_23
    return v0

    .line 101
    :catchall_24
    move-exception v0

    monitor-exit v1
    :try_end_26
    .catchall {:try_start_9 .. :try_end_26} :catchall_24

    throw v0

    .line 103
    :cond_27
    # getter for: Lcom/samsung/accessory/manager/authentication/CertBlacklister;->DBG:Z
    invoke-static {}, Lcom/samsung/accessory/manager/authentication/CertBlacklister;->access$000()Z

    move-result v0

    if-eqz v0, :cond_34

    const-string v0, "CertBlacklister"

    const-string v1, "This key is not in blacklist"

    invoke-static {v0, v1}, Landroid/util/Slog;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 104
    :cond_34
    const/4 v0, 0x0

    goto :goto_23
.end method

.method public onChange(Z)V
    .registers 2
    .param p1, "selfChange"    # Z

    .prologue
    .line 128
    invoke-super {p0, p1}, Landroid/database/ContentObserver;->onChange(Z)V

    .line 129
    invoke-direct {p0}, writeBlacklist()V

    .line 130
    return-void
.end method

.method public readFile()V
    .registers 3

    .prologue
    .line 108
    new-instance v0, Lcom/samsung/accessory/manager/authentication/CertBlacklister$BlacklistObserver$1;

    const-string v1, "BlacklistReader"

    invoke-direct {v0, p0, v1}, Lcom/samsung/accessory/manager/authentication/CertBlacklister$BlacklistObserver$1;-><init>(Lcom/samsung/accessory/manager/authentication/CertBlacklister$BlacklistObserver;Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/samsung/accessory/manager/authentication/CertBlacklister$BlacklistObserver$1;->start()V

    .line 124
    return-void
.end method
