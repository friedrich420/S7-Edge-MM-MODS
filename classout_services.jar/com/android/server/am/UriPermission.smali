.class final Lcom/android/server/am/UriPermission;
.super Ljava/lang/Object;
.source "UriPermission.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/am/UriPermission$1;,
        Lcom/android/server/am/UriPermission$Snapshot;,
        Lcom/android/server/am/UriPermission$PersistedTimeComparator;
    }
.end annotation


# static fields
.field private static final INVALID_TIME:J = -0x8000000000000000L

.field public static final STRENGTH_GLOBAL:I = 0x2

.field public static final STRENGTH_NONE:I = 0x0

.field public static final STRENGTH_OWNED:I = 0x1

.field public static final STRENGTH_PERSISTABLE:I = 0x3

.field private static final TAG:Ljava/lang/String; = "UriPermission"


# instance fields
.field globalModeFlags:I

.field private mReadOwners:Landroid/util/ArraySet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArraySet",
            "<",
            "Lcom/android/server/am/UriPermissionOwner;",
            ">;"
        }
    .end annotation
.end field

.field private mWriteOwners:Landroid/util/ArraySet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArraySet",
            "<",
            "Lcom/android/server/am/UriPermissionOwner;",
            ">;"
        }
    .end annotation
.end field

.field modeFlags:I

.field ownedModeFlags:I

.field persistableModeFlags:I

.field persistedCreateTime:J

.field persistedModeFlags:I

.field final sourcePkg:Ljava/lang/String;

.field private stringName:Ljava/lang/String;

.field final targetPkg:Ljava/lang/String;

.field final targetUid:I

.field final targetUserId:I

.field final uri:Lcom/android/server/am/ActivityManagerService$GrantUri;


# direct methods
.method constructor <init>(Ljava/lang/String;Ljava/lang/String;ILcom/android/server/am/ActivityManagerService$GrantUri;)V
    .registers 7
    .param p1, "sourcePkg"    # Ljava/lang/String;
    .param p2, "targetPkg"    # Ljava/lang/String;
    .param p3, "targetUid"    # I
    .param p4, "uri"    # Lcom/android/server/am/ActivityManagerService$GrantUri;

    .prologue
    const/4 v0, 0x0

    .line 87
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 62
    iput v0, p0, modeFlags:I

    .line 65
    iput v0, p0, ownedModeFlags:I

    .line 67
    iput v0, p0, globalModeFlags:I

    .line 69
    iput v0, p0, persistableModeFlags:I

    .line 72
    iput v0, p0, persistedModeFlags:I

    .line 78
    const-wide/high16 v0, -0x8000000000000000L

    iput-wide v0, p0, persistedCreateTime:J

    .line 88
    invoke-static {p3}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v0

    iput v0, p0, targetUserId:I

    .line 89
    iput-object p1, p0, sourcePkg:Ljava/lang/String;

    .line 90
    iput-object p2, p0, targetPkg:Ljava/lang/String;

    .line 91
    iput p3, p0, targetUid:I

    .line 92
    iput-object p4, p0, uri:Lcom/android/server/am/ActivityManagerService$GrantUri;

    .line 93
    return-void
.end method

.method private addReadOwner(Lcom/android/server/am/UriPermissionOwner;)V
    .registers 3
    .param p1, "owner"    # Lcom/android/server/am/UriPermissionOwner;

    .prologue
    .line 244
    iget-object v0, p0, mReadOwners:Landroid/util/ArraySet;

    if-nez v0, :cond_13

    .line 245
    invoke-static {}, Lcom/google/android/collect/Sets;->newArraySet()Landroid/util/ArraySet;

    move-result-object v0

    iput-object v0, p0, mReadOwners:Landroid/util/ArraySet;

    .line 246
    iget v0, p0, ownedModeFlags:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, ownedModeFlags:I

    .line 247
    invoke-direct {p0}, updateModeFlags()V

    .line 249
    :cond_13
    iget-object v0, p0, mReadOwners:Landroid/util/ArraySet;

    invoke-virtual {v0, p1}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1e

    .line 250
    invoke-virtual {p1, p0}, Lcom/android/server/am/UriPermissionOwner;->addReadPermission(Lcom/android/server/am/UriPermission;)V

    .line 252
    :cond_1e
    return-void
