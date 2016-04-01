.class Lmf/javax/xml/validation/SchemaFactoryFinder;
.super Ljava/lang/Object;
.source "SchemaFactoryFinder.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmf/javax/xml/validation/SchemaFactoryFinder$SingleIterator;
    }
.end annotation


# static fields
.field private static final SERVICE_CLASS:Ljava/lang/Class;

.field private static final SERVICE_ID:Ljava/lang/String;

.field private static cacheProps:Ljava/util/Properties;

.field private static debug:Z

.field private static volatile firstTime:Z

.field private static ss:Lmf/javax/xml/validation/SecuritySupport;


# instance fields
.field private final classLoader:Ljava/lang/ClassLoader;


# direct methods
.method static constructor <clinit>()V
    .registers 5

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 71
    sput-boolean v2, debug:Z

    .line 75
    new-instance v3, Lmf/javax/xml/validation/SecuritySupport;

    invoke-direct {v3}, Lmf/javax/xml/validation/SecuritySupport;-><init>()V

    sput-object v3, ss:Lmf/javax/xml/validation/SecuritySupport;

    .line 79
    new-instance v3, Ljava/util/Properties;

    invoke-direct {v3}, Ljava/util/Properties;-><init>()V

    sput-object v3, cacheProps:Ljava/util/Properties;

    .line 84
    sput-boolean v1, firstTime:Z

    .line 89
    :try_start_14
    sget-object v3, ss:Lmf/javax/xml/validation/SecuritySupport;

    const-string/jumbo v4, "jaxp.debug"

    invoke-virtual {v3, v4}, Lmf/javax/xml/validation/SecuritySupport;->getSystemProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_3d

    :goto_1f
    sput-boolean v1, debug:Z
    :try_end_21
    .catch Ljava/lang/Exception; {:try_start_14 .. :try_end_21} :catch_3f

    .line 559
    .local v0, "_":Ljava/lang/Exception;
    :goto_21
    const-class v1, Lmf/javax/xml/validation/SchemaFactory;

    sput-object v1, SERVICE_CLASS:Ljava/lang/Class;

    .line 560
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "META-INF/services/"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v2, SERVICE_CLASS:Ljava/lang/Class;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    sput-object v1, SERVICE_ID:Ljava/lang/String;

    return-void

    .end local v0    # "_":Ljava/lang/Exception;
    :cond_3d
    move v1, v2

    .line 89
    goto :goto_1f

    .line 90
    :catch_3f
    move-exception v0

    .line 91
    .restart local v0    # "_":Ljava/lang/Exception;
    sput-boolean v2, debug:Z

    goto :goto_21
.end method

.method public constructor <init>(Ljava/lang/ClassLoader;)V
    .registers 3
    .param p1, "loader"    # Ljava/lang/ClassLoader;

    .prologue
    .line 122
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 123
    iput-object p1, p0, classLoader:Ljava/lang/ClassLoader;

    .line 124
    sget-boolean v0, debug:Z

    if-eqz v0, :cond_c

    .line 125
    invoke-direct {p0}, debugDisplayClassLoader()V

    .line 127
    :cond_c
    return-void
.end method

