.class Lmf/javax/xml/parsers/FactoryFinder;
.super Ljava/lang/Object;
.source "FactoryFinder.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmf/javax/xml/parsers/FactoryFinder$ConfigurationError;
    }
.end annotation


# static fields
.field static cacheProps:Ljava/util/Properties;

.field private static debug:Z

.field static volatile firstTime:Z

.field static ss:Lmf/javax/xml/parsers/SecuritySupport;


# direct methods
.method static constructor <clinit>()V
    .registers 6

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 68
    sput-boolean v3, debug:Z

    .line 73
    new-instance v4, Ljava/util/Properties;

    invoke-direct {v4}, Ljava/util/Properties;-><init>()V

    sput-object v4, cacheProps:Ljava/util/Properties;

    .line 79
    sput-boolean v2, firstTime:Z

    .line 85
    new-instance v4, Lmf/javax/xml/parsers/SecuritySupport;

    invoke-direct {v4}, Lmf/javax/xml/parsers/SecuritySupport;-><init>()V

    sput-object v4, ss:Lmf/javax/xml/parsers/SecuritySupport;

    .line 92
    :try_start_14
    sget-object v4, ss:Lmf/javax/xml/parsers/SecuritySupport;

    const-string/jumbo v5, "jaxp.debug"

    invoke-virtual {v4, v5}, Lmf/javax/xml/parsers/SecuritySupport;->getSystemProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 94
    .local v1, "val":Ljava/lang/String;
    if-eqz v1, :cond_2b

    const-string/jumbo v4, "false"

    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_2b

    :goto_28
    sput-boolean v2, debug:Z
    :try_end_2a
    .catch Ljava/lang/SecurityException; {:try_start_14 .. :try_end_2a} :catch_2d

    .line 99
    :goto_2a
    return-void

    :cond_2b
    move v2, v3

    .line 94
    goto :goto_28

    .line 96
    :catch_2d
    move-exception v0

    .line 97
    .local v0, "se":Ljava/lang/SecurityException;
    sput-boolean v3, debug:Z

    goto :goto_2a
.end method

.method constructor <init>()V
    .registers 1

    .prologue
    .line 63
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static dPrint(Ljava/lang/String;)V
    .registers 4
    .param p0, "msg"    # Ljava/lang/String;

    .prologue
    .line 102
    sget-boolean v0, debug:Z

    if-eqz v0, :cond_18

    .line 103
    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "JAXP: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 105
    :cond_18
    return-void
.end method

