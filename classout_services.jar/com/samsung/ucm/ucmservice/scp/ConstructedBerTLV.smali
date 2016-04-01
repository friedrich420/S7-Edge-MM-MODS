.class public Lcom/samsung/ucm/ucmservice/scp/ConstructedBerTLV;
.super Lcom/samsung/ucm/ucmservice/scp/BerTLV;
.source "ConstructedBerTLV.java"


# instance fields
.field private mValue:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/samsung/ucm/ucmservice/scp/BerTLV;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/samsung/ucm/ucmservice/scp/Tag;)V
    .registers 4
    .param p1, "tag"    # Lcom/samsung/ucm/ucmservice/scp/Tag;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/samsung/ucm/ucmservice/scp/BerTLV$BerTLVException;
        }
    .end annotation

    .prologue
    .line 11
    invoke-direct {p0}, Lcom/samsung/ucm/ucmservice/scp/BerTLV;-><init>()V

    .line 12
    invoke-virtual {p1}, Lcom/samsung/ucm/ucmservice/scp/Tag;->isConstructed()Z

    move-result v0

    if-nez v0, :cond_11

    .line 13
    new-instance v0, Lcom/samsung/ucm/ucmservice/scp/BerTLV$BerTLVException;

    const-string v1, "Inconsistent tag"

    invoke-direct {v0, v1}, Lcom/samsung/ucm/ucmservice/scp/BerTLV$BerTLVException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 15
    :cond_11
    const/4 v0, 0x0

    iput v0, p0, mLevel:I

    .line 16
    iput-object p1, p0, mTag:Lcom/samsung/ucm/ucmservice/scp/Tag;

    .line 17
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, mValue:Ljava/util/List;

    .line 18
    return-void
.end method

