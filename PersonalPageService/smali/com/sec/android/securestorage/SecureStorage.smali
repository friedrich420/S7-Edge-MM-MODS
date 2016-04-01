.class public Lcom/sec/android/securestorage/SecureStorage;
.super Ljava/lang/Object;
.source "SecureStorage.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/securestorage/SecureStorage$SecureStorageException;
    }
.end annotation


# static fields
.field private static final DOUBLE_SIZE:I = 0x8

.field private static final INTEGER_SIZE:I = 0x4

.field private static secureStorageJNI:Lcom/sec/android/securestorage/SecureStorageJNI;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 45
    invoke-static {}, Lcom/sec/android/securestorage/SecureStorageJNI;->getInstance()Lcom/sec/android/securestorage/SecureStorageJNI;

    move-result-object v0

    sput-object v0, Lcom/sec/android/securestorage/SecureStorage;->secureStorageJNI:Lcom/sec/android/securestorage/SecureStorageJNI;

    .line 46
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1975
    return-void
.end method

.method public static initialize()I
    .locals 1

    .prologue
    .line 1972
    sget-object v0, Lcom/sec/android/securestorage/SecureStorage;->secureStorageJNI:Lcom/sec/android/securestorage/SecureStorageJNI;

    invoke-virtual {v0}, Lcom/sec/android/securestorage/SecureStorageJNI;->initialize()I

    move-result v0

    return v0
.end method

.method public static isSupported()Z
    .locals 1

    .prologue
    .line 1959
    sget-object v0, Lcom/sec/android/securestorage/SecureStorage;->secureStorageJNI:Lcom/sec/android/securestorage/SecureStorageJNI;

    invoke-virtual {v0}, Lcom/sec/android/securestorage/SecureStorageJNI;->isSupported()Z

    move-result v0

    return v0
.end method

.method private throwException(Ljava/lang/String;)V
    .locals 2
    .param p1, "dataName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sec/android/securestorage/SecureStorage$SecureStorageException;
        }
    .end annotation

    .prologue
    .line 53
    if-nez p1, :cond_0

    .line 54
    new-instance v0, Lcom/sec/android/securestorage/SecureStorage$SecureStorageException;

    const-string v1, "Error: input data are incorrect"

    invoke-direct {v0, v1}, Lcom/sec/android/securestorage/SecureStorage$SecureStorageException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 56
    :cond_0
    return-void
.end method

.method private throwException(ZLjava/lang/String;)V
    .locals 1
    .param p1, "result"    # Z
    .param p2, "message"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sec/android/securestorage/SecureStorage$SecureStorageException;
        }
    .end annotation

    .prologue
    .line 59
    if-eqz p1, :cond_0

    .line 60
    new-instance v0, Lcom/sec/android/securestorage/SecureStorage$SecureStorageException;

    invoke-direct {v0, p2}, Lcom/sec/android/securestorage/SecureStorage$SecureStorageException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 62
    :cond_0
    return-void
.end method

.method private throwJNIException(Ljava/lang/String;)V
    .locals 1
    .param p1, "message"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sec/android/securestorage/SecureStorage$SecureStorageException;
        }
    .end annotation

    .prologue
    .line 49
    new-instance v0, Lcom/sec/android/securestorage/SecureStorage$SecureStorageException;

    invoke-direct {v0, p1}, Lcom/sec/android/securestorage/SecureStorage$SecureStorageException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static version()I
    .locals 1

    .prologue
    .line 1968
    sget-object v0, Lcom/sec/android/securestorage/SecureStorage;->secureStorageJNI:Lcom/sec/android/securestorage/SecureStorageJNI;

    invoke-virtual {v0}, Lcom/sec/android/securestorage/SecureStorageJNI;->getVersion()I

    move-result v0

    return v0
.end method


