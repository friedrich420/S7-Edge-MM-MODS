.class public Lcom/android/server/enterprise/utils/Utils;
.super Ljava/lang/Object;
.source "Utils.java"


# static fields
.field public static final BLACKLIST:Ljava/lang/String; = "BLACKLIST"

.field public static TAG:Ljava/lang/String; = null

.field public static final WHITELIST:Ljava/lang/String; = "WHITELIST"


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 80
    const-string v0, "EnterpriseUtils"

    sput-object v0, TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 76
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static convertListToString(Ljava/util/Collection;Ljava/lang/String;)Ljava/lang/String;
    .registers 3
    .param p1, "token"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            ")",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .line 412
    .local p0, "list":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/lang/String;>;"
    if-eqz p0, :cond_d

    invoke-interface {p0}, Ljava/util/Collection;->size()I

    move-result v0

    if-lez v0, :cond_d

    .line 413
    invoke-static {p1, p0}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v0

    .line 415
    :goto_c
    return-object v0

    :cond_d
    const-string v0, ""

    goto :goto_c
.end method

.method public static convertStringToList(Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;
    .registers 4
    .param p0, "list"    # Ljava/lang/String;
    .param p1, "token"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 405
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_14

    .line 406
    new-instance v0, Ljava/util/ArrayList;

    invoke-virtual {p0, p1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 408
    :goto_13
    return-object v0

    :cond_14
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    goto :goto_13
.end method

.method public static deserializeObject([B)Ljava/lang/Object;
    .registers 6
    .param p0, "b"    # [B

    .prologue
    const/4 v3, 0x0

    .line 359
    :try_start_1
    new-instance v1, Ljava/io/ObjectInputStream;

    new-instance v4, Ljava/io/ByteArrayInputStream;

    invoke-direct {v4, p0}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    invoke-direct {v1, v4}, Ljava/io/ObjectInputStream;-><init>(Ljava/io/InputStream;)V

    .line 361
    .local v1, "in":Ljava/io/ObjectInputStream;
    invoke-virtual {v1}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    move-result-object v2

    .line 362
    .local v2, "object":Ljava/lang/Object;
    invoke-virtual {v1}, Ljava/io/ObjectInputStream;->close()V
    :try_end_12
    .catch Ljava/lang/ClassNotFoundException; {:try_start_1 .. :try_end_12} :catch_13
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_12} :catch_16

    .line 367
    .end local v1    # "in":Ljava/io/ObjectInputStream;
    .end local v2    # "object":Ljava/lang/Object;
    :goto_12
    return-object v2

    .line 364
    :catch_13
    move-exception v0

    .local v0, "e":Ljava/lang/ClassNotFoundException;
    move-object v2, v3

    .line 365
    goto :goto_12

    .line 366
    .end local v0    # "e":Ljava/lang/ClassNotFoundException;
    :catch_16
    move-exception v0

    .local v0, "e":Ljava/io/IOException;
    move-object v2, v3

    .line 367
    goto :goto_12
.end method

.method public static deserializeObjectFromString(Ljava/lang/String;)Ljava/lang/Object;
    .registers 12
    .param p0, "objectString"    # Ljava/lang/String;

    .prologue
    const/4 v5, 0x0

    .line 388
    if-nez p0, :cond_4

    .line 400
    :goto_3
    return-object v5

    .line 391
    :cond_4
    :try_start_4
    new-instance v0, Ljava/io/ByteArrayInputStream;

    const/4 v6, 0x0

    invoke-static {p0, v6}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object v6

    invoke-direct {v0, v6}, Ljava/io/ByteArrayInputStream;-><init>([B)V
    :try_end_e
    .catch Ljava/lang/ClassNotFoundException; {:try_start_4 .. :try_end_e} :catch_57
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_e} :catch_89

    .line 390
    .local v0, "arrayInputStream":Ljava/io/ByteArrayInputStream;
    const/4 v7, 0x0

    .line 392
    :try_start_f
    new-instance v2, Ljava/util/zip/GZIPInputStream;

    invoke-direct {v2, v0}, Ljava/util/zip/GZIPInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_14
    .catch Ljava/lang/Throwable; {:try_start_f .. :try_end_14} :catch_49
    .catchall {:try_start_f .. :try_end_14} :catchall_7d

    .line 390
    .local v2, "gzipInputStream":Ljava/util/zip/GZIPInputStream;
    const/4 v8, 0x0

    .line 393
    :try_start_15
    new-instance v3, Ljava/io/ObjectInputStream;

    invoke-direct {v3, v2}, Ljava/io/ObjectInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_1a
    .catch Ljava/lang/Throwable; {:try_start_15 .. :try_end_1a} :catch_3b
    .catchall {:try_start_15 .. :try_end_1a} :catchall_75

    .line 390
    .local v3, "objectInputStream":Ljava/io/ObjectInputStream;
    const/4 v9, 0x0

    .line 394
    :try_start_1b
    invoke-virtual {v3}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;
    :try_end_1e
    .catch Ljava/lang/Throwable; {:try_start_1b .. :try_end_1e} :catch_a8
    .catchall {:try_start_1b .. :try_end_1e} :catchall_ce

    move-result-object v6

    .line 395
    if-eqz v3, :cond_26

    if-eqz v5, :cond_71

    :try_start_23
    invoke-virtual {v3}, Ljava/io/ObjectInputStream;->close()V
    :try_end_26
    .catch Ljava/lang/Throwable; {:try_start_23 .. :try_end_26} :catch_36
    .catchall {:try_start_23 .. :try_end_26} :catchall_75

    :cond_26
    :goto_26
    if-eqz v2, :cond_2d

    if-eqz v5, :cond_80

    :try_start_2a
    invoke-virtual {v2}, Ljava/util/zip/GZIPInputStream;->close()V
    :try_end_2d
    .catch Ljava/lang/Throwable; {:try_start_2a .. :try_end_2d} :catch_78
    .catchall {:try_start_2a .. :try_end_2d} :catchall_7d

    :cond_2d
    :goto_2d
    if-eqz v0, :cond_34

    if-eqz v5, :cond_a4

    :try_start_31
    invoke-virtual {v0}, Ljava/io/ByteArrayInputStream;->close()V
    :try_end_34
    .catch Ljava/lang/Throwable; {:try_start_31 .. :try_end_34} :catch_84
    .catch Ljava/lang/ClassNotFoundException; {:try_start_31 .. :try_end_34} :catch_57
    .catch Ljava/io/IOException; {:try_start_31 .. :try_end_34} :catch_89

    :cond_34
    :goto_34
    move-object v5, v6

    goto :goto_3

    :catch_36
    move-exception v4

    .local v4, "x2":Ljava/lang/Throwable;
    :try_start_37
    invoke-virtual {v9, v4}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V
    :try_end_3a
    .catch Ljava/lang/Throwable; {:try_start_37 .. :try_end_3a} :catch_3b
    .catchall {:try_start_37 .. :try_end_3a} :catchall_75

    goto :goto_26

    .line 390
    .end local v3    # "objectInputStream":Ljava/io/ObjectInputStream;
    .end local v4    # "x2":Ljava/lang/Throwable;
    :catch_3b
    move-exception v6

    :try_start_3c
    throw v6
    :try_end_3d
    .catchall {:try_start_3c .. :try_end_3d} :catchall_3d

    .line 395
    :catchall_3d
    move-exception v7

    move-object v10, v7

    move-object v7, v6

    move-object v6, v10

    :goto_41
    if-eqz v2, :cond_48

    if-eqz v7, :cond_c1

    :try_start_45
    invoke-virtual {v2}, Ljava/util/zip/GZIPInputStream;->close()V
    :try_end_48
    .catch Ljava/lang/Throwable; {:try_start_45 .. :try_end_48} :catch_bc
    .catchall {:try_start_45 .. :try_end_48} :catchall_7d

    :cond_48
    :goto_48
    :try_start_48
    throw v6
    :try_end_49
    .catch Ljava/lang/Throwable; {:try_start_48 .. :try_end_49} :catch_49
    .catchall {:try_start_48 .. :try_end_49} :catchall_7d

    .line 390
    .end local v2    # "gzipInputStream":Ljava/util/zip/GZIPInputStream;
    :catch_49
    move-exception v6

    :try_start_4a
    throw v6
    :try_end_4b
    .catchall {:try_start_4a .. :try_end_4b} :catchall_4b

    .line 395
    :catchall_4b
    move-exception v7

    move-object v10, v7

    move-object v7, v6

    move-object v6, v10

    :goto_4f
    if-eqz v0, :cond_56

    if-eqz v7, :cond_ca

    :try_start_53
    invoke-virtual {v0}, Ljava/io/ByteArrayInputStream;->close()V
    :try_end_56
    .catch Ljava/lang/Throwable; {:try_start_53 .. :try_end_56} :catch_c5
    .catch Ljava/lang/ClassNotFoundException; {:try_start_53 .. :try_end_56} :catch_57
    .catch Ljava/io/IOException; {:try_start_53 .. :try_end_56} :catch_89

    :cond_56
    :goto_56
    :try_start_56
    throw v6
    :try_end_57
    .catch Ljava/lang/ClassNotFoundException; {:try_start_56 .. :try_end_57} :catch_57
    .catch Ljava/io/IOException; {:try_start_56 .. :try_end_57} :catch_89

    .end local v0    # "arrayInputStream":Ljava/io/ByteArrayInputStream;
    :catch_57
    move-exception v1

    .line 396
    .local v1, "e":Ljava/lang/ClassNotFoundException;
    sget-object v6, TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "ClassNotFoundException to Deserialize Object from String: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_3

    .line 395
    .end local v1    # "e":Ljava/lang/ClassNotFoundException;
    .restart local v0    # "arrayInputStream":Ljava/io/ByteArrayInputStream;
    .restart local v2    # "gzipInputStream":Ljava/util/zip/GZIPInputStream;
    .restart local v3    # "objectInputStream":Ljava/io/ObjectInputStream;
    :cond_71
    :try_start_71
    invoke-virtual {v3}, Ljava/io/ObjectInputStream;->close()V
    :try_end_74
    .catch Ljava/lang/Throwable; {:try_start_71 .. :try_end_74} :catch_3b
    .catchall {:try_start_71 .. :try_end_74} :catchall_75

    goto :goto_26

    .end local v3    # "objectInputStream":Ljava/io/ObjectInputStream;
    :catchall_75
    move-exception v6

    move-object v7, v5

    goto :goto_41

    .restart local v3    # "objectInputStream":Ljava/io/ObjectInputStream;
    :catch_78
    move-exception v4

    .restart local v4    # "x2":Ljava/lang/Throwable;
    :try_start_79
    invoke-virtual {v8, v4}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    goto :goto_2d

    .end local v2    # "gzipInputStream":Ljava/util/zip/GZIPInputStream;
    .end local v3    # "objectInputStream":Ljava/io/ObjectInputStream;
    .end local v4    # "x2":Ljava/lang/Throwable;
    :catchall_7d
    move-exception v6

    move-object v7, v5

    goto :goto_4f

    .restart local v2    # "gzipInputStream":Ljava/util/zip/GZIPInputStream;
    .restart local v3    # "objectInputStream":Ljava/io/ObjectInputStream;
    :cond_80
    invoke-virtual {v2}, Ljava/util/zip/GZIPInputStream;->close()V
    :try_end_83
    .catch Ljava/lang/Throwable; {:try_start_79 .. :try_end_83} :catch_49
    .catchall {:try_start_79 .. :try_end_83} :catchall_7d

    goto :goto_2d

    :catch_84
    move-exception v4

    .restart local v4    # "x2":Ljava/lang/Throwable;
    :try_start_85
    invoke-virtual {v7, v4}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V
    :try_end_88
    .catch Ljava/lang/ClassNotFoundException; {:try_start_85 .. :try_end_88} :catch_57
    .catch Ljava/io/IOException; {:try_start_85 .. :try_end_88} :catch_89

    goto :goto_34

    .line 398
    .end local v0    # "arrayInputStream":Ljava/io/ByteArrayInputStream;
    .end local v2    # "gzipInputStream":Ljava/util/zip/GZIPInputStream;
    .end local v3    # "objectInputStream":Ljava/io/ObjectInputStream;
    .end local v4    # "x2":Ljava/lang/Throwable;
    :catch_89
    move-exception v1

    .line 399
    .local v1, "e":Ljava/io/IOException;
    sget-object v6, TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "IOException to Deserialize Object from String: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_3

    .line 395
    .end local v1    # "e":Ljava/io/IOException;
    .restart local v0    # "arrayInputStream":Ljava/io/ByteArrayInputStream;
    .restart local v2    # "gzipInputStream":Ljava/util/zip/GZIPInputStream;
    .restart local v3    # "objectInputStream":Ljava/io/ObjectInputStream;
    :cond_a4
    :try_start_a4
    invoke-virtual {v0}, Ljava/io/ByteArrayInputStream;->close()V
    :try_end_a7
    .catch Ljava/lang/ClassNotFoundException; {:try_start_a4 .. :try_end_a7} :catch_57
    .catch Ljava/io/IOException; {:try_start_a4 .. :try_end_a7} :catch_89

    goto :goto_34

    .line 390
    :catch_a8
    move-exception v7

    :try_start_a9
    throw v7
    :try_end_aa
    .catchall {:try_start_a9 .. :try_end_aa} :catchall_aa

    .line 395
    :catchall_aa
    move-exception v6

    :goto_ab
    if-eqz v3, :cond_b2

    if-eqz v7, :cond_b8

    :try_start_af
    invoke-virtual {v3}, Ljava/io/ObjectInputStream;->close()V
    :try_end_b2
    .catch Ljava/lang/Throwable; {:try_start_af .. :try_end_b2} :catch_b3
    .catchall {:try_start_af .. :try_end_b2} :catchall_75

    :cond_b2
    :goto_b2
    :try_start_b2
    throw v6

    :catch_b3
    move-exception v4

    .restart local v4    # "x2":Ljava/lang/Throwable;
    invoke-virtual {v7, v4}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    goto :goto_b2

    .end local v4    # "x2":Ljava/lang/Throwable;
    :cond_b8
    invoke-virtual {v3}, Ljava/io/ObjectInputStream;->close()V
    :try_end_bb
    .catch Ljava/lang/Throwable; {:try_start_b2 .. :try_end_bb} :catch_3b
    .catchall {:try_start_b2 .. :try_end_bb} :catchall_75

    goto :goto_b2

    .end local v3    # "objectInputStream":Ljava/io/ObjectInputStream;
    :catch_bc
    move-exception v4

    .restart local v4    # "x2":Ljava/lang/Throwable;
    :try_start_bd
    invoke-virtual {v7, v4}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    goto :goto_48

    .end local v4    # "x2":Ljava/lang/Throwable;
    :cond_c1
    invoke-virtual {v2}, Ljava/util/zip/GZIPInputStream;->close()V
    :try_end_c4
    .catch Ljava/lang/Throwable; {:try_start_bd .. :try_end_c4} :catch_49
    .catchall {:try_start_bd .. :try_end_c4} :catchall_7d

    goto :goto_48

    .end local v2    # "gzipInputStream":Ljava/util/zip/GZIPInputStream;
    :catch_c5
    move-exception v4

    .restart local v4    # "x2":Ljava/lang/Throwable;
    :try_start_c6
    invoke-virtual {v7, v4}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    goto :goto_56

    .end local v4    # "x2":Ljava/lang/Throwable;
    :cond_ca
    invoke-virtual {v0}, Ljava/io/ByteArrayInputStream;->close()V
    :try_end_cd
    .catch Ljava/lang/ClassNotFoundException; {:try_start_c6 .. :try_end_cd} :catch_57
    .catch Ljava/io/IOException; {:try_start_c6 .. :try_end_cd} :catch_89

    goto :goto_56

    .restart local v2    # "gzipInputStream":Ljava/util/zip/GZIPInputStream;
    .restart local v3    # "objectInputStream":Ljava/io/ObjectInputStream;
    :catchall_ce
    move-exception v6

    move-object v7, v5

    goto :goto_ab
.end method

.method private static getNumWildcardSets(Ljava/util/Set;Ljava/util/Set;Ljava/lang/Object;)I
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Set",
            "<TT;>;",
            "Ljava/util/Set",
            "<TT;>;TT;)I"
        }
    .end annotation

    .prologue
    .line 224
    .local p0, "a":Ljava/util/Set;, "Ljava/util/Set<TT;>;"
    .local p1, "b":Ljava/util/Set;, "Ljava/util/Set<TT;>;"
    .local p2, "wildcardEntry":Ljava/lang/Object;, "TT;"
    if-eqz p2, :cond_14

    .line 225
    const/4 v0, 0x0

    .line 226
    .local v0, "count":I
    invoke-interface {p0, p2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_b

    .line 227
    add-int/lit8 v0, v0, 0x1

    .line 228
    :cond_b
    invoke-interface {p1, p2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_13

    .line 229
    add-int/lit8 v0, v0, 0x1

    .line 232
    .end local v0    # "count":I
    :cond_13
    :goto_13
    return v0

    :cond_14
    const/4 v0, 0x0

    goto :goto_13
.end method

.method public static isBlacklisted(Ljava/util/Map;Ljava/lang/Object;Ljava/lang/Object;)Z
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/Set",
            "<TT;>;>;TT;TT;)Z"
        }
    .end annotation

    .prologue
    .local p0, "effective":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/Set<TT;>;>;"
    .local p1, "wildCardEntry":Ljava/lang/Object;, "TT;"
    .local p2, "input":Ljava/lang/Object;, "TT;"
    const/4 v1, 0x0

    .line 322
    const-string v0, "WHITELIST"

    invoke-interface {p0, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Set;

    invoke-interface {v0, p2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_11

    move v0, v1

    .line 328
    :goto_10
    return v0

    .line 324
    :cond_11
    const-string v0, "BLACKLIST"

    invoke-interface {p0, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Set;

    invoke-interface {v0, p2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2d

    const-string v0, "BLACKLIST"

    invoke-interface {p0, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2f

    .line 326
    :cond_2d
    const/4 v0, 0x1

    goto :goto_10

    :cond_2f
    move v0, v1

    .line 328
    goto :goto_10
.end method

.method public static isInteger(Ljava/lang/String;)Z
    .registers 3
    .param p0, "s"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x0

    .line 420
    :try_start_1
    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_4
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_4} :catch_6
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_4} :catch_8

    .line 427
    const/4 v1, 0x1

    :goto_5
    return v1

    .line 421
    :catch_6
    move-exception v0

    .line 422
    .local v0, "e":Ljava/lang/NumberFormatException;
    goto :goto_5

    .line 423
    .end local v0    # "e":Ljava/lang/NumberFormatException;
    :catch_8
    move-exception v0

    .line 424
    .local v0, "e":Ljava/lang/NullPointerException;
    goto :goto_5
.end method

.method private static isNonWildcardSet(Ljava/util/Set;Ljava/lang/Object;)Z
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Set",
            "<TT;>;TT;)Z"
        }
    .end annotation

    .prologue
    .line 236
    .local p0, "a":Ljava/util/Set;, "Ljava/util/Set<TT;>;"
    .local p1, "wildcardEntry":Ljava/lang/Object;, "TT;"
    if-eqz p1, :cond_a

    .line 237
    invoke-interface {p0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_a

    .line 238
    const/4 v0, 0x1

    .line 240
    :goto_9
    return v0

    :cond_a
    const/4 v0, 0x0

    goto :goto_9
.end method

.method public static makeEffectiveLists(Ljava/util/Map;Ljava/util/Map;Ljava/lang/Object;)Ljava/util/Map;
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/Set",
            "<TT;>;>;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/Set",
            "<TT;>;>;TT;)",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/Set",
            "<TT;>;>;"
        }
    .end annotation

    .prologue
    .line 264
    .local p0, "admin1":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/Set<TT;>;>;"
    .local p1, "admin2":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/Set<TT;>;>;"
    .local p2, "wildcardEntry":Ljava/lang/Object;, "TT;"
    const-string v4, "WHITELIST"

    invoke-interface {p0, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Set;

    invoke-interface {v4, p2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_f

    .line 317
    .end local p1    # "admin2":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/Set<TT;>;>;"
    :goto_e
    return-object p1

    .line 266
    .restart local p1    # "admin2":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/Set<TT;>;>;"
    :cond_f
    const-string v4, "WHITELIST"

    invoke-interface {p1, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Set;

    invoke-interface {v4, p2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1f

    move-object p1, p0

    .line 267
    goto :goto_e

    .line 270
    :cond_1f
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 271
    .local v0, "effectiveListMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/util/Set<TT;>;>;"
    const-string v4, "BLACKLIST"

    new-instance v5, Ljava/util/TreeSet;

    invoke-direct {v5}, Ljava/util/TreeSet;-><init>()V

    invoke-virtual {v0, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 272
    const-string v4, "WHITELIST"

    new-instance v5, Ljava/util/TreeSet;

    invoke-direct {v5}, Ljava/util/TreeSet;-><init>()V

    invoke-virtual {v0, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 275
    const-string v4, "BLACKLIST"

    invoke-interface {p0, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Set;

    const-string v5, "WHITELIST"

    invoke-interface {p0, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/Collection;

    invoke-interface {v4, v5}, Ljava/util/Set;->removeAll(Ljava/util/Collection;)Z

    .line 276
    const-string v4, "BLACKLIST"

    invoke-interface {p1, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Set;

    const-string v5, "WHITELIST"

    invoke-interface {p1, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/Collection;

    invoke-interface {v4, v5}, Ljava/util/Set;->removeAll(Ljava/util/Collection;)Z

    .line 278
    const-string v4, "BLACKLIST"

    invoke-virtual {v0, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Set;

    const-string v5, "BLACKLIST"

    invoke-interface {p0, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/Collection;

    invoke-interface {v4, v5}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 279
    const-string v4, "WHITELIST"

    invoke-virtual {v0, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Set;

    const-string v5, "WHITELIST"

    invoke-interface {p0, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/Collection;

    invoke-interface {v4, v5}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 282
    const-string v4, "BLACKLIST"

    invoke-interface {p0, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Set;

    const-string v5, "BLACKLIST"

    invoke-interface {p1, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/Set;

    invoke-static {v4, v5, p2}, getNumWildcardSets(Ljava/util/Set;Ljava/util/Set;Ljava/lang/Object;)I

    move-result v3

    .line 284
    .local v3, "wildcardSetCount":I
    const/4 v4, 0x2

    if-ne v3, v4, :cond_e2

    .line 287
    const-string v4, "WHITELIST"

    invoke-virtual {v0, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Set;

    const-string v5, "WHITELIST"

    invoke-interface {p1, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/Collection;

    invoke-interface {v4, v5}, Ljava/util/Set;->retainAll(Ljava/util/Collection;)Z

    .line 288
    const-string v4, "WHITELIST"

    invoke-interface {p1, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Set;

    invoke-interface {v4}, Ljava/util/Set;->clear()V

    .line 312
    :goto_b9
    const-string v4, "BLACKLIST"

    invoke-virtual {v0, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Set;

    const-string v5, "BLACKLIST"

    invoke-interface {p1, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/Collection;

    invoke-interface {v4, v5}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 315
    const-string v4, "WHITELIST"

    invoke-virtual {v0, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Set;

    const-string v5, "WHITELIST"

    invoke-interface {p1, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/Collection;

    invoke-interface {v4, v5}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    move-object p1, v0

    .line 317
    goto/16 :goto_e

    .line 289
    :cond_e2
    const/4 v4, 0x1

    if-ne v3, v4, :cond_117

    .line 294
    const-string v4, "BLACKLIST"

    invoke-virtual {v0, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Set;

    invoke-static {v4, p2}, isNonWildcardSet(Ljava/util/Set;Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_114

    .line 295
    move-object v1, v0

    .line 296
    .local v1, "nonWildCardListMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/Set<TT;>;>;"
    move-object v2, p1

    .line 301
    .local v2, "wildCardListMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/Set<TT;>;>;"
    :goto_f5
    const-string v4, "WHITELIST"

    invoke-interface {v1, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Set;

    invoke-interface {v4}, Ljava/util/Set;->clear()V

    .line 302
    const-string v4, "WHITELIST"

    invoke-interface {v2, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Set;

    const-string v5, "BLACKLIST"

    invoke-interface {v1, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/Collection;

    invoke-interface {v4, v5}, Ljava/util/Set;->removeAll(Ljava/util/Collection;)Z

    goto :goto_b9

    .line 298
    .end local v1    # "nonWildCardListMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/Set<TT;>;>;"
    .end local v2    # "wildCardListMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/Set<TT;>;>;"
    :cond_114
    move-object v1, p1

    .line 299
    .restart local v1    # "nonWildCardListMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/Set<TT;>;>;"
    move-object v2, v0

    .restart local v2    # "wildCardListMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/Set<TT;>;>;"
    goto :goto_f5

    .line 305
    .end local v1    # "nonWildCardListMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/Set<TT;>;>;"
    .end local v2    # "wildCardListMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/Set<TT;>;>;"
    :cond_117
    const-string v4, "WHITELIST"

    invoke-virtual {v0, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Set;

    const-string v5, "BLACKLIST"

    invoke-interface {p1, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/Collection;

    invoke-interface {v4, v5}, Ljava/util/Set;->removeAll(Ljava/util/Collection;)Z

    .line 308
    const-string v4, "WHITELIST"

    invoke-interface {p1, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Set;

    const-string v5, "BLACKLIST"

    invoke-virtual {v0, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/Collection;

    invoke-interface {v4, v5}, Ljava/util/Set;->removeAll(Ljava/util/Collection;)Z

    goto/16 :goto_b9
.end method

.method public static readPropertyValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 13
    .param p0, "aPropName"    # Ljava/lang/String;
    .param p1, "aFileName"    # Ljava/lang/String;

    .prologue
    const/4 v7, 0x0

    .line 92
    new-instance v3, Ljava/io/File;

    invoke-direct {v3, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 93
    .local v3, "lFile":Ljava/io/File;
    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v8

    if-nez v8, :cond_26

    .line 94
    sget-object v8, TAG:Ljava/lang/String;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "File Not Found : "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    move-object v6, v7

    .line 137
    :cond_25
    :goto_25
    return-object v6

    .line 100
    :cond_26
    :try_start_26
    new-instance v2, Ljava/io/FileReader;

    invoke-direct {v2, p1}, Ljava/io/FileReader;-><init>(Ljava/lang/String;)V
    :try_end_2b
    .catch Ljava/io/FileNotFoundException; {:try_start_26 .. :try_end_2b} :catch_6c

    .line 107
    .local v2, "lFReader":Ljava/io/FileReader;
    new-instance v1, Ljava/io/BufferedReader;

    const/16 v8, 0x200

    invoke-direct {v1, v2, v8}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;I)V

    .line 109
    .local v1, "lBufReader":Ljava/io/BufferedReader;
    const/4 v4, 0x0

    .line 110
    .local v4, "lLine":Ljava/lang/String;
    :cond_33
    :try_start_33
    invoke-virtual {v1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_92

    .line 111
    const-string v8, "="

    invoke-virtual {v4, v8}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v8

    const/4 v9, 0x0

    aget-object v8, v8, v9

    invoke-virtual {v8, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_33

    .line 113
    const-string v8, "="

    invoke-virtual {v4, v8}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    .line 114
    .local v5, "lParsedString":[Ljava/lang/String;
    array-length v8, v5

    const/4 v9, 0x2

    if-ne v8, v9, :cond_8a

    const/4 v8, 0x1

    aget-object v6, v5, v8

    .line 115
    .local v6, "result":Ljava/lang/String;
    :goto_55
    const-string/jumbo v8, "null"

    invoke-virtual {v6, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_5b
    .catch Ljava/lang/Exception; {:try_start_33 .. :try_end_5b} :catch_a5
    .catchall {:try_start_33 .. :try_end_5b} :catchall_bd

    move-result v7

    if-eqz v7, :cond_5f

    .line 116
    const/4 v6, 0x0

    .line 125
    :cond_5f
    if-eqz v2, :cond_65

    .line 126
    :try_start_61
    invoke-virtual {v2}, Ljava/io/FileReader;->close()V

    .line 127
    const/4 v2, 0x0

    .line 129
    :cond_65
    if-eqz v1, :cond_25

    .line 130
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V
    :try_end_6a
    .catch Ljava/io/IOException; {:try_start_61 .. :try_end_6a} :catch_8d

    .line 131
    const/4 v1, 0x0

    goto :goto_25

    .line 101
    .end local v1    # "lBufReader":Ljava/io/BufferedReader;
    .end local v2    # "lFReader":Ljava/io/FileReader;
    .end local v4    # "lLine":Ljava/lang/String;
    .end local v5    # "lParsedString":[Ljava/lang/String;
    .end local v6    # "result":Ljava/lang/String;
    :catch_6c
    move-exception v0

    .line 102
    .local v0, "e":Ljava/io/FileNotFoundException;
    invoke-virtual {v0}, Ljava/io/FileNotFoundException;->printStackTrace()V

    .line 103
    sget-object v8, TAG:Ljava/lang/String;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "File access error "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/android/server/enterprise/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    move-object v6, v7

    .line 104
    goto :goto_25

    .line 114
    .end local v0    # "e":Ljava/io/FileNotFoundException;
    .restart local v1    # "lBufReader":Ljava/io/BufferedReader;
    .restart local v2    # "lFReader":Ljava/io/FileReader;
    .restart local v4    # "lLine":Ljava/lang/String;
    .restart local v5    # "lParsedString":[Ljava/lang/String;
    :cond_8a
    :try_start_8a
    const-string v6, ""
    :try_end_8c
    .catch Ljava/lang/Exception; {:try_start_8a .. :try_end_8c} :catch_a5
    .catchall {:try_start_8a .. :try_end_8c} :catchall_bd

    goto :goto_55

    .line 133
    .restart local v6    # "result":Ljava/lang/String;
    :catch_8d
    move-exception v0

    .line 134
    .local v0, "e":Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_25

    .line 125
    .end local v0    # "e":Ljava/io/IOException;
    .end local v5    # "lParsedString":[Ljava/lang/String;
    .end local v6    # "result":Ljava/lang/String;
    :cond_92
    if-eqz v2, :cond_98

    .line 126
    :try_start_94
    invoke-virtual {v2}, Ljava/io/FileReader;->close()V

    .line 127
    const/4 v2, 0x0

    .line 129
    :cond_98
    if-eqz v1, :cond_9e

    .line 130
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V
    :try_end_9d
    .catch Ljava/io/IOException; {:try_start_94 .. :try_end_9d} :catch_a0

    .line 131
    const/4 v1, 0x0

    :cond_9e
    :goto_9e
    move-object v6, v7

    .line 137
    goto :goto_25

    .line 133
    :catch_a0
    move-exception v0

    .line 134
    .restart local v0    # "e":Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_9e

    .line 120
    .end local v0    # "e":Ljava/io/IOException;
    :catch_a5
    move-exception v0

    .line 121
    .local v0, "e":Ljava/lang/Exception;
    :try_start_a6
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_a9
    .catchall {:try_start_a6 .. :try_end_a9} :catchall_bd

    .line 125
    if-eqz v2, :cond_af

    .line 126
    :try_start_ab
    invoke-virtual {v2}, Ljava/io/FileReader;->close()V

    .line 127
    const/4 v2, 0x0

    .line 129
    :cond_af
    if-eqz v1, :cond_b5

    .line 130
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V
    :try_end_b4
    .catch Ljava/io/IOException; {:try_start_ab .. :try_end_b4} :catch_b8

    .line 131
    const/4 v1, 0x0

    .end local v0    # "e":Ljava/lang/Exception;
    :cond_b5
    :goto_b5
    move-object v6, v7

    .line 135
    goto/16 :goto_25

    .line 133
    .restart local v0    # "e":Ljava/lang/Exception;
    :catch_b8
    move-exception v0

    .line 134
    .local v0, "e":Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_b5

    .line 124
    .end local v0    # "e":Ljava/io/IOException;
    :catchall_bd
    move-exception v7

    .line 125
    if-eqz v2, :cond_c4

    .line 126
    :try_start_c0
    invoke-virtual {v2}, Ljava/io/FileReader;->close()V

    .line 127
    const/4 v2, 0x0

    .line 129
    :cond_c4
    if-eqz v1, :cond_ca

    .line 130
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V
    :try_end_c9
    .catch Ljava/io/IOException; {:try_start_c0 .. :try_end_c9} :catch_cb

    .line 131
    const/4 v1, 0x0

    .line 135
    :cond_ca
    :goto_ca
    throw v7

    .line 133
    :catch_cb
    move-exception v0

    .line 134
    .restart local v0    # "e":Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_ca
.end method

.method public static serializeObject(Ljava/lang/Object;)[B
    .registers 5
    .param p0, "o"    # Ljava/lang/Object;

    .prologue
    .line 336
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 339
    .local v0, "bos":Ljava/io/ByteArrayOutputStream;
    :try_start_5
    new-instance v3, Ljava/io/ObjectOutputStream;

    invoke-direct {v3, v0}, Ljava/io/ObjectOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 340
    .local v3, "out":Ljava/io/ObjectOutput;
    invoke-interface {v3, p0}, Ljava/io/ObjectOutput;->writeObject(Ljava/lang/Object;)V

    .line 341
    invoke-interface {v3}, Ljava/io/ObjectOutput;->close()V

    .line 344
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B
    :try_end_13
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_13} :catch_15

    move-result-object v1

    .line 348
    .end local v3    # "out":Ljava/io/ObjectOutput;
    :goto_14
    return-object v1

    .line 346
    :catch_15
    move-exception v2

    .line 347
    .local v2, "e":Ljava/io/IOException;
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    .line 348
    const/4 v1, 0x0

    goto :goto_14
.end method

.method public static serializeObjectToString(Ljava/lang/Object;)Ljava/lang/String;
    .registers 14
    .param p0, "object"    # Ljava/lang/Object;

    .prologue
    const/4 v5, 0x0

    .line 372
    if-nez p0, :cond_4

    .line 383
    :goto_3
    return-object v5

    .line 375
    :cond_4
    :try_start_4
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_9} :catch_62

    .line 374
    .local v0, "arrayOutputStream":Ljava/io/ByteArrayOutputStream;
    const/4 v7, 0x0

    .line 376
    :try_start_a
    new-instance v2, Ljava/util/zip/GZIPOutputStream;

    invoke-direct {v2, v0}, Ljava/util/zip/GZIPOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_f
    .catch Ljava/lang/Throwable; {:try_start_a .. :try_end_f} :catch_54
    .catchall {:try_start_a .. :try_end_f} :catchall_88

    .line 374
    .local v2, "gzipOutputStream":Ljava/util/zip/GZIPOutputStream;
    const/4 v8, 0x0

    .line 377
    :try_start_10
    new-instance v3, Ljava/io/ObjectOutputStream;

    invoke-direct {v3, v2}, Ljava/io/ObjectOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_15
    .catch Ljava/lang/Throwable; {:try_start_10 .. :try_end_15} :catch_46
    .catchall {:try_start_10 .. :try_end_15} :catchall_80

    .line 374
    .local v3, "objectOutputStream":Ljava/io/ObjectOutputStream;
    const/4 v9, 0x0

    .line 378
    :try_start_16
    invoke-virtual {v3, p0}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    .line 379
    invoke-virtual {v3}, Ljava/io/ObjectOutputStream;->flush()V

    .line 380
    new-instance v6, Ljava/lang/String;

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v10

    const/4 v11, 0x0

    invoke-static {v10, v11}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object v10

    invoke-direct {v6, v10}, Ljava/lang/String;-><init>(Ljava/lang/String;)V
    :try_end_2a
    .catch Ljava/lang/Throwable; {:try_start_16 .. :try_end_2a} :catch_98
    .catchall {:try_start_16 .. :try_end_2a} :catchall_c1

    .line 381
    if-eqz v3, :cond_31

    if-eqz v5, :cond_7c

    :try_start_2e
    invoke-virtual {v3}, Ljava/io/ObjectOutputStream;->close()V
    :try_end_31
    .catch Ljava/lang/Throwable; {:try_start_2e .. :try_end_31} :catch_41
    .catchall {:try_start_2e .. :try_end_31} :catchall_80

    :cond_31
    :goto_31
    if-eqz v2, :cond_38

    if-eqz v5, :cond_8b

    :try_start_35
    invoke-virtual {v2}, Ljava/util/zip/GZIPOutputStream;->close()V
    :try_end_38
    .catch Ljava/lang/Throwable; {:try_start_35 .. :try_end_38} :catch_83
    .catchall {:try_start_35 .. :try_end_38} :catchall_88

    :cond_38
    :goto_38
    if-eqz v0, :cond_3f

    if-eqz v5, :cond_94

    :try_start_3c
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_3f
    .catch Ljava/lang/Throwable; {:try_start_3c .. :try_end_3f} :catch_8f
    .catch Ljava/io/IOException; {:try_start_3c .. :try_end_3f} :catch_62

    :cond_3f
    :goto_3f
    move-object v5, v6

    goto :goto_3

    :catch_41
    move-exception v4

    .local v4, "x2":Ljava/lang/Throwable;
    :try_start_42
    invoke-virtual {v9, v4}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V
    :try_end_45
    .catch Ljava/lang/Throwable; {:try_start_42 .. :try_end_45} :catch_46
    .catchall {:try_start_42 .. :try_end_45} :catchall_80

    goto :goto_31

    .line 374
    .end local v3    # "objectOutputStream":Ljava/io/ObjectOutputStream;
    .end local v4    # "x2":Ljava/lang/Throwable;
    :catch_46
    move-exception v6

    :try_start_47
    throw v6
    :try_end_48
    .catchall {:try_start_47 .. :try_end_48} :catchall_48

    .line 381
    :catchall_48
    move-exception v7

    move-object v12, v7

    move-object v7, v6

    move-object v6, v12

    :goto_4c
    if-eqz v2, :cond_53

    if-eqz v7, :cond_b4

    :try_start_50
    invoke-virtual {v2}, Ljava/util/zip/GZIPOutputStream;->close()V
    :try_end_53
    .catch Ljava/lang/Throwable; {:try_start_50 .. :try_end_53} :catch_af
    .catchall {:try_start_50 .. :try_end_53} :catchall_88

    :cond_53
    :goto_53
    :try_start_53
    throw v6
    :try_end_54
    .catch Ljava/lang/Throwable; {:try_start_53 .. :try_end_54} :catch_54
    .catchall {:try_start_53 .. :try_end_54} :catchall_88

    .line 374
    .end local v2    # "gzipOutputStream":Ljava/util/zip/GZIPOutputStream;
    :catch_54
    move-exception v6

    :try_start_55
    throw v6
    :try_end_56
    .catchall {:try_start_55 .. :try_end_56} :catchall_56

    .line 381
    :catchall_56
    move-exception v7

    move-object v12, v7

    move-object v7, v6

    move-object v6, v12

    :goto_5a
    if-eqz v0, :cond_61

    if-eqz v7, :cond_bd

    :try_start_5e
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_61
    .catch Ljava/lang/Throwable; {:try_start_5e .. :try_end_61} :catch_b8
    .catch Ljava/io/IOException; {:try_start_5e .. :try_end_61} :catch_62

    :cond_61
    :goto_61
    :try_start_61
    throw v6
    :try_end_62
    .catch Ljava/io/IOException; {:try_start_61 .. :try_end_62} :catch_62

    .end local v0    # "arrayOutputStream":Ljava/io/ByteArrayOutputStream;
    :catch_62
    move-exception v1

    .line 382
    .local v1, "e":Ljava/io/IOException;
    sget-object v6, TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "IOException to Serialize Object to String: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_3

    .line 381
    .end local v1    # "e":Ljava/io/IOException;
    .restart local v0    # "arrayOutputStream":Ljava/io/ByteArrayOutputStream;
    .restart local v2    # "gzipOutputStream":Ljava/util/zip/GZIPOutputStream;
    .restart local v3    # "objectOutputStream":Ljava/io/ObjectOutputStream;
    :cond_7c
    :try_start_7c
    invoke-virtual {v3}, Ljava/io/ObjectOutputStream;->close()V
    :try_end_7f
    .catch Ljava/lang/Throwable; {:try_start_7c .. :try_end_7f} :catch_46
    .catchall {:try_start_7c .. :try_end_7f} :catchall_80

    goto :goto_31

    .end local v3    # "objectOutputStream":Ljava/io/ObjectOutputStream;
    :catchall_80
    move-exception v6

    move-object v7, v5

    goto :goto_4c

    .restart local v3    # "objectOutputStream":Ljava/io/ObjectOutputStream;
    :catch_83
    move-exception v4

    .restart local v4    # "x2":Ljava/lang/Throwable;
    :try_start_84
    invoke-virtual {v8, v4}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    goto :goto_38

    .end local v2    # "gzipOutputStream":Ljava/util/zip/GZIPOutputStream;
    .end local v3    # "objectOutputStream":Ljava/io/ObjectOutputStream;
    .end local v4    # "x2":Ljava/lang/Throwable;
    :catchall_88
    move-exception v6

    move-object v7, v5

    goto :goto_5a

    .restart local v2    # "gzipOutputStream":Ljava/util/zip/GZIPOutputStream;
    .restart local v3    # "objectOutputStream":Ljava/io/ObjectOutputStream;
    :cond_8b
    invoke-virtual {v2}, Ljava/util/zip/GZIPOutputStream;->close()V
    :try_end_8e
    .catch Ljava/lang/Throwable; {:try_start_84 .. :try_end_8e} :catch_54
    .catchall {:try_start_84 .. :try_end_8e} :catchall_88

    goto :goto_38

    :catch_8f
    move-exception v4

    .restart local v4    # "x2":Ljava/lang/Throwable;
    :try_start_90
    invoke-virtual {v7, v4}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    goto :goto_3f

    .end local v4    # "x2":Ljava/lang/Throwable;
    :cond_94
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_97
    .catch Ljava/io/IOException; {:try_start_90 .. :try_end_97} :catch_62

    goto :goto_3f

    .line 374
    :catch_98
    move-exception v6

    :try_start_99
    throw v6
    :try_end_9a
    .catchall {:try_start_99 .. :try_end_9a} :catchall_9a

    .line 381
    :catchall_9a
    move-exception v7

    move-object v12, v7

    move-object v7, v6

    move-object v6, v12

    :goto_9e
    if-eqz v3, :cond_a5

    if-eqz v7, :cond_ab

    :try_start_a2
    invoke-virtual {v3}, Ljava/io/ObjectOutputStream;->close()V
    :try_end_a5
    .catch Ljava/lang/Throwable; {:try_start_a2 .. :try_end_a5} :catch_a6
    .catchall {:try_start_a2 .. :try_end_a5} :catchall_80

    :cond_a5
    :goto_a5
    :try_start_a5
    throw v6

    :catch_a6
    move-exception v4

    .restart local v4    # "x2":Ljava/lang/Throwable;
    invoke-virtual {v7, v4}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    goto :goto_a5

    .end local v4    # "x2":Ljava/lang/Throwable;
    :cond_ab
    invoke-virtual {v3}, Ljava/io/ObjectOutputStream;->close()V
    :try_end_ae
    .catch Ljava/lang/Throwable; {:try_start_a5 .. :try_end_ae} :catch_46
    .catchall {:try_start_a5 .. :try_end_ae} :catchall_80

    goto :goto_a5

    .end local v3    # "objectOutputStream":Ljava/io/ObjectOutputStream;
    :catch_af
    move-exception v4

    .restart local v4    # "x2":Ljava/lang/Throwable;
    :try_start_b0
    invoke-virtual {v7, v4}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    goto :goto_53

    .end local v4    # "x2":Ljava/lang/Throwable;
    :cond_b4
    invoke-virtual {v2}, Ljava/util/zip/GZIPOutputStream;->close()V
    :try_end_b7
    .catch Ljava/lang/Throwable; {:try_start_b0 .. :try_end_b7} :catch_54
    .catchall {:try_start_b0 .. :try_end_b7} :catchall_88

    goto :goto_53

    .end local v2    # "gzipOutputStream":Ljava/util/zip/GZIPOutputStream;
    :catch_b8
    move-exception v4

    .restart local v4    # "x2":Ljava/lang/Throwable;
    :try_start_b9
    invoke-virtual {v7, v4}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    goto :goto_61

    .end local v4    # "x2":Ljava/lang/Throwable;
    :cond_bd
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_c0
    .catch Ljava/io/IOException; {:try_start_b9 .. :try_end_c0} :catch_62

    goto :goto_61

    .restart local v2    # "gzipOutputStream":Ljava/util/zip/GZIPOutputStream;
    .restart local v3    # "objectOutputStream":Ljava/io/ObjectOutputStream;
    :catchall_c1
    move-exception v6

    move-object v7, v5

    goto :goto_9e
.end method

.method public static writePropertyValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
    .registers 20
    .param p0, "aPropName"    # Ljava/lang/String;
    .param p1, "aPropValue"    # Ljava/lang/String;
    .param p2, "aFileName"    # Ljava/lang/String;

    .prologue
    .line 155
    const/4 v10, 0x0

    .line 156
    .local v10, "lSuccess":Z
    const/4 v11, 0x0

    .line 157
    .local v11, "ps":Ljava/io/PrintStream;
    const/4 v4, 0x0

    .line 158
    .local v4, "lFReader":Ljava/io/FileReader;
    const/4 v2, 0x0

    .line 160
    .local v2, "lBufReader":Ljava/io/BufferedReader;
    :try_start_4
    new-instance v6, Ljava/io/File;

    move-object/from16 v0, p2

    invoke-direct {v6, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 161
    .local v6, "lFile":Ljava/io/File;
    invoke-virtual {v6}, Ljava/io/File;->exists()Z

    move-result v13

    if-nez v13, :cond_20

    .line 162
    invoke-virtual {v6}, Ljava/io/File;->createNewFile()Z

    .line 163
    invoke-virtual {v6}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v13

    const/16 v14, 0x1a4

    const/4 v15, -0x1

    const/16 v16, -0x1

    invoke-static/range {v13 .. v16}, Landroid/os/FileUtils;->setPermissions(Ljava/lang/String;III)I

    .line 172
    :cond_20
    new-instance v5, Ljava/io/FileReader;

    invoke-direct {v5, v6}, Ljava/io/FileReader;-><init>(Ljava/io/File;)V
    :try_end_25
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_25} :catch_10b
    .catchall {:try_start_4 .. :try_end_25} :catchall_e7

    .line 173
    .end local v4    # "lFReader":Ljava/io/FileReader;
    .local v5, "lFReader":Ljava/io/FileReader;
    :try_start_25
    new-instance v3, Ljava/io/BufferedReader;

    const/16 v13, 0x200

    invoke-direct {v3, v5, v13}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;I)V
    :try_end_2c
    .catch Ljava/lang/Exception; {:try_start_25 .. :try_end_2c} :catch_10e
    .catchall {:try_start_25 .. :try_end_2c} :catchall_100

    .line 175
    .end local v2    # "lBufReader":Ljava/io/BufferedReader;
    .local v3, "lBufReader":Ljava/io/BufferedReader;
    :try_start_2c
    new-instance v9, Ljava/lang/StringBuffer;

    const-string v13, ""

    invoke-direct {v9, v13}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    .line 176
    .local v9, "lStrBuffer":Ljava/lang/StringBuffer;
    const/4 v7, 0x0

    .line 177
    .local v7, "lFound":Z
    :goto_34
    invoke-virtual {v3}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v8

    .local v8, "lLine":Ljava/lang/String;
    if-eqz v8, :cond_8e

    .line 178
    const-string v13, "="

    invoke-virtual {v8, v13}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v13

    const/4 v14, 0x0

    aget-object v13, v13, v14

    move-object/from16 v0, p0

    invoke-virtual {v13, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_67

    .line 180
    const/4 v7, 0x1

    .line 181
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p0

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, "="

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    move-object/from16 v0, p1

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 183
    :cond_67
    invoke-virtual {v9, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 184
    const-string/jumbo v13, "line.separator"

    invoke-static {v13}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v9, v13}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;
    :try_end_74
    .catch Ljava/lang/Exception; {:try_start_2c .. :try_end_74} :catch_75
    .catchall {:try_start_2c .. :try_end_74} :catchall_103

    goto :goto_34

    .line 199
    .end local v7    # "lFound":Z
    .end local v8    # "lLine":Ljava/lang/String;
    .end local v9    # "lStrBuffer":Ljava/lang/StringBuffer;
    :catch_75
    move-exception v1

    move-object v2, v3

    .end local v3    # "lBufReader":Ljava/io/BufferedReader;
    .restart local v2    # "lBufReader":Ljava/io/BufferedReader;
    move-object v4, v5

    .line 200
    .end local v5    # "lFReader":Ljava/io/FileReader;
    .end local v6    # "lFile":Ljava/io/File;
    .local v1, "e":Ljava/lang/Exception;
    .restart local v4    # "lFReader":Ljava/io/FileReader;
    :goto_78
    :try_start_78
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_7b
    .catchall {:try_start_78 .. :try_end_7b} :catchall_e7

    .line 203
    if-eqz v4, :cond_81

    .line 204
    :try_start_7d
    invoke-virtual {v4}, Ljava/io/FileReader;->close()V

    .line 205
    const/4 v4, 0x0

    .line 208
    :cond_81
    if-eqz v2, :cond_87

    .line 209
    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V
    :try_end_86
    .catch Ljava/io/IOException; {:try_start_7d .. :try_end_86} :catch_e2

    .line 210
    const/4 v2, 0x0

    .line 215
    .end local v1    # "e":Ljava/lang/Exception;
    :cond_87
    :goto_87
    if-eqz v11, :cond_8d

    .line 216
    invoke-virtual {v11}, Ljava/io/PrintStream;->close()V

    .line 217
    const/4 v11, 0x0

    .line 220
    :cond_8d
    :goto_8d
    return v10

    .line 188
    .end local v2    # "lBufReader":Ljava/io/BufferedReader;
    .end local v4    # "lFReader":Ljava/io/FileReader;
    .restart local v3    # "lBufReader":Ljava/io/BufferedReader;
    .restart local v5    # "lFReader":Ljava/io/FileReader;
    .restart local v6    # "lFile":Ljava/io/File;
    .restart local v7    # "lFound":Z
    .restart local v8    # "lLine":Ljava/lang/String;
    .restart local v9    # "lStrBuffer":Ljava/lang/StringBuffer;
    :cond_8e
    if-nez v7, :cond_b8

    .line 189
    :try_start_90
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p0

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, "="

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    move-object/from16 v0, p1

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v9, v13}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 190
    const-string/jumbo v13, "line.separator"

    invoke-static {v13}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v9, v13}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 194
    :cond_b8
    invoke-virtual {v3}, Ljava/io/BufferedReader;->close()V
    :try_end_bb
    .catch Ljava/lang/Exception; {:try_start_90 .. :try_end_bb} :catch_75
    .catchall {:try_start_90 .. :try_end_bb} :catchall_103

    .line 195
    const/4 v2, 0x0

    .line 196
    .end local v3    # "lBufReader":Ljava/io/BufferedReader;
    .restart local v2    # "lBufReader":Ljava/io/BufferedReader;
    :try_start_bc
    new-instance v12, Ljava/io/PrintStream;

    invoke-direct {v12, v6}, Ljava/io/PrintStream;-><init>(Ljava/io/File;)V
    :try_end_c1
    .catch Ljava/lang/Exception; {:try_start_bc .. :try_end_c1} :catch_10e
    .catchall {:try_start_bc .. :try_end_c1} :catchall_100

    .line 197
    .end local v11    # "ps":Ljava/io/PrintStream;
    .local v12, "ps":Ljava/io/PrintStream;
    :try_start_c1
    invoke-virtual {v9}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V
    :try_end_c8
    .catch Ljava/lang/Exception; {:try_start_c1 .. :try_end_c8} :catch_112
    .catchall {:try_start_c1 .. :try_end_c8} :catchall_107

    .line 198
    const/4 v10, 0x1

    .line 203
    if-eqz v5, :cond_11c

    .line 204
    :try_start_cb
    invoke-virtual {v5}, Ljava/io/FileReader;->close()V
    :try_end_ce
    .catch Ljava/io/IOException; {:try_start_cb .. :try_end_ce} :catch_dc

    .line 205
    const/4 v4, 0x0

    .line 208
    .end local v5    # "lFReader":Ljava/io/FileReader;
    .restart local v4    # "lFReader":Ljava/io/FileReader;
    :goto_cf
    if-eqz v2, :cond_d5

    .line 209
    :try_start_d1
    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V
    :try_end_d4
    .catch Ljava/io/IOException; {:try_start_d1 .. :try_end_d4} :catch_117

    .line 210
    const/4 v2, 0x0

    .line 215
    :cond_d5
    :goto_d5
    if-eqz v12, :cond_119

    .line 216
    invoke-virtual {v12}, Ljava/io/PrintStream;->close()V

    .line 217
    const/4 v11, 0x0

    .end local v12    # "ps":Ljava/io/PrintStream;
    .restart local v11    # "ps":Ljava/io/PrintStream;
    goto :goto_8d

    .line 212
    .end local v4    # "lFReader":Ljava/io/FileReader;
    .end local v11    # "ps":Ljava/io/PrintStream;
    .restart local v5    # "lFReader":Ljava/io/FileReader;
    .restart local v12    # "ps":Ljava/io/PrintStream;
    :catch_dc
    move-exception v1

    move-object v4, v5

    .line 213
    .end local v5    # "lFReader":Ljava/io/FileReader;
    .local v1, "e":Ljava/io/IOException;
    .restart local v4    # "lFReader":Ljava/io/FileReader;
    :goto_de
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_d5

    .line 212
    .end local v6    # "lFile":Ljava/io/File;
    .end local v7    # "lFound":Z
    .end local v8    # "lLine":Ljava/lang/String;
    .end local v9    # "lStrBuffer":Ljava/lang/StringBuffer;
    .end local v12    # "ps":Ljava/io/PrintStream;
    .local v1, "e":Ljava/lang/Exception;
    .restart local v11    # "ps":Ljava/io/PrintStream;
    :catch_e2
    move-exception v1

    .line 213
    .local v1, "e":Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_87

    .line 202
    .end local v1    # "e":Ljava/io/IOException;
    :catchall_e7
    move-exception v13

    .line 203
    :goto_e8
    if-eqz v4, :cond_ee

    .line 204
    :try_start_ea
    invoke-virtual {v4}, Ljava/io/FileReader;->close()V

    .line 205
    const/4 v4, 0x0

    .line 208
    :cond_ee
    if-eqz v2, :cond_f4

    .line 209
    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V
    :try_end_f3
    .catch Ljava/io/IOException; {:try_start_ea .. :try_end_f3} :catch_fb

    .line 210
    const/4 v2, 0x0

    .line 215
    :cond_f4
    :goto_f4
    if-eqz v11, :cond_fa

    .line 216
    invoke-virtual {v11}, Ljava/io/PrintStream;->close()V

    .line 217
    const/4 v11, 0x0

    :cond_fa
    throw v13

    .line 212
    :catch_fb
    move-exception v1

    .line 213
    .restart local v1    # "e":Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_f4

    .line 202
    .end local v1    # "e":Ljava/io/IOException;
    .end local v4    # "lFReader":Ljava/io/FileReader;
    .restart local v5    # "lFReader":Ljava/io/FileReader;
    .restart local v6    # "lFile":Ljava/io/File;
    :catchall_100
    move-exception v13

    move-object v4, v5

    .end local v5    # "lFReader":Ljava/io/FileReader;
    .restart local v4    # "lFReader":Ljava/io/FileReader;
    goto :goto_e8

    .end local v2    # "lBufReader":Ljava/io/BufferedReader;
    .end local v4    # "lFReader":Ljava/io/FileReader;
    .restart local v3    # "lBufReader":Ljava/io/BufferedReader;
    .restart local v5    # "lFReader":Ljava/io/FileReader;
    :catchall_103
    move-exception v13

    move-object v2, v3

    .end local v3    # "lBufReader":Ljava/io/BufferedReader;
    .restart local v2    # "lBufReader":Ljava/io/BufferedReader;
    move-object v4, v5

    .end local v5    # "lFReader":Ljava/io/FileReader;
    .restart local v4    # "lFReader":Ljava/io/FileReader;
    goto :goto_e8

    .end local v4    # "lFReader":Ljava/io/FileReader;
    .end local v11    # "ps":Ljava/io/PrintStream;
    .restart local v5    # "lFReader":Ljava/io/FileReader;
    .restart local v7    # "lFound":Z
    .restart local v8    # "lLine":Ljava/lang/String;
    .restart local v9    # "lStrBuffer":Ljava/lang/StringBuffer;
    .restart local v12    # "ps":Ljava/io/PrintStream;
    :catchall_107
    move-exception v13

    move-object v4, v5

    .end local v5    # "lFReader":Ljava/io/FileReader;
    .restart local v4    # "lFReader":Ljava/io/FileReader;
    move-object v11, v12

    .end local v12    # "ps":Ljava/io/PrintStream;
    .restart local v11    # "ps":Ljava/io/PrintStream;
    goto :goto_e8

    .line 199
    .end local v6    # "lFile":Ljava/io/File;
    .end local v7    # "lFound":Z
    .end local v8    # "lLine":Ljava/lang/String;
    .end local v9    # "lStrBuffer":Ljava/lang/StringBuffer;
    :catch_10b
    move-exception v1

    goto/16 :goto_78

    .end local v4    # "lFReader":Ljava/io/FileReader;
    .restart local v5    # "lFReader":Ljava/io/FileReader;
    .restart local v6    # "lFile":Ljava/io/File;
    :catch_10e
    move-exception v1

    move-object v4, v5

    .end local v5    # "lFReader":Ljava/io/FileReader;
    .restart local v4    # "lFReader":Ljava/io/FileReader;
    goto/16 :goto_78

    .end local v4    # "lFReader":Ljava/io/FileReader;
    .end local v11    # "ps":Ljava/io/PrintStream;
    .restart local v5    # "lFReader":Ljava/io/FileReader;
    .restart local v7    # "lFound":Z
    .restart local v8    # "lLine":Ljava/lang/String;
    .restart local v9    # "lStrBuffer":Ljava/lang/StringBuffer;
    .restart local v12    # "ps":Ljava/io/PrintStream;
    :catch_112
    move-exception v1

    move-object v4, v5

    .end local v5    # "lFReader":Ljava/io/FileReader;
    .restart local v4    # "lFReader":Ljava/io/FileReader;
    move-object v11, v12

    .end local v12    # "ps":Ljava/io/PrintStream;
    .restart local v11    # "ps":Ljava/io/PrintStream;
    goto/16 :goto_78

    .line 212
    .end local v11    # "ps":Ljava/io/PrintStream;
    .restart local v12    # "ps":Ljava/io/PrintStream;
    :catch_117
    move-exception v1

    goto :goto_de

    :cond_119
    move-object v11, v12

    .end local v12    # "ps":Ljava/io/PrintStream;
    .restart local v11    # "ps":Ljava/io/PrintStream;
    goto/16 :goto_8d

    .end local v4    # "lFReader":Ljava/io/FileReader;
    .end local v11    # "ps":Ljava/io/PrintStream;
    .restart local v5    # "lFReader":Ljava/io/FileReader;
    .restart local v12    # "ps":Ljava/io/PrintStream;
    :cond_11c
    move-object v4, v5

    .end local v5    # "lFReader":Ljava/io/FileReader;
    .restart local v4    # "lFReader":Ljava/io/FileReader;
    goto :goto_cf
.end method
