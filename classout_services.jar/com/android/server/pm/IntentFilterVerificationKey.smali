.class Lcom/android/server/pm/IntentFilterVerificationKey;
.super Ljava/lang/Object;
.source "IntentFilterVerificationKey.java"


# instance fields
.field public className:Ljava/lang/String;

.field public domains:Ljava/lang/String;

.field public packageName:Ljava/lang/String;


# direct methods
.method public constructor <init>([Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 10
    .param p1, "domains"    # [Ljava/lang/String;
    .param p2, "packageName"    # Ljava/lang/String;
    .param p3, "className"    # Ljava/lang/String;

    .prologue
    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 32
    .local v4, "sb":Ljava/lang/StringBuilder;
    move-object v0, p1

    .local v0, "arr$":[Ljava/lang/String;
    array-length v3, v0

    .local v3, "len$":I
    const/4 v2, 0x0

    .local v2, "i$":I
    :goto_b
    if-ge v2, v3, :cond_15

    aget-object v1, v0, v2

    .line 33
    .local v1, "host":Ljava/lang/String;
    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 32
    add-int/lit8 v2, v2, 0x1

    goto :goto_b

    .line 35
    .end local v1    # "host":Ljava/lang/String;
    :cond_15
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, domains:Ljava/lang/String;

    .line 36
    iput-object p2, p0, packageName:Ljava/lang/String;

    .line 37
    iput-object p3, p0, className:Ljava/lang/String;

    .line 38
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .registers 7
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 42
    if-ne p0, p1, :cond_5

    .line 53
    :cond_4
    :goto_4
    return v1

    .line 43
    :cond_5
    if-eqz p1, :cond_11

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    if-eq v3, v4, :cond_13

    :cond_11
    move v1, v2

    goto :goto_4

    :cond_13
    move-object v0, p1

    .line 45
    check-cast v0, Lcom/android/server/pm/IntentFilterVerificationKey;

    .line 47
    .local v0, "that":Lcom/android/server/pm/IntentFilterVerificationKey;
    iget-object v3, p0, domains:Ljava/lang/String;

    if-eqz v3, :cond_26

    iget-object v3, p0, domains:Ljava/lang/String;

    iget-object v4, v0, domains:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2a

    :cond_24
    move v1, v2

    goto :goto_4

    :cond_26
    iget-object v3, v0, domains:Ljava/lang/String;

    if-nez v3, :cond_24

    .line 48
    :cond_2a
    iget-object v3, p0, className:Ljava/lang/String;

    if-eqz v3, :cond_3a

    iget-object v3, p0, className:Ljava/lang/String;

    iget-object v4, v0, className:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_3e

    :cond_38
    move v1, v2

    .line 49
    goto :goto_4

    .line 48
    :cond_3a
    iget-object v3, v0, className:Ljava/lang/String;

    if-nez v3, :cond_38

    .line 50
    :cond_3e
    iget-object v3, p0, packageName:Ljava/lang/String;

    if-eqz v3, :cond_4e

    iget-object v3, p0, packageName:Ljava/lang/String;

    iget-object v4, v0, packageName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_4

    :goto_4c
    move v1, v2

    .line 51
    goto :goto_4

    .line 50
    :cond_4e
    iget-object v3, v0, packageName:Ljava/lang/String;

    if-eqz v3, :cond_4

    goto :goto_4c
.end method

.method public hashCode()I
    .registers 5

    .prologue
    const/4 v1, 0x0

    .line 58
    iget-object v2, p0, domains:Ljava/lang/String;

    if-eqz v2, :cond_28

    iget-object v2, p0, domains:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v0

    .line 59
    .local v0, "result":I
    :goto_b
    mul-int/lit8 v3, v0, 0x1f

    iget-object v2, p0, packageName:Ljava/lang/String;

    if-eqz v2, :cond_2a

    iget-object v2, p0, packageName:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    :goto_17
    add-int v0, v3, v2

    .line 60
    mul-int/lit8 v2, v0, 0x1f

    iget-object v3, p0, className:Ljava/lang/String;

    if-eqz v3, :cond_25

    iget-object v1, p0, className:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    :cond_25
    add-int v0, v2, v1

    .line 61
    return v0

    .end local v0    # "result":I
    :cond_28
    move v0, v1

    .line 58
    goto :goto_b

    .restart local v0    # "result":I
    :cond_2a
    move v2, v1

    .line 59
    goto :goto_17
.end method