.method private _newFactory(Ljava/lang/String;)Lmf/javax/xml/validation/SchemaFactory;
    .registers 19
    .param p1, "schemaLanguage"    # Ljava/lang/String;

    .prologue
    .line 181
    new-instance v14, Ljava/lang/StringBuilder;

    sget-object v15, SERVICE_CLASS:Ljava/lang/Class;

    invoke-virtual {v15}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v15

    invoke-static {v15}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v15

    invoke-direct {v14, v15}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v15, ":"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    move-object/from16 v0, p1

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 185
    .local v8, "propertyName":Ljava/lang/String;
    :try_start_1f
    new-instance v14, Ljava/lang/StringBuilder;

    const-string v15, "Looking up system property \'"

    invoke-direct {v14, v15}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v14, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, "\'"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v14}, debugPrintln(Ljava/lang/String;)V

    .line 186
    sget-object v14, ss:Lmf/javax/xml/validation/SecuritySupport;

    invoke-virtual {v14, v8}, Lmf/javax/xml/validation/SecuritySupport;->getSystemProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 187
    .local v9, "r":Ljava/lang/String;
    if-eqz v9, :cond_61

    .line 188
    new-instance v14, Ljava/lang/StringBuilder;

    const-string v15, "The value is \'"

    invoke-direct {v14, v15}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v14, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, "\'"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v14}, debugPrintln(Ljava/lang/String;)V

    .line 189
    const/4 v14, 0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v9, v14}, createInstance(Ljava/lang/String;Z)Lmf/javax/xml/validation/SchemaFactory;

    move-result-object v11

    .line 190
    .local v11, "sf":Lmf/javax/xml/validation/SchemaFactory;
    if-eqz v11, :cond_66

    .line 281
    .end local v9    # "r":Ljava/lang/String;
    .end local v11    # "sf":Lmf/javax/xml/validation/SchemaFactory;
    :cond_60
    :goto_60
    return-object v11

    .line 192
    .restart local v9    # "r":Ljava/lang/String;
    :cond_61
    const-string v14, "The property is undefined."

    invoke-static {v14}, debugPrintln(Ljava/lang/String;)V
    :try_end_66
    .catch Ljava/lang/Throwable; {:try_start_1f .. :try_end_66} :catch_125

    .line 200
    .end local v9    # "r":Ljava/lang/String;
    :cond_66
    :goto_66
    sget-object v14, ss:Lmf/javax/xml/validation/SecuritySupport;

    const-string/jumbo v15, "java.home"

    invoke-virtual {v14, v15}, Lmf/javax/xml/validation/SecuritySupport;->getSystemProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 201
    .local v7, "javah":Ljava/lang/String;
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-static {v7}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v15

    invoke-direct {v14, v15}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v15, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    .line 202
    const-string/jumbo v15, "lib"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    sget-object v15, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string/jumbo v15, "jaxp.properties"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    .line 201
    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 204
    .local v2, "configFile":Ljava/lang/String;
    const/4 v6, 0x0

    .line 208
    .local v6, "factoryClassName":Ljava/lang/String;
    :try_start_97
    sget-boolean v14, firstTime:Z

    if-eqz v14, :cond_d6

    .line 209
    sget-object v15, cacheProps:Ljava/util/Properties;

    monitor-enter v15
    :try_end_9e
    .catch Ljava/lang/Exception; {:try_start_97 .. :try_end_9e} :catch_14b

    .line 210
    :try_start_9e
    sget-boolean v14, firstTime:Z

    if-eqz v14, :cond_d5

    .line 211
    new-instance v5, Ljava/io/File;

    invoke-direct {v5, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 212
    .local v5, "f":Ljava/io/File;
    const/4 v14, 0x0

    sput-boolean v14, firstTime:Z

    .line 213
    sget-object v14, ss:Lmf/javax/xml/validation/SecuritySupport;

    invoke-virtual {v14, v5}, Lmf/javax/xml/validation/SecuritySupport;->doesFileExist(Ljava/io/File;)Z

    move-result v14

    if-eqz v14, :cond_d5

    .line 214
    new-instance v14, Ljava/lang/StringBuilder;

    const-string v16, "Read properties file "

    move-object/from16 v0, v16

    invoke-direct {v14, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v14, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v14}, debugPrintln(Ljava/lang/String;)V

    .line 215
    sget-object v14, cacheProps:Ljava/util/Properties;

    sget-object v16, ss:Lmf/javax/xml/validation/SecuritySupport;

    move-object/from16 v0, v16

    invoke-virtual {v0, v5}, Lmf/javax/xml/validation/SecuritySupport;->getFileInputStream(Ljava/io/File;)Ljava/io/FileInputStream;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v14, v0}, Ljava/util/Properties;->load(Ljava/io/InputStream;)V

    .line 209
    .end local v5    # "f":Ljava/io/File;
    :cond_d5
    monitor-exit v15
    :try_end_d6
    .catchall {:try_start_9e .. :try_end_d6} :catchall_148

    .line 220
    :cond_d6
    :try_start_d6
    sget-object v14, cacheProps:Ljava/util/Properties;

    invoke-virtual {v14, v8}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 221
    new-instance v14, Ljava/lang/StringBuilder;

    const-string/jumbo v15, "found "

    invoke-direct {v14, v15}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v14, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, " in $java.home/jaxp.properties"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v14}, debugPrintln(Ljava/lang/String;)V

    .line 223
    if-eqz v6, :cond_100

    .line 224
    const/4 v14, 0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v6, v14}, createInstance(Ljava/lang/String;Z)Lmf/javax/xml/validation/SchemaFactory;
    :try_end_fd
    .catch Ljava/lang/Exception; {:try_start_d6 .. :try_end_fd} :catch_14b

    move-result-object v11

    .line 225
    .restart local v11    # "sf":Lmf/javax/xml/validation/SchemaFactory;
    if-nez v11, :cond_60

    .line 258
    .end local v11    # "sf":Lmf/javax/xml/validation/SchemaFactory;
    :cond_100
    :goto_100
    invoke-direct/range {p0 .. p0}, createServiceFileIterator()Ljava/util/Iterator;

    move-result-object v12

    .line 259
    .local v12, "sitr":Ljava/util/Iterator;
    :cond_104
    :goto_104
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v14

    if-nez v14, :cond_154

    .line 275
    const-string/jumbo v14, "http://www.w3.org/2001/XMLSchema"

    move-object/from16 v0, p1

    invoke-virtual {v0, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_1a0

    .line 276
    const-string v14, "attempting to use the platform default XML Schema validator"

    invoke-static {v14}, debugPrintln(Ljava/lang/String;)V

    .line 277
    const-string v14, "com.sun.org.apache.xerces.internal.jaxp.validation.XMLSchemaFactory"

    const/4 v15, 0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v14, v15}, createInstance(Ljava/lang/String;Z)Lmf/javax/xml/validation/SchemaFactory;

    move-result-object v11

    goto/16 :goto_60

    .line 193
    .end local v2    # "configFile":Ljava/lang/String;
    .end local v6    # "factoryClassName":Ljava/lang/String;
    .end local v7    # "javah":Ljava/lang/String;
    .end local v12    # "sitr":Ljava/util/Iterator;
    :catch_125
    move-exception v13

    .line 194
    .local v13, "t":Ljava/lang/Throwable;
    sget-boolean v14, debug:Z

    if-eqz v14, :cond_66

    .line 195
    new-instance v14, Ljava/lang/StringBuilder;

    const-string/jumbo v15, "failed to look up system property \'"

    invoke-direct {v14, v15}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v14, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, "\'"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v14}, debugPrintln(Ljava/lang/String;)V

    .line 196
    invoke-virtual {v13}, Ljava/lang/Throwable;->printStackTrace()V

    goto/16 :goto_66

    .line 209
    .end local v13    # "t":Ljava/lang/Throwable;
    .restart local v2    # "configFile":Ljava/lang/String;
    .restart local v6    # "factoryClassName":Ljava/lang/String;
    .restart local v7    # "javah":Ljava/lang/String;
    :catchall_148
    move-exception v14

    :try_start_149
    monitor-exit v15
    :try_end_14a
    .catchall {:try_start_149 .. :try_end_14a} :catchall_148

    :try_start_14a
    throw v14
    :try_end_14b
    .catch Ljava/lang/Exception; {:try_start_14a .. :try_end_14b} :catch_14b

    .line 229
    :catch_14b
    move-exception v4

    .line 230
    .local v4, "ex":Ljava/lang/Exception;
    sget-boolean v14, debug:Z

    if-eqz v14, :cond_100

    .line 231
    invoke-virtual {v4}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_100

    .line 260
    .end local v4    # "ex":Ljava/lang/Exception;
    .restart local v12    # "sitr":Ljava/util/Iterator;
    :cond_154
    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/net/URL;

    .line 261
    .local v10, "resource":Ljava/net/URL;
    new-instance v14, Ljava/lang/StringBuilder;

    const-string/jumbo v15, "looking into "

    invoke-direct {v14, v15}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v14, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v14}, debugPrintln(Ljava/lang/String;)V

    .line 263
    :try_start_16d
    invoke-virtual {v10}, Ljava/net/URL;->toExternalForm()Ljava/lang/String;

    move-result-object v14

    .line 264
    sget-object v15, ss:Lmf/javax/xml/validation/SecuritySupport;

    invoke-virtual {v15, v10}, Lmf/javax/xml/validation/SecuritySupport;->getURLInputStream(Ljava/net/URL;)Ljava/io/InputStream;

    move-result-object v15

    .line 263
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v1, v14, v15}, loadFromService(Ljava/lang/String;Ljava/lang/String;Ljava/io/InputStream;)Lmf/javax/xml/validation/SchemaFactory;
    :try_end_17e
    .catch Ljava/io/IOException; {:try_start_16d .. :try_end_17e} :catch_183

    move-result-object v11

    .line 265
    .restart local v11    # "sf":Lmf/javax/xml/validation/SchemaFactory;
    if-eqz v11, :cond_104

    goto/16 :goto_60

    .line 266
    .end local v11    # "sf":Lmf/javax/xml/validation/SchemaFactory;
    :catch_183
    move-exception v3

    .line 267
    .local v3, "e":Ljava/io/IOException;
    sget-boolean v14, debug:Z

    if-eqz v14, :cond_104

    .line 268
    new-instance v14, Ljava/lang/StringBuilder;

    const-string/jumbo v15, "failed to read "

    invoke-direct {v14, v15}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v14, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v14}, debugPrintln(Ljava/lang/String;)V

    .line 269
    invoke-virtual {v3}, Ljava/io/IOException;->printStackTrace()V

    goto/16 :goto_104

    .line 280
    .end local v3    # "e":Ljava/io/IOException;
    .end local v10    # "resource":Ljava/net/URL;
    :cond_1a0
    const-string v14, "all things were tried, but none was found. bailing out."

    invoke-static {v14}, debugPrintln(Ljava/lang/String;)V

    .line 281
    const/4 v11, 0x0

    goto/16 :goto_60
