.class public Lcom/sun/org/apache/xml/internal/security/utils/DigesterOutputStream;
.super Ljava/io/ByteArrayOutputStream;


# static fields
.field static final none:[B


# instance fields
.field final mda:Lcom/sun/org/apache/xml/internal/security/algorithms/MessageDigestAlgorithm;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const-string/jumbo v0, "error"

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    sput-object v0, none:[B

    return-void
.end method

.method public constructor <init>(Lcom/sun/org/apache/xml/internal/security/algorithms/MessageDigestAlgorithm;)V
    .registers 2

    invoke-direct {p0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    iput-object p1, p0, mda:Lcom/sun/org/apache/xml/internal/security/algorithms/MessageDigestAlgorithm;

    return-void
.end method


# virtual methods
.method public getDigestValue()[B
    .registers 2

    iget-object v0, p0, mda:Lcom/sun/org/apache/xml/internal/security/algorithms/MessageDigestAlgorithm;

    invoke-virtual {v0}, Lcom/sun/org/apache/xml/internal/security/algorithms/MessageDigestAlgorithm;->digest()[B

    move-result-object v0

    return-object v0
.end method

.method public toByteArray()[B
    .registers 2

    sget-object v0, none:[B

    return-object v0
.end method

.method public write(I)V
    .registers 4

    iget-object v0, p0, mda:Lcom/sun/org/apache/xml/internal/security/algorithms/MessageDigestAlgorithm;

    int-to-byte v1, p1

    invoke-virtual {v0, v1}, Lcom/sun/org/apache/xml/internal/security/algorithms/MessageDigestAlgorithm;->update(B)V

    return-void
.end method

.method public write([B)V
    .registers 3

    iget-object v0, p0, mda:Lcom/sun/org/apache/xml/internal/security/algorithms/MessageDigestAlgorithm;

    invoke-virtual {v0, p1}, Lcom/sun/org/apache/xml/internal/security/algorithms/MessageDigestAlgorithm;->update([B)V

    return-void
.end method

.method public write([BII)V
    .registers 5

    iget-object v0, p0, mda:Lcom/sun/org/apache/xml/internal/security/algorithms/MessageDigestAlgorithm;

    invoke-virtual {v0, p1, p2, p3}, Lcom/sun/org/apache/xml/internal/security/algorithms/MessageDigestAlgorithm;->update([BII)V

    return-void
.end method