.end method

.method private addWriteOwner(Lcom/android/server/am/UriPermissionOwner;)V
    .registers 3
    .param p1, "owner"    # Lcom/android/server/am/UriPermissionOwner;

    .prologue
    .line 269
    iget-object v0, p0, mWriteOwners:Landroid/util/ArraySet;

    if-nez v0, :cond_13

    .line 270
    invoke-static {}, Lcom/google/android/collect/Sets;->newArraySet()Landroid/util/ArraySet;

    move-result-object v0

    iput-object v0, p0, mWriteOwners:Landroid/util/ArraySet;

    .line 271
    iget v0, p0, ownedModeFlags:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, ownedModeFlags:I

    .line 272
    invoke-direct {p0}, updateModeFlags()V

    .line 274
    :cond_13
    iget-object v0, p0, mWriteOwners:Landroid/util/ArraySet;

    invoke-virtual {v0, p1}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1e

    .line 275
    invoke-virtual {p1, p0}, Lcom/android/server/am/UriPermissionOwner;->addWritePermission(Lcom/android/server/am/UriPermission;)V

    .line 277
    :cond_1e
    return-void
.end method

.method private updateModeFlags()V
    .registers 3

    .prologue
    .line 96
    iget v0, p0, ownedModeFlags:I

    iget v1, p0, globalModeFlags:I

    or-int/2addr v0, v1

    iget v1, p0, persistableModeFlags:I

    or-int/2addr v0, v1

    iget v1, p0, persistedModeFlags:I

    or-int/2addr v0, v1

    iput v0, p0, modeFlags:I

    .line 97
    return-void
.end method


# virtual methods
.method public buildPersistedPublicApiObject()Landroid/content/UriPermission;
    .registers 7

    .prologue
    .line 376
    new-instance v0, Landroid/content/UriPermission;

    iget-object v1, p0, uri:Lcom/android/server/am/ActivityManagerService$GrantUri;

    iget-object v1, v1, Lcom/android/server/am/ActivityManagerService$GrantUri;->uri:Landroid/net/Uri;

    iget v2, p0, persistedModeFlags:I

    iget-wide v4, p0, persistedCreateTime:J

    invoke-direct {v0, v1, v2, v4, v5}, Landroid/content/UriPermission;-><init>(Landroid/net/Uri;IJ)V

    return-object v0
.end method

