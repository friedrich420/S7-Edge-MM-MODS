.class public Lcom/ipsec/client/IPsecIkeCfgAttribute;
.super Ljava/lang/Object;
.source "IPsecIkeCfgAttribute.java"


# instance fields
.field protected mData:[B

.field protected mType:I


# direct methods
.method public constructor <init>(I)V
    .registers 3
    .param p1, "type"    # I

    .prologue
    .line 28
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, <init>(I[B)V

    .line 29
    return-void
.end method

.method public constructor <init>(I[B)V
    .registers 6
    .param p1, "type"    # I
    .param p2, "data"    # [B

    .prologue
    const/4 v2, 0x0

    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 44
    iput p1, p0, mType:I

    .line 45
    if-eqz p2, :cond_18

    array-length v0, p2

    if-lez v0, :cond_18

    .line 47
    array-length v0, p2

    new-array v0, v0, [B

    iput-object v0, p0, mData:[B

    .line 48
    iget-object v0, p0, mData:[B

    iget-object v1, p0, mData:[B

    array-length v1, v1

    invoke-static {p2, v2, v0, v2, v1}, Ljava/lang/System;->arraycopy([BI[BII)V

    .line 50
    :cond_18
    return-void
.end method


# virtual methods
.method public getData()[B
    .registers 5

    .prologue
    const/4 v3, 0x0

    .line 75
    iget-object v1, p0, mData:[B

    if-eqz v1, :cond_16

    iget-object v1, p0, mData:[B

    array-length v1, v1

    if-lez v1, :cond_16

    .line 77
    iget-object v1, p0, mData:[B

    array-length v1, v1

    new-array v0, v1, [B

    .line 78
    .local v0, "data":[B
    iget-object v1, p0, mData:[B

    array-length v2, v0

    invoke-static {v1, v3, v0, v3, v2}, Ljava/lang/System;->arraycopy([BI[BII)V

    .line 82
    .end local v0    # "data":[B
    :goto_15
    return-object v0

    :cond_16
    const/4 v0, 0x0

    goto :goto_15
.end method

.method public getType()I
    .registers 2

    .prologue
    .line 62
    iget v0, p0, mType:I

    return v0
.end method

.method public toString()Ljava/lang/String;
    .registers 4

    .prologue
    .line 88
    new-instance v0, Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "IPsecIkeCfgAttribute{type="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, mType:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    .line 90
    .local v0, "str":Ljava/lang/String;
    iget-object v1, p0, mData:[B

    if-eqz v1, :cond_47

    .line 91
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ", data={length="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, mData:[B

    array-length v2, v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "}"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 94
    :goto_3f
    const-string/jumbo v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 96
    return-object v0

    .line 93
    :cond_47
    const-string v1, ", data=null"

    invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_3f
.end method
