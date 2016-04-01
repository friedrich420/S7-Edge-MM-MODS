.class public Lcom/samsung/accessory/manager/authentication/cover/CoverInfo;
.super Ljava/lang/Object;
.source "CoverInfo.java"


# instance fields
.field private HexDecimalTable:[Ljava/lang/String;

.field private chip_id:[B

.field private color:I

.field private cover_id:[B

.field private id:Ljava/lang/String;

.field private idVersion:I

.field private model:I

.field private reserved:B

.field private serial:Ljava/lang/String;

.field private smapp:I

.field private sn:[B

.field private type:I

.field private url:I

.field private valid:Z

.field private vendorInfo:[B


# direct methods
.method public constructor <init>([B)V
    .registers 9
    .param p1, "id"    # [B

    .prologue
    const/16 v6, 0x9

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v2, 0x0

    const/16 v3, 0x17

    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    new-array v0, v3, [B

    iput-object v0, p0, chip_id:[B

    .line 6
    const/16 v0, 0xe

    new-array v0, v0, [B

    iput-object v0, p0, sn:[B

    .line 7
    new-array v0, v6, [B

    iput-object v0, p0, cover_id:[B

    .line 16
    new-array v0, v5, [B

    iput-object v0, p0, vendorInfo:[B

    .line 19
    iput-boolean v2, p0, valid:Z

    .line 95
    const/16 v0, 0x24

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "0"

    aput-object v1, v0, v2

    const-string v1, "1"

    aput-object v1, v0, v4

    const-string v1, "2"

    aput-object v1, v0, v5

    const/4 v1, 0x3

    const-string v2, "3"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "4"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "5"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "6"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "7"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "8"

    aput-object v2, v0, v1

    const-string v1, "9"

    aput-object v1, v0, v6

    const/16 v1, 0xa

    const-string v2, "A"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string v2, "B"

    aput-object v2, v0, v1

    const/16 v1, 0xc

    const-string v2, "C"

    aput-object v2, v0, v1

    const/16 v1, 0xd

    const-string v2, "D"

    aput-object v2, v0, v1

    const/16 v1, 0xe

    const-string v2, "E"

    aput-object v2, v0, v1

    const/16 v1, 0xf

    const-string v2, "F"

    aput-object v2, v0, v1

    const/16 v1, 0x10

    const-string v2, "G"

    aput-object v2, v0, v1

    const/16 v1, 0x11

    const-string v2, "H"

    aput-object v2, v0, v1

    const/16 v1, 0x12

    const-string v2, "J"

    aput-object v2, v0, v1

    const/16 v1, 0x13

    const-string v2, "K"

    aput-object v2, v0, v1

    const/16 v1, 0x14

    const-string v2, "L"

    aput-object v2, v0, v1

    const/16 v1, 0x15

    const-string v2, "M"

    aput-object v2, v0, v1

    const/16 v1, 0x16

    const-string v2, "N"

    aput-object v2, v0, v1

    const-string v1, "P"

    aput-object v1, v0, v3

    const/16 v1, 0x18

    const-string v2, "Q"

    aput-object v2, v0, v1

    const/16 v1, 0x19

    const-string v2, "R"

    aput-object v2, v0, v1

    const/16 v1, 0x1a

    const-string v2, "S"

    aput-object v2, v0, v1

    const/16 v1, 0x1b

    const-string v2, "T"

    aput-object v2, v0, v1

    const/16 v1, 0x1c

    const-string v2, "V"

    aput-object v2, v0, v1

    const/16 v1, 0x1d

    const-string v2, "W"

    aput-object v2, v0, v1

    const/16 v1, 0x1e

    const-string v2, "X"

    aput-object v2, v0, v1

    const/16 v1, 0x1f

    const-string v2, "Y"

    aput-object v2, v0, v1

    const/16 v1, 0x20

    const-string v2, "Z"

    aput-object v2, v0, v1

    const/16 v1, 0x21

    const-string v2, "I"

    aput-object v2, v0, v1

    const/16 v1, 0x22

    const-string v2, "O"

    aput-object v2, v0, v1

    const/16 v1, 0x23

    const-string v2, "U"

    aput-object v2, v0, v1

    iput-object v0, p0, HexDecimalTable:[Ljava/lang/String;

    .line 22
    if-eqz p1, :cond_ff

    array-length v0, p1

    if-ne v0, v3, :cond_ff

    .line 23
    invoke-virtual {p1}, [B->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    iput-object v0, p0, chip_id:[B

    .line 24
    invoke-direct {p0}, setId()V

    .line 25
    iput-boolean v4, p0, valid:Z

    .line 27
    :cond_ff
    return-void
.end method

.method private convertHexStringTo33Hexdecimal(Ljava/lang/String;)Ljava/lang/String;
    .registers 8
    .param p1, "hex"    # Ljava/lang/String;

    .prologue
    .line 103
    if-eqz p1, :cond_8

    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_a

    .line 104
    :cond_8
    const/4 v5, 0x0

    .line 124
    :goto_9
    return-object v5

    .line 107
    :cond_a
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 108
    .local v3, "result":Ljava/lang/StringBuilder;
    const/4 v1, 0x0

    .line 109
    .local v1, "index":I
    :goto_10
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v5

    if-ge v1, v5, :cond_44

    .line 110
    add-int/lit8 v2, v1, 0x2

    .end local v1    # "index":I
    .local v2, "index":I
    invoke-virtual {p1, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    .line 112
    .local v4, "subString":Ljava/lang/String;
    const/16 v5, 0x10

    :try_start_1e
    invoke-static {v4, v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v0

    .line 113
    .local v0, "_hexIndex":I
    const/16 v5, 0xff

    if-ne v0, v5, :cond_2d

    .line 114
    const-string v5, "0"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .end local v0    # "_hexIndex":I
    :goto_2b
    move v1, v2

    .line 123
    .end local v2    # "index":I
    .restart local v1    # "index":I
    goto :goto_10

    .line 115
    .end local v1    # "index":I
    .restart local v0    # "_hexIndex":I
    .restart local v2    # "index":I
    :cond_2d
    if-ltz v0, :cond_3e

    iget-object v5, p0, HexDecimalTable:[Ljava/lang/String;

    array-length v5, v5

    if-ge v0, v5, :cond_3e

    .line 116
    iget-object v5, p0, HexDecimalTable:[Ljava/lang/String;

    aget-object v5, v5, v0

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_2b

    .line 120
    .end local v0    # "_hexIndex":I
    :catch_3c
    move-exception v5

    goto :goto_2b

    .line 118
    .restart local v0    # "_hexIndex":I
    :cond_3e
    const-string v5, " "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_43
    .catch Ljava/lang/NumberFormatException; {:try_start_1e .. :try_end_43} :catch_3c

    goto :goto_2b

    .line 124
    .end local v0    # "_hexIndex":I
    .end local v2    # "index":I
    .end local v4    # "subString":Ljava/lang/String;
    .restart local v1    # "index":I
    :cond_44
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    goto :goto_9
.end method

.method private setId()V
    .registers 6

    .prologue
    const/16 v4, 0xe

    const/4 v3, 0x0

    .line 31
    iget-object v0, p0, chip_id:[B

    iget-object v1, p0, sn:[B

    invoke-static {v0, v3, v1, v3, v4}, Ljava/lang/System;->arraycopy([BI[BII)V

    .line 32
    iget-object v0, p0, chip_id:[B

    iget-object v1, p0, cover_id:[B

    const/16 v2, 0x9

    invoke-static {v0, v4, v1, v3, v2}, Ljava/lang/System;->arraycopy([BI[BII)V

    .line 33
    iget-object v0, p0, sn:[B

    invoke-virtual {p0, v0}, byteArrayToString([B)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, convertHexStringTo33Hexdecimal(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, serial:Ljava/lang/String;

    .line 34
    iget-object v0, p0, cover_id:[B

    invoke-virtual {p0, v0}, byteArrayToString([B)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, convertHexStringTo33Hexdecimal(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, id:Ljava/lang/String;

    .line 35
    iget-object v0, p0, chip_id:[B

    aget-byte v0, v0, v4

    and-int/lit16 v0, v0, 0xff

    iput v0, p0, model:I

    .line 36
    iget-object v0, p0, chip_id:[B

    const/16 v1, 0xf

    aget-byte v0, v0, v1

    and-int/lit16 v0, v0, 0xff

    iput v0, p0, smapp:I

    .line 37
    iget-object v0, p0, chip_id:[B

    const/16 v1, 0x10

    aget-byte v0, v0, v1

    and-int/lit16 v0, v0, 0xff

    iput v0, p0, color:I

    .line 38
    iget-object v0, p0, chip_id:[B

    const/16 v1, 0x11

    aget-byte v0, v0, v1

    and-int/lit16 v0, v0, 0xff

    iput v0, p0, type:I

    .line 40
    iget-object v0, p0, chip_id:[B

    const/16 v1, 0x12

    aget-byte v0, v0, v1

    and-int/lit16 v0, v0, 0xff

    iput v0, p0, idVersion:I

    .line 41
    iget-object v0, p0, vendorInfo:[B

    iget-object v1, p0, chip_id:[B

    const/16 v2, 0x13

    aget-byte v1, v1, v2

    aput-byte v1, v0, v3

    .line 42
    iget-object v0, p0, vendorInfo:[B

    const/4 v1, 0x1

    iget-object v2, p0, chip_id:[B

    const/16 v3, 0x14

    aget-byte v2, v2, v3

    aput-byte v2, v0, v1

    .line 43
    iget-object v0, p0, chip_id:[B

    const/16 v1, 0x15

    aget-byte v0, v0, v1

    and-int/lit16 v0, v0, 0xff

    iput v0, p0, url:I

    .line 44
    iget-object v0, p0, chip_id:[B

    const/16 v1, 0x16

    aget-byte v0, v0, v1

    iput-byte v0, p0, reserved:B

    .line 45
    return-void
.end method


# virtual methods
.method public byteArrayToString([B)Ljava/lang/String;
    .registers 8
    .param p1, "input"    # [B

    .prologue
    .line 128
    if-eqz p1, :cond_28

    .line 129
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 130
    .local v0, "builder":Ljava/lang/StringBuilder;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_8
    array-length v2, p1

    if-ge v1, v2, :cond_23

    .line 131
    const-string v2, "%02x"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aget-byte v5, p1, v1

    invoke-static {v5}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 130
    add-int/lit8 v1, v1, 0x1

    goto :goto_8

    .line 133
    :cond_23
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 135
    .end local v0    # "builder":Ljava/lang/StringBuilder;
    .end local v1    # "i":I
    :goto_27
    return-object v2

    :cond_28
    const-string/jumbo v2, "null"

    goto :goto_27
.end method

.method public getColor()I
    .registers 2

    .prologue
    .line 72
    iget v0, p0, color:I

    return v0
.end method

.method public getCoverId()Ljava/lang/String;
    .registers 2

    .prologue
    .line 60
    iget-object v0, p0, id:Ljava/lang/String;

    return-object v0
.end method

.method public getId()[B
    .registers 2

    .prologue
    .line 52
    iget-object v0, p0, chip_id:[B

    return-object v0
.end method

.method public getIdVersion()I
    .registers 2

    .prologue
    .line 80
    iget v0, p0, idVersion:I

    return v0
.end method

.method public getModel()I
    .registers 2

    .prologue
    .line 64
    iget v0, p0, model:I

    return v0
.end method

.method public getReserved()B
    .registers 2

    .prologue
    .line 92
    iget-byte v0, p0, reserved:B

    return v0
.end method

.method public getSmapp()I
    .registers 2

    .prologue
    .line 68
    iget v0, p0, smapp:I

    return v0
.end method

.method public getSn()Ljava/lang/String;
    .registers 2

    .prologue
    .line 56
    iget-object v0, p0, serial:Ljava/lang/String;

    return-object v0
.end method

.method public getType()I
    .registers 2

    .prologue
    .line 76
    iget v0, p0, type:I

    return v0
.end method

.method public getUrl()I
    .registers 2

    .prologue
    .line 84
    iget v0, p0, url:I

    return v0
.end method

.method public getVendorInfo()[B
    .registers 2

    .prologue
    .line 88
    iget-object v0, p0, vendorInfo:[B

    invoke-virtual {v0}, [B->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    return-object v0
.end method

.method public isValid()Z
    .registers 2

    .prologue
    .line 48
    iget-boolean v0, p0, valid:Z

    return v0
.end method
