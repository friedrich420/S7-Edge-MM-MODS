.class Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator$CoverAuthStateFile;
.super Ljava/lang/Object;
.source "CoverAuthenticator.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "CoverAuthStateFile"
.end annotation


# instance fields
.field private final TAG:Ljava/lang/String;

.field public mExtraData:[B

.field public mId:[B

.field private final mPath:Ljava/lang/String;

.field private final mTmpDir:Ljava/io/File;

.field public mUri:[B

.field final synthetic this$0:Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;


# direct methods
.method private constructor <init>(Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;)V
    .registers 4

    .prologue
    .line 834
    iput-object p1, p0, this$0:Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 835
    const-class v0, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator$CoverAuthStateFile;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, TAG:Ljava/lang/String;

    .line 836
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ANDROID_DATA"

    invoke-static {v1}, Ljava/lang/System;->getenv(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/misc/saccessory_manager/auth_state"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, mPath:Ljava/lang/String;

    .line 837
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, mPath:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v0

    iput-object v0, p0, mTmpDir:Ljava/io/File;

    return-void
.end method

.method synthetic constructor <init>(Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator$1;)V
    .registers 3
    .param p1, "x0"    # Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;
    .param p2, "x1"    # Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator$1;

    .prologue
    .line 834
    invoke-direct {p0, p1}, <init>(Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;)V

    return-void
.end method

.method static synthetic access$2600(Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator$CoverAuthStateFile;)Ljava/io/File;
    .registers 2
    .param p0, "x0"    # Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator$CoverAuthStateFile;

    .prologue
    .line 834
    iget-object v0, p0, mTmpDir:Ljava/io/File;

    return-object v0
.end method

.method static synthetic access$2700(Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator$CoverAuthStateFile;)Ljava/lang/String;
    .registers 2
    .param p0, "x0"    # Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator$CoverAuthStateFile;

    .prologue
    .line 834
    iget-object v0, p0, TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$2800(Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator$CoverAuthStateFile;)Ljava/lang/String;
    .registers 2
    .param p0, "x0"    # Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator$CoverAuthStateFile;

    .prologue
    .line 834
    iget-object v0, p0, mPath:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$900(Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator$CoverAuthStateFile;[B[B[B)V
    .registers 4
    .param p0, "x0"    # Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator$CoverAuthStateFile;
    .param p1, "x1"    # [B
    .param p2, "x2"    # [B
    .param p3, "x3"    # [B

    .prologue
    .line 834
    invoke-direct {p0, p1, p2, p3}, writeFile([B[B[B)V

    return-void
.end method

.method private writeFile([B[B[B)V
    .registers 10
    .param p1, "id"    # [B
    .param p2, "uri"    # [B
    .param p3, "extraData"    # [B

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 844
    if-nez p1, :cond_c

    .line 845
    iget-object v0, p0, TAG:Ljava/lang/String;

    const-string v1, "ID is null.. can not write"

    invoke-static {v0, v1}, Landroid/util/Slog;->secE(Ljava/lang/String;Ljava/lang/String;)I

    .line 909
    :goto_b
    return-void

    .line 849
    :cond_c
    iget-object v0, p0, mId:[B

    invoke-static {v0, p1}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v0

    if-eqz v0, :cond_2d

    iget-object v0, p0, mUri:[B

    invoke-static {v0, p2}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v0

    if-eqz v0, :cond_2d

    iget-object v0, p0, mExtraData:[B

    invoke-static {v0, p3}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v0

    if-eqz v0, :cond_2d

    .line 850
    iget-object v0, p0, TAG:Ljava/lang/String;

    const-string/jumbo v1, "same state.. "

    invoke-static {v0, v1}, Landroid/util/Slog;->secI(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_b

    .line 854
    :cond_2d
    array-length v0, p1

    new-array v0, v0, [B

    iput-object v0, p0, mId:[B

    .line 855
    iget-object v0, p0, mId:[B

    array-length v1, p1

    invoke-static {p1, v2, v0, v2, v1}, Ljava/lang/System;->arraycopy([BI[BII)V

    .line 857
    if-eqz p2, :cond_61

    .line 858
    array-length v0, p2

    new-array v0, v0, [B

    iput-object v0, p0, mUri:[B

    .line 859
    iget-object v0, p0, mUri:[B

    array-length v1, p2

    invoke-static {p2, v2, v0, v2, v1}, Ljava/lang/System;->arraycopy([BI[BII)V

    .line 863
    :goto_45
    if-eqz p3, :cond_64

    .line 864
    array-length v0, p3

    new-array v0, v0, [B

    iput-object v0, p0, mExtraData:[B

    .line 865
    iget-object v0, p0, mExtraData:[B

    array-length v1, p3

    invoke-static {p3, v2, v0, v2, v1}, Ljava/lang/System;->arraycopy([BI[BII)V

    .line 869
    :goto_52
    new-instance v0, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator$CoverAuthStateFile$1;

    const-string v2, "AuthStateUpdater"

    move-object v1, p0

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    invoke-direct/range {v0 .. v5}, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator$CoverAuthStateFile$1;-><init>(Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator$CoverAuthStateFile;Ljava/lang/String;[B[B[B)V

    invoke-virtual {v0}, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator$CoverAuthStateFile$1;->start()V

    goto :goto_b

    .line 861
    :cond_61
    iput-object v3, p0, mUri:[B

    goto :goto_45

    .line 867
    :cond_64
    iput-object v3, p0, mExtraData:[B

    goto :goto_52
.end method


# virtual methods
.method public readFile()V
    .registers 3

    .prologue
    .line 912
    new-instance v0, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator$CoverAuthStateFile$2;

    const-string v1, "AuthStateReader"

    invoke-direct {v0, p0, v1}, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator$CoverAuthStateFile$2;-><init>(Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator$CoverAuthStateFile;Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator$CoverAuthStateFile$2;->start()V

    .line 949
    return-void
.end method
