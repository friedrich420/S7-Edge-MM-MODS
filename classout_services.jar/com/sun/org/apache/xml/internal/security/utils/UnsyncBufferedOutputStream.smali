.class public Lcom/sun/org/apache/xml/internal/security/utils/UnsyncBufferedOutputStream;
.super Ljava/io/OutputStream;


# static fields
.field static final size:I = 0x2000


# instance fields
.field final buf:[B

.field final out:Ljava/io/OutputStream;

.field pointer:I


# direct methods
.method public constructor <init>(Ljava/io/OutputStream;)V
    .registers 3

    invoke-direct {p0}, Ljava/io/OutputStream;-><init>()V

    const/16 v0, 0x2000

    new-array v0, v0, [B

    iput-object v0, p0, buf:[B

    const/4 v0, 0x0

    iput v0, p0, pointer:I

    iput-object p1, p0, out:Ljava/io/OutputStream;

    return-void
.end method

.method private final flushBuffer()V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v3, 0x0

    iget v0, p0, pointer:I

    if-lez v0, :cond_e

    iget-object v0, p0, out:Ljava/io/OutputStream;

    iget-object v1, p0, buf:[B

    iget v2, p0, pointer:I

    invoke-virtual {v0, v1, v3, v2}, Ljava/io/OutputStream;->write([BII)V

    :cond_e
    iput v3, p0, pointer:I

    return-void
.end method


# virtual methods
.method public close()V
    .registers 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0}, flush()V

    return-void
.end method

.method public flush()V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-direct {p0}, flushBuffer()V

    iget-object v0, p0, out:Ljava/io/OutputStream;

    invoke-virtual {v0}, Ljava/io/OutputStream;->flush()V

    return-void
.end method

.method public write(I)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget v0, p0, pointer:I

    const/16 v1, 0x2000

    if-lt v0, v1, :cond_9

    invoke-direct {p0}, flushBuffer()V

    :cond_9
    iget-object v0, p0, buf:[B

    iget v1, p0, pointer:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, pointer:I

    int-to-byte v2, p1

    aput-byte v2, v0, v1

    return-void
.end method

.method public write([B)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    array-length v1, p1

    invoke-virtual {p0, p1, v0, v1}, write([BII)V

    return-void
.end method

.method public write([BII)V
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/16 v1, 0x2000

    iget v0, p0, pointer:I

    add-int/2addr v0, p3

    if-le v0, v1, :cond_13

    invoke-direct {p0}, flushBuffer()V

    if-le p3, v1, :cond_12

    iget-object v0, p0, out:Ljava/io/OutputStream;

    invoke-virtual {v0, p1, p2, p3}, Ljava/io/OutputStream;->write([BII)V

    :goto_11
    return-void

    :cond_12
    move v0, p3

    :cond_13
    iget-object v1, p0, buf:[B

    iget v2, p0, pointer:I

    invoke-static {p1, p2, v1, v2, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iput v0, p0, pointer:I

    goto :goto_11
.end method
