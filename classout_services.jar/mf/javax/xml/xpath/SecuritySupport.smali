.class Lmf/javax/xml/xpath/SecuritySupport;
.super Ljava/lang/Object;
.source "SecuritySupport.java"


# direct methods
.method constructor <init>()V
    .registers 1

    .prologue
    .line 60
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method doesFileExist(Ljava/io/File;)Z
    .registers 3
    .param p1, "f"    # Ljava/io/File;

    .prologue
    .line 172
    new-instance v0, Lmf/javax/xml/xpath/SecuritySupport$8;

    invoke-direct {v0, p0, p1}, Lmf/javax/xml/xpath/SecuritySupport$8;-><init>(Lmf/javax/xml/xpath/SecuritySupport;Ljava/io/File;)V

    invoke-static {v0}, Ljava/security/AccessController;->doPrivileged(Ljava/security/PrivilegedAction;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    .line 176
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    .line 171
    return v0
.end method

.method getContextClassLoader()Ljava/lang/ClassLoader;
    .registers 2

    .prologue
    .line 65
    new-instance v0, Lmf/javax/xml/xpath/SecuritySupport$1;

    invoke-direct {v0, p0}, Lmf/javax/xml/xpath/SecuritySupport$1;-><init>(Lmf/javax/xml/xpath/SecuritySupport;)V

    invoke-static {v0}, Ljava/security/AccessController;->doPrivileged(Ljava/security/PrivilegedAction;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/ClassLoader;

    .line 64
    return-object v0
.end method

.method getFileInputStream(Ljava/io/File;)Ljava/io/FileInputStream;
    .registers 4
    .param p1, "file"    # Ljava/io/File;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;
        }
    .end annotation

    .prologue
    .line 90
    :try_start_0
    new-instance v1, Lmf/javax/xml/xpath/SecuritySupport$3;

    invoke-direct {v1, p0, p1}, Lmf/javax/xml/xpath/SecuritySupport$3;-><init>(Lmf/javax/xml/xpath/SecuritySupport;Ljava/io/File;)V

    invoke-static {v1}, Ljava/security/AccessController;->doPrivileged(Ljava/security/PrivilegedExceptionAction;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/io/FileInputStream;
    :try_end_b
    .catch Ljava/security/PrivilegedActionException; {:try_start_0 .. :try_end_b} :catch_c

    .line 89
    return-object v1

    .line 95
    :catch_c
    move-exception v0

    .line 96
    .local v0, "e":Ljava/security/PrivilegedActionException;
    invoke-virtual {v0}, Ljava/security/PrivilegedActionException;->getException()Ljava/lang/Exception;

    move-result-object v1

    check-cast v1, Ljava/io/FileNotFoundException;

    throw v1
.end method

.method getResourceAsStream(Ljava/lang/ClassLoader;Ljava/lang/String;)Ljava/io/InputStream;
    .registers 4
    .param p1, "cl"    # Ljava/lang/ClassLoader;
    .param p2, "name"    # Ljava/lang/String;

    .prologue
    .line 157
    new-instance v0, Lmf/javax/xml/xpath/SecuritySupport$7;

    invoke-direct {v0, p0, p1, p2}, Lmf/javax/xml/xpath/SecuritySupport$7;-><init>(Lmf/javax/xml/xpath/SecuritySupport;Ljava/lang/ClassLoader;Ljava/lang/String;)V

    invoke-static {v0}, Ljava/security/AccessController;->doPrivileged(Ljava/security/PrivilegedAction;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/io/InputStream;

    .line 156
    return-object v0
.end method

.method getResourceAsURL(Ljava/lang/ClassLoader;Ljava/lang/String;)Ljava/net/URL;
    .registers 4
    .param p1, "cl"    # Ljava/lang/ClassLoader;
    .param p2, "name"    # Ljava/lang/String;

    .prologue
    .line 119
    new-instance v0, Lmf/javax/xml/xpath/SecuritySupport$5;

    invoke-direct {v0, p0, p1, p2}, Lmf/javax/xml/xpath/SecuritySupport$5;-><init>(Lmf/javax/xml/xpath/SecuritySupport;Ljava/lang/ClassLoader;Ljava/lang/String;)V

    invoke-static {v0}, Ljava/security/AccessController;->doPrivileged(Ljava/security/PrivilegedAction;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/net/URL;

    .line 118
    return-object v0
.end method

.method getResources(Ljava/lang/ClassLoader;Ljava/lang/String;)Ljava/util/Enumeration;
    .registers 5
    .param p1, "cl"    # Ljava/lang/ClassLoader;
    .param p2, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 137
    :try_start_0
    new-instance v1, Lmf/javax/xml/xpath/SecuritySupport$6;

    invoke-direct {v1, p0, p1, p2}, Lmf/javax/xml/xpath/SecuritySupport$6;-><init>(Lmf/javax/xml/xpath/SecuritySupport;Ljava/lang/ClassLoader;Ljava/lang/String;)V

    invoke-static {v1}, Ljava/security/AccessController;->doPrivileged(Ljava/security/PrivilegedExceptionAction;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Enumeration;
    :try_end_b
    .catch Ljava/security/PrivilegedActionException; {:try_start_0 .. :try_end_b} :catch_c

    .line 136
    return-object v1

    .line 148
    :catch_c
    move-exception v0

    .line 149
    .local v0, "e":Ljava/security/PrivilegedActionException;
    invoke-virtual {v0}, Ljava/security/PrivilegedActionException;->getException()Ljava/lang/Exception;

    move-result-object v1

    check-cast v1, Ljava/io/IOException;

    throw v1
.end method

.method getSystemProperty(Ljava/lang/String;)Ljava/lang/String;
    .registers 3
    .param p1, "propName"    # Ljava/lang/String;

    .prologue
    .line 78
    new-instance v0, Lmf/javax/xml/xpath/SecuritySupport$2;

    invoke-direct {v0, p0, p1}, Lmf/javax/xml/xpath/SecuritySupport$2;-><init>(Lmf/javax/xml/xpath/SecuritySupport;Ljava/lang/String;)V

    invoke-static {v0}, Ljava/security/AccessController;->doPrivileged(Ljava/security/PrivilegedAction;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 77
    return-object v0
.end method

.method getURLInputStream(Ljava/net/URL;)Ljava/io/InputStream;
    .registers 4
    .param p1, "url"    # Ljava/net/URL;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 105
    :try_start_0
    new-instance v1, Lmf/javax/xml/xpath/SecuritySupport$4;

    invoke-direct {v1, p0, p1}, Lmf/javax/xml/xpath/SecuritySupport$4;-><init>(Lmf/javax/xml/xpath/SecuritySupport;Ljava/net/URL;)V

    invoke-static {v1}, Ljava/security/AccessController;->doPrivileged(Ljava/security/PrivilegedExceptionAction;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/io/InputStream;
    :try_end_b
    .catch Ljava/security/PrivilegedActionException; {:try_start_0 .. :try_end_b} :catch_c

    .line 104
    return-object v1

    .line 110
    :catch_c
    move-exception v0

    .line 111
    .local v0, "e":Ljava/security/PrivilegedActionException;
    invoke-virtual {v0}, Ljava/security/PrivilegedActionException;->getException()Ljava/lang/Exception;

    move-result-object v1

    check-cast v1, Ljava/io/IOException;

    throw v1
.end method