.method static find(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;
    .registers 15
    .param p0, "factoryId"    # Ljava/lang/String;
    .param p1, "fallbackClassName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmf/javax/xml/parsers/FactoryFinder$ConfigurationError;
        }
    .end annotation

    .prologue
    const/4 v12, 0x1

    const/4 v11, 0x0

    .line 223
    new-instance v7, Ljava/lang/StringBuilder;

    const-string/jumbo v8, "find factoryId ="

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, dPrint(Ljava/lang/String;)V

    .line 227
    :try_start_15
    sget-object v7, ss:Lmf/javax/xml/parsers/SecuritySupport;

    invoke-virtual {v7, p0}, Lmf/javax/xml/parsers/SecuritySupport;->getSystemProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 228
    .local v6, "systemProp":Ljava/lang/String;
    if-eqz v6, :cond_3f

    .line 229
    new-instance v7, Ljava/lang/StringBuilder;

    const-string/jumbo v8, "found system property, value="

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, dPrint(Ljava/lang/String;)V

    .line 230
    const/4 v7, 0x0

    const/4 v8, 0x1

    invoke-static {v6, v7, v8}, newInstance(Ljava/lang/String;Ljava/lang/ClassLoader;Z)Ljava/lang/Object;
    :try_end_35
    .catch Ljava/lang/SecurityException; {:try_start_15 .. :try_end_35} :catch_37

    move-result-object v4

    .line 276
    .end local v6    # "systemProp":Ljava/lang/String;
    :cond_36
    :goto_36
    return-object v4

    .line 233
    :catch_37
    move-exception v5

    .line 234
    .local v5, "se":Ljava/lang/SecurityException;
    sget-boolean v7, debug:Z

    if-eqz v7, :cond_3f

    invoke-virtual {v5}, Ljava/lang/SecurityException;->printStackTrace()V

    .line 239
    .end local v5    # "se":Ljava/lang/SecurityException;
    :cond_3f
    const/4 v3, 0x0

    .line 240
    .local v3, "factoryClassName":Ljava/lang/String;
    :try_start_40
    sget-boolean v7, firstTime:Z

    if-eqz v7, :cond_a9

    .line 241
    sget-object v8, cacheProps:Ljava/util/Properties;

    monitor-enter v8
    :try_end_47
    .catch Ljava/lang/Exception; {:try_start_40 .. :try_end_47} :catch_cf

    .line 242
    :try_start_47
    sget-boolean v7, firstTime:Z

    if-eqz v7, :cond_a8

    .line 243
    new-instance v7, Ljava/lang/StringBuilder;

    sget-object v9, ss:Lmf/javax/xml/parsers/SecuritySupport;

    const-string/jumbo v10, "java.home"

    invoke-virtual {v9, v10}, Lmf/javax/xml/parsers/SecuritySupport;->getSystemProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    invoke-direct {v7, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v9, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    .line 244
    const-string/jumbo v9, "lib"

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    sget-object v9, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v9, "jaxp.properties"

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    .line 243
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 245
    .local v0, "configFile":Ljava/lang/String;
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 246
    .local v2, "f":Ljava/io/File;
    const/4 v7, 0x0

    sput-boolean v7, firstTime:Z

    .line 247
    sget-object v7, ss:Lmf/javax/xml/parsers/SecuritySupport;

    invoke-virtual {v7, v2}, Lmf/javax/xml/parsers/SecuritySupport;->doesFileExist(Ljava/io/File;)Z

    move-result v7

    if-eqz v7, :cond_a8

    .line 248
    new-instance v7, Ljava/lang/StringBuilder;

    const-string v9, "Read properties file "

    invoke-direct {v7, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, dPrint(Ljava/lang/String;)V

    .line 249
    sget-object v7, cacheProps:Ljava/util/Properties;

    sget-object v9, ss:Lmf/javax/xml/parsers/SecuritySupport;

    invoke-virtual {v9, v2}, Lmf/javax/xml/parsers/SecuritySupport;->getFileInputStream(Ljava/io/File;)Ljava/io/FileInputStream;

    move-result-object v9

    invoke-virtual {v7, v9}, Ljava/util/Properties;->load(Ljava/io/InputStream;)V

    .line 241
    .end local v0    # "configFile":Ljava/lang/String;
    .end local v2    # "f":Ljava/io/File;
    :cond_a8
    monitor-exit v8
    :try_end_a9
    .catchall {:try_start_47 .. :try_end_a9} :catchall_cc

    .line 254
    :cond_a9
    :try_start_a9
    sget-object v7, cacheProps:Ljava/util/Properties;

    invoke-virtual {v7, p0}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 256
    if-eqz v3, :cond_d7

    .line 257
    new-instance v7, Ljava/lang/StringBuilder;

    const-string/jumbo v8, "found in $java.home/jaxp.properties, value="

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, dPrint(Ljava/lang/String;)V

    .line 258
    const/4 v7, 0x0

    const/4 v8, 0x1

    invoke-static {v3, v7, v8}, newInstance(Ljava/lang/String;Ljava/lang/ClassLoader;Z)Ljava/lang/Object;
    :try_end_c9
    .catch Ljava/lang/Exception; {:try_start_a9 .. :try_end_c9} :catch_cf

    move-result-object v4

    goto/16 :goto_36

    .line 241
    :catchall_cc
    move-exception v7

    :try_start_cd
    monitor-exit v8
    :try_end_ce
    .catchall {:try_start_cd .. :try_end_ce} :catchall_cc

    :try_start_ce
    throw v7
    :try_end_cf
    .catch Ljava/lang/Exception; {:try_start_ce .. :try_end_cf} :catch_cf

    .line 261
    :catch_cf
    move-exception v1

    .line 262
    .local v1, "ex":Ljava/lang/Exception;
    sget-boolean v7, debug:Z

    if-eqz v7, :cond_d7

    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 266
    .end local v1    # "ex":Ljava/lang/Exception;
    :cond_d7
    invoke-static {p0}, findJarServiceProvider(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    .line 267
    .local v4, "provider":Ljava/lang/Object;
    if-nez v4, :cond_36

    .line 270
    if-nez p1, :cond_fa

    .line 271
    new-instance v7, Lmf/javax/xml/parsers/FactoryFinder$ConfigurationError;

    .line 272
    new-instance v8, Ljava/lang/StringBuilder;

    const-string v9, "Provider for "

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " cannot be found"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 271
    invoke-direct {v7, v8, v11}, Lmf/javax/xml/parsers/FactoryFinder$ConfigurationError;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw v7

    .line 275
    :cond_fa
    new-instance v7, Ljava/lang/StringBuilder;

    const-string/jumbo v8, "loaded from fallback value: "

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, dPrint(Ljava/lang/String;)V

    .line 276
    invoke-static {p1, v11, v12}, newInstance(Ljava/lang/String;Ljava/lang/ClassLoader;Z)Ljava/lang/Object;

    move-result-object v4

    goto/16 :goto_36
.end method

.method private static findJarServiceProvider(Ljava/lang/String;)Ljava/lang/Object;
    .registers 12
    .param p0, "factoryId"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmf/javax/xml/parsers/FactoryFinder$ConfigurationError;
        }
    .end annotation

    .prologue
    const/4 v8, 0x0

    .line 287
    new-instance v9, Ljava/lang/StringBuilder;

    const-string v10, "META-INF/services/"

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 288
    .local v5, "serviceId":Ljava/lang/String;
    const/4 v3, 0x0

    .line 291
    .local v3, "is":Ljava/io/InputStream;
    sget-object v9, ss:Lmf/javax/xml/parsers/SecuritySupport;

    invoke-virtual {v9}, Lmf/javax/xml/parsers/SecuritySupport;->getContextClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    .line 292
    .local v0, "cl":Ljava/lang/ClassLoader;
    const/4 v6, 0x0

    .line 293
    .local v6, "useBSClsLoader":Z
    if-eqz v0, :cond_32

    .line 294
    sget-object v9, ss:Lmf/javax/xml/parsers/SecuritySupport;

    invoke-virtual {v9, v0, v5}, Lmf/javax/xml/parsers/SecuritySupport;->getResourceAsStream(Ljava/lang/ClassLoader;Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v3

    .line 297
    if-nez v3, :cond_2f

    .line 298
    const-class v9, Lmf/javax/xml/parsers/FactoryFinder;

    invoke-virtual {v9}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    .line 299
    sget-object v9, ss:Lmf/javax/xml/parsers/SecuritySupport;

    invoke-virtual {v9, v0, v5}, Lmf/javax/xml/parsers/SecuritySupport;->getResourceAsStream(Ljava/lang/ClassLoader;Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v3

    .line 300
    const/4 v6, 0x1

    .line 309
    :cond_2f
    :goto_2f
    if-nez v3, :cond_40

    .line 348
    :cond_31
    :goto_31
    return-object v8

    .line 304
    :cond_32
    const-class v9, Lmf/javax/xml/parsers/FactoryFinder;

    invoke-virtual {v9}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    .line 305
    sget-object v9, ss:Lmf/javax/xml/parsers/SecuritySupport;

    invoke-virtual {v9, v0, v5}, Lmf/javax/xml/parsers/SecuritySupport;->getResourceAsStream(Ljava/lang/ClassLoader;Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v3

    .line 306
    const/4 v6, 0x1

    goto :goto_2f

    .line 314
    :cond_40
    sget-boolean v9, debug:Z

    if-eqz v9, :cond_61

    .line 315
    new-instance v9, Ljava/lang/StringBuilder;

    const-string/jumbo v10, "found jar resource="

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " using ClassLoader: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, dPrint(Ljava/lang/String;)V

    .line 320
    :cond_61
    :try_start_61
    new-instance v4, Ljava/io/BufferedReader;

    new-instance v9, Ljava/io/InputStreamReader;

    const-string v10, "UTF-8"

    invoke-direct {v9, v3, v10}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/lang/String;)V

    invoke-direct {v4, v9}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_6d
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_61 .. :try_end_6d} :catch_98

    .line 326
    .local v4, "rd":Ljava/io/BufferedReader;
    :goto_6d
    const/4 v2, 0x0

    .line 330
    .local v2, "factoryClassName":Ljava/lang/String;
    :try_start_6e
    invoke-virtual {v4}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v2

    .line 331
    invoke-virtual {v4}, Ljava/io/BufferedReader;->close()V
    :try_end_75
    .catch Ljava/io/IOException; {:try_start_6e .. :try_end_75} :catch_a4

    .line 337
    if-eqz v2, :cond_31

    const-string v9, ""

    invoke-virtual {v9, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_31

    .line 338
    new-instance v8, Ljava/lang/StringBuilder;

    const-string/jumbo v9, "found in resource, value="

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, dPrint(Ljava/lang/String;)V

    .line 344
    const/4 v8, 0x0

    invoke-static {v2, v0, v8, v6}, newInstance(Ljava/lang/String;Ljava/lang/ClassLoader;ZZ)Ljava/lang/Object;

    move-result-object v8

    goto :goto_31

    .line 322
    .end local v2    # "factoryClassName":Ljava/lang/String;
    .end local v4    # "rd":Ljava/io/BufferedReader;
    :catch_98
    move-exception v1

    .line 323
    .local v1, "e":Ljava/io/UnsupportedEncodingException;
    new-instance v4, Ljava/io/BufferedReader;

    new-instance v9, Ljava/io/InputStreamReader;

    invoke-direct {v9, v3}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v4, v9}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .restart local v4    # "rd":Ljava/io/BufferedReader;
    goto :goto_6d

    .line 332
    .end local v1    # "e":Ljava/io/UnsupportedEncodingException;
    .restart local v2    # "factoryClassName":Ljava/lang/String;
    :catch_a4
    move-exception v7

    .line 334
    .local v7, "x":Ljava/io/IOException;
    goto :goto_31
.end method

.method private static getProviderClass(Ljava/lang/String;Ljava/lang/ClassLoader;ZZ)Ljava/lang/Class;
    .registers 8
    .param p0, "className"    # Ljava/lang/String;
    .param p1, "cl"    # Ljava/lang/ClassLoader;
    .param p2, "doFallback"    # Z
    .param p3, "useBSClsLoader"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x1

    .line 122
    if-nez p1, :cond_32

    .line 123
    if-eqz p3, :cond_11

    .line 124
    const/4 v1, 0x1

    :try_start_6
    const-class v2, Lmf/javax/xml/parsers/FactoryFinder;

    invoke-virtual {v2}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v2

    invoke-static {p0, v1, v2}, Ljava/lang/Class;->forName(Ljava/lang/String;ZLjava/lang/ClassLoader;)Ljava/lang/Class;

    move-result-object v1

    .line 142
    :goto_10
    return-object v1

    .line 126
    :cond_11
    sget-object v1, ss:Lmf/javax/xml/parsers/SecuritySupport;

    invoke-virtual {v1}, Lmf/javax/xml/parsers/SecuritySupport;->getContextClassLoader()Ljava/lang/ClassLoader;

    move-result-object p1

    .line 127
    if-nez p1, :cond_2d

    .line 128
    new-instance v1, Ljava/lang/ClassNotFoundException;

    invoke-direct {v1}, Ljava/lang/ClassNotFoundException;-><init>()V

    throw v1
    :try_end_1f
    .catch Ljava/lang/ClassNotFoundException; {:try_start_6 .. :try_end_1f} :catch_1f

    .line 139
    :catch_1f
    move-exception v0

    .line 140
    .local v0, "e1":Ljava/lang/ClassNotFoundException;
    if-eqz p2, :cond_37

    .line 142
    const-class v1, Lmf/javax/xml/parsers/FactoryFinder;

    invoke-virtual {v1}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    invoke-static {p0, v3, v1}, Ljava/lang/Class;->forName(Ljava/lang/String;ZLjava/lang/ClassLoader;)Ljava/lang/Class;

    move-result-object v1

    goto :goto_10

    .line 131
    .end local v0    # "e1":Ljava/lang/ClassNotFoundException;
    :cond_2d
    :try_start_2d
    invoke-virtual {p1, p0}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    goto :goto_10

    .line 136
    :cond_32
    invoke-virtual {p1, p0}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;
    :try_end_35
    .catch Ljava/lang/ClassNotFoundException; {:try_start_2d .. :try_end_35} :catch_1f

    move-result-object v1

    goto :goto_10

    .line 145
    .restart local v0    # "e1":Ljava/lang/ClassNotFoundException;
    :cond_37
    throw v0
.end method

.method static newInstance(Ljava/lang/String;Ljava/lang/ClassLoader;Z)Ljava/lang/Object;
    .registers 4
    .param p0, "className"    # Ljava/lang/String;
    .param p1, "cl"    # Ljava/lang/ClassLoader;
    .param p2, "doFallback"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmf/javax/xml/parsers/FactoryFinder$ConfigurationError;
        }
    .end annotation

    .prologue
    .line 166
    const/4 v0, 0x0

    invoke-static {p0, p1, p2, v0}, newInstance(Ljava/lang/String;Ljava/lang/ClassLoader;ZZ)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method static newInstance(Ljava/lang/String;Ljava/lang/ClassLoader;ZZ)Ljava/lang/Object;
    .registers 10
    .param p0, "className"    # Ljava/lang/String;
    .param p1, "cl"    # Ljava/lang/ClassLoader;
    .param p2, "doFallback"    # Z
    .param p3, "useBSClsLoader"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmf/javax/xml/parsers/FactoryFinder$ConfigurationError;
        }
    .end annotation

    .prologue
    .line 189
    :try_start_0
    invoke-static {p0, p1, p2, p3}, getProviderClass(Ljava/lang/String;Ljava/lang/ClassLoader;ZZ)Ljava/lang/Class;

    move-result-object v1

    .line 190
    .local v1, "providerClass":Ljava/lang/Class;
    invoke-virtual {v1}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v0

    .line 191
    .local v0, "instance":Ljava/lang/Object;
    sget-boolean v3, debug:Z

    if-eqz v3, :cond_29

    .line 192
    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "created new instance of "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 193
    const-string v4, " using ClassLoader: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 192
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, dPrint(Ljava/lang/String;)V
    :try_end_29
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_29} :catch_2a
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_29} :catch_46

    .line 195
    :cond_29
    return-object v0

    .line 197
    .end local v0    # "instance":Ljava/lang/Object;
    .end local v1    # "providerClass":Ljava/lang/Class;
    :catch_2a
    move-exception v2

    .line 198
    .local v2, "x":Ljava/lang/ClassNotFoundException;
    new-instance v3, Lmf/javax/xml/parsers/FactoryFinder$ConfigurationError;

    .line 199
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "Provider "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " not found"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 198
    invoke-direct {v3, v4, v2}, Lmf/javax/xml/parsers/FactoryFinder$ConfigurationError;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw v3

    .line 201
    .end local v2    # "x":Ljava/lang/ClassNotFoundException;
    :catch_46
    move-exception v2

    .line 202
    .local v2, "x":Ljava/lang/Exception;
    new-instance v3, Lmf/javax/xml/parsers/FactoryFinder$ConfigurationError;

    .line 203
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "Provider "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " could not be instantiated: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 202
    invoke-direct {v3, v4, v2}, Lmf/javax/xml/parsers/FactoryFinder$ConfigurationError;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw v3
.end method
