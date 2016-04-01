.class public Lcom/android/internal/os/ZygoteInit;
.super Ljava/lang/Object;
.source "ZygoteInit.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/os/ZygoteInit$MethodAndArgsCaller;
    }
.end annotation


# static fields
.field private static final ABI_LIST_ARG:Ljava/lang/String; = "--abi-list="

.field private static final ANDROID_SOCKET_PREFIX:Ljava/lang/String; = "ANDROID_SOCKET_"

.field private static final INITIAL_NUMBER_THREAD1:I = 0x2bc

.field private static final INITIAL_NUMBER_THREAD2:I = 0x1f4

.field private static final LOG_BOOT_PROGRESS_PRELOAD_END:I = 0xbd6

.field private static final LOG_BOOT_PROGRESS_PRELOAD_START:I = 0xbcc

.field private static final PARALLEL_LOAD:Z = true

.field private static final PRELOADED_CLASSES:Ljava/lang/String; = "/system/etc/preloaded-classes"

.field private static final PRELOAD_GC_THRESHOLD:I

.field private static final PRELOAD_RESOURCES:Z = true

.field private static final PROPERTY_DISABLE_OPENGL_PRELOADING:Ljava/lang/String; = "ro.zygote.disable_gl_preload"

.field private static final PROPERTY_NC_THREAD1:Ljava/lang/String; = "persist.sys.clssprld1"

.field private static final PROPERTY_NC_THREAD2:Ljava/lang/String; = "persist.sys.clssprld2"

.field private static final ROOT_GID:I = 0x0

.field private static final ROOT_UID:I = 0x0

.field private static final SOCKET_NAME_ARG:Ljava/lang/String; = "--socket-name="

.field private static final TAG:Ljava/lang/String; = "Zygote"

.field private static final UNPRIVILEGED_GID:I = 0x270f

.field private static final UNPRIVILEGED_UID:I = 0x270f

.field private static final USE_DYNAMIC_BALANCE:Z = true

.field private static final heapgrowthlimit:Ljava/lang/String; = "64m"

.field static isError:Z

.field static isParallelThreadRunning:Z

.field static isPreloadComplete:Z

.field private static mResources:Landroid/content/res/Resources;

.field private static numberOfPreloadClasses:I

.field private static numberOfPreloadClassesforThread1:I

.field private static numberOfPreloadClassesforThread2:I

.field public static parallelPCThread1running:Z

.field public static parallelPCThread2running:Z

.field public static postLoadClasses:[Ljava/lang/String;

.field private static sServerSocket:Landroid/net/LocalServerSocket;

.field private static thread1time:I

.field private static thread2time:I

.field private static threadMtime:I


# direct methods
.method static constructor <clinit>()V
    .registers 4

    .prologue
    const/4 v3, 0x0

    .line 95
    const-string v0, "64m"

    const-string v1, "64m"

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v0, v3, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    mul-int/lit16 v0, v0, 0x400

    mul-int/lit16 v0, v0, 0x400

    div-int/lit8 v0, v0, 0x2

    sput v0, PRELOAD_GC_THRESHOLD:I

    .line 226
    sput-boolean v3, isParallelThreadRunning:Z

    .line 227
    sput-boolean v3, isPreloadComplete:Z

    .line 228
    sput-boolean v3, isError:Z

    .line 473
    sput-boolean v3, parallelPCThread1running:Z

    .line 474
    sput-boolean v3, parallelPCThread2running:Z

    .line 477
    sput v3, numberOfPreloadClasses:I

    .line 478
    const/16 v0, 0x2bc

    sput v0, numberOfPreloadClassesforThread1:I

    .line 479
    const/16 v0, 0x1f4

    sput v0, numberOfPreloadClassesforThread2:I

    .line 483
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "android.database.CursorWindow"

    aput-object v1, v0, v3

    const/4 v1, 0x1

    const-string v2, "android.database.CursorWindow$1"

    aput-object v2, v0, v1

    sput-object v0, postLoadClasses:[Ljava/lang/String;

    .line 486
    sput v3, thread1time:I

    .line 487
    sput v3, thread2time:I

    .line 488
    sput v3, threadMtime:I

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    .prologue
    .line 1207
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1208
    return-void
.end method

.method private static acceptCommandPeer(Ljava/lang/String;)Lcom/android/internal/os/ZygoteConnection;
    .registers 4
    .param p0, "abiList"    # Ljava/lang/String;

    .prologue
    .line 158
    :try_start_0
    new-instance v1, Lcom/android/internal/os/ZygoteConnection;

    sget-object v2, sServerSocket:Landroid/net/LocalServerSocket;

    invoke-virtual {v2}, Landroid/net/LocalServerSocket;->accept()Landroid/net/LocalSocket;

    move-result-object v2

    invoke-direct {v1, v2, p0}, Lcom/android/internal/os/ZygoteConnection;-><init>(Landroid/net/LocalSocket;Ljava/lang/String;)V
    :try_end_b
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_b} :catch_c

    return-object v1

    .line 159
    :catch_c
    move-exception v0

    .line 160
    .local v0, "ex":Ljava/io/IOException;
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "IOException during accept()"

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method static synthetic access$000()V
    .registers 0

    .prologue
    .line 72
    invoke-static {}, preloadResources()V

    return-void
.end method

.method static synthetic access$100()I
    .registers 1

    .prologue
    .line 72
    sget v0, numberOfPreloadClassesforThread1:I

    return v0
.end method

.method static synthetic access$200()I
    .registers 1

    .prologue
    .line 72
    sget v0, PRELOAD_GC_THRESHOLD:I

    return v0
.end method

.method static synthetic access$302(I)I
    .registers 1
    .param p0, "x0"    # I

    .prologue
    .line 72
    sput p0, thread1time:I

    return p0
.end method

.method static synthetic access$400()I
    .registers 1

    .prologue
    .line 72
    sget v0, numberOfPreloadClassesforThread2:I

    return v0
.end method

.method static synthetic access$502(I)I
    .registers 1
    .param p0, "x0"    # I

    .prologue
    .line 72
    sput p0, thread2time:I

    return p0
.end method

.method private static adjustClassPreloadBalance()V
    .registers 5

    .prologue
    .line 339
    sget v2, thread1time:I

    if-lez v2, :cond_b6

    sget v2, thread2time:I

    if-lez v2, :cond_b6

    sget v2, threadMtime:I

    if-lez v2, :cond_b6

    .line 343
    sget v2, thread1time:I

    sget v3, thread2time:I

    invoke-static {v2, v3}, Ljava/lang/Math;->min(II)I

    move-result v1

    .line 344
    .local v1, "min":I
    sget v2, threadMtime:I

    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v1

    .line 345
    sget v2, thread1time:I

    sget v3, thread2time:I

    invoke-static {v2, v3}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 346
    .local v0, "max":I
    sget v2, threadMtime:I

    invoke-static {v0, v2}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 347
    sub-int v2, v0, v1

    const/16 v3, 0x64

    if-le v2, v3, :cond_b6

    .line 349
    const-string v2, "Zygote"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, " adjust "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " ,1:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget v4, thread1time:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " ,2:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget v4, thread2time:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " ,M:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget v4, threadMtime:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 350
    sget v2, thread1time:I

    if-ne v0, v2, :cond_b7

    .line 351
    const-string/jumbo v2, "persist.sys.clssprld1"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    sget v4, numberOfPreloadClassesforThread1:I

    add-int/lit8 v4, v4, -0x5

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 355
    :cond_95
    :goto_95
    sget v2, thread1time:I

    if-ne v1, v2, :cond_d9

    .line 356
    const-string/jumbo v2, "persist.sys.clssprld1"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    sget v4, numberOfPreloadClassesforThread1:I

    add-int/lit8 v4, v4, 0x5

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 361
    :cond_b6
    :goto_b6
    return-void

    .line 352
    :cond_b7
    sget v2, thread2time:I

    if-ne v0, v2, :cond_95

    .line 353
    const-string/jumbo v2, "persist.sys.clssprld2"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    sget v4, numberOfPreloadClassesforThread2:I

    add-int/lit8 v4, v4, -0x5

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_95

    .line 357
    :cond_d9
    sget v2, thread2time:I

    if-ne v1, v2, :cond_b6

    .line 358
    const-string/jumbo v2, "persist.sys.clssprld2"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    sget v4, numberOfPreloadClassesforThread2:I

    add-int/lit8 v4, v4, 0x5

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_b6
.end method

.method static closeServerSocket()V
    .registers 4

    .prologue
    .line 171
    :try_start_0
    sget-object v2, sServerSocket:Landroid/net/LocalServerSocket;

    if-eqz v2, :cond_14

    .line 172
    sget-object v2, sServerSocket:Landroid/net/LocalServerSocket;

    invoke-virtual {v2}, Landroid/net/LocalServerSocket;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v1

    .line 173
    .local v1, "fd":Ljava/io/FileDescriptor;
    sget-object v2, sServerSocket:Landroid/net/LocalServerSocket;

    invoke-virtual {v2}, Landroid/net/LocalServerSocket;->close()V

    .line 174
    if-eqz v1, :cond_14

    .line 175
    invoke-static {v1}, Landroid/system/Os;->close(Ljava/io/FileDescriptor;)V
    :try_end_14
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_14} :catch_18
    .catch Landroid/system/ErrnoException; {:try_start_0 .. :try_end_14} :catch_21

    .line 184
    :cond_14
    :goto_14
    const/4 v2, 0x0

    sput-object v2, sServerSocket:Landroid/net/LocalServerSocket;

    .line 185
    return-void

    .line 178
    :catch_18
    move-exception v0

    .line 179
    .local v0, "ex":Ljava/io/IOException;
    const-string v2, "Zygote"

    const-string v3, "Zygote:  error closing sockets"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_14

    .line 180
    .end local v0    # "ex":Ljava/io/IOException;
    :catch_21
    move-exception v0

    .line 181
    .local v0, "ex":Landroid/system/ErrnoException;
    const-string v2, "Zygote"

    const-string v3, "Zygote:  error closing descriptor"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_14
.end method

.method static gcAndFinalize()V
    .registers 1

    .prologue
    .line 893
    invoke-static {}, Ldalvik/system/VMRuntime;->getRuntime()Ldalvik/system/VMRuntime;

    move-result-object v0

    .line 898
    .local v0, "runtime":Ldalvik/system/VMRuntime;
    invoke-static {}, Ljava/lang/System;->gc()V

    .line 899
    invoke-virtual {v0}, Ldalvik/system/VMRuntime;->runFinalizationSync()V

    .line 900
    invoke-static {}, Ljava/lang/System;->gc()V

    .line 901
    return-void
.end method

.method static getServerSocketFileDescriptor()Ljava/io/FileDescriptor;
    .registers 1

    .prologue
    .line 194
    sget-object v0, sServerSocket:Landroid/net/LocalServerSocket;

    invoke-virtual {v0}, Landroid/net/LocalServerSocket;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v0

    return-object v0
.end method