.end method

.method static synthetic access$0()Lmf/javax/xml/validation/SecuritySupport;
    .registers 1

    .prologue
    .line 75
    sget-object v0, ss:Lmf/javax/xml/validation/SecuritySupport;

    return-object v0
.end method

.method static synthetic access$1()Ljava/lang/String;
    .registers 1

    .prologue
    .line 560
    sget-object v0, SERVICE_ID:Ljava/lang/String;

    return-object v0
.end method

.method private createClass(Ljava/lang/String;)Ljava/lang/Class;
    .registers 5
    .param p1, "className"    # Ljava/lang/String;

    .prologue
    .line 294
    :try_start_0
    iget-object v2, p0, classLoader:Ljava/lang/ClassLoader;

    if-eqz v2, :cond_b

    .line 295
    iget-object v2, p0, classLoader:Ljava/lang/ClassLoader;

    invoke-virtual {v2, p1}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 304
    :goto_a
    return-object v0

    .line 297
    :cond_b
    invoke-static {p1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;
    :try_end_e
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_e} :catch_10

    move-result-object v0

    .local v0, "clazz":Ljava/lang/Class;
    goto :goto_a

    .line 299
    .end local v0    # "clazz":Ljava/lang/Class;
    :catch_10
    move-exception v1

    .line 300
    .local v1, "t":Ljava/lang/Throwable;
    sget-boolean v2, debug:Z

    if-eqz v2, :cond_18

    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 301
    :cond_18
    const/4 v0, 0x0

    goto :goto_a