.method dump(Ljava/io/PrintWriter;Ljava/lang/String;)V
    .registers 9
    .param p1, "pw"    # Ljava/io/PrintWriter;
    .param p2, "prefix"    # Ljava/lang/String;

    .prologue
    .line 308
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 309
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "targetUserId="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, targetUserId:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 310
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, " sourcePkg="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, sourcePkg:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 311
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, " targetPkg="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, targetPkg:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 313
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 314
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "mode=0x"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, modeFlags:I

    invoke-static {v3}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 315
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, " owned=0x"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, ownedModeFlags:I

    invoke-static {v3}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 316
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, " global=0x"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, globalModeFlags:I

    invoke-static {v3}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 317
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, " persistable=0x"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, persistableModeFlags:I

    invoke-static {v3}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 318
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, " persisted=0x"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, persistedModeFlags:I

    invoke-static {v3}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 319
    iget-wide v2, p0, persistedCreateTime:J

    const-wide/high16 v4, -0x8000000000000000L

    cmp-long v2, v2, v4

    if-eqz v2, :cond_fc

    .line 320
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, " persistedCreate="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-wide v4, p0, persistedCreateTime:J

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 322
    :cond_fc
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    .line 324
    iget-object v2, p0, mReadOwners:Landroid/util/ArraySet;

    if-eqz v2, :cond_138

    .line 325
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 326
    const-string/jumbo v2, "readOwners:"

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 327
    iget-object v2, p0, mReadOwners:Landroid/util/ArraySet;

    invoke-virtual {v2}, Landroid/util/ArraySet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_112
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_138

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/am/UriPermissionOwner;

    .line 328
    .local v1, "owner":Lcom/android/server/am/UriPermissionOwner;
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 329
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "  * "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_112

    .line 332
    .end local v0    # "i$":Ljava/util/Iterator;
    .end local v1    # "owner":Lcom/android/server/am/UriPermissionOwner;
    :cond_138
    iget-object v2, p0, mWriteOwners:Landroid/util/ArraySet;

    if-eqz v2, :cond_171

    .line 333
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 334
    const-string/jumbo v2, "writeOwners:"

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 335
    iget-object v2, p0, mWriteOwners:Landroid/util/ArraySet;

    invoke-virtual {v2}, Landroid/util/ArraySet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .restart local v0    # "i$":Ljava/util/Iterator;
    :goto_14b
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_171

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/am/UriPermissionOwner;

    .line 336
    .restart local v1    # "owner":Lcom/android/server/am/UriPermissionOwner;
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 337
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "  * "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_14b

    .line 340
    .end local v0    # "i$":Ljava/util/Iterator;
    .end local v1    # "owner":Lcom/android/server/am/UriPermissionOwner;
    :cond_171
    return-void
.end method

.method public getStrength(I)I
    .registers 3
    .param p1, "modeFlags"    # I

    .prologue
    .line 230
    and-int/lit8 p1, p1, 0x3

    .line 232
    iget v0, p0, persistableModeFlags:I

    and-int/2addr v0, p1

    if-ne v0, p1, :cond_9

    .line 233
    const/4 v0, 0x3

    .line 239
    :goto_8
    return v0

    .line 234
    :cond_9
    iget v0, p0, globalModeFlags:I

    and-int/2addr v0, p1

    if-ne v0, p1, :cond_10

    .line 235
    const/4 v0, 0x2

    goto :goto_8

    .line 236
    :cond_10
    iget v0, p0, ownedModeFlags:I

    and-int/2addr v0, p1

    if-ne v0, p1, :cond_17

    .line 237
    const/4 v0, 0x1

    goto :goto_8

    .line 239
    :cond_17
    const/4 v0, 0x0

    goto :goto_8
.end method

.method grantModes(ILcom/android/server/am/UriPermissionOwner;)V
    .registers 5
    .param p1, "modeFlags"    # I
    .param p2, "owner"    # Lcom/android/server/am/UriPermissionOwner;

    .prologue
    .line 115
    and-int/lit8 v1, p1, 0x40

    if-eqz v1, :cond_19

    const/4 v0, 0x1

    .line 116
    .local v0, "persistable":Z
    :goto_5
    and-int/lit8 p1, p1, 0x3

    .line 119
    if-eqz v0, :cond_e

    .line 120
    iget v1, p0, persistableModeFlags:I

    or-int/2addr v1, p1

    iput v1, p0, persistableModeFlags:I

    .line 123
    :cond_e
    if-nez p2, :cond_1b

    .line 124
    iget v1, p0, globalModeFlags:I

    or-int/2addr v1, p1

    iput v1, p0, globalModeFlags:I

    .line 134
    :cond_15
    :goto_15
    invoke-direct {p0}, updateModeFlags()V

    .line 135
    return-void

    .line 115
    .end local v0    # "persistable":Z
    :cond_19
    const/4 v0, 0x0

    goto :goto_5

    .line 126
    .restart local v0    # "persistable":Z
    :cond_1b
    and-int/lit8 v1, p1, 0x1

    if-eqz v1, :cond_22

    .line 127
    invoke-direct {p0, p2}, addReadOwner(Lcom/android/server/am/UriPermissionOwner;)V

    .line 129
    :cond_22
    and-int/lit8 v1, p1, 0x2

    if-eqz v1, :cond_15

    .line 130
    invoke-direct {p0, p2}, addWriteOwner(Lcom/android/server/am/UriPermissionOwner;)V

    goto :goto_15
