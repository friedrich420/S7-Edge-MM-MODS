.class final Lcom/android/server/LockSettingsStorage$Cache$CacheKey;
.super Ljava/lang/Object;
.source "LockSettingsStorage.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/LockSettingsStorage$Cache;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "CacheKey"
.end annotation


# static fields
.field static final TYPE_FETCHED:I = 0x2

.field static final TYPE_FILE:I = 0x1

.field static final TYPE_KEY_VALUE:I


# instance fields
.field key:Ljava/lang/String;

.field type:I

.field userId:I


# direct methods
.method private constructor <init>()V
    .registers 1

    .prologue
    .line 801
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/LockSettingsStorage$1;)V
    .registers 2
    .param p1, "x0"    # Lcom/android/server/LockSettingsStorage$1;

    .prologue
    .line 801
    invoke-direct {p0}, <init>()V

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .registers 6
    .param p1, "obj"    # Ljava/lang/Object;

    .prologue
    const/4 v1, 0x0

    .line 819
    instance-of v2, p1, Lcom/android/server/LockSettingsStorage$Cache$CacheKey;

    if-nez v2, :cond_6

    .line 822
    :cond_5
    :goto_5
    return v1

    :cond_6
    move-object v0, p1

    .line 821
    check-cast v0, Lcom/android/server/LockSettingsStorage$Cache$CacheKey;

    .line 822
    .local v0, "o":Lcom/android/server/LockSettingsStorage$Cache$CacheKey;
    iget v2, p0, userId:I

    iget v3, v0, userId:I

    if-ne v2, v3, :cond_5

    iget v2, p0, type:I

    iget v3, v0, type:I

    if-ne v2, v3, :cond_5

    iget-object v2, p0, key:Ljava/lang/String;

    iget-object v3, v0, key:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    const/4 v1, 0x1

    goto :goto_5
.end method

.method public hashCode()I
    .registers 3

    .prologue
    .line 827
    iget-object v0, p0, key:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    iget v1, p0, userId:I

    xor-int/2addr v0, v1

    iget v1, p0, type:I

    xor-int/2addr v0, v1

    return v0
.end method

.method public set(ILjava/lang/String;I)Lcom/android/server/LockSettingsStorage$Cache$CacheKey;
    .registers 4
    .param p1, "type"    # I
    .param p2, "key"    # Ljava/lang/String;
    .param p3, "userId"    # I

    .prologue
    .line 811
    iput p1, p0, type:I

    .line 812
    iput-object p2, p0, key:Ljava/lang/String;

    .line 813
    iput p3, p0, userId:I

    .line 814
    return-object p0
.end method
