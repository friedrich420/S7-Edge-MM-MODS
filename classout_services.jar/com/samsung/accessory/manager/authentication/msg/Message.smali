.class public Lcom/samsung/accessory/manager/authentication/msg/Message;
.super Ljava/lang/Object;
.source "Message.java"


# instance fields
.field private final INF_SIZE:I

.field private final RES_ATQS:I

.field private apdu:[B

.field private data:[B

.field private inf:[B


# direct methods
.method public constructor <init>(BBBBB)V
    .registers 8
    .param p1, "cla"    # B
    .param p2, "ins"    # B
    .param p3, "p1"    # B
    .param p4, "p2"    # B
    .param p5, "p3"    # B

    .prologue
    const/4 v1, 0x5

    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 5
    iput v1, p0, INF_SIZE:I

    .line 6
    const/4 v0, 0x1

    iput v0, p0, RES_ATQS:I

    .line 21
    new-array v0, v1, [B

    iput-object v0, p0, apdu:[B

    .line 22
    new-array v0, v1, [B

    iput-object v0, p0, inf:[B

    .line 23
    invoke-direct/range {p0 .. p5}, setInf(BBBBB)V

    .line 24
    const/4 v0, 0x0

    iput-object v0, p0, data:[B

    .line 25
    invoke-direct {p0}, setApdu()V

    .line 26
    return-void
.end method

.method public constructor <init>(BBBBB[B)V
    .registers 9
    .param p1, "cla"    # B
    .param p2, "ins"    # B
    .param p3, "p1"    # B
    .param p4, "p2"    # B
    .param p5, "p3"    # B
    .param p6, "data"    # [B

    .prologue
    const/4 v1, 0x5

    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 5
    iput v1, p0, INF_SIZE:I

    .line 6
    const/4 v0, 0x1

    iput v0, p0, RES_ATQS:I

    .line 29
    array-length v0, p6

    add-int/lit8 v0, v0, 0x5

    new-array v0, v0, [B

    iput-object v0, p0, apdu:[B

    .line 30
    new-array v0, v1, [B

    iput-object v0, p0, inf:[B

    .line 31
    invoke-direct/range {p0 .. p5}, setInf(BBBBB)V

    .line 32
    invoke-virtual {p6}, [B->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    iput-object v0, p0, data:[B

    .line 33
    invoke-direct {p0}, setApdu()V

    .line 34
    return-void
.end method

.method public constructor <init>(I[B)V
    .registers 6
    .param p1, "what"    # I
    .param p2, "mApdu"    # [B

    .prologue
    const/4 v1, 0x5

    const/4 v2, 0x0

    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 5
    iput v1, p0, INF_SIZE:I

    .line 6
    const/4 v0, 0x1

    iput v0, p0, RES_ATQS:I

    .line 13
    array-length v0, p2

    new-array v0, v0, [B

    iput-object v0, p0, apdu:[B

    .line 14
    new-array v0, v1, [B

    iput-object v0, p0, inf:[B

    .line 16
    iget-object v0, p0, apdu:[B

    iget-object v1, p0, apdu:[B

    array-length v1, v1

    invoke-static {p2, v2, v0, v2, v1}, Ljava/lang/System;->arraycopy([BI[BII)V

    .line 17
    invoke-direct {p0, p1}, parseMessage(I)V

    .line 18
    return-void
.end method

.method private parseMessage(I)V
    .registers 7
    .param p1, "what"    # I

    .prologue
    const/4 v4, 0x0

    .line 56
    iget-object v1, p0, apdu:[B

    array-length v0, v1

    .line 58
    .local v0, "len":I
    const/4 v1, 0x1

    if-ne p1, v1, :cond_17

    .line 59
    add-int/lit8 v1, v0, -0x2

    new-array v1, v1, [B

    iput-object v1, p0, data:[B

    .line 60
    iget-object v1, p0, apdu:[B

    iget-object v2, p0, data:[B

    add-int/lit8 v3, v0, -0x2

    invoke-static {v1, v4, v2, v4, v3}, Ljava/lang/System;->arraycopy([BI[BII)V

    .line 65
    :goto_16
    return-void

    .line 62
    :cond_17
    add-int/lit8 v1, v0, -0x3

    new-array v1, v1, [B

    iput-object v1, p0, data:[B

    .line 63
    iget-object v1, p0, apdu:[B

    iget-object v2, p0, data:[B

    add-int/lit8 v3, v0, -0x3

    invoke-static {v1, v4, v2, v4, v3}, Ljava/lang/System;->arraycopy([BI[BII)V

    goto :goto_16
.end method

.method private setApdu()V
    .registers 6

    .prologue
    const/4 v4, 0x0

    .line 45
    iget-object v0, p0, inf:[B

    iget-object v1, p0, apdu:[B

    iget-object v2, p0, inf:[B

    array-length v2, v2

    invoke-static {v0, v4, v1, v4, v2}, Ljava/lang/System;->arraycopy([BI[BII)V

    .line 46
    iget-object v0, p0, data:[B

    if-eqz v0, :cond_1c

    .line 47
    iget-object v0, p0, data:[B

    iget-object v1, p0, apdu:[B

    iget-object v2, p0, inf:[B

    array-length v2, v2

    iget-object v3, p0, data:[B

    array-length v3, v3

    invoke-static {v0, v4, v1, v2, v3}, Ljava/lang/System;->arraycopy([BI[BII)V

    .line 49
    :cond_1c
    return-void
.end method

.method private setInf(BBBBB)V
    .registers 8
    .param p1, "cla"    # B
    .param p2, "ins"    # B
    .param p3, "p1"    # B
    .param p4, "p2"    # B
    .param p5, "p3"    # B

    .prologue
    .line 37
    iget-object v0, p0, inf:[B

    const/4 v1, 0x0

    aput-byte p1, v0, v1

    .line 38
    iget-object v0, p0, inf:[B

    const/4 v1, 0x1

    aput-byte p2, v0, v1

    .line 39
    iget-object v0, p0, inf:[B

    const/4 v1, 0x2

    aput-byte p3, v0, v1

    .line 40
    iget-object v0, p0, inf:[B

    const/4 v1, 0x3

    aput-byte p4, v0, v1

    .line 41
    iget-object v0, p0, inf:[B

    const/4 v1, 0x4

    aput-byte p5, v0, v1

    .line 42
    return-void
.end method


# virtual methods
.method public getApdu()[B
    .registers 2

    .prologue
    .line 68
    iget-object v0, p0, apdu:[B

    invoke-virtual {v0}, [B->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    return-object v0
.end method

.method public getData()[B
    .registers 2

    .prologue
    .line 72
    iget-object v0, p0, data:[B

    invoke-virtual {v0}, [B->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    return-object v0
.end method

.method public getInf(I)B
    .registers 3
    .param p1, "what"    # I

    .prologue
    .line 52
    iget-object v0, p0, inf:[B

    aget-byte v0, v0, p1

    return v0
.end method