.end method

.method private createServiceFileIterator()Ljava/util/Iterator;
    .registers 5

    .prologue
    .line 521
    iget-object v1, p0, classLoader:Ljava/lang/ClassLoader;

    if-nez v1, :cond_a

    .line 522
    new-instance v1, Lmf/javax/xml/validation/SchemaFactoryFinder$1;

    invoke-direct {v1, p0}, Lmf/javax/xml/validation/SchemaFactoryFinder$1;-><init>(Lmf/javax/xml/validation/SchemaFactoryFinder;)V

    .line 554
    :goto_9
    return-object v1

    .line 532
    :cond_a
    :try_start_a
    sget-object v1, ss:Lmf/javax/xml/validation/SecuritySupport;

    iget-object v2, p0, classLoader:Ljava/lang/ClassLoader;

    sget-object v3, SERVICE_ID:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Lmf/javax/xml/validation/SecuritySupport;->getResources(Ljava/lang/ClassLoader;Ljava/lang/String;)Ljava/util/Enumeration;

    move-result-object v0

    .line 533
    .local v0, "e":Ljava/util/Enumeration;
    invoke-interface {v0}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v1

    if-nez v1, :cond_35

    .line 534
    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "no "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v2, SERVICE_ID:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " file was found"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, debugPrintln(Ljava/lang/String;)V

    .line 538
    :cond_35
    new-instance v1, Lmf/javax/xml/validation/SchemaFactoryFinder$2;

    invoke-direct {v1, p0, v0}, Lmf/javax/xml/validation/SchemaFactoryFinder$2;-><init>(Lmf/javax/xml/validation/SchemaFactoryFinder;Ljava/util/Enumeration;)V
    :try_end_3a
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_3a} :catch_3b

    goto :goto_9

    .line 551
    .end local v0    # "e":Ljava/util/Enumeration;
    :catch_3b
    move-exception v0

    .line 552
    .local v0, "e":Ljava/io/IOException;
    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "failed to enumerate resources "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v2, SERVICE_ID:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, debugPrintln(Ljava/lang/String;)V

    .line 553
    sget-boolean v1, debug:Z

    if-eqz v1, :cond_58

    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    .line 554
    :cond_58
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    goto :goto_9
.end method

