.class public abstract Lcom/samsung/ucm/ucmservice/scp/BerTLV;
.super Ljava/lang/Object;
.source "BerTLV.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/ucm/ucmservice/scp/BerTLV$BerTLVException;
    }
.end annotation


# instance fields
.field protected mLen:I

.field protected mLenLength:I

.field protected mLevel:I

.field protected mTag:Lcom/samsung/ucm/ucmservice/scp/Tag;


# direct methods
.method protected constructor <init>()V
    .registers 1

    .prologue
    .line 87
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 88
    return-void
.end method

.method protected static isSpecialPrimitiveTag(B)Z
    .registers 2
    .param p0, "tagVal"    # B

    .prologue
    .line 49
    const/16 v0, -0x50

    if-eq p0, v0, :cond_8

    const/16 v0, -0x10

    if-ne p0, v0, :cond_a

    .line 50
    :cond_8
    const/4 v0, 0x1

    .line 52
    :goto_9
    return v0

    :cond_a
    const/4 v0, 0x0

    goto :goto_9
.end method

.method public static parse([B)Lcom/samsung/ucm/ucmservice/scp/BerTLV;
    .registers 3
    .param p0, "buffer"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/samsung/ucm/ucmservice/scp/BerTLV$BerTLVException;
        }
    .end annotation

    .prologue
    .line 19
    const/4 v0, 0x0

    array-length v1, p0

    invoke-static {p0, v0, v1}, parse([BII)Lcom/samsung/ucm/ucmservice/scp/BerTLV;

    move-result-object v0

    return-object v0
.end method

.method public static parse([BII)Lcom/samsung/ucm/ucmservice/scp/BerTLV;
    .registers 6
    .param p0, "buffer"    # [B
    .param p1, "offset"    # I
    .param p2, "len"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/samsung/ucm/ucmservice/scp/BerTLV$BerTLVException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 24
    aget-byte v0, p0, p1

    invoke-static {v0}, isSpecialPrimitiveTag(B)Z

    move-result v0

    if-eqz v0, :cond_f

    .line 25
    new-instance v0, Lcom/samsung/ucm/ucmservice/scp/PrimitiveBerTLV;

    invoke-direct {v0, p0, p1, p2, v2}, Lcom/samsung/ucm/ucmservice/scp/PrimitiveBerTLV;-><init>([BIII)V

    .line 31
    :goto_e
    return-object v0

    .line 28
    :cond_f
    aget-byte v0, p0, p1

    and-int/lit8 v0, v0, 0x20

    const/16 v1, 0x20

    if-ne v0, v1, :cond_1d

    .line 29
    new-instance v0, Lcom/samsung/ucm/ucmservice/scp/ConstructedBerTLV;

    invoke-direct {v0, p0, p1, p2, v2}, Lcom/samsung/ucm/ucmservice/scp/ConstructedBerTLV;-><init>([BIII)V

    goto :goto_e

    .line 31
    :cond_1d
    new-instance v0, Lcom/samsung/ucm/ucmservice/scp/PrimitiveBerTLV;

    invoke-direct {v0, p0, p1, p2, v2}, Lcom/samsung/ucm/ucmservice/scp/PrimitiveBerTLV;-><init>([BIII)V

    goto :goto_e
.end method

.method protected static parse([BIII)Lcom/samsung/ucm/ucmservice/scp/BerTLV;
    .registers 6
    .param p0, "buffer"    # [B
    .param p1, "offset"    # I
    .param p2, "len"    # I
    .param p3, "level"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/samsung/ucm/ucmservice/scp/BerTLV$BerTLVException;
        }
    .end annotation

    .prologue
    .line 37
    aget-byte v0, p0, p1

    invoke-static {v0}, isSpecialPrimitiveTag(B)Z

    move-result v0

    if-eqz v0, :cond_10

    .line 38
    new-instance v0, Lcom/samsung/ucm/ucmservice/scp/PrimitiveBerTLV;

    add-int/lit8 v1, p3, 0x1

    invoke-direct {v0, p0, p1, p2, v1}, Lcom/samsung/ucm/ucmservice/scp/PrimitiveBerTLV;-><init>([BIII)V

    .line 44
    :goto_f
    return-object v0

    .line 41
    :cond_10
    aget-byte v0, p0, p1

    and-int/lit8 v0, v0, 0x20

    const/16 v1, 0x20

    if-ne v0, v1, :cond_20

    .line 42
    new-instance v0, Lcom/samsung/ucm/ucmservice/scp/ConstructedBerTLV;

    add-int/lit8 v1, p3, 0x1

    invoke-direct {v0, p0, p1, p2, v1}, Lcom/samsung/ucm/ucmservice/scp/ConstructedBerTLV;-><init>([BIII)V

    goto :goto_f

    .line 44
    :cond_20
    new-instance v0, Lcom/samsung/ucm/ucmservice/scp/PrimitiveBerTLV;

    add-int/lit8 v1, p3, 0x1

    invoke-direct {v0, p0, p1, p2, v1}, Lcom/samsung/ucm/ucmservice/scp/PrimitiveBerTLV;-><init>([BIII)V

    goto :goto_f
.end method


# virtual methods
.method public getFullLen()I
    .registers 3

    .prologue
    .line 100
    iget-object v0, p0, mTag:Lcom/samsung/ucm/ucmservice/scp/Tag;

    invoke-virtual {v0}, Lcom/samsung/ucm/ucmservice/scp/Tag;->getLen()I

    move-result v0

    iget v1, p0, mLenLength:I

    add-int/2addr v0, v1

    iget v1, p0, mLen:I

    add-int/2addr v0, v1

    return v0
.end method

.method public getLen()I
    .registers 2

    .prologue
    .line 104
    iget v0, p0, mLen:I

    return v0
.end method

.method public abstract getSubTLV(Lcom/samsung/ucm/ucmservice/scp/Tag;)Lcom/samsung/ucm/ucmservice/scp/BerTLV;
.end method

.method public getTag()Lcom/samsung/ucm/ucmservice/scp/Tag;
    .registers 2

    .prologue
    .line 84
    iget-object v0, p0, mTag:Lcom/samsung/ucm/ucmservice/scp/Tag;

    return-object v0
.end method

.method protected parseLength([BI)I
    .registers 6
    .param p1, "buffer"    # [B
    .param p2, "offset"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/samsung/ucm/ucmservice/scp/BerTLV$BerTLVException;
        }
    .end annotation

    .prologue
    .line 56
    const/4 v1, 0x1

    iput v1, p0, mLenLength:I

    .line 57
    aget-byte v1, p1, p2

    and-int/lit16 v1, v1, 0xff

    iput v1, p0, mLen:I

    .line 58
    iget v1, p0, mLen:I

    const/16 v2, 0x7f

    if-le v1, v2, :cond_5b

    .line 59
    iget v1, p0, mLen:I

    and-int/lit16 v1, v1, -0x81

    int-to-short v0, v1

    .line 60
    .local v0, "size":S
    const/4 v1, 0x0

    iput v1, p0, mLen:I

    .line 61
    packed-switch v0, :pswitch_data_5e

    .line 76
    new-instance v1, Lcom/samsung/ucm/ucmservice/scp/BerTLV$BerTLVException;

    const-string v2, "Invalid format (size)"

    invoke-direct {v1, v2}, Lcom/samsung/ucm/ucmservice/scp/BerTLV$BerTLVException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 63
    :pswitch_22
    add-int/lit8 p2, p2, 0x1

    .line 64
    iget v1, p0, mLen:I

    shl-int/lit8 v1, v1, 0x8

    aget-byte v2, p1, p2

    and-int/lit16 v2, v2, 0xff

    add-int/2addr v1, v2

    iput v1, p0, mLen:I

    .line 66
    :pswitch_2f
    add-int/lit8 p2, p2, 0x1

    .line 67
    iget v1, p0, mLen:I

    shl-int/lit8 v1, v1, 0x8

    aget-byte v2, p1, p2

    and-int/lit16 v2, v2, 0xff

    add-int/2addr v1, v2

    iput v1, p0, mLen:I

    .line 69
    :pswitch_3c
    add-int/lit8 p2, p2, 0x1

    .line 70
    iget v1, p0, mLen:I

    shl-int/lit8 v1, v1, 0x8

    aget-byte v2, p1, p2

    and-int/lit16 v2, v2, 0xff

    add-int/2addr v1, v2

    iput v1, p0, mLen:I

    .line 72
    :pswitch_49
    add-int/lit8 p2, p2, 0x1

    .line 73
    iget v1, p0, mLen:I

    shl-int/lit8 v1, v1, 0x8

    aget-byte v2, p1, p2

    and-int/lit16 v2, v2, 0xff

    add-int/2addr v1, v2

    iput v1, p0, mLen:I

    .line 78
    iget v1, p0, mLenLength:I

    add-int/2addr v1, v0

    iput v1, p0, mLenLength:I

    .line 80
    .end local v0    # "size":S
    :cond_5b
    iget v1, p0, mLenLength:I

    return v1

    .line 61
    :pswitch_data_5e
    .packed-switch 0x1
        :pswitch_49
        :pswitch_3c
        :pswitch_2f
        :pswitch_22
    .end packed-switch
.end method

.method public abstract remove(Lcom/samsung/ucm/ucmservice/scp/Tag;)V
.end method

.method public setLevel(I)V
    .registers 2
    .param p1, "level"    # I

    .prologue
    .line 91
    iput p1, p0, mLevel:I

    .line 92
    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 4

    .prologue
    .line 137
    iget-object v1, p0, mTag:Lcom/samsung/ucm/ucmservice/scp/Tag;

    invoke-virtual {v1}, Lcom/samsung/ucm/ucmservice/scp/Tag;->toString()Ljava/lang/String;

    move-result-object v0

    .line 138
    .local v0, "ret":Ljava/lang/String;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "( tag_len: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, mTag:Lcom/samsung/ucm/ucmservice/scp/Tag;

    invoke-virtual {v2}, Lcom/samsung/ucm/ucmservice/scp/Tag;->getLen()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", len_length:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, mLenLength:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", length:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, mLen:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 139
    return-object v0
.end method

.method public updateLenLength()V
    .registers 3

    .prologue
    .line 108
    iget v0, p0, mLen:I

    const/16 v1, 0x80

    if-ge v0, v1, :cond_a

    .line 109
    const/4 v0, 0x1

    iput v0, p0, mLenLength:I

    .line 115
    :cond_9
    :goto_9
    return-void

    .line 110
    :cond_a
    iget v0, p0, mLen:I

    const/16 v1, 0x100

    if-ge v0, v1, :cond_14

    .line 111
    const/4 v0, 0x2

    iput v0, p0, mLenLength:I

    goto :goto_9

    .line 112
    :cond_14
    iget v0, p0, mLen:I

    const/high16 v1, 0x10000

    if-ge v0, v1, :cond_9

    .line 113
    const/4 v0, 0x3

    iput v0, p0, mLenLength:I

    goto :goto_9
.end method

.method public abstract updateLength()V
.end method

.method public abstract write([BI)I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation
.end method

.method public write()[B
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 146
    invoke-virtual {p0}, updateLength()V

    .line 147
    invoke-virtual {p0}, getFullLen()I

    move-result v1

    new-array v0, v1, [B

    .line 148
    .local v0, "res":[B
    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, write([BI)I

    .line 149
    return-object v0
.end method

.method public writeLen([BI)I
    .registers 6
    .param p1, "out"    # [B
    .param p2, "outoffset"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 118
    iget v1, p0, mLen:I

    const/16 v2, 0x80

    if-ge v1, v2, :cond_f

    .line 119
    iget v1, p0, mLen:I

    and-int/lit16 v1, v1, 0xff

    int-to-byte v1, v1

    aput-byte v1, p1, p2

    .line 120
    const/4 v1, 0x1

    .line 129
    :goto_e
    return v1

    .line 121
    :cond_f
    iget v1, p0, mLen:I

    const/16 v2, 0x100

    if-ge v1, v2, :cond_25

    .line 122
    add-int/lit8 v0, p2, 0x1

    .end local p2    # "outoffset":I
    .local v0, "outoffset":I
    const/16 v1, -0x7f

    aput-byte v1, p1, p2

    .line 123
    iget v1, p0, mLen:I

    and-int/lit16 v1, v1, 0xff

    int-to-byte v1, v1

    aput-byte v1, p1, v0

    .line 124
    const/4 v1, 0x2

    move p2, v0

    .end local v0    # "outoffset":I
    .restart local p2    # "outoffset":I
    goto :goto_e

    .line 125
    :cond_25
    iget v1, p0, mLen:I

    const/high16 v2, 0x10000

    if-ge v1, v2, :cond_48

    .line 126
    add-int/lit8 v0, p2, 0x1

    .end local p2    # "outoffset":I
    .restart local v0    # "outoffset":I
    const/16 v1, -0x7e

    aput-byte v1, p1, p2

    .line 127
    add-int/lit8 p2, v0, 0x1

    .end local v0    # "outoffset":I
    .restart local p2    # "outoffset":I
    iget v1, p0, mLen:I

    shr-int/lit8 v1, v1, 0x8

    and-int/lit16 v1, v1, 0xff

    int-to-byte v1, v1

    aput-byte v1, p1, v0

    .line 128
    add-int/lit8 v0, p2, 0x1

    .end local p2    # "outoffset":I
    .restart local v0    # "outoffset":I
    iget v1, p0, mLen:I

    and-int/lit16 v1, v1, 0xff

    int-to-byte v1, v1

    aput-byte v1, p1, p2

    .line 129
    const/4 v1, 0x3

    move p2, v0

    .end local v0    # "outoffset":I
    .restart local p2    # "outoffset":I
    goto :goto_e

    .line 131
    :cond_48
    new-instance v1, Ljava/lang/Exception;

    const-string/jumbo v2, "unsupported"

    invoke-direct {v1, v2}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v1
.end method
