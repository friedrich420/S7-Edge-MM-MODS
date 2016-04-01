.class public final Landroid/webkit/WebViewFactory;
.super Ljava/lang/Object;
.source "WebViewFactory.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/webkit/WebViewFactory$RelroFileCreator;,
        Landroid/webkit/WebViewFactory$MissingWebViewPackageException;
    }
.end annotation


# static fields
.field private static final CHROMIUM_WEBVIEW_DEFAULT_VMSIZE_BYTES:J = 0x6400000L

.field private static final CHROMIUM_WEBVIEW_FACTORY:Ljava/lang/String; = "com.android.webview.chromium.WebViewChromiumFactoryProvider"

.field private static final CHROMIUM_WEBVIEW_NATIVE_RELRO_32:Ljava/lang/String; = "/data/misc/shared_relro/libwebviewchromium32.relro"

.field private static final CHROMIUM_WEBVIEW_NATIVE_RELRO_64:Ljava/lang/String; = "/data/misc/shared_relro/libwebviewchromium64.relro"

.field public static final CHROMIUM_WEBVIEW_VMSIZE_SIZE_PROPERTY:Ljava/lang/String; = "persist.sys.webview.vmsize"

.field private static final DEBUG:Z = false

.field public static final LIBLOAD_ADDRESS_SPACE_NOT_RESERVED:I = 0x2

.field public static final LIBLOAD_FAILED_JNI_CALL:I = 0x7

.field public static final LIBLOAD_FAILED_LISTING_WEBVIEW_PACKAGES:I = 0x4

.field public static final LIBLOAD_FAILED_TO_LOAD_LIBRARY:I = 0x6

.field public static final LIBLOAD_FAILED_TO_OPEN_RELRO_FILE:I = 0x5

.field public static final LIBLOAD_FAILED_WAITING_FOR_RELRO:I = 0x3

.field public static final LIBLOAD_SUCCESS:I = 0x0

.field public static final LIBLOAD_WRONG_PACKAGE_NAME:I = 0x1

.field private static final LOGTAG:Ljava/lang/String; = "WebViewFactory"

.field private static final NULL_WEBVIEW_FACTORY:Ljava/lang/String; = "com.android.webview.nullwebview.NullWebViewFactoryProvider"

.field private static sAddressSpaceReserved:Z

.field private static sPackageInfo:Landroid/content/pm/PackageInfo;

.field private static sProviderInstance:Landroid/webkit/WebViewFactoryProvider;

.field private static final sProviderLock:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 78
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, sProviderLock:Ljava/lang/Object;

    .line 79
    const/4 v0, 0x0

    sput-boolean v0, sAddressSpaceReserved:Z

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 54
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 460
    return-void
.end method

.method static synthetic access$000()Landroid/webkit/IWebViewUpdateService;
    .registers 1

    .prologue
    .line 54
    invoke-static {}, getUpdateService()Landroid/webkit/IWebViewUpdateService;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$100()Z
    .registers 1

    .prologue
    .line 54
    sget-boolean v0, sAddressSpaceReserved:Z

    return v0
.end method

