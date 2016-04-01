.class Lmf/javax/xml/datatype/FactoryFinder;
.super Ljava/lang/Object;
.source "FactoryFinder.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmf/javax/xml/datatype/FactoryFinder$ConfigurationError;
    }
.end annotation


# static fields
.field static cacheProps:Ljava/util/Properties;

.field private static debug:Z

.field static volatile firstTime:Z

.field static ss:Lmf/javax/xml/datatype/SecuritySupport;


# direct methods
.method static constructor <clinit>()V
    .registers 6

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 70
    sput-boolean v3, debug:Z

    .line 75
    new-instance v4, Ljava/util/Properties;

    invoke-direct {v4}, Ljava/util/Properties;-><init>()V

    sput-object v4, cacheProps:Ljava/util/Properties;

    .line 81
    sput-boolean v2, firstTime:Z

    .line 87
    new-instance v4, Lmf/javax/xml/datatype/SecuritySupport;

    invoke-direct {v4}, Lmf/javax/xml/datatype/SecuritySupport;-><init>()V

    sput-object v4, ss:Lmf/javax/xml/datatype/SecuritySupport;

    .line 94
    :try_start_14
    sget-object v4, ss:Lmf/javax/xml/datatype/SecuritySupport;

    const-string/jumbo v5, "jaxp.debug"

    invoke-virtual {v4, v5}, Lmf/javax/xml/datatype/SecuritySupport;->getSystemProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 96
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

    .line 101
    :goto_2a
    return-void

    :cond_2b
    move v2, v3

    .line 96
    goto :goto_28

    .line 98
    :catch_2d
    move-exception v0

    .line 99
    .local v0, "se":Ljava/lang/SecurityException;
    sput-boolean v3, debug:Z

    goto :goto_2a
.end method

.method constructor <init>()V
    .registers 1

    .prologue
    .line 65
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static dPrint(Ljava/lang/String;)V
    .registers 4
    .param p0, "msg"    # Ljava/lang/String;

    .prologue
    .line 104
    sget-boolean v0, debug:Z

    if-eqz v0, :cond_18

    .line 105
    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "JAXP: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 107
    :cond_18
    return-void
.end method