# virtual methods
.method public decrypt([B)[B
    .locals 6
    .param p1, "dataBlock"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sec/android/securestorage/SecureStorage$SecureStorageException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 1882
    if-nez p1, :cond_0

    move v2, v3

    :goto_0
    const-string v5, "Error: input data are incorrect"

    invoke-direct {p0, v2, v5}, Lcom/sec/android/securestorage/SecureStorage;->throwException(ZLjava/lang/String;)V

    .line 1883
    const/4 v1, 0x0

    .line 1886
    .local v1, "result":[B
    :try_start_0
    sget-object v2, Lcom/sec/android/securestorage/SecureStorage;->secureStorageJNI:Lcom/sec/android/securestorage/SecureStorageJNI;

    invoke-virtual {v2, p1}, Lcom/sec/android/securestorage/SecureStorageJNI;->decrypt([B)[B
    :try_end_0
    .catch Lcom/sec/android/securestorage/SecureStorageJNI$SecureStorageExceptionJNI; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 1891
    :goto_1
    if-nez v1, :cond_1

    :goto_2
    const-string v2, "Error: input data are incorrect"

    invoke-direct {p0, v3, v2}, Lcom/sec/android/securestorage/SecureStorage;->throwException(ZLjava/lang/String;)V

    .line 1892
    return-object v1

    .end local v1    # "result":[B
    :cond_0
    move v2, v4

    .line 1882
    goto :goto_0

    .line 1887
    .restart local v1    # "result":[B
    :catch_0
    move-exception v0

    .line 1888
    .local v0, "e":Lcom/sec/android/securestorage/SecureStorageJNI$SecureStorageExceptionJNI;
    invoke-virtual {v0}, Lcom/sec/android/securestorage/SecureStorageJNI$SecureStorageExceptionJNI;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/sec/android/securestorage/SecureStorage;->throwJNIException(Ljava/lang/String;)V

    goto :goto_1

    .end local v0    # "e":Lcom/sec/android/securestorage/SecureStorageJNI$SecureStorageExceptionJNI;
    :cond_1
    move v3, v4

    .line 1891
    goto :goto_2
.end method

.method public decrypt([BLjava/lang/String;)[B
    .locals 6
    .param p1, "dataBlock"    # [B
    .param p2, "password"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sec/android/securestorage/SecureStorage$SecureStorageException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 1912
    if-nez p1, :cond_0

    move v2, v3

    :goto_0
    const-string v5, "Error: input data are incorrect"

    invoke-direct {p0, v2, v5}, Lcom/sec/android/securestorage/SecureStorage;->throwException(ZLjava/lang/String;)V

    .line 1913
    if-nez p2, :cond_1

    move v2, v3

    :goto_1
    const-string v5, "Error: input data are incorrect"

    invoke-direct {p0, v2, v5}, Lcom/sec/android/securestorage/SecureStorage;->throwException(ZLjava/lang/String;)V

    .line 1914
    const/4 v1, 0x0

    .line 1917
    .local v1, "result":[B
    :try_start_0
    sget-object v2, Lcom/sec/android/securestorage/SecureStorage;->secureStorageJNI:Lcom/sec/android/securestorage/SecureStorageJNI;

    invoke-virtual {v2, p1, p2}, Lcom/sec/android/securestorage/SecureStorageJNI;->decrypt([BLjava/lang/String;)[B
    :try_end_0
    .catch Lcom/sec/android/securestorage/SecureStorageJNI$SecureStorageExceptionJNI; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 1922
    :goto_2
    if-nez v1, :cond_2

    :goto_3
    const-string v2, "Error: input data are incorrect"

    invoke-direct {p0, v3, v2}, Lcom/sec/android/securestorage/SecureStorage;->throwException(ZLjava/lang/String;)V

    .line 1923
    return-object v1

    .end local v1    # "result":[B
    :cond_0
    move v2, v4

    .line 1912
    goto :goto_0

    :cond_1
    move v2, v4

    .line 1913
    goto :goto_1

    .line 1918
    .restart local v1    # "result":[B
    :catch_0
    move-exception v0

    .line 1919
    .local v0, "e":Lcom/sec/android/securestorage/SecureStorageJNI$SecureStorageExceptionJNI;
    invoke-virtual {v0}, Lcom/sec/android/securestorage/SecureStorageJNI$SecureStorageExceptionJNI;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/sec/android/securestorage/SecureStorage;->throwJNIException(Ljava/lang/String;)V

    goto :goto_2

    .end local v0    # "e":Lcom/sec/android/securestorage/SecureStorageJNI$SecureStorageExceptionJNI;
    :cond_2
    move v3, v4

    .line 1922
    goto :goto_3
.end method

.method public delete(Ljava/lang/String;)Z
    .locals 4
    .param p1, "dataName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sec/android/securestorage/SecureStorage$SecureStorageException;
        }
    .end annotation

    .prologue
    .line 1939
    invoke-direct {p0, p1}, Lcom/sec/android/securestorage/SecureStorage;->throwException(Ljava/lang/String;)V

    .line 1940
    const/4 v1, 0x0

    .line 1943
    .local v1, "result":Z
    :try_start_0
    sget-object v2, Lcom/sec/android/securestorage/SecureStorage;->secureStorageJNI:Lcom/sec/android/securestorage/SecureStorageJNI;

    invoke-virtual {v2, p1}, Lcom/sec/android/securestorage/SecureStorageJNI;->delete(Ljava/lang/String;)Z
    :try_end_0
    .catch Lcom/sec/android/securestorage/SecureStorageJNI$SecureStorageExceptionJNI; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 1948
    :goto_0
    if-nez v1, :cond_0

    const/4 v2, 0x1

    :goto_1
    const-string v3, "Error: input data are incorrect"

    invoke-direct {p0, v2, v3}, Lcom/sec/android/securestorage/SecureStorage;->throwException(ZLjava/lang/String;)V

    .line 1949
    return v1

    .line 1944
    :catch_0
    move-exception v0

    .line 1945
    .local v0, "e":Lcom/sec/android/securestorage/SecureStorageJNI$SecureStorageExceptionJNI;
    invoke-virtual {v0}, Lcom/sec/android/securestorage/SecureStorageJNI$SecureStorageExceptionJNI;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/sec/android/securestorage/SecureStorage;->throwJNIException(Ljava/lang/String;)V

    goto :goto_0

    .line 1948
    .end local v0    # "e":Lcom/sec/android/securestorage/SecureStorageJNI$SecureStorageExceptionJNI;
    :cond_0
    const/4 v2, 0x0

    goto :goto_1
.end method

.method public encrypt([B)[B
    .locals 6
    .param p1, "dataBlock"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sec/android/securestorage/SecureStorage$SecureStorageException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 1825
    if-nez p1, :cond_0

    move v2, v3

    :goto_0
    const-string v5, "Error: input data are incorrect"

    invoke-direct {p0, v2, v5}, Lcom/sec/android/securestorage/SecureStorage;->throwException(ZLjava/lang/String;)V

    .line 1826
    const/4 v1, 0x0

    .line 1829
    .local v1, "result":[B
    :try_start_0
    sget-object v2, Lcom/sec/android/securestorage/SecureStorage;->secureStorageJNI:Lcom/sec/android/securestorage/SecureStorageJNI;

    invoke-virtual {v2, p1}, Lcom/sec/android/securestorage/SecureStorageJNI;->encrypt([B)[B
    :try_end_0
    .catch Lcom/sec/android/securestorage/SecureStorageJNI$SecureStorageExceptionJNI; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 1834
    :goto_1
    if-nez v1, :cond_1

    :goto_2
    const-string v2, "Error: internal error"

    invoke-direct {p0, v3, v2}, Lcom/sec/android/securestorage/SecureStorage;->throwException(ZLjava/lang/String;)V

    .line 1835
    return-object v1

    .end local v1    # "result":[B
    :cond_0
    move v2, v4

    .line 1825
    goto :goto_0

    .line 1830
    .restart local v1    # "result":[B
    :catch_0
    move-exception v0

    .line 1831
    .local v0, "e":Lcom/sec/android/securestorage/SecureStorageJNI$SecureStorageExceptionJNI;
    invoke-virtual {v0}, Lcom/sec/android/securestorage/SecureStorageJNI$SecureStorageExceptionJNI;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/sec/android/securestorage/SecureStorage;->throwJNIException(Ljava/lang/String;)V

    goto :goto_1

    .end local v0    # "e":Lcom/sec/android/securestorage/SecureStorageJNI$SecureStorageExceptionJNI;
    :cond_1
    move v3, v4

    .line 1834
    goto :goto_2
.end method

.method public encrypt([BLjava/lang/String;)[B
    .locals 6
    .param p1, "dataBlock"    # [B
    .param p2, "password"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sec/android/securestorage/SecureStorage$SecureStorageException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 1854
    if-nez p1, :cond_0

    move v2, v3

    :goto_0
    const-string v5, "Error: input data are incorrect"

    invoke-direct {p0, v2, v5}, Lcom/sec/android/securestorage/SecureStorage;->throwException(ZLjava/lang/String;)V

    .line 1855
    if-nez p2, :cond_1

    move v2, v3

    :goto_1
    const-string v5, "Error: input data are incorrect"

    invoke-direct {p0, v2, v5}, Lcom/sec/android/securestorage/SecureStorage;->throwException(ZLjava/lang/String;)V

    .line 1856
    const/4 v1, 0x0

    .line 1859
    .local v1, "result":[B
    :try_start_0
    sget-object v2, Lcom/sec/android/securestorage/SecureStorage;->secureStorageJNI:Lcom/sec/android/securestorage/SecureStorageJNI;

    invoke-virtual {v2, p1, p2}, Lcom/sec/android/securestorage/SecureStorageJNI;->encrypt([BLjava/lang/String;)[B
    :try_end_0
    .catch Lcom/sec/android/securestorage/SecureStorageJNI$SecureStorageExceptionJNI; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 1864
    :goto_2
    if-nez v1, :cond_2

    :goto_3
    const-string v2, "Error: internal error"

    invoke-direct {p0, v3, v2}, Lcom/sec/android/securestorage/SecureStorage;->throwException(ZLjava/lang/String;)V

    .line 1865
    return-object v1

    .end local v1    # "result":[B
    :cond_0
    move v2, v4

    .line 1854
    goto :goto_0

    :cond_1
    move v2, v4

    .line 1855
    goto :goto_1

    .line 1860
    .restart local v1    # "result":[B
    :catch_0
    move-exception v0

    .line 1861
    .local v0, "e":Lcom/sec/android/securestorage/SecureStorageJNI$SecureStorageExceptionJNI;
    invoke-virtual {v0}, Lcom/sec/android/securestorage/SecureStorageJNI$SecureStorageExceptionJNI;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/sec/android/securestorage/SecureStorage;->throwJNIException(Ljava/lang/String;)V

    goto :goto_2

    .end local v0    # "e":Lcom/sec/android/securestorage/SecureStorageJNI$SecureStorageExceptionJNI;
    :cond_2
    move v3, v4

    .line 1864
    goto :goto_3
.end method

.method public getBoolean(Ljava/lang/String;)Z
    .locals 4
    .param p1, "dataName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sec/android/securestorage/SecureStorage$SecureStorageException;
        }
    .end annotation

    .prologue
    .line 1754
    invoke-direct {p0, p1}, Lcom/sec/android/securestorage/SecureStorage;->throwException(Ljava/lang/String;)V

    .line 1755
    const/4 v1, 0x0

    .line 1758
    .local v1, "result":[B
    :try_start_0
    sget-object v2, Lcom/sec/android/securestorage/SecureStorage;->secureStorageJNI:Lcom/sec/android/securestorage/SecureStorageJNI;

    invoke-virtual {v2, p1}, Lcom/sec/android/securestorage/SecureStorageJNI;->get(Ljava/lang/String;)[B
    :try_end_0
    .catch Lcom/sec/android/securestorage/SecureStorageJNI$SecureStorageExceptionJNI; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 1763
    :goto_0
    if-nez v1, :cond_0

    const/4 v2, 0x1

    :goto_1
    const-string v3, "Error: input data are incorrect"

    invoke-direct {p0, v2, v3}, Lcom/sec/android/securestorage/SecureStorage;->throwException(ZLjava/lang/String;)V

    .line 1766
    :try_start_1
    new-instance v2, Ljava/lang/String;

    const-string v3, "UTF-8"

    invoke-direct {v2, v1, v3}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    invoke-static {v2}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z
    :try_end_1
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_1 .. :try_end_1} :catch_1

    move-result v2

    return v2

    .line 1759
    :catch_0
    move-exception v0

    .line 1760
    .local v0, "e":Lcom/sec/android/securestorage/SecureStorageJNI$SecureStorageExceptionJNI;
    invoke-virtual {v0}, Lcom/sec/android/securestorage/SecureStorageJNI$SecureStorageExceptionJNI;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/sec/android/securestorage/SecureStorage;->throwJNIException(Ljava/lang/String;)V

    goto :goto_0

    .line 1763
    .end local v0    # "e":Lcom/sec/android/securestorage/SecureStorageJNI$SecureStorageExceptionJNI;
    :cond_0
    const/4 v2, 0x0

    goto :goto_1

    .line 1768
    :catch_1
    move-exception v0

    .line 1771
    .local v0, "e":Ljava/io/UnsupportedEncodingException;
    new-instance v2, Ljava/lang/RuntimeException;

    invoke-direct {v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v2
.end method

.method public getBoolean(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 6
    .param p1, "dataName"    # Ljava/lang/String;
    .param p2, "password"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sec/android/securestorage/SecureStorage$SecureStorageException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 1790
    invoke-direct {p0, p1}, Lcom/sec/android/securestorage/SecureStorage;->throwException(Ljava/lang/String;)V

    .line 1791
    if-nez p2, :cond_0

    move v2, v3

    :goto_0
    const-string v5, "Error: input data are incorrect"

    invoke-direct {p0, v2, v5}, Lcom/sec/android/securestorage/SecureStorage;->throwException(ZLjava/lang/String;)V

    .line 1792
    const/4 v1, 0x0

    .line 1795
    .local v1, "result":[B
    :try_start_0
    sget-object v2, Lcom/sec/android/securestorage/SecureStorage;->secureStorageJNI:Lcom/sec/android/securestorage/SecureStorageJNI;

    invoke-virtual {v2, p1, p2}, Lcom/sec/android/securestorage/SecureStorageJNI;->get(Ljava/lang/String;Ljava/lang/String;)[B
    :try_end_0
    .catch Lcom/sec/android/securestorage/SecureStorageJNI$SecureStorageExceptionJNI; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 1800
    :goto_1
    if-nez v1, :cond_1

    :goto_2
    const-string v2, "Error: input data are incorrect"

    invoke-direct {p0, v3, v2}, Lcom/sec/android/securestorage/SecureStorage;->throwException(ZLjava/lang/String;)V

    .line 1803
    :try_start_1
    new-instance v2, Ljava/lang/String;

    const-string v3, "UTF-8"

    invoke-direct {v2, v1, v3}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    invoke-static {v2}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z
    :try_end_1
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_1 .. :try_end_1} :catch_1

    move-result v2

    return v2

    .end local v1    # "result":[B
    :cond_0
    move v2, v4

    .line 1791
    goto :goto_0

    .line 1796
    .restart local v1    # "result":[B
    :catch_0
    move-exception v0

    .line 1797
    .local v0, "e":Lcom/sec/android/securestorage/SecureStorageJNI$SecureStorageExceptionJNI;
    invoke-virtual {v0}, Lcom/sec/android/securestorage/SecureStorageJNI$SecureStorageExceptionJNI;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/sec/android/securestorage/SecureStorage;->throwJNIException(Ljava/lang/String;)V

    goto :goto_1

    .end local v0    # "e":Lcom/sec/android/securestorage/SecureStorageJNI$SecureStorageExceptionJNI;
    :cond_1
    move v3, v4

    .line 1800
    goto :goto_2

    .line 1805
    :catch_1
    move-exception v0

    .line 1808
    .local v0, "e":Ljava/io/UnsupportedEncodingException;
    new-instance v2, Ljava/lang/RuntimeException;

    invoke-direct {v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v2
.end method

.method public getBooleanArray(Ljava/lang/String;)[Z
    .locals 8
    .param p1, "dataName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sec/android/securestorage/SecureStorage$SecureStorageException;
        }
    .end annotation

    .prologue
    const/4 v6, 0x0

    const/4 v5, 0x1

    .line 1682
    invoke-direct {p0, p1}, Lcom/sec/android/securestorage/SecureStorage;->throwException(Ljava/lang/String;)V

    .line 1683
    const/4 v3, 0x0

    .line 1686
    .local v3, "result":[B
    :try_start_0
    sget-object v4, Lcom/sec/android/securestorage/SecureStorage;->secureStorageJNI:Lcom/sec/android/securestorage/SecureStorageJNI;

    invoke-virtual {v4, p1}, Lcom/sec/android/securestorage/SecureStorageJNI;->get(Ljava/lang/String;)[B
    :try_end_0
    .catch Lcom/sec/android/securestorage/SecureStorageJNI$SecureStorageExceptionJNI; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    .line 1691
    :goto_0
    if-nez v3, :cond_0

    move v4, v5

    :goto_1
    const-string v7, "Error: input data are incorrect"

    invoke-direct {p0, v4, v7}, Lcom/sec/android/securestorage/SecureStorage;->throwException(ZLjava/lang/String;)V

    .line 1692
    array-length v4, v3

    new-array v2, v4, [Z

    .line 1693
    .local v2, "publicText":[Z
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_2
    array-length v4, v2

    if-ge v1, v4, :cond_2

    .line 1694
    aget-byte v4, v3, v1

    if-ne v4, v5, :cond_1

    .line 1695
    aput-boolean v5, v2, v1

    .line 1693
    :goto_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 1687
    .end local v1    # "i":I
    .end local v2    # "publicText":[Z
    :catch_0
    move-exception v0

    .line 1688
    .local v0, "e":Lcom/sec/android/securestorage/SecureStorageJNI$SecureStorageExceptionJNI;
    invoke-virtual {v0}, Lcom/sec/android/securestorage/SecureStorageJNI$SecureStorageExceptionJNI;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/sec/android/securestorage/SecureStorage;->throwJNIException(Ljava/lang/String;)V

    goto :goto_0

    .end local v0    # "e":Lcom/sec/android/securestorage/SecureStorageJNI$SecureStorageExceptionJNI;
    :cond_0
    move v4, v6

    .line 1691
    goto :goto_1

    .line 1697
    .restart local v1    # "i":I
    .restart local v2    # "publicText":[Z
    :cond_1
    aput-boolean v6, v2, v1

    goto :goto_3

    .line 1700
    :cond_2
    return-object v2
.end method

.method public getBooleanArray(Ljava/lang/String;Ljava/lang/String;)[Z
    .locals 8
    .param p1, "dataName"    # Ljava/lang/String;
    .param p2, "password"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sec/android/securestorage/SecureStorage$SecureStorageException;
        }
    .end annotation

    .prologue
    const/4 v6, 0x0

    const/4 v5, 0x1

    .line 1719
    invoke-direct {p0, p1}, Lcom/sec/android/securestorage/SecureStorage;->throwException(Ljava/lang/String;)V

    .line 1720
    if-nez p2, :cond_0

    move v4, v5

    :goto_0
    const-string v7, "Error: input data are incorrect"

    invoke-direct {p0, v4, v7}, Lcom/sec/android/securestorage/SecureStorage;->throwException(ZLjava/lang/String;)V

    .line 1721
    const/4 v3, 0x0

    .line 1724
    .local v3, "result":[B
    :try_start_0
    sget-object v4, Lcom/sec/android/securestorage/SecureStorage;->secureStorageJNI:Lcom/sec/android/securestorage/SecureStorageJNI;

    invoke-virtual {v4, p1, p2}, Lcom/sec/android/securestorage/SecureStorageJNI;->get(Ljava/lang/String;Ljava/lang/String;)[B
    :try_end_0
    .catch Lcom/sec/android/securestorage/SecureStorageJNI$SecureStorageExceptionJNI; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    .line 1729
    :goto_1
    if-nez v3, :cond_1

    move v4, v5

    :goto_2
    const-string v7, "Error: input data are incorrect"

    invoke-direct {p0, v4, v7}, Lcom/sec/android/securestorage/SecureStorage;->throwException(ZLjava/lang/String;)V

    .line 1730
    array-length v4, v3

    new-array v2, v4, [Z

    .line 1731
    .local v2, "publicText":[Z
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_3
    array-length v4, v2

    if-ge v1, v4, :cond_3

    .line 1732
    aget-byte v4, v3, v1

    if-ne v4, v5, :cond_2

    .line 1733
    aput-boolean v5, v2, v1

    .line 1731
    :goto_4
    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    .end local v1    # "i":I
    .end local v2    # "publicText":[Z
    .end local v3    # "result":[B
    :cond_0
    move v4, v6

    .line 1720
    goto :goto_0

    .line 1725
    .restart local v3    # "result":[B
    :catch_0
    move-exception v0

    .line 1726
    .local v0, "e":Lcom/sec/android/securestorage/SecureStorageJNI$SecureStorageExceptionJNI;
    invoke-virtual {v0}, Lcom/sec/android/securestorage/SecureStorageJNI$SecureStorageExceptionJNI;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/sec/android/securestorage/SecureStorage;->throwJNIException(Ljava/lang/String;)V

    goto :goto_1

    .end local v0    # "e":Lcom/sec/android/securestorage/SecureStorageJNI$SecureStorageExceptionJNI;
    :cond_1
    move v4, v6

    .line 1729
    goto :goto_2

    .line 1735
    .restart local v1    # "i":I
    .restart local v2    # "publicText":[Z
    :cond_2
    aput-boolean v6, v2, v1

    goto :goto_4

    .line 1738
    :cond_3
    return-object v2
.end method

.method public getByte(Ljava/lang/String;)B
    .locals 5
    .param p1, "dataName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sec/android/securestorage/SecureStorage$SecureStorageException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    .line 1156
    invoke-direct {p0, p1}, Lcom/sec/android/securestorage/SecureStorage;->throwException(Ljava/lang/String;)V

    .line 1157
    const/4 v1, 0x0

    .line 1160
    .local v1, "result":[B
    :try_start_0
    sget-object v2, Lcom/sec/android/securestorage/SecureStorage;->secureStorageJNI:Lcom/sec/android/securestorage/SecureStorageJNI;

    invoke-virtual {v2, p1}, Lcom/sec/android/securestorage/SecureStorageJNI;->get(Ljava/lang/String;)[B
    :try_end_0
    .catch Lcom/sec/android/securestorage/SecureStorageJNI$SecureStorageExceptionJNI; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 1165
    :goto_0
    if-nez v1, :cond_0

    const/4 v2, 0x1

    :goto_1
    const-string v4, "Error: input data are incorrect"

    invoke-direct {p0, v2, v4}, Lcom/sec/android/securestorage/SecureStorage;->throwException(ZLjava/lang/String;)V

    .line 1166
    aget-byte v2, v1, v3

    return v2

    .line 1161
    :catch_0
    move-exception v0

    .line 1162
    .local v0, "e":Lcom/sec/android/securestorage/SecureStorageJNI$SecureStorageExceptionJNI;
    invoke-virtual {v0}, Lcom/sec/android/securestorage/SecureStorageJNI$SecureStorageExceptionJNI;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/sec/android/securestorage/SecureStorage;->throwJNIException(Ljava/lang/String;)V

    goto :goto_0

    .end local v0    # "e":Lcom/sec/android/securestorage/SecureStorageJNI$SecureStorageExceptionJNI;
    :cond_0
    move v2, v3

    .line 1165
    goto :goto_1
.end method

.method public getByte(Ljava/lang/String;Ljava/lang/String;)B
    .locals 6
    .param p1, "dataName"    # Ljava/lang/String;
    .param p2, "password"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sec/android/securestorage/SecureStorage$SecureStorageException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 1184
    invoke-direct {p0, p1}, Lcom/sec/android/securestorage/SecureStorage;->throwException(Ljava/lang/String;)V

    .line 1185
    if-nez p2, :cond_0

    move v2, v3

    :goto_0
    const-string v5, "Error: input data are incorrect"

    invoke-direct {p0, v2, v5}, Lcom/sec/android/securestorage/SecureStorage;->throwException(ZLjava/lang/String;)V

    .line 1186
    const/4 v1, 0x0

    .line 1189
    .local v1, "result":[B
    :try_start_0
    sget-object v2, Lcom/sec/android/securestorage/SecureStorage;->secureStorageJNI:Lcom/sec/android/securestorage/SecureStorageJNI;

    invoke-virtual {v2, p1, p2}, Lcom/sec/android/securestorage/SecureStorageJNI;->get(Ljava/lang/String;Ljava/lang/String;)[B
    :try_end_0
    .catch Lcom/sec/android/securestorage/SecureStorageJNI$SecureStorageExceptionJNI; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 1194
    :goto_1
    if-nez v1, :cond_1

    :goto_2
    const-string v2, "Error: input data are incorrect"

    invoke-direct {p0, v3, v2}, Lcom/sec/android/securestorage/SecureStorage;->throwException(ZLjava/lang/String;)V

    .line 1195
    aget-byte v2, v1, v4

    return v2

    .end local v1    # "result":[B
    :cond_0
    move v2, v4

    .line 1185
    goto :goto_0

    .line 1190
    .restart local v1    # "result":[B
    :catch_0
    move-exception v0

    .line 1191
    .local v0, "e":Lcom/sec/android/securestorage/SecureStorageJNI$SecureStorageExceptionJNI;
    invoke-virtual {v0}, Lcom/sec/android/securestorage/SecureStorageJNI$SecureStorageExceptionJNI;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/sec/android/securestorage/SecureStorage;->throwJNIException(Ljava/lang/String;)V

    goto :goto_1

    .end local v0    # "e":Lcom/sec/android/securestorage/SecureStorageJNI$SecureStorageExceptionJNI;
    :cond_1
    move v3, v4

    .line 1194
    goto :goto_2
.end method

.method public getByteArray(Ljava/lang/String;)[B
    .locals 4
    .param p1, "dataName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sec/android/securestorage/SecureStorage$SecureStorageException;
        }
    .end annotation

    .prologue
    .line 1101
    invoke-direct {p0, p1}, Lcom/sec/android/securestorage/SecureStorage;->throwException(Ljava/lang/String;)V

    .line 1102
    const/4 v1, 0x0

    .line 1105
    .local v1, "result":[B
    :try_start_0
    sget-object v2, Lcom/sec/android/securestorage/SecureStorage;->secureStorageJNI:Lcom/sec/android/securestorage/SecureStorageJNI;

    invoke-virtual {v2, p1}, Lcom/sec/android/securestorage/SecureStorageJNI;->get(Ljava/lang/String;)[B
    :try_end_0
    .catch Lcom/sec/android/securestorage/SecureStorageJNI$SecureStorageExceptionJNI; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 1110
    :goto_0
    if-nez v1, :cond_0

    const/4 v2, 0x1

    :goto_1
    const-string v3, "Error: input data are incorrect"

    invoke-direct {p0, v2, v3}, Lcom/sec/android/securestorage/SecureStorage;->throwException(ZLjava/lang/String;)V

    .line 1111
    return-object v1

    .line 1106
    :catch_0
    move-exception v0

    .line 1107
    .local v0, "e":Lcom/sec/android/securestorage/SecureStorageJNI$SecureStorageExceptionJNI;
    invoke-virtual {v0}, Lcom/sec/android/securestorage/SecureStorageJNI$SecureStorageExceptionJNI;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/sec/android/securestorage/SecureStorage;->throwJNIException(Ljava/lang/String;)V

    goto :goto_0

    .line 1110
    .end local v0    # "e":Lcom/sec/android/securestorage/SecureStorageJNI$SecureStorageExceptionJNI;
    :cond_0
    const/4 v2, 0x0

    goto :goto_1
.end method

.method public getByteArray(Ljava/lang/String;Ljava/lang/String;)[B
    .locals 6
    .param p1, "dataName"    # Ljava/lang/String;
    .param p2, "password"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sec/android/securestorage/SecureStorage$SecureStorageException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 1129
    invoke-direct {p0, p1}, Lcom/sec/android/securestorage/SecureStorage;->throwException(Ljava/lang/String;)V

    .line 1130
    if-nez p2, :cond_0

    move v2, v3

    :goto_0
    const-string v5, "Error: input data are incorrect"

    invoke-direct {p0, v2, v5}, Lcom/sec/android/securestorage/SecureStorage;->throwException(ZLjava/lang/String;)V

    .line 1131
    const/4 v1, 0x0

    .line 1134
    .local v1, "result":[B
    :try_start_0
    sget-object v2, Lcom/sec/android/securestorage/SecureStorage;->secureStorageJNI:Lcom/sec/android/securestorage/SecureStorageJNI;

    invoke-virtual {v2, p1, p2}, Lcom/sec/android/securestorage/SecureStorageJNI;->get(Ljava/lang/String;Ljava/lang/String;)[B
    :try_end_0
    .catch Lcom/sec/android/securestorage/SecureStorageJNI$SecureStorageExceptionJNI; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 1139
    :goto_1
    if-nez v1, :cond_1

    :goto_2
    const-string v2, "Error: input data are incorrect"

    invoke-direct {p0, v3, v2}, Lcom/sec/android/securestorage/SecureStorage;->throwException(ZLjava/lang/String;)V

    .line 1140
    return-object v1

    .end local v1    # "result":[B
    :cond_0
    move v2, v4

    .line 1130
    goto :goto_0

    .line 1135
    .restart local v1    # "result":[B
    :catch_0
    move-exception v0

    .line 1136
    .local v0, "e":Lcom/sec/android/securestorage/SecureStorageJNI$SecureStorageExceptionJNI;
    invoke-virtual {v0}, Lcom/sec/android/securestorage/SecureStorageJNI$SecureStorageExceptionJNI;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/sec/android/securestorage/SecureStorage;->throwJNIException(Ljava/lang/String;)V

    goto :goto_1

    .end local v0    # "e":Lcom/sec/android/securestorage/SecureStorageJNI$SecureStorageExceptionJNI;
    :cond_1
    move v3, v4

    .line 1139
    goto :goto_2
.end method

.method public getChar(Ljava/lang/String;)C
    .locals 4
    .param p1, "dataName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sec/android/securestorage/SecureStorage$SecureStorageException;
        }
    .end annotation

    .prologue
    .line 1046
    invoke-direct {p0, p1}, Lcom/sec/android/securestorage/SecureStorage;->throwException(Ljava/lang/String;)V

    .line 1047
    const/4 v1, 0x0

    .line 1050
    .local v1, "result":[B
    :try_start_0
    sget-object v2, Lcom/sec/android/securestorage/SecureStorage;->secureStorageJNI:Lcom/sec/android/securestorage/SecureStorageJNI;

    invoke-virtual {v2, p1}, Lcom/sec/android/securestorage/SecureStorageJNI;->get(Ljava/lang/String;)[B
    :try_end_0
    .catch Lcom/sec/android/securestorage/SecureStorageJNI$SecureStorageExceptionJNI; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 1055
    :goto_0
    if-nez v1, :cond_0

    const/4 v2, 0x1

    :goto_1
    const-string v3, "Error: input data are incorrect"

    invoke-direct {p0, v2, v3}, Lcom/sec/android/securestorage/SecureStorage;->throwException(ZLjava/lang/String;)V

    .line 1056
    new-instance v2, Ljava/math/BigInteger;

    invoke-direct {v2, v1}, Ljava/math/BigInteger;-><init>([B)V

    invoke-virtual {v2}, Ljava/math/BigInteger;->intValue()I

    move-result v2

    int-to-char v2, v2

    return v2

    .line 1051
    :catch_0
    move-exception v0

    .line 1052
    .local v0, "e":Lcom/sec/android/securestorage/SecureStorageJNI$SecureStorageExceptionJNI;
    invoke-virtual {v0}, Lcom/sec/android/securestorage/SecureStorageJNI$SecureStorageExceptionJNI;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/sec/android/securestorage/SecureStorage;->throwJNIException(Ljava/lang/String;)V

    goto :goto_0

    .line 1055
    .end local v0    # "e":Lcom/sec/android/securestorage/SecureStorageJNI$SecureStorageExceptionJNI;
    :cond_0
    const/4 v2, 0x0

    goto :goto_1
.end method

.method public getChar(Ljava/lang/String;Ljava/lang/String;)C
    .locals 6
    .param p1, "dataName"    # Ljava/lang/String;
    .param p2, "password"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sec/android/securestorage/SecureStorage$SecureStorageException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 1074
    invoke-direct {p0, p1}, Lcom/sec/android/securestorage/SecureStorage;->throwException(Ljava/lang/String;)V

    .line 1075
    if-nez p2, :cond_0

    move v2, v3

    :goto_0
    const-string v5, "Error: input data are incorrect"

    invoke-direct {p0, v2, v5}, Lcom/sec/android/securestorage/SecureStorage;->throwException(ZLjava/lang/String;)V

    .line 1076
    const/4 v1, 0x0

    .line 1079
    .local v1, "result":[B
    :try_start_0
    sget-object v2, Lcom/sec/android/securestorage/SecureStorage;->secureStorageJNI:Lcom/sec/android/securestorage/SecureStorageJNI;

    invoke-virtual {v2, p1, p2}, Lcom/sec/android/securestorage/SecureStorageJNI;->get(Ljava/lang/String;Ljava/lang/String;)[B
    :try_end_0
    .catch Lcom/sec/android/securestorage/SecureStorageJNI$SecureStorageExceptionJNI; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 1084
    :goto_1
    if-nez v1, :cond_1

    :goto_2
    const-string v2, "Error: input data are incorrect"

    invoke-direct {p0, v3, v2}, Lcom/sec/android/securestorage/SecureStorage;->throwException(ZLjava/lang/String;)V

    .line 1085
    new-instance v2, Ljava/math/BigInteger;

    invoke-direct {v2, v1}, Ljava/math/BigInteger;-><init>([B)V

    invoke-virtual {v2}, Ljava/math/BigInteger;->intValue()I

    move-result v2

    int-to-char v2, v2

    return v2

    .end local v1    # "result":[B
    :cond_0
    move v2, v4

    .line 1075
    goto :goto_0

    .line 1080
    .restart local v1    # "result":[B
    :catch_0
    move-exception v0

    .line 1081
    .local v0, "e":Lcom/sec/android/securestorage/SecureStorageJNI$SecureStorageExceptionJNI;
    invoke-virtual {v0}, Lcom/sec/android/securestorage/SecureStorageJNI$SecureStorageExceptionJNI;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/sec/android/securestorage/SecureStorage;->throwJNIException(Ljava/lang/String;)V

    goto :goto_1

    .end local v0    # "e":Lcom/sec/android/securestorage/SecureStorageJNI$SecureStorageExceptionJNI;
    :cond_1
    move v3, v4

    .line 1084
    goto :goto_2
.end method

.method public getCharArray(Ljava/lang/String;)[C
    .locals 7
    .param p1, "dataName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sec/android/securestorage/SecureStorage$SecureStorageException;
        }
    .end annotation

    .prologue
    .line 974
    invoke-direct {p0, p1}, Lcom/sec/android/securestorage/SecureStorage;->throwException(Ljava/lang/String;)V

    .line 975
    const/4 v4, 0x0

    .line 978
    .local v4, "result":[B
    :try_start_0
    sget-object v5, Lcom/sec/android/securestorage/SecureStorage;->secureStorageJNI:Lcom/sec/android/securestorage/SecureStorageJNI;

    invoke-virtual {v5, p1}, Lcom/sec/android/securestorage/SecureStorageJNI;->get(Ljava/lang/String;)[B
    :try_end_0
    .catch Lcom/sec/android/securestorage/SecureStorageJNI$SecureStorageExceptionJNI; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v4

    .line 983
    :goto_0
    if-nez v4, :cond_0

    const/4 v5, 0x1

    :goto_1
    const-string v6, "Error: input data are incorrect"

    invoke-direct {p0, v5, v6}, Lcom/sec/android/securestorage/SecureStorage;->throwException(ZLjava/lang/String;)V

    .line 984
    array-length v5, v4

    div-int/lit8 v5, v5, 0x2

    new-array v3, v5, [C

    .line 985
    .local v3, "publicText":[C
    invoke-static {v4}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 986
    .local v0, "buffer":Ljava/nio/ByteBuffer;
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->rewind()Ljava/nio/Buffer;

    .line 987
    const/4 v2, 0x0

    .line 988
    .local v2, "i":I
    :goto_2
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->hasRemaining()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 989
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->getChar()C

    move-result v5

    aput-char v5, v3, v2

    .line 990
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 979
    .end local v0    # "buffer":Ljava/nio/ByteBuffer;
    .end local v2    # "i":I
    .end local v3    # "publicText":[C
    :catch_0
    move-exception v1

    .line 980
    .local v1, "e":Lcom/sec/android/securestorage/SecureStorageJNI$SecureStorageExceptionJNI;
    invoke-virtual {v1}, Lcom/sec/android/securestorage/SecureStorageJNI$SecureStorageExceptionJNI;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v5}, Lcom/sec/android/securestorage/SecureStorage;->throwJNIException(Ljava/lang/String;)V

    goto :goto_0

    .line 983
    .end local v1    # "e":Lcom/sec/android/securestorage/SecureStorageJNI$SecureStorageExceptionJNI;
    :cond_0
    const/4 v5, 0x0

    goto :goto_1

    .line 992
    .restart local v0    # "buffer":Ljava/nio/ByteBuffer;
    .restart local v2    # "i":I
    .restart local v3    # "publicText":[C
    :cond_1
    return-object v3
.end method

.method public getCharArray(Ljava/lang/String;Ljava/lang/String;)[C
    .locals 9
    .param p1, "dataName"    # Ljava/lang/String;
    .param p2, "password"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sec/android/securestorage/SecureStorage$SecureStorageException;
        }
    .end annotation

    .prologue
    const/4 v6, 0x1

    const/4 v7, 0x0

    .line 1011
    invoke-direct {p0, p1}, Lcom/sec/android/securestorage/SecureStorage;->throwException(Ljava/lang/String;)V

    .line 1012
    if-nez p2, :cond_0

    move v5, v6

    :goto_0
    const-string v8, "Error: input data are incorrect"

    invoke-direct {p0, v5, v8}, Lcom/sec/android/securestorage/SecureStorage;->throwException(ZLjava/lang/String;)V

    .line 1013
    const/4 v4, 0x0

    .line 1016
    .local v4, "result":[B
    :try_start_0
    sget-object v5, Lcom/sec/android/securestorage/SecureStorage;->secureStorageJNI:Lcom/sec/android/securestorage/SecureStorageJNI;

    invoke-virtual {v5, p1, p2}, Lcom/sec/android/securestorage/SecureStorageJNI;->get(Ljava/lang/String;Ljava/lang/String;)[B
    :try_end_0
    .catch Lcom/sec/android/securestorage/SecureStorageJNI$SecureStorageExceptionJNI; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v4

    .line 1021
    :goto_1
    if-nez v4, :cond_1

    :goto_2
    const-string v5, "Error: input data are incorrect"

    invoke-direct {p0, v6, v5}, Lcom/sec/android/securestorage/SecureStorage;->throwException(ZLjava/lang/String;)V

    .line 1022
    array-length v5, v4

    div-int/lit8 v5, v5, 0x2

    new-array v3, v5, [C

    .line 1023
    .local v3, "publicText":[C
    invoke-static {v4}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 1024
    .local v0, "buffer":Ljava/nio/ByteBuffer;
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->rewind()Ljava/nio/Buffer;

    .line 1025
    const/4 v2, 0x0

    .line 1026
    .local v2, "i":I
    :goto_3
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->hasRemaining()Z

    move-result v5

    if-eqz v5, :cond_2

    .line 1027
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->getChar()C

    move-result v5

    aput-char v5, v3, v2

    .line 1028
    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    .end local v0    # "buffer":Ljava/nio/ByteBuffer;
    .end local v2    # "i":I
    .end local v3    # "publicText":[C
    .end local v4    # "result":[B
    :cond_0
    move v5, v7

    .line 1012
    goto :goto_0

    .line 1017
    .restart local v4    # "result":[B
    :catch_0
    move-exception v1

    .line 1018
    .local v1, "e":Lcom/sec/android/securestorage/SecureStorageJNI$SecureStorageExceptionJNI;
    invoke-virtual {v1}, Lcom/sec/android/securestorage/SecureStorageJNI$SecureStorageExceptionJNI;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v5}, Lcom/sec/android/securestorage/SecureStorage;->throwJNIException(Ljava/lang/String;)V

    goto :goto_1

    .end local v1    # "e":Lcom/sec/android/securestorage/SecureStorageJNI$SecureStorageExceptionJNI;
    :cond_1
    move v6, v7

    .line 1021
    goto :goto_2

    .line 1030
    .restart local v0    # "buffer":Ljava/nio/ByteBuffer;
    .restart local v2    # "i":I
    .restart local v3    # "publicText":[C
    :cond_2
    return-object v3
.end method

.method public getDouble(Ljava/lang/String;)D
    .locals 4
    .param p1, "dataName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sec/android/securestorage/SecureStorage$SecureStorageException;
        }
    .end annotation

    .prologue
    .line 1610
    invoke-direct {p0, p1}, Lcom/sec/android/securestorage/SecureStorage;->throwException(Ljava/lang/String;)V

    .line 1611
    const/4 v1, 0x0

    .line 1614
    .local v1, "result":[B
    :try_start_0
    sget-object v2, Lcom/sec/android/securestorage/SecureStorage;->secureStorageJNI:Lcom/sec/android/securestorage/SecureStorageJNI;

    invoke-virtual {v2, p1}, Lcom/sec/android/securestorage/SecureStorageJNI;->get(Ljava/lang/String;)[B
    :try_end_0
    .catch Lcom/sec/android/securestorage/SecureStorageJNI$SecureStorageExceptionJNI; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 1619
    :goto_0
    if-nez v1, :cond_0

    const/4 v2, 0x1

    :goto_1
    const-string v3, "Error: input data are incorrect"

    invoke-direct {p0, v2, v3}, Lcom/sec/android/securestorage/SecureStorage;->throwException(ZLjava/lang/String;)V

    .line 1622
    :try_start_1
    new-instance v2, Ljava/lang/String;

    const-string v3, "UTF-8"

    invoke-direct {v2, v1, v3}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    invoke-static {v2}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D
    :try_end_1
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_1 .. :try_end_1} :catch_1

    move-result-wide v2

    return-wide v2

    .line 1615
    :catch_0
    move-exception v0

    .line 1616
    .local v0, "e":Lcom/sec/android/securestorage/SecureStorageJNI$SecureStorageExceptionJNI;
    invoke-virtual {v0}, Lcom/sec/android/securestorage/SecureStorageJNI$SecureStorageExceptionJNI;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/sec/android/securestorage/SecureStorage;->throwJNIException(Ljava/lang/String;)V

    goto :goto_0

    .line 1619
    .end local v0    # "e":Lcom/sec/android/securestorage/SecureStorageJNI$SecureStorageExceptionJNI;
    :cond_0
    const/4 v2, 0x0

    goto :goto_1

    .line 1624
    :catch_1
    move-exception v0

    .line 1627
    .local v0, "e":Ljava/io/UnsupportedEncodingException;
    new-instance v2, Ljava/lang/RuntimeException;

    invoke-direct {v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v2
.end method

.method public getDouble(Ljava/lang/String;Ljava/lang/String;)D
    .locals 6
    .param p1, "dataName"    # Ljava/lang/String;
    .param p2, "password"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sec/android/securestorage/SecureStorage$SecureStorageException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 1646
    invoke-direct {p0, p1}, Lcom/sec/android/securestorage/SecureStorage;->throwException(Ljava/lang/String;)V

    .line 1647
    if-nez p2, :cond_0

    move v2, v3

    :goto_0
    const-string v5, "Error: input data are incorrect"

    invoke-direct {p0, v2, v5}, Lcom/sec/android/securestorage/SecureStorage;->throwException(ZLjava/lang/String;)V

    .line 1648
    const/4 v1, 0x0

    .line 1651
    .local v1, "result":[B
    :try_start_0
    sget-object v2, Lcom/sec/android/securestorage/SecureStorage;->secureStorageJNI:Lcom/sec/android/securestorage/SecureStorageJNI;

    invoke-virtual {v2, p1, p2}, Lcom/sec/android/securestorage/SecureStorageJNI;->get(Ljava/lang/String;Ljava/lang/String;)[B
    :try_end_0
    .catch Lcom/sec/android/securestorage/SecureStorageJNI$SecureStorageExceptionJNI; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 1656
    :goto_1
    if-nez v1, :cond_1

    :goto_2
    const-string v2, "Error: input data are incorrect"

    invoke-direct {p0, v3, v2}, Lcom/sec/android/securestorage/SecureStorage;->throwException(ZLjava/lang/String;)V

    .line 1659
    :try_start_1
    new-instance v2, Ljava/lang/String;

    const-string v3, "UTF-8"

    invoke-direct {v2, v1, v3}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    invoke-static {v2}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D
    :try_end_1
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_1 .. :try_end_1} :catch_1

    move-result-wide v2

    return-wide v2

    .end local v1    # "result":[B
    :cond_0
    move v2, v4

    .line 1647
    goto :goto_0

    .line 1652
    .restart local v1    # "result":[B
    :catch_0
    move-exception v0

    .line 1653
    .local v0, "e":Lcom/sec/android/securestorage/SecureStorageJNI$SecureStorageExceptionJNI;
    invoke-virtual {v0}, Lcom/sec/android/securestorage/SecureStorageJNI$SecureStorageExceptionJNI;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/sec/android/securestorage/SecureStorage;->throwJNIException(Ljava/lang/String;)V

    goto :goto_1

    .end local v0    # "e":Lcom/sec/android/securestorage/SecureStorageJNI$SecureStorageExceptionJNI;
    :cond_1
    move v3, v4

    .line 1656
    goto :goto_2

    .line 1661
    :catch_1
    move-exception v0

    .line 1664
    .local v0, "e":Ljava/io/UnsupportedEncodingException;
    new-instance v2, Ljava/lang/RuntimeException;

    invoke-direct {v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v2
.end method

.method public getDoubleArray(Ljava/lang/String;)[D
    .locals 8
    .param p1, "dataName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sec/android/securestorage/SecureStorage$SecureStorageException;
        }
    .end annotation

    .prologue
    .line 1538
    invoke-direct {p0, p1}, Lcom/sec/android/securestorage/SecureStorage;->throwException(Ljava/lang/String;)V

    .line 1539
    const/4 v4, 0x0

    .line 1542
    .local v4, "result":[B
    :try_start_0
    sget-object v5, Lcom/sec/android/securestorage/SecureStorage;->secureStorageJNI:Lcom/sec/android/securestorage/SecureStorageJNI;

    invoke-virtual {v5, p1}, Lcom/sec/android/securestorage/SecureStorageJNI;->get(Ljava/lang/String;)[B
    :try_end_0
    .catch Lcom/sec/android/securestorage/SecureStorageJNI$SecureStorageExceptionJNI; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v4

    .line 1547
    :goto_0
    if-nez v4, :cond_0

    const/4 v5, 0x1

    :goto_1
    const-string v6, "Error: input data are incorrect"

    invoke-direct {p0, v5, v6}, Lcom/sec/android/securestorage/SecureStorage;->throwException(ZLjava/lang/String;)V

    .line 1548
    array-length v5, v4

    div-int/lit8 v5, v5, 0x8

    new-array v3, v5, [D

    .line 1549
    .local v3, "publicText":[D
    invoke-static {v4}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 1550
    .local v0, "buffer":Ljava/nio/ByteBuffer;
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->rewind()Ljava/nio/Buffer;

    .line 1551
    const/4 v2, 0x0

    .line 1552
    .local v2, "i":I
    :goto_2
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->hasRemaining()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 1553
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->getDouble()D

    move-result-wide v6

    aput-wide v6, v3, v2

    .line 1554
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 1543
    .end local v0    # "buffer":Ljava/nio/ByteBuffer;
    .end local v2    # "i":I
    .end local v3    # "publicText":[D
    :catch_0
    move-exception v1

    .line 1544
    .local v1, "e":Lcom/sec/android/securestorage/SecureStorageJNI$SecureStorageExceptionJNI;
    invoke-virtual {v1}, Lcom/sec/android/securestorage/SecureStorageJNI$SecureStorageExceptionJNI;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v5}, Lcom/sec/android/securestorage/SecureStorage;->throwJNIException(Ljava/lang/String;)V

    goto :goto_0

    .line 1547
    .end local v1    # "e":Lcom/sec/android/securestorage/SecureStorageJNI$SecureStorageExceptionJNI;
    :cond_0
    const/4 v5, 0x0

    goto :goto_1

    .line 1556
    .restart local v0    # "buffer":Ljava/nio/ByteBuffer;
    .restart local v2    # "i":I
    .restart local v3    # "publicText":[D
    :cond_1
    return-object v3
.end method

.method public getDoubleArray(Ljava/lang/String;Ljava/lang/String;)[D
    .locals 9
    .param p1, "dataName"    # Ljava/lang/String;
    .param p2, "password"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sec/android/securestorage/SecureStorage$SecureStorageException;
        }
    .end annotation

    .prologue
    const/4 v6, 0x1

    const/4 v7, 0x0

    .line 1575
    invoke-direct {p0, p1}, Lcom/sec/android/securestorage/SecureStorage;->throwException(Ljava/lang/String;)V

    .line 1576
    if-nez p2, :cond_0

    move v5, v6

    :goto_0
    const-string v8, "Error: input data are incorrect"

    invoke-direct {p0, v5, v8}, Lcom/sec/android/securestorage/SecureStorage;->throwException(ZLjava/lang/String;)V

    .line 1577
    const/4 v4, 0x0

    .line 1580
    .local v4, "result":[B
    :try_start_0
    sget-object v5, Lcom/sec/android/securestorage/SecureStorage;->secureStorageJNI:Lcom/sec/android/securestorage/SecureStorageJNI;

    invoke-virtual {v5, p1, p2}, Lcom/sec/android/securestorage/SecureStorageJNI;->get(Ljava/lang/String;Ljava/lang/String;)[B
    :try_end_0
    .catch Lcom/sec/android/securestorage/SecureStorageJNI$SecureStorageExceptionJNI; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v4

    .line 1585
    :goto_1
    if-nez v4, :cond_1

    :goto_2
    const-string v5, "Error: input data are incorrect"

    invoke-direct {p0, v6, v5}, Lcom/sec/android/securestorage/SecureStorage;->throwException(ZLjava/lang/String;)V

    .line 1586
    array-length v5, v4

    div-int/lit8 v5, v5, 0x8

    new-array v3, v5, [D

    .line 1587
    .local v3, "publicText":[D
    invoke-static {v4}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 1588
    .local v0, "buffer":Ljava/nio/ByteBuffer;
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->rewind()Ljava/nio/Buffer;

    .line 1589
    const/4 v2, 0x0

    .line 1590
    .local v2, "i":I
    :goto_3
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->hasRemaining()Z

    move-result v5

    if-eqz v5, :cond_2

    .line 1591
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->getDouble()D

    move-result-wide v6

    aput-wide v6, v3, v2

    .line 1592
    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    .end local v0    # "buffer":Ljava/nio/ByteBuffer;
    .end local v2    # "i":I
    .end local v3    # "publicText":[D
    .end local v4    # "result":[B
    :cond_0
    move v5, v7

    .line 1576
    goto :goto_0

    .line 1581
    .restart local v4    # "result":[B
    :catch_0
    move-exception v1

    .line 1582
    .local v1, "e":Lcom/sec/android/securestorage/SecureStorageJNI$SecureStorageExceptionJNI;
    invoke-virtual {v1}, Lcom/sec/android/securestorage/SecureStorageJNI$SecureStorageExceptionJNI;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v5}, Lcom/sec/android/securestorage/SecureStorage;->throwJNIException(Ljava/lang/String;)V

    goto :goto_1

    .end local v1    # "e":Lcom/sec/android/securestorage/SecureStorageJNI$SecureStorageExceptionJNI;
    :cond_1
    move v6, v7

    .line 1585
    goto :goto_2

    .line 1594
    .restart local v0    # "buffer":Ljava/nio/ByteBuffer;
    .restart local v2    # "i":I
    .restart local v3    # "publicText":[D
    :cond_2
    return-object v3
.end method

.method public getInt(Ljava/lang/String;)I
    .locals 4
    .param p1, "dataName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sec/android/securestorage/SecureStorage$SecureStorageException;
        }
    .end annotation

    .prologue
    .line 1284
    invoke-direct {p0, p1}, Lcom/sec/android/securestorage/SecureStorage;->throwException(Ljava/lang/String;)V

    .line 1285
    const/4 v1, 0x0

    .line 1288
    .local v1, "result":[B
    :try_start_0
    sget-object v2, Lcom/sec/android/securestorage/SecureStorage;->secureStorageJNI:Lcom/sec/android/securestorage/SecureStorageJNI;

    invoke-virtual {v2, p1}, Lcom/sec/android/securestorage/SecureStorageJNI;->get(Ljava/lang/String;)[B
    :try_end_0
    .catch Lcom/sec/android/securestorage/SecureStorageJNI$SecureStorageExceptionJNI; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 1293
    :goto_0
    if-nez v1, :cond_0

    const/4 v2, 0x1

    :goto_1
    const-string v3, "Error: input data are incorrect"

    invoke-direct {p0, v2, v3}, Lcom/sec/android/securestorage/SecureStorage;->throwException(ZLjava/lang/String;)V

    .line 1294
    new-instance v2, Ljava/math/BigInteger;

    invoke-direct {v2, v1}, Ljava/math/BigInteger;-><init>([B)V

    invoke-virtual {v2}, Ljava/math/BigInteger;->intValue()I

    move-result v2

    return v2

    .line 1289
    :catch_0
    move-exception v0

    .line 1290
    .local v0, "e":Lcom/sec/android/securestorage/SecureStorageJNI$SecureStorageExceptionJNI;
    invoke-virtual {v0}, Lcom/sec/android/securestorage/SecureStorageJNI$SecureStorageExceptionJNI;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/sec/android/securestorage/SecureStorage;->throwJNIException(Ljava/lang/String;)V

    goto :goto_0

    .line 1293
    .end local v0    # "e":Lcom/sec/android/securestorage/SecureStorageJNI$SecureStorageExceptionJNI;
    :cond_0
    const/4 v2, 0x0

    goto :goto_1
.end method

.method public getInt(Ljava/lang/String;Ljava/lang/String;)I
    .locals 6
    .param p1, "dataName"    # Ljava/lang/String;
    .param p2, "password"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sec/android/securestorage/SecureStorage$SecureStorageException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 1312
    invoke-direct {p0, p1}, Lcom/sec/android/securestorage/SecureStorage;->throwException(Ljava/lang/String;)V

    .line 1313
    if-nez p2, :cond_0

    move v2, v3

    :goto_0
    const-string v5, "Error: input data are incorrect"

    invoke-direct {p0, v2, v5}, Lcom/sec/android/securestorage/SecureStorage;->throwException(ZLjava/lang/String;)V

    .line 1314
    const/4 v1, 0x0

    .line 1317
    .local v1, "result":[B
    :try_start_0
    sget-object v2, Lcom/sec/android/securestorage/SecureStorage;->secureStorageJNI:Lcom/sec/android/securestorage/SecureStorageJNI;

    invoke-virtual {v2, p1, p2}, Lcom/sec/android/securestorage/SecureStorageJNI;->get(Ljava/lang/String;Ljava/lang/String;)[B
    :try_end_0
    .catch Lcom/sec/android/securestorage/SecureStorageJNI$SecureStorageExceptionJNI; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 1322
    :goto_1
    if-nez v1, :cond_1

    :goto_2
    const-string v2, "Error: input data are incorrect"

    invoke-direct {p0, v3, v2}, Lcom/sec/android/securestorage/SecureStorage;->throwException(ZLjava/lang/String;)V

    .line 1323
    new-instance v2, Ljava/math/BigInteger;

    invoke-direct {v2, v1}, Ljava/math/BigInteger;-><init>([B)V

    invoke-virtual {v2}, Ljava/math/BigInteger;->intValue()I

    move-result v2

    return v2

    .end local v1    # "result":[B
    :cond_0
    move v2, v4

    .line 1313
    goto :goto_0

    .line 1318
    .restart local v1    # "result":[B
    :catch_0
    move-exception v0

    .line 1319
    .local v0, "e":Lcom/sec/android/securestorage/SecureStorageJNI$SecureStorageExceptionJNI;
    invoke-virtual {v0}, Lcom/sec/android/securestorage/SecureStorageJNI$SecureStorageExceptionJNI;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/sec/android/securestorage/SecureStorage;->throwJNIException(Ljava/lang/String;)V

    goto :goto_1

    .end local v0    # "e":Lcom/sec/android/securestorage/SecureStorageJNI$SecureStorageExceptionJNI;
    :cond_1
    move v3, v4

    .line 1322
    goto :goto_2
.end method

.method public getIntArray(Ljava/lang/String;)[I
    .locals 7
    .param p1, "dataName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sec/android/securestorage/SecureStorage$SecureStorageException;
        }
    .end annotation

    .prologue
    .line 1212
    invoke-direct {p0, p1}, Lcom/sec/android/securestorage/SecureStorage;->throwException(Ljava/lang/String;)V

    .line 1213
    const/4 v4, 0x0

    .line 1216
    .local v4, "result":[B
    :try_start_0
    sget-object v5, Lcom/sec/android/securestorage/SecureStorage;->secureStorageJNI:Lcom/sec/android/securestorage/SecureStorageJNI;

    invoke-virtual {v5, p1}, Lcom/sec/android/securestorage/SecureStorageJNI;->get(Ljava/lang/String;)[B
    :try_end_0
    .catch Lcom/sec/android/securestorage/SecureStorageJNI$SecureStorageExceptionJNI; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v4

    .line 1221
    :goto_0
    if-nez v4, :cond_0

    const/4 v5, 0x1

    :goto_1
    const-string v6, "Error: input data are incorrect"

    invoke-direct {p0, v5, v6}, Lcom/sec/android/securestorage/SecureStorage;->throwException(ZLjava/lang/String;)V

    .line 1222
    array-length v5, v4

    div-int/lit8 v5, v5, 0x4

    new-array v3, v5, [I

    .line 1223
    .local v3, "publicText":[I
    invoke-static {v4}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 1224
    .local v0, "buffer":Ljava/nio/ByteBuffer;
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->rewind()Ljava/nio/Buffer;

    .line 1225
    const/4 v2, 0x0

    .line 1226
    .local v2, "i":I
    :goto_2
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->hasRemaining()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 1227
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v5

    aput v5, v3, v2

    .line 1228
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 1217
    .end local v0    # "buffer":Ljava/nio/ByteBuffer;
    .end local v2    # "i":I
    .end local v3    # "publicText":[I
    :catch_0
    move-exception v1

    .line 1218
    .local v1, "e":Lcom/sec/android/securestorage/SecureStorageJNI$SecureStorageExceptionJNI;
    invoke-virtual {v1}, Lcom/sec/android/securestorage/SecureStorageJNI$SecureStorageExceptionJNI;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v5}, Lcom/sec/android/securestorage/SecureStorage;->throwJNIException(Ljava/lang/String;)V

    goto :goto_0

    .line 1221
    .end local v1    # "e":Lcom/sec/android/securestorage/SecureStorageJNI$SecureStorageExceptionJNI;
    :cond_0
    const/4 v5, 0x0

    goto :goto_1

    .line 1230
    .restart local v0    # "buffer":Ljava/nio/ByteBuffer;
    .restart local v2    # "i":I
    .restart local v3    # "publicText":[I
    :cond_1
    return-object v3
.end method

.method public getIntArray(Ljava/lang/String;Ljava/lang/String;)[I
    .locals 9
    .param p1, "dataName"    # Ljava/lang/String;
    .param p2, "password"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sec/android/securestorage/SecureStorage$SecureStorageException;
        }
    .end annotation

    .prologue
    const/4 v6, 0x1

    const/4 v7, 0x0

    .line 1249
    invoke-direct {p0, p1}, Lcom/sec/android/securestorage/SecureStorage;->throwException(Ljava/lang/String;)V

    .line 1250
    if-nez p2, :cond_0

    move v5, v6

    :goto_0
    const-string v8, "Error: input data are incorrect"

    invoke-direct {p0, v5, v8}, Lcom/sec/android/securestorage/SecureStorage;->throwException(ZLjava/lang/String;)V

    .line 1251
    const/4 v4, 0x0

    .line 1254
    .local v4, "result":[B
    :try_start_0
    sget-object v5, Lcom/sec/android/securestorage/SecureStorage;->secureStorageJNI:Lcom/sec/android/securestorage/SecureStorageJNI;

    invoke-virtual {v5, p1, p2}, Lcom/sec/android/securestorage/SecureStorageJNI;->get(Ljava/lang/String;Ljava/lang/String;)[B
    :try_end_0
    .catch Lcom/sec/android/securestorage/SecureStorageJNI$SecureStorageExceptionJNI; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v4

    .line 1259
    :goto_1
    if-nez v4, :cond_1

    :goto_2
    const-string v5, "Error: input data are incorrect"

    invoke-direct {p0, v6, v5}, Lcom/sec/android/securestorage/SecureStorage;->throwException(ZLjava/lang/String;)V

    .line 1260
    array-length v5, v4

    div-int/lit8 v5, v5, 0x4

    new-array v3, v5, [I

    .line 1261
    .local v3, "publicText":[I
    invoke-static {v4}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 1262
    .local v0, "buffer":Ljava/nio/ByteBuffer;
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->rewind()Ljava/nio/Buffer;

    .line 1263
    const/4 v2, 0x0

    .line 1264
    .local v2, "i":I
    :goto_3
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->hasRemaining()Z

    move-result v5

    if-eqz v5, :cond_2

    .line 1265
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v5

    aput v5, v3, v2

    .line 1266
    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    .end local v0    # "buffer":Ljava/nio/ByteBuffer;
    .end local v2    # "i":I
    .end local v3    # "publicText":[I
    .end local v4    # "result":[B
    :cond_0
    move v5, v7

    .line 1250
    goto :goto_0

    .line 1255
    .restart local v4    # "result":[B
    :catch_0
    move-exception v1

    .line 1256
    .local v1, "e":Lcom/sec/android/securestorage/SecureStorageJNI$SecureStorageExceptionJNI;
    invoke-virtual {v1}, Lcom/sec/android/securestorage/SecureStorageJNI$SecureStorageExceptionJNI;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v5}, Lcom/sec/android/securestorage/SecureStorage;->throwJNIException(Ljava/lang/String;)V

    goto :goto_1

    .end local v1    # "e":Lcom/sec/android/securestorage/SecureStorageJNI$SecureStorageExceptionJNI;
    :cond_1
    move v6, v7

    .line 1259
    goto :goto_2

    .line 1268
    .restart local v0    # "buffer":Ljava/nio/ByteBuffer;
    .restart local v2    # "i":I
    .restart local v3    # "publicText":[I
    :cond_2
    return-object v3
.end method

.method public getLong(Ljava/lang/String;)J
    .locals 4
    .param p1, "dataName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sec/android/securestorage/SecureStorage$SecureStorageException;
        }
    .end annotation

    .prologue
    .line 1412
    invoke-direct {p0, p1}, Lcom/sec/android/securestorage/SecureStorage;->throwException(Ljava/lang/String;)V

    .line 1413
    const/4 v1, 0x0

    .line 1416
    .local v1, "result":[B
    :try_start_0
    sget-object v2, Lcom/sec/android/securestorage/SecureStorage;->secureStorageJNI:Lcom/sec/android/securestorage/SecureStorageJNI;

    invoke-virtual {v2, p1}, Lcom/sec/android/securestorage/SecureStorageJNI;->get(Ljava/lang/String;)[B
    :try_end_0
    .catch Lcom/sec/android/securestorage/SecureStorageJNI$SecureStorageExceptionJNI; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 1420
    :goto_0
    if-nez v1, :cond_0

    const/4 v2, 0x1

    :goto_1
    const-string v3, "Error: input data are incorrect"

    invoke-direct {p0, v2, v3}, Lcom/sec/android/securestorage/SecureStorage;->throwException(ZLjava/lang/String;)V

    .line 1421
    new-instance v2, Ljava/math/BigInteger;

    invoke-direct {v2, v1}, Ljava/math/BigInteger;-><init>([B)V

    invoke-virtual {v2}, Ljava/math/BigInteger;->longValue()J

    move-result-wide v2

    return-wide v2

    .line 1417
    :catch_0
    move-exception v0

    .line 1418
    .local v0, "e":Lcom/sec/android/securestorage/SecureStorageJNI$SecureStorageExceptionJNI;
    invoke-virtual {v0}, Lcom/sec/android/securestorage/SecureStorageJNI$SecureStorageExceptionJNI;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/sec/android/securestorage/SecureStorage;->throwJNIException(Ljava/lang/String;)V

    goto :goto_0

    .line 1420
    .end local v0    # "e":Lcom/sec/android/securestorage/SecureStorageJNI$SecureStorageExceptionJNI;
    :cond_0
    const/4 v2, 0x0

    goto :goto_1
.end method

.method public getLong(Ljava/lang/String;Ljava/lang/String;)J
    .locals 6
    .param p1, "dataName"    # Ljava/lang/String;
    .param p2, "password"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sec/android/securestorage/SecureStorage$SecureStorageException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 1439
    invoke-direct {p0, p1}, Lcom/sec/android/securestorage/SecureStorage;->throwException(Ljava/lang/String;)V

    .line 1440
    if-nez p2, :cond_0

    move v2, v3

    :goto_0
    const-string v5, "Error: input data are incorrect"

    invoke-direct {p0, v2, v5}, Lcom/sec/android/securestorage/SecureStorage;->throwException(ZLjava/lang/String;)V

    .line 1441
    const/4 v1, 0x0

    .line 1444
    .local v1, "result":[B
    :try_start_0
    sget-object v2, Lcom/sec/android/securestorage/SecureStorage;->secureStorageJNI:Lcom/sec/android/securestorage/SecureStorageJNI;

    invoke-virtual {v2, p1, p2}, Lcom/sec/android/securestorage/SecureStorageJNI;->get(Ljava/lang/String;Ljava/lang/String;)[B
    :try_end_0
    .catch Lcom/sec/android/securestorage/SecureStorageJNI$SecureStorageExceptionJNI; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 1449
    :goto_1
    if-nez v1, :cond_1

    :goto_2
    const-string v2, "Error: input data are incorrect"

    invoke-direct {p0, v3, v2}, Lcom/sec/android/securestorage/SecureStorage;->throwException(ZLjava/lang/String;)V

    .line 1450
    new-instance v2, Ljava/math/BigInteger;

    invoke-direct {v2, v1}, Ljava/math/BigInteger;-><init>([B)V

    invoke-virtual {v2}, Ljava/math/BigInteger;->longValue()J

    move-result-wide v2

    return-wide v2

    .end local v1    # "result":[B
    :cond_0
    move v2, v4

    .line 1440
    goto :goto_0

    .line 1445
    .restart local v1    # "result":[B
    :catch_0
    move-exception v0

    .line 1446
    .local v0, "e":Lcom/sec/android/securestorage/SecureStorageJNI$SecureStorageExceptionJNI;
    invoke-virtual {v0}, Lcom/sec/android/securestorage/SecureStorageJNI$SecureStorageExceptionJNI;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/sec/android/securestorage/SecureStorage;->throwJNIException(Ljava/lang/String;)V

    goto :goto_1

    .end local v0    # "e":Lcom/sec/android/securestorage/SecureStorageJNI$SecureStorageExceptionJNI;
    :cond_1
    move v3, v4

    .line 1449
    goto :goto_2
.end method

.method public getLongArray(Ljava/lang/String;)[J
    .locals 8
    .param p1, "dataName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sec/android/securestorage/SecureStorage$SecureStorageException;
        }
    .end annotation

    .prologue
    .line 1340
    invoke-direct {p0, p1}, Lcom/sec/android/securestorage/SecureStorage;->throwException(Ljava/lang/String;)V

    .line 1341
    const/4 v4, 0x0

    .line 1344
    .local v4, "result":[B
    :try_start_0
    sget-object v5, Lcom/sec/android/securestorage/SecureStorage;->secureStorageJNI:Lcom/sec/android/securestorage/SecureStorageJNI;

    invoke-virtual {v5, p1}, Lcom/sec/android/securestorage/SecureStorageJNI;->get(Ljava/lang/String;)[B
    :try_end_0
    .catch Lcom/sec/android/securestorage/SecureStorageJNI$SecureStorageExceptionJNI; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v4

    .line 1349
    :goto_0
    if-nez v4, :cond_0

    const/4 v5, 0x1

    :goto_1
    const-string v6, "Error: input data are incorrect"

    invoke-direct {p0, v5, v6}, Lcom/sec/android/securestorage/SecureStorage;->throwException(ZLjava/lang/String;)V

    .line 1350
    array-length v5, v4

    div-int/lit8 v5, v5, 0x8

    new-array v3, v5, [J

    .line 1351
    .local v3, "publicText":[J
    invoke-static {v4}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 1352
    .local v0, "buffer":Ljava/nio/ByteBuffer;
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->rewind()Ljava/nio/Buffer;

    .line 1353
    const/4 v2, 0x0

    .line 1354
    .local v2, "i":I
    :goto_2
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->hasRemaining()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 1355
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->getLong()J

    move-result-wide v6

    aput-wide v6, v3, v2

    .line 1356
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 1345
    .end local v0    # "buffer":Ljava/nio/ByteBuffer;
    .end local v2    # "i":I
    .end local v3    # "publicText":[J
    :catch_0
    move-exception v1

    .line 1346
    .local v1, "e":Lcom/sec/android/securestorage/SecureStorageJNI$SecureStorageExceptionJNI;
    invoke-virtual {v1}, Lcom/sec/android/securestorage/SecureStorageJNI$SecureStorageExceptionJNI;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v5}, Lcom/sec/android/securestorage/SecureStorage;->throwJNIException(Ljava/lang/String;)V

    goto :goto_0

    .line 1349
    .end local v1    # "e":Lcom/sec/android/securestorage/SecureStorageJNI$SecureStorageExceptionJNI;
    :cond_0
    const/4 v5, 0x0

    goto :goto_1

    .line 1358
    .restart local v0    # "buffer":Ljava/nio/ByteBuffer;
    .restart local v2    # "i":I
    .restart local v3    # "publicText":[J
    :cond_1
    return-object v3
.end method

.method public getLongArray(Ljava/lang/String;Ljava/lang/String;)[J
    .locals 9
    .param p1, "dataName"    # Ljava/lang/String;
    .param p2, "password"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sec/android/securestorage/SecureStorage$SecureStorageException;
        }
    .end annotation

    .prologue
    const/4 v6, 0x1

    const/4 v7, 0x0

    .line 1377
    invoke-direct {p0, p1}, Lcom/sec/android/securestorage/SecureStorage;->throwException(Ljava/lang/String;)V

    .line 1378
    if-nez p2, :cond_0

    move v5, v6

    :goto_0
    const-string v8, "Error: input data are incorrect"

    invoke-direct {p0, v5, v8}, Lcom/sec/android/securestorage/SecureStorage;->throwException(ZLjava/lang/String;)V

    .line 1379
    const/4 v4, 0x0

    .line 1382
    .local v4, "result":[B
    :try_start_0
    sget-object v5, Lcom/sec/android/securestorage/SecureStorage;->secureStorageJNI:Lcom/sec/android/securestorage/SecureStorageJNI;

    invoke-virtual {v5, p1, p2}, Lcom/sec/android/securestorage/SecureStorageJNI;->get(Ljava/lang/String;Ljava/lang/String;)[B
    :try_end_0
    .catch Lcom/sec/android/securestorage/SecureStorageJNI$SecureStorageExceptionJNI; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v4

    .line 1387
    :goto_1
    if-nez v4, :cond_1

    :goto_2
    const-string v5, "Error: input data are incorrect"

    invoke-direct {p0, v6, v5}, Lcom/sec/android/securestorage/SecureStorage;->throwException(ZLjava/lang/String;)V

    .line 1388
    array-length v5, v4

    div-int/lit8 v5, v5, 0x8

    new-array v3, v5, [J

    .line 1389
    .local v3, "publicText":[J
    invoke-static {v4}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 1390
    .local v0, "buffer":Ljava/nio/ByteBuffer;
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->rewind()Ljava/nio/Buffer;

    .line 1391
    const/4 v2, 0x0

    .line 1392
    .local v2, "i":I
    :goto_3
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->hasRemaining()Z

    move-result v5

    if-eqz v5, :cond_2

    .line 1393
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->getLong()J

    move-result-wide v6

    aput-wide v6, v3, v2

    .line 1394
    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    .end local v0    # "buffer":Ljava/nio/ByteBuffer;
    .end local v2    # "i":I
    .end local v3    # "publicText":[J
    .end local v4    # "result":[B
    :cond_0
    move v5, v7

    .line 1378
    goto :goto_0

    .line 1383
    .restart local v4    # "result":[B
    :catch_0
    move-exception v1

    .line 1384
    .local v1, "e":Lcom/sec/android/securestorage/SecureStorageJNI$SecureStorageExceptionJNI;
    invoke-virtual {v1}, Lcom/sec/android/securestorage/SecureStorageJNI$SecureStorageExceptionJNI;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v5}, Lcom/sec/android/securestorage/SecureStorage;->throwJNIException(Ljava/lang/String;)V

    goto :goto_1

    .end local v1    # "e":Lcom/sec/android/securestorage/SecureStorageJNI$SecureStorageExceptionJNI;
    :cond_1
    move v6, v7

    .line 1387
    goto :goto_2

    .line 1396
    .restart local v0    # "buffer":Ljava/nio/ByteBuffer;
    .restart local v2    # "i":I
    .restart local v3    # "publicText":[J
    :cond_2
    return-object v3
.end method

.method public getString(Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .param p1, "dataName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sec/android/securestorage/SecureStorage$SecureStorageException;
        }
    .end annotation

    .prologue
    .line 1466
    invoke-direct {p0, p1}, Lcom/sec/android/securestorage/SecureStorage;->throwException(Ljava/lang/String;)V

    .line 1467
    const/4 v1, 0x0

    .line 1470
    .local v1, "result":[B
    :try_start_0
    sget-object v2, Lcom/sec/android/securestorage/SecureStorage;->secureStorageJNI:Lcom/sec/android/securestorage/SecureStorageJNI;

    invoke-virtual {v2, p1}, Lcom/sec/android/securestorage/SecureStorageJNI;->get(Ljava/lang/String;)[B
    :try_end_0
    .catch Lcom/sec/android/securestorage/SecureStorageJNI$SecureStorageExceptionJNI; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 1475
    :goto_0
    if-nez v1, :cond_0

    const/4 v2, 0x1

    :goto_1
    const-string v3, "Error: input data are incorrect"

    invoke-direct {p0, v2, v3}, Lcom/sec/android/securestorage/SecureStorage;->throwException(ZLjava/lang/String;)V

    .line 1478
    :try_start_1
    new-instance v2, Ljava/lang/String;

    const-string v3, "UTF-8"

    invoke-direct {v2, v1, v3}, Ljava/lang/String;-><init>([BLjava/lang/String;)V
    :try_end_1
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_1 .. :try_end_1} :catch_1

    return-object v2

    .line 1471
    :catch_0
    move-exception v0

    .line 1472
    .local v0, "e":Lcom/sec/android/securestorage/SecureStorageJNI$SecureStorageExceptionJNI;
    invoke-virtual {v0}, Lcom/sec/android/securestorage/SecureStorageJNI$SecureStorageExceptionJNI;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/sec/android/securestorage/SecureStorage;->throwJNIException(Ljava/lang/String;)V

    goto :goto_0

    .line 1475
    .end local v0    # "e":Lcom/sec/android/securestorage/SecureStorageJNI$SecureStorageExceptionJNI;
    :cond_0
    const/4 v2, 0x0

    goto :goto_1

    .line 1480
    :catch_1
    move-exception v0

    .line 1483
    .local v0, "e":Ljava/io/UnsupportedEncodingException;
    new-instance v2, Ljava/lang/RuntimeException;

    invoke-direct {v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v2
.end method

.method public getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 6
    .param p1, "dataName"    # Ljava/lang/String;
    .param p2, "password"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sec/android/securestorage/SecureStorage$SecureStorageException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 1502
    invoke-direct {p0, p1}, Lcom/sec/android/securestorage/SecureStorage;->throwException(Ljava/lang/String;)V

    .line 1503
    if-nez p2, :cond_0

    move v2, v3

    :goto_0
    const-string v5, "Error: input data are incorrect"

    invoke-direct {p0, v2, v5}, Lcom/sec/android/securestorage/SecureStorage;->throwException(ZLjava/lang/String;)V

    .line 1504
    const/4 v1, 0x0

    .line 1507
    .local v1, "result":[B
    :try_start_0
    sget-object v2, Lcom/sec/android/securestorage/SecureStorage;->secureStorageJNI:Lcom/sec/android/securestorage/SecureStorageJNI;

    invoke-virtual {v2, p1, p2}, Lcom/sec/android/securestorage/SecureStorageJNI;->get(Ljava/lang/String;Ljava/lang/String;)[B
    :try_end_0
    .catch Lcom/sec/android/securestorage/SecureStorageJNI$SecureStorageExceptionJNI; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 1512
    :goto_1
    if-nez v1, :cond_1

    :goto_2
    const-string v2, "Error: input data are incorrect"

    invoke-direct {p0, v3, v2}, Lcom/sec/android/securestorage/SecureStorage;->throwException(ZLjava/lang/String;)V

    .line 1515
    :try_start_1
    new-instance v2, Ljava/lang/String;

    const-string v3, "UTF-8"

    invoke-direct {v2, v1, v3}, Ljava/lang/String;-><init>([BLjava/lang/String;)V
    :try_end_1
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_1 .. :try_end_1} :catch_1

    return-object v2

    .end local v1    # "result":[B
    :cond_0
    move v2, v4

    .line 1503
    goto :goto_0

    .line 1508
    .restart local v1    # "result":[B
    :catch_0
    move-exception v0

    .line 1509
    .local v0, "e":Lcom/sec/android/securestorage/SecureStorageJNI$SecureStorageExceptionJNI;
    invoke-virtual {v0}, Lcom/sec/android/securestorage/SecureStorageJNI$SecureStorageExceptionJNI;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/sec/android/securestorage/SecureStorage;->throwJNIException(Ljava/lang/String;)V

    goto :goto_1

    .end local v0    # "e":Lcom/sec/android/securestorage/SecureStorageJNI$SecureStorageExceptionJNI;
    :cond_1
    move v3, v4

    .line 1512
    goto :goto_2

    .line 1517
    :catch_1
    move-exception v0

    .line 1520
    .local v0, "e":Ljava/io/UnsupportedEncodingException;
    new-instance v2, Ljava/lang/RuntimeException;

    invoke-direct {v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v2
.end method

.method public put(Ljava/lang/String;B)Z
    .locals 7
    .param p1, "dataName"    # Ljava/lang/String;
    .param p2, "dataBlock"    # B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sec/android/securestorage/SecureStorage$SecureStorageException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 354
    invoke-direct {p0, p1}, Lcom/sec/android/securestorage/SecureStorage;->throwException(Ljava/lang/String;)V

    .line 355
    const/4 v1, 0x0

    .line 358
    .local v1, "result":Z
    :try_start_0
    sget-object v4, Lcom/sec/android/securestorage/SecureStorage;->secureStorageJNI:Lcom/sec/android/securestorage/SecureStorageJNI;

    const/4 v5, 0x1

    new-array v5, v5, [B

    const/4 v6, 0x0

    aput-byte p2, v5, v6

    invoke-virtual {v4, p1, v5}, Lcom/sec/android/securestorage/SecureStorageJNI;->put(Ljava/lang/String;[B)Z
    :try_end_0
    .catch Lcom/sec/android/securestorage/SecureStorageJNI$SecureStorageExceptionJNI; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 363
    :goto_0
    if-nez v1, :cond_0

    :goto_1
    const-string v3, "Error: internal error"

    invoke-direct {p0, v2, v3}, Lcom/sec/android/securestorage/SecureStorage;->throwException(ZLjava/lang/String;)V

    .line 364
    return v1

    .line 359
    :catch_0
    move-exception v0

    .line 360
    .local v0, "e":Lcom/sec/android/securestorage/SecureStorageJNI$SecureStorageExceptionJNI;
    invoke-virtual {v0}, Lcom/sec/android/securestorage/SecureStorageJNI$SecureStorageExceptionJNI;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/sec/android/securestorage/SecureStorage;->throwJNIException(Ljava/lang/String;)V

    goto :goto_0

    .end local v0    # "e":Lcom/sec/android/securestorage/SecureStorageJNI$SecureStorageExceptionJNI;
    :cond_0
    move v2, v3

    .line 363
    goto :goto_1
.end method

.method public put(Ljava/lang/String;BLjava/lang/String;)Z
    .locals 7
    .param p1, "dataName"    # Ljava/lang/String;
    .param p2, "dataBlock"    # B
    .param p3, "password"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sec/android/securestorage/SecureStorage$SecureStorageException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 385
    invoke-direct {p0, p1}, Lcom/sec/android/securestorage/SecureStorage;->throwException(Ljava/lang/String;)V

    .line 386
    if-nez p3, :cond_0

    move v2, v3

    :goto_0
    const-string v5, "Error: input data are incorrect"

    invoke-direct {p0, v2, v5}, Lcom/sec/android/securestorage/SecureStorage;->throwException(ZLjava/lang/String;)V

    .line 387
    const/4 v1, 0x0

    .line 390
    .local v1, "result":Z
    :try_start_0
    sget-object v2, Lcom/sec/android/securestorage/SecureStorage;->secureStorageJNI:Lcom/sec/android/securestorage/SecureStorageJNI;

    const/4 v5, 0x1

    new-array v5, v5, [B

    const/4 v6, 0x0

    aput-byte p2, v5, v6

    invoke-virtual {v2, p1, v5, p3}, Lcom/sec/android/securestorage/SecureStorageJNI;->put(Ljava/lang/String;[BLjava/lang/String;)Z
    :try_end_0
    .catch Lcom/sec/android/securestorage/SecureStorageJNI$SecureStorageExceptionJNI; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 395
    :goto_1
    if-nez v1, :cond_1

    :goto_2
    const-string v2, "Error: internal error"

    invoke-direct {p0, v3, v2}, Lcom/sec/android/securestorage/SecureStorage;->throwException(ZLjava/lang/String;)V

    .line 396
    return v1

    .end local v1    # "result":Z
    :cond_0
    move v2, v4

    .line 386
    goto :goto_0

    .line 391
    .restart local v1    # "result":Z
    :catch_0
    move-exception v0

    .line 392
    .local v0, "e":Lcom/sec/android/securestorage/SecureStorageJNI$SecureStorageExceptionJNI;
    invoke-virtual {v0}, Lcom/sec/android/securestorage/SecureStorageJNI$SecureStorageExceptionJNI;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/sec/android/securestorage/SecureStorage;->throwJNIException(Ljava/lang/String;)V

    goto :goto_1

    .end local v0    # "e":Lcom/sec/android/securestorage/SecureStorageJNI$SecureStorageExceptionJNI;
    :cond_1
    move v3, v4

    .line 395
    goto :goto_2
.end method

.method public put(Ljava/lang/String;C)Z
    .locals 6
    .param p1, "dataName"    # Ljava/lang/String;
    .param p2, "dataBlock"    # C
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sec/android/securestorage/SecureStorage$SecureStorageException;
        }
    .end annotation

    .prologue
    .line 150
    invoke-direct {p0, p1}, Lcom/sec/android/securestorage/SecureStorage;->throwException(Ljava/lang/String;)V

    .line 151
    const/4 v1, 0x0

    .line 154
    .local v1, "result":Z
    :try_start_0
    sget-object v2, Lcom/sec/android/securestorage/SecureStorage;->secureStorageJNI:Lcom/sec/android/securestorage/SecureStorageJNI;

    int-to-long v4, p2

    invoke-static {v4, v5}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v3

    invoke-virtual {v3}, Ljava/math/BigInteger;->toByteArray()[B

    move-result-object v3

    invoke-virtual {v2, p1, v3}, Lcom/sec/android/securestorage/SecureStorageJNI;->put(Ljava/lang/String;[B)Z
    :try_end_0
    .catch Lcom/sec/android/securestorage/SecureStorageJNI$SecureStorageExceptionJNI; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 159
    :goto_0
    if-nez v1, :cond_0

    const/4 v2, 0x1

    :goto_1
    const-string v3, "Error: internal error"

    invoke-direct {p0, v2, v3}, Lcom/sec/android/securestorage/SecureStorage;->throwException(ZLjava/lang/String;)V

    .line 160
    return v1

    .line 155
    :catch_0
    move-exception v0

    .line 156
    .local v0, "e":Lcom/sec/android/securestorage/SecureStorageJNI$SecureStorageExceptionJNI;
    invoke-virtual {v0}, Lcom/sec/android/securestorage/SecureStorageJNI$SecureStorageExceptionJNI;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/sec/android/securestorage/SecureStorage;->throwJNIException(Ljava/lang/String;)V

    goto :goto_0

    .line 159
    .end local v0    # "e":Lcom/sec/android/securestorage/SecureStorageJNI$SecureStorageExceptionJNI;
    :cond_0
    const/4 v2, 0x0

    goto :goto_1
.end method

.method public put(Ljava/lang/String;CLjava/lang/String;)Z
    .locals 8
    .param p1, "dataName"    # Ljava/lang/String;
    .param p2, "dataBlock"    # C
    .param p3, "password"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sec/android/securestorage/SecureStorage$SecureStorageException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 181
    invoke-direct {p0, p1}, Lcom/sec/android/securestorage/SecureStorage;->throwException(Ljava/lang/String;)V

    .line 182
    if-nez p3, :cond_0

    move v2, v3

    :goto_0
    const-string v5, "Error: input data are incorrect"

    invoke-direct {p0, v2, v5}, Lcom/sec/android/securestorage/SecureStorage;->throwException(ZLjava/lang/String;)V

    .line 183
    const/4 v1, 0x0

    .line 186
    .local v1, "result":Z
    :try_start_0
    sget-object v2, Lcom/sec/android/securestorage/SecureStorage;->secureStorageJNI:Lcom/sec/android/securestorage/SecureStorageJNI;

    int-to-long v6, p2

    invoke-static {v6, v7}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v5

    invoke-virtual {v5}, Ljava/math/BigInteger;->toByteArray()[B

    move-result-object v5

    invoke-virtual {v2, p1, v5, p3}, Lcom/sec/android/securestorage/SecureStorageJNI;->put(Ljava/lang/String;[BLjava/lang/String;)Z
    :try_end_0
    .catch Lcom/sec/android/securestorage/SecureStorageJNI$SecureStorageExceptionJNI; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 191
    :goto_1
    if-nez v1, :cond_1

    :goto_2
    const-string v2, "Error: internal error"

    invoke-direct {p0, v3, v2}, Lcom/sec/android/securestorage/SecureStorage;->throwException(ZLjava/lang/String;)V

    .line 192
    return v1

    .end local v1    # "result":Z
    :cond_0
    move v2, v4

    .line 182
    goto :goto_0

    .line 187
    .restart local v1    # "result":Z
    :catch_0
    move-exception v0

    .line 188
    .local v0, "e":Lcom/sec/android/securestorage/SecureStorageJNI$SecureStorageExceptionJNI;
    invoke-virtual {v0}, Lcom/sec/android/securestorage/SecureStorageJNI$SecureStorageExceptionJNI;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/sec/android/securestorage/SecureStorage;->throwJNIException(Ljava/lang/String;)V

    goto :goto_1

    .end local v0    # "e":Lcom/sec/android/securestorage/SecureStorageJNI$SecureStorageExceptionJNI;
    :cond_1
    move v3, v4

    .line 191
    goto :goto_2
.end method

.method public put(Ljava/lang/String;D)Z
    .locals 6
    .param p1, "dataName"    # Ljava/lang/String;
    .param p2, "dataBlock"    # D
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sec/android/securestorage/SecureStorage$SecureStorageException;
        }
    .end annotation

    .prologue
    .line 743
    invoke-direct {p0, p1}, Lcom/sec/android/securestorage/SecureStorage;->throwException(Ljava/lang/String;)V

    .line 744
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p2, p3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 745
    .local v0, "dString":Ljava/lang/String;
    const/4 v2, 0x0

    .line 748
    .local v2, "result":Z
    :try_start_0
    sget-object v3, Lcom/sec/android/securestorage/SecureStorage;->secureStorageJNI:Lcom/sec/android/securestorage/SecureStorageJNI;

    const-string v4, "UTF-8"

    invoke-virtual {v0, v4}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v4

    invoke-virtual {v3, p1, v4}, Lcom/sec/android/securestorage/SecureStorageJNI;->put(Ljava/lang/String;[B)Z
    :try_end_0
    .catch Lcom/sec/android/securestorage/SecureStorageJNI$SecureStorageExceptionJNI; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_1

    move-result v2

    .line 759
    :goto_0
    if-nez v2, :cond_0

    const/4 v3, 0x1

    :goto_1
    const-string v4, "Error: internal error"

    invoke-direct {p0, v3, v4}, Lcom/sec/android/securestorage/SecureStorage;->throwException(ZLjava/lang/String;)V

    .line 760
    return v2

    .line 750
    :catch_0
    move-exception v1

    .line 752
    .local v1, "e":Lcom/sec/android/securestorage/SecureStorageJNI$SecureStorageExceptionJNI;
    invoke-virtual {v1}, Lcom/sec/android/securestorage/SecureStorageJNI$SecureStorageExceptionJNI;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/sec/android/securestorage/SecureStorage;->throwJNIException(Ljava/lang/String;)V

    goto :goto_0

    .line 754
    .end local v1    # "e":Lcom/sec/android/securestorage/SecureStorageJNI$SecureStorageExceptionJNI;
    :catch_1
    move-exception v1

    .line 757
    .local v1, "e":Ljava/io/UnsupportedEncodingException;
    new-instance v3, Ljava/lang/RuntimeException;

    invoke-direct {v3, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v3

    .line 759
    .end local v1    # "e":Ljava/io/UnsupportedEncodingException;
    :cond_0
    const/4 v3, 0x0

    goto :goto_1
.end method

.method public put(Ljava/lang/String;DLjava/lang/String;)Z
    .locals 8
    .param p1, "dataName"    # Ljava/lang/String;
    .param p2, "dataBlock"    # D
    .param p4, "password"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sec/android/securestorage/SecureStorage$SecureStorageException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 781
    invoke-direct {p0, p1}, Lcom/sec/android/securestorage/SecureStorage;->throwException(Ljava/lang/String;)V

    .line 782
    if-nez p4, :cond_0

    move v3, v4

    :goto_0
    const-string v6, "Error: input data are incorrect"

    invoke-direct {p0, v3, v6}, Lcom/sec/android/securestorage/SecureStorage;->throwException(ZLjava/lang/String;)V

    .line 783
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p2, p3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v6, ""

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 784
    .local v0, "dString":Ljava/lang/String;
    const/4 v2, 0x0

    .line 787
    .local v2, "result":Z
    :try_start_0
    sget-object v3, Lcom/sec/android/securestorage/SecureStorage;->secureStorageJNI:Lcom/sec/android/securestorage/SecureStorageJNI;

    const-string v6, "UTF-8"

    invoke-virtual {v0, v6}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v6

    invoke-virtual {v3, p1, v6, p4}, Lcom/sec/android/securestorage/SecureStorageJNI;->put(Ljava/lang/String;[BLjava/lang/String;)Z
    :try_end_0
    .catch Lcom/sec/android/securestorage/SecureStorageJNI$SecureStorageExceptionJNI; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_1

    move-result v2

    .line 799
    :goto_1
    if-nez v2, :cond_1

    :goto_2
    const-string v3, "Error: internal error"

    invoke-direct {p0, v4, v3}, Lcom/sec/android/securestorage/SecureStorage;->throwException(ZLjava/lang/String;)V

    .line 800
    return v2

    .end local v0    # "dString":Ljava/lang/String;
    .end local v2    # "result":Z
    :cond_0
    move v3, v5

    .line 782
    goto :goto_0

    .line 790
    .restart local v0    # "dString":Ljava/lang/String;
    .restart local v2    # "result":Z
    :catch_0
    move-exception v1

    .line 792
    .local v1, "e":Lcom/sec/android/securestorage/SecureStorageJNI$SecureStorageExceptionJNI;
    invoke-virtual {v1}, Lcom/sec/android/securestorage/SecureStorageJNI$SecureStorageExceptionJNI;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/sec/android/securestorage/SecureStorage;->throwJNIException(Ljava/lang/String;)V

    goto :goto_1

    .line 794
    .end local v1    # "e":Lcom/sec/android/securestorage/SecureStorageJNI$SecureStorageExceptionJNI;
    :catch_1
    move-exception v1

    .line 797
    .local v1, "e":Ljava/io/UnsupportedEncodingException;
    new-instance v3, Ljava/lang/RuntimeException;

    invoke-direct {v3, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v3

    .end local v1    # "e":Ljava/io/UnsupportedEncodingException;
    :cond_1
    move v4, v5

    .line 799
    goto :goto_2
.end method

.method public put(Ljava/lang/String;I)Z
    .locals 6
    .param p1, "dataName"    # Ljava/lang/String;
    .param p2, "dataBlock"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sec/android/securestorage/SecureStorage$SecureStorageException;
        }
    .end annotation

    .prologue
    .line 484
    invoke-direct {p0, p1}, Lcom/sec/android/securestorage/SecureStorage;->throwException(Ljava/lang/String;)V

    .line 485
    const/4 v1, 0x0

    .line 488
    .local v1, "result":Z
    :try_start_0
    sget-object v2, Lcom/sec/android/securestorage/SecureStorage;->secureStorageJNI:Lcom/sec/android/securestorage/SecureStorageJNI;

    int-to-long v4, p2

    invoke-static {v4, v5}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v3

    invoke-virtual {v3}, Ljava/math/BigInteger;->toByteArray()[B

    move-result-object v3

    invoke-virtual {v2, p1, v3}, Lcom/sec/android/securestorage/SecureStorageJNI;->put(Ljava/lang/String;[B)Z
    :try_end_0
    .catch Lcom/sec/android/securestorage/SecureStorageJNI$SecureStorageExceptionJNI; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 493
    :goto_0
    if-nez v1, :cond_0

    const/4 v2, 0x1

    :goto_1
    const-string v3, "Error: internal error"

    invoke-direct {p0, v2, v3}, Lcom/sec/android/securestorage/SecureStorage;->throwException(ZLjava/lang/String;)V

    .line 494
    return v1

    .line 489
    :catch_0
    move-exception v0

    .line 490
    .local v0, "e":Lcom/sec/android/securestorage/SecureStorageJNI$SecureStorageExceptionJNI;
    invoke-virtual {v0}, Lcom/sec/android/securestorage/SecureStorageJNI$SecureStorageExceptionJNI;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/sec/android/securestorage/SecureStorage;->throwJNIException(Ljava/lang/String;)V

    goto :goto_0

    .line 493
    .end local v0    # "e":Lcom/sec/android/securestorage/SecureStorageJNI$SecureStorageExceptionJNI;
    :cond_0
    const/4 v2, 0x0

    goto :goto_1
.end method

.method public put(Ljava/lang/String;ILjava/lang/String;)Z
    .locals 8
    .param p1, "dataName"    # Ljava/lang/String;
    .param p2, "dataBlock"    # I
    .param p3, "password"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sec/android/securestorage/SecureStorage$SecureStorageException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 515
    invoke-direct {p0, p1}, Lcom/sec/android/securestorage/SecureStorage;->throwException(Ljava/lang/String;)V

    .line 516
    if-nez p3, :cond_0

    move v2, v3

    :goto_0
    const-string v5, "Error: input data are incorrect"

    invoke-direct {p0, v2, v5}, Lcom/sec/android/securestorage/SecureStorage;->throwException(ZLjava/lang/String;)V

    .line 517
    const/4 v1, 0x0

    .line 520
    .local v1, "result":Z
    :try_start_0
    sget-object v2, Lcom/sec/android/securestorage/SecureStorage;->secureStorageJNI:Lcom/sec/android/securestorage/SecureStorageJNI;

    int-to-long v6, p2

    invoke-static {v6, v7}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v5

    invoke-virtual {v5}, Ljava/math/BigInteger;->toByteArray()[B

    move-result-object v5

    invoke-virtual {v2, p1, v5, p3}, Lcom/sec/android/securestorage/SecureStorageJNI;->put(Ljava/lang/String;[BLjava/lang/String;)Z
    :try_end_0
    .catch Lcom/sec/android/securestorage/SecureStorageJNI$SecureStorageExceptionJNI; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 525
    :goto_1
    if-nez v1, :cond_1

    :goto_2
    const-string v2, "Error: internal error"

    invoke-direct {p0, v3, v2}, Lcom/sec/android/securestorage/SecureStorage;->throwException(ZLjava/lang/String;)V

    .line 526
    return v1

    .end local v1    # "result":Z
    :cond_0
    move v2, v4

    .line 516
    goto :goto_0

    .line 521
    .restart local v1    # "result":Z
    :catch_0
    move-exception v0

    .line 522
    .local v0, "e":Lcom/sec/android/securestorage/SecureStorageJNI$SecureStorageExceptionJNI;
    invoke-virtual {v0}, Lcom/sec/android/securestorage/SecureStorageJNI$SecureStorageExceptionJNI;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/sec/android/securestorage/SecureStorage;->throwJNIException(Ljava/lang/String;)V

    goto :goto_1

    .end local v0    # "e":Lcom/sec/android/securestorage/SecureStorageJNI$SecureStorageExceptionJNI;
    :cond_1
    move v3, v4

    .line 525
    goto :goto_2
.end method

.method public put(Ljava/lang/String;J)Z
    .locals 4
    .param p1, "dataName"    # Ljava/lang/String;
    .param p2, "dataBlock"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sec/android/securestorage/SecureStorage$SecureStorageException;
        }
    .end annotation

    .prologue
    .line 614
    invoke-direct {p0, p1}, Lcom/sec/android/securestorage/SecureStorage;->throwException(Ljava/lang/String;)V

    .line 615
    const/4 v1, 0x0

    .line 618
    .local v1, "result":Z
    :try_start_0
    sget-object v2, Lcom/sec/android/securestorage/SecureStorage;->secureStorageJNI:Lcom/sec/android/securestorage/SecureStorageJNI;

    invoke-static {p2, p3}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v3

    invoke-virtual {v3}, Ljava/math/BigInteger;->toByteArray()[B

    move-result-object v3

    invoke-virtual {v2, p1, v3}, Lcom/sec/android/securestorage/SecureStorageJNI;->put(Ljava/lang/String;[B)Z
    :try_end_0
    .catch Lcom/sec/android/securestorage/SecureStorageJNI$SecureStorageExceptionJNI; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 623
    :goto_0
    if-nez v1, :cond_0

    const/4 v2, 0x1

    :goto_1
    const-string v3, "Error: internal error"

    invoke-direct {p0, v2, v3}, Lcom/sec/android/securestorage/SecureStorage;->throwException(ZLjava/lang/String;)V

    .line 624
    return v1

    .line 619
    :catch_0
    move-exception v0

    .line 620
    .local v0, "e":Lcom/sec/android/securestorage/SecureStorageJNI$SecureStorageExceptionJNI;
    invoke-virtual {v0}, Lcom/sec/android/securestorage/SecureStorageJNI$SecureStorageExceptionJNI;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/sec/android/securestorage/SecureStorage;->throwJNIException(Ljava/lang/String;)V

    goto :goto_0

    .line 623
    .end local v0    # "e":Lcom/sec/android/securestorage/SecureStorageJNI$SecureStorageExceptionJNI;
    :cond_0
    const/4 v2, 0x0

    goto :goto_1
.end method

.method public put(Ljava/lang/String;JLjava/lang/String;)Z
    .locals 6
    .param p1, "dataName"    # Ljava/lang/String;
    .param p2, "dataBlock"    # J
    .param p4, "password"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sec/android/securestorage/SecureStorage$SecureStorageException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 645
    invoke-direct {p0, p1}, Lcom/sec/android/securestorage/SecureStorage;->throwException(Ljava/lang/String;)V

    .line 646
    if-nez p4, :cond_0

    move v2, v3

    :goto_0
    const-string v5, "Error: input data are incorrect"

    invoke-direct {p0, v2, v5}, Lcom/sec/android/securestorage/SecureStorage;->throwException(ZLjava/lang/String;)V

    .line 647
    const/4 v1, 0x0

    .line 649
    .local v1, "result":Z
    :try_start_0
    sget-object v2, Lcom/sec/android/securestorage/SecureStorage;->secureStorageJNI:Lcom/sec/android/securestorage/SecureStorageJNI;

    invoke-static {p2, p3}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v5

    invoke-virtual {v5}, Ljava/math/BigInteger;->toByteArray()[B

    move-result-object v5

    invoke-virtual {v2, p1, v5, p4}, Lcom/sec/android/securestorage/SecureStorageJNI;->put(Ljava/lang/String;[BLjava/lang/String;)Z
    :try_end_0
    .catch Lcom/sec/android/securestorage/SecureStorageJNI$SecureStorageExceptionJNI; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 654
    :goto_1
    if-nez v1, :cond_1

    :goto_2
    const-string v2, "Error: internal error"

    invoke-direct {p0, v3, v2}, Lcom/sec/android/securestorage/SecureStorage;->throwException(ZLjava/lang/String;)V

    .line 655
    return v1

    .end local v1    # "result":Z
    :cond_0
    move v2, v4

    .line 646
    goto :goto_0

    .line 650
    .restart local v1    # "result":Z
    :catch_0
    move-exception v0

    .line 651
    .local v0, "e":Lcom/sec/android/securestorage/SecureStorageJNI$SecureStorageExceptionJNI;
    invoke-virtual {v0}, Lcom/sec/android/securestorage/SecureStorageJNI$SecureStorageExceptionJNI;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/sec/android/securestorage/SecureStorage;->throwJNIException(Ljava/lang/String;)V

    goto :goto_1

    .end local v0    # "e":Lcom/sec/android/securestorage/SecureStorageJNI$SecureStorageExceptionJNI;
    :cond_1
    move v3, v4

    .line 654
    goto :goto_2
.end method

.method public put(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 6
    .param p1, "dataName"    # Ljava/lang/String;
    .param p2, "dataBlock"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sec/android/securestorage/SecureStorage$SecureStorageException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 212
    invoke-direct {p0, p1}, Lcom/sec/android/securestorage/SecureStorage;->throwException(Ljava/lang/String;)V

    .line 213
    if-nez p2, :cond_0

    move v2, v3

    :goto_0
    const-string v5, "Error: input data are incorrect"

    invoke-direct {p0, v2, v5}, Lcom/sec/android/securestorage/SecureStorage;->throwException(ZLjava/lang/String;)V

    .line 214
    const/4 v1, 0x0

    .line 217
    .local v1, "result":Z
    :try_start_0
    sget-object v2, Lcom/sec/android/securestorage/SecureStorage;->secureStorageJNI:Lcom/sec/android/securestorage/SecureStorageJNI;

    const-string v5, "UTF-8"

    invoke-virtual {p2, v5}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v5

    invoke-virtual {v2, p1, v5}, Lcom/sec/android/securestorage/SecureStorageJNI;->put(Ljava/lang/String;[B)Z
    :try_end_0
    .catch Lcom/sec/android/securestorage/SecureStorageJNI$SecureStorageExceptionJNI; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_1

    move-result v1

    .line 228
    :goto_1
    if-nez v1, :cond_1

    :goto_2
    const-string v2, "Error: internal error"

    invoke-direct {p0, v3, v2}, Lcom/sec/android/securestorage/SecureStorage;->throwException(ZLjava/lang/String;)V

    .line 229
    return v1

    .end local v1    # "result":Z
    :cond_0
    move v2, v4

    .line 213
    goto :goto_0

    .line 219
    .restart local v1    # "result":Z
    :catch_0
    move-exception v0

    .line 221
    .local v0, "e":Lcom/sec/android/securestorage/SecureStorageJNI$SecureStorageExceptionJNI;
    invoke-virtual {v0}, Lcom/sec/android/securestorage/SecureStorageJNI$SecureStorageExceptionJNI;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/sec/android/securestorage/SecureStorage;->throwJNIException(Ljava/lang/String;)V

    goto :goto_1

    .line 223
    .end local v0    # "e":Lcom/sec/android/securestorage/SecureStorageJNI$SecureStorageExceptionJNI;
    :catch_1
    move-exception v0

    .line 226
    .local v0, "e":Ljava/io/UnsupportedEncodingException;
    new-instance v2, Ljava/lang/RuntimeException;

    invoke-direct {v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v2

    .end local v0    # "e":Ljava/io/UnsupportedEncodingException;
    :cond_1
    move v3, v4

    .line 228
    goto :goto_2
.end method

.method public put(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 6
    .param p1, "dataName"    # Ljava/lang/String;
    .param p2, "dataBlock"    # Ljava/lang/String;
    .param p3, "password"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sec/android/securestorage/SecureStorage$SecureStorageException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 251
    invoke-direct {p0, p1}, Lcom/sec/android/securestorage/SecureStorage;->throwException(Ljava/lang/String;)V

    .line 252
    if-nez p2, :cond_0

    move v2, v3

    :goto_0
    const-string v5, "Error: input data are incorrect"

    invoke-direct {p0, v2, v5}, Lcom/sec/android/securestorage/SecureStorage;->throwException(ZLjava/lang/String;)V

    .line 253
    if-nez p3, :cond_1

    move v2, v3

    :goto_1
    const-string v5, "Error: input data are incorrect"

    invoke-direct {p0, v2, v5}, Lcom/sec/android/securestorage/SecureStorage;->throwException(ZLjava/lang/String;)V

    .line 254
    const/4 v1, 0x0

    .line 257
    .local v1, "result":Z
    :try_start_0
    sget-object v2, Lcom/sec/android/securestorage/SecureStorage;->secureStorageJNI:Lcom/sec/android/securestorage/SecureStorageJNI;

    const-string v5, "UTF-8"

    invoke-virtual {p2, v5}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v5

    invoke-virtual {v2, p1, v5, p3}, Lcom/sec/android/securestorage/SecureStorageJNI;->put(Ljava/lang/String;[BLjava/lang/String;)Z
    :try_end_0
    .catch Lcom/sec/android/securestorage/SecureStorageJNI$SecureStorageExceptionJNI; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_1

    move-result v1

    .line 269
    :goto_2
    if-nez v1, :cond_2

    :goto_3
    const-string v2, "Error: internal error"

    invoke-direct {p0, v3, v2}, Lcom/sec/android/securestorage/SecureStorage;->throwException(ZLjava/lang/String;)V

    .line 270
    return v1

    .end local v1    # "result":Z
    :cond_0
    move v2, v4

    .line 252
    goto :goto_0

    :cond_1
    move v2, v4

    .line 253
    goto :goto_1

    .line 260
    .restart local v1    # "result":Z
    :catch_0
    move-exception v0

    .line 262
    .local v0, "e":Lcom/sec/android/securestorage/SecureStorageJNI$SecureStorageExceptionJNI;
    invoke-virtual {v0}, Lcom/sec/android/securestorage/SecureStorageJNI$SecureStorageExceptionJNI;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/sec/android/securestorage/SecureStorage;->throwJNIException(Ljava/lang/String;)V

    goto :goto_2

    .line 264
    .end local v0    # "e":Lcom/sec/android/securestorage/SecureStorageJNI$SecureStorageExceptionJNI;
    :catch_1
    move-exception v0

    .line 267
    .local v0, "e":Ljava/io/UnsupportedEncodingException;
    new-instance v2, Ljava/lang/RuntimeException;

    invoke-direct {v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v2

    .end local v0    # "e":Ljava/io/UnsupportedEncodingException;
    :cond_2
    move v3, v4

    .line 269
    goto :goto_3
.end method

.method public put(Ljava/lang/String;Z)Z
    .locals 5
    .param p1, "dataName"    # Ljava/lang/String;
    .param p2, "dataBlock"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sec/android/securestorage/SecureStorage$SecureStorageException;
        }
    .end annotation

    .prologue
    .line 900
    invoke-direct {p0, p1}, Lcom/sec/android/securestorage/SecureStorage;->throwException(Ljava/lang/String;)V

    .line 901
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 902
    .local v0, "dString":Ljava/lang/String;
    const/4 v2, 0x0

    .line 905
    .local v2, "result":Z
    :try_start_0
    sget-object v3, Lcom/sec/android/securestorage/SecureStorage;->secureStorageJNI:Lcom/sec/android/securestorage/SecureStorageJNI;

    const-string v4, "UTF-8"

    invoke-virtual {v0, v4}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v4

    invoke-virtual {v3, p1, v4}, Lcom/sec/android/securestorage/SecureStorageJNI;->put(Ljava/lang/String;[B)Z
    :try_end_0
    .catch Lcom/sec/android/securestorage/SecureStorageJNI$SecureStorageExceptionJNI; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_1

    move-result v2

    .line 916
    :goto_0
    if-nez v2, :cond_0

    const/4 v3, 0x1

    :goto_1
    const-string v4, "Error: internal error"

    invoke-direct {p0, v3, v4}, Lcom/sec/android/securestorage/SecureStorage;->throwException(ZLjava/lang/String;)V

    .line 917
    return v2

    .line 907
    :catch_0
    move-exception v1

    .line 909
    .local v1, "e":Lcom/sec/android/securestorage/SecureStorageJNI$SecureStorageExceptionJNI;
    invoke-virtual {v1}, Lcom/sec/android/securestorage/SecureStorageJNI$SecureStorageExceptionJNI;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/sec/android/securestorage/SecureStorage;->throwJNIException(Ljava/lang/String;)V

    goto :goto_0

    .line 911
    .end local v1    # "e":Lcom/sec/android/securestorage/SecureStorageJNI$SecureStorageExceptionJNI;
    :catch_1
    move-exception v1

    .line 914
    .local v1, "e":Ljava/io/UnsupportedEncodingException;
    new-instance v3, Ljava/lang/RuntimeException;

    invoke-direct {v3, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v3

    .line 916
    .end local v1    # "e":Ljava/io/UnsupportedEncodingException;
    :cond_0
    const/4 v3, 0x0

    goto :goto_1
.end method

.method public put(Ljava/lang/String;ZLjava/lang/String;)Z
    .locals 7
    .param p1, "dataName"    # Ljava/lang/String;
    .param p2, "dataBlock"    # Z
    .param p3, "password"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sec/android/securestorage/SecureStorage$SecureStorageException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 938
    invoke-direct {p0, p1}, Lcom/sec/android/securestorage/SecureStorage;->throwException(Ljava/lang/String;)V

    .line 939
    if-nez p3, :cond_0

    move v3, v4

    :goto_0
    const-string v6, "Error: input data are incorrect"

    invoke-direct {p0, v3, v6}, Lcom/sec/android/securestorage/SecureStorage;->throwException(ZLjava/lang/String;)V

    .line 940
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v6, ""

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 941
    .local v0, "dString":Ljava/lang/String;
    const/4 v2, 0x0

    .line 944
    .local v2, "result":Z
    :try_start_0
    sget-object v3, Lcom/sec/android/securestorage/SecureStorage;->secureStorageJNI:Lcom/sec/android/securestorage/SecureStorageJNI;

    const-string v6, "UTF-8"

    invoke-virtual {v0, v6}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v6

    invoke-virtual {v3, p1, v6, p3}, Lcom/sec/android/securestorage/SecureStorageJNI;->put(Ljava/lang/String;[BLjava/lang/String;)Z
    :try_end_0
    .catch Lcom/sec/android/securestorage/SecureStorageJNI$SecureStorageExceptionJNI; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_1

    move-result v2

    .line 956
    :goto_1
    if-nez v2, :cond_1

    :goto_2
    const-string v3, "Error: internal error"

    invoke-direct {p0, v4, v3}, Lcom/sec/android/securestorage/SecureStorage;->throwException(ZLjava/lang/String;)V

    .line 957
    return v2

    .end local v0    # "dString":Ljava/lang/String;
    .end local v2    # "result":Z
    :cond_0
    move v3, v5

    .line 939
    goto :goto_0

    .line 947
    .restart local v0    # "dString":Ljava/lang/String;
    .restart local v2    # "result":Z
    :catch_0
    move-exception v1

    .line 949
    .local v1, "e":Lcom/sec/android/securestorage/SecureStorageJNI$SecureStorageExceptionJNI;
    invoke-virtual {v1}, Lcom/sec/android/securestorage/SecureStorageJNI$SecureStorageExceptionJNI;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/sec/android/securestorage/SecureStorage;->throwJNIException(Ljava/lang/String;)V

    goto :goto_1

    .line 951
    .end local v1    # "e":Lcom/sec/android/securestorage/SecureStorageJNI$SecureStorageExceptionJNI;
    :catch_1
    move-exception v1

    .line 954
    .local v1, "e":Ljava/io/UnsupportedEncodingException;
    new-instance v3, Ljava/lang/RuntimeException;

    invoke-direct {v3, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v3

    .end local v1    # "e":Ljava/io/UnsupportedEncodingException;
    :cond_1
    move v4, v5

    .line 956
    goto :goto_2
.end method

.method public put(Ljava/lang/String;[B)Z
    .locals 6
    .param p1, "dataName"    # Ljava/lang/String;
    .param p2, "dataBlock"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sec/android/securestorage/SecureStorage$SecureStorageException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 290
    invoke-direct {p0, p1}, Lcom/sec/android/securestorage/SecureStorage;->throwException(Ljava/lang/String;)V

    .line 291
    if-nez p2, :cond_0

    move v2, v3

    :goto_0
    const-string v5, "Error: input data are incorrect"

    invoke-direct {p0, v2, v5}, Lcom/sec/android/securestorage/SecureStorage;->throwException(ZLjava/lang/String;)V

    .line 292
    const/4 v1, 0x0

    .line 295
    .local v1, "result":Z
    :try_start_0
    sget-object v2, Lcom/sec/android/securestorage/SecureStorage;->secureStorageJNI:Lcom/sec/android/securestorage/SecureStorageJNI;

    invoke-virtual {v2, p1, p2}, Lcom/sec/android/securestorage/SecureStorageJNI;->put(Ljava/lang/String;[B)Z
    :try_end_0
    .catch Lcom/sec/android/securestorage/SecureStorageJNI$SecureStorageExceptionJNI; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 300
    :goto_1
    if-nez v1, :cond_1

    :goto_2
    const-string v2, "Error: internal error"

    invoke-direct {p0, v3, v2}, Lcom/sec/android/securestorage/SecureStorage;->throwException(ZLjava/lang/String;)V

    .line 301
    return v1

    .end local v1    # "result":Z
    :cond_0
    move v2, v4

    .line 291
    goto :goto_0

    .line 296
    .restart local v1    # "result":Z
    :catch_0
    move-exception v0

    .line 297
    .local v0, "e":Lcom/sec/android/securestorage/SecureStorageJNI$SecureStorageExceptionJNI;
    invoke-virtual {v0}, Lcom/sec/android/securestorage/SecureStorageJNI$SecureStorageExceptionJNI;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/sec/android/securestorage/SecureStorage;->throwJNIException(Ljava/lang/String;)V

    goto :goto_1

    .end local v0    # "e":Lcom/sec/android/securestorage/SecureStorageJNI$SecureStorageExceptionJNI;
    :cond_1
    move v3, v4

    .line 300
    goto :goto_2
.end method

.method public put(Ljava/lang/String;[BLjava/lang/String;)Z
    .locals 6
    .param p1, "dataName"    # Ljava/lang/String;
    .param p2, "dataBlock"    # [B
    .param p3, "password"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sec/android/securestorage/SecureStorage$SecureStorageException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 323
    invoke-direct {p0, p1}, Lcom/sec/android/securestorage/SecureStorage;->throwException(Ljava/lang/String;)V

    .line 324
    if-nez p2, :cond_0

    move v2, v3

    :goto_0
    const-string v5, "Error: input data are incorrect"

    invoke-direct {p0, v2, v5}, Lcom/sec/android/securestorage/SecureStorage;->throwException(ZLjava/lang/String;)V

    .line 325
    if-nez p3, :cond_1

    move v2, v3

    :goto_1
    const-string v5, "Error: input data are incorrect"

    invoke-direct {p0, v2, v5}, Lcom/sec/android/securestorage/SecureStorage;->throwException(ZLjava/lang/String;)V

    .line 326
    const/4 v1, 0x0

    .line 329
    .local v1, "result":Z
    :try_start_0
    sget-object v2, Lcom/sec/android/securestorage/SecureStorage;->secureStorageJNI:Lcom/sec/android/securestorage/SecureStorageJNI;

    invoke-virtual {v2, p1, p2, p3}, Lcom/sec/android/securestorage/SecureStorageJNI;->put(Ljava/lang/String;[BLjava/lang/String;)Z
    :try_end_0
    .catch Lcom/sec/android/securestorage/SecureStorageJNI$SecureStorageExceptionJNI; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 334
    :goto_2
    if-nez v1, :cond_2

    :goto_3
    const-string v2, "Error: internal error"

    invoke-direct {p0, v3, v2}, Lcom/sec/android/securestorage/SecureStorage;->throwException(ZLjava/lang/String;)V

    .line 335
    return v1

    .end local v1    # "result":Z
    :cond_0
    move v2, v4

    .line 324
    goto :goto_0

    :cond_1
    move v2, v4

    .line 325
    goto :goto_1

    .line 330
    .restart local v1    # "result":Z
    :catch_0
    move-exception v0

    .line 331
    .local v0, "e":Lcom/sec/android/securestorage/SecureStorageJNI$SecureStorageExceptionJNI;
    invoke-virtual {v0}, Lcom/sec/android/securestorage/SecureStorageJNI$SecureStorageExceptionJNI;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/sec/android/securestorage/SecureStorage;->throwJNIException(Ljava/lang/String;)V

    goto :goto_2

    .end local v0    # "e":Lcom/sec/android/securestorage/SecureStorageJNI$SecureStorageExceptionJNI;
    :cond_2
    move v3, v4

    .line 334
    goto :goto_3
.end method

.method public put(Ljava/lang/String;[C)Z
    .locals 7
    .param p1, "dataName"    # Ljava/lang/String;
    .param p2, "dataBlock"    # [C
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sec/android/securestorage/SecureStorage$SecureStorageException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 80
    invoke-direct {p0, p1}, Lcom/sec/android/securestorage/SecureStorage;->throwException(Ljava/lang/String;)V

    .line 81
    if-nez p2, :cond_0

    move v3, v4

    :goto_0
    const-string v6, "Error: input data are incorrect"

    invoke-direct {p0, v3, v6}, Lcom/sec/android/securestorage/SecureStorage;->throwException(ZLjava/lang/String;)V

    .line 82
    array-length v3, p2

    mul-int/lit8 v3, v3, 0x2

    invoke-static {v3}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 83
    .local v0, "bb":Ljava/nio/ByteBuffer;
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->asCharBuffer()Ljava/nio/CharBuffer;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/nio/CharBuffer;->put([C)Ljava/nio/CharBuffer;

    .line 84
    const/4 v2, 0x0

    .line 87
    .local v2, "result":Z
    :try_start_0
    sget-object v3, Lcom/sec/android/securestorage/SecureStorage;->secureStorageJNI:Lcom/sec/android/securestorage/SecureStorageJNI;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v6

    invoke-virtual {v3, p1, v6}, Lcom/sec/android/securestorage/SecureStorageJNI;->put(Ljava/lang/String;[B)Z
    :try_end_0
    .catch Lcom/sec/android/securestorage/SecureStorageJNI$SecureStorageExceptionJNI; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    .line 92
    :goto_1
    if-nez v2, :cond_1

    :goto_2
    const-string v3, "Error: internal error"

    invoke-direct {p0, v4, v3}, Lcom/sec/android/securestorage/SecureStorage;->throwException(ZLjava/lang/String;)V

    .line 93
    return v2

    .end local v0    # "bb":Ljava/nio/ByteBuffer;
    .end local v2    # "result":Z
    :cond_0
    move v3, v5

    .line 81
    goto :goto_0

    .line 88
    .restart local v0    # "bb":Ljava/nio/ByteBuffer;
    .restart local v2    # "result":Z
    :catch_0
    move-exception v1

    .line 89
    .local v1, "e":Lcom/sec/android/securestorage/SecureStorageJNI$SecureStorageExceptionJNI;
    invoke-virtual {v1}, Lcom/sec/android/securestorage/SecureStorageJNI$SecureStorageExceptionJNI;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/sec/android/securestorage/SecureStorage;->throwJNIException(Ljava/lang/String;)V

    goto :goto_1

    .end local v1    # "e":Lcom/sec/android/securestorage/SecureStorageJNI$SecureStorageExceptionJNI;
    :cond_1
    move v4, v5

    .line 92
    goto :goto_2
.end method

.method public put(Ljava/lang/String;[CLjava/lang/String;)Z
    .locals 7
    .param p1, "dataName"    # Ljava/lang/String;
    .param p2, "dataBlock"    # [C
    .param p3, "password"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sec/android/securestorage/SecureStorage$SecureStorageException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 116
    invoke-direct {p0, p1}, Lcom/sec/android/securestorage/SecureStorage;->throwException(Ljava/lang/String;)V

    .line 117
    if-nez p2, :cond_0

    move v3, v4

    :goto_0
    const-string v6, "Error: input data are incorrect"

    invoke-direct {p0, v3, v6}, Lcom/sec/android/securestorage/SecureStorage;->throwException(ZLjava/lang/String;)V

    .line 118
    if-nez p3, :cond_1

    move v3, v4

    :goto_1
    const-string v6, "Error: input data are incorrect"

    invoke-direct {p0, v3, v6}, Lcom/sec/android/securestorage/SecureStorage;->throwException(ZLjava/lang/String;)V

    .line 119
    array-length v3, p2

    mul-int/lit8 v3, v3, 0x2

    invoke-static {v3}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 120
    .local v0, "bb":Ljava/nio/ByteBuffer;
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->asCharBuffer()Ljava/nio/CharBuffer;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/nio/CharBuffer;->put([C)Ljava/nio/CharBuffer;

    .line 121
    const/4 v2, 0x0

    .line 124
    .local v2, "result":Z
    :try_start_0
    sget-object v3, Lcom/sec/android/securestorage/SecureStorage;->secureStorageJNI:Lcom/sec/android/securestorage/SecureStorageJNI;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v6

    invoke-virtual {v3, p1, v6, p3}, Lcom/sec/android/securestorage/SecureStorageJNI;->put(Ljava/lang/String;[BLjava/lang/String;)Z
    :try_end_0
    .catch Lcom/sec/android/securestorage/SecureStorageJNI$SecureStorageExceptionJNI; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    .line 129
    :goto_2
    if-nez v2, :cond_2

    :goto_3
    const-string v3, "Error: internal error"

    invoke-direct {p0, v4, v3}, Lcom/sec/android/securestorage/SecureStorage;->throwException(ZLjava/lang/String;)V

    .line 130
    return v2

    .end local v0    # "bb":Ljava/nio/ByteBuffer;
    .end local v2    # "result":Z
    :cond_0
    move v3, v5

    .line 117
    goto :goto_0

    :cond_1
    move v3, v5

    .line 118
    goto :goto_1

    .line 125
    .restart local v0    # "bb":Ljava/nio/ByteBuffer;
    .restart local v2    # "result":Z
    :catch_0
    move-exception v1

    .line 126
    .local v1, "e":Lcom/sec/android/securestorage/SecureStorageJNI$SecureStorageExceptionJNI;
    invoke-virtual {v1}, Lcom/sec/android/securestorage/SecureStorageJNI$SecureStorageExceptionJNI;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/sec/android/securestorage/SecureStorage;->throwJNIException(Ljava/lang/String;)V

    goto :goto_2

    .end local v1    # "e":Lcom/sec/android/securestorage/SecureStorageJNI$SecureStorageExceptionJNI;
    :cond_2
    move v4, v5

    .line 129
    goto :goto_3
.end method

.method public put(Ljava/lang/String;[D)Z
    .locals 7
    .param p1, "dataName"    # Ljava/lang/String;
    .param p2, "dataBlock"    # [D
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sec/android/securestorage/SecureStorage$SecureStorageException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 675
    invoke-direct {p0, p1}, Lcom/sec/android/securestorage/SecureStorage;->throwException(Ljava/lang/String;)V

    .line 676
    if-nez p2, :cond_0

    move v3, v4

    :goto_0
    const-string v6, "Error: input data are incorrect"

    invoke-direct {p0, v3, v6}, Lcom/sec/android/securestorage/SecureStorage;->throwException(ZLjava/lang/String;)V

    .line 677
    array-length v3, p2

    mul-int/lit8 v3, v3, 0x8

    invoke-static {v3}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 678
    .local v0, "bb":Ljava/nio/ByteBuffer;
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->asDoubleBuffer()Ljava/nio/DoubleBuffer;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/nio/DoubleBuffer;->put([D)Ljava/nio/DoubleBuffer;

    .line 679
    const/4 v2, 0x0

    .line 682
    .local v2, "result":Z
    :try_start_0
    sget-object v3, Lcom/sec/android/securestorage/SecureStorage;->secureStorageJNI:Lcom/sec/android/securestorage/SecureStorageJNI;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v6

    invoke-virtual {v3, p1, v6}, Lcom/sec/android/securestorage/SecureStorageJNI;->put(Ljava/lang/String;[B)Z
    :try_end_0
    .catch Lcom/sec/android/securestorage/SecureStorageJNI$SecureStorageExceptionJNI; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    .line 687
    :goto_1
    if-nez v2, :cond_1

    :goto_2
    const-string v3, "Error: internal error"

    invoke-direct {p0, v4, v3}, Lcom/sec/android/securestorage/SecureStorage;->throwException(ZLjava/lang/String;)V

    .line 688
    return v2

    .end local v0    # "bb":Ljava/nio/ByteBuffer;
    .end local v2    # "result":Z
    :cond_0
    move v3, v5

    .line 676
    goto :goto_0

    .line 683
    .restart local v0    # "bb":Ljava/nio/ByteBuffer;
    .restart local v2    # "result":Z
    :catch_0
    move-exception v1

    .line 684
    .local v1, "e":Lcom/sec/android/securestorage/SecureStorageJNI$SecureStorageExceptionJNI;
    invoke-virtual {v1}, Lcom/sec/android/securestorage/SecureStorageJNI$SecureStorageExceptionJNI;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/sec/android/securestorage/SecureStorage;->throwJNIException(Ljava/lang/String;)V

    goto :goto_1

    .end local v1    # "e":Lcom/sec/android/securestorage/SecureStorageJNI$SecureStorageExceptionJNI;
    :cond_1
    move v4, v5

    .line 687
    goto :goto_2
.end method

.method public put(Ljava/lang/String;[DLjava/lang/String;)Z
    .locals 7
    .param p1, "dataName"    # Ljava/lang/String;
    .param p2, "dataBlock"    # [D
    .param p3, "password"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sec/android/securestorage/SecureStorage$SecureStorageException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 710
    invoke-direct {p0, p1}, Lcom/sec/android/securestorage/SecureStorage;->throwException(Ljava/lang/String;)V

    .line 711
    if-nez p2, :cond_0

    move v3, v4

    :goto_0
    const-string v6, "Error: input data are incorrect"

    invoke-direct {p0, v3, v6}, Lcom/sec/android/securestorage/SecureStorage;->throwException(ZLjava/lang/String;)V

    .line 712
    if-nez p3, :cond_1

    move v3, v4

    :goto_1
    const-string v6, "Error: input data are incorrect"

    invoke-direct {p0, v3, v6}, Lcom/sec/android/securestorage/SecureStorage;->throwException(ZLjava/lang/String;)V

    .line 713
    array-length v3, p2

    mul-int/lit8 v3, v3, 0x8

    invoke-static {v3}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 714
    .local v0, "bb":Ljava/nio/ByteBuffer;
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->asDoubleBuffer()Ljava/nio/DoubleBuffer;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/nio/DoubleBuffer;->put([D)Ljava/nio/DoubleBuffer;

    .line 715
    const/4 v2, 0x0

    .line 718
    .local v2, "result":Z
    :try_start_0
    sget-object v3, Lcom/sec/android/securestorage/SecureStorage;->secureStorageJNI:Lcom/sec/android/securestorage/SecureStorageJNI;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v6

    invoke-virtual {v3, p1, v6, p3}, Lcom/sec/android/securestorage/SecureStorageJNI;->put(Ljava/lang/String;[BLjava/lang/String;)Z
    :try_end_0
    .catch Lcom/sec/android/securestorage/SecureStorageJNI$SecureStorageExceptionJNI; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    .line 723
    :goto_2
    if-nez v2, :cond_2

    :goto_3
    const-string v3, "Error: internal error"

    invoke-direct {p0, v4, v3}, Lcom/sec/android/securestorage/SecureStorage;->throwException(ZLjava/lang/String;)V

    .line 724
    return v2

    .end local v0    # "bb":Ljava/nio/ByteBuffer;
    .end local v2    # "result":Z
    :cond_0
    move v3, v5

    .line 711
    goto :goto_0

    :cond_1
    move v3, v5

    .line 712
    goto :goto_1

    .line 719
    .restart local v0    # "bb":Ljava/nio/ByteBuffer;
    .restart local v2    # "result":Z
    :catch_0
    move-exception v1

    .line 720
    .local v1, "e":Lcom/sec/android/securestorage/SecureStorageJNI$SecureStorageExceptionJNI;
    invoke-virtual {v1}, Lcom/sec/android/securestorage/SecureStorageJNI$SecureStorageExceptionJNI;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/sec/android/securestorage/SecureStorage;->throwJNIException(Ljava/lang/String;)V

    goto :goto_2

    .end local v1    # "e":Lcom/sec/android/securestorage/SecureStorageJNI$SecureStorageExceptionJNI;
    :cond_2
    move v4, v5

    .line 723
    goto :goto_3
.end method

.method public put(Ljava/lang/String;[I)Z
    .locals 7
    .param p1, "dataName"    # Ljava/lang/String;
    .param p2, "dataBlock"    # [I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sec/android/securestorage/SecureStorage$SecureStorageException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 416
    invoke-direct {p0, p1}, Lcom/sec/android/securestorage/SecureStorage;->throwException(Ljava/lang/String;)V

    .line 417
    if-nez p2, :cond_0

    move v3, v4

    :goto_0
    const-string v6, "Error: input data are incorrect"

    invoke-direct {p0, v3, v6}, Lcom/sec/android/securestorage/SecureStorage;->throwException(ZLjava/lang/String;)V

    .line 418
    array-length v3, p2

    mul-int/lit8 v3, v3, 0x4

    invoke-static {v3}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 419
    .local v0, "bb":Ljava/nio/ByteBuffer;
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->asIntBuffer()Ljava/nio/IntBuffer;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/nio/IntBuffer;->put([I)Ljava/nio/IntBuffer;

    .line 420
    const/4 v2, 0x0

    .line 423
    .local v2, "result":Z
    :try_start_0
    sget-object v3, Lcom/sec/android/securestorage/SecureStorage;->secureStorageJNI:Lcom/sec/android/securestorage/SecureStorageJNI;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v6

    invoke-virtual {v3, p1, v6}, Lcom/sec/android/securestorage/SecureStorageJNI;->put(Ljava/lang/String;[B)Z
    :try_end_0
    .catch Lcom/sec/android/securestorage/SecureStorageJNI$SecureStorageExceptionJNI; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    .line 428
    :goto_1
    if-nez v2, :cond_1

    :goto_2
    const-string v3, "Error: internal error"

    invoke-direct {p0, v4, v3}, Lcom/sec/android/securestorage/SecureStorage;->throwException(ZLjava/lang/String;)V

    .line 429
    return v2

    .end local v0    # "bb":Ljava/nio/ByteBuffer;
    .end local v2    # "result":Z
    :cond_0
    move v3, v5

    .line 417
    goto :goto_0

    .line 424
    .restart local v0    # "bb":Ljava/nio/ByteBuffer;
    .restart local v2    # "result":Z
    :catch_0
    move-exception v1

    .line 425
    .local v1, "e":Lcom/sec/android/securestorage/SecureStorageJNI$SecureStorageExceptionJNI;
    invoke-virtual {v1}, Lcom/sec/android/securestorage/SecureStorageJNI$SecureStorageExceptionJNI;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/sec/android/securestorage/SecureStorage;->throwJNIException(Ljava/lang/String;)V

    goto :goto_1

    .end local v1    # "e":Lcom/sec/android/securestorage/SecureStorageJNI$SecureStorageExceptionJNI;
    :cond_1
    move v4, v5

    .line 428
    goto :goto_2
.end method

.method public put(Ljava/lang/String;[ILjava/lang/String;)Z
    .locals 7
    .param p1, "dataName"    # Ljava/lang/String;
    .param p2, "dataBlock"    # [I
    .param p3, "password"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sec/android/securestorage/SecureStorage$SecureStorageException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 451
    invoke-direct {p0, p1}, Lcom/sec/android/securestorage/SecureStorage;->throwException(Ljava/lang/String;)V

    .line 452
    if-nez p2, :cond_0

    move v3, v4

    :goto_0
    const-string v6, "Error: input data are incorrect"

    invoke-direct {p0, v3, v6}, Lcom/sec/android/securestorage/SecureStorage;->throwException(ZLjava/lang/String;)V

    .line 453
    if-nez p3, :cond_1

    move v3, v4

    :goto_1
    const-string v6, "Error: input data are incorrect"

    invoke-direct {p0, v3, v6}, Lcom/sec/android/securestorage/SecureStorage;->throwException(ZLjava/lang/String;)V

    .line 454
    array-length v3, p2

    mul-int/lit8 v3, v3, 0x4

    invoke-static {v3}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 455
    .local v0, "bb":Ljava/nio/ByteBuffer;
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->asIntBuffer()Ljava/nio/IntBuffer;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/nio/IntBuffer;->put([I)Ljava/nio/IntBuffer;

    .line 456
    const/4 v2, 0x0

    .line 459
    .local v2, "result":Z
    :try_start_0
    sget-object v3, Lcom/sec/android/securestorage/SecureStorage;->secureStorageJNI:Lcom/sec/android/securestorage/SecureStorageJNI;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v6

    invoke-virtual {v3, p1, v6, p3}, Lcom/sec/android/securestorage/SecureStorageJNI;->put(Ljava/lang/String;[BLjava/lang/String;)Z
    :try_end_0
    .catch Lcom/sec/android/securestorage/SecureStorageJNI$SecureStorageExceptionJNI; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    .line 464
    :goto_2
    if-nez v2, :cond_2

    :goto_3
    const-string v3, "Error: internal error"

    invoke-direct {p0, v4, v3}, Lcom/sec/android/securestorage/SecureStorage;->throwException(ZLjava/lang/String;)V

    .line 465
    return v2

    .end local v0    # "bb":Ljava/nio/ByteBuffer;
    .end local v2    # "result":Z
    :cond_0
    move v3, v5

    .line 452
    goto :goto_0

    :cond_1
    move v3, v5

    .line 453
    goto :goto_1

    .line 460
    .restart local v0    # "bb":Ljava/nio/ByteBuffer;
    .restart local v2    # "result":Z
    :catch_0
    move-exception v1

    .line 461
    .local v1, "e":Lcom/sec/android/securestorage/SecureStorageJNI$SecureStorageExceptionJNI;
    invoke-virtual {v1}, Lcom/sec/android/securestorage/SecureStorageJNI$SecureStorageExceptionJNI;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/sec/android/securestorage/SecureStorage;->throwJNIException(Ljava/lang/String;)V

    goto :goto_2

    .end local v1    # "e":Lcom/sec/android/securestorage/SecureStorageJNI$SecureStorageExceptionJNI;
    :cond_2
    move v4, v5

    .line 464
    goto :goto_3
.end method

.method public put(Ljava/lang/String;[J)Z
    .locals 7
    .param p1, "dataName"    # Ljava/lang/String;
    .param p2, "dataBlock"    # [J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sec/android/securestorage/SecureStorage$SecureStorageException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 546
    invoke-direct {p0, p1}, Lcom/sec/android/securestorage/SecureStorage;->throwException(Ljava/lang/String;)V

    .line 547
    if-nez p2, :cond_0

    move v3, v4

    :goto_0
    const-string v6, "Error: input data are incorrect"

    invoke-direct {p0, v3, v6}, Lcom/sec/android/securestorage/SecureStorage;->throwException(ZLjava/lang/String;)V

    .line 548
    array-length v3, p2

    mul-int/lit8 v3, v3, 0x8

    invoke-static {v3}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 549
    .local v0, "bb":Ljava/nio/ByteBuffer;
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->asLongBuffer()Ljava/nio/LongBuffer;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/nio/LongBuffer;->put([J)Ljava/nio/LongBuffer;

    .line 550
    const/4 v2, 0x0

    .line 553
    .local v2, "result":Z
    :try_start_0
    sget-object v3, Lcom/sec/android/securestorage/SecureStorage;->secureStorageJNI:Lcom/sec/android/securestorage/SecureStorageJNI;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v6

    invoke-virtual {v3, p1, v6}, Lcom/sec/android/securestorage/SecureStorageJNI;->put(Ljava/lang/String;[B)Z
    :try_end_0
    .catch Lcom/sec/android/securestorage/SecureStorageJNI$SecureStorageExceptionJNI; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    .line 558
    :goto_1
    if-nez v2, :cond_1

    :goto_2
    const-string v3, "Error: internal error"

    invoke-direct {p0, v4, v3}, Lcom/sec/android/securestorage/SecureStorage;->throwException(ZLjava/lang/String;)V

    .line 559
    return v2

    .end local v0    # "bb":Ljava/nio/ByteBuffer;
    .end local v2    # "result":Z
    :cond_0
    move v3, v5

    .line 547
    goto :goto_0

    .line 554
    .restart local v0    # "bb":Ljava/nio/ByteBuffer;
    .restart local v2    # "result":Z
    :catch_0
    move-exception v1

    .line 555
    .local v1, "e":Lcom/sec/android/securestorage/SecureStorageJNI$SecureStorageExceptionJNI;
    invoke-virtual {v1}, Lcom/sec/android/securestorage/SecureStorageJNI$SecureStorageExceptionJNI;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/sec/android/securestorage/SecureStorage;->throwJNIException(Ljava/lang/String;)V

    goto :goto_1

    .end local v1    # "e":Lcom/sec/android/securestorage/SecureStorageJNI$SecureStorageExceptionJNI;
    :cond_1
    move v4, v5

    .line 558
    goto :goto_2
.end method

.method public put(Ljava/lang/String;[JLjava/lang/String;)Z
    .locals 7
    .param p1, "dataName"    # Ljava/lang/String;
    .param p2, "dataBlock"    # [J
    .param p3, "password"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sec/android/securestorage/SecureStorage$SecureStorageException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 581
    invoke-direct {p0, p1}, Lcom/sec/android/securestorage/SecureStorage;->throwException(Ljava/lang/String;)V

    .line 582
    if-nez p2, :cond_0

    move v3, v4

    :goto_0
    const-string v6, "Error: input data are incorrect"

    invoke-direct {p0, v3, v6}, Lcom/sec/android/securestorage/SecureStorage;->throwException(ZLjava/lang/String;)V

    .line 583
    if-nez p3, :cond_1

    move v3, v4

    :goto_1
    const-string v6, "Error: input data are incorrect"

    invoke-direct {p0, v3, v6}, Lcom/sec/android/securestorage/SecureStorage;->throwException(ZLjava/lang/String;)V

    .line 584
    array-length v3, p2

    mul-int/lit8 v3, v3, 0x8

    invoke-static {v3}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 585
    .local v0, "bb":Ljava/nio/ByteBuffer;
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->asLongBuffer()Ljava/nio/LongBuffer;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/nio/LongBuffer;->put([J)Ljava/nio/LongBuffer;

    .line 586
    const/4 v2, 0x0

    .line 589
    .local v2, "result":Z
    :try_start_0
    sget-object v3, Lcom/sec/android/securestorage/SecureStorage;->secureStorageJNI:Lcom/sec/android/securestorage/SecureStorageJNI;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v6

    invoke-virtual {v3, p1, v6, p3}, Lcom/sec/android/securestorage/SecureStorageJNI;->put(Ljava/lang/String;[BLjava/lang/String;)Z
    :try_end_0
    .catch Lcom/sec/android/securestorage/SecureStorageJNI$SecureStorageExceptionJNI; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    .line 594
    :goto_2
    if-nez v2, :cond_2

    :goto_3
    const-string v3, "Error: internal error"

    invoke-direct {p0, v4, v3}, Lcom/sec/android/securestorage/SecureStorage;->throwException(ZLjava/lang/String;)V

    .line 595
    return v2

    .end local v0    # "bb":Ljava/nio/ByteBuffer;
    .end local v2    # "result":Z
    :cond_0
    move v3, v5

    .line 582
    goto :goto_0

    :cond_1
    move v3, v5

    .line 583
    goto :goto_1

    .line 590
    .restart local v0    # "bb":Ljava/nio/ByteBuffer;
    .restart local v2    # "result":Z
    :catch_0
    move-exception v1

    .line 591
    .local v1, "e":Lcom/sec/android/securestorage/SecureStorageJNI$SecureStorageExceptionJNI;
    invoke-virtual {v1}, Lcom/sec/android/securestorage/SecureStorageJNI$SecureStorageExceptionJNI;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/sec/android/securestorage/SecureStorage;->throwJNIException(Ljava/lang/String;)V

    goto :goto_2

    .end local v1    # "e":Lcom/sec/android/securestorage/SecureStorageJNI$SecureStorageExceptionJNI;
    :cond_2
    move v4, v5

    .line 594
    goto :goto_3
.end method

.method public put(Ljava/lang/String;[Z)Z
    .locals 8
    .param p1, "dataName"    # Ljava/lang/String;
    .param p2, "dataBlock"    # [Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sec/android/securestorage/SecureStorage$SecureStorageException;
        }
    .end annotation

    .prologue
    const/4 v5, 0x1

    const/4 v6, 0x0

    .line 820
    invoke-direct {p0, p1}, Lcom/sec/android/securestorage/SecureStorage;->throwException(Ljava/lang/String;)V

    .line 821
    if-nez p2, :cond_0

    move v4, v5

    :goto_0
    const-string v7, "Error: input data are incorrect"

    invoke-direct {p0, v4, v7}, Lcom/sec/android/securestorage/SecureStorage;->throwException(ZLjava/lang/String;)V

    .line 822
    array-length v4, p2

    new-array v0, v4, [B

    .line 823
    .local v0, "dataInBytes":[B
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_1
    array-length v4, v0

    if-ge v2, v4, :cond_2

    .line 824
    aget-boolean v4, p2, v2

    if-eqz v4, :cond_1

    .line 825
    aput-byte v5, v0, v2

    .line 823
    :goto_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .end local v0    # "dataInBytes":[B
    .end local v2    # "i":I
    :cond_0
    move v4, v6

    .line 821
    goto :goto_0

    .line 827
    .restart local v0    # "dataInBytes":[B
    .restart local v2    # "i":I
    :cond_1
    aput-byte v6, v0, v2

    goto :goto_2

    .line 830
    :cond_2
    const/4 v3, 0x0

    .line 833
    .local v3, "result":Z
    :try_start_0
    sget-object v4, Lcom/sec/android/securestorage/SecureStorage;->secureStorageJNI:Lcom/sec/android/securestorage/SecureStorageJNI;

    invoke-virtual {v4, p1, v0}, Lcom/sec/android/securestorage/SecureStorageJNI;->put(Ljava/lang/String;[B)Z
    :try_end_0
    .catch Lcom/sec/android/securestorage/SecureStorageJNI$SecureStorageExceptionJNI; {:try_start_0 .. :try_end_0} :catch_0

    move-result v3

    .line 838
    :goto_3
    if-nez v3, :cond_3

    :goto_4
    const-string v4, "Error: internal error"

    invoke-direct {p0, v5, v4}, Lcom/sec/android/securestorage/SecureStorage;->throwException(ZLjava/lang/String;)V

    .line 839
    return v3

    .line 834
    :catch_0
    move-exception v1

    .line 835
    .local v1, "e":Lcom/sec/android/securestorage/SecureStorageJNI$SecureStorageExceptionJNI;
    invoke-virtual {v1}, Lcom/sec/android/securestorage/SecureStorageJNI$SecureStorageExceptionJNI;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/sec/android/securestorage/SecureStorage;->throwJNIException(Ljava/lang/String;)V

    goto :goto_3

    .end local v1    # "e":Lcom/sec/android/securestorage/SecureStorageJNI$SecureStorageExceptionJNI;
    :cond_3
    move v5, v6

    .line 838
    goto :goto_4
.end method

.method public put(Ljava/lang/String;[ZLjava/lang/String;)Z
    .locals 8
    .param p1, "dataName"    # Ljava/lang/String;
    .param p2, "dataBlock"    # [Z
    .param p3, "password"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sec/android/securestorage/SecureStorage$SecureStorageException;
        }
    .end annotation

    .prologue
    const/4 v5, 0x1

    const/4 v6, 0x0

    .line 861
    invoke-direct {p0, p1}, Lcom/sec/android/securestorage/SecureStorage;->throwException(Ljava/lang/String;)V

    .line 862
    if-nez p2, :cond_0

    move v4, v5

    :goto_0
    const-string v7, "Error: input data are incorrect"

    invoke-direct {p0, v4, v7}, Lcom/sec/android/securestorage/SecureStorage;->throwException(ZLjava/lang/String;)V

    .line 863
    if-nez p3, :cond_1

    move v4, v5

    :goto_1
    const-string v7, "Error: input data are incorrect"

    invoke-direct {p0, v4, v7}, Lcom/sec/android/securestorage/SecureStorage;->throwException(ZLjava/lang/String;)V

    .line 864
    array-length v4, p2

    new-array v0, v4, [B

    .line 865
    .local v0, "dataInBytes":[B
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_2
    array-length v4, v0

    if-ge v2, v4, :cond_3

    .line 866
    aget-boolean v4, p2, v2

    if-eqz v4, :cond_2

    .line 867
    aput-byte v5, v0, v2

    .line 865
    :goto_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .end local v0    # "dataInBytes":[B
    .end local v2    # "i":I
    :cond_0
    move v4, v6

    .line 862
    goto :goto_0

    :cond_1
    move v4, v6

    .line 863
    goto :goto_1

    .line 869
    .restart local v0    # "dataInBytes":[B
    .restart local v2    # "i":I
    :cond_2
    aput-byte v6, v0, v2

    goto :goto_3

    .line 872
    :cond_3
    const/4 v3, 0x0

    .line 875
    .local v3, "result":Z
    :try_start_0
    sget-object v4, Lcom/sec/android/securestorage/SecureStorage;->secureStorageJNI:Lcom/sec/android/securestorage/SecureStorageJNI;

    invoke-virtual {v4, p1, v0, p3}, Lcom/sec/android/securestorage/SecureStorageJNI;->put(Ljava/lang/String;[BLjava/lang/String;)Z
    :try_end_0
    .catch Lcom/sec/android/securestorage/SecureStorageJNI$SecureStorageExceptionJNI; {:try_start_0 .. :try_end_0} :catch_0

    move-result v3

    .line 880
    :goto_4
    if-nez v3, :cond_4

    :goto_5
    const-string v4, "Error: internal error"

    invoke-direct {p0, v5, v4}, Lcom/sec/android/securestorage/SecureStorage;->throwException(ZLjava/lang/String;)V

    .line 881
    return v3

    .line 876
    :catch_0
    move-exception v1

    .line 877
    .local v1, "e":Lcom/sec/android/securestorage/SecureStorageJNI$SecureStorageExceptionJNI;
    invoke-virtual {v1}, Lcom/sec/android/securestorage/SecureStorageJNI$SecureStorageExceptionJNI;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/sec/android/securestorage/SecureStorage;->throwJNIException(Ljava/lang/String;)V

    goto :goto_4

    .end local v1    # "e":Lcom/sec/android/securestorage/SecureStorageJNI$SecureStorageExceptionJNI;
    :cond_4
    move v5, v6

    .line 880
    goto :goto_5
.end method