.method private debugDisplayClassLoader()V
    .registers 3

    .prologue
    .line 131
    :try_start_0
    iget-object v0, p0, classLoader:Ljava/lang/ClassLoader;

    sget-object v1, ss:Lmf/javax/xml/validation/SecuritySupport;

    invoke-virtual {v1}, Lmf/javax/xml/validation/SecuritySupport;->getContextClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    if-ne v0, v1, :cond_27

    .line 132
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "using thread context class loader ("

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, classLoader:Ljava/lang/ClassLoader;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ") for search"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, debugPrintln(Ljava/lang/String;)V
    :try_end_25
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_25} :catch_26

    .line 145
    :goto_25
    return-void

    .line 135
    :catch_26
    move-exception v0

    .line 139
    :cond_27
    iget-object v0, p0, classLoader:Ljava/lang/ClassLoader;

    invoke-static {}, Ljava/lang/ClassLoader;->getSystemClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    if-ne v0, v1, :cond_4b

    .line 140
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "using system class loader ("

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, classLoader:Ljava/lang/ClassLoader;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ") for search"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, debugPrintln(Ljava/lang/String;)V

    goto :goto_25

    .line 144
    :cond_4b
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "using class loader ("

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, classLoader:Ljava/lang/ClassLoader;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ") for search"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, debugPrintln(Ljava/lang/String;)V

    goto :goto_25
.end method

.method private static debugPrintln(Ljava/lang/String;)V
    .registers 4
    .param p0, "msg"    # Ljava/lang/String;

    .prologue
    .line 101
    sget-boolean v0, debug:Z

    if-eqz v0, :cond_18

    .line 102
    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "JAXP: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 104
    :cond_18
    return-void
.end method

.method private loadFromProperty(Ljava/lang/String;Ljava/lang/String;Ljava/io/InputStream;)Lmf/javax/xml/validation/SchemaFactory;
    .registers 8
    .param p1, "keyName"    # Ljava/lang/String;
    .param p2, "resourceName"    # Ljava/lang/String;
    .param p3, "in"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 411
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Reading "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, debugPrintln(Ljava/lang/String;)V

    .line 413
    new-instance v1, Ljava/util/Properties;

    invoke-direct {v1}, Ljava/util/Properties;-><init>()V

    .line 414
    .local v1, "props":Ljava/util/Properties;
    invoke-virtual {v1, p3}, Ljava/util/Properties;->load(Ljava/io/InputStream;)V

    .line 415
    invoke-virtual {p3}, Ljava/io/InputStream;->close()V

    .line 416
    invoke-virtual {v1, p1}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 417
    .local v0, "factoryClassName":Ljava/lang/String;
    if-eqz v0, :cond_45

    .line 418
    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "found "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, debugPrintln(Ljava/lang/String;)V

    .line 419
    invoke-virtual {p0, v0}, createInstance(Ljava/lang/String;)Lmf/javax/xml/validation/SchemaFactory;

    move-result-object v2

    .line 422
    :goto_44
    return-object v2

    .line 421
    :cond_45
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v3, " is not in the property file"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, debugPrintln(Ljava/lang/String;)V

    .line 422
    const/4 v2, 0x0

    goto :goto_44
.end method

