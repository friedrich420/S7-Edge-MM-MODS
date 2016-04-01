.class public Lcom/sun/org/apache/xml/internal/security/utils/JavaUtils;
.super Ljava/lang/Object;


# static fields
.field static class$com$sun$org$apache$xml$internal$security$utils$JavaUtils:Ljava/lang/Class;

.field static log:Ljava/util/logging/Logger;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    sget-object v0, class$com$sun$org$apache$xml$internal$security$utils$JavaUtils:Ljava/lang/Class;

    if-nez v0, :cond_17

    const-string v0, "com.sun.org.apache.xml.internal.security.utils.JavaUtils"

    invoke-static {v0}, class$(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    sput-object v0, class$com$sun$org$apache$xml$internal$security$utils$JavaUtils:Ljava/lang/Class;

    :goto_c
    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sput-object v0, log:Ljava/util/logging/Logger;

    return-void

    :cond_17
    sget-object v0, class$com$sun$org$apache$xml$internal$security$utils$JavaUtils:Ljava/lang/Class;

    goto :goto_c
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

.method public static getBytesFromFile(Ljava/lang/String;)[B
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;,
            Ljava/io/IOException;
        }
    .end annotation

    new-instance v0, Ljava/io/FileInputStream;

    invoke-direct {v0, p0}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    new-instance v1, Lcom/sun/org/apache/xml/internal/security/utils/UnsyncByteArrayOutputStream;

    invoke-direct {v1}, Lcom/sun/org/apache/xml/internal/security/utils/UnsyncByteArrayOutputStream;-><init>()V

    const/16 v2, 0x400

    new-array v2, v2, [B

    :goto_e
    invoke-virtual {v0, v2}, Ljava/io/FileInputStream;->read([B)I

    move-result v3

    if-lez v3, :cond_19

    const/4 v4, 0x0

    invoke-virtual {v1, v2, v4, v3}, Lcom/sun/org/apache/xml/internal/security/utils/UnsyncByteArrayOutputStream;->write([BII)V

    goto :goto_e

    :cond_19
    invoke-virtual {v1}, Lcom/sun/org/apache/xml/internal/security/utils/UnsyncByteArrayOutputStream;->toByteArray()[B

    move-result-object v0

    return-object v0
.end method

.method public static getBytesFromStream(Ljava/io/InputStream;)[B
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    new-instance v0, Lcom/sun/org/apache/xml/internal/security/utils/UnsyncByteArrayOutputStream;

    invoke-direct {v0}, Lcom/sun/org/apache/xml/internal/security/utils/UnsyncByteArrayOutputStream;-><init>()V

    const/16 v1, 0x400

    new-array v1, v1, [B

    :goto_9
    invoke-virtual {p0, v1}, Ljava/io/InputStream;->read([B)I

    move-result v2

    if-lez v2, :cond_14

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v3, v2}, Lcom/sun/org/apache/xml/internal/security/utils/UnsyncByteArrayOutputStream;->write([BII)V

    goto :goto_9

    :cond_14
    invoke-virtual {v0}, Lcom/sun/org/apache/xml/internal/security/utils/UnsyncByteArrayOutputStream;->toByteArray()[B

    move-result-object v0

    return-object v0
.end method

.method public static writeBytesToFilename(Ljava/lang/String;[B)V
    .registers 5

    if-eqz p0, :cond_15

    if-eqz p1, :cond_15

    :try_start_4
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    new-instance v1, Ljava/io/FileOutputStream;

    invoke-direct {v1, v0}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    invoke-virtual {v1, p1}, Ljava/io/FileOutputStream;->write([B)V

    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V

    :cond_14
    :goto_14
    return-void

    :cond_15
    sget-object v0, log:Ljava/util/logging/Logger;

    sget-object v1, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    invoke-virtual {v0, v1}, Ljava/util/logging/Logger;->isLoggable(Ljava/util/logging/Level;)Z

    move-result v0

    if-eqz v0, :cond_14

    sget-object v0, log:Ljava/util/logging/Logger;

    sget-object v1, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    const-string/jumbo v2, "writeBytesToFilename got null byte[] pointed"

    invoke-virtual {v0, v1, v2}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;)V
    :try_end_29
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_29} :catch_2a

    goto :goto_14

    :catch_2a
    move-exception v0

    goto :goto_14
.end method