.method private static handleSystemServerProcess(Lcom/android/internal/os/ZygoteConnection$Arguments;)V
    .registers 10
    .param p0, "parsedArgs"    # Lcom/android/internal/os/ZygoteConnection$Arguments;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/os/ZygoteInit$MethodAndArgsCaller;
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    .line 910
    invoke-static {}, closeServerSocket()V

    .line 913
    sget v0, Landroid/system/OsConstants;->S_IRWXG:I

    sget v1, Landroid/system/OsConstants;->S_IRWXO:I

    or-int/2addr v0, v1

    invoke-static {v0}, Landroid/system/Os;->umask(I)I

    .line 915
    iget-object v0, p0, Lcom/android/internal/os/ZygoteConnection$Arguments;->niceName:Ljava/lang/String;

    if-eqz v0, :cond_15

    .line 916
    iget-object v0, p0, Lcom/android/internal/os/ZygoteConnection$Arguments;->niceName:Ljava/lang/String;

    invoke-static {v0}, Landroid/os/Process;->setArgV0(Ljava/lang/String;)V

    .line 919
    :cond_15
    const-string v0, "SYSTEMSERVERCLASSPATH"

    invoke-static {v0}, Landroid/system/Os;->getenv(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 920
    .local v8, "systemServerClasspath":Ljava/lang/String;
    if-eqz v8, :cond_20

    .line 921
    invoke-static {v8}, performSystemServerDexOpt(Ljava/lang/String;)V

    .line 924
    :cond_20
    iget-object v0, p0, Lcom/android/internal/os/ZygoteConnection$Arguments;->invokeWith:Ljava/lang/String;

    if-eqz v0, :cond_4c

    .line 925
    iget-object v5, p0, Lcom/android/internal/os/ZygoteConnection$Arguments;->remainingArgs:[Ljava/lang/String;

    .line 929
    .local v5, "args":[Ljava/lang/String;
    if-eqz v8, :cond_3d

    .line 930
    array-length v0, v5

    add-int/lit8 v0, v0, 0x2

    new-array v6, v0, [Ljava/lang/String;

    .line 931
    .local v6, "amendedArgs":[Ljava/lang/String;
    const-string v0, "-cp"

    aput-object v0, v6, v3

    .line 932
    const/4 v0, 0x1

    aput-object v8, v6, v0

    .line 933
    iget-object v0, p0, Lcom/android/internal/os/ZygoteConnection$Arguments;->remainingArgs:[Ljava/lang/String;

    const/4 v1, 0x2

    iget-object v2, p0, Lcom/android/internal/os/ZygoteConnection$Arguments;->remainingArgs:[Ljava/lang/String;

    array-length v2, v2

    invoke-static {v0, v3, v6, v1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 936
    .end local v6    # "amendedArgs":[Ljava/lang/String;
    :cond_3d
    iget-object v0, p0, Lcom/android/internal/os/ZygoteConnection$Arguments;->invokeWith:Ljava/lang/String;

    iget-object v1, p0, Lcom/android/internal/os/ZygoteConnection$Arguments;->niceName:Ljava/lang/String;

    iget v2, p0, Lcom/android/internal/os/ZygoteConnection$Arguments;->targetSdkVersion:I

    invoke-static {}, Ldalvik/system/VMRuntime;->getCurrentInstructionSet()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    invoke-static/range {v0 .. v5}, Lcom/android/internal/os/WrapperInit;->execApplication(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/io/FileDescriptor;[Ljava/lang/String;)V

    .line 953
    .end local v5    # "args":[Ljava/lang/String;
    :goto_4b
    return-void

    .line 940
    :cond_4c
    const/4 v7, 0x0

    .line 941
    .local v7, "cl":Ljava/lang/ClassLoader;
    if-eqz v8, :cond_5f

    .line 942
    new-instance v7, Ldalvik/system/PathClassLoader;

    .end local v7    # "cl":Ljava/lang/ClassLoader;
    invoke-static {}, Ljava/lang/ClassLoader;->getSystemClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-direct {v7, v8, v0}, Ldalvik/system/PathClassLoader;-><init>(Ljava/lang/String;Ljava/lang/ClassLoader;)V

    .line 943
    .restart local v7    # "cl":Ljava/lang/ClassLoader;
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0, v7}, Ljava/lang/Thread;->setContextClassLoader(Ljava/lang/ClassLoader;)V

    .line 949
    :cond_5f
    iget v0, p0, Lcom/android/internal/os/ZygoteConnection$Arguments;->targetSdkVersion:I

    iget-object v1, p0, Lcom/android/internal/os/ZygoteConnection$Arguments;->remainingArgs:[Ljava/lang/String;

    invoke-static {v0, v1, v7}, Lcom/android/internal/os/RuntimeInit;->zygoteInit(I[Ljava/lang/String;Ljava/lang/ClassLoader;)V

    goto :goto_4b
.end method

.method private static hasSecondZygote(Ljava/lang/String;)Z
    .registers 2
    .param p0, "abiList"    # Ljava/lang/String;

    .prologue
    .line 1136
    const-string/jumbo v0, "ro.product.cpu.abilist"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_f

    const/4 v0, 0x1

    :goto_e
    return v0

    :cond_f
    const/4 v0, 0x0

    goto :goto_e
.end method

.method public static main([Ljava/lang/String;)V
    .registers 11
    .param p0, "argv"    # [Ljava/lang/String;

    .prologue
    .line 1064
    const/16 v6, -0x10

    :try_start_2
    invoke-static {v6}, Landroid/os/Process;->setThreadPriority(I)V

    .line 1067
    invoke-static {}, Lcom/android/internal/os/RuntimeInit;->enableDdms()V

    .line 1069
    invoke-static {}, Lcom/android/internal/os/SamplingProfilerIntegration;->start()V

    .line 1071
    const/4 v5, 0x0

    .line 1072
    .local v5, "startSystemServer":Z
    const-string/jumbo v4, "zygote"

    .line 1073
    .local v4, "socketName":Ljava/lang/String;
    const/4 v0, 0x0

    .line 1074
    .local v0, "abiList":Ljava/lang/String;
    const/4 v3, 0x1

    .local v3, "i":I
    :goto_11
    array-length v6, p0

    if-ge v3, v6, :cond_71

    .line 1075
    const-string/jumbo v6, "start-system-server"

    aget-object v7, p0, v3

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_23

    .line 1076
    const/4 v5, 0x1

    .line 1074
    :goto_20
    add-int/lit8 v3, v3, 0x1

    goto :goto_11

    .line 1077
    :cond_23
    aget-object v6, p0, v3

    const-string v7, "--abi-list="

    invoke-virtual {v6, v7}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_3a

    .line 1078
    aget-object v6, p0, v3

    const-string v7, "--abi-list="

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_20

    .line 1079
    :cond_3a
    aget-object v6, p0, v3

    const-string v7, "--socket-name="

    invoke-virtual {v6, v7}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_51

    .line 1080
    aget-object v6, p0, v3

    const-string v7, "--socket-name="

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v4

    goto :goto_20

    .line 1082
    :cond_51
    new-instance v6, Ljava/lang/RuntimeException;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Unknown command line argument: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    aget-object v8, p0, v3

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v6
    :try_end_6c
    .catch Lcom/android/internal/os/ZygoteInit$MethodAndArgsCaller; {:try_start_2 .. :try_end_6c} :catch_6c
    .catch Ljava/lang/RuntimeException; {:try_start_2 .. :try_end_6c} :catch_7b

    .line 1119
    .end local v0    # "abiList":Ljava/lang/String;
    .end local v3    # "i":I
    .end local v4    # "socketName":Ljava/lang/String;
    .end local v5    # "startSystemServer":Z
    :catch_6c
    move-exception v1

    .line 1120
    .local v1, "caller":Lcom/android/internal/os/ZygoteInit$MethodAndArgsCaller;
    invoke-virtual {v1}, Lcom/android/internal/os/ZygoteInit$MethodAndArgsCaller;->run()V

    .line 1126
    .end local v1    # "caller":Lcom/android/internal/os/ZygoteInit$MethodAndArgsCaller;
    :goto_70
    return-void

    .line 1086
    .restart local v0    # "abiList":Ljava/lang/String;
    .restart local v3    # "i":I
    .restart local v4    # "socketName":Ljava/lang/String;
    .restart local v5    # "startSystemServer":Z
    :cond_71
    if-nez v0, :cond_87

    .line 1087
    :try_start_73
    new-instance v6, Ljava/lang/RuntimeException;

    const-string v7, "No ABI list supplied."

    invoke-direct {v6, v7}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v6
    :try_end_7b
    .catch Lcom/android/internal/os/ZygoteInit$MethodAndArgsCaller; {:try_start_73 .. :try_end_7b} :catch_6c
    .catch Ljava/lang/RuntimeException; {:try_start_73 .. :try_end_7b} :catch_7b

    .line 1121
    .end local v0    # "abiList":Ljava/lang/String;
    .end local v3    # "i":I
    .end local v4    # "socketName":Ljava/lang/String;
    .end local v5    # "startSystemServer":Z
    :catch_7b
    move-exception v2

    .line 1122
    .local v2, "ex":Ljava/lang/RuntimeException;
    const-string v6, "Zygote"

    const-string v7, "Zygote died with exception"

    invoke-static {v6, v7, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1123
    invoke-static {}, closeServerSocket()V

    .line 1124
    throw v2

    .line 1090
    .end local v2    # "ex":Ljava/lang/RuntimeException;
    .restart local v0    # "abiList":Ljava/lang/String;
    .restart local v3    # "i":I
    .restart local v4    # "socketName":Ljava/lang/String;
    .restart local v5    # "startSystemServer":Z
    :cond_87
    :try_start_87
    invoke-static {v4}, registerZygoteSocket(Ljava/lang/String;)V

    .line 1091
    const/16 v6, 0xbcc

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v8

    invoke-static {v6, v8, v9}, Landroid/util/EventLog;->writeEvent(IJ)I

    .line 1093
    invoke-static {}, preload()V

    .line 1094
    const/16 v6, 0xbd6

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v8

    invoke-static {v6, v8, v9}, Landroid/util/EventLog;->writeEvent(IJ)I

    .line 1098
    invoke-static {}, Lcom/android/internal/os/SamplingProfilerIntegration;->writeZygoteSnapshot()V

    .line 1101
    invoke-static {}, gcAndFinalize()V

    .line 1105
    const/4 v6, 0x0

    invoke-static {v6}, Landroid/os/Trace;->setTracingEnabled(Z)V

    .line 1108
    const/4 v6, 0x0

    invoke-static {v6}, Landroid/os/Process;->setThreadPriority(I)V

    .line 1111
    if-eqz v5, :cond_b2

    .line 1112
    invoke-static {v0, v4}, startSystemServer(Ljava/lang/String;Ljava/lang/String;)Z

    .line 1115
    :cond_b2
    const-string v6, "Zygote"

    const-string v7, "Accepting command socket connections"

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1116
    invoke-static {v0}, runSelectLoop(Ljava/lang/String;)V

    .line 1118
    invoke-static {}, closeServerSocket()V
    :try_end_bf
    .catch Lcom/android/internal/os/ZygoteInit$MethodAndArgsCaller; {:try_start_87 .. :try_end_bf} :catch_6c
    .catch Ljava/lang/RuntimeException; {:try_start_87 .. :try_end_bf} :catch_7b

    goto :goto_70
.end method

.method static parallelpreloadClasses()V
    .registers 28

    .prologue
    .line 492
    invoke-static {}, Ldalvik/system/VMRuntime;->getRuntime()Ldalvik/system/VMRuntime;

    move-result-object v13

    .line 493
    .local v13, "runtime":Ldalvik/system/VMRuntime;
    new-instance v5, Ljava/util/ArrayList;

    const/16 v19, 0xbc5

    move/from16 v0, v19

    invoke-direct {v5, v0}, Ljava/util/ArrayList;-><init>(I)V

    .line 497
    .local v5, "classList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :try_start_d
    new-instance v10, Ljava/io/FileInputStream;

    const-string v19, "/system/etc/preloaded-classes"

    move-object/from16 v0, v19

    invoke-direct {v10, v0}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V
    :try_end_16
    .catch Ljava/io/FileNotFoundException; {:try_start_d .. :try_end_16} :catch_6d

    .line 502
    .local v10, "is":Ljava/io/InputStream;
    const-string v19, "Zygote"

    const-string v24, "Preloading classes..."

    move-object/from16 v0, v19

    move-object/from16 v1, v24

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 510
    invoke-virtual {v13}, Ldalvik/system/VMRuntime;->getTargetHeapUtilization()F

    move-result v7

    .line 511
    .local v7, "defaultUtilization":F
    const v19, 0x3f4ccccd    # 0.8f

    move/from16 v0, v19

    invoke-virtual {v13, v0}, Ldalvik/system/VMRuntime;->setTargetHeapUtilization(F)F

    .line 514
    invoke-static {}, Ljava/lang/System;->gc()V

    .line 515
    invoke-virtual {v13}, Ldalvik/system/VMRuntime;->runFinalizationSync()V

    .line 516
    invoke-static {}, Landroid/os/Debug;->startAllocCounting()V

    .line 519
    :try_start_36
    new-instance v4, Ljava/io/BufferedReader;

    new-instance v19, Ljava/io/InputStreamReader;

    move-object/from16 v0, v19

    invoke-direct {v0, v10}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    const/16 v24, 0x100

    move-object/from16 v0, v19

    move/from16 v1, v24

    invoke-direct {v4, v0, v1}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;I)V

    .line 522
    .local v4, "br":Ljava/io/BufferedReader;
    const/4 v6, 0x0

    .line 524
    .local v6, "count":I
    :cond_49
    :goto_49
    invoke-virtual {v4}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v12

    .local v12, "line":Ljava/lang/String;
    if-eqz v12, :cond_7a

    .line 526
    invoke-virtual {v12}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v12

    .line 527
    const-string v19, "#"

    move-object/from16 v0, v19

    invoke-virtual {v12, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v19

    if-nez v19, :cond_49

    const-string v19, ""

    move-object/from16 v0, v19

    invoke-virtual {v12, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-nez v19, :cond_49

    .line 530
    invoke-virtual {v5, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_6a
    .catch Ljava/io/IOException; {:try_start_36 .. :try_end_6a} :catch_297
    .catchall {:try_start_36 .. :try_end_6a} :catchall_32b

    .line 533
    add-int/lit8 v6, v6, 0x1

    goto :goto_49

    .line 498
    .end local v4    # "br":Ljava/io/BufferedReader;
    .end local v6    # "count":I
    .end local v7    # "defaultUtilization":F
    .end local v10    # "is":Ljava/io/InputStream;
    .end local v12    # "line":Ljava/lang/String;
    :catch_6d
    move-exception v8

    .line 499
    .local v8, "e":Ljava/io/FileNotFoundException;
    const-string v19, "Zygote"

    const-string v24, "Couldn\'t find /system/etc/preloaded-classes."

    move-object/from16 v0, v19

    move-object/from16 v1, v24

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 807
    .end local v8    # "e":Ljava/io/FileNotFoundException;
    :goto_79
    return-void

    .line 536
    .restart local v4    # "br":Ljava/io/BufferedReader;
    .restart local v6    # "count":I
    .restart local v7    # "defaultUtilization":F
    .restart local v10    # "is":Ljava/io/InputStream;
    .restart local v12    # "line":Ljava/lang/String;
    :cond_7a
    :try_start_7a
    const-string v19, "Zygote"

    new-instance v24, Ljava/lang/StringBuilder;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    const-string v25, "Number of total Classes to prelaod: "

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, v24

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    move-object/from16 v0, v19

    move-object/from16 v1, v24

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 537
    sput v6, numberOfPreloadClasses:I
    :try_end_9a
    .catch Ljava/io/IOException; {:try_start_7a .. :try_end_9a} :catch_297
    .catchall {:try_start_7a .. :try_end_9a} :catchall_32b

    .line 542
    :try_start_9a
    const-string/jumbo v19, "persist.sys.clssprld1"

    const-string v24, "700"

    move-object/from16 v0, v19

    move-object/from16 v1, v24

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v19 .. v19}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v19

    sput v19, numberOfPreloadClassesforThread1:I

    .line 543
    const-string/jumbo v19, "persist.sys.clssprld2"

    const-string v24, "500"

    move-object/from16 v0, v19

    move-object/from16 v1, v24

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v19 .. v19}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v19

    sput v19, numberOfPreloadClassesforThread2:I
    :try_end_c0
    .catch Ljava/lang/NumberFormatException; {:try_start_9a .. :try_end_c0} :catch_3eb
    .catch Ljava/io/IOException; {:try_start_9a .. :try_end_c0} :catch_297
    .catchall {:try_start_9a .. :try_end_c0} :catchall_32b

    .line 546
    :goto_c0
    :try_start_c0
    sget v19, numberOfPreloadClassesforThread1:I

    const/16 v24, 0x1

    move/from16 v0, v19

    move/from16 v1, v24

    if-lt v0, v1, :cond_e2

    sget v19, numberOfPreloadClassesforThread2:I

    const/16 v24, 0x1

    move/from16 v0, v19

    move/from16 v1, v24

    if-lt v0, v1, :cond_e2

    sget v19, numberOfPreloadClassesforThread1:I

    sget v24, numberOfPreloadClassesforThread2:I

    add-int v19, v19, v24

    sget v24, numberOfPreloadClasses:I

    move/from16 v0, v19

    move/from16 v1, v24

    if-lt v0, v1, :cond_137

    .line 548
    :cond_e2
    const-string v19, "Zygote"

    const-string v24, "!@set default"

    move-object/from16 v0, v19

    move-object/from16 v1, v24

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 549
    sget v19, numberOfPreloadClasses:I

    div-int/lit8 v19, v19, 0x3

    sput v19, numberOfPreloadClassesforThread1:I

    .line 550
    sget v19, numberOfPreloadClasses:I

    div-int/lit8 v19, v19, 0x3

    sput v19, numberOfPreloadClassesforThread2:I

    .line 551
    const-string/jumbo v19, "persist.sys.clssprld1"

    new-instance v24, Ljava/lang/StringBuilder;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    sget v25, numberOfPreloadClassesforThread1:I

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v24

    const-string v25, ""

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    move-object/from16 v0, v19

    move-object/from16 v1, v24

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 552
    const-string/jumbo v19, "persist.sys.clssprld2"

    new-instance v24, Ljava/lang/StringBuilder;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    sget v25, numberOfPreloadClassesforThread2:I

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v24

    const-string v25, ""

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    move-object/from16 v0, v19

    move-object/from16 v1, v24

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 556
    :cond_137
    const-string v19, "Zygote"

    new-instance v24, Ljava/lang/StringBuilder;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    const-string v25, "Classes to load for thread1 0~"

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    sget v25, numberOfPreloadClassesforThread1:I

    add-int/lit8 v25, v25, -0x1

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    move-object/from16 v0, v19

    move-object/from16 v1, v24

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 557
    const-string v19, "Zygote"

    new-instance v24, Ljava/lang/StringBuilder;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    const-string v25, "Classes to load for thread2 "

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    sget v25, numberOfPreloadClassesforThread1:I

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v24

    const-string/jumbo v25, "~"

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    sget v25, numberOfPreloadClassesforThread1:I

    sget v26, numberOfPreloadClassesforThread2:I

    add-int v25, v25, v26

    add-int/lit8 v25, v25, -0x1

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    move-object/from16 v0, v19

    move-object/from16 v1, v24

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 558
    const-string v19, "Zygote"

    new-instance v24, Ljava/lang/StringBuilder;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    const-string v25, "Classes to load for thread3 "

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    sget v25, numberOfPreloadClassesforThread1:I

    sget v26, numberOfPreloadClassesforThread2:I

    add-int v25, v25, v26

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v24

    const-string/jumbo v25, "~"

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    sget v25, numberOfPreloadClasses:I

    add-int/lit8 v25, v25, -0x1

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    move-object/from16 v0, v19

    move-object/from16 v1, v24

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 560
    new-instance v17, Ljava/lang/Thread;

    new-instance v19, Lcom/android/internal/os/ZygoteInit$3;

    move-object/from16 v0, v19

    invoke-direct {v0, v5, v13}, Lcom/android/internal/os/ZygoteInit$3;-><init>(Ljava/util/ArrayList;Ldalvik/system/VMRuntime;)V

    const-string/jumbo v24, "prct_1"

    move-object/from16 v0, v17

    move-object/from16 v1, v19

    move-object/from16 v2, v24

    invoke-direct {v0, v1, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    .line 633
    .local v17, "t1":Ljava/lang/Thread;
    invoke-virtual/range {v17 .. v17}, Ljava/lang/Thread;->start()V

    .line 635
    new-instance v18, Ljava/lang/Thread;

    new-instance v19, Lcom/android/internal/os/ZygoteInit$4;

    move-object/from16 v0, v19

    invoke-direct {v0, v5, v13}, Lcom/android/internal/os/ZygoteInit$4;-><init>(Ljava/util/ArrayList;Ldalvik/system/VMRuntime;)V

    const-string/jumbo v24, "prct_2"

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    move-object/from16 v2, v24

    invoke-direct {v0, v1, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    .line 709
    .local v18, "t2":Ljava/lang/Thread;
    invoke-virtual/range {v18 .. v18}, Ljava/lang/Thread;->start()V

    .line 713
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v14

    .line 714
    .local v14, "startTime":J
    const-wide/16 v20, 0x0

    .line 715
    .local v20, "time1":J
    const-wide/16 v22, 0x0

    .line 716
    .local v22, "time2":J
    sget v19, numberOfPreloadClassesforThread1:I

    sget v24, numberOfPreloadClassesforThread2:I

    add-int v9, v19, v24

    .local v9, "i":I
    :goto_1f7
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v19

    move/from16 v0, v19

    if-ge v9, v0, :cond_207

    .line 717
    invoke-virtual {v5, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v12

    .end local v12    # "line":Ljava/lang/String;
    check-cast v12, Ljava/lang/String;

    .line 718
    .restart local v12    # "line":Ljava/lang/String;
    if-nez v12, :cond_2b1

    .line 766
    :cond_207
    const-string v19, "Zygote"

    new-instance v24, Ljava/lang/StringBuilder;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    const-string v25, "!@prldclssM: "

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    sget v25, numberOfPreloadClasses:I

    sget v26, numberOfPreloadClassesforThread1:I

    sub-int v25, v25, v26

    sget v26, numberOfPreloadClassesforThread2:I

    sub-int v25, v25, v26

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v24

    const-string v25, " classes in "

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v26

    sub-long v26, v26, v14

    move-object/from16 v0, v24

    move-wide/from16 v1, v26

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v24

    const-string/jumbo v25, "ms."

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    move-object/from16 v0, v19

    move-object/from16 v1, v24

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 769
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v24

    move-wide/from16 v0, v24

    long-to-int v0, v0

    move/from16 v19, v0

    sput v19, threadMtime:I

    .line 771
    :goto_253
    sget-boolean v19, parallelPCThread1running:Z

    const/16 v24, 0x1

    move/from16 v0, v19

    move/from16 v1, v24

    if-eq v0, v1, :cond_267

    sget-boolean v19, parallelPCThread2running:Z
    :try_end_25f
    .catch Ljava/io/IOException; {:try_start_c0 .. :try_end_25f} :catch_297
    .catchall {:try_start_c0 .. :try_end_25f} :catchall_32b

    const/16 v24, 0x1

    move/from16 v0, v19

    move/from16 v1, v24

    if-ne v0, v1, :cond_386

    .line 773
    :cond_267
    const-wide/16 v24, 0x14

    :try_start_269
    invoke-static/range {v24 .. v25}, Ljava/lang/Thread;->sleep(J)V
    :try_end_26c
    .catch Ljava/lang/InterruptedException; {:try_start_269 .. :try_end_26c} :catch_380
    .catch Ljava/io/IOException; {:try_start_269 .. :try_end_26c} :catch_297
    .catchall {:try_start_269 .. :try_end_26c} :catchall_32b

    .line 777
    :goto_26c
    :try_start_26c
    const-string v19, "Zygote"

    new-instance v24, Ljava/lang/StringBuilder;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    const-string v25, "Wait PC Thread 1="

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    sget-boolean v25, parallelPCThread1running:Z

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v24

    const-string v25, " 2="

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    sget-boolean v25, parallelPCThread2running:Z

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    move-object/from16 v0, v19

    move-object/from16 v1, v24

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_296
    .catch Ljava/io/IOException; {:try_start_26c .. :try_end_296} :catch_297
    .catchall {:try_start_26c .. :try_end_296} :catchall_32b

    goto :goto_253

    .line 789
    .end local v4    # "br":Ljava/io/BufferedReader;
    .end local v6    # "count":I
    .end local v9    # "i":I
    .end local v12    # "line":Ljava/lang/String;
    .end local v14    # "startTime":J
    .end local v17    # "t1":Ljava/lang/Thread;
    .end local v18    # "t2":Ljava/lang/Thread;
    .end local v20    # "time1":J
    .end local v22    # "time2":J
    :catch_297
    move-exception v8

    .line 790
    .local v8, "e":Ljava/io/IOException;
    :try_start_298
    const-string v19, "Zygote"

    const-string v24, "Error reading /system/etc/preloaded-classes."

    move-object/from16 v0, v19

    move-object/from16 v1, v24

    invoke-static {v0, v1, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_2a3
    .catchall {:try_start_298 .. :try_end_2a3} :catchall_32b

    .line 794
    invoke-static {v10}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 796
    invoke-virtual {v13, v7}, Ldalvik/system/VMRuntime;->setTargetHeapUtilization(F)F

    .line 799
    invoke-virtual {v13}, Ldalvik/system/VMRuntime;->preloadDexCaches()V

    .line 801
    invoke-static {}, Landroid/os/Debug;->stopAllocCounting()V

    goto/16 :goto_79

    .line 725
    .end local v8    # "e":Ljava/io/IOException;
    .restart local v4    # "br":Ljava/io/BufferedReader;
    .restart local v6    # "count":I
    .restart local v9    # "i":I
    .restart local v12    # "line":Ljava/lang/String;
    .restart local v14    # "startTime":J
    .restart local v17    # "t1":Ljava/lang/Thread;
    .restart local v18    # "t2":Ljava/lang/Thread;
    .restart local v20    # "time1":J
    .restart local v22    # "time2":J
    :cond_2b1
    const/4 v11, 0x0

    .local v11, "j":I
    :goto_2b2
    :try_start_2b2
    sget-object v19, postLoadClasses:[Ljava/lang/String;

    move-object/from16 v0, v19

    array-length v0, v0

    move/from16 v19, v0

    move/from16 v0, v19

    if-ge v11, v0, :cond_2e9

    .line 728
    sget-object v19, postLoadClasses:[Ljava/lang/String;

    aget-object v19, v19, v11

    move-object/from16 v0, v19

    invoke-virtual {v12, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-eqz v19, :cond_2ef

    .line 729
    const-string v19, "Zygote"

    new-instance v24, Ljava/lang/StringBuilder;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v25, "postpone "

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, v24

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    move-object/from16 v0, v19

    move-object/from16 v1, v24

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 730
    const/4 v12, 0x0

    .line 734
    :cond_2e9
    if-nez v12, :cond_2f2

    .line 716
    :cond_2eb
    :goto_2eb
    add-int/lit8 v9, v9, 0x1

    goto/16 :goto_1f7

    .line 725
    :cond_2ef
    add-int/lit8 v11, v11, 0x1

    goto :goto_2b2

    .line 738
    :cond_2f2
    invoke-static {v12}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    .line 745
    invoke-static {}, Landroid/os/Debug;->getGlobalAllocSize()I

    move-result v19

    sget v24, PRELOAD_GC_THRESHOLD:I

    move/from16 v0, v19

    move/from16 v1, v24

    if-le v0, v1, :cond_2eb

    .line 749
    invoke-static {}, Ljava/lang/System;->gc()V

    .line 750
    invoke-virtual {v13}, Ldalvik/system/VMRuntime;->runFinalizationSync()V

    .line 751
    invoke-static {}, Landroid/os/Debug;->resetGlobalAllocSize()V
    :try_end_30a
    .catch Ljava/lang/ClassNotFoundException; {:try_start_2b2 .. :try_end_30a} :catch_30b
    .catch Ljava/lang/Throwable; {:try_start_2b2 .. :try_end_30a} :catch_339
    .catch Ljava/io/IOException; {:try_start_2b2 .. :try_end_30a} :catch_297
    .catchall {:try_start_2b2 .. :try_end_30a} :catchall_32b

    goto :goto_2eb

    .line 753
    :catch_30b
    move-exception v8

    .line 754
    .local v8, "e":Ljava/lang/ClassNotFoundException;
    :try_start_30c
    const-string v19, "Zygote"

    new-instance v24, Ljava/lang/StringBuilder;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    const-string v25, "Class not found for preloading: "

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, v24

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    move-object/from16 v0, v19

    move-object/from16 v1, v24

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_32a
    .catch Ljava/io/IOException; {:try_start_30c .. :try_end_32a} :catch_297
    .catchall {:try_start_30c .. :try_end_32a} :catchall_32b

    goto :goto_2eb

    .line 794
    .end local v4    # "br":Ljava/io/BufferedReader;
    .end local v6    # "count":I
    .end local v8    # "e":Ljava/lang/ClassNotFoundException;
    .end local v9    # "i":I
    .end local v11    # "j":I
    .end local v12    # "line":Ljava/lang/String;
    .end local v14    # "startTime":J
    .end local v17    # "t1":Ljava/lang/Thread;
    .end local v18    # "t2":Ljava/lang/Thread;
    .end local v20    # "time1":J
    .end local v22    # "time2":J
    :catchall_32b
    move-exception v19

    invoke-static {v10}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 796
    invoke-virtual {v13, v7}, Ldalvik/system/VMRuntime;->setTargetHeapUtilization(F)F

    .line 799
    invoke-virtual {v13}, Ldalvik/system/VMRuntime;->preloadDexCaches()V

    .line 801
    invoke-static {}, Landroid/os/Debug;->stopAllocCounting()V

    throw v19

    .line 755
    .restart local v4    # "br":Ljava/io/BufferedReader;
    .restart local v6    # "count":I
    .restart local v9    # "i":I
    .restart local v11    # "j":I
    .restart local v12    # "line":Ljava/lang/String;
    .restart local v14    # "startTime":J
    .restart local v17    # "t1":Ljava/lang/Thread;
    .restart local v18    # "t2":Ljava/lang/Thread;
    .restart local v20    # "time1":J
    .restart local v22    # "time2":J
    :catch_339
    move-exception v16

    .line 756
    .local v16, "t":Ljava/lang/Throwable;
    :try_start_33a
    const-string v19, "Zygote"

    new-instance v24, Ljava/lang/StringBuilder;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    const-string v25, "!@Error preloading "

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, v24

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    const-string v25, "."

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    move-object/from16 v0, v19

    move-object/from16 v1, v24

    move-object/from16 v2, v16

    invoke-static {v0, v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 757
    move-object/from16 v0, v16

    instance-of v0, v0, Ljava/lang/Error;

    move/from16 v19, v0

    if-eqz v19, :cond_36b

    .line 758
    check-cast v16, Ljava/lang/Error;

    .end local v16    # "t":Ljava/lang/Throwable;
    throw v16

    .line 760
    .restart local v16    # "t":Ljava/lang/Throwable;
    :cond_36b
    move-object/from16 v0, v16

    instance-of v0, v0, Ljava/lang/RuntimeException;

    move/from16 v19, v0

    if-eqz v19, :cond_376

    .line 761
    check-cast v16, Ljava/lang/RuntimeException;

    .end local v16    # "t":Ljava/lang/Throwable;
    throw v16

    .line 763
    .restart local v16    # "t":Ljava/lang/Throwable;
    :cond_376
    new-instance v19, Ljava/lang/RuntimeException;

    move-object/from16 v0, v19

    move-object/from16 v1, v16

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v19

    .line 774
    .end local v11    # "j":I
    .end local v16    # "t":Ljava/lang/Throwable;
    :catch_380
    move-exception v8

    .line 775
    .local v8, "e":Ljava/lang/InterruptedException;
    invoke-virtual {v8}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto/16 :goto_26c

    .line 780
    .end local v8    # "e":Ljava/lang/InterruptedException;
    :cond_386
    const/4 v11, 0x0

    .restart local v11    # "j":I
    :goto_387
    sget-object v19, postLoadClasses:[Ljava/lang/String;

    move-object/from16 v0, v19

    array-length v0, v0

    move/from16 v19, v0
    :try_end_38e
    .catch Ljava/io/IOException; {:try_start_33a .. :try_end_38e} :catch_297
    .catchall {:try_start_33a .. :try_end_38e} :catchall_32b

    move/from16 v0, v19

    if-ge v11, v0, :cond_3dd

    .line 783
    :try_start_392
    sget-object v19, postLoadClasses:[Ljava/lang/String;

    aget-object v19, v19, v11

    invoke-static/range {v19 .. v19}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    .line 784
    const-string v19, "Zygote"

    new-instance v24, Ljava/lang/StringBuilder;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v25, "post pld="

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    sget-object v25, postLoadClasses:[Ljava/lang/String;

    aget-object v25, v25, v11

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    move-object/from16 v0, v19

    move-object/from16 v1, v24

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3ba
    .catch Ljava/lang/ClassNotFoundException; {:try_start_392 .. :try_end_3ba} :catch_3bd
    .catch Ljava/io/IOException; {:try_start_392 .. :try_end_3ba} :catch_297
    .catchall {:try_start_392 .. :try_end_3ba} :catchall_32b

    .line 780
    :goto_3ba
    add-int/lit8 v11, v11, 0x1

    goto :goto_387

    .line 786
    :catch_3bd
    move-exception v8

    .local v8, "e":Ljava/lang/ClassNotFoundException;
    :try_start_3be
    const-string v19, "Zygote"

    new-instance v24, Ljava/lang/StringBuilder;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    const-string v25, "Class not found for preloading: "

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, v24

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    move-object/from16 v0, v19

    move-object/from16 v1, v24

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3dc
    .catch Ljava/io/IOException; {:try_start_3be .. :try_end_3dc} :catch_297
    .catchall {:try_start_3be .. :try_end_3dc} :catchall_32b

    goto :goto_3ba

    .line 794
    .end local v8    # "e":Ljava/lang/ClassNotFoundException;
    :cond_3dd
    invoke-static {v10}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 796
    invoke-virtual {v13, v7}, Ldalvik/system/VMRuntime;->setTargetHeapUtilization(F)F

    .line 799
    invoke-virtual {v13}, Ldalvik/system/VMRuntime;->preloadDexCaches()V

    .line 801
    invoke-static {}, Landroid/os/Debug;->stopAllocCounting()V

    goto/16 :goto_79

    .line 545
    .end local v9    # "i":I
    .end local v11    # "j":I
    .end local v14    # "startTime":J
    .end local v17    # "t1":Ljava/lang/Thread;
    .end local v18    # "t2":Ljava/lang/Thread;
    .end local v20    # "time1":J
    .end local v22    # "time2":J
    :catch_3eb
    move-exception v19

    goto/16 :goto_c0
.end method

.method private static performSystemServerDexOpt(Ljava/lang/String;)V
    .registers 13
    .param p0, "classPath"    # Ljava/lang/String;

    .prologue
    .line 960
    const-string v2, ":"

    invoke-virtual {p0, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v8

    .line 961
    .local v8, "classPathElements":[Ljava/lang/String;
    new-instance v0, Lcom/android/internal/os/InstallerConnection;

    invoke-direct {v0}, Lcom/android/internal/os/InstallerConnection;-><init>()V

    .line 962
    .local v0, "installer":Lcom/android/internal/os/InstallerConnection;
    invoke-virtual {v0}, Lcom/android/internal/os/InstallerConnection;->waitForConnection()V

    .line 963
    invoke-static {}, Ldalvik/system/VMRuntime;->getRuntime()Ldalvik/system/VMRuntime;

    move-result-object v2

    invoke-virtual {v2}, Ldalvik/system/VMRuntime;->vmInstructionSet()Ljava/lang/String;

    move-result-object v4

    .line 966
    .local v4, "instructionSet":Ljava/lang/String;
    move-object v7, v8

    .local v7, "arr$":[Ljava/lang/String;
    :try_start_17
    array-length v11, v7

    .local v11, "len$":I
    const/4 v9, 0x0

    .local v9, "i$":I
    :goto_19
    if-ge v9, v11, :cond_30

    aget-object v1, v7, v9

    .line 967
    .local v1, "classPathElement":Ljava/lang/String;
    const-string v2, "*"

    const/4 v3, 0x0

    invoke-static {v1, v2, v4, v3}, Ldalvik/system/DexFile;->getDexOptNeeded(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)I

    move-result v5

    .line 969
    .local v5, "dexoptNeeded":I
    if-eqz v5, :cond_2d

    .line 970
    const/16 v2, 0x3e8

    const/4 v3, 0x0

    const/4 v6, 0x0

    invoke-virtual/range {v0 .. v6}, Lcom/android/internal/os/InstallerConnection;->dexopt(Ljava/lang/String;IZLjava/lang/String;IZ)I
    :try_end_2d
    .catch Ljava/io/IOException; {:try_start_17 .. :try_end_2d} :catch_34
    .catchall {:try_start_17 .. :try_end_2d} :catchall_3d

    .line 966
    :cond_2d
    add-int/lit8 v9, v9, 0x1

    goto :goto_19

    .line 977
    .end local v1    # "classPathElement":Ljava/lang/String;
    .end local v5    # "dexoptNeeded":I
    :cond_30
    invoke-virtual {v0}, Lcom/android/internal/os/InstallerConnection;->disconnect()V

    .line 979
    return-void

    .line 974
    .end local v9    # "i$":I
    .end local v11    # "len$":I
    :catch_34
    move-exception v10

    .line 975
    .local v10, "ioe":Ljava/io/IOException;
    :try_start_35
    new-instance v2, Ljava/lang/RuntimeException;

    const-string v3, "Error starting system_server"

    invoke-direct {v2, v3, v10}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2
    :try_end_3d
    .catchall {:try_start_35 .. :try_end_3d} :catchall_3d

    .line 977
    .end local v10    # "ioe":Ljava/io/IOException;
    :catchall_3d
    move-exception v2

    invoke-virtual {v0}, Lcom/android/internal/os/InstallerConnection;->disconnect()V

    throw v2
.end method

.method private static varargs posixCapabilitiesAsBits([I)J
    .registers 9
    .param p0, "capabilities"    # [I

    .prologue
    .line 1051
    const-wide/16 v4, 0x0

    .line 1052
    .local v4, "result":J
    move-object v0, p0

    .local v0, "arr$":[I
    array-length v3, v0

    .local v3, "len$":I
    const/4 v2, 0x0

    .local v2, "i$":I
    :goto_5
    if-ge v2, v3, :cond_20

    aget v1, v0, v2

    .line 1053
    .local v1, "capability":I
    if-ltz v1, :cond_f

    sget v6, Landroid/system/OsConstants;->CAP_LAST_CAP:I

    if-le v1, v6, :cond_19

    .line 1054
    :cond_f
    new-instance v6, Ljava/lang/IllegalArgumentException;

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 1056
    :cond_19
    const-wide/16 v6, 0x1

    shl-long/2addr v6, v1

    or-long/2addr v4, v6

    .line 1052
    add-int/lit8 v2, v2, 0x1

    goto :goto_5

    .line 1058
    .end local v1    # "capability":I
    :cond_20
    return-wide v4
.end method

.method static preload()V
    .registers 8

    .prologue
    const/16 v5, 0x270f

    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 232
    const-string v3, "Zygote"

    const-string v4, "!@Boot: Begin of preload()"

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 236
    invoke-static {v5}, setEffectiveGroup(I)V

    .line 237
    invoke-static {v5}, setEffectiveUser(I)V

    .line 238
    sput-boolean v7, isParallelThreadRunning:Z

    .line 241
    new-instance v1, Ljava/lang/Thread;

    new-instance v3, Lcom/android/internal/os/ZygoteInit$1;

    invoke-direct {v3}, Lcom/android/internal/os/ZygoteInit$1;-><init>()V

    const-string/jumbo v4, "pprr"

    invoke-direct {v1, v3, v4}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    .line 249
    .local v1, "pprr":Ljava/lang/Thread;
    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    .line 251
    const-string v3, "libc.debug.malloc"

    invoke-static {v3, v6}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v3

    if-nez v3, :cond_3b

    .line 252
    new-instance v2, Ljava/lang/Thread;

    new-instance v3, Lcom/android/internal/os/ZygoteInit$2;

    invoke-direct {v3}, Lcom/android/internal/os/ZygoteInit$2;-><init>()V

    const-string/jumbo v4, "preloadMonitor"

    invoke-direct {v2, v3, v4}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    .line 276
    .local v2, "preloadMonitor":Ljava/lang/Thread;
    invoke-virtual {v2}, Ljava/lang/Thread;->start()V

    .line 281
    .end local v2    # "preloadMonitor":Ljava/lang/Thread;
    :cond_3b
    invoke-static {}, parallelpreloadClasses()V

    .line 282
    invoke-static {}, preloadOpenGL()V

    .line 283
    invoke-static {}, preloadSharedLibraries()V

    .line 284
    invoke-static {}, preloadTextResources()V

    .line 287
    invoke-static {}, Landroid/webkit/WebViewFactory;->prepareWebViewInZygote()V

    .line 289
    :goto_4a
    sget-boolean v3, isParallelThreadRunning:Z

    if-eqz v3, :cond_68

    sget-boolean v3, isError:Z

    if-nez v3, :cond_68

    .line 291
    const-string v3, "Zygote"

    const-string v4, "Waiting Preload Resource"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 292
    const-wide/16 v4, 0x14

    :try_start_5b
    invoke-static {v4, v5}, Ljava/lang/Thread;->sleep(J)V
    :try_end_5e
    .catch Ljava/lang/InterruptedException; {:try_start_5b .. :try_end_5e} :catch_5f

    goto :goto_4a

    .line 293
    :catch_5f
    move-exception v0

    .local v0, "e":Ljava/lang/InterruptedException;
    const-string v3, "Zygote"

    const-string v4, "Exception in Zygote PC/PR Parallel thread."

    invoke-static {v3, v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_4a

    .line 296
    .end local v0    # "e":Ljava/lang/InterruptedException;
    :cond_68
    sput-boolean v7, isPreloadComplete:Z

    .line 298
    invoke-static {v6}, setEffectiveUser(I)V

    .line 299
    invoke-static {v6}, setEffectiveGroup(I)V

    .line 302
    invoke-static {}, adjustClassPreloadBalance()V

    .line 316
    const-string v3, "Zygote"

    const-string v4, "!@Boot: End of preload()"

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 317
    return-void
.end method

.method private static preloadClasses()V
    .registers 18

    .prologue
    .line 371
    invoke-static {}, Ldalvik/system/VMRuntime;->getRuntime()Ldalvik/system/VMRuntime;

    move-result-object v10

    .line 375
    .local v10, "runtime":Ldalvik/system/VMRuntime;
    :try_start_4
    new-instance v6, Ljava/io/FileInputStream;

    const-string v14, "/system/etc/preloaded-classes"

    invoke-direct {v6, v14}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V
    :try_end_b
    .catch Ljava/io/FileNotFoundException; {:try_start_4 .. :try_end_b} :catch_69

    .line 381
    .local v6, "is":Ljava/io/InputStream;
    const-string v14, "Zygote"

    const-string v15, "Preloading classes..."

    invoke-static {v14, v15}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 382
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v12

    .line 385
    .local v12, "startTime":J
    invoke-static {}, Landroid/system/Os;->getuid()I

    move-result v9

    .line 386
    .local v9, "reuid":I
    invoke-static {}, Landroid/system/Os;->getgid()I

    move-result v8

    .line 391
    .local v8, "regid":I
    const/4 v3, 0x0

    .line 392
    .local v3, "droppedPriviliges":Z
    if-nez v9, :cond_30

    if-nez v8, :cond_30

    .line 394
    const/4 v14, 0x0

    const/16 v15, 0x270f

    :try_start_26
    invoke-static {v14, v15}, Landroid/system/Os;->setregid(II)V

    .line 395
    const/4 v14, 0x0

    const/16 v15, 0x270f

    invoke-static {v14, v15}, Landroid/system/Os;->setreuid(II)V
    :try_end_2f
    .catch Landroid/system/ErrnoException; {:try_start_26 .. :try_end_2f} :catch_72

    .line 400
    const/4 v3, 0x1

    .line 405
    :cond_30
    invoke-virtual {v10}, Ldalvik/system/VMRuntime;->getTargetHeapUtilization()F

    move-result v2

    .line 406
    .local v2, "defaultUtilization":F
    const v14, 0x3f4ccccd    # 0.8f

    invoke-virtual {v10, v14}, Ldalvik/system/VMRuntime;->setTargetHeapUtilization(F)F

    .line 409
    :try_start_3a
    new-instance v0, Ljava/io/BufferedReader;

    new-instance v14, Ljava/io/InputStreamReader;

    invoke-direct {v14, v6}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    const/16 v15, 0x100

    invoke-direct {v0, v14, v15}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;I)V

    .line 412
    .local v0, "br":Ljava/io/BufferedReader;
    const/4 v1, 0x0

    .line 414
    .local v1, "count":I
    :cond_47
    :goto_47
    invoke-virtual {v0}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v7

    .local v7, "line":Ljava/lang/String;
    if-eqz v7, :cond_12d

    .line 416
    invoke-virtual {v7}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v7

    .line 417
    const-string v14, "#"

    invoke-virtual {v7, v14}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v14

    if-nez v14, :cond_47

    const-string v14, ""

    invoke-virtual {v7, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_5e
    .catch Ljava/io/IOException; {:try_start_3a .. :try_end_5e} :catch_95
    .catchall {:try_start_3a .. :try_end_5e} :catchall_e1

    move-result v14

    if-nez v14, :cond_47

    .line 430
    const/4 v14, 0x1

    const/4 v15, 0x0

    :try_start_63
    invoke-static {v7, v14, v15}, Ljava/lang/Class;->forName(Ljava/lang/String;ZLjava/lang/ClassLoader;)Ljava/lang/Class;
    :try_end_66
    .catch Ljava/lang/ClassNotFoundException; {:try_start_63 .. :try_end_66} :catch_7b
    .catch Ljava/lang/UnsatisfiedLinkError; {:try_start_63 .. :try_end_66} :catch_bc
    .catch Ljava/lang/Throwable; {:try_start_63 .. :try_end_66} :catch_fa
    .catch Ljava/io/IOException; {:try_start_63 .. :try_end_66} :catch_95
    .catchall {:try_start_63 .. :try_end_66} :catchall_e1

    .line 431
    add-int/lit8 v1, v1, 0x1

    goto :goto_47

    .line 376
    .end local v0    # "br":Ljava/io/BufferedReader;
    .end local v1    # "count":I
    .end local v2    # "defaultUtilization":F
    .end local v3    # "droppedPriviliges":Z
    .end local v6    # "is":Ljava/io/InputStream;
    .end local v7    # "line":Ljava/lang/String;
    .end local v8    # "regid":I
    .end local v9    # "reuid":I
    .end local v12    # "startTime":J
    :catch_69
    move-exception v4

    .line 377
    .local v4, "e":Ljava/io/FileNotFoundException;
    const-string v14, "Zygote"

    const-string v15, "Couldn\'t find /system/etc/preloaded-classes."

    invoke-static {v14, v15}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 470
    .end local v4    # "e":Ljava/io/FileNotFoundException;
    :cond_71
    :goto_71
    return-void

    .line 396
    .restart local v3    # "droppedPriviliges":Z
    .restart local v6    # "is":Ljava/io/InputStream;
    .restart local v8    # "regid":I
    .restart local v9    # "reuid":I
    .restart local v12    # "startTime":J
    :catch_72
    move-exception v5

    .line 397
    .local v5, "ex":Landroid/system/ErrnoException;
    new-instance v14, Ljava/lang/RuntimeException;

    const-string v15, "Failed to drop root"

    invoke-direct {v14, v15, v5}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v14

    .line 432
    .end local v5    # "ex":Landroid/system/ErrnoException;
    .restart local v0    # "br":Ljava/io/BufferedReader;
    .restart local v1    # "count":I
    .restart local v2    # "defaultUtilization":F
    .restart local v7    # "line":Ljava/lang/String;
    :catch_7b
    move-exception v4

    .line 433
    .local v4, "e":Ljava/lang/ClassNotFoundException;
    :try_start_7c
    const-string v14, "Zygote"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "Class not found for preloading: "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_94
    .catch Ljava/io/IOException; {:try_start_7c .. :try_end_94} :catch_95
    .catchall {:try_start_7c .. :try_end_94} :catchall_e1

    goto :goto_47

    .line 450
    .end local v0    # "br":Ljava/io/BufferedReader;
    .end local v1    # "count":I
    .end local v4    # "e":Ljava/lang/ClassNotFoundException;
    .end local v7    # "line":Ljava/lang/String;
    :catch_95
    move-exception v4

    .line 451
    .local v4, "e":Ljava/io/IOException;
    :try_start_96
    const-string v14, "Zygote"

    const-string v15, "Error reading /system/etc/preloaded-classes."

    invoke-static {v14, v15, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_9d
    .catchall {:try_start_96 .. :try_end_9d} :catchall_e1

    .line 453
    invoke-static {v6}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 455
    invoke-virtual {v10, v2}, Ldalvik/system/VMRuntime;->setTargetHeapUtilization(F)F

    .line 458
    invoke-virtual {v10}, Ldalvik/system/VMRuntime;->preloadDexCaches()V

    .line 461
    if-eqz v3, :cond_71

    .line 463
    const/4 v14, 0x0

    const/4 v15, 0x0

    :try_start_aa
    invoke-static {v14, v15}, Landroid/system/Os;->setreuid(II)V

    .line 464
    const/4 v14, 0x0

    const/4 v15, 0x0

    invoke-static {v14, v15}, Landroid/system/Os;->setregid(II)V
    :try_end_b2
    .catch Landroid/system/ErrnoException; {:try_start_aa .. :try_end_b2} :catch_b3

    goto :goto_71

    .line 465
    :catch_b3
    move-exception v5

    .line 466
    .restart local v5    # "ex":Landroid/system/ErrnoException;
    new-instance v14, Ljava/lang/RuntimeException;

    const-string v15, "Failed to restore root"

    invoke-direct {v14, v15, v5}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v14

    .line 434
    .end local v4    # "e":Ljava/io/IOException;
    .end local v5    # "ex":Landroid/system/ErrnoException;
    .restart local v0    # "br":Ljava/io/BufferedReader;
    .restart local v1    # "count":I
    .restart local v7    # "line":Ljava/lang/String;
    :catch_bc
    move-exception v4

    .line 435
    .local v4, "e":Ljava/lang/UnsatisfiedLinkError;
    :try_start_bd
    const-string v14, "Zygote"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "Problem preloading "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, ": "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_df
    .catch Ljava/io/IOException; {:try_start_bd .. :try_end_df} :catch_95
    .catchall {:try_start_bd .. :try_end_df} :catchall_e1

    goto/16 :goto_47

    .line 453
    .end local v0    # "br":Ljava/io/BufferedReader;
    .end local v1    # "count":I
    .end local v4    # "e":Ljava/lang/UnsatisfiedLinkError;
    .end local v7    # "line":Ljava/lang/String;
    :catchall_e1
    move-exception v14

    invoke-static {v6}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 455
    invoke-virtual {v10, v2}, Ldalvik/system/VMRuntime;->setTargetHeapUtilization(F)F

    .line 458
    invoke-virtual {v10}, Ldalvik/system/VMRuntime;->preloadDexCaches()V

    .line 461
    if-eqz v3, :cond_f9

    .line 463
    const/4 v15, 0x0

    const/16 v16, 0x0

    :try_start_f0
    invoke-static/range {v15 .. v16}, Landroid/system/Os;->setreuid(II)V

    .line 464
    const/4 v15, 0x0

    const/16 v16, 0x0

    invoke-static/range {v15 .. v16}, Landroid/system/Os;->setregid(II)V
    :try_end_f9
    .catch Landroid/system/ErrnoException; {:try_start_f0 .. :try_end_f9} :catch_17c

    .line 466
    :cond_f9
    throw v14

    .line 436
    .restart local v0    # "br":Ljava/io/BufferedReader;
    .restart local v1    # "count":I
    .restart local v7    # "line":Ljava/lang/String;
    :catch_fa
    move-exception v11

    .line 437
    .local v11, "t":Ljava/lang/Throwable;
    :try_start_fb
    const-string v14, "Zygote"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "Error preloading "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, "."

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15, v11}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 438
    instance-of v14, v11, Ljava/lang/Error;

    if-eqz v14, :cond_120

    .line 439
    check-cast v11, Ljava/lang/Error;

    .end local v11    # "t":Ljava/lang/Throwable;
    throw v11

    .line 441
    .restart local v11    # "t":Ljava/lang/Throwable;
    :cond_120
    instance-of v14, v11, Ljava/lang/RuntimeException;

    if-eqz v14, :cond_127

    .line 442
    check-cast v11, Ljava/lang/RuntimeException;

    .end local v11    # "t":Ljava/lang/Throwable;
    throw v11

    .line 444
    .restart local v11    # "t":Ljava/lang/Throwable;
    :cond_127
    new-instance v14, Ljava/lang/RuntimeException;

    invoke-direct {v14, v11}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v14

    .line 448
    .end local v11    # "t":Ljava/lang/Throwable;
    :cond_12d
    const-string v14, "Zygote"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "...preloaded "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, " classes in "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v16

    sub-long v16, v16, v12

    invoke-virtual/range {v15 .. v17}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string/jumbo v16, "ms."

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_15c
    .catch Ljava/io/IOException; {:try_start_fb .. :try_end_15c} :catch_95
    .catchall {:try_start_fb .. :try_end_15c} :catchall_e1

    .line 453
    invoke-static {v6}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 455
    invoke-virtual {v10, v2}, Ldalvik/system/VMRuntime;->setTargetHeapUtilization(F)F

    .line 458
    invoke-virtual {v10}, Ldalvik/system/VMRuntime;->preloadDexCaches()V

    .line 461
    if-eqz v3, :cond_71

    .line 463
    const/4 v14, 0x0

    const/4 v15, 0x0

    :try_start_169
    invoke-static {v14, v15}, Landroid/system/Os;->setreuid(II)V

    .line 464
    const/4 v14, 0x0

    const/4 v15, 0x0

    invoke-static {v14, v15}, Landroid/system/Os;->setregid(II)V
    :try_end_171
    .catch Landroid/system/ErrnoException; {:try_start_169 .. :try_end_171} :catch_173

    goto/16 :goto_71

    .line 465
    :catch_173
    move-exception v5

    .line 466
    .restart local v5    # "ex":Landroid/system/ErrnoException;
    new-instance v14, Ljava/lang/RuntimeException;

    const-string v15, "Failed to restore root"

    invoke-direct {v14, v15, v5}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v14

    .line 465
    .end local v0    # "br":Ljava/io/BufferedReader;
    .end local v1    # "count":I
    .end local v5    # "ex":Landroid/system/ErrnoException;
    .end local v7    # "line":Ljava/lang/String;
    :catch_17c
    move-exception v5

    .line 466
    .restart local v5    # "ex":Landroid/system/ErrnoException;
    new-instance v14, Ljava/lang/RuntimeException;

    const-string v15, "Failed to restore root"

    invoke-direct {v14, v15, v5}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v14
.end method

.method private static preloadColorStateLists(Ldalvik/system/VMRuntime;Landroid/content/res/TypedArray;)I
    .registers 8
    .param p0, "runtime"    # Ldalvik/system/VMRuntime;
    .param p1, "ar"    # Landroid/content/res/TypedArray;

    .prologue
    .line 849
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->length()I

    move-result v0

    .line 850
    .local v0, "N":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_5
    if-ge v1, v0, :cond_4b

    .line 851
    const/4 v3, 0x0

    invoke-virtual {p1, v1, v3}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v2

    .line 855
    .local v2, "id":I
    if-eqz v2, :cond_48

    .line 856
    sget-object v3, mResources:Landroid/content/res/Resources;

    const/4 v4, 0x0

    invoke-virtual {v3, v2, v4}, Landroid/content/res/Resources;->getColorStateList(ILandroid/content/res/Resources$Theme;)Landroid/content/res/ColorStateList;

    move-result-object v3

    if-nez v3, :cond_48

    .line 857
    new-instance v3, Ljava/lang/IllegalArgumentException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Unable to find preloaded color resource #0x"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {v2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " ("

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p1, v1}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ")"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 850
    :cond_48
    add-int/lit8 v1, v1, 0x1

    goto :goto_5

    .line 864
    .end local v2    # "id":I
    :cond_4b
    return v0
.end method

.method private static preloadDrawables(Ldalvik/system/VMRuntime;Landroid/content/res/TypedArray;)I
    .registers 8
    .param p0, "runtime"    # Ldalvik/system/VMRuntime;
    .param p1, "ar"    # Landroid/content/res/TypedArray;

    .prologue
    .line 869
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->length()I

    move-result v0

    .line 870
    .local v0, "N":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_5
    if-ge v1, v0, :cond_4b

    .line 871
    const/4 v3, 0x0

    invoke-virtual {p1, v1, v3}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v2

    .line 875
    .local v2, "id":I
    if-eqz v2, :cond_48

    .line 876
    sget-object v3, mResources:Landroid/content/res/Resources;

    const/4 v4, 0x0

    invoke-virtual {v3, v2, v4}, Landroid/content/res/Resources;->getDrawable(ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    if-nez v3, :cond_48

    .line 877
    new-instance v3, Ljava/lang/IllegalArgumentException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Unable to find preloaded drawable resource #0x"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {v2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " ("

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p1, v1}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ")"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 870
    :cond_48
    add-int/lit8 v1, v1, 0x1

    goto :goto_5

    .line 884
    .end local v2    # "id":I
    :cond_4b
    return v0
.end method

.method private static preloadOpenGL()V
    .registers 2

    .prologue
    const/4 v1, 0x0

    .line 327
    const-string/jumbo v0, "ro.zygote.disable_gl_preload"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-nez v0, :cond_d

    .line 328
    invoke-static {v1}, Landroid/opengl/EGL14;->eglGetDisplay(I)Landroid/opengl/EGLDisplay;

    .line 330
    :cond_d
    return-void
.end method

.method private static preloadResources()V
    .registers 10

    .prologue
    .line 818
    invoke-static {}, Ldalvik/system/VMRuntime;->getRuntime()Ldalvik/system/VMRuntime;

    move-result-object v3

    .line 821
    .local v3, "runtime":Ldalvik/system/VMRuntime;
    :try_start_4
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v6

    sput-object v6, mResources:Landroid/content/res/Resources;

    .line 822
    sget-object v6, mResources:Landroid/content/res/Resources;

    invoke-virtual {v6}, Landroid/content/res/Resources;->startPreloading()V

    .line 824
    const-string v6, "Zygote"

    const-string v7, "Preloading resources..."

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 826
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v4

    .line 827
    .local v4, "startTime":J
    sget-object v6, mResources:Landroid/content/res/Resources;

    const v7, 0x1070006

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->obtainTypedArray(I)Landroid/content/res/TypedArray;

    move-result-object v1

    .line 829
    .local v1, "ar":Landroid/content/res/TypedArray;
    invoke-static {v3, v1}, preloadDrawables(Ldalvik/system/VMRuntime;Landroid/content/res/TypedArray;)I

    move-result v0

    .line 830
    .local v0, "N":I
    invoke-virtual {v1}, Landroid/content/res/TypedArray;->recycle()V

    .line 831
    const-string v6, "Zygote"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "...preloaded "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " resources in "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v8

    sub-long/2addr v8, v4

    invoke-virtual {v7, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, "ms."

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 834
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v4

    .line 835
    sget-object v6, mResources:Landroid/content/res/Resources;

    const v7, 0x1070007

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->obtainTypedArray(I)Landroid/content/res/TypedArray;

    move-result-object v1

    .line 837
    invoke-static {v3, v1}, preloadColorStateLists(Ldalvik/system/VMRuntime;Landroid/content/res/TypedArray;)I

    move-result v0

    .line 838
    invoke-virtual {v1}, Landroid/content/res/TypedArray;->recycle()V

    .line 839
    const-string v6, "Zygote"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "...preloaded "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " resources in "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v8

    sub-long/2addr v8, v4

    invoke-virtual {v7, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, "ms."

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 842
    sget-object v6, mResources:Landroid/content/res/Resources;

    invoke-virtual {v6}, Landroid/content/res/Resources;->finishPreloading()V
    :try_end_9f
    .catch Ljava/lang/RuntimeException; {:try_start_4 .. :try_end_9f} :catch_a0

    .line 846
    .end local v0    # "N":I
    .end local v1    # "ar":Landroid/content/res/TypedArray;
    .end local v4    # "startTime":J
    :goto_9f
    return-void

    .line 843
    :catch_a0
    move-exception v2

    .line 844
    .local v2, "e":Ljava/lang/RuntimeException;
    const-string v6, "Zygote"

    const-string v7, "Failure preloading resources"

    invoke-static {v6, v7, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_9f
.end method

.method private static preloadSharedLibraries()V
    .registers 2

    .prologue
    .line 320
    const-string v0, "Zygote"

    const-string v1, "Preloading shared libraries..."

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 321
    const-string v0, "android"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    .line 322
    const-string v0, "compiler_rt"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    .line 323
    const-string v0, "jnigraphics"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    .line 324
    return-void
.end method

.method private static preloadTextResources()V
    .registers 0

    .prologue
    .line 333
    invoke-static {}, Landroid/text/Hyphenator;->init()V

    .line 334
    return-void
.end method

.method private static registerZygoteSocket(Ljava/lang/String;)V
    .registers 9
    .param p0, "socketName"    # Ljava/lang/String;

    .prologue
    .line 131
    sget-object v5, sServerSocket:Landroid/net/LocalServerSocket;

    if-nez v5, :cond_2e

    .line 133
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "ANDROID_SOCKET_"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 135
    .local v4, "fullSocketName":Ljava/lang/String;
    :try_start_17
    invoke-static {v4}, Ljava/lang/System;->getenv(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 136
    .local v0, "env":Ljava/lang/String;
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_1e
    .catch Ljava/lang/RuntimeException; {:try_start_17 .. :try_end_1e} :catch_2f

    move-result v3

    .line 142
    .local v3, "fileDesc":I
    :try_start_1f
    new-instance v2, Ljava/io/FileDescriptor;

    invoke-direct {v2}, Ljava/io/FileDescriptor;-><init>()V

    .line 143
    .local v2, "fd":Ljava/io/FileDescriptor;
    invoke-virtual {v2, v3}, Ljava/io/FileDescriptor;->setInt$(I)V

    .line 144
    new-instance v5, Landroid/net/LocalServerSocket;

    invoke-direct {v5, v2}, Landroid/net/LocalServerSocket;-><init>(Ljava/io/FileDescriptor;)V

    sput-object v5, sServerSocket:Landroid/net/LocalServerSocket;
    :try_end_2e
    .catch Ljava/io/IOException; {:try_start_1f .. :try_end_2e} :catch_49

    .line 150
    .end local v0    # "env":Ljava/lang/String;
    .end local v2    # "fd":Ljava/io/FileDescriptor;
    .end local v3    # "fileDesc":I
    .end local v4    # "fullSocketName":Ljava/lang/String;
    :cond_2e
    return-void

    .line 137
    .restart local v4    # "fullSocketName":Ljava/lang/String;
    :catch_2f
    move-exception v1

    .line 138
    .local v1, "ex":Ljava/lang/RuntimeException;
    new-instance v5, Ljava/lang/RuntimeException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " unset or invalid"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v5

    .line 145
    .end local v1    # "ex":Ljava/lang/RuntimeException;
    .restart local v0    # "env":Ljava/lang/String;
    .restart local v3    # "fileDesc":I
    :catch_49
    move-exception v1

    .line 146
    .local v1, "ex":Ljava/io/IOException;
    new-instance v5, Ljava/lang/RuntimeException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Error binding to local socket \'"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "\'"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v5
.end method

.method private static runSelectLoop(Ljava/lang/String;)V
    .registers 10
    .param p0, "abiList"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/os/ZygoteInit$MethodAndArgsCaller;
        }
    .end annotation

    .prologue
    .line 1167
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 1168
    .local v2, "fds":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/io/FileDescriptor;>;"
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 1170
    .local v5, "peers":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/internal/os/ZygoteConnection;>;"
    sget-object v7, sServerSocket:Landroid/net/LocalServerSocket;

    invoke-virtual {v7}, Landroid/net/LocalServerSocket;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v7

    invoke-virtual {v2, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1171
    const/4 v7, 0x0

    invoke-virtual {v5, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1174
    :cond_17
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v7

    new-array v6, v7, [Landroid/system/StructPollfd;

    .line 1175
    .local v6, "pollFds":[Landroid/system/StructPollfd;
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_1e
    array-length v7, v6

    if-ge v3, v7, :cond_3c

    .line 1176
    new-instance v7, Landroid/system/StructPollfd;

    invoke-direct {v7}, Landroid/system/StructPollfd;-><init>()V

    aput-object v7, v6, v3

    .line 1177
    aget-object v8, v6, v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/io/FileDescriptor;

    iput-object v7, v8, Landroid/system/StructPollfd;->fd:Ljava/io/FileDescriptor;

    .line 1178
    aget-object v7, v6, v3

    sget v8, Landroid/system/OsConstants;->POLLIN:I

    int-to-short v8, v8

    iput-short v8, v7, Landroid/system/StructPollfd;->events:S

    .line 1175
    add-int/lit8 v3, v3, 0x1

    goto :goto_1e

    .line 1181
    :cond_3c
    const/4 v7, -0x1

    :try_start_3d
    invoke-static {v6, v7}, Landroid/system/Os;->poll([Landroid/system/StructPollfd;I)I
    :try_end_40
    .catch Landroid/system/ErrnoException; {:try_start_3d .. :try_end_40} :catch_51

    .line 1185
    array-length v7, v6

    add-int/lit8 v3, v7, -0x1

    :goto_43
    if-ltz v3, :cond_17

    .line 1186
    aget-object v7, v6, v3

    iget-short v7, v7, Landroid/system/StructPollfd;->revents:S

    sget v8, Landroid/system/OsConstants;->POLLIN:I

    and-int/2addr v7, v8

    if-nez v7, :cond_5b

    .line 1185
    :cond_4e
    :goto_4e
    add-int/lit8 v3, v3, -0x1

    goto :goto_43

    .line 1182
    :catch_51
    move-exception v1

    .line 1183
    .local v1, "ex":Landroid/system/ErrnoException;
    new-instance v7, Ljava/lang/RuntimeException;

    const-string/jumbo v8, "poll failed"

    invoke-direct {v7, v8, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v7

    .line 1189
    .end local v1    # "ex":Landroid/system/ErrnoException;
    :cond_5b
    if-nez v3, :cond_6c

    .line 1190
    invoke-static {p0}, acceptCommandPeer(Ljava/lang/String;)Lcom/android/internal/os/ZygoteConnection;

    move-result-object v4

    .line 1191
    .local v4, "newPeer":Lcom/android/internal/os/ZygoteConnection;
    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1192
    invoke-virtual {v4}, Lcom/android/internal/os/ZygoteConnection;->getFileDesciptor()Ljava/io/FileDescriptor;

    move-result-object v7

    invoke-virtual {v2, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_4e

    .line 1194
    .end local v4    # "newPeer":Lcom/android/internal/os/ZygoteConnection;
    :cond_6c
    invoke-virtual {v5, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/internal/os/ZygoteConnection;

    invoke-virtual {v7}, Lcom/android/internal/os/ZygoteConnection;->runOnce()Z

    move-result v0

    .line 1195
    .local v0, "done":Z
    if-eqz v0, :cond_4e

    .line 1196
    invoke-virtual {v5, v3}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 1197
    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    goto :goto_4e
.end method

.method private static setEffectiveGroup(I)V
    .registers 4
    .param p0, "gid"    # I

    .prologue
    .line 219
    const/4 v1, 0x0

    :try_start_1
    invoke-static {v1, p0}, Landroid/system/Os;->setregid(II)V
    :try_end_4
    .catch Landroid/system/ErrnoException; {:try_start_1 .. :try_end_4} :catch_5

    .line 223
    return-void

    .line 220
    :catch_5
    move-exception v0

    .line 221
    .local v0, "ex":Landroid/system/ErrnoException;
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "Failed sets effective group ID"

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method private static setEffectiveUser(I)V
    .registers 4
    .param p0, "uid"    # I

    .prologue
    .line 208
    const/4 v1, 0x0

    :try_start_1
    invoke-static {v1, p0}, Landroid/system/Os;->setreuid(II)V
    :try_end_4
    .catch Landroid/system/ErrnoException; {:try_start_1 .. :try_end_4} :catch_5

    .line 212
    return-void

    .line 209
    :catch_5
    move-exception v0

    .line 210
    .local v0, "ex":Landroid/system/ErrnoException;
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "Failed sets effective user ID"

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method private static startSystemServer(Ljava/lang/String;Ljava/lang/String;)Z
    .registers 18
    .param p0, "abiList"    # Ljava/lang/String;
    .param p1, "socketName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/os/ZygoteInit$MethodAndArgsCaller;,
            Ljava/lang/RuntimeException;
        }
    .end annotation

    .prologue
    .line 986
    const/16 v1, 0xb

    new-array v1, v1, [I

    const/4 v2, 0x0

    sget v3, Landroid/system/OsConstants;->CAP_BLOCK_SUSPEND:I

    aput v3, v1, v2

    const/4 v2, 0x1

    sget v3, Landroid/system/OsConstants;->CAP_KILL:I

    aput v3, v1, v2

    const/4 v2, 0x2

    sget v3, Landroid/system/OsConstants;->CAP_NET_ADMIN:I

    aput v3, v1, v2

    const/4 v2, 0x3

    sget v3, Landroid/system/OsConstants;->CAP_NET_BIND_SERVICE:I

    aput v3, v1, v2

    const/4 v2, 0x4

    sget v3, Landroid/system/OsConstants;->CAP_NET_BROADCAST:I

    aput v3, v1, v2

    const/4 v2, 0x5

    sget v3, Landroid/system/OsConstants;->CAP_NET_RAW:I

    aput v3, v1, v2

    const/4 v2, 0x6

    sget v3, Landroid/system/OsConstants;->CAP_SYS_MODULE:I

    aput v3, v1, v2

    const/4 v2, 0x7

    sget v3, Landroid/system/OsConstants;->CAP_SYS_NICE:I

    aput v3, v1, v2

    const/16 v2, 0x8

    sget v3, Landroid/system/OsConstants;->CAP_SYS_RESOURCE:I

    aput v3, v1, v2

    const/16 v2, 0x9

    sget v3, Landroid/system/OsConstants;->CAP_SYS_TIME:I

    aput v3, v1, v2

    const/16 v2, 0xa

    sget v3, Landroid/system/OsConstants;->CAP_SYS_TTY_CONFIG:I

    aput v3, v1, v2

    invoke-static {v1}, posixCapabilitiesAsBits([I)J

    move-result-wide v10

    .line 1000
    .local v10, "capabilities":J
    const/4 v1, 0x7

    new-array v0, v1, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "--setuid=1000"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "--setgid=1000"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "--setgroups=1001,1002,1003,1004,1005,1006,1007,1008,1009,1010,1018,1021,1032,3001,3002,3003,3004,3005,3006,3007"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "--capabilities="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ","

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "--nice-name=system_server"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "--runtime-args"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "com.android.server.SystemServer"

    aput-object v2, v0, v1

    .line 1014
    .local v0, "args":[Ljava/lang/String;
    const/4 v13, 0x0

    .line 1019
    .local v13, "parsedArgs":Lcom/android/internal/os/ZygoteConnection$Arguments;
    :try_start_84
    new-instance v14, Lcom/android/internal/os/ZygoteConnection$Arguments;

    invoke-direct {v14, v0}, Lcom/android/internal/os/ZygoteConnection$Arguments;-><init>([Ljava/lang/String;)V
    :try_end_89
    .catch Ljava/lang/IllegalArgumentException; {:try_start_84 .. :try_end_89} :catch_b2

    .line 1020
    .end local v13    # "parsedArgs":Lcom/android/internal/os/ZygoteConnection$Arguments;
    .local v14, "parsedArgs":Lcom/android/internal/os/ZygoteConnection$Arguments;
    :try_start_89
    invoke-static {v14}, Lcom/android/internal/os/ZygoteConnection;->applyDebuggerSystemProperty(Lcom/android/internal/os/ZygoteConnection$Arguments;)V

    .line 1021
    invoke-static {v14}, Lcom/android/internal/os/ZygoteConnection;->applyInvokeWithSystemProperty(Lcom/android/internal/os/ZygoteConnection$Arguments;)V

    .line 1024
    iget v1, v14, Lcom/android/internal/os/ZygoteConnection$Arguments;->uid:I

    iget v2, v14, Lcom/android/internal/os/ZygoteConnection$Arguments;->gid:I

    iget-object v3, v14, Lcom/android/internal/os/ZygoteConnection$Arguments;->gids:[I

    iget v4, v14, Lcom/android/internal/os/ZygoteConnection$Arguments;->debugFlags:I

    const/4 v5, 0x0

    check-cast v5, [[I

    iget-wide v6, v14, Lcom/android/internal/os/ZygoteConnection$Arguments;->permittedCapabilities:J

    iget-wide v8, v14, Lcom/android/internal/os/ZygoteConnection$Arguments;->effectiveCapabilities:J

    invoke-static/range {v1 .. v9}, Lcom/android/internal/os/Zygote;->forkSystemServer(II[II[[IJJ)I
    :try_end_a1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_89 .. :try_end_a1} :catch_b9

    move-result v15

    .line 1036
    .local v15, "pid":I
    if-nez v15, :cond_b0

    .line 1037
    invoke-static/range {p0 .. p0}, hasSecondZygote(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_ad

    .line 1038
    invoke-static/range {p1 .. p1}, waitForSecondaryZygote(Ljava/lang/String;)V

    .line 1041
    :cond_ad
    invoke-static {v14}, handleSystemServerProcess(Lcom/android/internal/os/ZygoteConnection$Arguments;)V

    .line 1044
    :cond_b0
    const/4 v1, 0x1

    return v1

    .line 1031
    .end local v14    # "parsedArgs":Lcom/android/internal/os/ZygoteConnection$Arguments;
    .end local v15    # "pid":I
    .restart local v13    # "parsedArgs":Lcom/android/internal/os/ZygoteConnection$Arguments;
    :catch_b2
    move-exception v12

    .line 1032
    .local v12, "ex":Ljava/lang/IllegalArgumentException;
    :goto_b3
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v12}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    .line 1031
    .end local v12    # "ex":Ljava/lang/IllegalArgumentException;
    .end local v13    # "parsedArgs":Lcom/android/internal/os/ZygoteConnection$Arguments;
    .restart local v14    # "parsedArgs":Lcom/android/internal/os/ZygoteConnection$Arguments;
    :catch_b9
    move-exception v12

    move-object v13, v14

    .end local v14    # "parsedArgs":Lcom/android/internal/os/ZygoteConnection$Arguments;
    .restart local v13    # "parsedArgs":Lcom/android/internal/os/ZygoteConnection$Arguments;
    goto :goto_b3
.end method

.method private static waitForSecondaryZygote(Ljava/lang/String;)V
    .registers 7
    .param p0, "socketName"    # Ljava/lang/String;

    .prologue
    .line 1140
    const-string/jumbo v3, "zygote"

    invoke-virtual {v3, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_14

    const-string/jumbo v1, "zygote_secondary"

    .line 1144
    .local v1, "otherZygoteName":Ljava/lang/String;
    :goto_c
    :try_start_c
    invoke-static {v1}, Landroid/os/Process$ZygoteState;->connect(Ljava/lang/String;)Landroid/os/Process$ZygoteState;

    move-result-object v2

    .line 1145
    .local v2, "zs":Landroid/os/Process$ZygoteState;
    invoke-virtual {v2}, Landroid/os/Process$ZygoteState;->close()V
    :try_end_13
    .catch Ljava/io/IOException; {:try_start_c .. :try_end_13} :catch_18

    .line 1156
    return-void

    .line 1140
    .end local v1    # "otherZygoteName":Ljava/lang/String;
    .end local v2    # "zs":Landroid/os/Process$ZygoteState;
    :cond_14
    const-string/jumbo v1, "zygote"

    goto :goto_c

    .line 1147
    .restart local v1    # "otherZygoteName":Ljava/lang/String;
    :catch_18
    move-exception v0

    .line 1148
    .local v0, "ioe":Ljava/io/IOException;
    const-string v3, "Zygote"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Got error connecting to zygote, retrying. msg= "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1152
    const-wide/16 v4, 0x3e8

    :try_start_37
    invoke-static {v4, v5}, Ljava/lang/Thread;->sleep(J)V
    :try_end_3a
    .catch Ljava/lang/InterruptedException; {:try_start_37 .. :try_end_3a} :catch_3b

    goto :goto_c

    .line 1153
    :catch_3b
    move-exception v3

    goto :goto_c
.end method