.method static find(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;
    .registers 15
    .param p0, "factoryId"    # Ljava/lang/String;
    .param p1, "fallbackClassName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmf/javax/xml/datatype/FactoryFinder$ConfigurationError;
        }
    .end annotation

    .prologue
    const/4 v12, 0x1

    const/4 v11, 0x0

    .line 197
    new-instance v7, Ljava/lang/StringBuilder;

    const-string/jumbo v8, "find factoryId ="

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, dPrint(Ljava/lang/String;)V

    .line 201
    :try_start_15
    sget-object v7, ss:Lmf/javax/xml/datatype/SecuritySupport;

    invoke-virtual {v7, p0}, Lmf/javax/xml/datatype/SecuritySupport;->getSystemProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 202
    .local v6, "systemProp":Ljava/lang/String;
    if-eqz v6, :cond_3f

    .line 203
    new-instance v7, Ljava/lang/StringBuilder;

    const-string/jumbo v8, "found system property, value="

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, dPrint(Ljava/lang/String;)V

    .line 204
    const/4 v7, 0x0

    const/4 v8, 0x1

    invoke-static {v6, v7, v8}, newInstance(Ljava/lang/String;Ljava/lang/ClassLoader;Z)Ljava/lang/Object;
    :try_end_35
    .catch Ljava/lang/SecurityException; {:try_start_15 .. :try_end_35} :catch_37

    move-result-object v4

    .line 250
    .end local v6    # "systemProp":Ljava/lang/String;
    :cond_36
    :goto_36
    return-object v4

    .line 207
    :catch_37
    move-exception v5

    .line 208
    .local v5, "se":Ljava/lang/SecurityException;
    sget-boolean v7, debug:Z

    if-eqz v7, :cond_3f

    invoke-virtual {v5}, Ljava/lang/SecurityException;->printStackTrace()V

    .line 213
    .end local v5    # "se":Ljava/lang/SecurityException;
    :cond_3f
    const/4 v3, 0x0

    .line 214
    .local v3, "factoryClassName":Ljava/lang/String;
    :try_start_40
    sget-boolean v7, firstTime:Z

    if-eqz v7, :cond_a9

    .line 215
    sget-object v8, cacheProps:Ljava/util/Properties;

    monitor-enter v8
    :try_end_47
    .catch Ljava/lang/Exception; {:try_start_40 .. :try_end_47} :catch_cf

    .line 216
    :try_start_47
    sget-boolean v7, firstTime:Z

    if-eqz v7, :cond_a8

    .line 217
    new-instance v7, Ljava/lang/StringBuilder;

    sget-object v9, ss:Lmf/javax/xml/datatype/SecuritySupport;

    const-string/jumbo v10, "java.home"

    invoke-virtual {v9, v10}, Lmf/javax/xml/datatype/SecuritySupport;->getSystemProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    invoke-direct {v7, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v9, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    .line 218
    const-string/jumbo v9, "lib"

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    sget-object v9, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v9, "jaxp.properties"

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    .line 217
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 219
    .local v0, "configFile":Ljava/lang/String;
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 220
    .local v2, "f":Ljava/io/File;
    const/4 v7, 0x0

    sput-boolean v7, firstTime:Z

    .line 221
    sget-object v7, ss:Lmf/javax/xml/datatype/SecuritySupport;

    invoke-virtual {v7, v2}, Lmf/javax/xml/datatype/SecuritySupport;->doesFileExist(Ljava/io/File;)Z

    move-result v7

    if-eqz v7, :cond_a8

    .line 222
    new-instance v7, Ljava/lang/StringBuilder;

    const-string v9, "Read properties file "

    invoke-direct {v7, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, dPrint(Ljava/lang/String;)V

    .line 223
    sget-object v7, cacheProps:Ljava/util/Properties;

    sget-object v9, ss:Lmf/javax/xml/datatype/SecuritySupport;

    invoke-virtual {v9, v2}, Lmf/javax/xml/datatype/SecuritySupport;->getFileInputStream(Ljava/io/File;)Ljava/io/FileInputStream;

    move-result-object v9

    invoke-virtual {v7, v9}, Ljava/util/Properties;->load(Ljava/io/InputStream;)V

    .line 215
    .end local v0    # "configFile":Ljava/lang/String;
    .end local v2    # "f":Ljava/io/File;
    :cond_a8
    monitor-exit v8
    :try_end_a9
    .catchall {:try_start_47 .. :try_end_a9} :catchall_cc

    .line 228
    :cond_a9
    :try_start_a9
    sget-object v7, cacheProps:Ljava/util/Properties;

    invoke-virtual {v7, p0}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 230
    if-eqz v3, :cond_d7

    .line 231
    new-instance v7, Ljava/lang/StringBuilder;

    const-string/jumbo v8, "found in $java.home/jaxp.properties, value="

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, dPrint(Ljava/lang/String;)V

    .line 232
    const/4 v7, 0x0

    const/4 v8, 0x1

    invoke-static {v3, v7, v8}, newInstance(Ljava/lang/String;Ljava/lang/ClassLoader;Z)Ljava/lang/Object;
    :try_end_c9
    .catch Ljava/lang/Exception; {:try_start_a9 .. :try_end_c9} :catch_cf

    move-result-object v4

    goto/16 :goto_36

    .line 215
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

    .line 235
    :catch_cf
    move-exception v1

    .line 236
    .local v1, "ex":Ljava/lang/Exception;
    sget-boolean v7, debug:Z

    if-eqz v7, :cond_d7

    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 240
    .end local v1    # "ex":Ljava/lang/Exception;
    :cond_d7
    invoke-static {p0}, findJarServiceProvider(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    .line 241
    .local v4, "provider":Ljava/lang/Object;
    if-nez v4, :cond_36

    .line 244
    if-nez p1, :cond_fa

    .line 245
    new-instance v7, Lmf/javax/xml/datatype/FactoryFinder$ConfigurationError;

    .line 246
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

    .line 245
    invoke-direct {v7, v8, v11}, Lmf/javax/xml/datatype/FactoryFinder$ConfigurationError;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw v7

    .line 249
    :cond_fa
    new-instance v7, Ljava/lang/StringBuilder;

    const-string/jumbo v8, "loaded from fallback value: "

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, dPrint(Ljava/lang/String;)V

    .line 250
    invoke-static {p1, v11, v12}, newInstance(Ljava/lang/String;Ljava/lang/ClassLoader;Z)Ljava/lang/Object;

    move-result-object v4

    goto/16 :goto_36
.end method

.method private static findJarServiceProvider(Ljava/lang/String;)Ljava/lang/Object;
    .registers 11
    .param p0, "factoryId"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmf/javax/xml/datatype/FactoryFinder$ConfigurationError;
        }
    .end annotation

    .prologue
    const/4 v7, 0x0

    .line 261
    new-instance v8, Ljava/lang/StringBuilder;

    const-string v9, "META-INF/services/"

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 262
    .local v5, "serviceId":Ljava/lang/String;
    const/4 v3, 0x0

    .line 265
    .local v3, "is":Ljava/io/InputStream;
    sget-object v8, ss:Lmf/javax/xml/datatype/SecuritySupport;

    invoke-virtual {v8}, Lmf/javax/xml/datatype/SecuritySupport;->getContextClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    .line 266
    .local v0, "cl":Ljava/lang/ClassLoader;
    if-eqz v0, :cond_30

    .line 267
    sget-object v8, ss:Lmf/javax/xml/datatype/SecuritySupport;

    invoke-virtual {v8, v0, v5}, Lmf/javax/xml/datatype/SecuritySupport;->getResourceAsStream(Ljava/lang/ClassLoader;Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v3

    .line 270
    if-nez v3, :cond_2d

    .line 271
    const-class v8, Lmf/javax/xml/datatype/FactoryFinder;

    invoke-virtual {v8}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    .line 272
    sget-object v8, ss:Lmf/javax/xml/datatype/SecuritySupport;

    invoke-virtual {v8, v0, v5}, Lmf/javax/xml/datatype/SecuritySupport;->getResourceAsStream(Ljava/lang/ClassLoader;Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v3

    .line 280
    :cond_2d
    :goto_2d
    if-nez v3, :cond_3d

    .line 319
    :cond_2f
    :goto_2f
    return-object v7

    .line 276
    :cond_30
    const-class v8, Lmf/javax/xml/datatype/FactoryFinder;

    invoke-virtual {v8}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    .line 277
    sget-object v8, ss:Lmf/javax/xml/datatype/SecuritySupport;

    invoke-virtual {v8, v0, v5}, Lmf/javax/xml/datatype/SecuritySupport;->getResourceAsStream(Ljava/lang/ClassLoader;Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v3

    goto :goto_2d

    .line 285
    :cond_3d
    sget-boolean v8, debug:Z

    if-eqz v8, :cond_5e

    .line 286
    new-instance v8, Ljava/lang/StringBuilder;

    const-string/jumbo v9, "found jar resource="

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " using ClassLoader: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, dPrint(Ljava/lang/String;)V

    .line 291
    :cond_5e
    :try_start_5e
    new-instance v4, Ljava/io/BufferedReader;

    new-instance v8, Ljava/io/InputStreamReader;

    const-string v9, "UTF-8"

    invoke-direct {v8, v3, v9}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/lang/String;)V

    invoke-direct {v4, v8}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_6a
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_5e .. :try_end_6a} :catch_95

    .line 297
    .local v4, "rd":Ljava/io/BufferedReader;
    :goto_6a
    const/4 v2, 0x0

    .line 301
    .local v2, "factoryClassName":Ljava/lang/String;
    :try_start_6b
    invoke-virtual {v4}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v2

    .line 302
    invoke-virtual {v4}, Ljava/io/BufferedReader;->close()V
    :try_end_72
    .catch Ljava/io/IOException; {:try_start_6b .. :try_end_72} :catch_a1

    .line 308
    if-eqz v2, :cond_2f

    const-string v8, ""

    invoke-virtual {v8, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_2f

    .line 309
    new-instance v7, Ljava/lang/StringBuilder;

    const-string/jumbo v8, "found in resource, value="

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, dPrint(Ljava/lang/String;)V

    .line 315
    const/4 v7, 0x0

    invoke-static {v2, v0, v7}, newInstance(Ljava/lang/String;Ljava/lang/ClassLoader;Z)Ljava/lang/Object;

    move-result-object v7

    goto :goto_2f

    .line 293
    .end local v2    # "factoryClassName":Ljava/lang/String;
    .end local v4    # "rd":Ljava/io/BufferedReader;
    :catch_95
    move-exception v1

    .line 294
    .local v1, "e":Ljava/io/UnsupportedEncodingException;
    new-instance v4, Ljava/io/BufferedReader;

    new-instance v8, Ljava/io/InputStreamReader;

    invoke-direct {v8, v3}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v4, v8}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .restart local v4    # "rd":Ljava/io/BufferedReader;
    goto :goto_6a

    .line 303
    .end local v1    # "e":Ljava/io/UnsupportedEncodingException;
    .restart local v2    # "factoryClassName":Ljava/lang/String;
    :catch_a1
    move-exception v6

    .line 305
    .local v6, "x":Ljava/io/IOException;
    goto :goto_2f
.end method

.method private static getProviderClass(Ljava/lang/String;Ljava/lang/ClassLoader;Z)Ljava/lang/Class;
    .registers 6
    .param p0, "className"    # Ljava/lang/String;
    .param p1, "cl"    # Ljava/lang/ClassLoader;
    .param p2, "doFallback"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    .prologue
    .line 122
    if-nez p1, :cond_24

    .line 123
    :try_start_2
    sget-object v1, ss:Lmf/javax/xml/datatype/SecuritySupport;

    invoke-virtual {v1}, Lmf/javax/xml/datatype/SecuritySupport;->getContextClassLoader()Ljava/lang/ClassLoader;

    move-result-object p1

    .line 124
    if-nez p1, :cond_1f

    .line 125
    new-instance v1, Ljava/lang/ClassNotFoundException;

    invoke-direct {v1}, Ljava/lang/ClassNotFoundException;-><init>()V

    throw v1
    :try_end_10
    .catch Ljava/lang/ClassNotFoundException; {:try_start_2 .. :try_end_10} :catch_10

    .line 135
    :catch_10
    move-exception v0

    .line 136
    .local v0, "e1":Ljava/lang/ClassNotFoundException;
    if-eqz p2, :cond_29

    .line 138
    const/4 v1, 0x1

    const-class v2, Lmf/javax/xml/datatype/FactoryFinder;

    invoke-virtual {v2}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v2

    invoke-static {p0, v1, v2}, Ljava/lang/Class;->forName(Ljava/lang/String;ZLjava/lang/ClassLoader;)Ljava/lang/Class;

    move-result-object v1

    .end local v0    # "e1":Ljava/lang/ClassNotFoundException;
    :goto_1e
    return-object v1

    .line 128
    :cond_1f
    :try_start_1f
    invoke-virtual {p1, p0}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    goto :goto_1e

    .line 132
    :cond_24
    invoke-virtual {p1, p0}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;
    :try_end_27
    .catch Ljava/lang/ClassNotFoundException; {:try_start_1f .. :try_end_27} :catch_10

    move-result-object v1

    goto :goto_1e

    .line 141
    .restart local v0    # "e1":Ljava/lang/ClassNotFoundException;
    :cond_29
    throw v0
.end method

.method static newInstance(Ljava/lang/String;Ljava/lang/ClassLoader;Z)Ljava/lang/Object;
    .registers 9
    .param p0, "className"    # Ljava/lang/String;
    .param p1, "cl"    # Ljava/lang/ClassLoader;
    .param p2, "doFallback"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmf/javax/xml/datatype/FactoryFinder$ConfigurationError;
        }
    .end annotation

    .prologue
    .line 163
    :try_start_0
    invoke-static {p0, p1, p2}, getProviderClass(Ljava/lang/String;Ljava/lang/ClassLoader;Z)Ljava/lang/Class;

    move-result-object v1

    .line 164
    .local v1, "providerClass":Ljava/lang/Class;
    invoke-virtual {v1}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v0

    .line 165
    .local v0, "instance":Ljava/lang/Object;
    sget-boolean v3, debug:Z

    if-eqz v3, :cond_29

    .line 166
    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "created new instance of "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 167
    const-string v4, " using ClassLoader: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 166
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, dPrint(Ljava/lang/String;)V
    :try_end_29
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_29} :catch_2a
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_29} :catch_46

    .line 169
    :cond_29
    return-object v0

    .line 171
    .end local v0    # "instance":Ljava/lang/Object;
    .end local v1    # "providerClass":Ljava/lang/Class;
    :catch_2a
    move-exception v2

    .line 172
    .local v2, "x":Ljava/lang/ClassNotFoundException;
    new-instance v3, Lmf/javax/xml/datatype/FactoryFinder$ConfigurationError;

    .line 173
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

    .line 172
    invoke-direct {v3, v4, v2}, Lmf/javax/xml/datatype/FactoryFinder$ConfigurationError;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw v3

    .line 175
    .end local v2    # "x":Ljava/lang/ClassNotFoundException;
    :catch_46
    move-exception v2

    .line 176
    .local v2, "x":Ljava/lang/Exception;
    new-instance v3, Lmf/javax/xml/datatype/FactoryFinder$ConfigurationError;

    .line 177
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

    .line 176
    invoke-direct {v3, v4, v2}, Lmf/javax/xml/datatype/FactoryFinder$ConfigurationError;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw v3
.end method