.method protected constructor <init>([BIII)V
    .registers 10
    .param p1, "buffer"    # [B
    .param p2, "offset"    # I
    .param p3, "len"    # I
    .param p4, "level"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/samsung/ucm/ucmservice/scp/BerTLV$BerTLVException;
        }
    .end annotation

    .prologue
    .line 21
    invoke-direct {p0}, Lcom/samsung/ucm/ucmservice/scp/BerTLV;-><init>()V

    .line 22
    iput p4, p0, mLevel:I

    .line 23
    new-instance v2, Lcom/samsung/ucm/ucmservice/scp/Tag;

    invoke-direct {v2, p1, p2}, Lcom/samsung/ucm/ucmservice/scp/Tag;-><init>([BI)V

    iput-object v2, p0, mTag:Lcom/samsung/ucm/ucmservice/scp/Tag;

    .line 24
    iget-object v2, p0, mTag:Lcom/samsung/ucm/ucmservice/scp/Tag;

    invoke-virtual {v2}, Lcom/samsung/ucm/ucmservice/scp/Tag;->getLen()I

    move-result v2

    add-int/2addr p2, v2

    .line 25
    invoke-virtual {p0, p1, p2}, parseLength([BI)I

    move-result v2

    add-int/2addr p2, v2

    .line 26
    invoke-virtual {p0}, getFullLen()I

    move-result v2

    if-le v2, p3, :cond_4b

    .line 27
    new-instance v2, Lcom/samsung/ucm/ucmservice/scp/BerTLV$BerTLVException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Invalid format exception (buffer size max:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p0}, getFullLen()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " got: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ")"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/samsung/ucm/ucmservice/scp/BerTLV$BerTLVException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 29
    :cond_4b
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, mValue:Ljava/util/List;

    .line 30
    const/4 v0, 0x0

    .line 31
    .local v0, "read_len":I
    :goto_53
    iget v2, p0, mLen:I

    if-ge v0, v2, :cond_71

    .line 32
    iget v2, p0, mLen:I

    iget v3, p0, mLevel:I

    add-int/lit8 v3, v3, 0x1

    invoke-static {p1, p2, v2, v3}, Lcom/samsung/ucm/ucmservice/scp/BerTLV;->parse([BIII)Lcom/samsung/ucm/ucmservice/scp/BerTLV;

    move-result-object v1

    .line 33
    .local v1, "tmp":Lcom/samsung/ucm/ucmservice/scp/BerTLV;
    invoke-virtual {v1}, Lcom/samsung/ucm/ucmservice/scp/BerTLV;->getFullLen()I

    move-result v2

    add-int/2addr p2, v2

    .line 34
    invoke-virtual {v1}, Lcom/samsung/ucm/ucmservice/scp/BerTLV;->getFullLen()I

    move-result v2

    add-int/2addr v0, v2

    .line 35
    iget-object v2, p0, mValue:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_53

    .line 37
    .end local v1    # "tmp":Lcom/samsung/ucm/ucmservice/scp/BerTLV;
    :cond_71
    iget v2, p0, mLen:I

    if-eq v0, v2, :cond_a2

    .line 38
    new-instance v2, Lcom/samsung/ucm/ucmservice/scp/BerTLV$BerTLVException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Invalid format exception (buffer size expected:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p0}, getFullLen()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " read: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ")"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/samsung/ucm/ucmservice/scp/BerTLV$BerTLVException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 40
    :cond_a2
    return-void
.end method


# virtual methods
.method public add(Lcom/samsung/ucm/ucmservice/scp/BerTLV;)V
    .registers 3
    .param p1, "tlv"    # Lcom/samsung/ucm/ucmservice/scp/BerTLV;

    .prologue
    .line 43
    iget-object v0, p0, mValue:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 44
    iget v0, p0, mLevel:I

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {p1, v0}, Lcom/samsung/ucm/ucmservice/scp/BerTLV;->setLevel(I)V

    .line 45
    invoke-virtual {p0}, updateLength()V

    .line 46
    return-void
.end method

.method public getSubTLV(Lcom/samsung/ucm/ucmservice/scp/Tag;)Lcom/samsung/ucm/ucmservice/scp/BerTLV;
    .registers 5
    .param p1, "tag"    # Lcom/samsung/ucm/ucmservice/scp/Tag;

    .prologue
    .line 95
    iget-object v2, p0, mTag:Lcom/samsung/ucm/ucmservice/scp/Tag;

    invoke-virtual {v2, p1}, Lcom/samsung/ucm/ucmservice/scp/Tag;->equals(Lcom/samsung/ucm/ucmservice/scp/Tag;)Z

    move-result v2

    if-eqz v2, :cond_9

    .line 106
    .end local p0    # "this":Lcom/samsung/ucm/ucmservice/scp/ConstructedBerTLV;
    :goto_8
    return-object p0

    .line 98
    .restart local p0    # "this":Lcom/samsung/ucm/ucmservice/scp/ConstructedBerTLV;
    :cond_9
    iget-object v2, p0, mValue:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 99
    .local v0, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/samsung/ucm/ucmservice/scp/BerTLV;>;"
    :cond_f
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_23

    .line 100
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/ucm/ucmservice/scp/BerTLV;

    .line 101
    .local v1, "tmp":Lcom/samsung/ucm/ucmservice/scp/BerTLV;
    invoke-virtual {v1, p1}, Lcom/samsung/ucm/ucmservice/scp/BerTLV;->getSubTLV(Lcom/samsung/ucm/ucmservice/scp/Tag;)Lcom/samsung/ucm/ucmservice/scp/BerTLV;

    move-result-object v1

    .line 102
    if-eqz v1, :cond_f

    move-object p0, v1

    .line 103
    goto :goto_8

    .line 106
    .end local v1    # "tmp":Lcom/samsung/ucm/ucmservice/scp/BerTLV;
    :cond_23
    const/4 p0, 0x0

    goto :goto_8
.end method

.method public remove(Lcom/samsung/ucm/ucmservice/scp/Tag;)V
    .registers 5
    .param p1, "tag"    # Lcom/samsung/ucm/ucmservice/scp/Tag;

    .prologue
    .line 111
    iget-object v2, p0, mValue:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 112
    .local v0, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/samsung/ucm/ucmservice/scp/BerTLV;>;"
    :cond_6
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_21

    .line 113
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/ucm/ucmservice/scp/BerTLV;

    .line 114
    .local v1, "tmp":Lcom/samsung/ucm/ucmservice/scp/BerTLV;
    invoke-virtual {v1}, Lcom/samsung/ucm/ucmservice/scp/BerTLV;->getTag()Lcom/samsung/ucm/ucmservice/scp/Tag;

    move-result-object v2

    invoke-virtual {v2, p1}, Lcom/samsung/ucm/ucmservice/scp/Tag;->equals(Lcom/samsung/ucm/ucmservice/scp/Tag;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 115
    iget-object v2, p0, mValue:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 119
    .end local v1    # "tmp":Lcom/samsung/ucm/ucmservice/scp/BerTLV;
    :cond_21
    return-void
.end method

.method public setLevel(I)V
    .registers 5
    .param p1, "level"    # I

    .prologue
    .line 49
    invoke-super {p0, p1}, Lcom/samsung/ucm/ucmservice/scp/BerTLV;->setLevel(I)V

    .line 50
    iget-object v1, p0, mValue:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 51
    .local v0, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/samsung/ucm/ucmservice/scp/BerTLV;>;"
    :goto_9
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1b

    .line 52
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/ucm/ucmservice/scp/BerTLV;

    add-int/lit8 v2, p1, 0x1

    invoke-virtual {v1, v2}, Lcom/samsung/ucm/ucmservice/scp/BerTLV;->setLevel(I)V

    goto :goto_9

    .line 54
    :cond_1b
    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 6

    .prologue
    .line 68
    invoke-virtual {p0}, updateLength()V

    .line 69
    invoke-super {p0}, Lcom/samsung/ucm/ucmservice/scp/BerTLV;->toString()Ljava/lang/String;

    move-result-object v2

    .line 70
    .local v2, "ret":Ljava/lang/String;
    iget-object v3, p0, mValue:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 71
    .local v1, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/samsung/ucm/ucmservice/scp/BerTLV;>;"
    :goto_d
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_63

    .line 72
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\n"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 73
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_27
    iget v3, p0, mLevel:I

    if-ge v0, v3, :cond_41

    .line 74
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "  "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 73
    add-int/lit8 v0, v0, 0x1

    goto :goto_27

    .line 76
    :cond_41
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "+--"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/samsung/ucm/ucmservice/scp/BerTLV;

    invoke-virtual {v3}, Lcom/samsung/ucm/ucmservice/scp/BerTLV;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_d

    .line 78
    .end local v0    # "i":I
    :cond_63
    return-object v2
.end method

.method public updateLength()V
    .registers 5

    .prologue
    .line 57
    const/4 v2, 0x0

    iput v2, p0, mLen:I

    .line 58
    iget-object v2, p0, mValue:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 59
    .local v0, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/samsung/ucm/ucmservice/scp/BerTLV;>;"
    :goto_9
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_22

    .line 60
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/ucm/ucmservice/scp/BerTLV;

    .line 61
    .local v1, "tmp":Lcom/samsung/ucm/ucmservice/scp/BerTLV;
    invoke-virtual {v1}, Lcom/samsung/ucm/ucmservice/scp/BerTLV;->updateLength()V

    .line 62
    iget v2, p0, mLen:I

    invoke-virtual {v1}, Lcom/samsung/ucm/ucmservice/scp/BerTLV;->getFullLen()I

    move-result v3

    add-int/2addr v2, v3

    iput v2, p0, mLen:I

    goto :goto_9

    .line 64
    .end local v1    # "tmp":Lcom/samsung/ucm/ucmservice/scp/BerTLV;
    :cond_22
    invoke-virtual {p0}, updateLenLength()V

    .line 65
    return-void
.end method

.method public write([BI)I
    .registers 6
    .param p1, "out"    # [B
    .param p2, "outOffset"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 82
    invoke-virtual {p0}, updateLength()V

    .line 83
    move v1, p2

    .line 84
    .local v1, "offset":I
    iget-object v2, p0, mTag:Lcom/samsung/ucm/ucmservice/scp/Tag;

    invoke-virtual {v2, p1, v1}, Lcom/samsung/ucm/ucmservice/scp/Tag;->write([BI)I

    move-result v2

    add-int/2addr v1, v2

    .line 85
    invoke-virtual {p0, p1, v1}, writeLen([BI)I

    move-result v2

    add-int/2addr v1, v2

    .line 87
    iget-object v2, p0, mValue:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 88
    .local v0, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/samsung/ucm/ucmservice/scp/BerTLV;>;"
    :goto_16
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_28

    .line 89
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/samsung/ucm/ucmservice/scp/BerTLV;

    invoke-virtual {v2, p1, v1}, Lcom/samsung/ucm/ucmservice/scp/BerTLV;->write([BI)I

    move-result v2

    add-int/2addr v1, v2

    goto :goto_16

    .line 91
    :cond_28
    invoke-virtual {p0}, getFullLen()I

    move-result v2

    return v2
.end method
