.class public Landroid/security/keystore/AndroidKeyStoreKey;
.super Ljava/lang/Object;
.source "AndroidKeyStoreKey.java"

# interfaces
.implements Ljava/security/Key;


# instance fields
.field private final mAlgorithm:Ljava/lang/String;

.field private final mAlias:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .registers 3
    .param p1, "alias"    # Ljava/lang/String;
    .param p2, "algorithm"    # Ljava/lang/String;

    .prologue
    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    iput-object p1, p0, mAlias:Ljava/lang/String;

    .line 32
    iput-object p2, p0, mAlgorithm:Ljava/lang/String;

    .line 33
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .registers 7
    .param p1, "obj"    # Ljava/lang/Object;

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 67
    if-ne p0, p1, :cond_5

    .line 91
    :cond_4
    :goto_4
    return v1

    .line 70
    :cond_5
    if-nez p1, :cond_9

    move v1, v2

    .line 71
    goto :goto_4

    .line 73
    :cond_9
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    if-eq v3, v4, :cond_15

    move v1, v2

    .line 74
    goto :goto_4

    :cond_15
    move-object v0, p1

    .line 76
    check-cast v0, Landroid/security/keystore/AndroidKeyStoreKey;

    .line 77
    .local v0, "other":Landroid/security/keystore/AndroidKeyStoreKey;
    iget-object v3, p0, mAlgorithm:Ljava/lang/String;

    if-nez v3, :cond_22

    .line 78
    iget-object v3, v0, mAlgorithm:Ljava/lang/String;

    if-eqz v3, :cond_2e

    move v1, v2

    .line 79
    goto :goto_4

    .line 81
    :cond_22
    iget-object v3, p0, mAlgorithm:Ljava/lang/String;

    iget-object v4, v0, mAlgorithm:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2e

    move v1, v2

    .line 82
    goto :goto_4

    .line 84
    :cond_2e
    iget-object v3, p0, mAlias:Ljava/lang/String;

    if-nez v3, :cond_38

    .line 85
    iget-object v3, v0, mAlias:Ljava/lang/String;

    if-eqz v3, :cond_4

    move v1, v2

    .line 86
    goto :goto_4

    .line 88
    :cond_38
    iget-object v3, p0, mAlias:Ljava/lang/String;

    iget-object v4, v0, mAlias:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_4

    move v1, v2

    .line 89
    goto :goto_4
.end method

.method public getAlgorithm()Ljava/lang/String;
    .registers 2

    .prologue
    .line 41
    iget-object v0, p0, mAlgorithm:Ljava/lang/String;

    return-object v0
.end method

.method getAlias()Ljava/lang/String;
    .registers 2

    .prologue
    .line 36
    iget-object v0, p0, mAlias:Ljava/lang/String;

    return-object v0
.end method

.method public getEncoded()[B
    .registers 2

    .prologue
    .line 53
    const/4 v0, 0x0

    return-object v0
.end method

.method public getFormat()Ljava/lang/String;
    .registers 2

    .prologue
    .line 47
    const/4 v0, 0x0

    return-object v0
.end method

.method public hashCode()I
    .registers 6

    .prologue
    const/4 v3, 0x0

    .line 58
    const/16 v0, 0x1f

    .line 59
    .local v0, "prime":I
    const/4 v1, 0x1

    .line 60
    .local v1, "result":I
    iget-object v2, p0, mAlgorithm:Ljava/lang/String;

    if-nez v2, :cond_14

    move v2, v3

    :goto_9
    add-int/lit8 v1, v2, 0x1f

    .line 61
    mul-int/lit8 v2, v1, 0x1f

    iget-object v4, p0, mAlias:Ljava/lang/String;

    if-nez v4, :cond_1b

    :goto_11
    add-int v1, v2, v3

    .line 62
    return v1

    .line 60
    :cond_14
    iget-object v2, p0, mAlgorithm:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    goto :goto_9

    .line 61
    :cond_1b
    iget-object v3, p0, mAlias:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v3

    goto :goto_11
.end method