.end method

.method initPersistedModes(IJ)V
    .registers 4
    .param p1, "modeFlags"    # I
    .param p2, "createdTime"    # J

    .prologue
    .line 104
    and-int/lit8 p1, p1, 0x3

    .line 107
    iput p1, p0, persistableModeFlags:I

    .line 108
    iput p1, p0, persistedModeFlags:I

    .line 109
    iput-wide p2, p0, persistedCreateTime:J

    .line 111
    invoke-direct {p0}, updateModeFlags()V

    .line 112
    return-void
.end method

.method releasePersistableModes(I)Z
    .registers 6
    .param p1, "modeFlags"    # I

    .prologue
    .line 163
    and-int/lit8 p1, p1, 0x3

    .line 166
    iget v0, p0, persistedModeFlags:I

    .line 168
    .local v0, "before":I
    iget v1, p0, persistableModeFlags:I

    xor-int/lit8 v2, p1, -0x1

    and-int/2addr v1, v2

    iput v1, p0, persistableModeFlags:I

    .line 169
    iget v1, p0, persistedModeFlags:I

    xor-int/lit8 v2, p1, -0x1

    and-int/2addr v1, v2

    iput v1, p0, persistedModeFlags:I

    .line 171
    iget v1, p0, persistedModeFlags:I

    if-nez v1, :cond_1a

    .line 172
    const-wide/high16 v2, -0x8000000000000000L

    iput-wide v2, p0, persistedCreateTime:J

    .line 175
    :cond_1a
    invoke-direct {p0}, updateModeFlags()V

    .line 176
    iget v1, p0, persistedModeFlags:I

    if-eq v1, v0, :cond_23

    const/4 v1, 0x1

    :goto_22
    return v1

    :cond_23
    const/4 v1, 0x0

    goto :goto_22
.end method

