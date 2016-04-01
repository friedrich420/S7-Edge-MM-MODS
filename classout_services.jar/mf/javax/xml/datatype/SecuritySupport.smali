.class Lmf/javax/xml/datatype/SecuritySupport;
.super Ljava/lang/Object;
.source "SecuritySupport.java"


# direct methods
.method constructor <init>()V
    .registers 1

    .prologue
    .line 59
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method doesFileExist(Ljava/io/File;)Z
    .registers 3
    .param p1, "f"    # Ljava/io/File;

    .prologue
    .line 118
    new-instance v0, Lmf/javax/xml/datatype/SecuritySupport$5;

    invoke-direct {v0, p0, p1}, Lmf/javax/xml/datatype/SecuritySupport$5;-><init>(Lmf/javax/xml/datatype/SecuritySupport;Ljava/io/File;)V

    invoke-static {v0}, Ljava/security/AccessController;->doPrivileged(Ljava/security/PrivilegedAction;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    .line 122
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    .line 117
    return v0
.end method

.method getContextClassLoader()Ljava/lang/ClassLoader;
    .registers 2

    .prologue
    .line 64
    new-instance v0, Lmf/javax/xml/datatype/SecuritySupport$1;

    invoke-direct {v0, p0}, Lmf/javax/xml/datatype/SecuritySupport$1;-><init>(Lmf/javax/xml/datatype/SecuritySupport;)V

    invoke-static {v0}, Ljava/security/AccessController;->doPrivileged(Ljava/security/PrivilegedAction;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/ClassLoader;

    .line 63
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
    .line 89
    :try_start_0
    new-instance v1, Lmf/javax/xml/datatype/SecuritySupport$3;

    invoke-direct {v1, p0, p1}, Lmf/javax/xml/datatype/SecuritySupport$3;-><init>(Lmf/javax/xml/datatype/SecuritySupport;Ljava/io/File;)V

    invoke-static {v1}, Ljava/security/AccessController;->doPrivileged(Ljava/security/PrivilegedExceptionAction;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/io/FileInputStream;
    :try_end_b
    .catch Ljava/security/PrivilegedActionException; {:try_start_0 .. :try_end_b} :catch_c

    .line 88
    return-object v1

    .line 94
    :catch_c
    move-exception v0

    .line 95
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
    .line 103
    new-instance v0, Lmf/javax/xml/datatype/SecuritySupport$4;

    invoke-direct {v0, p0, p1, p2}, Lmf/javax/xml/datatype/SecuritySupport$4;-><init>(Lmf/javax/xml/datatype/SecuritySupport;Ljava/lang/ClassLoader;Ljava/lang/String;)V

    invoke-static {v0}, Ljava/security/AccessController;->doPrivileged(Ljava/security/PrivilegedAction;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/io/InputStream;

    .line 102
    return-object v0
.end method

.method getSystemProperty(Ljava/lang/String;)Ljava/lang/String;
    .registers 3
    .param p1, "propName"    # Ljava/lang/String;

    .prologue
    .line 77
    new-instance v0, Lmf/javax/xml/datatype/SecuritySupport$2;

    invoke-direct {v0, p0, p1}, Lmf/javax/xml/datatype/SecuritySupport$2;-><init>(Lmf/javax/xml/datatype/SecuritySupport;Ljava/lang/String;)V

    invoke-static {v0}, Ljava/security/AccessController;->doPrivileged(Ljava/security/PrivilegedAction;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 76
    return-object v0
.end method
