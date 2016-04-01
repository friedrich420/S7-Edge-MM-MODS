.class public Lcom/sun/org/apache/xml/internal/security/utils/Base64;
.super Ljava/lang/Object;


# static fields
.field public static final BASE64DEFAULTLENGTH:I = 0x4c

.field private static final BASELENGTH:I = 0xff

.field private static final EIGHTBIT:I = 0x8

.field private static final FOURBYTE:I = 0x4

.field private static final LOOKUPLENGTH:I = 0x40

.field private static final PAD:C = '='

.field private static final SIGN:I = -0x80

.field private static final SIXTEENBIT:I = 0x10

.field private static final TWENTYFOURBITGROUP:I = 0x18

.field static _base64length:I

.field private static final base64Alphabet:[B

.field static class$com$sun$org$apache$xml$internal$security$utils$Base64:Ljava/lang/Class;

.field private static final fDebug:Z

.field static log:Ljava/util/logging/Logger;

.field private static final lookUpBase64Alphabet:[C


# direct methods
.method static constructor <clinit>()V
    .registers 10

    const/16 v8, 0x3f

    const/16 v7, 0x3e

    const/16 v6, 0x2f

    const/16 v5, 0x2b

    const/4 v1, 0x0

    sget-object v0, class$com$sun$org$apache$xml$internal$security$utils$Base64:Ljava/lang/Class;

    if-nez v0, :cond_3c

    const-string v0, "com.sun.org.apache.xml.internal.security.utils.Base64"

    invoke-static {v0}, class$(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    sput-object v0, class$com$sun$org$apache$xml$internal$security$utils$Base64:Ljava/lang/Class;

    :goto_15
    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sput-object v0, log:Ljava/util/logging/Logger;

    const/16 v0, 0x4c

    sput v0, _base64length:I

    const/16 v0, 0xff

    new-array v0, v0, [B

    sput-object v0, base64Alphabet:[B

    const/16 v0, 0x40

    new-array v0, v0, [C

    sput-object v0, lookUpBase64Alphabet:[C

    move v0, v1

    :goto_30
    const/16 v2, 0xff

    if-ge v0, v2, :cond_3f

    sget-object v2, base64Alphabet:[B

    const/4 v3, -0x1

    aput-byte v3, v2, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_30

    :cond_3c
    sget-object v0, class$com$sun$org$apache$xml$internal$security$utils$Base64:Ljava/lang/Class;

    goto :goto_15

    :cond_3f
    const/16 v0, 0x5a

    :goto_41
    const/16 v2, 0x41

    if-lt v0, v2, :cond_4f

    sget-object v2, base64Alphabet:[B

    add-int/lit8 v3, v0, -0x41

    int-to-byte v3, v3

    aput-byte v3, v2, v0

    add-int/lit8 v0, v0, -0x1

    goto :goto_41

    :cond_4f
    const/16 v0, 0x7a

    :goto_51
    const/16 v2, 0x61

    if-lt v0, v2, :cond_61

    sget-object v2, base64Alphabet:[B

    add-int/lit8 v3, v0, -0x61

    add-int/lit8 v3, v3, 0x1a

    int-to-byte v3, v3

    aput-byte v3, v2, v0

    add-int/lit8 v0, v0, -0x1

    goto :goto_51

    :cond_61
    const/16 v0, 0x39

    :goto_63
    const/16 v2, 0x30

    if-lt v0, v2, :cond_73

    sget-object v2, base64Alphabet:[B

    add-int/lit8 v3, v0, -0x30

    add-int/lit8 v3, v3, 0x34

    int-to-byte v3, v3

    aput-byte v3, v2, v0

    add-int/lit8 v0, v0, -0x1

    goto :goto_63

    :cond_73
    sget-object v0, base64Alphabet:[B

    aput-byte v7, v0, v5

    sget-object v0, base64Alphabet:[B

    aput-byte v8, v0, v6

    move v0, v1

    :goto_7c
    const/16 v2, 0x19

    if-gt v0, v2, :cond_8a

    sget-object v2, lookUpBase64Alphabet:[C

    add-int/lit8 v3, v0, 0x41

    int-to-char v3, v3

    aput-char v3, v2, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_7c

    :cond_8a
    const/16 v0, 0x1a

    move v2, v0

    move v0, v1

    :goto_8e
    const/16 v3, 0x33

    if-gt v2, v3, :cond_9e

    sget-object v3, lookUpBase64Alphabet:[C

    add-int/lit8 v4, v0, 0x61

    int-to-char v4, v4

    aput-char v4, v3, v2

    add-int/lit8 v2, v2, 0x1

    add-int/lit8 v0, v0, 0x1

    goto :goto_8e

    :cond_9e
    const/16 v0, 0x34

    move v9, v1

    move v1, v0

    move v0, v9

    :goto_a3
    const/16 v2, 0x3d

    if-gt v1, v2, :cond_b3

    sget-object v2, lookUpBase64Alphabet:[C

    add-int/lit8 v3, v0, 0x30

    int-to-char v3, v3

    aput-char v3, v2, v1

    add-int/lit8 v1, v1, 0x1

    add-int/lit8 v0, v0, 0x1

    goto :goto_a3

    :cond_b3
    sget-object v0, lookUpBase64Alphabet:[C

    aput-char v5, v0, v7

    sget-object v0, lookUpBase64Alphabet:[C

    aput-char v6, v0, v8

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static class$(Ljava/lang/String;)Ljava/lang/Class;
    .registers 3

    :try_start_0
    invoke-static {p0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;
    :try_end_3
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_3} :catch_5

    move-result-object v0

    return-object v0

    :catch_5
    move-exception v0

    new-instance v1, Ljava/lang/NoClassDefFoundError;

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/NoClassDefFoundError;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public static final decode(Ljava/io/InputStream;Ljava/io/OutputStream;)V
    .registers 13
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sun/org/apache/xml/internal/security/exceptions/Base64DecodingException;,
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v10, 0x2

    const/4 v9, 0x1

    const/4 v8, 0x3

    const/4 v7, -0x1

    const/4 v1, 0x0

    const/4 v0, 0x4

    new-array v3, v0, [B

    move v0, v1

    :cond_9
    :goto_9
    invoke-virtual {p0}, Ljava/io/InputStream;->read()I

    move-result v2

    if-lez v2, :cond_2b

    int-to-byte v4, v2

    invoke-static {v4}, isWhiteSpace(B)Z

    move-result v2

    if-nez v2, :cond_9

    invoke-static {v4}, isPad(B)Z

    move-result v2

    if-eqz v2, :cond_60

    add-int/lit8 v2, v0, 0x1

    aput-byte v4, v3, v0

    if-ne v2, v8, :cond_2b

    add-int/lit8 v0, v2, 0x1

    invoke-virtual {p0}, Ljava/io/InputStream;->read()I

    move-result v0

    int-to-byte v0, v0

    aput-byte v0, v3, v2

    :cond_2b
    aget-byte v0, v3, v1

    aget-byte v1, v3, v9

    aget-byte v2, v3, v10

    aget-byte v3, v3, v8

    sget-object v4, base64Alphabet:[B

    aget-byte v0, v4, v0

    sget-object v4, base64Alphabet:[B

    aget-byte v1, v4, v1

    sget-object v4, base64Alphabet:[B

    aget-byte v4, v4, v2

    sget-object v5, base64Alphabet:[B

    aget-byte v5, v5, v3

    if-eq v4, v7, :cond_47

    if-ne v5, v7, :cond_f3

    :cond_47
    invoke-static {v2}, isPad(B)Z

    move-result v4

    if-eqz v4, :cond_b6

    invoke-static {v3}, isPad(B)Z

    move-result v4

    if-eqz v4, :cond_b6

    and-int/lit8 v2, v1, 0xf

    if-eqz v2, :cond_ac

    new-instance v0, Lcom/sun/org/apache/xml/internal/security/exceptions/Base64DecodingException;

    const-string/jumbo v1, "decoding.general"

    invoke-direct {v0, v1}, Lcom/sun/org/apache/xml/internal/security/exceptions/Base64DecodingException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_60
    add-int/lit8 v2, v0, 0x1

    aput-byte v4, v3, v0

    if-ne v4, v7, :cond_6f

    new-instance v0, Lcom/sun/org/apache/xml/internal/security/exceptions/Base64DecodingException;

    const-string/jumbo v1, "decoding.general"

    invoke-direct {v0, v1}, Lcom/sun/org/apache/xml/internal/security/exceptions/Base64DecodingException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_6f
    const/4 v0, 0x4

    if-eq v2, v0, :cond_74

    move v0, v2

    goto :goto_9

    :cond_74
    sget-object v0, base64Alphabet:[B

    aget-byte v2, v3, v1

    aget-byte v0, v0, v2

    sget-object v2, base64Alphabet:[B

    aget-byte v4, v3, v9

    aget-byte v2, v2, v4

    sget-object v4, base64Alphabet:[B

    aget-byte v5, v3, v10

    aget-byte v4, v4, v5

    sget-object v5, base64Alphabet:[B

    aget-byte v6, v3, v8

    aget-byte v5, v5, v6

    shl-int/lit8 v0, v0, 0x2

    shr-int/lit8 v6, v2, 0x4

    or-int/2addr v0, v6

    int-to-byte v0, v0

    invoke-virtual {p1, v0}, Ljava/io/OutputStream;->write(I)V

    and-int/lit8 v0, v2, 0xf

    shl-int/lit8 v0, v0, 0x4

    shr-int/lit8 v2, v4, 0x2

    and-int/lit8 v2, v2, 0xf

    or-int/2addr v0, v2

    int-to-byte v0, v0

    invoke-virtual {p1, v0}, Ljava/io/OutputStream;->write(I)V

    shl-int/lit8 v0, v4, 0x6

    or-int/2addr v0, v5

    int-to-byte v0, v0

    invoke-virtual {p1, v0}, Ljava/io/OutputStream;->write(I)V

    move v0, v1

    goto/16 :goto_9

    :cond_ac
    shl-int/lit8 v0, v0, 0x2

    shr-int/lit8 v1, v1, 0x4

    or-int/2addr v0, v1

    int-to-byte v0, v0

    invoke-virtual {p1, v0}, Ljava/io/OutputStream;->write(I)V

    :goto_b5
    return-void

    :cond_b6
    invoke-static {v2}, isPad(B)Z

    move-result v4

    if-nez v4, :cond_ea

    invoke-static {v3}, isPad(B)Z

    move-result v3

    if-eqz v3, :cond_ea

    sget-object v3, base64Alphabet:[B

    aget-byte v2, v3, v2

    and-int/lit8 v3, v2, 0x3

    if-eqz v3, :cond_d3

    new-instance v0, Lcom/sun/org/apache/xml/internal/security/exceptions/Base64DecodingException;

    const-string/jumbo v1, "decoding.general"

    invoke-direct {v0, v1}, Lcom/sun/org/apache/xml/internal/security/exceptions/Base64DecodingException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_d3
    shl-int/lit8 v0, v0, 0x2

    shr-int/lit8 v3, v1, 0x4

    or-int/2addr v0, v3

    int-to-byte v0, v0

    invoke-virtual {p1, v0}, Ljava/io/OutputStream;->write(I)V

    and-int/lit8 v0, v1, 0xf

    shl-int/lit8 v0, v0, 0x4

    shr-int/lit8 v1, v2, 0x2

    and-int/lit8 v1, v1, 0xf

    or-int/2addr v0, v1

    int-to-byte v0, v0

    invoke-virtual {p1, v0}, Ljava/io/OutputStream;->write(I)V

    goto :goto_b5

    :cond_ea
    new-instance v0, Lcom/sun/org/apache/xml/internal/security/exceptions/Base64DecodingException;

    const-string/jumbo v1, "decoding.general"

    invoke-direct {v0, v1}, Lcom/sun/org/apache/xml/internal/security/exceptions/Base64DecodingException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_f3
    shl-int/lit8 v0, v0, 0x2

    shr-int/lit8 v2, v1, 0x4

    or-int/2addr v0, v2

    int-to-byte v0, v0

    invoke-virtual {p1, v0}, Ljava/io/OutputStream;->write(I)V

    and-int/lit8 v0, v1, 0xf

    shl-int/lit8 v0, v0, 0x4

    shr-int/lit8 v1, v4, 0x2

    and-int/lit8 v1, v1, 0xf

    or-int/2addr v0, v1

    int-to-byte v0, v0

    invoke-virtual {p1, v0}, Ljava/io/OutputStream;->write(I)V

    shl-int/lit8 v0, v4, 0x6

    or-int/2addr v0, v5

    int-to-byte v0, v0

    invoke-virtual {p1, v0}, Ljava/io/OutputStream;->write(I)V

    goto :goto_b5
.end method

.method public static final decode([BLjava/io/OutputStream;)V
    .registers 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sun/org/apache/xml/internal/security/exceptions/Base64DecodingException;,
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v7, -0x1

    invoke-static {p0}, removeWhiteSpace([B)I

    move-result v0

    rem-int/lit8 v1, v0, 0x4

    if-eqz v1, :cond_12

    new-instance v0, Lcom/sun/org/apache/xml/internal/security/exceptions/Base64DecodingException;

    const-string/jumbo v1, "decoding.divisible.four"

    invoke-direct {v0, v1}, Lcom/sun/org/apache/xml/internal/security/exceptions/Base64DecodingException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_12
    div-int/lit8 v1, v0, 0x4

    if-nez v1, :cond_17

    :goto_16
    return-void

    :cond_17
    const/4 v0, 0x0

    add-int/lit8 v1, v1, -0x1

    :goto_1a
    if-lez v1, :cond_6d

    sget-object v2, base64Alphabet:[B

    add-int/lit8 v3, v0, 0x1

    aget-byte v0, p0, v0

    aget-byte v2, v2, v0

    sget-object v0, base64Alphabet:[B

    add-int/lit8 v4, v3, 0x1

    aget-byte v3, p0, v3

    aget-byte v3, v0, v3

    sget-object v0, base64Alphabet:[B

    add-int/lit8 v5, v4, 0x1

    aget-byte v4, p0, v4

    aget-byte v4, v0, v4

    sget-object v6, base64Alphabet:[B

    add-int/lit8 v0, v5, 0x1

    aget-byte v5, p0, v5

    aget-byte v5, v6, v5

    if-eq v2, v7, :cond_44

    if-eq v3, v7, :cond_44

    if-eq v4, v7, :cond_44

    if-ne v5, v7, :cond_4d

    :cond_44
    new-instance v0, Lcom/sun/org/apache/xml/internal/security/exceptions/Base64DecodingException;

    const-string/jumbo v1, "decoding.general"

    invoke-direct {v0, v1}, Lcom/sun/org/apache/xml/internal/security/exceptions/Base64DecodingException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_4d
    shl-int/lit8 v2, v2, 0x2

    shr-int/lit8 v6, v3, 0x4

    or-int/2addr v2, v6

    int-to-byte v2, v2

    invoke-virtual {p1, v2}, Ljava/io/OutputStream;->write(I)V

    and-int/lit8 v2, v3, 0xf

    shl-int/lit8 v2, v2, 0x4

    shr-int/lit8 v3, v4, 0x2

    and-int/lit8 v3, v3, 0xf

    or-int/2addr v2, v3

    int-to-byte v2, v2

    invoke-virtual {p1, v2}, Ljava/io/OutputStream;->write(I)V

    shl-int/lit8 v2, v4, 0x6

    or-int/2addr v2, v5

    int-to-byte v2, v2

    invoke-virtual {p1, v2}, Ljava/io/OutputStream;->write(I)V

    add-int/lit8 v1, v1, -0x1

    goto :goto_1a

    :cond_6d
    sget-object v1, base64Alphabet:[B

    add-int/lit8 v2, v0, 0x1

    aget-byte v0, p0, v0

    aget-byte v0, v1, v0

    sget-object v1, base64Alphabet:[B

    add-int/lit8 v3, v2, 0x1

    aget-byte v2, p0, v2

    aget-byte v1, v1, v2

    if-eq v0, v7, :cond_81

    if-ne v1, v7, :cond_8a

    :cond_81
    new-instance v0, Lcom/sun/org/apache/xml/internal/security/exceptions/Base64DecodingException;

    const-string/jumbo v1, "decoding.general"

    invoke-direct {v0, v1}, Lcom/sun/org/apache/xml/internal/security/exceptions/Base64DecodingException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_8a
    sget-object v2, base64Alphabet:[B

    add-int/lit8 v4, v3, 0x1

    aget-byte v3, p0, v3

    aget-byte v2, v2, v3

    sget-object v5, base64Alphabet:[B

    add-int/lit8 v6, v4, 0x1

    aget-byte v4, p0, v4

    aget-byte v5, v5, v4

    if-eq v2, v7, :cond_9e

    if-ne v5, v7, :cond_fc

    :cond_9e
    invoke-static {v3}, isPad(B)Z

    move-result v5

    if-eqz v5, :cond_c2

    invoke-static {v4}, isPad(B)Z

    move-result v5

    if-eqz v5, :cond_c2

    and-int/lit8 v2, v1, 0xf

    if-eqz v2, :cond_b7

    new-instance v0, Lcom/sun/org/apache/xml/internal/security/exceptions/Base64DecodingException;

    const-string/jumbo v1, "decoding.general"

    invoke-direct {v0, v1}, Lcom/sun/org/apache/xml/internal/security/exceptions/Base64DecodingException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_b7
    shl-int/lit8 v0, v0, 0x2

    shr-int/lit8 v1, v1, 0x4

    or-int/2addr v0, v1

    int-to-byte v0, v0

    invoke-virtual {p1, v0}, Ljava/io/OutputStream;->write(I)V

    goto/16 :goto_16

    :cond_c2
    invoke-static {v3}, isPad(B)Z

    move-result v3

    if-nez v3, :cond_f3

    invoke-static {v4}, isPad(B)Z

    move-result v3

    if-eqz v3, :cond_f3

    and-int/lit8 v3, v2, 0x3

    if-eqz v3, :cond_db

    new-instance v0, Lcom/sun/org/apache/xml/internal/security/exceptions/Base64DecodingException;

    const-string/jumbo v1, "decoding.general"

    invoke-direct {v0, v1}, Lcom/sun/org/apache/xml/internal/security/exceptions/Base64DecodingException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_db
    shl-int/lit8 v0, v0, 0x2

    shr-int/lit8 v3, v1, 0x4

    or-int/2addr v0, v3

    int-to-byte v0, v0

    invoke-virtual {p1, v0}, Ljava/io/OutputStream;->write(I)V

    and-int/lit8 v0, v1, 0xf

    shl-int/lit8 v0, v0, 0x4

    shr-int/lit8 v1, v2, 0x2

    and-int/lit8 v1, v1, 0xf

    or-int/2addr v0, v1

    int-to-byte v0, v0

    invoke-virtual {p1, v0}, Ljava/io/OutputStream;->write(I)V

    goto/16 :goto_16

    :cond_f3
    new-instance v0, Lcom/sun/org/apache/xml/internal/security/exceptions/Base64DecodingException;

    const-string/jumbo v1, "decoding.general"

    invoke-direct {v0, v1}, Lcom/sun/org/apache/xml/internal/security/exceptions/Base64DecodingException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_fc
    shl-int/lit8 v0, v0, 0x2

    shr-int/lit8 v3, v1, 0x4

    or-int/2addr v0, v3

    int-to-byte v0, v0

    invoke-virtual {p1, v0}, Ljava/io/OutputStream;->write(I)V

    and-int/lit8 v0, v1, 0xf

    shl-int/lit8 v0, v0, 0x4

    shr-int/lit8 v1, v2, 0x2

    and-int/lit8 v1, v1, 0xf

    or-int/2addr v0, v1

    int-to-byte v0, v0

    invoke-virtual {p1, v0}, Ljava/io/OutputStream;->write(I)V

    shl-int/lit8 v0, v2, 0x6

    or-int/2addr v0, v5

    int-to-byte v0, v0

    invoke-virtual {p1, v0}, Ljava/io/OutputStream;->write(I)V

    goto/16 :goto_16
.end method

.method public static decode(Ljava/io/BufferedReader;)[B
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/sun/org/apache/xml/internal/security/exceptions/Base64DecodingException;
        }
    .end annotation

    new-instance v0, Lcom/sun/org/apache/xml/internal/security/utils/UnsyncByteArrayOutputStream;

    invoke-direct {v0}, Lcom/sun/org/apache/xml/internal/security/utils/UnsyncByteArrayOutputStream;-><init>()V

    :goto_5
    invoke-virtual {p0}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_13

    invoke-static {v1}, decode(Ljava/lang/String;)[B

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sun/org/apache/xml/internal/security/utils/UnsyncByteArrayOutputStream;->write([B)V

    goto :goto_5

    :cond_13
    invoke-virtual {v0}, Lcom/sun/org/apache/xml/internal/security/utils/UnsyncByteArrayOutputStream;->toByteArray()[B

    move-result-object v0

    return-object v0
.end method

.method public static final decode(Ljava/lang/String;)[B
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sun/org/apache/xml/internal/security/exceptions/Base64DecodingException;
        }
    .end annotation

    if-nez p0, :cond_4

    const/4 v0, 0x0

    :goto_3
    return-object v0

    :cond_4
    invoke-virtual {p0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    invoke-static {v0}, decodeInternal([B)[B

    move-result-object v0

    goto :goto_3
.end method

.method public static decode(Lorg/w3c/dom/Element;)[B
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sun/org/apache/xml/internal/security/exceptions/Base64DecodingException;
        }
    .end annotation

    invoke-interface {p0}, Lorg/w3c/dom/Node;->getFirstChild()Lorg/w3c/dom/Node;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    :goto_9
    if-eqz v1, :cond_21

    invoke-interface {v1}, Lorg/w3c/dom/Node;->getNodeType()S

    move-result v0

    const/4 v3, 0x3

    if-ne v0, v3, :cond_1c

    move-object v0, v1

    check-cast v0, Lorg/w3c/dom/Text;

    invoke-interface {v0}, Lorg/w3c/dom/CharacterData;->getData()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :cond_1c
    invoke-interface {v1}, Lorg/w3c/dom/Node;->getNextSibling()Lorg/w3c/dom/Node;

    move-result-object v1

    goto :goto_9

    :cond_21
    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, decode(Ljava/lang/String;)[B

    move-result-object v0

    return-object v0
.end method

.method public static decode([B)[B
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sun/org/apache/xml/internal/security/exceptions/Base64DecodingException;
        }
    .end annotation

    invoke-static {p0}, decodeInternal([B)[B

    move-result-object v0

    return-object v0
.end method

.method public static decodeBigIntegerFromElement(Lorg/w3c/dom/Element;)Ljava/math/BigInteger;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sun/org/apache/xml/internal/security/exceptions/Base64DecodingException;
        }
    .end annotation

    new-instance v0, Ljava/math/BigInteger;

    const/4 v1, 0x1

    invoke-static {p0}, decode(Lorg/w3c/dom/Element;)[B

    move-result-object v2

    invoke-direct {v0, v1, v2}, Ljava/math/BigInteger;-><init>(I[B)V

    return-object v0
.end method

.method public static decodeBigIntegerFromText(Lorg/w3c/dom/Text;)Ljava/math/BigInteger;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sun/org/apache/xml/internal/security/exceptions/Base64DecodingException;
        }
    .end annotation

    new-instance v0, Ljava/math/BigInteger;

    const/4 v1, 0x1

    invoke-interface {p0}, Lorg/w3c/dom/CharacterData;->getData()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, decode(Ljava/lang/String;)[B

    move-result-object v2

    invoke-direct {v0, v1, v2}, Ljava/math/BigInteger;-><init>(I[B)V

    return-object v0
.end method

.method protected static final decodeInternal([B)[B
    .registers 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sun/org/apache/xml/internal/security/exceptions/Base64DecodingException;
        }
    .end annotation

    const/4 v1, 0x0

    const/4 v10, -0x1

    invoke-static {p0}, removeWhiteSpace([B)I

    move-result v0

    rem-int/lit8 v2, v0, 0x4

    if-eqz v2, :cond_13

    new-instance v0, Lcom/sun/org/apache/xml/internal/security/exceptions/Base64DecodingException;

    const-string/jumbo v1, "decoding.divisible.four"

    invoke-direct {v0, v1}, Lcom/sun/org/apache/xml/internal/security/exceptions/Base64DecodingException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_13
    div-int/lit8 v2, v0, 0x4

    if-nez v2, :cond_1a

    new-array v0, v1, [B

    :cond_19
    return-object v0

    :cond_1a
    add-int/lit8 v0, v2, -0x1

    mul-int/lit8 v0, v0, 0x4

    add-int/lit8 v3, v2, -0x1

    mul-int/lit8 v3, v3, 0x3

    sget-object v4, base64Alphabet:[B

    add-int/lit8 v5, v0, 0x1

    aget-byte v0, p0, v0

    aget-byte v4, v4, v0

    sget-object v0, base64Alphabet:[B

    add-int/lit8 v6, v5, 0x1

    aget-byte v5, p0, v5

    aget-byte v5, v0, v5

    if-eq v4, v10, :cond_36

    if-ne v5, v10, :cond_3f

    :cond_36
    new-instance v0, Lcom/sun/org/apache/xml/internal/security/exceptions/Base64DecodingException;

    const-string/jumbo v1, "decoding.general"

    invoke-direct {v0, v1}, Lcom/sun/org/apache/xml/internal/security/exceptions/Base64DecodingException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_3f
    sget-object v0, base64Alphabet:[B

    add-int/lit8 v7, v6, 0x1

    aget-byte v6, p0, v6

    aget-byte v8, v0, v6

    sget-object v0, base64Alphabet:[B

    add-int/lit8 v9, v7, 0x1

    aget-byte v7, p0, v7

    aget-byte v9, v0, v7

    if-eq v8, v10, :cond_53

    if-ne v9, v10, :cond_ec

    :cond_53
    invoke-static {v6}, isPad(B)Z

    move-result v0

    if-eqz v0, :cond_af

    invoke-static {v7}, isPad(B)Z

    move-result v0

    if-eqz v0, :cond_af

    and-int/lit8 v0, v5, 0xf

    if-eqz v0, :cond_6c

    new-instance v0, Lcom/sun/org/apache/xml/internal/security/exceptions/Base64DecodingException;

    const-string/jumbo v1, "decoding.general"

    invoke-direct {v0, v1}, Lcom/sun/org/apache/xml/internal/security/exceptions/Base64DecodingException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_6c
    add-int/lit8 v0, v3, 0x1

    new-array v0, v0, [B

    shl-int/lit8 v4, v4, 0x2

    shr-int/lit8 v5, v5, 0x4

    or-int/2addr v4, v5

    int-to-byte v4, v4

    aput-byte v4, v0, v3

    :goto_78
    add-int/lit8 v2, v2, -0x1

    move v3, v2

    move v2, v1

    :goto_7c
    if-lez v3, :cond_19

    sget-object v4, base64Alphabet:[B

    add-int/lit8 v5, v1, 0x1

    aget-byte v1, p0, v1

    aget-byte v4, v4, v1

    sget-object v1, base64Alphabet:[B

    add-int/lit8 v6, v5, 0x1

    aget-byte v5, p0, v5

    aget-byte v5, v1, v5

    sget-object v1, base64Alphabet:[B

    add-int/lit8 v7, v6, 0x1

    aget-byte v6, p0, v6

    aget-byte v6, v1, v6

    sget-object v8, base64Alphabet:[B

    add-int/lit8 v1, v7, 0x1

    aget-byte v7, p0, v7

    aget-byte v7, v8, v7

    if-eq v4, v10, :cond_a6

    if-eq v5, v10, :cond_a6

    if-eq v6, v10, :cond_a6

    if-ne v7, v10, :cond_112

    :cond_a6
    new-instance v0, Lcom/sun/org/apache/xml/internal/security/exceptions/Base64DecodingException;

    const-string/jumbo v1, "decoding.general"

    invoke-direct {v0, v1}, Lcom/sun/org/apache/xml/internal/security/exceptions/Base64DecodingException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_af
    invoke-static {v6}, isPad(B)Z

    move-result v0

    if-nez v0, :cond_e3

    invoke-static {v7}, isPad(B)Z

    move-result v0

    if-eqz v0, :cond_e3

    and-int/lit8 v0, v8, 0x3

    if-eqz v0, :cond_c8

    new-instance v0, Lcom/sun/org/apache/xml/internal/security/exceptions/Base64DecodingException;

    const-string/jumbo v1, "decoding.general"

    invoke-direct {v0, v1}, Lcom/sun/org/apache/xml/internal/security/exceptions/Base64DecodingException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_c8
    add-int/lit8 v0, v3, 0x2

    new-array v0, v0, [B

    add-int/lit8 v6, v3, 0x1

    shl-int/lit8 v4, v4, 0x2

    shr-int/lit8 v7, v5, 0x4

    or-int/2addr v4, v7

    int-to-byte v4, v4

    aput-byte v4, v0, v3

    and-int/lit8 v3, v5, 0xf

    shl-int/lit8 v3, v3, 0x4

    shr-int/lit8 v4, v8, 0x2

    and-int/lit8 v4, v4, 0xf

    or-int/2addr v3, v4

    int-to-byte v3, v3

    aput-byte v3, v0, v6

    goto :goto_78

    :cond_e3
    new-instance v0, Lcom/sun/org/apache/xml/internal/security/exceptions/Base64DecodingException;

    const-string/jumbo v1, "decoding.general"

    invoke-direct {v0, v1}, Lcom/sun/org/apache/xml/internal/security/exceptions/Base64DecodingException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_ec
    add-int/lit8 v0, v3, 0x3

    new-array v0, v0, [B

    add-int/lit8 v6, v3, 0x1

    shl-int/lit8 v4, v4, 0x2

    shr-int/lit8 v7, v5, 0x4

    or-int/2addr v4, v7

    int-to-byte v4, v4

    aput-byte v4, v0, v3

    add-int/lit8 v3, v6, 0x1

    and-int/lit8 v4, v5, 0xf

    shl-int/lit8 v4, v4, 0x4

    shr-int/lit8 v5, v8, 0x2

    and-int/lit8 v5, v5, 0xf

    or-int/2addr v4, v5

    int-to-byte v4, v4

    aput-byte v4, v0, v6

    add-int/lit8 v4, v3, 0x1

    shl-int/lit8 v4, v8, 0x6

    or-int/2addr v4, v9

    int-to-byte v4, v4

    aput-byte v4, v0, v3

    goto/16 :goto_78

    :cond_112
    add-int/lit8 v8, v2, 0x1

    shl-int/lit8 v4, v4, 0x2

    shr-int/lit8 v9, v5, 0x4

    or-int/2addr v4, v9

    int-to-byte v4, v4

    aput-byte v4, v0, v2

    add-int/lit8 v4, v8, 0x1

    and-int/lit8 v2, v5, 0xf

    shl-int/lit8 v2, v2, 0x4

    shr-int/lit8 v5, v6, 0x2

    and-int/lit8 v5, v5, 0xf

    or-int/2addr v2, v5

    int-to-byte v2, v2

    aput-byte v2, v0, v8

    add-int/lit8 v2, v4, 0x1

    shl-int/lit8 v5, v6, 0x6

    or-int/2addr v5, v7

    int-to-byte v5, v5

    aput-byte v5, v0, v4

    add-int/lit8 v3, v3, -0x1

    goto/16 :goto_7c
.end method

.method public static encode(Ljava/math/BigInteger;)Ljava/lang/String;
    .registers 2

    invoke-virtual {p0}, Ljava/math/BigInteger;->bitLength()I

    move-result v0

    invoke-static {p0, v0}, getBytes(Ljava/math/BigInteger;I)[B

    move-result-object v0

    invoke-static {v0}, encode([B)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static encode([B)Ljava/lang/String;
    .registers 2

    const/16 v0, 0x4c

    invoke-static {p0, v0}, encode([BI)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static encode([BI)Ljava/lang/String;
    .registers 20

    const/4 v1, 0x4

    move/from16 v0, p1

    if-ge v0, v1, :cond_8

    const p1, 0x7fffffff

    :cond_8
    if-nez p0, :cond_c

    const/4 v1, 0x0

    :goto_b
    return-object v1

    :cond_c
    move-object/from16 v0, p0

    array-length v1, v0

    mul-int/lit8 v1, v1, 0x8

    if-nez v1, :cond_16

    const-string v1, ""

    goto :goto_b

    :cond_16
    rem-int/lit8 v10, v1, 0x18

    div-int/lit8 v2, v1, 0x18

    if-eqz v10, :cond_95

    add-int/lit8 v1, v2, 0x1

    :goto_1e
    div-int/lit8 v3, p1, 0x4

    add-int/lit8 v4, v1, -0x1

    div-int v11, v4, v3

    mul-int/lit8 v1, v1, 0x4

    add-int/2addr v1, v11

    new-array v12, v1, [C

    const/4 v4, 0x0

    const/4 v3, 0x0

    const/4 v6, 0x0

    const/4 v1, 0x0

    move v9, v1

    move v1, v6

    :goto_2f
    if-ge v9, v11, :cond_1af

    const/4 v5, 0x0

    move v6, v1

    move v8, v4

    :goto_34
    const/16 v1, 0x13

    if-ge v5, v1, :cond_ab

    add-int/lit8 v1, v3, 0x1

    aget-byte v3, p0, v3

    add-int/lit8 v4, v1, 0x1

    aget-byte v13, p0, v1

    add-int/lit8 v7, v4, 0x1

    aget-byte v14, p0, v4

    and-int/lit8 v1, v13, 0xf

    int-to-byte v15, v1

    and-int/lit8 v1, v3, 0x3

    int-to-byte v0, v1

    move/from16 v16, v0

    and-int/lit8 v1, v3, -0x80

    if-nez v1, :cond_97

    shr-int/lit8 v1, v3, 0x2

    int-to-byte v1, v1

    move v4, v1

    :goto_54
    and-int/lit8 v1, v13, -0x80

    if-nez v1, :cond_9e

    shr-int/lit8 v1, v13, 0x4

    int-to-byte v1, v1

    move v3, v1

    :goto_5c
    and-int/lit8 v1, v14, -0x80

    if-nez v1, :cond_a5

    shr-int/lit8 v1, v14, 0x6

    int-to-byte v1, v1

    :goto_63
    add-int/lit8 v13, v8, 0x1

    sget-object v17, lookUpBase64Alphabet:[C

    aget-char v4, v17, v4

    aput-char v4, v12, v8

    add-int/lit8 v4, v13, 0x1

    sget-object v8, lookUpBase64Alphabet:[C

    shl-int/lit8 v16, v16, 0x4

    or-int v3, v3, v16

    aget-char v3, v8, v3

    aput-char v3, v12, v13

    add-int/lit8 v3, v4, 0x1

    sget-object v8, lookUpBase64Alphabet:[C

    shl-int/lit8 v13, v15, 0x2

    or-int/2addr v1, v13

    aget-char v1, v8, v1

    aput-char v1, v12, v4

    add-int/lit8 v4, v3, 0x1

    sget-object v1, lookUpBase64Alphabet:[C

    and-int/lit8 v8, v14, 0x3f

    aget-char v1, v1, v8

    aput-char v1, v12, v3

    add-int/lit8 v3, v6, 0x1

    add-int/lit8 v1, v5, 0x1

    move v5, v1

    move v6, v3

    move v8, v4

    move v3, v7

    goto :goto_34

    :cond_95
    move v1, v2

    goto :goto_1e

    :cond_97
    shr-int/lit8 v1, v3, 0x2

    xor-int/lit16 v1, v1, 0xc0

    int-to-byte v1, v1

    move v4, v1

    goto :goto_54

    :cond_9e
    shr-int/lit8 v1, v13, 0x4

    xor-int/lit16 v1, v1, 0xf0

    int-to-byte v1, v1

    move v3, v1

    goto :goto_5c

    :cond_a5
    shr-int/lit8 v1, v14, 0x6

    xor-int/lit16 v1, v1, 0xfc

    int-to-byte v1, v1

    goto :goto_63

    :cond_ab
    add-int/lit8 v4, v8, 0x1

    const/16 v1, 0xa

    aput-char v1, v12, v8

    add-int/lit8 v1, v9, 0x1

    move v9, v1

    move v1, v6

    goto/16 :goto_2f

    :goto_b7
    if-ge v5, v2, :cond_124

    add-int/lit8 v3, v1, 0x1

    aget-byte v1, p0, v1

    add-int/lit8 v4, v3, 0x1

    aget-byte v3, p0, v3

    add-int/lit8 v6, v4, 0x1

    aget-byte v8, p0, v4

    and-int/lit8 v4, v3, 0xf

    int-to-byte v9, v4

    and-int/lit8 v4, v1, 0x3

    int-to-byte v11, v4

    and-int/lit8 v4, v1, -0x80

    if-nez v4, :cond_110

    shr-int/lit8 v1, v1, 0x2

    int-to-byte v1, v1

    move v4, v1

    :goto_d3
    and-int/lit8 v1, v3, -0x80

    if-nez v1, :cond_117

    shr-int/lit8 v1, v3, 0x4

    int-to-byte v1, v1

    move v3, v1

    :goto_db
    and-int/lit8 v1, v8, -0x80

    if-nez v1, :cond_11e

    shr-int/lit8 v1, v8, 0x6

    int-to-byte v1, v1

    :goto_e2
    add-int/lit8 v13, v7, 0x1

    sget-object v14, lookUpBase64Alphabet:[C

    aget-char v4, v14, v4

    aput-char v4, v12, v7

    add-int/lit8 v4, v13, 0x1

    sget-object v7, lookUpBase64Alphabet:[C

    shl-int/lit8 v11, v11, 0x4

    or-int/2addr v3, v11

    aget-char v3, v7, v3

    aput-char v3, v12, v13

    add-int/lit8 v7, v4, 0x1

    sget-object v3, lookUpBase64Alphabet:[C

    shl-int/lit8 v9, v9, 0x2

    or-int/2addr v1, v9

    aget-char v1, v3, v1

    aput-char v1, v12, v4

    add-int/lit8 v3, v7, 0x1

    sget-object v1, lookUpBase64Alphabet:[C

    and-int/lit8 v4, v8, 0x3f

    aget-char v1, v1, v4

    aput-char v1, v12, v7

    add-int/lit8 v1, v5, 0x1

    move v5, v1

    move v7, v3

    move v1, v6

    goto :goto_b7

    :cond_110
    shr-int/lit8 v1, v1, 0x2

    xor-int/lit16 v1, v1, 0xc0

    int-to-byte v1, v1

    move v4, v1

    goto :goto_d3

    :cond_117
    shr-int/lit8 v1, v3, 0x4

    xor-int/lit16 v1, v1, 0xf0

    int-to-byte v1, v1

    move v3, v1

    goto :goto_db

    :cond_11e
    shr-int/lit8 v1, v8, 0x6

    xor-int/lit16 v1, v1, 0xfc

    int-to-byte v1, v1

    goto :goto_e2

    :cond_124
    const/16 v2, 0x8

    if-ne v10, v2, :cond_15f

    aget-byte v1, p0, v1

    and-int/lit8 v2, v1, 0x3

    int-to-byte v2, v2

    and-int/lit8 v3, v1, -0x80

    if-nez v3, :cond_159

    shr-int/lit8 v1, v1, 0x2

    int-to-byte v1, v1

    :goto_134
    add-int/lit8 v3, v7, 0x1

    sget-object v4, lookUpBase64Alphabet:[C

    aget-char v1, v4, v1

    aput-char v1, v12, v7

    add-int/lit8 v1, v3, 0x1

    sget-object v4, lookUpBase64Alphabet:[C

    shl-int/lit8 v2, v2, 0x4

    aget-char v2, v4, v2

    aput-char v2, v12, v3

    add-int/lit8 v2, v1, 0x1

    const/16 v3, 0x3d

    aput-char v3, v12, v1

    add-int/lit8 v1, v2, 0x1

    const/16 v1, 0x3d

    aput-char v1, v12, v2

    :cond_152
    :goto_152
    new-instance v1, Ljava/lang/String;

    invoke-direct {v1, v12}, Ljava/lang/String;-><init>([C)V

    goto/16 :goto_b

    :cond_159
    shr-int/lit8 v1, v1, 0x2

    xor-int/lit16 v1, v1, 0xc0

    int-to-byte v1, v1

    goto :goto_134

    :cond_15f
    const/16 v2, 0x10

    if-ne v10, v2, :cond_152

    aget-byte v2, p0, v1

    add-int/lit8 v1, v1, 0x1

    aget-byte v3, p0, v1

    and-int/lit8 v1, v3, 0xf

    int-to-byte v4, v1

    and-int/lit8 v1, v2, 0x3

    int-to-byte v5, v1

    and-int/lit8 v1, v2, -0x80

    if-nez v1, :cond_1a2

    shr-int/lit8 v1, v2, 0x2

    int-to-byte v1, v1

    move v2, v1

    :goto_177
    and-int/lit8 v1, v3, -0x80

    if-nez v1, :cond_1a9

    shr-int/lit8 v1, v3, 0x4

    int-to-byte v1, v1

    :goto_17e
    add-int/lit8 v3, v7, 0x1

    sget-object v6, lookUpBase64Alphabet:[C

    aget-char v2, v6, v2

    aput-char v2, v12, v7

    add-int/lit8 v2, v3, 0x1

    sget-object v6, lookUpBase64Alphabet:[C

    shl-int/lit8 v5, v5, 0x4

    or-int/2addr v1, v5

    aget-char v1, v6, v1

    aput-char v1, v12, v3

    add-int/lit8 v1, v2, 0x1

    sget-object v3, lookUpBase64Alphabet:[C

    shl-int/lit8 v4, v4, 0x2

    aget-char v3, v3, v4

    aput-char v3, v12, v2

    add-int/lit8 v2, v1, 0x1

    const/16 v2, 0x3d

    aput-char v2, v12, v1

    goto :goto_152

    :cond_1a2
    shr-int/lit8 v1, v2, 0x2

    xor-int/lit16 v1, v1, 0xc0

    int-to-byte v1, v1

    move v2, v1

    goto :goto_177

    :cond_1a9
    shr-int/lit8 v1, v3, 0x4

    xor-int/lit16 v1, v1, 0xf0

    int-to-byte v1, v1

    goto :goto_17e

    :cond_1af
    move v5, v1

    move v7, v4

    move v1, v3

    goto/16 :goto_b7
.end method

.method public static encode(Ljava/math/BigInteger;I)[B
    .registers 7

    add-int/lit8 v0, p1, 0x7

    shr-int/lit8 v0, v0, 0x3

    shl-int/lit8 v3, v0, 0x3

    invoke-virtual {p0}, Ljava/math/BigInteger;->bitLength()I

    move-result v0

    if-ge v3, v0, :cond_19

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "utils.Base64.IllegalBitlength"

    invoke-static {v1}, Lcom/sun/org/apache/xml/internal/security/utils/I18n;->translate(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_19
    invoke-virtual {p0}, Ljava/math/BigInteger;->toByteArray()[B

    move-result-object v2

    invoke-virtual {p0}, Ljava/math/BigInteger;->bitLength()I

    move-result v0

    rem-int/lit8 v0, v0, 0x8

    if-eqz v0, :cond_33

    invoke-virtual {p0}, Ljava/math/BigInteger;->bitLength()I

    move-result v0

    div-int/lit8 v0, v0, 0x8

    add-int/lit8 v0, v0, 0x1

    div-int/lit8 v1, v3, 0x8

    if-ne v0, v1, :cond_33

    move-object v0, v2

    :goto_32
    return-object v0

    :cond_33
    const/4 v1, 0x0

    array-length v0, v2

    invoke-virtual {p0}, Ljava/math/BigInteger;->bitLength()I

    move-result v4

    rem-int/lit8 v4, v4, 0x8

    if-nez v4, :cond_40

    const/4 v1, 0x1

    add-int/lit8 v0, v0, -0x1

    :cond_40
    div-int/lit8 v4, v3, 0x8

    sub-int/2addr v4, v0

    div-int/lit8 v3, v3, 0x8

    new-array v3, v3, [B

    invoke-static {v2, v1, v3, v4, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    move-object v0, v3

    goto :goto_32
.end method

.method public static encodeToElement(Lorg/w3c/dom/Document;Ljava/lang/String;[B)Lorg/w3c/dom/Element;
    .registers 5

    invoke-static {p0, p1}, Lcom/sun/org/apache/xml/internal/security/utils/XMLUtils;->createElementInSignatureSpace(Lorg/w3c/dom/Document;Ljava/lang/String;)Lorg/w3c/dom/Element;

    move-result-object v0

    invoke-static {p2}, encode([B)Ljava/lang/String;

    move-result-object v1

    invoke-interface {p0, v1}, Lorg/w3c/dom/Document;->createTextNode(Ljava/lang/String;)Lorg/w3c/dom/Text;

    move-result-object v1

    invoke-interface {v0, v1}, Lorg/w3c/dom/Node;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    return-object v0
.end method

.method public static fillElementWithBigInteger(Lorg/w3c/dom/Element;Ljava/math/BigInteger;)V
    .registers 5

    invoke-static {p1}, encode(Ljava/math/BigInteger;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v2, 0x4c

    if-le v1, v2, :cond_25

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    const-string v2, "\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v1, "\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    :cond_25
    invoke-interface {p0}, Lorg/w3c/dom/Node;->getOwnerDocument()Lorg/w3c/dom/Document;

    move-result-object v1

    invoke-interface {v1, v0}, Lorg/w3c/dom/Document;->createTextNode(Ljava/lang/String;)Lorg/w3c/dom/Text;

    move-result-object v0

    invoke-interface {p0, v0}, Lorg/w3c/dom/Node;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    return-void
.end method

.method static getBytes(Ljava/math/BigInteger;I)[B
    .registers 7

    add-int/lit8 v0, p1, 0x7

    shr-int/lit8 v0, v0, 0x3

    shl-int/lit8 v3, v0, 0x3

    invoke-virtual {p0}, Ljava/math/BigInteger;->bitLength()I

    move-result v0

    if-ge v3, v0, :cond_19

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "utils.Base64.IllegalBitlength"

    invoke-static {v1}, Lcom/sun/org/apache/xml/internal/security/utils/I18n;->translate(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_19
    invoke-virtual {p0}, Ljava/math/BigInteger;->toByteArray()[B

    move-result-object v2

    invoke-virtual {p0}, Ljava/math/BigInteger;->bitLength()I

    move-result v0

    rem-int/lit8 v0, v0, 0x8

    if-eqz v0, :cond_33

    invoke-virtual {p0}, Ljava/math/BigInteger;->bitLength()I

    move-result v0

    div-int/lit8 v0, v0, 0x8

    add-int/lit8 v0, v0, 0x1

    div-int/lit8 v1, v3, 0x8

    if-ne v0, v1, :cond_33

    move-object v0, v2

    :goto_32
    return-object v0

    :cond_33
    const/4 v1, 0x0

    array-length v0, v2

    invoke-virtual {p0}, Ljava/math/BigInteger;->bitLength()I

    move-result v4

    rem-int/lit8 v4, v4, 0x8

    if-nez v4, :cond_40

    const/4 v1, 0x1

    add-int/lit8 v0, v0, -0x1

    :cond_40
    div-int/lit8 v4, v3, 0x8

    sub-int/2addr v4, v0

    div-int/lit8 v3, v3, 0x8

    new-array v3, v3, [B

    invoke-static {v2, v1, v3, v4, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    move-object v0, v3

    goto :goto_32
.end method

.method protected static final isPad(B)Z
    .registers 2

    const/16 v0, 0x3d

    if-ne p0, v0, :cond_6

    const/4 v0, 0x1

    :goto_5
    return v0

    :cond_6
    const/4 v0, 0x0

    goto :goto_5
.end method

.method protected static final isWhiteSpace(B)Z
    .registers 2

    const/16 v0, 0x20

    if-eq p0, v0, :cond_10

    const/16 v0, 0xd

    if-eq p0, v0, :cond_10

    const/16 v0, 0xa

    if-eq p0, v0, :cond_10

    const/16 v0, 0x9

    if-ne p0, v0, :cond_12

    :cond_10
    const/4 v0, 0x1

    :goto_11
    return v0

    :cond_12
    const/4 v0, 0x0

    goto :goto_11
.end method

.method public static main([Ljava/lang/String;)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    invoke-static {}, Ljavax/xml/parsers/DocumentBuilderFactory;->newInstance()Ljavax/xml/parsers/DocumentBuilderFactory;

    move-result-object v0

    invoke-virtual {v0}, Ljavax/xml/parsers/DocumentBuilderFactory;->newDocumentBuilder()Ljavax/xml/parsers/DocumentBuilder;

    move-result-object v0

    const-string v1, "<container><base64 value=\"Should be \'Hallo\'\">SGFsbG8=</base64></container>"

    new-instance v2, Lorg/xml/sax/InputSource;

    new-instance v3, Ljava/io/StringReader;

    invoke-direct {v3, v1}, Ljava/io/StringReader;-><init>(Ljava/lang/String;)V

    invoke-direct {v2, v3}, Lorg/xml/sax/InputSource;-><init>(Ljava/io/Reader;)V

    invoke-virtual {v0, v2}, Ljavax/xml/parsers/DocumentBuilder;->parse(Lorg/xml/sax/InputSource;)Lorg/w3c/dom/Document;

    move-result-object v0

    invoke-interface {v0}, Lorg/w3c/dom/Document;->getDocumentElement()Lorg/w3c/dom/Element;

    move-result-object v0

    invoke-interface {v0}, Lorg/w3c/dom/Node;->getChildNodes()Lorg/w3c/dom/NodeList;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v0

    check-cast v0, Lorg/w3c/dom/Element;

    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v2, Ljava/lang/String;

    invoke-static {v0}, decode(Lorg/w3c/dom/Element;)[B

    move-result-object v0

    invoke-direct {v2, v0}, Ljava/lang/String;-><init>([B)V

    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    return-void
.end method

.method protected static removeWhiteSpace([B)I
    .registers 6

    const/4 v1, 0x0

    if-nez p0, :cond_4

    :cond_3
    return v1

    :cond_4
    array-length v3, p0

    move v2, v1

    :goto_6
    if-ge v2, v3, :cond_3

    aget-byte v4, p0, v2

    invoke-static {v4}, isWhiteSpace(B)Z

    move-result v0

    if-nez v0, :cond_19

    add-int/lit8 v0, v1, 0x1

    aput-byte v4, p0, v1

    :goto_14
    add-int/lit8 v1, v2, 0x1

    move v2, v1

    move v1, v0

    goto :goto_6

    :cond_19
    move v0, v1

    goto :goto_14
.end method