.method static synthetic access$200(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
    .registers 5
    .param p0, "x0"    # Ljava/lang/String;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # Ljava/lang/String;
    .param p3, "x3"    # Ljava/lang/String;

    .prologue
    .line 54
    invoke-static {p0, p1, p2, p3}, nativeCreateRelroFile(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method private static createRelroFile(Z[Ljava/lang/String;)V
    .registers 11
    .param p0, "is64Bit"    # Z
    .param p1, "nativeLibraryPaths"    # [Ljava/lang/String;

    .prologue
    const/4 v1, 0x0

    .line 427
    if-eqz p0, :cond_3d

    sget-object v0, Landroid/os/Build;->SUPPORTED_64_BIT_ABIS:[Ljava/lang/String;

    aget-object v4, v0, v1

    .line 431
    .local v4, "abi":Ljava/lang/String;
    :goto_7
    new-instance v6, Landroid/webkit/WebViewFactory$1;

    invoke-direct {v6, v4, p0}, Landroid/webkit/WebViewFactory$1;-><init>(Ljava/lang/String;Z)V

    .line 444
    .local v6, "crashHandler":Ljava/lang/Runnable;
    if-eqz p1, :cond_18

    const/4 v0, 0x0

    :try_start_f
    aget-object v0, p1, v0

    if-eqz v0, :cond_18

    const/4 v0, 0x1

    aget-object v0, p1, v0

    if-nez v0, :cond_42

    .line 446
    :cond_18
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Native library paths to the WebView RelRo process must not be null!"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_20
    .catch Ljava/lang/Throwable; {:try_start_f .. :try_end_20} :catch_20

    .line 453
    :catch_20
    move-exception v8

    .line 455
    .local v8, "t":Ljava/lang/Throwable;
    const-string v0, "WebViewFactory"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "error starting relro file creator for abi "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 456
    invoke-interface {v6}, Ljava/lang/Runnable;->run()V

    .line 458
    .end local v8    # "t":Ljava/lang/Throwable;
    :cond_3c
    return-void

    .line 427
    .end local v4    # "abi":Ljava/lang/String;
    .end local v6    # "crashHandler":Ljava/lang/Runnable;
    :cond_3d
    sget-object v0, Landroid/os/Build;->SUPPORTED_32_BIT_ABIS:[Ljava/lang/String;

    aget-object v4, v0, v1

    goto :goto_7

    .line 449
    .restart local v4    # "abi":Ljava/lang/String;
    .restart local v6    # "crashHandler":Ljava/lang/Runnable;
    :cond_42
    :try_start_42
    const-class v0, Landroid/app/ActivityManagerInternal;

    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManagerInternal;

    const-class v1, Landroid/webkit/WebViewFactory$RelroFileCreator;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "WebViewLoader-"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/16 v5, 0x40d

    move-object v2, p1

    invoke-virtual/range {v0 .. v6}, Landroid/app/ActivityManagerInternal;->startIsolatedProcess(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Runnable;)I

    move-result v7

    .line 452
    .local v7, "pid":I
    if-gtz v7, :cond_3c

    new-instance v0, Ljava/lang/Exception;

    const-string v1, "Failed to start the relro file creator process"

    invoke-direct {v0, v1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_74
    .catch Ljava/lang/Throwable; {:try_start_42 .. :try_end_74} :catch_20
.end method

.method private static fetchPackageInfo()Landroid/content/pm/PackageInfo;
    .registers 4

    .prologue
    .line 105
    invoke-static {}, Landroid/app/AppGlobals;->getInitialApplication()Landroid/app/Application;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Application;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    .line 107
    .local v1, "pm":Landroid/content/pm/PackageManager;
    :try_start_8
    invoke-static {}, getWebViewPackageName()Ljava/lang/String;

    move-result-object v2

    const/16 v3, 0x80

    invoke-virtual {v1, v2, v3}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;
    :try_end_11
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_8 .. :try_end_11} :catch_13

    move-result-object v2

    return-object v2

    .line 108
    :catch_13
    move-exception v0

    .line 109
    .local v0, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    new-instance v2, Landroid/webkit/WebViewFactory$MissingWebViewPackageException;

    invoke-direct {v2, v0}, Landroid/webkit/WebViewFactory$MissingWebViewPackageException;-><init>(Ljava/lang/Exception;)V

    throw v2
.end method

.method private static getChromiumProviderClass()Ljava/lang/Class;
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class",
            "<",
            "Landroid/webkit/WebViewFactoryProvider;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    .prologue
    .line 218
    invoke-static {}, Landroid/app/AppGlobals;->getInitialApplication()Landroid/app/Application;

    move-result-object v2

    .line 221
    .local v2, "initialApplication":Landroid/app/Application;
    :try_start_4
    sget-object v4, sPackageInfo:Landroid/content/pm/PackageInfo;

    iget-object v4, v4, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    const/4 v5, 0x3

    invoke-virtual {v2, v4, v5}, Landroid/app/Application;->createPackageContext(Ljava/lang/String;I)Landroid/content/Context;

    move-result-object v3

    .line 224
    .local v3, "webViewContext":Landroid/content/Context;
    invoke-virtual {v2}, Landroid/app/Application;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v4

    invoke-virtual {v3}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v5

    iget-object v5, v5, Landroid/content/pm/ApplicationInfo;->sourceDir:Ljava/lang/String;

    invoke-virtual {v4, v5}, Landroid/content/res/AssetManager;->addAssetPath(Ljava/lang/String;)I

    .line 226
    invoke-virtual {v3}, Landroid/content/Context;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    .line 227
    .local v0, "clazzLoader":Ljava/lang/ClassLoader;
    const-wide/16 v4, 0x10

    const-string v6, "Class.forName()"

    invoke-static {v4, v5, v6}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V
    :try_end_25
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_4 .. :try_end_25} :catch_39

    .line 229
    :try_start_25
    const-string v4, "com.android.webview.chromium.WebViewChromiumFactoryProvider"

    const/4 v5, 0x1

    invoke-static {v4, v5, v0}, Ljava/lang/Class;->forName(Ljava/lang/String;ZLjava/lang/ClassLoader;)Ljava/lang/Class;
    :try_end_2b
    .catchall {:try_start_25 .. :try_end_2b} :catchall_32

    move-result-object v4

    .line 232
    const-wide/16 v6, 0x10

    :try_start_2e
    invoke-static {v6, v7}, Landroid/os/Trace;->traceEnd(J)V

    return-object v4

    :catchall_32
    move-exception v4

    const-wide/16 v6, 0x10

    invoke-static {v6, v7}, Landroid/os/Trace;->traceEnd(J)V

    throw v4
    :try_end_39
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_2e .. :try_end_39} :catch_39

    .line 234
    .end local v0    # "clazzLoader":Ljava/lang/ClassLoader;
    .end local v3    # "webViewContext":Landroid/content/Context;
    :catch_39
    move-exception v1

    .line 235
    .local v1, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    new-instance v4, Landroid/webkit/WebViewFactory$MissingWebViewPackageException;

    invoke-direct {v4, v1}, Landroid/webkit/WebViewFactory$MissingWebViewPackageException;-><init>(Ljava/lang/Exception;)V

    throw v4
.end method

.method private static getLoadFromApkPath(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 15
    .param p0, "apkPath"    # Ljava/lang/String;
    .param p1, "abiList"    # [Ljava/lang/String;
    .param p2, "nativeLibFileName"    # Ljava/lang/String;

    .prologue
    .line 357
    :try_start_0
    new-instance v7, Ljava/util/zip/ZipFile;

    invoke-direct {v7, p0}, Ljava/util/zip/ZipFile;-><init>(Ljava/lang/String;)V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_5} :catch_5a

    .local v7, "z":Ljava/util/zip/ZipFile;
    const/4 v9, 0x0

    .line 358
    move-object v1, p1

    .local v1, "arr$":[Ljava/lang/String;
    :try_start_7
    array-length v5, v1

    .local v5, "len$":I
    const/4 v4, 0x0

    .local v4, "i$":I
    :goto_9
    if-ge v4, v5, :cond_68

    aget-object v0, v1, v4

    .line 359
    .local v0, "abi":Ljava/lang/String;
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "lib/"

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v10, "/"

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 360
    .local v3, "entry":Ljava/lang/String;
    invoke-virtual {v7, v3}, Ljava/util/zip/ZipFile;->getEntry(Ljava/lang/String;)Ljava/util/zip/ZipEntry;

    move-result-object v2

    .line 361
    .local v2, "e":Ljava/util/zip/ZipEntry;
    if-eqz v2, :cond_65

    invoke-virtual {v2}, Ljava/util/zip/ZipEntry;->getMethod()I

    move-result v8

    if-nez v8, :cond_65

    .line 363
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v10, "!/"

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_4c
    .catch Ljava/lang/Throwable; {:try_start_7 .. :try_end_4c} :catch_7b
    .catchall {:try_start_7 .. :try_end_4c} :catchall_92

    move-result-object v8

    .line 366
    if-eqz v7, :cond_54

    if-eqz v9, :cond_61

    :try_start_51
    invoke-virtual {v7}, Ljava/util/zip/ZipFile;->close()V
    :try_end_54
    .catch Ljava/lang/Throwable; {:try_start_51 .. :try_end_54} :catch_55
    .catch Ljava/io/IOException; {:try_start_51 .. :try_end_54} :catch_5a

    .line 369
    .end local v0    # "abi":Ljava/lang/String;
    .end local v2    # "e":Ljava/util/zip/ZipEntry;
    .end local v3    # "entry":Ljava/lang/String;
    :cond_54
    :goto_54
    return-object v8

    .line 366
    .restart local v0    # "abi":Ljava/lang/String;
    .restart local v2    # "e":Ljava/util/zip/ZipEntry;
    .restart local v3    # "entry":Ljava/lang/String;
    :catch_55
    move-exception v6

    .local v6, "x2":Ljava/lang/Throwable;
    :try_start_56
    invoke-virtual {v9, v6}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V
    :try_end_59
    .catch Ljava/io/IOException; {:try_start_56 .. :try_end_59} :catch_5a

    goto :goto_54

    .end local v0    # "abi":Ljava/lang/String;
    .end local v1    # "arr$":[Ljava/lang/String;
    .end local v2    # "e":Ljava/util/zip/ZipEntry;
    .end local v3    # "entry":Ljava/lang/String;
    .end local v4    # "i$":I
    .end local v5    # "len$":I
    .end local v6    # "x2":Ljava/lang/Throwable;
    .end local v7    # "z":Ljava/util/zip/ZipFile;
    :catch_5a
    move-exception v2

    .line 367
    .local v2, "e":Ljava/io/IOException;
    new-instance v8, Landroid/webkit/WebViewFactory$MissingWebViewPackageException;

    invoke-direct {v8, v2}, Landroid/webkit/WebViewFactory$MissingWebViewPackageException;-><init>(Ljava/lang/Exception;)V

    throw v8

    .line 366
    .restart local v0    # "abi":Ljava/lang/String;
    .restart local v1    # "arr$":[Ljava/lang/String;
    .local v2, "e":Ljava/util/zip/ZipEntry;
    .restart local v3    # "entry":Ljava/lang/String;
    .restart local v4    # "i$":I
    .restart local v5    # "len$":I
    .restart local v7    # "z":Ljava/util/zip/ZipFile;
    :cond_61
    :try_start_61
    invoke-virtual {v7}, Ljava/util/zip/ZipFile;->close()V
    :try_end_64
    .catch Ljava/io/IOException; {:try_start_61 .. :try_end_64} :catch_5a

    goto :goto_54

    .line 358
    :cond_65
    add-int/lit8 v4, v4, 0x1

    goto :goto_9

    .line 366
    .end local v0    # "abi":Ljava/lang/String;
    .end local v2    # "e":Ljava/util/zip/ZipEntry;
    .end local v3    # "entry":Ljava/lang/String;
    :cond_68
    if-eqz v7, :cond_6f

    if-eqz v9, :cond_77

    :try_start_6c
    invoke-virtual {v7}, Ljava/util/zip/ZipFile;->close()V
    :try_end_6f
    .catch Ljava/lang/Throwable; {:try_start_6c .. :try_end_6f} :catch_72
    .catch Ljava/io/IOException; {:try_start_6c .. :try_end_6f} :catch_5a

    .line 369
    :cond_6f
    :goto_6f
    const-string v8, ""

    goto :goto_54

    .line 366
    :catch_72
    move-exception v6

    .restart local v6    # "x2":Ljava/lang/Throwable;
    :try_start_73
    invoke-virtual {v9, v6}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    goto :goto_6f

    .end local v6    # "x2":Ljava/lang/Throwable;
    :cond_77
    invoke-virtual {v7}, Ljava/util/zip/ZipFile;->close()V
    :try_end_7a
    .catch Ljava/io/IOException; {:try_start_73 .. :try_end_7a} :catch_5a

    goto :goto_6f

    .line 357
    .end local v4    # "i$":I
    .end local v5    # "len$":I
    :catch_7b
    move-exception v8

    :try_start_7c
    throw v8
    :try_end_7d
    .catchall {:try_start_7c .. :try_end_7d} :catchall_7d

    .line 366
    :catchall_7d
    move-exception v9

    move-object v11, v9

    move-object v9, v8

    move-object v8, v11

    :goto_81
    if-eqz v7, :cond_88

    if-eqz v9, :cond_8e

    :try_start_85
    invoke-virtual {v7}, Ljava/util/zip/ZipFile;->close()V
    :try_end_88
    .catch Ljava/lang/Throwable; {:try_start_85 .. :try_end_88} :catch_89
    .catch Ljava/io/IOException; {:try_start_85 .. :try_end_88} :catch_5a

    :cond_88
    :goto_88
    :try_start_88
    throw v8

    :catch_89
    move-exception v6

    .restart local v6    # "x2":Ljava/lang/Throwable;
    invoke-virtual {v9, v6}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    goto :goto_88

    .end local v6    # "x2":Ljava/lang/Throwable;
    :cond_8e
    invoke-virtual {v7}, Ljava/util/zip/ZipFile;->close()V
    :try_end_91
    .catch Ljava/io/IOException; {:try_start_88 .. :try_end_91} :catch_5a

    goto :goto_88

    :catchall_92
    move-exception v8

    goto :goto_81
.end method

.method public static getLoadedPackageInfo()Landroid/content/pm/PackageInfo;
    .registers 1

    .prologue
    .line 129
    sget-object v0, sPackageInfo:Landroid/content/pm/PackageInfo;

    return-object v0
.end method

.method static getProvider()Landroid/webkit/WebViewFactoryProvider;
    .registers 9

    .prologue
    .line 145
    sget-object v5, sProviderLock:Ljava/lang/Object;

    monitor-enter v5

    .line 148
    :try_start_3
    sget-object v4, sProviderInstance:Landroid/webkit/WebViewFactoryProvider;

    if-eqz v4, :cond_b

    sget-object v4, sProviderInstance:Landroid/webkit/WebViewFactoryProvider;

    monitor-exit v5

    .line 175
    .local v1, "oldPolicy":Landroid/os/StrictMode$ThreadPolicy;
    .local v2, "providerClass":Ljava/lang/Class;, "Ljava/lang/Class<Landroid/webkit/WebViewFactoryProvider;>;"
    .local v3, "uid":I
    :goto_a
    return-object v4

    .line 150
    .end local v1    # "oldPolicy":Landroid/os/StrictMode$ThreadPolicy;
    .end local v2    # "providerClass":Ljava/lang/Class;, "Ljava/lang/Class<Landroid/webkit/WebViewFactoryProvider;>;"
    .end local v3    # "uid":I
    :cond_b
    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v3

    .line 151
    .restart local v3    # "uid":I
    if-eqz v3, :cond_15

    const/16 v4, 0x3e8

    if-ne v3, v4, :cond_20

    .line 152
    :cond_15
    new-instance v4, Ljava/lang/UnsupportedOperationException;

    const-string v6, "For security reasons, WebView is not allowed in privileged processes"

    invoke-direct {v4, v6}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 177
    :catchall_1d
    move-exception v4

    monitor-exit v5
    :try_end_1f
    .catchall {:try_start_3 .. :try_end_1f} :catchall_1d

    throw v4

    .line 156
    :cond_20
    const-wide/16 v6, 0x10

    :try_start_22
    const-string v4, "WebViewFactory.getProvider()"

    invoke-static {v6, v7, v4}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V
    :try_end_27
    .catchall {:try_start_22 .. :try_end_27} :catchall_1d

    .line 158
    :try_start_27
    invoke-static {}, getProviderClass()Ljava/lang/Class;

    move-result-object v2

    .line 160
    .restart local v2    # "providerClass":Ljava/lang/Class;, "Ljava/lang/Class<Landroid/webkit/WebViewFactoryProvider;>;"
    invoke-static {}, Landroid/os/StrictMode;->allowThreadDiskReads()Landroid/os/StrictMode$ThreadPolicy;

    move-result-object v1

    .line 161
    .restart local v1    # "oldPolicy":Landroid/os/StrictMode$ThreadPolicy;
    const-wide/16 v6, 0x10

    const-string/jumbo v4, "providerClass.newInstance()"

    invoke-static {v6, v7, v4}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V
    :try_end_37
    .catchall {:try_start_27 .. :try_end_37} :catchall_7f

    .line 163
    const/4 v4, 0x1

    :try_start_38
    new-array v4, v4, [Ljava/lang/Class;

    const/4 v6, 0x0

    const-class v7, Landroid/webkit/WebViewDelegate;

    aput-object v7, v4, v6

    invoke-virtual {v2, v4}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v4

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    new-instance v8, Landroid/webkit/WebViewDelegate;

    invoke-direct {v8}, Landroid/webkit/WebViewDelegate;-><init>()V

    aput-object v8, v6, v7

    invoke-virtual {v4, v6}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/webkit/WebViewFactoryProvider;

    sput-object v4, sProviderInstance:Landroid/webkit/WebViewFactoryProvider;

    .line 166
    sget-object v4, sProviderInstance:Landroid/webkit/WebViewFactoryProvider;
    :try_end_58
    .catch Ljava/lang/Exception; {:try_start_38 .. :try_end_58} :catch_67
    .catchall {:try_start_38 .. :try_end_58} :catchall_75

    .line 171
    const-wide/16 v6, 0x10

    :try_start_5a
    invoke-static {v6, v7}, Landroid/os/Trace;->traceEnd(J)V

    .line 172
    invoke-static {v1}, Landroid/os/StrictMode;->setThreadPolicy(Landroid/os/StrictMode$ThreadPolicy;)V
    :try_end_60
    .catchall {:try_start_5a .. :try_end_60} :catchall_7f

    .line 175
    const-wide/16 v6, 0x10

    :try_start_62
    invoke-static {v6, v7}, Landroid/os/Trace;->traceEnd(J)V

    monitor-exit v5
    :try_end_66
    .catchall {:try_start_62 .. :try_end_66} :catchall_1d

    goto :goto_a

    .line 167
    :catch_67
    move-exception v0

    .line 168
    .local v0, "e":Ljava/lang/Exception;
    :try_start_68
    const-string v4, "WebViewFactory"

    const-string v6, "error instantiating provider"

    invoke-static {v4, v6, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 169
    new-instance v4, Landroid/util/AndroidRuntimeException;

    invoke-direct {v4, v0}, Landroid/util/AndroidRuntimeException;-><init>(Ljava/lang/Exception;)V

    throw v4
    :try_end_75
    .catchall {:try_start_68 .. :try_end_75} :catchall_75

    .line 171
    .end local v0    # "e":Ljava/lang/Exception;
    :catchall_75
    move-exception v4

    const-wide/16 v6, 0x10

    :try_start_78
    invoke-static {v6, v7}, Landroid/os/Trace;->traceEnd(J)V

    .line 172
    invoke-static {v1}, Landroid/os/StrictMode;->setThreadPolicy(Landroid/os/StrictMode$ThreadPolicy;)V

    throw v4
    :try_end_7f
    .catchall {:try_start_78 .. :try_end_7f} :catchall_7f

    .line 175
    .end local v1    # "oldPolicy":Landroid/os/StrictMode$ThreadPolicy;
    .end local v2    # "providerClass":Ljava/lang/Class;, "Ljava/lang/Class<Landroid/webkit/WebViewFactoryProvider;>;"
    :catchall_7f
    move-exception v4

    const-wide/16 v6, 0x10

    :try_start_82
    invoke-static {v6, v7}, Landroid/os/Trace;->traceEnd(J)V

    throw v4
    :try_end_86
    .catchall {:try_start_82 .. :try_end_86} :catchall_1d
.end method

.method private static getProviderClass()Ljava/lang/Class;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class",
            "<",
            "Landroid/webkit/WebViewFactoryProvider;",
            ">;"
        }
    .end annotation

    .prologue
    .line 183
    :try_start_0
    invoke-static {}, fetchPackageInfo()Landroid/content/pm/PackageInfo;

    move-result-object v1

    sput-object v1, sPackageInfo:Landroid/content/pm/PackageInfo;

    .line 184
    const-string v1, "WebViewFactory"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Loading "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, sPackageInfo:Landroid/content/pm/PackageInfo;

    iget-object v3, v3, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " version "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, sPackageInfo:Landroid/content/pm/PackageInfo;

    iget-object v3, v3, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " (code "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, sPackageInfo:Landroid/content/pm/PackageInfo;

    iget v3, v3, Landroid/content/pm/PackageInfo;->versionCode:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 187
    const-wide/16 v2, 0x10

    const-string v1, "WebViewFactory.loadNativeLibrary()"

    invoke-static {v2, v3, v1}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 188
    invoke-static {}, loadNativeLibrary()I

    .line 189
    const-wide/16 v2, 0x10

    invoke-static {v2, v3}, Landroid/os/Trace;->traceEnd(J)V

    .line 191
    const-wide/16 v2, 0x10

    const-string v1, "WebViewFactory.getChromiumProviderClass()"

    invoke-static {v2, v3, v1}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V
    :try_end_5a
    .catch Landroid/webkit/WebViewFactory$MissingWebViewPackageException; {:try_start_0 .. :try_end_5a} :catch_79

    .line 193
    :try_start_5a
    invoke-static {}, getChromiumProviderClass()Ljava/lang/Class;
    :try_end_5d
    .catch Ljava/lang/ClassNotFoundException; {:try_start_5a .. :try_end_5d} :catch_64
    .catchall {:try_start_5a .. :try_end_5d} :catchall_72

    move-result-object v1

    .line 198
    const-wide/16 v2, 0x10

    :try_start_60
    invoke-static {v2, v3}, Landroid/os/Trace;->traceEnd(J)V
    :try_end_63
    .catch Landroid/webkit/WebViewFactory$MissingWebViewPackageException; {:try_start_60 .. :try_end_63} :catch_79

    .line 206
    .local v0, "e":Landroid/webkit/WebViewFactory$MissingWebViewPackageException;
    :goto_63
    return-object v1

    .line 194
    .end local v0    # "e":Landroid/webkit/WebViewFactory$MissingWebViewPackageException;
    :catch_64
    move-exception v0

    .line 195
    .local v0, "e":Ljava/lang/ClassNotFoundException;
    :try_start_65
    const-string v1, "WebViewFactory"

    const-string v2, "error loading provider"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 196
    new-instance v1, Landroid/util/AndroidRuntimeException;

    invoke-direct {v1, v0}, Landroid/util/AndroidRuntimeException;-><init>(Ljava/lang/Exception;)V

    throw v1
    :try_end_72
    .catchall {:try_start_65 .. :try_end_72} :catchall_72

    .line 198
    :catchall_72
    move-exception v1

    const-wide/16 v2, 0x10

    :try_start_75
    invoke-static {v2, v3}, Landroid/os/Trace;->traceEnd(J)V

    throw v1
    :try_end_79
    .catch Landroid/webkit/WebViewFactory$MissingWebViewPackageException; {:try_start_75 .. :try_end_79} :catch_79

    .line 200
    :catch_79
    move-exception v0

    .line 206
    .local v0, "e":Landroid/webkit/WebViewFactory$MissingWebViewPackageException;
    :try_start_7a
    const-string v1, "com.android.webview.nullwebview.NullWebViewFactoryProvider"

    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;
    :try_end_7f
    .catch Ljava/lang/ClassNotFoundException; {:try_start_7a .. :try_end_7f} :catch_81

    move-result-object v1

    goto :goto_63

    .line 207
    :catch_81
    move-exception v1

    .line 210
    const-string v1, "WebViewFactory"

    const-string v2, "Chromium WebView package does not exist"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 211
    new-instance v1, Landroid/util/AndroidRuntimeException;

    invoke-direct {v1, v0}, Landroid/util/AndroidRuntimeException;-><init>(Ljava/lang/Exception;)V

    throw v1
.end method

.method private static getUpdateService()Landroid/webkit/IWebViewUpdateService;
    .registers 1

    .prologue
    .line 529
    const-string/jumbo v0, "webviewupdate"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/webkit/IWebViewUpdateService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/webkit/IWebViewUpdateService;

    move-result-object v0

    return-object v0
.end method

.method private static getWebViewApplicationInfo()Landroid/content/pm/ApplicationInfo;
    .registers 1

    .prologue
    .line 115
    sget-object v0, sPackageInfo:Landroid/content/pm/PackageInfo;

    if-nez v0, :cond_b

    .line 116
    invoke-static {}, fetchPackageInfo()Landroid/content/pm/PackageInfo;

    move-result-object v0

    iget-object v0, v0, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    .line 118
    :goto_a
    return-object v0

    :cond_b
    sget-object v0, sPackageInfo:Landroid/content/pm/PackageInfo;

    iget-object v0, v0, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    goto :goto_a
.end method

.method private static getWebViewLibrary(Landroid/content/pm/ApplicationInfo;)Ljava/lang/String;
    .registers 3
    .param p0, "ai"    # Landroid/content/pm/ApplicationInfo;

    .prologue
    .line 123
    iget-object v0, p0, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    if-eqz v0, :cond_d

    .line 124
    iget-object v0, p0, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    const-string v1, "com.android.webview.WebViewLibrary"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 125
    :goto_c
    return-object v0

    :cond_d
    const/4 v0, 0x0

    goto :goto_c
.end method

.method private static getWebViewNativeLibraryPaths()[Ljava/lang/String;
    .registers 8

    .prologue
    .line 374
    invoke-static {}, getWebViewApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v1

    .line 375
    .local v1, "ai":Landroid/content/pm/ApplicationInfo;
    invoke-static {v1}, getWebViewLibrary(Landroid/content/pm/ApplicationInfo;)Ljava/lang/String;

    move-result-object v0

    .line 379
    .local v0, "NATIVE_LIB_FILE_NAME":Ljava/lang/String;
    iget-object v6, v1, Landroid/content/pm/ApplicationInfo;->primaryCpuAbi:Ljava/lang/String;

    invoke-static {v6}, Ldalvik/system/VMRuntime;->is64BitAbi(Ljava/lang/String;)Z

    move-result v5

    .line 380
    .local v5, "primaryArchIs64bit":Z
    iget-object v6, v1, Landroid/content/pm/ApplicationInfo;->secondaryCpuAbi:Ljava/lang/String;

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_8b

    .line 382
    if-eqz v5, :cond_86

    .line 384
    iget-object v4, v1, Landroid/content/pm/ApplicationInfo;->nativeLibraryDir:Ljava/lang/String;

    .line 385
    .local v4, "path64":Ljava/lang/String;
    iget-object v3, v1, Landroid/content/pm/ApplicationInfo;->secondaryNativeLibraryDir:Ljava/lang/String;

    .line 403
    .local v3, "path32":Ljava/lang/String;
    :goto_1c
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_4c

    .line 404
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "/"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 405
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 406
    .local v2, "f":Ljava/io/File;
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v6

    if-nez v6, :cond_4c

    .line 407
    iget-object v6, v1, Landroid/content/pm/ApplicationInfo;->sourceDir:Ljava/lang/String;

    sget-object v7, Landroid/os/Build;->SUPPORTED_32_BIT_ABIS:[Ljava/lang/String;

    invoke-static {v6, v7, v0}, getLoadFromApkPath(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 412
    .end local v2    # "f":Ljava/io/File;
    :cond_4c
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_7c

    .line 413
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "/"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 414
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 415
    .restart local v2    # "f":Ljava/io/File;
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v6

    if-nez v6, :cond_7c

    .line 416
    iget-object v6, v1, Landroid/content/pm/ApplicationInfo;->sourceDir:Ljava/lang/String;

    sget-object v7, Landroid/os/Build;->SUPPORTED_64_BIT_ABIS:[Ljava/lang/String;

    invoke-static {v6, v7, v0}, getLoadFromApkPath(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 423
    .end local v2    # "f":Ljava/io/File;
    :cond_7c
    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/String;

    const/4 v7, 0x0

    aput-object v3, v6, v7

    const/4 v7, 0x1

    aput-object v4, v6, v7

    return-object v6

    .line 388
    .end local v3    # "path32":Ljava/lang/String;
    .end local v4    # "path64":Ljava/lang/String;
    :cond_86
    iget-object v4, v1, Landroid/content/pm/ApplicationInfo;->secondaryNativeLibraryDir:Ljava/lang/String;

    .line 389
    .restart local v4    # "path64":Ljava/lang/String;
    iget-object v3, v1, Landroid/content/pm/ApplicationInfo;->nativeLibraryDir:Ljava/lang/String;

    .restart local v3    # "path32":Ljava/lang/String;
    goto :goto_1c

    .line 391
    .end local v3    # "path32":Ljava/lang/String;
    .end local v4    # "path64":Ljava/lang/String;
    :cond_8b
    if-eqz v5, :cond_92

    .line 393
    iget-object v4, v1, Landroid/content/pm/ApplicationInfo;->nativeLibraryDir:Ljava/lang/String;

    .line 394
    .restart local v4    # "path64":Ljava/lang/String;
    const-string v3, ""

    .restart local v3    # "path32":Ljava/lang/String;
    goto :goto_1c

    .line 397
    .end local v3    # "path32":Ljava/lang/String;
    .end local v4    # "path64":Ljava/lang/String;
    :cond_92
    iget-object v3, v1, Landroid/content/pm/ApplicationInfo;->nativeLibraryDir:Ljava/lang/String;

    .line 398
    .restart local v3    # "path32":Ljava/lang/String;
    const-string v4, ""

    .restart local v4    # "path64":Ljava/lang/String;
    goto :goto_1c
.end method

.method public static getWebViewPackageName()Ljava/lang/String;
    .registers 2

    .prologue
    .line 100
    invoke-static {}, Landroid/app/AppGlobals;->getInitialApplication()Landroid/app/Application;

    move-result-object v0

    const v1, 0x104004e

    invoke-virtual {v0, v1}, Landroid/app/Application;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static loadNativeLibrary()I
    .registers 7

    .prologue
    .line 498
    sget-boolean v3, sAddressSpaceReserved:Z

    if-nez v3, :cond_d

    .line 499
    const-string v3, "WebViewFactory"

    const-string v4, "can\'t load with relro file; address space not reserved"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 500
    const/4 v2, 0x2

    .line 524
    :cond_c
    :goto_c
    return v2

    .line 504
    :cond_d
    :try_start_d
    invoke-static {}, getUpdateService()Landroid/webkit/IWebViewUpdateService;

    move-result-object v3

    invoke-static {}, Ldalvik/system/VMRuntime;->getRuntime()Ldalvik/system/VMRuntime;

    move-result-object v4

    invoke-virtual {v4}, Ldalvik/system/VMRuntime;->is64Bit()Z

    move-result v4

    invoke-interface {v3, v4}, Landroid/webkit/IWebViewUpdateService;->waitForRelroCreationCompleted(Z)V
    :try_end_1c
    .catch Landroid/os/RemoteException; {:try_start_d .. :try_end_1c} :catch_42

    .line 511
    :try_start_1c
    invoke-static {}, getWebViewNativeLibraryPaths()[Ljava/lang/String;

    move-result-object v0

    .line 512
    .local v0, "args":[Ljava/lang/String;
    const/4 v3, 0x0

    aget-object v3, v0, v3

    const/4 v4, 0x1

    aget-object v4, v0, v4

    const-string v5, "/data/misc/shared_relro/libwebviewchromium32.relro"

    const-string v6, "/data/misc/shared_relro/libwebviewchromium64.relro"

    invoke-static {v3, v4, v5, v6}, nativeLoadWithRelroFile(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    .line 516
    .local v2, "result":I
    if-eqz v2, :cond_c

    .line 517
    const-string v3, "WebViewFactory"

    const-string v4, "failed to load with relro file, proceeding without"

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_37
    .catch Landroid/webkit/WebViewFactory$MissingWebViewPackageException; {:try_start_1c .. :try_end_37} :catch_38

    goto :goto_c

    .line 522
    .end local v2    # "result":I
    :catch_38
    move-exception v1

    .line 523
    .local v1, "e":Landroid/webkit/WebViewFactory$MissingWebViewPackageException;
    const-string v3, "WebViewFactory"

    const-string v4, "Failed to list WebView package libraries for loadNativeLibrary"

    invoke-static {v3, v4, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 524
    const/4 v2, 0x4

    goto :goto_c

    .line 505
    .end local v0    # "args":[Ljava/lang/String;
    .end local v1    # "e":Landroid/webkit/WebViewFactory$MissingWebViewPackageException;
    :catch_42
    move-exception v1

    .line 506
    .local v1, "e":Landroid/os/RemoteException;
    const-string v3, "WebViewFactory"

    const-string v4, "error waiting for relro creation, proceeding without"

    invoke-static {v3, v4, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 507
    const/4 v2, 0x3

    goto :goto_c
.end method

.method public static loadWebViewNativeLibraryFromPackage(Ljava/lang/String;)I
    .registers 2
    .param p0, "packageName"    # Ljava/lang/String;

    .prologue
    .line 137
    invoke-static {}, fetchPackageInfo()Landroid/content/pm/PackageInfo;

    move-result-object v0

    sput-object v0, sPackageInfo:Landroid/content/pm/PackageInfo;

    .line 138
    if-eqz p0, :cond_17

    sget-object v0, sPackageInfo:Landroid/content/pm/PackageInfo;

    iget-object v0, v0, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_17

    .line 139
    invoke-static {}, loadNativeLibrary()I

    move-result v0

    .line 141
    :goto_16
    return v0

    :cond_17
    const/4 v0, 0x1

    goto :goto_16
.end method

.method private static native nativeCreateRelroFile(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
.end method

.method private static native nativeLoadWithRelroFile(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I
.end method

.method private static native nativeReserveAddressSpace(J)Z
.end method

.method public static onWebViewUpdateInstalled()V
    .registers 21

    .prologue
    .line 300
    const/4 v7, 0x0

    .line 302
    .local v7, "nativeLibs":[Ljava/lang/String;
    :try_start_1
    invoke-static {}, getWebViewNativeLibraryPaths()[Ljava/lang/String;

    move-result-object v7

    .line 303
    if-eqz v7, :cond_c3

    .line 304
    const-wide/16 v8, 0x0

    .line 306
    .local v8, "newVmSize":J
    move-object v2, v7

    .local v2, "arr$":[Ljava/lang/String;
    array-length v6, v2

    .local v6, "len$":I
    const/4 v5, 0x0

    .local v5, "i$":I
    :goto_c
    if-ge v5, v6, :cond_fb

    aget-object v10, v2, v5

    .line 307
    .local v10, "path":Ljava/lang/String;
    if-eqz v10, :cond_18

    invoke-static {v10}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v15

    if-eqz v15, :cond_1b

    .line 306
    :cond_18
    :goto_18
    add-int/lit8 v5, v5, 0x1

    goto :goto_c

    .line 309
    :cond_1b
    new-instance v4, Ljava/io/File;

    invoke-direct {v4, v10}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 310
    .local v4, "f":Ljava/io/File;
    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v15

    if-eqz v15, :cond_31

    .line 311
    invoke-virtual {v4}, Ljava/io/File;->length()J

    move-result-wide v16

    move-wide/from16 v0, v16

    invoke-static {v8, v9, v0, v1}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v8

    .line 312
    goto :goto_18

    .line 314
    :cond_31
    const-string v15, "!/"

    invoke-virtual {v10, v15}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v15

    if-eqz v15, :cond_9d

    .line 315
    const-string v15, "!/"

    invoke-static {v10, v15}, Landroid/text/TextUtils;->split(Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v11

    .line 316
    .local v11, "split":[Ljava/lang/String;
    array-length v15, v11
    :try_end_40
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_40} :catch_b9

    const/16 v16, 0x2

    move/from16 v0, v16

    if-ne v15, v0, :cond_9d

    .line 317
    :try_start_46
    new-instance v14, Ljava/util/zip/ZipFile;

    const/4 v15, 0x0

    aget-object v15, v11, v15

    invoke-direct {v14, v15}, Ljava/util/zip/ZipFile;-><init>(Ljava/lang/String;)V
    :try_end_4e
    .catch Ljava/io/IOException; {:try_start_46 .. :try_end_4e} :catch_78
    .catch Ljava/lang/Throwable; {:try_start_46 .. :try_end_4e} :catch_b9

    .local v14, "z":Ljava/util/zip/ZipFile;
    const/16 v16, 0x0

    .line 318
    const/4 v15, 0x1

    :try_start_51
    aget-object v15, v11, v15

    invoke-virtual {v14, v15}, Ljava/util/zip/ZipFile;->getEntry(Ljava/lang/String;)Ljava/util/zip/ZipEntry;

    move-result-object v3

    .line 319
    .local v3, "e":Ljava/util/zip/ZipEntry;
    if-eqz v3, :cond_cc

    invoke-virtual {v3}, Ljava/util/zip/ZipEntry;->getMethod()I

    move-result v15

    if-nez v15, :cond_cc

    .line 320
    invoke-virtual {v3}, Ljava/util/zip/ZipEntry;->getSize()J

    move-result-wide v18

    move-wide/from16 v0, v18

    invoke-static {v8, v9, v0, v1}, Ljava/lang/Math;->max(JJ)J
    :try_end_68
    .catch Ljava/lang/Throwable; {:try_start_51 .. :try_end_68} :catch_df
    .catchall {:try_start_51 .. :try_end_68} :catchall_12b

    move-result-wide v8

    .line 323
    if-eqz v14, :cond_18

    if-eqz v16, :cond_c7

    :try_start_6d
    invoke-virtual {v14}, Ljava/util/zip/ZipFile;->close()V
    :try_end_70
    .catch Ljava/lang/Throwable; {:try_start_6d .. :try_end_70} :catch_71
    .catch Ljava/io/IOException; {:try_start_6d .. :try_end_70} :catch_78

    goto :goto_18

    :catch_71
    move-exception v13

    .local v13, "x2":Ljava/lang/Throwable;
    :try_start_72
    move-object/from16 v0, v16

    invoke-virtual {v0, v13}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V
    :try_end_77
    .catch Ljava/io/IOException; {:try_start_72 .. :try_end_77} :catch_78
    .catch Ljava/lang/Throwable; {:try_start_72 .. :try_end_77} :catch_b9

    goto :goto_18

    .line 324
    .end local v3    # "e":Ljava/util/zip/ZipEntry;
    .end local v13    # "x2":Ljava/lang/Throwable;
    .end local v14    # "z":Ljava/util/zip/ZipFile;
    :catch_78
    move-exception v3

    .line 325
    .local v3, "e":Ljava/io/IOException;
    :try_start_79
    const-string v15, "WebViewFactory"

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string v17, "error reading APK file "

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    const/16 v17, 0x0

    aget-object v17, v11, v17

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    const-string v17, ", "

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-static {v15, v0, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 329
    .end local v3    # "e":Ljava/io/IOException;
    .end local v11    # "split":[Ljava/lang/String;
    :cond_9d
    :goto_9d
    const-string v15, "WebViewFactory"

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string v17, "error sizing load for "

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-static/range {v15 .. v16}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_b7
    .catch Ljava/lang/Throwable; {:try_start_79 .. :try_end_b7} :catch_b9

    goto/16 :goto_18

    .line 345
    .end local v2    # "arr$":[Ljava/lang/String;
    .end local v4    # "f":Ljava/io/File;
    .end local v5    # "i$":I
    .end local v6    # "len$":I
    .end local v8    # "newVmSize":J
    .end local v10    # "path":Ljava/lang/String;
    :catch_b9
    move-exception v12

    .line 347
    .local v12, "t":Ljava/lang/Throwable;
    const-string v15, "WebViewFactory"

    const-string v16, "error preparing webview native library"

    move-object/from16 v0, v16

    invoke-static {v15, v0, v12}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 349
    .end local v12    # "t":Ljava/lang/Throwable;
    :cond_c3
    :goto_c3
    invoke-static {v7}, prepareWebViewInSystemServer([Ljava/lang/String;)V

    .line 350
    return-void

    .line 323
    .restart local v2    # "arr$":[Ljava/lang/String;
    .local v3, "e":Ljava/util/zip/ZipEntry;
    .restart local v4    # "f":Ljava/io/File;
    .restart local v5    # "i$":I
    .restart local v6    # "len$":I
    .restart local v8    # "newVmSize":J
    .restart local v10    # "path":Ljava/lang/String;
    .restart local v11    # "split":[Ljava/lang/String;
    .restart local v14    # "z":Ljava/util/zip/ZipFile;
    :cond_c7
    :try_start_c7
    invoke-virtual {v14}, Ljava/util/zip/ZipFile;->close()V
    :try_end_ca
    .catch Ljava/io/IOException; {:try_start_c7 .. :try_end_ca} :catch_78
    .catch Ljava/lang/Throwable; {:try_start_c7 .. :try_end_ca} :catch_b9

    goto/16 :goto_18

    :cond_cc
    if-eqz v14, :cond_9d

    if-eqz v16, :cond_db

    :try_start_d0
    invoke-virtual {v14}, Ljava/util/zip/ZipFile;->close()V
    :try_end_d3
    .catch Ljava/lang/Throwable; {:try_start_d0 .. :try_end_d3} :catch_d4
    .catch Ljava/io/IOException; {:try_start_d0 .. :try_end_d3} :catch_78

    goto :goto_9d

    :catch_d4
    move-exception v13

    .restart local v13    # "x2":Ljava/lang/Throwable;
    :try_start_d5
    move-object/from16 v0, v16

    invoke-virtual {v0, v13}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    goto :goto_9d

    .end local v13    # "x2":Ljava/lang/Throwable;
    :cond_db
    invoke-virtual {v14}, Ljava/util/zip/ZipFile;->close()V
    :try_end_de
    .catch Ljava/io/IOException; {:try_start_d5 .. :try_end_de} :catch_78
    .catch Ljava/lang/Throwable; {:try_start_d5 .. :try_end_de} :catch_b9

    goto :goto_9d

    .line 317
    .end local v3    # "e":Ljava/util/zip/ZipEntry;
    :catch_df
    move-exception v15

    :try_start_e0
    throw v15
    :try_end_e1
    .catchall {:try_start_e0 .. :try_end_e1} :catchall_e1

    .line 323
    :catchall_e1
    move-exception v16

    move-object/from16 v20, v16

    move-object/from16 v16, v15

    move-object/from16 v15, v20

    :goto_e8
    if-eqz v14, :cond_ef

    if-eqz v16, :cond_f7

    :try_start_ec
    invoke-virtual {v14}, Ljava/util/zip/ZipFile;->close()V
    :try_end_ef
    .catch Ljava/lang/Throwable; {:try_start_ec .. :try_end_ef} :catch_f0
    .catch Ljava/io/IOException; {:try_start_ec .. :try_end_ef} :catch_78

    :cond_ef
    :goto_ef
    :try_start_ef
    throw v15

    :catch_f0
    move-exception v13

    .restart local v13    # "x2":Ljava/lang/Throwable;
    move-object/from16 v0, v16

    invoke-virtual {v0, v13}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    goto :goto_ef

    .end local v13    # "x2":Ljava/lang/Throwable;
    :cond_f7
    invoke-virtual {v14}, Ljava/util/zip/ZipFile;->close()V
    :try_end_fa
    .catch Ljava/io/IOException; {:try_start_ef .. :try_end_fa} :catch_78
    .catch Ljava/lang/Throwable; {:try_start_ef .. :try_end_fa} :catch_b9

    goto :goto_ef

    .line 340
    .end local v4    # "f":Ljava/io/File;
    .end local v10    # "path":Ljava/lang/String;
    .end local v11    # "split":[Ljava/lang/String;
    .end local v14    # "z":Ljava/util/zip/ZipFile;
    :cond_fb
    const-wide/16 v16, 0x2

    mul-long v16, v16, v8

    const-wide/32 v18, 0x6400000

    :try_start_102
    invoke-static/range {v16 .. v19}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v8

    .line 341
    const-string v15, "WebViewFactory"

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string v17, "Setting new address space to "

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v0, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-static/range {v15 .. v16}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 342
    const-string/jumbo v15, "persist.sys.webview.vmsize"

    invoke-static {v8, v9}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v16

    invoke-static/range {v15 .. v16}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_12a
    .catch Ljava/lang/Throwable; {:try_start_102 .. :try_end_12a} :catch_b9

    goto :goto_c3

    .line 323
    .restart local v4    # "f":Ljava/io/File;
    .restart local v10    # "path":Ljava/lang/String;
    .restart local v11    # "split":[Ljava/lang/String;
    .restart local v14    # "z":Ljava/util/zip/ZipFile;
    :catchall_12b
    move-exception v15

    goto :goto_e8
.end method

.method public static prepareWebViewInSystemServer()V
    .registers 4

    .prologue
    .line 272
    const/4 v0, 0x0

    .line 274
    .local v0, "nativePaths":[Ljava/lang/String;
    :try_start_1
    invoke-static {}, getWebViewNativeLibraryPaths()[Ljava/lang/String;
    :try_end_4
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_4} :catch_9

    move-result-object v0

    .line 279
    :goto_5
    invoke-static {v0}, prepareWebViewInSystemServer([Ljava/lang/String;)V

    .line 280
    return-void

    .line 275
    :catch_9
    move-exception v1

    .line 277
    .local v1, "t":Ljava/lang/Throwable;
    const-string v2, "WebViewFactory"

    const-string v3, "error preparing webview native library"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_5
.end method

.method private static prepareWebViewInSystemServer([Ljava/lang/String;)V
    .registers 2
    .param p0, "nativeLibraryPaths"    # [Ljava/lang/String;

    .prologue
    .line 288
    sget-object v0, Landroid/os/Build;->SUPPORTED_32_BIT_ABIS:[Ljava/lang/String;

    array-length v0, v0

    if-lez v0, :cond_9

    .line 290
    const/4 v0, 0x0

    invoke-static {v0, p0}, createRelroFile(Z[Ljava/lang/String;)V

    .line 293
    :cond_9
    sget-object v0, Landroid/os/Build;->SUPPORTED_64_BIT_ABIS:[Ljava/lang/String;

    array-length v0, v0

    if-lez v0, :cond_12

    .line 295
    const/4 v0, 0x1

    invoke-static {v0, p0}, createRelroFile(Z[Ljava/lang/String;)V

    .line 297
    :cond_12
    return-void
.end method

.method public static prepareWebViewInZygote()V
    .registers 6

    .prologue
    .line 245
    :try_start_0
    const-string/jumbo v3, "webviewchromium_loader"

    invoke-static {v3}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    .line 246
    const-string/jumbo v3, "persist.sys.webview.vmsize"

    const-wide/32 v4, 0x6400000

    invoke-static {v3, v4, v5}, Landroid/os/SystemProperties;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    .line 249
    .local v0, "addressSpaceToReserve":J
    invoke-static {v0, v1}, nativeReserveAddressSpace(J)Z

    move-result v3

    sput-boolean v3, sAddressSpaceReserved:Z

    .line 251
    sget-boolean v3, sAddressSpaceReserved:Z

    if-eqz v3, :cond_1b

    .line 263
    :goto_1a
    return-void

    .line 256
    :cond_1b
    const-string v3, "WebViewFactory"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "reserving "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " bytes of address space failed"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3a
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_3a} :catch_3b

    goto :goto_1a

    .line 259
    :catch_3b
    move-exception v2

    .line 261
    .local v2, "t":Ljava/lang/Throwable;
    const-string v3, "WebViewFactory"

    const-string v4, "error preparing native loader"

    invoke-static {v3, v4, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1a
.end method