.method removeReadOwner(Lcom/android/server/am/UriPermissionOwner;)V
    .registers 5
    .param p1, "owner"    # Lcom/android/server/am/UriPermissionOwner;

    .prologue
    .line 258
    iget-object v0, p0, mReadOwners:Landroid/util/ArraySet;

    invoke-virtual {v0, p1}, Landroid/util/ArraySet;->remove(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2a

    .line 259
    const-string v0, "UriPermission"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unknown read owner "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " in "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 261
    :cond_2a
    iget-object v0, p0, mReadOwners:Landroid/util/ArraySet;

    invoke-virtual {v0}, Landroid/util/ArraySet;->size()I

    move-result v0

    if-nez v0, :cond_3e

    .line 262
    const/4 v0, 0x0

    iput-object v0, p0, mReadOwners:Landroid/util/ArraySet;

    .line 263
    iget v0, p0, ownedModeFlags:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, ownedModeFlags:I

    .line 264
    invoke-direct {p0}, updateModeFlags()V

    .line 266
    :cond_3e
    return-void
.end method

.method removeWriteOwner(Lcom/android/server/am/UriPermissionOwner;)V
    .registers 5
    .param p1, "owner"    # Lcom/android/server/am/UriPermissionOwner;

    .prologue
    .line 283
    iget-object v0, p0, mWriteOwners:Landroid/util/ArraySet;

    invoke-virtual {v0, p1}, Landroid/util/ArraySet;->remove(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2a

    .line 284
    const-string v0, "UriPermission"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unknown write owner "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " in "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 286
    :cond_2a
    iget-object v0, p0, mWriteOwners:Landroid/util/ArraySet;

    invoke-virtual {v0}, Landroid/util/ArraySet;->size()I

    move-result v0

    if-nez v0, :cond_3e

    .line 287
    const/4 v0, 0x0

    iput-object v0, p0, mWriteOwners:Landroid/util/ArraySet;

    .line 288
    iget v0, p0, ownedModeFlags:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, ownedModeFlags:I

    .line 289
    invoke-direct {p0}, updateModeFlags()V

    .line 291
    :cond_3e
    return-void
.end method

.method revokeModes(IZ)Z
    .registers 11
    .param p1, "modeFlags"    # I
    .param p2, "includingOwners"    # Z

    .prologue
    const/4 v7, 0x0

    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 183
    and-int/lit8 v6, p1, 0x40

    if-eqz v6, :cond_46

    move v2, v4

    .line 184
    .local v2, "persistable":Z
    :goto_8
    and-int/lit8 p1, p1, 0x3

    .line 187
    iget v0, p0, persistedModeFlags:I

    .line 189
    .local v0, "before":I
    and-int/lit8 v6, p1, 0x1

    if-eqz v6, :cond_4a

    .line 190
    if-eqz v2, :cond_1e

    .line 191
    iget v6, p0, persistableModeFlags:I

    and-int/lit8 v6, v6, -0x2

    iput v6, p0, persistableModeFlags:I

    .line 192
    iget v6, p0, persistedModeFlags:I

    and-int/lit8 v6, v6, -0x2

    iput v6, p0, persistedModeFlags:I

    .line 194
    :cond_1e
    iget v6, p0, globalModeFlags:I

    and-int/lit8 v6, v6, -0x2

    iput v6, p0, globalModeFlags:I

    .line 195
    iget-object v6, p0, mReadOwners:Landroid/util/ArraySet;

    if-eqz v6, :cond_4a

    if-eqz p2, :cond_4a

    .line 196
    iget v6, p0, ownedModeFlags:I

    and-int/lit8 v6, v6, -0x2

    iput v6, p0, ownedModeFlags:I

    .line 197
    iget-object v6, p0, mReadOwners:Landroid/util/ArraySet;

    invoke-virtual {v6}, Landroid/util/ArraySet;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_36
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_48

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/am/UriPermissionOwner;

    .line 198
    .local v3, "r":Lcom/android/server/am/UriPermissionOwner;
    invoke-virtual {v3, p0}, Lcom/android/server/am/UriPermissionOwner;->removeReadPermission(Lcom/android/server/am/UriPermission;)V

    goto :goto_36

    .end local v0    # "before":I
    .end local v1    # "i$":Ljava/util/Iterator;
    .end local v2    # "persistable":Z
    .end local v3    # "r":Lcom/android/server/am/UriPermissionOwner;
    :cond_46
    move v2, v5

    .line 183
    goto :goto_8

    .line 200
    .restart local v0    # "before":I
    .restart local v1    # "i$":Ljava/util/Iterator;
    .restart local v2    # "persistable":Z
    :cond_48
    iput-object v7, p0, mReadOwners:Landroid/util/ArraySet;

    .line 203
    .end local v1    # "i$":Ljava/util/Iterator;
    :cond_4a
    and-int/lit8 v6, p1, 0x2

    if-eqz v6, :cond_86

    .line 204
    if-eqz v2, :cond_5c

    .line 205
    iget v6, p0, persistableModeFlags:I

    and-int/lit8 v6, v6, -0x3

    iput v6, p0, persistableModeFlags:I

    .line 206
    iget v6, p0, persistedModeFlags:I

    and-int/lit8 v6, v6, -0x3

    iput v6, p0, persistedModeFlags:I

    .line 208
    :cond_5c
    iget v6, p0, globalModeFlags:I

    and-int/lit8 v6, v6, -0x3

    iput v6, p0, globalModeFlags:I

    .line 209
    iget-object v6, p0, mWriteOwners:Landroid/util/ArraySet;

    if-eqz v6, :cond_86

    if-eqz p2, :cond_86

    .line 210
    iget v6, p0, ownedModeFlags:I

    and-int/lit8 v6, v6, -0x3

    iput v6, p0, ownedModeFlags:I

    .line 211
    iget-object v6, p0, mWriteOwners:Landroid/util/ArraySet;

    invoke-virtual {v6}, Landroid/util/ArraySet;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .restart local v1    # "i$":Ljava/util/Iterator;
    :goto_74
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_84

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/am/UriPermissionOwner;

    .line 212
    .restart local v3    # "r":Lcom/android/server/am/UriPermissionOwner;
    invoke-virtual {v3, p0}, Lcom/android/server/am/UriPermissionOwner;->removeWritePermission(Lcom/android/server/am/UriPermission;)V

    goto :goto_74

    .line 214
    .end local v3    # "r":Lcom/android/server/am/UriPermissionOwner;
    :cond_84
    iput-object v7, p0, mWriteOwners:Landroid/util/ArraySet;

    .line 218
    .end local v1    # "i$":Ljava/util/Iterator;
    :cond_86
    iget v6, p0, persistedModeFlags:I

    if-nez v6, :cond_8e

    .line 219
    const-wide/high16 v6, -0x8000000000000000L

    iput-wide v6, p0, persistedCreateTime:J

    .line 222
    :cond_8e
    invoke-direct {p0}, updateModeFlags()V

    .line 223
    iget v6, p0, persistedModeFlags:I

    if-eq v6, v0, :cond_96

    :goto_95
    return v4

    :cond_96
    move v4, v5

    goto :goto_95
.end method

.method public snapshot()Lcom/android/server/am/UriPermission$Snapshot;
    .registers 3

    .prologue
    .line 372
    new-instance v0, Lcom/android/server/am/UriPermission$Snapshot;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/server/am/UriPermission$Snapshot;-><init>(Lcom/android/server/am/UriPermission;Lcom/android/server/am/UriPermission$1;)V

    return-object v0
.end method

.method takePersistableModes(I)Z
    .registers 7
    .param p1, "modeFlags"    # I

    .prologue
    const/4 v1, 0x0

    .line 141
    and-int/lit8 p1, p1, 0x3

    .line 144
    iget v2, p0, persistableModeFlags:I

    and-int/2addr v2, p1

    if-eq v2, p1, :cond_3b

    .line 145
    const-string v2, "UriPermission"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Requested flags 0x"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {p1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", but only 0x"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, persistableModeFlags:I

    invoke-static {v4}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " are allowed"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 159
    :cond_3a
    :goto_3a
    return v1

    .line 151
    :cond_3b
    iget v0, p0, persistedModeFlags:I

    .line 152
    .local v0, "before":I
    iget v2, p0, persistedModeFlags:I

    iget v3, p0, persistableModeFlags:I

    and-int/2addr v3, p1

    or-int/2addr v2, v3

    iput v2, p0, persistedModeFlags:I

    .line 154
    iget v2, p0, persistedModeFlags:I

    if-eqz v2, :cond_4f

    .line 155
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iput-wide v2, p0, persistedCreateTime:J

    .line 158
    :cond_4f
    invoke-direct {p0}, updateModeFlags()V

    .line 159
    iget v2, p0, persistedModeFlags:I

    if-eq v2, v0, :cond_3a

    const/4 v1, 0x1

    goto :goto_3a
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    .prologue
    .line 295
    iget-object v1, p0, stringName:Ljava/lang/String;

    if-eqz v1, :cond_7

    .line 296
    iget-object v1, p0, stringName:Ljava/lang/String;

    .line 304
    :goto_6
    return-object v1

    .line 298
    :cond_7
    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x80

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 299
    .local v0, "sb":Ljava/lang/StringBuilder;
    const-string v1, "UriPermission{"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 300
    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 301
    const/16 v1, 0x20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 302
    iget-object v1, p0, uri:Lcom/android/server/am/ActivityManagerService$GrantUri;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 303
    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 304
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, stringName:Ljava/lang/String;

    goto :goto_6
.end method
