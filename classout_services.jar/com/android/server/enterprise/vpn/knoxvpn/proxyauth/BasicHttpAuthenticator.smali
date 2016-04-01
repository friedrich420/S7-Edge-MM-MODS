.class public Lcom/android/server/enterprise/vpn/knoxvpn/proxyauth/BasicHttpAuthenticator;
.super Ljava/lang/Object;
.source "BasicHttpAuthenticator.java"

# interfaces
.implements Lcom/android/server/enterprise/vpn/knoxvpn/proxyauth/ProxyAuthenticator;


# static fields
.field private static final PROXY_AUTHENTICATION_HEADER_PREFIX:Ljava/lang/String; = "Proxy-Authorization: Basic "

.field private static final TAG:Ljava/lang/String; = "BasicHttpAuthenticator"


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private getCredentialKeyValue(Ljava/lang/String;)Ljava/lang/String;
    .registers 5
    .param p1, "userCred"    # Ljava/lang/String;

    .prologue
    .line 19
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 20
    .local v0, "sb":Ljava/lang/StringBuilder;
    if-eqz p1, :cond_2b

    .line 21
    const-string v1, "Proxy-Authorization: Basic "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 22
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\r\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 23
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 25
    :goto_2a
    return-object v1

    :cond_2b
    const/4 v1, 0x0

    goto :goto_2a
.end method

.method private getLine(Ljava/io/InputStream;)Ljava/lang/String;
    .registers 5
    .param p1, "inputStream"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 29
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 30
    .local v0, "buffer":Ljava/lang/StringBuffer;
    invoke-virtual {p1}, Ljava/io/InputStream;->read()I

    move-result v1

    .line 31
    .local v1, "byteBuffer":I
    if-gez v1, :cond_e

    .line 32
    const-string v2, ""

    .line 40
    :goto_d
    return-object v2

    .line 34
    :cond_e
    const/16 v2, 0xd

    if-eq v1, v2, :cond_16

    .line 35
    int-to-char v2, v1

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 37
    :cond_16
    invoke-virtual {p1}, Ljava/io/InputStream;->read()I

    move-result v1

    .line 38
    const/16 v2, 0xa

    if-eq v1, v2, :cond_20

    if-gez v1, :cond_e

    .line 40
    :cond_20
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_d
.end method


# virtual methods
.method public getAuthHeaderKey()Ljava/lang/String;
    .registers 2

    .prologue
    .line 118
    const-string v0, "Proxy-Authorization: Basic "

    return-object v0
.end method

