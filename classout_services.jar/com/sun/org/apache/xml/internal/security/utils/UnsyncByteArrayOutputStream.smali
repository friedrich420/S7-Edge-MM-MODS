.class public Lcom/sun/org/apache/xml/internal/security/utils/UnsyncByteArrayOutputStream;
.super Ljava/io/ByteArrayOutputStream;


# instance fields
.field buf:[B

.field pos:I

.field size:I


# direct methods
.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    const/16 v0, 0x1000

    iput v0, p0, size:I

    iget v0, p0, size:I

    new-array v0, v0, [B

    iput-object v0, p0, buf:[B

    return-void
.end method


# virtual methods
.method expandSize()V
    .registers 6

    const/4 v4, 0x0

    iget v0, p0, size:I

    shl-int/lit8 v0, v0, 0x2

    new-array v1, v0, [B

    iget-object v2, p0, buf:[B

    iget v3, p0, pos:I

    invoke-static {v2, v4, v1, v4, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iput-object v1, p0, buf:[B

    iput v0, p0, size:I

    return-void
.end method

.method public reset()V
    .registers 2

    const/4 v0, 0x0

    iput v0, p0, pos:I

    return-void
.end method

.method public toByteArray()[B
    .registers 5

    const/4 v3, 0x0

    iget v0, p0, pos:I

    new-array v0, v0, [B

    iget-object v1, p0, buf:[B

    iget v2, p0, pos:I

    invoke-static {v1, v3, v0, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v0
.end method

.method public write(I)V
    .registers 5

    iget v0, p0, pos:I

    iget v1, p0, size:I

    if-lt v0, v1, :cond_9

    invoke-virtual {p0}, expandSize()V

    :cond_9
    iget-object v0, p0, buf:[B

    iget v1, p0, pos:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, pos:I

    int-to-byte v2, p1

    aput-byte v2, v0, v1

    return-void
.end method

.method public write([B)V
    .registers 7

    iget v0, p0, pos:I

    array-length v1, p1

    add-int/2addr v0, v1

    iget v1, p0, size:I

    if-le v0, v1, :cond_b

    invoke-virtual {p0}, expandSize()V

    :cond_b
    const/4 v1, 0x0

    iget-object v2, p0, buf:[B

    iget v3, p0, pos:I

    array-length v4, p1

    invoke-static {p1, v1, v2, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iput v0, p0, pos:I

    return-void
.end method

.method public write([BII)V
    .registers 7

    iget v0, p0, pos:I

    add-int/2addr v0, p3

    iget v1, p0, size:I

    if-le v0, v1, :cond_a

    invoke-virtual {p0}, expandSize()V

    :cond_a
    iget-object v1, p0, buf:[B

    iget v2, p0, pos:I

    invoke-static {p1, p2, v1, v2, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iput v0, p0, pos:I

    return-void
.end method
