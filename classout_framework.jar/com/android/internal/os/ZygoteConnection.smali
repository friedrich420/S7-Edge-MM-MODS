.class Lcom/android/internal/os/ZygoteConnection;
.super Ljava/lang/Object;
.source "ZygoteConnection.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/os/ZygoteConnection$Arguments;
    }
.end annotation


# static fields
.field private static final CONNECTION_TIMEOUT_MILLIS:I = 0x3e8

.field private static final MAX_ZYGOTE_ARGC:I = 0x400

.field private static final TAG:Ljava/lang/String; = "Zygote"

.field private static final intArray2d:[[I


# instance fields
.field private final abiList:Ljava/lang/String;

.field private final mSocket:Landroid/net/LocalSocket;

.field private final mSocketOutStream:Ljava/io/DataOutputStream;

.field private final mSocketReader:Ljava/io/BufferedReader;

.field private final peer:Landroid/net/Credentials;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    const/4 v0, 0x0

    .line 55
    filled-new-array {v0, v0}, [I

    move-result-object v0

    sget-object v1, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    invoke-static {v1, v0}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [[I

    sput-object v0, intArray2d:[[I

    return-void
.end method

.method constructor <init>(Landroid/net/LocalSocket;Ljava/lang/String;)V
    .registers 7
    .param p1, "socket"    # Landroid/net/LocalSocket;
    .param p2, "abiList"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 89
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 90
    iput-object p1, p0, mSocket:Landroid/net/LocalSocket;

    .line 91
    iput-object p2, p0, abiList:Ljava/lang/String;

    .line 93
    new-instance v1, Ljava/io/DataOutputStream;

    invoke-virtual {p1}, Landroid/net/LocalSocket;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    iput-object v1, p0, mSocketOutStream:Ljava/io/DataOutputStream;

    .line 96
    new-instance v1, Ljava/io/BufferedReader;

    new-instance v2, Ljava/io/InputStreamReader;

    invoke-virtual {p1}, Landroid/net/LocalSocket;->getInputStream()Ljava/io/InputStream;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    const/16 v3, 0x100

    invoke-direct {v1, v2, v3}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;I)V

    iput-object v1, p0, mSocketReader:Ljava/io/BufferedReader;

    .line 99
    iget-object v1, p0, mSocket:Landroid/net/LocalSocket;

    const/16 v2, 0x3e8

    invoke-virtual {v1, v2}, Landroid/net/LocalSocket;->setSoTimeout(I)V

    .line 102
    :try_start_2b
    iget-object v1, p0, mSocket:Landroid/net/LocalSocket;

    invoke-virtual {v1}, Landroid/net/LocalSocket;->getPeerCredentials()Landroid/net/Credentials;

    move-result-object v1

    iput-object v1, p0, peer:Landroid/net/Credentials;
    :try_end_33
    .catch Ljava/io/IOException; {:try_start_2b .. :try_end_33} :catch_34

    .line 107
    return-void

    .line 103
    :catch_34
    move-exception v0

    .line 104
    .local v0, "ex":Ljava/io/IOException;
    const-string v1, "Zygote"

    const-string v2, "Cannot read peer credentials"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 105
    throw v0
.end method

.method public static applyDebuggerSystemProperty(Lcom/android/internal/os/ZygoteConnection$Arguments;)V
    .registers 3
    .param p0, "args"    # Lcom/android/internal/os/ZygoteConnection$Arguments;

    .prologue
    .line 666
    const-string v0, "1"

    const-string/jumbo v1, "ro.debuggable"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_15

    .line 667
    iget v0, p0, Lcom/android/internal/os/ZygoteConnection$Arguments;->debugFlags:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/internal/os/ZygoteConnection$Arguments;->debugFlags:I

    .line 669
    :cond_15
    return-void
.end method

.method private static applyInvokeWithSecurityPolicy(Lcom/android/internal/os/ZygoteConnection$Arguments;Landroid/net/Credentials;)V
    .registers 5
    .param p0, "args"    # Lcom/android/internal/os/ZygoteConnection$Arguments;
    .param p1, "peer"    # Landroid/net/Credentials;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/os/ZygoteSecurityException;
        }
    .end annotation

    .prologue
    .line 686
    invoke-virtual {p1}, Landroid/net/Credentials;->getUid()I

    move-result v0

    .line 688
    .local v0, "peerUid":I
    iget-object v1, p0, Lcom/android/internal/os/ZygoteConnection$Arguments;->invokeWith:Ljava/lang/String;

    if-eqz v1, :cond_12

    if-eqz v0, :cond_12

    .line 689
    new-instance v1, Lcom/android/internal/os/ZygoteSecurityException;

    const-string v2, "Peer is not permitted to specify an explicit invoke-with wrapper command"

    invoke-direct {v1, v2}, Lcom/android/internal/os/ZygoteSecurityException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 692
    :cond_12
    return-void
.end method

.method public static applyInvokeWithSystemProperty(Lcom/android/internal/os/ZygoteConnection$Arguments;)V
    .registers 7
    .param p0, "args"    # Lcom/android/internal/os/ZygoteConnection$Arguments;

    .prologue
    const/16 v5, 0x1f

    const/16 v4, 0x1e

    const/4 v3, 0x0

    .line 700
    iget-object v1, p0, Lcom/android/internal/os/ZygoteConnection$Arguments;->invokeWith:Ljava/lang/String;

    if-nez v1, :cond_4a

    iget-object v1, p0, Lcom/android/internal/os/ZygoteConnection$Arguments;->niceName:Ljava/lang/String;

    if-eqz v1, :cond_4a

    .line 701
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "wrap."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/internal/os/ZygoteConnection$Arguments;->niceName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 702
    .local v0, "property":Ljava/lang/String;
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-le v1, v5, :cond_35

    .line 704
    invoke-virtual {v0, v4}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v2, 0x2e

    if-eq v1, v2, :cond_4b

    .line 705
    invoke-virtual {v0, v3, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 710
    :cond_35
    :goto_35
    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/internal/os/ZygoteConnection$Arguments;->invokeWith:Ljava/lang/String;

    .line 711
    iget-object v1, p0, Lcom/android/internal/os/ZygoteConnection$Arguments;->invokeWith:Ljava/lang/String;

    if-eqz v1, :cond_4a

    iget-object v1, p0, Lcom/android/internal/os/ZygoteConnection$Arguments;->invokeWith:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_4a

    .line 712
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/internal/os/ZygoteConnection$Arguments;->invokeWith:Ljava/lang/String;

    .line 715
    .end local v0    # "property":Ljava/lang/String;
    :cond_4a
    return-void

    .line 707
    .restart local v0    # "property":Ljava/lang/String;
    :cond_4b
    invoke-virtual {v0, v3, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    goto :goto_35
.end method

.method private static applyUidSecurityPolicy(Lcom/android/internal/os/ZygoteConnection$Arguments;Landroid/net/Credentials;)V
    .registers 7
    .param p0, "args"    # Lcom/android/internal/os/ZygoteConnection$Arguments;
    .param p1, "peer"    # Landroid/net/Credentials;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/os/ZygoteSecurityException;
        }
    .end annotation

    .prologue
    const/16 v4, 0x3e8

    const/4 v2, 0x1

    .line 629
    invoke-virtual {p1}, Landroid/net/Credentials;->getUid()I

    move-result v3

    if-ne v3, v4, :cond_35

    .line 630
    const-string/jumbo v3, "ro.factorytest"

    invoke-static {v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 636
    .local v0, "factoryTest":Ljava/lang/String;
    const-string v3, "1"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_33

    const-string v3, "2"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_33

    move v1, v2

    .line 638
    .local v1, "uidRestricted":Z
    :goto_21
    if-eqz v1, :cond_35

    iget-boolean v3, p0, Lcom/android/internal/os/ZygoteConnection$Arguments;->uidSpecified:Z

    if-eqz v3, :cond_35

    iget v3, p0, Lcom/android/internal/os/ZygoteConnection$Arguments;->uid:I

    if-ge v3, v4, :cond_35

    .line 639
    new-instance v2, Lcom/android/internal/os/ZygoteSecurityException;

    const-string v3, "System UID may not launch process with UID < 1000"

    invoke-direct {v2, v3}, Lcom/android/internal/os/ZygoteSecurityException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 636
    .end local v1    # "uidRestricted":Z
    :cond_33
    const/4 v1, 0x0

    goto :goto_21

    .line 646
    .end local v0    # "factoryTest":Ljava/lang/String;
    :cond_35
    iget-boolean v3, p0, Lcom/android/internal/os/ZygoteConnection$Arguments;->uidSpecified:Z

    if-nez v3, :cond_41

    .line 647
    invoke-virtual {p1}, Landroid/net/Credentials;->getUid()I

    move-result v3

    iput v3, p0, Lcom/android/internal/os/ZygoteConnection$Arguments;->uid:I

    .line 648
    iput-boolean v2, p0, Lcom/android/internal/os/ZygoteConnection$Arguments;->uidSpecified:Z

    .line 650
    :cond_41
    iget-boolean v3, p0, Lcom/android/internal/os/ZygoteConnection$Arguments;->gidSpecified:Z

    if-nez v3, :cond_4d

    .line 651
    invoke-virtual {p1}, Landroid/net/Credentials;->getGid()I

    move-result v3

    iput v3, p0, Lcom/android/internal/os/ZygoteConnection$Arguments;->gid:I

    .line 652
    iput-boolean v2, p0, Lcom/android/internal/os/ZygoteConnection$Arguments;->gidSpecified:Z

    .line 654
    :cond_4d
    return-void
.end method

.method private handleAbiListQuery()Z
    .registers 5

    .prologue
    .line 265
    :try_start_0
    iget-object v2, p0, abiList:Ljava/lang/String;

    sget-object v3, Ljava/nio/charset/StandardCharsets;->US_ASCII:Ljava/nio/charset/Charset;

    invoke-virtual {v2, v3}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v0

    .line 266
    .local v0, "abiListBytes":[B
    iget-object v2, p0, mSocketOutStream:Ljava/io/DataOutputStream;

    array-length v3, v0

    invoke-virtual {v2, v3}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 267
    iget-object v2, p0, mSocketOutStream:Ljava/io/DataOutputStream;

    invoke-virtual {v2, v0}, Ljava/io/DataOutputStream;->write([B)V
    :try_end_13
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_13} :catch_15

    .line 268
    const/4 v2, 0x0

    .line 271
    .end local v0    # "abiListBytes":[B
    :goto_14
    return v2

    .line 269
    :catch_15
    move-exception v1

    .line 270
    .local v1, "ioe":Ljava/io/IOException;
    const-string v2, "Zygote"

    const-string v3, "Error writing to command socket"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 271
    const/4 v2, 0x1

    goto :goto_14
.end method

.method private handleChildProc(Lcom/android/internal/os/ZygoteConnection$Arguments;[Ljava/io/FileDescriptor;Ljava/io/FileDescriptor;Ljava/io/PrintStream;)V
    .registers 16
    .param p1, "parsedArgs"    # Lcom/android/internal/os/ZygoteConnection$Arguments;
    .param p2, "descriptors"    # [Ljava/io/FileDescriptor;
    .param p3, "pipeFd"    # Ljava/io/FileDescriptor;
    .param p4, "newStderr"    # Ljava/io/PrintStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/os/ZygoteInit$MethodAndArgsCaller;
        }
    .end annotation

    .prologue
    .line 740
    invoke-virtual {p0}, closeSocket()V

    .line 741
    invoke-static {}, Lcom/android/internal/os/ZygoteInit;->closeServerSocket()V

    .line 743
    if-eqz p2, :cond_2f

    .line 745
    const/4 v0, 0x0

    :try_start_9
    aget-object v0, p2, v0

    sget v1, Landroid/system/OsConstants;->STDIN_FILENO:I

    invoke-static {v0, v1}, Landroid/system/Os;->dup2(Ljava/io/FileDescriptor;I)Ljava/io/FileDescriptor;

    .line 746
    const/4 v0, 0x1

    aget-object v0, p2, v0

    sget v1, Landroid/system/OsConstants;->STDOUT_FILENO:I

    invoke-static {v0, v1}, Landroid/system/Os;->dup2(Ljava/io/FileDescriptor;I)Ljava/io/FileDescriptor;

    .line 747
    const/4 v0, 0x2

    aget-object v0, p2, v0

    sget v1, Landroid/system/OsConstants;->STDERR_FILENO:I

    invoke-static {v0, v1}, Landroid/system/Os;->dup2(Ljava/io/FileDescriptor;I)Ljava/io/FileDescriptor;

    .line 749
    move-object v6, p2

    .local v6, "arr$":[Ljava/io/FileDescriptor;
    array-length v10, v6

    .local v10, "len$":I
    const/4 v9, 0x0

    .local v9, "i$":I
    :goto_23
    if-ge v9, v10, :cond_2d

    aget-object v8, v6, v9

    .line 750
    .local v8, "fd":Ljava/io/FileDescriptor;
    invoke-static {v8}, Llibcore/io/IoUtils;->closeQuietly(Ljava/io/FileDescriptor;)V

    .line 749
    add-int/lit8 v9, v9, 0x1

    goto :goto_23

    .line 752
    .end local v8    # "fd":Ljava/io/FileDescriptor;
    :cond_2d
    sget-object p4, Ljava/lang/System;->err:Ljava/io/PrintStream;
    :try_end_2f
    .catch Landroid/system/ErrnoException; {:try_start_9 .. :try_end_2f} :catch_52

    .line 758
    .end local v6    # "arr$":[Ljava/io/FileDescriptor;
    .end local v9    # "i$":I
    .end local v10    # "len$":I
    :cond_2f
    :goto_2f
    iget-object v0, p1, Lcom/android/internal/os/ZygoteConnection$Arguments;->niceName:Ljava/lang/String;

    if-eqz v0, :cond_38

    .line 759
    iget-object v0, p1, Lcom/android/internal/os/ZygoteConnection$Arguments;->niceName:Ljava/lang/String;

    invoke-static {v0}, Landroid/os/Process;->setArgV0(Ljava/lang/String;)V

    .line 763
    :cond_38
    const-wide/16 v0, 0x40

    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    .line 764
    iget-object v0, p1, Lcom/android/internal/os/ZygoteConnection$Arguments;->invokeWith:Ljava/lang/String;

    if-eqz v0, :cond_5b

    .line 765
    iget-object v0, p1, Lcom/android/internal/os/ZygoteConnection$Arguments;->invokeWith:Ljava/lang/String;

    iget-object v1, p1, Lcom/android/internal/os/ZygoteConnection$Arguments;->niceName:Ljava/lang/String;

    iget v2, p1, Lcom/android/internal/os/ZygoteConnection$Arguments;->targetSdkVersion:I

    invoke-static {}, Ldalvik/system/VMRuntime;->getCurrentInstructionSet()Ljava/lang/String;

    move-result-object v3

    iget-object v5, p1, Lcom/android/internal/os/ZygoteConnection$Arguments;->remainingArgs:[Ljava/lang/String;

    move-object v4, p3

    invoke-static/range {v0 .. v5}, Lcom/android/internal/os/WrapperInit;->execApplication(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/io/FileDescriptor;[Ljava/lang/String;)V

    .line 773
    :goto_51
    return-void

    .line 753
    :catch_52
    move-exception v7

    .line 754
    .local v7, "ex":Landroid/system/ErrnoException;
    const-string v0, "Zygote"

    const-string v1, "Error reopening stdio"

    invoke-static {v0, v1, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_2f

    .line 770
    .end local v7    # "ex":Landroid/system/ErrnoException;
    :cond_5b
    iget v0, p1, Lcom/android/internal/os/ZygoteConnection$Arguments;->targetSdkVersion:I

    iget-object v1, p1, Lcom/android/internal/os/ZygoteConnection$Arguments;->remainingArgs:[Ljava/lang/String;

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/android/internal/os/RuntimeInit;->zygoteInit(I[Ljava/lang/String;Ljava/lang/ClassLoader;)V

    goto :goto_51
.end method

.method private handleParentProc(I[Ljava/io/FileDescriptor;Ljava/io/FileDescriptor;Lcom/android/internal/os/ZygoteConnection$Arguments;)Z
    .registers 17
    .param p1, "pid"    # I
    .param p2, "descriptors"    # [Ljava/io/FileDescriptor;
    .param p3, "pipeFd"    # Ljava/io/FileDescriptor;
    .param p4, "parsedArgs"    # Lcom/android/internal/os/ZygoteConnection$Arguments;

    .prologue
    .line 790
    if-lez p1, :cond_5

    .line 791
    invoke-direct {p0, p1}, setChildPgid(I)V

    .line 794
    :cond_5
    if-eqz p2, :cond_14

    .line 795
    move-object v0, p2

    .local v0, "arr$":[Ljava/io/FileDescriptor;
    array-length v6, v0

    .local v6, "len$":I
    const/4 v3, 0x0

    .local v3, "i$":I
    :goto_a
    if-ge v3, v6, :cond_14

    aget-object v2, v0, v3

    .line 796
    .local v2, "fd":Ljava/io/FileDescriptor;
    invoke-static {v2}, Llibcore/io/IoUtils;->closeQuietly(Ljava/io/FileDescriptor;)V

    .line 795
    add-int/lit8 v3, v3, 0x1

    goto :goto_a

    .line 800
    .end local v0    # "arr$":[Ljava/io/FileDescriptor;
    .end local v2    # "fd":Ljava/io/FileDescriptor;
    .end local v3    # "i$":I
    .end local v6    # "len$":I
    :cond_14
    const/4 v8, 0x0

    .line 801
    .local v8, "usingWrapper":Z
    if-eqz p3, :cond_66

    if-lez p1, :cond_66

    .line 802
    new-instance v5, Ljava/io/DataInputStream;

    new-instance v9, Ljava/io/FileInputStream;

    invoke-direct {v9, p3}, Ljava/io/FileInputStream;-><init>(Ljava/io/FileDescriptor;)V

    invoke-direct {v5, v9}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V

    .line 803
    .local v5, "is":Ljava/io/DataInputStream;
    const/4 v4, -0x1

    .line 805
    .local v4, "innerPid":I
    :try_start_24
    invoke-virtual {v5}, Ljava/io/DataInputStream;->readInt()I
    :try_end_27
    .catch Ljava/io/IOException; {:try_start_24 .. :try_end_27} :catch_37
    .catchall {:try_start_24 .. :try_end_27} :catchall_45

    move-result v4

    .line 810
    :try_start_28
    invoke-virtual {v5}, Ljava/io/DataInputStream;->close()V
    :try_end_2b
    .catch Ljava/io/IOException; {:try_start_28 .. :try_end_2b} :catch_9f

    .line 817
    :goto_2b
    if-lez v4, :cond_66

    .line 818
    move v7, v4

    .line 819
    .local v7, "parentPid":I
    :goto_2e
    if-lez v7, :cond_4a

    if-eq v7, p1, :cond_4a

    .line 820
    invoke-static {v7}, Landroid/os/Process;->getParentPid(I)I

    move-result v7

    goto :goto_2e

    .line 806
    .end local v7    # "parentPid":I
    :catch_37
    move-exception v1

    .line 807
    .local v1, "ex":Ljava/io/IOException;
    :try_start_38
    const-string v9, "Zygote"

    const-string v10, "Error reading pid from wrapped process, child may have died"

    invoke-static {v9, v10, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_3f
    .catchall {:try_start_38 .. :try_end_3f} :catchall_45

    .line 810
    :try_start_3f
    invoke-virtual {v5}, Ljava/io/DataInputStream;->close()V
    :try_end_42
    .catch Ljava/io/IOException; {:try_start_3f .. :try_end_42} :catch_43

    goto :goto_2b

    .line 811
    :catch_43
    move-exception v9

    goto :goto_2b

    .line 809
    .end local v1    # "ex":Ljava/io/IOException;
    :catchall_45
    move-exception v9

    .line 810
    :try_start_46
    invoke-virtual {v5}, Ljava/io/DataInputStream;->close()V
    :try_end_49
    .catch Ljava/io/IOException; {:try_start_46 .. :try_end_49} :catch_a1

    .line 812
    :goto_49
    throw v9

    .line 822
    .restart local v7    # "parentPid":I
    :cond_4a
    if-lez v7, :cond_72

    .line 823
    const-string v9, "Zygote"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Wrapped process has pid "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 824
    move p1, v4

    .line 825
    const/4 v8, 0x1

    .line 835
    .end local v4    # "innerPid":I
    .end local v5    # "is":Ljava/io/DataInputStream;
    .end local v7    # "parentPid":I
    :cond_66
    :goto_66
    :try_start_66
    iget-object v9, p0, mSocketOutStream:Ljava/io/DataOutputStream;

    invoke-virtual {v9, p1}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 836
    iget-object v9, p0, mSocketOutStream:Ljava/io/DataOutputStream;

    invoke-virtual {v9, v8}, Ljava/io/DataOutputStream;->writeBoolean(Z)V
    :try_end_70
    .catch Ljava/io/IOException; {:try_start_66 .. :try_end_70} :catch_95

    .line 842
    const/4 v9, 0x0

    :goto_71
    return v9

    .line 827
    .restart local v4    # "innerPid":I
    .restart local v5    # "is":Ljava/io/DataInputStream;
    .restart local v7    # "parentPid":I
    :cond_72
    const-string v9, "Zygote"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Wrapped process reported a pid that is not a child of the process that we forked: childPid="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " innerPid="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_66

    .line 837
    .end local v4    # "innerPid":I
    .end local v5    # "is":Ljava/io/DataInputStream;
    .end local v7    # "parentPid":I
    :catch_95
    move-exception v1

    .line 838
    .restart local v1    # "ex":Ljava/io/IOException;
    const-string v9, "Zygote"

    const-string v10, "Error writing to command socket"

    invoke-static {v9, v10, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 839
    const/4 v9, 0x1

    goto :goto_71

    .line 811
    .end local v1    # "ex":Ljava/io/IOException;
    .restart local v4    # "innerPid":I
    .restart local v5    # "is":Ljava/io/DataInputStream;
    :catch_9f
    move-exception v9

    goto :goto_2b

    :catch_a1
    move-exception v10

    goto :goto_49
.end method

.method private static logAndPrintError(Ljava/io/PrintStream;Ljava/lang/String;Ljava/lang/Throwable;)V
    .registers 4
    .param p0, "newStderr"    # Ljava/io/PrintStream;
    .param p1, "message"    # Ljava/lang/String;
    .param p2, "ex"    # Ljava/lang/Throwable;

    .prologue
    .line 869
    const-string v0, "Zygote"

    invoke-static {v0, p1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 870
    if-eqz p0, :cond_1f

    .line 871
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    if-nez p2, :cond_14

    const-string p2, ""

    .end local p2    # "ex":Ljava/lang/Throwable;
    :cond_14
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 873
    :cond_1f
    return-void
.end method

.method private readArgumentList()[Ljava/lang/String;
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 588
    :try_start_0
    iget-object v5, p0, mSocketReader:Ljava/io/BufferedReader;

    invoke-virtual {v5}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v4

    .line 590
    .local v4, "s":Ljava/lang/String;
    if-nez v4, :cond_a

    .line 592
    const/4 v3, 0x0

    .line 614
    :cond_9
    return-object v3

    .line 594
    :cond_a
    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_d
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_d} :catch_1b

    move-result v0

    .line 601
    .local v0, "argc":I
    const/16 v5, 0x400

    if-le v0, v5, :cond_2b

    .line 602
    new-instance v5, Ljava/io/IOException;

    const-string/jumbo v6, "max arg count exceeded"

    invoke-direct {v5, v6}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 595
    .end local v0    # "argc":I
    .end local v4    # "s":Ljava/lang/String;
    :catch_1b
    move-exception v1

    .line 596
    .local v1, "ex":Ljava/lang/NumberFormatException;
    const-string v5, "Zygote"

    const-string v6, "invalid Zygote wire format: non-int at argc"

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 597
    new-instance v5, Ljava/io/IOException;

    const-string v6, "invalid wire format"

    invoke-direct {v5, v6}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 605
    .end local v1    # "ex":Ljava/lang/NumberFormatException;
    .restart local v0    # "argc":I
    .restart local v4    # "s":Ljava/lang/String;
    :cond_2b
    new-array v3, v0, [Ljava/lang/String;

    .line 606
    .local v3, "result":[Ljava/lang/String;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_2e
    if-ge v2, v0, :cond_9

    .line 607
    iget-object v5, p0, mSocketReader:Ljava/io/BufferedReader;

    invoke-virtual {v5}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v2

    .line 608
    aget-object v5, v3, v2

    if-nez v5, :cond_45

    .line 610
    new-instance v5, Ljava/io/IOException;

    const-string/jumbo v6, "truncated request"

    invoke-direct {v5, v6}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 606
    :cond_45
    add-int/lit8 v2, v2, 0x1

    goto :goto_2e
.end method

.method private setChildPgid(I)V
    .registers 5
    .param p1, "pid"    # I

    .prologue
    .line 848
    :try_start_0
    iget-object v1, p0, peer:Landroid/net/Credentials;

    invoke-virtual {v1}, Landroid/net/Credentials;->getPid()I

    move-result v1

    invoke-static {v1}, Landroid/system/Os;->getpgid(I)I

    move-result v1

    invoke-static {p1, v1}, Landroid/system/Os;->setpgid(II)V
    :try_end_d
    .catch Landroid/system/ErrnoException; {:try_start_0 .. :try_end_d} :catch_e

    .line 857
    :goto_d
    return-void

    .line 849
    :catch_e
    move-exception v0

    .line 854
    .local v0, "ex":Landroid/system/ErrnoException;
    const-string v1, "Zygote"

    const-string v2, "Zygote: setpgid failed. This is normal if peer is not in our session"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_d
.end method


# virtual methods
.method closeSocket()V
    .registers 4

    .prologue
    .line 280
    :try_start_0
    iget-object v1, p0, mSocket:Landroid/net/LocalSocket;

    invoke-virtual {v1}, Landroid/net/LocalSocket;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_5} :catch_6

    .line 285
    :goto_5
    return-void

    .line 281
    :catch_6
    move-exception v0

    .line 282
    .local v0, "ex":Ljava/io/IOException;
    const-string v1, "Zygote"

    const-string v2, "Exception while closing command socket in parent"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_5
.end method

.method getFileDesciptor()Ljava/io/FileDescriptor;
    .registers 2

    .prologue
    .line 115
    iget-object v0, p0, mSocket:Landroid/net/LocalSocket;

    invoke-virtual {v0}, Landroid/net/LocalSocket;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v0

    return-object v0
.end method

.method runOnce()Z
    .registers 31
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/os/ZygoteInit$MethodAndArgsCaller;
        }
    .end annotation

    .prologue
    .line 135
    const/16 v25, 0x0

    .line 139
    .local v25, "parsedArgs":Lcom/android/internal/os/ZygoteConnection$Arguments;
    :try_start_2
    invoke-direct/range {p0 .. p0}, readArgumentList()[Ljava/lang/String;

    move-result-object v19

    .line 140
    .local v19, "args":[Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v6, v0, mSocket:Landroid/net/LocalSocket;

    invoke-virtual {v6}, Landroid/net/LocalSocket;->getAncillaryFileDescriptors()[Ljava/io/FileDescriptor;
    :try_end_d
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_d} :catch_15

    move-result-object v21

    .line 147
    .local v21, "descriptors":[Ljava/io/FileDescriptor;
    if-nez v19, :cond_37

    .line 149
    invoke-virtual/range {p0 .. p0}, closeSocket()V

    .line 150
    const/4 v6, 0x1

    .line 259
    .end local v19    # "args":[Ljava/lang/String;
    .end local v21    # "descriptors":[Ljava/io/FileDescriptor;
    :goto_14
    return v6

    .line 141
    :catch_15
    move-exception v22

    .line 142
    .local v22, "ex":Ljava/io/IOException;
    const-string v6, "Zygote"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "IOException on command socket "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual/range {v22 .. v22}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 143
    invoke-virtual/range {p0 .. p0}, closeSocket()V

    .line 144
    const/4 v6, 0x1

    goto :goto_14

    .line 154
    .end local v22    # "ex":Ljava/io/IOException;
    .restart local v19    # "args":[Ljava/lang/String;
    .restart local v21    # "descriptors":[Ljava/io/FileDescriptor;
    :cond_37
    const/16 v24, 0x0

    .line 156
    .local v24, "newStderr":Ljava/io/PrintStream;
    if-eqz v21, :cond_50

    move-object/from16 v0, v21

    array-length v6, v0

    const/4 v7, 0x3

    if-lt v6, v7, :cond_50

    .line 157
    new-instance v24, Ljava/io/PrintStream;

    .end local v24    # "newStderr":Ljava/io/PrintStream;
    new-instance v6, Ljava/io/FileOutputStream;

    const/4 v7, 0x2

    aget-object v7, v21, v7

    invoke-direct {v6, v7}, Ljava/io/FileOutputStream;-><init>(Ljava/io/FileDescriptor;)V

    move-object/from16 v0, v24

    invoke-direct {v0, v6}, Ljava/io/PrintStream;-><init>(Ljava/io/OutputStream;)V

    .line 161
    .restart local v24    # "newStderr":Ljava/io/PrintStream;
    :cond_50
    const/16 v27, -0x1

    .line 162
    .local v27, "pid":I
    const/16 v20, 0x0

    .line 163
    .local v20, "childPipeFd":Ljava/io/FileDescriptor;
    const/16 v29, 0x0

    .line 166
    .local v29, "serverPipeFd":Ljava/io/FileDescriptor;
    :try_start_56
    new-instance v26, Lcom/android/internal/os/ZygoteConnection$Arguments;

    move-object/from16 v0, v26

    move-object/from16 v1, v19

    invoke-direct {v0, v1}, Lcom/android/internal/os/ZygoteConnection$Arguments;-><init>([Ljava/lang/String;)V
    :try_end_5f
    .catch Landroid/system/ErrnoException; {:try_start_56 .. :try_end_5f} :catch_1c6
    .catch Ljava/lang/IllegalArgumentException; {:try_start_56 .. :try_end_5f} :catch_183
    .catch Lcom/android/internal/os/ZygoteSecurityException; {:try_start_56 .. :try_end_5f} :catch_18f

    .line 168
    .end local v25    # "parsedArgs":Lcom/android/internal/os/ZygoteConnection$Arguments;
    .local v26, "parsedArgs":Lcom/android/internal/os/ZygoteConnection$Arguments;
    :try_start_5f
    move-object/from16 v0, v26

    iget-boolean v6, v0, Lcom/android/internal/os/ZygoteConnection$Arguments;->abiListQuery:Z

    if-eqz v6, :cond_6c

    .line 169
    invoke-direct/range {p0 .. p0}, handleAbiListQuery()Z

    move-result v6

    move-object/from16 v25, v26

    .end local v26    # "parsedArgs":Lcom/android/internal/os/ZygoteConnection$Arguments;
    .restart local v25    # "parsedArgs":Lcom/android/internal/os/ZygoteConnection$Arguments;
    goto :goto_14

    .line 172
    .end local v25    # "parsedArgs":Lcom/android/internal/os/ZygoteConnection$Arguments;
    .restart local v26    # "parsedArgs":Lcom/android/internal/os/ZygoteConnection$Arguments;
    :cond_6c
    move-object/from16 v0, v26

    iget-wide v6, v0, Lcom/android/internal/os/ZygoteConnection$Arguments;->permittedCapabilities:J

    const-wide/16 v8, 0x0

    cmp-long v6, v6, v8

    if-nez v6, :cond_80

    move-object/from16 v0, v26

    iget-wide v6, v0, Lcom/android/internal/os/ZygoteConnection$Arguments;->effectiveCapabilities:J

    const-wide/16 v8, 0x0

    cmp-long v6, v6, v8

    if-eqz v6, :cond_dc

    .line 173
    :cond_80
    new-instance v6, Lcom/android/internal/os/ZygoteSecurityException;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Client may not specify capabilities: permitted=0x"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move-object/from16 v0, v26

    iget-wide v8, v0, Lcom/android/internal/os/ZygoteConnection$Arguments;->permittedCapabilities:J

    invoke-static {v8, v9}, Ljava/lang/Long;->toHexString(J)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ", effective=0x"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move-object/from16 v0, v26

    iget-wide v8, v0, Lcom/android/internal/os/ZygoteConnection$Arguments;->effectiveCapabilities:J

    invoke-static {v8, v9}, Ljava/lang/Long;->toHexString(J)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Lcom/android/internal/os/ZygoteSecurityException;-><init>(Ljava/lang/String;)V

    throw v6
    :try_end_b3
    .catch Landroid/system/ErrnoException; {:try_start_5f .. :try_end_b3} :catch_b3
    .catch Ljava/lang/IllegalArgumentException; {:try_start_5f .. :try_end_b3} :catch_1c2
    .catch Lcom/android/internal/os/ZygoteSecurityException; {:try_start_5f .. :try_end_b3} :catch_1be

    .line 232
    :catch_b3
    move-exception v22

    move-object/from16 v25, v26

    .line 233
    .end local v26    # "parsedArgs":Lcom/android/internal/os/ZygoteConnection$Arguments;
    .local v22, "ex":Landroid/system/ErrnoException;
    .restart local v25    # "parsedArgs":Lcom/android/internal/os/ZygoteConnection$Arguments;
    :goto_b6
    const-string v6, "Exception creating pipe"

    move-object/from16 v0, v24

    move-object/from16 v1, v22

    invoke-static {v0, v6, v1}, logAndPrintError(Ljava/io/PrintStream;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 242
    .end local v22    # "ex":Landroid/system/ErrnoException;
    :goto_bf
    if-nez v27, :cond_19b

    .line 244
    :try_start_c1
    invoke-static/range {v29 .. v29}, Llibcore/io/IoUtils;->closeQuietly(Ljava/io/FileDescriptor;)V

    .line 245
    const/16 v29, 0x0

    .line 246
    move-object/from16 v0, p0

    move-object/from16 v1, v25

    move-object/from16 v2, v21

    move-object/from16 v3, v20

    move-object/from16 v4, v24

    invoke-direct {v0, v1, v2, v3, v4}, handleChildProc(Lcom/android/internal/os/ZygoteConnection$Arguments;[Ljava/io/FileDescriptor;Ljava/io/FileDescriptor;Ljava/io/PrintStream;)V
    :try_end_d3
    .catchall {:try_start_c1 .. :try_end_d3} :catchall_1b6

    .line 250
    const/4 v6, 0x1

    .line 258
    invoke-static/range {v20 .. v20}, Llibcore/io/IoUtils;->closeQuietly(Ljava/io/FileDescriptor;)V

    .line 259
    invoke-static/range {v29 .. v29}, Llibcore/io/IoUtils;->closeQuietly(Ljava/io/FileDescriptor;)V

    goto/16 :goto_14

    .line 178
    .end local v25    # "parsedArgs":Lcom/android/internal/os/ZygoteConnection$Arguments;
    .restart local v26    # "parsedArgs":Lcom/android/internal/os/ZygoteConnection$Arguments;
    :cond_dc
    :try_start_dc
    move-object/from16 v0, p0

    iget-object v6, v0, peer:Landroid/net/Credentials;

    move-object/from16 v0, v26

    invoke-static {v0, v6}, applyUidSecurityPolicy(Lcom/android/internal/os/ZygoteConnection$Arguments;Landroid/net/Credentials;)V

    .line 179
    move-object/from16 v0, p0

    iget-object v6, v0, peer:Landroid/net/Credentials;

    move-object/from16 v0, v26

    invoke-static {v0, v6}, applyInvokeWithSecurityPolicy(Lcom/android/internal/os/ZygoteConnection$Arguments;Landroid/net/Credentials;)V

    .line 181
    invoke-static/range {v26 .. v26}, applyDebuggerSystemProperty(Lcom/android/internal/os/ZygoteConnection$Arguments;)V

    .line 182
    invoke-static/range {v26 .. v26}, applyInvokeWithSystemProperty(Lcom/android/internal/os/ZygoteConnection$Arguments;)V

    .line 184
    const/4 v10, 0x0

    check-cast v10, [[I

    .line 186
    .local v10, "rlimits":[[I
    move-object/from16 v0, v26

    iget-object v6, v0, Lcom/android/internal/os/ZygoteConnection$Arguments;->rlimits:Ljava/util/ArrayList;

    if-eqz v6, :cond_109

    .line 187
    move-object/from16 v0, v26

    iget-object v6, v0, Lcom/android/internal/os/ZygoteConnection$Arguments;->rlimits:Ljava/util/ArrayList;

    sget-object v7, intArray2d:[[I

    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v10

    .end local v10    # "rlimits":[[I
    check-cast v10, [[I

    .line 190
    .restart local v10    # "rlimits":[[I
    :cond_109
    move-object/from16 v0, v26

    iget-object v6, v0, Lcom/android/internal/os/ZygoteConnection$Arguments;->invokeWith:Ljava/lang/String;

    if-eqz v6, :cond_123

    .line 191
    sget v6, Landroid/system/OsConstants;->O_CLOEXEC:I

    invoke-static {v6}, Landroid/system/Os;->pipe2(I)[Ljava/io/FileDescriptor;

    move-result-object v28

    .line 192
    .local v28, "pipeFds":[Ljava/io/FileDescriptor;
    const/4 v6, 0x1

    aget-object v20, v28, v6

    .line 193
    const/4 v6, 0x0

    aget-object v29, v28, v6

    .line 194
    sget v6, Landroid/system/OsConstants;->F_SETFD:I

    const/4 v7, 0x0

    move-object/from16 v0, v20

    invoke-static {v0, v6, v7}, Landroid/system/Os;->fcntlInt(Ljava/io/FileDescriptor;II)I

    .line 209
    .end local v28    # "pipeFds":[Ljava/io/FileDescriptor;
    :cond_123
    const/4 v6, 0x2

    new-array v0, v6, [I

    move-object/from16 v16, v0

    fill-array-data v16, :array_1ca

    .line 211
    .local v16, "fdsToClose":[I
    move-object/from16 v0, p0

    iget-object v6, v0, mSocket:Landroid/net/LocalSocket;

    invoke-virtual {v6}, Landroid/net/LocalSocket;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v23

    .line 213
    .local v23, "fd":Ljava/io/FileDescriptor;
    if-eqz v23, :cond_13c

    .line 214
    const/4 v6, 0x0

    invoke-virtual/range {v23 .. v23}, Ljava/io/FileDescriptor;->getInt$()I

    move-result v7

    aput v7, v16, v6

    .line 217
    :cond_13c
    invoke-static {}, Lcom/android/internal/os/ZygoteInit;->getServerSocketFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v23

    .line 219
    if-eqz v23, :cond_149

    .line 220
    const/4 v6, 0x1

    invoke-virtual/range {v23 .. v23}, Ljava/io/FileDescriptor;->getInt$()I

    move-result v7

    aput v7, v16, v6

    .line 223
    :cond_149
    const/16 v23, 0x0

    .line 226
    move-object/from16 v0, v26

    iget v6, v0, Lcom/android/internal/os/ZygoteConnection$Arguments;->uid:I

    move-object/from16 v0, v26

    iget v7, v0, Lcom/android/internal/os/ZygoteConnection$Arguments;->gid:I

    move-object/from16 v0, v26

    iget-object v8, v0, Lcom/android/internal/os/ZygoteConnection$Arguments;->gids:[I

    move-object/from16 v0, v26

    iget v9, v0, Lcom/android/internal/os/ZygoteConnection$Arguments;->debugFlags:I

    move-object/from16 v0, v26

    iget v11, v0, Lcom/android/internal/os/ZygoteConnection$Arguments;->mountExternal:I

    move-object/from16 v0, v26

    iget-object v12, v0, Lcom/android/internal/os/ZygoteConnection$Arguments;->seInfo:Ljava/lang/String;

    move-object/from16 v0, v26

    iget v13, v0, Lcom/android/internal/os/ZygoteConnection$Arguments;->category:I

    move-object/from16 v0, v26

    iget v14, v0, Lcom/android/internal/os/ZygoteConnection$Arguments;->accessInfo:I

    move-object/from16 v0, v26

    iget-object v15, v0, Lcom/android/internal/os/ZygoteConnection$Arguments;->niceName:Ljava/lang/String;

    move-object/from16 v0, v26

    iget-object v0, v0, Lcom/android/internal/os/ZygoteConnection$Arguments;->instructionSet:Ljava/lang/String;

    move-object/from16 v17, v0

    move-object/from16 v0, v26

    iget-object v0, v0, Lcom/android/internal/os/ZygoteConnection$Arguments;->appDataDir:Ljava/lang/String;

    move-object/from16 v18, v0

    invoke-static/range {v6 .. v18}, Lcom/android/internal/os/Zygote;->forkAndSpecialize(II[II[[IILjava/lang/String;IILjava/lang/String;[ILjava/lang/String;Ljava/lang/String;)I
    :try_end_17e
    .catch Landroid/system/ErrnoException; {:try_start_dc .. :try_end_17e} :catch_b3
    .catch Ljava/lang/IllegalArgumentException; {:try_start_dc .. :try_end_17e} :catch_1c2
    .catch Lcom/android/internal/os/ZygoteSecurityException; {:try_start_dc .. :try_end_17e} :catch_1be

    move-result v27

    move-object/from16 v25, v26

    .line 239
    .end local v26    # "parsedArgs":Lcom/android/internal/os/ZygoteConnection$Arguments;
    .restart local v25    # "parsedArgs":Lcom/android/internal/os/ZygoteConnection$Arguments;
    goto/16 :goto_bf

    .line 234
    .end local v10    # "rlimits":[[I
    .end local v16    # "fdsToClose":[I
    .end local v23    # "fd":Ljava/io/FileDescriptor;
    :catch_183
    move-exception v22

    .line 235
    .local v22, "ex":Ljava/lang/IllegalArgumentException;
    :goto_184
    const-string v6, "Invalid zygote arguments"

    move-object/from16 v0, v24

    move-object/from16 v1, v22

    invoke-static {v0, v6, v1}, logAndPrintError(Ljava/io/PrintStream;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_bf

    .line 236
    .end local v22    # "ex":Ljava/lang/IllegalArgumentException;
    :catch_18f
    move-exception v22

    .line 237
    .local v22, "ex":Lcom/android/internal/os/ZygoteSecurityException;
    :goto_190
    const-string v6, "Zygote security policy prevents request: "

    move-object/from16 v0, v24

    move-object/from16 v1, v22

    invoke-static {v0, v6, v1}, logAndPrintError(Ljava/io/PrintStream;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_bf

    .line 253
    .end local v22    # "ex":Lcom/android/internal/os/ZygoteSecurityException;
    :cond_19b
    :try_start_19b
    invoke-static/range {v20 .. v20}, Llibcore/io/IoUtils;->closeQuietly(Ljava/io/FileDescriptor;)V

    .line 254
    const/16 v20, 0x0

    .line 255
    move-object/from16 v0, p0

    move/from16 v1, v27

    move-object/from16 v2, v21

    move-object/from16 v3, v29

    move-object/from16 v4, v25

    invoke-direct {v0, v1, v2, v3, v4}, handleParentProc(I[Ljava/io/FileDescriptor;Ljava/io/FileDescriptor;Lcom/android/internal/os/ZygoteConnection$Arguments;)Z
    :try_end_1ad
    .catchall {:try_start_19b .. :try_end_1ad} :catchall_1b6

    move-result v6

    .line 258
    invoke-static/range {v20 .. v20}, Llibcore/io/IoUtils;->closeQuietly(Ljava/io/FileDescriptor;)V

    .line 259
    invoke-static/range {v29 .. v29}, Llibcore/io/IoUtils;->closeQuietly(Ljava/io/FileDescriptor;)V

    goto/16 :goto_14

    .line 258
    :catchall_1b6
    move-exception v6

    invoke-static/range {v20 .. v20}, Llibcore/io/IoUtils;->closeQuietly(Ljava/io/FileDescriptor;)V

    .line 259
    invoke-static/range {v29 .. v29}, Llibcore/io/IoUtils;->closeQuietly(Ljava/io/FileDescriptor;)V

    throw v6

    .line 236
    .end local v25    # "parsedArgs":Lcom/android/internal/os/ZygoteConnection$Arguments;
    .restart local v26    # "parsedArgs":Lcom/android/internal/os/ZygoteConnection$Arguments;
    :catch_1be
    move-exception v22

    move-object/from16 v25, v26

    .end local v26    # "parsedArgs":Lcom/android/internal/os/ZygoteConnection$Arguments;
    .restart local v25    # "parsedArgs":Lcom/android/internal/os/ZygoteConnection$Arguments;
    goto :goto_190

    .line 234
    .end local v25    # "parsedArgs":Lcom/android/internal/os/ZygoteConnection$Arguments;
    .restart local v26    # "parsedArgs":Lcom/android/internal/os/ZygoteConnection$Arguments;
    :catch_1c2
    move-exception v22

    move-object/from16 v25, v26

    .end local v26    # "parsedArgs":Lcom/android/internal/os/ZygoteConnection$Arguments;
    .restart local v25    # "parsedArgs":Lcom/android/internal/os/ZygoteConnection$Arguments;
    goto :goto_184

    .line 232
    :catch_1c6
    move-exception v22

    goto/16 :goto_b6

    .line 209
    nop

    :array_1ca
    .array-data 4
        -0x1
        -0x1
    .end array-data
.end method