.method public getCredentialsAppendedHeader(Ljava/lang/String;Ljava/net/Socket;Ljava/net/Socket;[Ljava/lang/String;)[Ljava/lang/String;
    .registers 11
    .param p1, "credentials"    # Ljava/lang/String;
    .param p2, "source"    # Ljava/net/Socket;
    .param p3, "destination"    # Ljava/net/Socket;
    .param p4, "requestLine"    # [Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 98
    const/4 v1, 0x0

    .line 99
    .local v1, "line":Ljava/lang/String;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 100
    .local v3, "sb":Ljava/lang/StringBuilder;
    const/4 v2, 0x0

    .line 101
    .local v2, "returnValue":[Ljava/lang/String;
    invoke-direct {p0, p1}, getCredentialKeyValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 102
    .local v0, "cred":Ljava/lang/String;
    if-eqz v0, :cond_10

    .line 103
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 106
    :cond_10
    invoke-virtual {p2}, Ljava/net/Socket;->getInputStream()Ljava/io/InputStream;

    move-result-object v4

    invoke-direct {p0, v4}, getLine(Ljava/io/InputStream;)Ljava/lang/String;

    move-result-object v1

    .line 107
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v4

    if-lez v4, :cond_26

    .line 108
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 109
    const-string v4, "\r\n"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 111
    :cond_26
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v4

    if-gtz v4, :cond_10

    .line 112
    const/4 v4, 0x2

    new-array v2, v4, [Ljava/lang/String;

    .end local v2    # "returnValue":[Ljava/lang/String;
    const/4 v4, 0x0

    aput-object v0, v2, v4

    const/4 v4, 0x1

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v2, v4

    .line 113
    .restart local v2    # "returnValue":[Ljava/lang/String;
    return-object v2
.end method

.method public verifyProxyAuthCredentials(Ljava/lang/String;Ljava/net/Socket;Ljava/net/Socket;[Ljava/lang/String;)Z
    .registers 15
    .param p1, "credentials"    # Ljava/lang/String;
    .param p2, "source"    # Ljava/net/Socket;
    .param p3, "server"    # Ljava/net/Socket;
    .param p4, "requestLine"    # [Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    const/4 v9, 0x1

    const/4 v6, 0x0

    .line 46
    const-string v7, "BasicHttpAuthenticator"

    const-string v8, ": In BasicHttpAuthenticator:verifyProxyAuthCredentials"

    invoke-static {v7, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 47
    const/4 v5, 0x0

    .line 48
    .local v5, "sb":Ljava/lang/StringBuilder;
    const/4 v2, 0x0

    .line 49
    .local v2, "outputStream":Ljava/io/OutputStream;
    const/4 v0, 0x0

    .line 50
    .local v0, "is":Ljava/io/InputStream;
    const/4 v4, 0x0

    .line 51
    .local v4, "retStatus":Z
    if-eqz p3, :cond_15

    if-eqz p4, :cond_15

    array-length v7, p4

    const/4 v8, 0x2

    if-ge v7, v8, :cond_1d

    .line 52
    :cond_15
    const-string v7, "BasicHttpAuthenticator"

    const-string v8, ": In BasicHttpAuthenticator:verifyProxyAuthCredentials Invalid input"

    invoke-static {v7, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 92
    :goto_1c
    return v6

    .line 55
    :cond_1d
    invoke-virtual {p3}, Ljava/net/Socket;->getInputStream()Ljava/io/InputStream;

    move-result-object v0

    .line 63
    new-instance v5, Ljava/lang/StringBuilder;

    .end local v5    # "sb":Ljava/lang/StringBuilder;
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 64
    .restart local v5    # "sb":Ljava/lang/StringBuilder;
    invoke-virtual {p3}, Ljava/net/Socket;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v2

    .line 65
    invoke-direct {p0, p1}, getCredentialKeyValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 66
    .local v3, "processedHeaderCred":Ljava/lang/String;
    const-string v7, "HEAD "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 67
    aget-object v6, p4, v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 68
    const-string v6, " "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 69
    aget-object v6, p4, v9

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 70
    const-string v6, "\r\n"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 71
    const-string v6, "Proxy-Connection: keep-alive"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 72
    const-string v6, "\r\n"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 73
    if-eqz v3, :cond_56

    .line 74
    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 76
    :cond_56
    const-string v6, "\r\n"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 77
    const-string v6, "BasicHttpAuthenticator"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, ": In BasicHttpAuthenticator:verifyProxyAuthCredentials: Writing to server = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 78
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->getBytes()[B

    move-result-object v6

    invoke-virtual {v2, v6}, Ljava/io/OutputStream;->write([B)V

    .line 79
    invoke-virtual {v2}, Ljava/io/OutputStream;->flush()V

    .line 80
    const/4 v1, 0x0

    .line 82
    .local v1, "line":Ljava/lang/String;
    :cond_86
    invoke-direct {p0, v0}, getLine(Ljava/io/InputStream;)Ljava/lang/String;

    move-result-object v1

    .line 83
    const-string v6, "BasicHttpAuthenticator"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Line from server = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 84
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v6

    if-gtz v6, :cond_c3

    .line 91
    :goto_a8
    const-string v6, "BasicHttpAuthenticator"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, ": In verifyProxyAuthCredentials retStatus = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    move v6, v4

    .line 92
    goto/16 :goto_1c

    .line 86
    :cond_c3
    const-string v6, "HTTP/1."

    invoke-virtual {v1, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_f1

    .line 87
    const-string v6, " "

    invoke-virtual {v1, v6}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v6

    aget-object v6, v6, v9

    const-string v7, "407"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    .line 88
    const-string v6, "BasicHttpAuthenticator"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "In verifyProxyAuthCredentials: retStatus= "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 90
    :cond_f1
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v6

    if-gtz v6, :cond_86

    goto :goto_a8
.end method