.method private loadFromService(Ljava/lang/String;Ljava/lang/String;Ljava/io/InputStream;)Lmf/javax/xml/validation/SchemaFactory;
    .registers 20
    .param p1, "schemaLanguage"    # Ljava/lang/String;
    .param p2, "inputName"    # Ljava/lang/String;
    .param p3, "in"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 445
    const/4 v10, 0x0

    .line 446
    .local v10, "schemaFactory":Lmf/javax/xml/validation/SchemaFactory;
    const/4 v14, 0x1

    new-array v12, v14, [Ljava/lang/Class;

    const/4 v14, 0x0

    const-string v15, ""

    invoke-virtual {v15}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v15

    aput-object v15, v12, v14

    .line 447
    .local v12, "stringClassArray":[Ljava/lang/Class;
    const/4 v14, 0x1

    new-array v11, v14, [Ljava/lang/Object;

    const/4 v14, 0x0

    aput-object p1, v11, v14

    .line 448
    .local v11, "schemaLanguageObjectArray":[Ljava/lang/Object;
    const-string/jumbo v8, "isSchemaLanguageSupported"

    .line 450
    .local v8, "isSchemaLanguageSupportedMethod":Ljava/lang/String;
    new-instance v14, Ljava/lang/StringBuilder;

    const-string v15, "Reading "

    invoke-direct {v14, v15}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p2

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v14}, debugPrintln(Ljava/lang/String;)V

    .line 453
    new-instance v4, Ljava/io/BufferedReader;

    new-instance v14, Ljava/io/InputStreamReader;

    move-object/from16 v0, p3

    invoke-direct {v14, v0}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v4, v14}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 454
    .local v4, "configFile":Ljava/io/BufferedReader;
    const/4 v9, 0x0

    .line 455
    .local v9, "line":Ljava/lang/String;
    :cond_37
    :goto_37
    invoke-virtual {v4}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v9

    if-nez v9, :cond_41

    .line 510
    :cond_3d
    invoke-virtual {v4}, Ljava/io/BufferedReader;->close()V

    .line 513
    return-object v10

    .line 457
    :cond_41
    const-string v14, "#"

    invoke-virtual {v9, v14}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v3

    .line 458
    .local v3, "comment":I
    packed-switch v3, :pswitch_data_8e

    .line 461
    const/4 v14, 0x0

    invoke-virtual {v9, v14, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v9

    .line 465
    :goto_4f
    :pswitch_4f
    invoke-virtual {v9}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v9

    .line 468
    invoke-virtual {v9}, Ljava/lang/String;->length()I

    move-result v14

    if-eqz v14, :cond_37

    .line 473
    move-object/from16 v0, p0

    invoke-direct {v0, v9}, createClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    .line 474
    .local v2, "clazz":Ljava/lang/Class;
    if-eqz v2, :cond_37

    .line 480
    :try_start_61
    invoke-virtual {v2}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v10

    .end local v10    # "schemaFactory":Lmf/javax/xml/validation/SchemaFactory;
    check-cast v10, Lmf/javax/xml/validation/SchemaFactory;
    :try_end_67
    .catch Ljava/lang/ClassCastException; {:try_start_61 .. :try_end_67} :catch_7f
    .catch Ljava/lang/InstantiationException; {:try_start_61 .. :try_end_67} :catch_82
    .catch Ljava/lang/IllegalAccessException; {:try_start_61 .. :try_end_67} :catch_85

    .line 494
    .restart local v10    # "schemaFactory":Lmf/javax/xml/validation/SchemaFactory;
    :try_start_67
    const-string/jumbo v14, "isSchemaLanguageSupported"

    invoke-virtual {v2, v14, v12}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v7

    .line 495
    .local v7, "isSchemaLanguageSupported":Ljava/lang/reflect/Method;
    invoke-virtual {v7, v10, v11}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/Boolean;

    .line 496
    .local v13, "supported":Ljava/lang/Boolean;
    invoke-virtual {v13}, Ljava/lang/Boolean;->booleanValue()Z
    :try_end_77
    .catch Ljava/lang/NoSuchMethodException; {:try_start_67 .. :try_end_77} :catch_8c
    .catch Ljava/lang/IllegalAccessException; {:try_start_67 .. :try_end_77} :catch_8a
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_67 .. :try_end_77} :catch_88

    move-result v14

    if-nez v14, :cond_3d

    .line 506
    .end local v7    # "isSchemaLanguageSupported":Ljava/lang/reflect/Method;
    .end local v13    # "supported":Ljava/lang/Boolean;
    :goto_7a
    const/4 v10, 0x0

    goto :goto_37

    .line 460
    .end local v2    # "clazz":Ljava/lang/Class;
    :pswitch_7c
    const-string v9, ""

    goto :goto_4f

    .line 481
    .end local v10    # "schemaFactory":Lmf/javax/xml/validation/SchemaFactory;
    .restart local v2    # "clazz":Ljava/lang/Class;
    :catch_7f
    move-exception v1

    .line 482
    .local v1, "classCastExcpetion":Ljava/lang/ClassCastException;
    const/4 v10, 0x0

    .line 483
    .restart local v10    # "schemaFactory":Lmf/javax/xml/validation/SchemaFactory;
    goto :goto_37

    .line 484
    .end local v1    # "classCastExcpetion":Ljava/lang/ClassCastException;
    .end local v10    # "schemaFactory":Lmf/javax/xml/validation/SchemaFactory;
    :catch_82
    move-exception v6

    .line 485
    .local v6, "instantiationException":Ljava/lang/InstantiationException;
    const/4 v10, 0x0

    .line 486
    .restart local v10    # "schemaFactory":Lmf/javax/xml/validation/SchemaFactory;
    goto :goto_37

    .line 487
    .end local v6    # "instantiationException":Ljava/lang/InstantiationException;
    .end local v10    # "schemaFactory":Lmf/javax/xml/validation/SchemaFactory;
    :catch_85
    move-exception v5

    .line 488
    .local v5, "illegalAccessException":Ljava/lang/IllegalAccessException;
    const/4 v10, 0x0

    .line 489
    .restart local v10    # "schemaFactory":Lmf/javax/xml/validation/SchemaFactory;
    goto :goto_37

    .line 503
    .end local v5    # "illegalAccessException":Ljava/lang/IllegalAccessException;
    :catch_88
    move-exception v14

    goto :goto_7a

    .line 501
    :catch_8a
    move-exception v14

    goto :goto_7a

    .line 499
    :catch_8c
    move-exception v14

    goto :goto_7a

    .line 458
    :pswitch_data_8e
    .packed-switch -0x1
        :pswitch_4f
        :pswitch_7c
    .end packed-switch
.end method

.method private static newInstanceNoServiceLoader(Ljava/lang/Class;)Ljava/lang/Object;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .prologue
    .local p0, "providerClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const/4 v2, 0x0

    .line 371
    invoke-static {}, Ljava/lang/System;->getSecurityManager()Ljava/lang/SecurityManager;

    move-result-object v3

    if-nez v3, :cond_8

    .line 383
    :goto_7
    return-object v2

    .line 377
    :cond_8
    :try_start_8
    const-string/jumbo v3, "newXMLSchemaFactoryNoServiceLoader"

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Class;

    .line 376
    invoke-virtual {p0, v3, v4}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 379
    .local v0, "creationMethod":Ljava/lang/reflect/Method;
    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-virtual {v0, v3, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_17
    .catch Ljava/lang/NoSuchMethodException; {:try_start_8 .. :try_end_17} :catch_19
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_17} :catch_1b

    move-result-object v2

    goto :goto_7

    .line 380
    .end local v0    # "creationMethod":Ljava/lang/reflect/Method;
    :catch_19
    move-exception v1

    .line 381
    .local v1, "exc":Ljava/lang/NoSuchMethodException;
    goto :goto_7

    .line 382
    .end local v1    # "exc":Ljava/lang/NoSuchMethodException;
    :catch_1b
    move-exception v1

    .line 383
    .local v1, "exc":Ljava/lang/Exception;
    goto :goto_7
.end method

.method private static which(Ljava/lang/Class;)Ljava/lang/String;
    .registers 3
    .param p0, "clazz"    # Ljava/lang/Class;

    .prologue
    .line 565
    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    invoke-static {v0, v1}, which(Ljava/lang/String;Ljava/lang/ClassLoader;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static which(Ljava/lang/String;Ljava/lang/ClassLoader;)Ljava/lang/String;
    .registers 7
    .param p0, "classname"    # Ljava/lang/String;
    .param p1, "loader"    # Ljava/lang/ClassLoader;

    .prologue
    .line 578
    new-instance v2, Ljava/lang/StringBuilder;

    const/16 v3, 0x2e

    const/16 v4, 0x2f

    invoke-virtual {p0, v3, v4}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v3, ".class"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 580
    .local v0, "classnameAsResource":Ljava/lang/String;
    if-nez p1, :cond_21

    invoke-static {}, Ljava/lang/ClassLoader;->getSystemClassLoader()Ljava/lang/ClassLoader;

    move-result-object p1

    .line 583
    :cond_21
    sget-object v2, ss:Lmf/javax/xml/validation/SecuritySupport;

    invoke-virtual {v2, p1, v0}, Lmf/javax/xml/validation/SecuritySupport;->getResourceAsURL(Ljava/lang/ClassLoader;Ljava/lang/String;)Ljava/net/URL;

    move-result-object v1

    .line 584
    .local v1, "it":Ljava/net/URL;
    if-eqz v1, :cond_2e

    .line 585
    invoke-virtual {v1}, Ljava/net/URL;->toString()Ljava/lang/String;

    move-result-object v2

    .line 587
    :goto_2d
    return-object v2

    :cond_2e
    const/4 v2, 0x0

    goto :goto_2d
.end method


# virtual methods
.method createInstance(Ljava/lang/String;)Lmf/javax/xml/validation/SchemaFactory;
    .registers 3
    .param p1, "className"    # Ljava/lang/String;

    .prologue
    .line 317
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, createInstance(Ljava/lang/String;Z)Lmf/javax/xml/validation/SchemaFactory;

    move-result-object v0

    return-object v0
.end method

.method createInstance(Ljava/lang/String;Z)Lmf/javax/xml/validation/SchemaFactory;
    .registers 12
    .param p1, "className"    # Ljava/lang/String;
    .param p2, "useServicesMechanism"    # Z

    .prologue
    const/4 v7, 0x0

    .line 321
    const/4 v5, 0x0

    .line 323
    .local v5, "schemaFactory":Lmf/javax/xml/validation/SchemaFactory;
    new-instance v6, Ljava/lang/StringBuilder;

    const-string/jumbo v8, "createInstance("

    invoke-direct {v6, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v8, ")"

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, debugPrintln(Ljava/lang/String;)V

    .line 326
    invoke-direct {p0, p1}, createClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    .line 327
    .local v2, "clazz":Ljava/lang/Class;
    if-nez v2, :cond_3c

    .line 328
    new-instance v6, Ljava/lang/StringBuilder;

    const-string/jumbo v8, "failed to getClass("

    invoke-direct {v6, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v8, ")"

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, debugPrintln(Ljava/lang/String;)V

    move-object v6, v7

    .line 361
    :goto_3b
    return-object v6

    .line 331
    :cond_3c
    new-instance v6, Ljava/lang/StringBuilder;

    const-string/jumbo v8, "loaded "

    invoke-direct {v6, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v8, " from "

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-static {v2}, which(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, debugPrintln(Ljava/lang/String;)V

    .line 335
    if-nez p2, :cond_67

    .line 336
    :try_start_5f
    invoke-static {v2}, newInstanceNoServiceLoader(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v6

    move-object v0, v6

    check-cast v0, Lmf/javax/xml/validation/SchemaFactory;

    move-object v5, v0

    .line 338
    :cond_67
    if-nez v5, :cond_71

    .line 339
    invoke-virtual {v2}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v6

    move-object v0, v6

    check-cast v0, Lmf/javax/xml/validation/SchemaFactory;

    move-object v5, v0
    :try_end_71
    .catch Ljava/lang/ClassCastException; {:try_start_5f .. :try_end_71} :catch_73
    .catch Ljava/lang/IllegalAccessException; {:try_start_5f .. :try_end_71} :catch_93
    .catch Ljava/lang/InstantiationException; {:try_start_5f .. :try_end_71} :catch_b3

    :cond_71
    move-object v6, v5

    .line 361
    goto :goto_3b

    .line 341
    :catch_73
    move-exception v1

    .line 342
    .local v1, "classCastException":Ljava/lang/ClassCastException;
    new-instance v6, Ljava/lang/StringBuilder;

    const-string v8, "could not instantiate "

    invoke-direct {v6, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, debugPrintln(Ljava/lang/String;)V

    .line 343
    sget-boolean v6, debug:Z

    if-eqz v6, :cond_91

    .line 344
    invoke-virtual {v1}, Ljava/lang/ClassCastException;->printStackTrace()V

    :cond_91
    move-object v6, v7

    .line 346
    goto :goto_3b

    .line 347
    .end local v1    # "classCastException":Ljava/lang/ClassCastException;
    :catch_93
    move-exception v3

    .line 348
    .local v3, "illegalAccessException":Ljava/lang/IllegalAccessException;
    new-instance v6, Ljava/lang/StringBuilder;

    const-string v8, "could not instantiate "

    invoke-direct {v6, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, debugPrintln(Ljava/lang/String;)V

    .line 349
    sget-boolean v6, debug:Z

    if-eqz v6, :cond_b1

    .line 350
    invoke-virtual {v3}, Ljava/lang/IllegalAccessException;->printStackTrace()V

    :cond_b1
    move-object v6, v7

    .line 352
    goto :goto_3b

    .line 353
    .end local v3    # "illegalAccessException":Ljava/lang/IllegalAccessException;
    :catch_b3
    move-exception v4

    .line 354
    .local v4, "instantiationException":Ljava/lang/InstantiationException;
    new-instance v6, Ljava/lang/StringBuilder;

    const-string v8, "could not instantiate "

    invoke-direct {v6, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, debugPrintln(Ljava/lang/String;)V

    .line 355
    sget-boolean v6, debug:Z

    if-eqz v6, :cond_d1

    .line 356
    invoke-virtual {v4}, Ljava/lang/InstantiationException;->printStackTrace()V

    :cond_d1
    move-object v6, v7

    .line 358
    goto/16 :goto_3b
.end method

.method public newFactory(Ljava/lang/String;)Lmf/javax/xml/validation/SchemaFactory;
    .registers 5
    .param p1, "schemaLanguage"    # Ljava/lang/String;

    .prologue
    .line 161
    if-nez p1, :cond_8

    new-instance v1, Ljava/lang/NullPointerException;

    invoke-direct {v1}, Ljava/lang/NullPointerException;-><init>()V

    throw v1

    .line 162
    :cond_8
    invoke-direct {p0, p1}, _newFactory(Ljava/lang/String;)Lmf/javax/xml/validation/SchemaFactory;

    move-result-object v0

    .line 163
    .local v0, "f":Lmf/javax/xml/validation/SchemaFactory;
    if-eqz v0, :cond_34

    .line 164
    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "factory \'"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\' was found for "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, debugPrintln(Ljava/lang/String;)V

    .line 168
    :goto_33
    return-object v0

    .line 166
    :cond_34
    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "unable to find a factory for "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, debugPrintln(Ljava/lang/String;)V

    goto :goto_33
.end method
