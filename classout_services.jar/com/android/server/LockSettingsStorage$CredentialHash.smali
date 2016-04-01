.class Lcom/android/server/LockSettingsStorage$CredentialHash;
.super Ljava/lang/Object;
.source "LockSettingsStorage.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/LockSettingsStorage;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "CredentialHash"
.end annotation


# static fields
.field static final TYPE_BACKUP_PASSWORD:I = 0x4

.field static final TYPE_BACKUP_PIN:I = 0x3

.field static final TYPE_NONE:I = -0x1

.field static final TYPE_PASSWORD:I = 0x2

.field static final TYPE_PATTERN:I = 0x1

.field static final VERSION_GATEKEEPER:I = 0x1

.field static final VERSION_LEGACY:I


# instance fields
.field hash:[B

.field isBaseZeroPattern:Z

.field final synthetic this$0:Lcom/android/server/LockSettingsStorage;

.field version:I


# direct methods
.method constructor <init>(Lcom/android/server/LockSettingsStorage;[BI)V
    .registers 5
    .param p2, "hash"    # [B
    .param p3, "version"    # I

    .prologue
    .line 104
    iput-object p1, p0, this$0:Lcom/android/server/LockSettingsStorage;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 105
    iput-object p2, p0, hash:[B

    .line 106
    iput p3, p0, version:I

    .line 107
    const/4 v0, 0x0

    iput-boolean v0, p0, isBaseZeroPattern:Z

    .line 108
    return-void
.end method

.method constructor <init>(Lcom/android/server/LockSettingsStorage;[BZ)V
    .registers 5
    .param p2, "hash"    # [B
    .param p3, "isBaseZeroPattern"    # Z

    .prologue
    .line 110
    iput-object p1, p0, this$0:Lcom/android/server/LockSettingsStorage;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 111
    iput-object p2, p0, hash:[B

    .line 112
    const/4 v0, 0x1

    iput v0, p0, version:I

    .line 113
    iput-boolean p3, p0, isBaseZeroPattern:Z

    .line 114
    return-void
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .registers 3

    .prologue
    .line 121
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "version: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, version:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " isBaseZeroPattern: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, isBaseZeroPattern:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
