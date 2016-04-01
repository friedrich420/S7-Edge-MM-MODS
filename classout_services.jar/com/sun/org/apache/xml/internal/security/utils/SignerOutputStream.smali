.class public Lcom/sun/org/apache/xml/internal/security/utils/SignerOutputStream;
.super Ljava/io/ByteArrayOutputStream;


# static fields
.field static final none:[B


# instance fields
.field final sa:Lcom/sun/org/apache/xml/internal/security/algorithms/SignatureAlgorithm;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const-string/jumbo v0, "error"

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    sput-object v0, none:[B

    return-void
.end method

.method public constructor <init>(Lcom/sun/org/apache/xml/internal/security/algorithms/SignatureAlgorithm;)V
    .registers 2

    invoke-direct {p0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    iput-object p1, p0, sa:Lcom/sun/org/apache/xml/internal/security/algorithms/SignatureAlgorithm;

    return-void
.end method


# virtual methods
.method public toByteArray()[B
    .registers 2

    sget-object v0, none:[B

    return-object v0
.end method

.method public write(I)V
    .registers 6

    :try_start_0
    iget-object v0, p0, sa:Lcom/sun/org/apache/xml/internal/security/algorithms/SignatureAlgorithm;

    int-to-byte v1, p1

    invoke-virtual {v0, v1}, Lcom/sun/org/apache/xml/internal/security/algorithms/SignatureAlgorithm;->update(B)V
    :try_end_6
    .catch Lcom/sun/org/apache/xml/internal/security/signature/XMLSignatureException; {:try_start_0 .. :try_end_6} :catch_7

    return-void

    :catch_7
    move-exception v0

    new-instance v1, Ljava/lang/RuntimeException;

    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public write([B)V
    .registers 6

    :try_start_0
    iget-object v0, p0, sa:Lcom/sun/org/apache/xml/internal/security/algorithms/SignatureAlgorithm;

    invoke-virtual {v0, p1}, Lcom/sun/org/apache/xml/internal/security/algorithms/SignatureAlgorithm;->update([B)V
    :try_end_5
    .catch Lcom/sun/org/apache/xml/internal/security/signature/XMLSignatureException; {:try_start_0 .. :try_end_5} :catch_6

    return-void

    :catch_6
    move-exception v0

    new-instance v1, Ljava/lang/RuntimeException;

    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public write([BII)V
    .registers 8

    :try_start_0
    iget-object v0, p0, sa:Lcom/sun/org/apache/xml/internal/security/algorithms/SignatureAlgorithm;

    invoke-virtual {v0, p1, p2, p3}, Lcom/sun/org/apache/xml/internal/security/algorithms/SignatureAlgorithm;->update([BII)V
    :try_end_5
    .catch Lcom/sun/org/apache/xml/internal/security/signature/XMLSignatureException; {:try_start_0 .. :try_end_5} :catch_6

    return-void

    :catch_6
    move-exception v0

    new-instance v1, Ljava/lang/RuntimeException;

    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1
.end method
