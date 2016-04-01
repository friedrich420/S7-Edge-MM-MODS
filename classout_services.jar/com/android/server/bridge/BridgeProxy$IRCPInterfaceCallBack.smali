.class Lcom/android/server/bridge/BridgeProxy$IRCPInterfaceCallBack;
.super Landroid/content/IRCPInterface$Stub;
.source "BridgeProxy.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/bridge/BridgeProxy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "IRCPInterfaceCallBack"
.end annotation


# static fields
.field public static final EACCES:I = -0xd

.field public static final EBUSY:I = -0x10

.field public static final ENAMETOOLONG:I = -0x24

.field public static final ENOENT:I = -0x2

.field public static final ENOSPC:I = -0x1c

.field public static final POLICY_NOT_ALLOWED:I = -0xf4240

.field public static final REGISTRATION_EXCEPTION:I = -0xf4241

.field public static final REMOTE_EXCEPTION:I = -0xf4242

.field public static final SUCCESS:I


# instance fields
.field final synthetic this$0:Lcom/android/server/bridge/BridgeProxy;


# direct methods
.method private constructor <init>(Lcom/android/server/bridge/BridgeProxy;)V
    .registers 2

    .prologue
    .line 1604
    iput-object p1, p0, this$0:Lcom/android/server/bridge/BridgeProxy;

    invoke-direct {p0}, Landroid/content/IRCPInterface$Stub;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/bridge/BridgeProxy;Lcom/android/server/bridge/BridgeProxy$1;)V
    .registers 3
    .param p1, "x0"    # Lcom/android/server/bridge/BridgeProxy;
    .param p2, "x1"    # Lcom/android/server/bridge/BridgeProxy$1;

    .prologue
    .line 1604
    invoke-direct {p0, p1}, <init>(Lcom/android/server/bridge/BridgeProxy;)V

    return-void
.end method

.method private changeExtSdPath(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 8
    .param p1, "srcFilePath"    # Ljava/lang/String;
    .param p2, "destFilePath"    # Ljava/lang/String;

    .prologue
    .line 1972
    move-object v1, p2

    .line 1974
    .local v1, "retFilePath":Ljava/lang/String;
    :try_start_1
    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_17

    .line 1975
    const-string v2, "/mnt/extSdCard"

    invoke-virtual {p1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_18

    .line 1976
    const-string v2, "^/mnt/extSdCard"

    const-string v3, "/mnt/sdcard"

    invoke-virtual {p1, v2, v3}, Ljava/lang/String;->replaceFirst(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1991
    :cond_17
    :goto_17
    return-object v1

    .line 1978
    :cond_18
    const-string v2, "/storage/extSdCard"

    invoke-virtual {p1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_29

    .line 1979
    const-string v2, "^/storage/extSdCard"

    const-string v3, "/mnt/sdcard"

    invoke-virtual {p1, v2, v3}, Ljava/lang/String;->replaceFirst(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    goto :goto_17

    .line 1981
    :cond_29
    const-string v2, "/storage/"

    invoke-virtual {p1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_17

    .line 1982
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "/mnt/sdcard"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "/"

    const-string v4, "/storage/"

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    invoke-virtual {p1, v3, v4}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v3

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v4

    invoke-virtual {p1, v3, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_57
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_57} :catch_59

    move-result-object v1

    goto :goto_17

    .line 1986
    :catch_59
    move-exception v0

    .line 1987
    .local v0, "npe":Ljava/lang/NullPointerException;
    invoke-virtual {v0}, Ljava/lang/NullPointerException;->printStackTrace()V

    .line 1988
    # getter for: Lcom/android/server/bridge/BridgeProxy;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/bridge/BridgeProxy;->access$800()Ljava/lang/String;

    move-result-object v2

    const-string v3, "changeExtSdPath(): npe has occured"

    invoke-static {v2, v3}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_17
.end method

.method private copyListToFile(Ljava/util/ArrayList;Ljava/util/ArrayList;)V
    .registers 22
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1696
    .local p1, "srcPaths":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .local p2, "dstPaths":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    const/4 v10, 0x0

    .line 1697
    .local v10, "fosrc":Ljava/io/FileOutputStream;
    const/4 v8, 0x0

    .line 1698
    .local v8, "fosdst":Ljava/io/FileOutputStream;
    const/4 v2, 0x0

    .line 1699
    .local v2, "bridgeProxyDir":Ljava/io/File;
    const/4 v13, 0x0

    .line 1700
    .local v13, "srcFile":Ljava/io/File;
    const/4 v4, 0x0

    .line 1703
    .local v4, "destFile":Ljava/io/File;
    :try_start_5
    new-instance v3, Ljava/io/File;

    const-string v16, "/data/misc/BridgeProxy"

    move-object/from16 v0, v16

    invoke-direct {v3, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V
    :try_end_e
    .catch Ljava/io/FileNotFoundException; {:try_start_5 .. :try_end_e} :catch_109
    .catchall {:try_start_5 .. :try_end_e} :catchall_169

    .line 1704
    .end local v2    # "bridgeProxyDir":Ljava/io/File;
    .local v3, "bridgeProxyDir":Ljava/io/File;
    :try_start_e
    invoke-virtual {v3}, Ljava/io/File;->mkdirs()Z

    .line 1706
    new-instance v14, Ljava/io/File;

    const-string/jumbo v16, "srcCreateFile"

    move-object/from16 v0, v16

    invoke-direct {v14, v3, v0}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V
    :try_end_1b
    .catch Ljava/io/FileNotFoundException; {:try_start_e .. :try_end_1b} :catch_1d6
    .catchall {:try_start_e .. :try_end_1b} :catchall_1bd

    .line 1707
    .end local v13    # "srcFile":Ljava/io/File;
    .local v14, "srcFile":Ljava/io/File;
    const/16 v16, 0x1

    const/16 v17, 0x0

    :try_start_1f
    move/from16 v0, v16

    move/from16 v1, v17

    invoke-virtual {v14, v0, v1}, Ljava/io/File;->setReadable(ZZ)Z

    .line 1708
    new-instance v11, Ljava/io/FileOutputStream;

    invoke-direct {v11, v14}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_2b
    .catch Ljava/io/FileNotFoundException; {:try_start_1f .. :try_end_2b} :catch_1da
    .catchall {:try_start_1f .. :try_end_2b} :catchall_1c0

    .line 1710
    .end local v10    # "fosrc":Ljava/io/FileOutputStream;
    .local v11, "fosrc":Ljava/io/FileOutputStream;
    :try_start_2b
    # getter for: Lcom/android/server/bridge/BridgeProxy;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/bridge/BridgeProxy;->access$800()Ljava/lang/String;

    move-result-object v16

    const-string v17, " FILE opened : "

    invoke-static/range {v16 .. v17}, Lcom/android/server/bridge/BridgeProxy$BridgeLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1711
    const/4 v12, 0x0

    .local v12, "i":I
    :goto_35
    invoke-virtual/range {p1 .. p1}, Ljava/util/ArrayList;->size()I

    move-result v16

    move/from16 v0, v16

    if-ge v12, v0, :cond_61

    .line 1712
    move-object/from16 v0, p1

    invoke-virtual {v0, v12}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Ljava/lang/String;

    .line 1713
    .local v15, "srcPath":Ljava/lang/String;
    invoke-virtual {v15}, Ljava/lang/String;->getBytes()[B

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v11, v0}, Ljava/io/FileOutputStream;->write([B)V

    .line 1714
    const-string/jumbo v16, "line.separator"

    invoke-static/range {v16 .. v16}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/String;->getBytes()[B

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v11, v0}, Ljava/io/FileOutputStream;->write([B)V

    .line 1711
    add-int/lit8 v12, v12, 0x1

    goto :goto_35

    .line 1717
    .end local v15    # "srcPath":Ljava/lang/String;
    :cond_61
    new-instance v5, Ljava/io/File;

    const-string/jumbo v16, "dstCreateFile"

    move-object/from16 v0, v16

    invoke-direct {v5, v3, v0}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V
    :try_end_6b
    .catch Ljava/io/FileNotFoundException; {:try_start_2b .. :try_end_6b} :catch_1df
    .catchall {:try_start_2b .. :try_end_6b} :catchall_1c4

    .line 1718
    .end local v4    # "destFile":Ljava/io/File;
    .local v5, "destFile":Ljava/io/File;
    const/16 v16, 0x1

    const/16 v17, 0x0

    :try_start_6f
    move/from16 v0, v16

    move/from16 v1, v17

    invoke-virtual {v5, v0, v1}, Ljava/io/File;->setReadable(ZZ)Z

    .line 1719
    new-instance v9, Ljava/io/FileOutputStream;

    invoke-direct {v9, v5}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_7b
    .catch Ljava/io/FileNotFoundException; {:try_start_6f .. :try_end_7b} :catch_1e5
    .catchall {:try_start_6f .. :try_end_7b} :catchall_1c9

    .line 1721
    .end local v8    # "fosdst":Ljava/io/FileOutputStream;
    .local v9, "fosdst":Ljava/io/FileOutputStream;
    const/4 v12, 0x0

    :goto_7c
    :try_start_7c
    invoke-virtual/range {p2 .. p2}, Ljava/util/ArrayList;->size()I

    move-result v16

    move/from16 v0, v16

    if-ge v12, v0, :cond_a8

    .line 1722
    move-object/from16 v0, p2

    invoke-virtual {v0, v12}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    .line 1723
    .local v6, "dstPath":Ljava/lang/String;
    invoke-virtual {v6}, Ljava/lang/String;->getBytes()[B

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v9, v0}, Ljava/io/FileOutputStream;->write([B)V

    .line 1724
    const-string/jumbo v16, "line.separator"

    invoke-static/range {v16 .. v16}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/String;->getBytes()[B

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v9, v0}, Ljava/io/FileOutputStream;->write([B)V

    .line 1721
    add-int/lit8 v12, v12, 0x1

    goto :goto_7c

    .line 1726
    .end local v6    # "dstPath":Ljava/lang/String;
    :cond_a8
    # getter for: Lcom/android/server/bridge/BridgeProxy;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/bridge/BridgeProxy;->access$800()Ljava/lang/String;

    move-result-object v16

    const-string v17, " FILE closed "

    invoke-static/range {v16 .. v17}, Lcom/android/server/bridge/BridgeProxy$BridgeLog;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_b1
    .catch Ljava/io/FileNotFoundException; {:try_start_7c .. :try_end_b1} :catch_1ec
    .catchall {:try_start_7c .. :try_end_b1} :catchall_1cf

    .line 1733
    if-eqz v11, :cond_b6

    .line 1734
    invoke-virtual {v11}, Ljava/io/FileOutputStream;->close()V

    .line 1735
    :cond_b6
    if-eqz v9, :cond_bb

    .line 1736
    invoke-virtual {v9}, Ljava/io/FileOutputStream;->close()V

    .line 1737
    :cond_bb
    if-eqz v3, :cond_d3

    .line 1738
    const/16 v16, 0x1

    const/16 v17, 0x0

    move/from16 v0, v16

    move/from16 v1, v17

    invoke-virtual {v3, v0, v1}, Ljava/io/File;->setReadable(ZZ)Z

    .line 1739
    const/16 v16, 0x1

    const/16 v17, 0x0

    move/from16 v0, v16

    move/from16 v1, v17

    invoke-virtual {v3, v0, v1}, Ljava/io/File;->setExecutable(ZZ)Z

    .line 1741
    :cond_d3
    if-eqz v14, :cond_eb

    .line 1742
    const/16 v16, 0x1

    const/16 v17, 0x0

    move/from16 v0, v16

    move/from16 v1, v17

    invoke-virtual {v14, v0, v1}, Ljava/io/File;->setReadable(ZZ)Z

    .line 1743
    const/16 v16, 0x1

    const/16 v17, 0x0

    move/from16 v0, v16

    move/from16 v1, v17

    invoke-virtual {v14, v0, v1}, Ljava/io/File;->setExecutable(ZZ)Z

    .line 1745
    :cond_eb
    if-eqz v5, :cond_1f4

    .line 1746
    const/16 v16, 0x1

    const/16 v17, 0x0

    move/from16 v0, v16

    move/from16 v1, v17

    invoke-virtual {v5, v0, v1}, Ljava/io/File;->setReadable(ZZ)Z

    .line 1747
    const/16 v16, 0x1

    const/16 v17, 0x0

    move/from16 v0, v16

    move/from16 v1, v17

    invoke-virtual {v5, v0, v1}, Ljava/io/File;->setExecutable(ZZ)Z

    move-object v4, v5

    .end local v5    # "destFile":Ljava/io/File;
    .restart local v4    # "destFile":Ljava/io/File;
    move-object v13, v14

    .end local v14    # "srcFile":Ljava/io/File;
    .restart local v13    # "srcFile":Ljava/io/File;
    move-object v2, v3

    .end local v3    # "bridgeProxyDir":Ljava/io/File;
    .restart local v2    # "bridgeProxyDir":Ljava/io/File;
    move-object v8, v9

    .end local v9    # "fosdst":Ljava/io/FileOutputStream;
    .restart local v8    # "fosdst":Ljava/io/FileOutputStream;
    move-object v10, v11

    .line 1750
    .end local v11    # "fosrc":Ljava/io/FileOutputStream;
    .end local v12    # "i":I
    .restart local v10    # "fosrc":Ljava/io/FileOutputStream;
    :cond_108
    :goto_108
    return-void

    .line 1729
    :catch_109
    move-exception v7

    .line 1730
    .local v7, "fe":Ljava/io/FileNotFoundException;
    :goto_10a
    :try_start_10a
    # getter for: Lcom/android/server/bridge/BridgeProxy;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/bridge/BridgeProxy;->access$800()Ljava/lang/String;

    move-result-object v16

    const-string v17, "BridgeFileNotFOundexception"

    invoke-static/range {v16 .. v17}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1731
    invoke-virtual {v7}, Ljava/io/FileNotFoundException;->printStackTrace()V
    :try_end_116
    .catchall {:try_start_10a .. :try_end_116} :catchall_169

    .line 1733
    if-eqz v10, :cond_11b

    .line 1734
    invoke-virtual {v10}, Ljava/io/FileOutputStream;->close()V

    .line 1735
    :cond_11b
    if-eqz v8, :cond_120

    .line 1736
    invoke-virtual {v8}, Ljava/io/FileOutputStream;->close()V

    .line 1737
    :cond_120
    if-eqz v2, :cond_138

    .line 1738
    const/16 v16, 0x1

    const/16 v17, 0x0

    move/from16 v0, v16

    move/from16 v1, v17

    invoke-virtual {v2, v0, v1}, Ljava/io/File;->setReadable(ZZ)Z

    .line 1739
    const/16 v16, 0x1

    const/16 v17, 0x0

    move/from16 v0, v16

    move/from16 v1, v17

    invoke-virtual {v2, v0, v1}, Ljava/io/File;->setExecutable(ZZ)Z

    .line 1741
    :cond_138
    if-eqz v13, :cond_150

    .line 1742
    const/16 v16, 0x1

    const/16 v17, 0x0

    move/from16 v0, v16

    move/from16 v1, v17

    invoke-virtual {v13, v0, v1}, Ljava/io/File;->setReadable(ZZ)Z

    .line 1743
    const/16 v16, 0x1

    const/16 v17, 0x0

    move/from16 v0, v16

    move/from16 v1, v17

    invoke-virtual {v13, v0, v1}, Ljava/io/File;->setExecutable(ZZ)Z

    .line 1745
    :cond_150
    if-eqz v4, :cond_108

    .line 1746
    const/16 v16, 0x1

    const/16 v17, 0x0

    move/from16 v0, v16

    move/from16 v1, v17

    invoke-virtual {v4, v0, v1}, Ljava/io/File;->setReadable(ZZ)Z

    .line 1747
    const/16 v16, 0x1

    const/16 v17, 0x0

    move/from16 v0, v16

    move/from16 v1, v17

    invoke-virtual {v4, v0, v1}, Ljava/io/File;->setExecutable(ZZ)Z

    goto :goto_108

    .line 1733
    .end local v7    # "fe":Ljava/io/FileNotFoundException;
    :catchall_169
    move-exception v16

    :goto_16a
    if-eqz v10, :cond_16f

    .line 1734
    invoke-virtual {v10}, Ljava/io/FileOutputStream;->close()V

    .line 1735
    :cond_16f
    if-eqz v8, :cond_174

    .line 1736
    invoke-virtual {v8}, Ljava/io/FileOutputStream;->close()V

    .line 1737
    :cond_174
    if-eqz v2, :cond_18c

    .line 1738
    const/16 v17, 0x1

    const/16 v18, 0x0

    move/from16 v0, v17

    move/from16 v1, v18

    invoke-virtual {v2, v0, v1}, Ljava/io/File;->setReadable(ZZ)Z

    .line 1739
    const/16 v17, 0x1

    const/16 v18, 0x0

    move/from16 v0, v17

    move/from16 v1, v18

    invoke-virtual {v2, v0, v1}, Ljava/io/File;->setExecutable(ZZ)Z

    .line 1741
    :cond_18c
    if-eqz v13, :cond_1a4

    .line 1742
    const/16 v17, 0x1

    const/16 v18, 0x0

    move/from16 v0, v17

    move/from16 v1, v18

    invoke-virtual {v13, v0, v1}, Ljava/io/File;->setReadable(ZZ)Z

    .line 1743
    const/16 v17, 0x1

    const/16 v18, 0x0

    move/from16 v0, v17

    move/from16 v1, v18

    invoke-virtual {v13, v0, v1}, Ljava/io/File;->setExecutable(ZZ)Z

    .line 1745
    :cond_1a4
    if-eqz v4, :cond_1bc

    .line 1746
    const/16 v17, 0x1

    const/16 v18, 0x0

    move/from16 v0, v17

    move/from16 v1, v18

    invoke-virtual {v4, v0, v1}, Ljava/io/File;->setReadable(ZZ)Z

    .line 1747
    const/16 v17, 0x1

    const/16 v18, 0x0

    move/from16 v0, v17

    move/from16 v1, v18

    invoke-virtual {v4, v0, v1}, Ljava/io/File;->setExecutable(ZZ)Z

    :cond_1bc
    throw v16

    .line 1733
    .end local v2    # "bridgeProxyDir":Ljava/io/File;
    .restart local v3    # "bridgeProxyDir":Ljava/io/File;
    :catchall_1bd
    move-exception v16

    move-object v2, v3

    .end local v3    # "bridgeProxyDir":Ljava/io/File;
    .restart local v2    # "bridgeProxyDir":Ljava/io/File;
    goto :goto_16a

    .end local v2    # "bridgeProxyDir":Ljava/io/File;
    .end local v13    # "srcFile":Ljava/io/File;
    .restart local v3    # "bridgeProxyDir":Ljava/io/File;
    .restart local v14    # "srcFile":Ljava/io/File;
    :catchall_1c0
    move-exception v16

    move-object v13, v14

    .end local v14    # "srcFile":Ljava/io/File;
    .restart local v13    # "srcFile":Ljava/io/File;
    move-object v2, v3

    .end local v3    # "bridgeProxyDir":Ljava/io/File;
    .restart local v2    # "bridgeProxyDir":Ljava/io/File;
    goto :goto_16a

    .end local v2    # "bridgeProxyDir":Ljava/io/File;
    .end local v10    # "fosrc":Ljava/io/FileOutputStream;
    .end local v13    # "srcFile":Ljava/io/File;
    .restart local v3    # "bridgeProxyDir":Ljava/io/File;
    .restart local v11    # "fosrc":Ljava/io/FileOutputStream;
    .restart local v14    # "srcFile":Ljava/io/File;
    :catchall_1c4
    move-exception v16

    move-object v13, v14

    .end local v14    # "srcFile":Ljava/io/File;
    .restart local v13    # "srcFile":Ljava/io/File;
    move-object v2, v3

    .end local v3    # "bridgeProxyDir":Ljava/io/File;
    .restart local v2    # "bridgeProxyDir":Ljava/io/File;
    move-object v10, v11

    .end local v11    # "fosrc":Ljava/io/FileOutputStream;
    .restart local v10    # "fosrc":Ljava/io/FileOutputStream;
    goto :goto_16a

    .end local v2    # "bridgeProxyDir":Ljava/io/File;
    .end local v4    # "destFile":Ljava/io/File;
    .end local v10    # "fosrc":Ljava/io/FileOutputStream;
    .end local v13    # "srcFile":Ljava/io/File;
    .restart local v3    # "bridgeProxyDir":Ljava/io/File;
    .restart local v5    # "destFile":Ljava/io/File;
    .restart local v11    # "fosrc":Ljava/io/FileOutputStream;
    .restart local v12    # "i":I
    .restart local v14    # "srcFile":Ljava/io/File;
    :catchall_1c9
    move-exception v16

    move-object v4, v5

    .end local v5    # "destFile":Ljava/io/File;
    .restart local v4    # "destFile":Ljava/io/File;
    move-object v13, v14

    .end local v14    # "srcFile":Ljava/io/File;
    .restart local v13    # "srcFile":Ljava/io/File;
    move-object v2, v3

    .end local v3    # "bridgeProxyDir":Ljava/io/File;
    .restart local v2    # "bridgeProxyDir":Ljava/io/File;
    move-object v10, v11

    .end local v11    # "fosrc":Ljava/io/FileOutputStream;
    .restart local v10    # "fosrc":Ljava/io/FileOutputStream;
    goto :goto_16a

    .end local v2    # "bridgeProxyDir":Ljava/io/File;
    .end local v4    # "destFile":Ljava/io/File;
    .end local v8    # "fosdst":Ljava/io/FileOutputStream;
    .end local v10    # "fosrc":Ljava/io/FileOutputStream;
    .end local v13    # "srcFile":Ljava/io/File;
    .restart local v3    # "bridgeProxyDir":Ljava/io/File;
    .restart local v5    # "destFile":Ljava/io/File;
    .restart local v9    # "fosdst":Ljava/io/FileOutputStream;
    .restart local v11    # "fosrc":Ljava/io/FileOutputStream;
    .restart local v14    # "srcFile":Ljava/io/File;
    :catchall_1cf
    move-exception v16

    move-object v4, v5

    .end local v5    # "destFile":Ljava/io/File;
    .restart local v4    # "destFile":Ljava/io/File;
    move-object v13, v14

    .end local v14    # "srcFile":Ljava/io/File;
    .restart local v13    # "srcFile":Ljava/io/File;
    move-object v2, v3

    .end local v3    # "bridgeProxyDir":Ljava/io/File;
    .restart local v2    # "bridgeProxyDir":Ljava/io/File;
    move-object v8, v9

    .end local v9    # "fosdst":Ljava/io/FileOutputStream;
    .restart local v8    # "fosdst":Ljava/io/FileOutputStream;
    move-object v10, v11

    .end local v11    # "fosrc":Ljava/io/FileOutputStream;
    .restart local v10    # "fosrc":Ljava/io/FileOutputStream;
    goto :goto_16a

    .line 1729
    .end local v2    # "bridgeProxyDir":Ljava/io/File;
    .end local v12    # "i":I
    .restart local v3    # "bridgeProxyDir":Ljava/io/File;
    :catch_1d6
    move-exception v7

    move-object v2, v3

    .end local v3    # "bridgeProxyDir":Ljava/io/File;
    .restart local v2    # "bridgeProxyDir":Ljava/io/File;
    goto/16 :goto_10a

    .end local v2    # "bridgeProxyDir":Ljava/io/File;
    .end local v13    # "srcFile":Ljava/io/File;
    .restart local v3    # "bridgeProxyDir":Ljava/io/File;
    .restart local v14    # "srcFile":Ljava/io/File;
    :catch_1da
    move-exception v7

    move-object v13, v14

    .end local v14    # "srcFile":Ljava/io/File;
    .restart local v13    # "srcFile":Ljava/io/File;
    move-object v2, v3

    .end local v3    # "bridgeProxyDir":Ljava/io/File;
    .restart local v2    # "bridgeProxyDir":Ljava/io/File;
    goto/16 :goto_10a

    .end local v2    # "bridgeProxyDir":Ljava/io/File;
    .end local v10    # "fosrc":Ljava/io/FileOutputStream;
    .end local v13    # "srcFile":Ljava/io/File;
    .restart local v3    # "bridgeProxyDir":Ljava/io/File;
    .restart local v11    # "fosrc":Ljava/io/FileOutputStream;
    .restart local v14    # "srcFile":Ljava/io/File;
    :catch_1df
    move-exception v7

    move-object v13, v14

    .end local v14    # "srcFile":Ljava/io/File;
    .restart local v13    # "srcFile":Ljava/io/File;
    move-object v2, v3

    .end local v3    # "bridgeProxyDir":Ljava/io/File;
    .restart local v2    # "bridgeProxyDir":Ljava/io/File;
    move-object v10, v11

    .end local v11    # "fosrc":Ljava/io/FileOutputStream;
    .restart local v10    # "fosrc":Ljava/io/FileOutputStream;
    goto/16 :goto_10a

    .end local v2    # "bridgeProxyDir":Ljava/io/File;
    .end local v4    # "destFile":Ljava/io/File;
    .end local v10    # "fosrc":Ljava/io/FileOutputStream;
    .end local v13    # "srcFile":Ljava/io/File;
    .restart local v3    # "bridgeProxyDir":Ljava/io/File;
    .restart local v5    # "destFile":Ljava/io/File;
    .restart local v11    # "fosrc":Ljava/io/FileOutputStream;
    .restart local v12    # "i":I
    .restart local v14    # "srcFile":Ljava/io/File;
    :catch_1e5
    move-exception v7

    move-object v4, v5

    .end local v5    # "destFile":Ljava/io/File;
    .restart local v4    # "destFile":Ljava/io/File;
    move-object v13, v14

    .end local v14    # "srcFile":Ljava/io/File;
    .restart local v13    # "srcFile":Ljava/io/File;
    move-object v2, v3

    .end local v3    # "bridgeProxyDir":Ljava/io/File;
    .restart local v2    # "bridgeProxyDir":Ljava/io/File;
    move-object v10, v11

    .end local v11    # "fosrc":Ljava/io/FileOutputStream;
    .restart local v10    # "fosrc":Ljava/io/FileOutputStream;
    goto/16 :goto_10a

    .end local v2    # "bridgeProxyDir":Ljava/io/File;
    .end local v4    # "destFile":Ljava/io/File;
    .end local v8    # "fosdst":Ljava/io/FileOutputStream;
    .end local v10    # "fosrc":Ljava/io/FileOutputStream;
    .end local v13    # "srcFile":Ljava/io/File;
    .restart local v3    # "bridgeProxyDir":Ljava/io/File;
    .restart local v5    # "destFile":Ljava/io/File;
    .restart local v9    # "fosdst":Ljava/io/FileOutputStream;
    .restart local v11    # "fosrc":Ljava/io/FileOutputStream;
    .restart local v14    # "srcFile":Ljava/io/File;
    :catch_1ec
    move-exception v7

    move-object v4, v5

    .end local v5    # "destFile":Ljava/io/File;
    .restart local v4    # "destFile":Ljava/io/File;
    move-object v13, v14

    .end local v14    # "srcFile":Ljava/io/File;
    .restart local v13    # "srcFile":Ljava/io/File;
    move-object v2, v3

    .end local v3    # "bridgeProxyDir":Ljava/io/File;
    .restart local v2    # "bridgeProxyDir":Ljava/io/File;
    move-object v8, v9

    .end local v9    # "fosdst":Ljava/io/FileOutputStream;
    .restart local v8    # "fosdst":Ljava/io/FileOutputStream;
    move-object v10, v11

    .end local v11    # "fosrc":Ljava/io/FileOutputStream;
    .restart local v10    # "fosrc":Ljava/io/FileOutputStream;
    goto/16 :goto_10a

    .end local v2    # "bridgeProxyDir":Ljava/io/File;
    .end local v4    # "destFile":Ljava/io/File;
    .end local v8    # "fosdst":Ljava/io/FileOutputStream;
    .end local v10    # "fosrc":Ljava/io/FileOutputStream;
    .end local v13    # "srcFile":Ljava/io/File;
    .restart local v3    # "bridgeProxyDir":Ljava/io/File;
    .restart local v5    # "destFile":Ljava/io/File;
    .restart local v9    # "fosdst":Ljava/io/FileOutputStream;
    .restart local v11    # "fosrc":Ljava/io/FileOutputStream;
    .restart local v14    # "srcFile":Ljava/io/File;
    :cond_1f4
    move-object v4, v5

    .end local v5    # "destFile":Ljava/io/File;
    .restart local v4    # "destFile":Ljava/io/File;
    move-object v13, v14

    .end local v14    # "srcFile":Ljava/io/File;
    .restart local v13    # "srcFile":Ljava/io/File;
    move-object v2, v3

    .end local v3    # "bridgeProxyDir":Ljava/io/File;
    .restart local v2    # "bridgeProxyDir":Ljava/io/File;
    move-object v8, v9

    .end local v9    # "fosdst":Ljava/io/FileOutputStream;
    .restart local v8    # "fosdst":Ljava/io/FileOutputStream;
    move-object v10, v11

    .end local v11    # "fosrc":Ljava/io/FileOutputStream;
    .restart local v10    # "fosrc":Ljava/io/FileOutputStream;
    goto/16 :goto_108
.end method

.method private isContainerStateIsValid(I)Z
    .registers 7
    .param p1, "moveToDstCId"    # I

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 1941
    invoke-static {v2}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v3

    if-ne p1, v3, :cond_12

    .line 1942
    # getter for: Lcom/android/server/bridge/BridgeProxy;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/bridge/BridgeProxy;->access$800()Ljava/lang/String;

    move-result-object v2

    const-string v3, "Move to Personal mode. return true"

    invoke-static {v2, v3}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1968
    :goto_11
    return v1

    .line 1945
    :cond_12
    iget-object v3, p0, this$0:Lcom/android/server/bridge/BridgeProxy;

    # getter for: Lcom/android/server/bridge/BridgeProxy;->mPm:Landroid/os/PersonaManager;
    invoke-static {v3}, Lcom/android/server/bridge/BridgeProxy;->access$700(Lcom/android/server/bridge/BridgeProxy;)Landroid/os/PersonaManager;

    move-result-object v3

    invoke-virtual {v3, p1}, Landroid/os/PersonaManager;->getPersonaInfo(I)Landroid/content/pm/PersonaInfo;

    move-result-object v0

    .line 1946
    .local v0, "info":Landroid/content/pm/PersonaInfo;
    if-nez v0, :cond_3a

    .line 1947
    # getter for: Lcom/android/server/bridge/BridgeProxy;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/bridge/BridgeProxy;->access$800()Ljava/lang/String;

    move-result-object v1

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Can\'t get a persona info. moveToDstCId = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move v1, v2

    .line 1948
    goto :goto_11

    .line 1951
    :cond_3a
    iget-object v3, p0, this$0:Lcom/android/server/bridge/BridgeProxy;

    # getter for: Lcom/android/server/bridge/BridgeProxy;->mPm:Landroid/os/PersonaManager;
    invoke-static {v3}, Lcom/android/server/bridge/BridgeProxy;->access$700(Lcom/android/server/bridge/BridgeProxy;)Landroid/os/PersonaManager;

    move-result-object v3

    invoke-virtual {v3, p1}, Landroid/os/PersonaManager;->getStateManager(I)Landroid/os/PersonaManager$StateManager;

    move-result-object v3

    sget-object v4, Landroid/content/pm/PersonaState;->SUPER_LOCKED:Landroid/content/pm/PersonaState;

    invoke-virtual {v3, v4}, Landroid/os/PersonaManager$StateManager;->inState(Landroid/content/pm/PersonaState;)Z

    move-result v3

    if-eqz v3, :cond_57

    .line 1952
    # getter for: Lcom/android/server/bridge/BridgeProxy;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/bridge/BridgeProxy;->access$800()Ljava/lang/String;

    move-result-object v1

    const-string v3, "Persona is superlocked"

    invoke-static {v1, v3}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move v1, v2

    .line 1953
    goto :goto_11

    .line 1954
    :cond_57
    iget-boolean v3, v0, Landroid/content/pm/PersonaInfo;->partial:Z

    if-eqz v3, :cond_66

    .line 1955
    # getter for: Lcom/android/server/bridge/BridgeProxy;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/bridge/BridgeProxy;->access$800()Ljava/lang/String;

    move-result-object v1

    const-string v3, "Persona is partially created"

    invoke-static {v1, v3}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move v1, v2

    .line 1956
    goto :goto_11

    .line 1957
    :cond_66
    iget-boolean v3, v0, Landroid/content/pm/PersonaInfo;->removePersona:Z

    if-eqz v3, :cond_75

    .line 1958
    # getter for: Lcom/android/server/bridge/BridgeProxy;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/bridge/BridgeProxy;->access$800()Ljava/lang/String;

    move-result-object v1

    const-string v3, "Persona is removed"

    invoke-static {v1, v3}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move v1, v2

    .line 1959
    goto :goto_11

    .line 1961
    :cond_75
    iget-object v3, p0, this$0:Lcom/android/server/bridge/BridgeProxy;

    # getter for: Lcom/android/server/bridge/BridgeProxy;->mPm:Landroid/os/PersonaManager;
    invoke-static {v3}, Lcom/android/server/bridge/BridgeProxy;->access$700(Lcom/android/server/bridge/BridgeProxy;)Landroid/os/PersonaManager;

    move-result-object v3

    invoke-virtual {v3, p1}, Landroid/os/PersonaManager;->getStateManager(I)Landroid/os/PersonaManager$StateManager;

    move-result-object v3

    sget-object v4, Landroid/content/pm/PersonaState;->DELETING:Landroid/content/pm/PersonaState;

    invoke-virtual {v3, v4}, Landroid/os/PersonaManager$StateManager;->inState(Landroid/content/pm/PersonaState;)Z

    move-result v3

    if-nez v3, :cond_99

    iget-object v3, p0, this$0:Lcom/android/server/bridge/BridgeProxy;

    # getter for: Lcom/android/server/bridge/BridgeProxy;->mPm:Landroid/os/PersonaManager;
    invoke-static {v3}, Lcom/android/server/bridge/BridgeProxy;->access$700(Lcom/android/server/bridge/BridgeProxy;)Landroid/os/PersonaManager;

    move-result-object v3

    invoke-virtual {v3, p1}, Landroid/os/PersonaManager;->getStateManager(I)Landroid/os/PersonaManager$StateManager;

    move-result-object v3

    sget-object v4, Landroid/content/pm/PersonaState;->CREATING:Landroid/content/pm/PersonaState;

    invoke-virtual {v3, v4}, Landroid/os/PersonaManager$StateManager;->inState(Landroid/content/pm/PersonaState;)Z

    move-result v3

    if-eqz v3, :cond_a5

    .line 1963
    :cond_99
    # getter for: Lcom/android/server/bridge/BridgeProxy;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/bridge/BridgeProxy;->access$800()Ljava/lang/String;

    move-result-object v1

    const-string v3, "Persona state is invalid for moving files "

    invoke-static {v1, v3}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move v1, v2

    .line 1964
    goto/16 :goto_11

    .line 1967
    :cond_a5
    # getter for: Lcom/android/server/bridge/BridgeProxy;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/bridge/BridgeProxy;->access$800()Ljava/lang/String;

    move-result-object v2

    const-string v3, "Persona state is valid for moving files"

    invoke-static {v2, v3}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_11
.end method


# virtual methods
.method public cancel(J)V
    .registers 8
    .param p1, "threadId"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 2187
    iget-object v2, p0, this$0:Lcom/android/server/bridge/BridgeProxy;

    const-string v3, "cancel"

    # invokes: Lcom/android/server/bridge/BridgeProxy;->checkCallerPermissionFor(Ljava/lang/String;)I
    invoke-static {v2, v3}, Lcom/android/server/bridge/BridgeProxy;->access$1800(Lcom/android/server/bridge/BridgeProxy;Ljava/lang/String;)I

    .line 2188
    # getter for: Lcom/android/server/bridge/BridgeProxy;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/bridge/BridgeProxy;->access$800()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "cancel() threadId="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/server/bridge/BridgeProxy$BridgeLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2190
    new-instance v1, Landroid/content/Intent;

    const-string v2, "com.sec.knox.bridge.service.ACTION_FILE_OPERATIONS"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 2193
    .local v1, "mIntent":Landroid/content/Intent;
    iget-object v2, p0, this$0:Lcom/android/server/bridge/BridgeProxy;

    # getter for: Lcom/android/server/bridge/BridgeProxy;->mBridgePackage:Ljava/lang/String;
    invoke-static {v2}, Lcom/android/server/bridge/BridgeProxy;->access$3200(Lcom/android/server/bridge/BridgeProxy;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 2194
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 2195
    .local v0, "mBundle":Landroid/os/Bundle;
    const-string/jumbo v2, "task"

    const-string v3, "TASK_CANCEL_FILE_OPERATION"

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 2196
    const-string/jumbo v2, "sessionId"

    invoke-virtual {v0, v2, p1, p2}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 2197
    invoke-virtual {v1, v0}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 2198
    # getter for: Lcom/android/server/bridge/BridgeProxy;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/bridge/BridgeProxy;->access$800()Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "moveFiles(), Starting FileOperationsHandler service TASK_CANCEL_FILE_OPERATION"

    invoke-static {v2, v3}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2200
    iget-object v2, p0, this$0:Lcom/android/server/bridge/BridgeProxy;

    # getter for: Lcom/android/server/bridge/BridgeProxy;->mContext:Landroid/content/Context;
    invoke-static {v2}, Lcom/android/server/bridge/BridgeProxy;->access$1000(Lcom/android/server/bridge/BridgeProxy;)Landroid/content/Context;

    move-result-object v2

    iget-object v3, p0, this$0:Lcom/android/server/bridge/BridgeProxy;

    # getter for: Lcom/android/server/bridge/BridgeProxy;->mDelegateUserHandle:Landroid/os/UserHandle;
    invoke-static {v3}, Lcom/android/server/bridge/BridgeProxy;->access$900(Lcom/android/server/bridge/BridgeProxy;)Landroid/os/UserHandle;

    move-result-object v3

    invoke-virtual {v2, v1, v3}, Landroid/content/Context;->startServiceAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)Landroid/content/ComponentName;

    .line 2201
    return-void
.end method

.method public cancelCopyChunks(J)V
    .registers 6
    .param p1, "sessionId"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 2179
    iget-object v0, p0, this$0:Lcom/android/server/bridge/BridgeProxy;

    const-string v1, "cancelCopyChunks"

    # invokes: Lcom/android/server/bridge/BridgeProxy;->checkCallerPermissionFor(Ljava/lang/String;)I
    invoke-static {v0, v1}, Lcom/android/server/bridge/BridgeProxy;->access$1800(Lcom/android/server/bridge/BridgeProxy;Ljava/lang/String;)I

    .line 2180
    # getter for: Lcom/android/server/bridge/BridgeProxy;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/bridge/BridgeProxy;->access$800()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "cancelCopyChunks() sessionId="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/server/bridge/BridgeProxy$BridgeLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2181
    iget-object v0, p0, this$0:Lcom/android/server/bridge/BridgeProxy;

    # getter for: Lcom/android/server/bridge/BridgeProxy;->mbridge:Landroid/os/RCPManager;
    invoke-static {v0}, Lcom/android/server/bridge/BridgeProxy;->access$3000(Lcom/android/server/bridge/BridgeProxy;)Landroid/os/RCPManager;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Landroid/os/RCPManager;->cancelCopyChunks(J)V

    .line 2182
    return-void
.end method

.method public copyChunks(ILjava/lang/String;ILjava/lang/String;JIJZ)I
    .registers 13
    .param p1, "srcContainerId"    # I
    .param p2, "srcFilePath"    # Ljava/lang/String;
    .param p3, "destContainerId"    # I
    .param p4, "destFilePath"    # Ljava/lang/String;
    .param p5, "offset"    # J
    .param p7, "length"    # I
    .param p8, "sessionId"    # J
    .param p10, "deleteSrc"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 2173
    # getter for: Lcom/android/server/bridge/BridgeProxy;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/bridge/BridgeProxy;->access$800()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Warning!!!!  copyChunks() is disabled!!!"

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2174
    const v0, -0x2ed993

    return v0
.end method

.method public copyFile(ILjava/lang/String;ILjava/lang/String;)I
    .registers 10
    .param p1, "srcContainerId"    # I
    .param p2, "srcFilePath"    # Ljava/lang/String;
    .param p3, "destContainerId"    # I
    .param p4, "destFilePath"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 1872
    iget-object v2, p0, this$0:Lcom/android/server/bridge/BridgeProxy;

    const-string v3, "copyFile"

    # invokes: Lcom/android/server/bridge/BridgeProxy;->checkCallerPermissionFor(Ljava/lang/String;)I
    invoke-static {v2, v3}, Lcom/android/server/bridge/BridgeProxy;->access$1800(Lcom/android/server/bridge/BridgeProxy;Ljava/lang/String;)I

    .line 1873
    # getter for: Lcom/android/server/bridge/BridgeProxy;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/bridge/BridgeProxy;->access$800()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "copyFile() srcContainerId="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "; srcFilePath="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "; destContainerId="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "; destFilePath="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1878
    iget-object v2, p0, this$0:Lcom/android/server/bridge/BridgeProxy;

    const/4 v3, 0x1

    # invokes: Lcom/android/server/bridge/BridgeProxy;->getFilesPolicy(II)I
    invoke-static {v2, p1, v3}, Lcom/android/server/bridge/BridgeProxy;->access$3500(Lcom/android/server/bridge/BridgeProxy;II)I

    move-result v0

    .line 1879
    .local v0, "exportCheck":I
    if-eqz v0, :cond_6d

    .line 1880
    # getter for: Lcom/android/server/bridge/BridgeProxy;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/bridge/BridgeProxy;->access$800()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "copyFile(): Permissions (POLICY_NOT_ALLOWED)  or error for srcContainerId="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "; exportCheck="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1897
    .end local v0    # "exportCheck":I
    :goto_6c
    return v0

    .line 1887
    .restart local v0    # "exportCheck":I
    :cond_6d
    iget-object v2, p0, this$0:Lcom/android/server/bridge/BridgeProxy;

    const/4 v3, 0x2

    # invokes: Lcom/android/server/bridge/BridgeProxy;->getFilesPolicy(II)I
    invoke-static {v2, p3, v3}, Lcom/android/server/bridge/BridgeProxy;->access$3500(Lcom/android/server/bridge/BridgeProxy;II)I

    move-result v1

    .line 1888
    .local v1, "importCheck":I
    if-eqz v1, :cond_9c

    .line 1889
    # getter for: Lcom/android/server/bridge/BridgeProxy;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/bridge/BridgeProxy;->access$800()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "copyFile(): Permissions (POLICY_NOT_ALLOWED) or error for destContainerId="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "; importCheck="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move v0, v1

    .line 1892
    goto :goto_6c

    .line 1895
    :cond_9c
    invoke-direct {p0, p2, p4}, changeExtSdPath(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p4

    .line 1897
    iget-object v2, p0, this$0:Lcom/android/server/bridge/BridgeProxy;

    # getter for: Lcom/android/server/bridge/BridgeProxy;->mbridge:Landroid/os/RCPManager;
    invoke-static {v2}, Lcom/android/server/bridge/BridgeProxy;->access$3000(Lcom/android/server/bridge/BridgeProxy;)Landroid/os/RCPManager;

    move-result-object v2

    invoke-virtual {v2, p1, p2, p3, p4}, Landroid/os/RCPManager;->copyFileInternal(ILjava/lang/String;ILjava/lang/String;)I

    move-result v0

    goto :goto_6c
.end method

.method public copyFiles(ILjava/util/List;ILjava/util/List;Landroid/content/IRCPInterfaceCallback;)J
    .registers 14
    .param p1, "srcContainerId"    # I
    .param p3, "destContainerId"    # I
    .param p5, "callback"    # Landroid/content/IRCPInterfaceCallback;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;I",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Landroid/content/IRCPInterfaceCallback;",
            ")J"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 1626
    .local p2, "srcFilePaths":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .local p4, "destFilePaths":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    iget-object v4, p0, this$0:Lcom/android/server/bridge/BridgeProxy;

    const-string v5, "copyFiles"

    # invokes: Lcom/android/server/bridge/BridgeProxy;->checkCallerPermissionFor(Ljava/lang/String;)I
    invoke-static {v4, v5}, Lcom/android/server/bridge/BridgeProxy;->access$1800(Lcom/android/server/bridge/BridgeProxy;Ljava/lang/String;)I

    .line 1627
    # getter for: Lcom/android/server/bridge/BridgeProxy;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/bridge/BridgeProxy;->access$800()Ljava/lang/String;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "copyFiles() srcContainerId="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "; srcFilePaths="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "; destContainerId="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "; destFilePaths="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {p4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/android/server/bridge/BridgeProxy$BridgeLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1632
    new-instance v2, Landroid/content/Intent;

    const-string v4, "com.sec.knox.bridge.service.ACTION_FILE_OPERATIONS"

    invoke-direct {v2, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1635
    .local v2, "mIntent":Landroid/content/Intent;
    iget-object v4, p0, this$0:Lcom/android/server/bridge/BridgeProxy;

    # getter for: Lcom/android/server/bridge/BridgeProxy;->mBridgePackage:Ljava/lang/String;
    invoke-static {v4}, Lcom/android/server/bridge/BridgeProxy;->access$3200(Lcom/android/server/bridge/BridgeProxy;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 1636
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 1637
    .local v0, "mBundle":Landroid/os/Bundle;
    const-string/jumbo v4, "task"

    const-string v5, "TASK_COPY_FILES"

    invoke-virtual {v0, v4, v5}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1638
    const-string/jumbo v4, "srcContainerId"

    invoke-virtual {v0, v4, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1639
    const-string/jumbo v4, "destContainerId"

    invoke-virtual {v0, v4, p3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1640
    const-string/jumbo v4, "srcFilePaths"

    check-cast p2, Ljava/util/ArrayList;

    .end local p2    # "srcFilePaths":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-virtual {v0, v4, p2}, Landroid/os/Bundle;->putStringArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 1641
    const-string/jumbo v4, "destFilePaths"

    check-cast p4, Ljava/util/ArrayList;

    .end local p4    # "destFilePaths":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-virtual {v0, v4, p4}, Landroid/os/Bundle;->putStringArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 1643
    new-instance v1, Landroid/os/Messenger;

    invoke-interface {p5}, Landroid/content/IRCPInterfaceCallback;->asBinder()Landroid/os/IBinder;

    move-result-object v4

    invoke-direct {v1, v4}, Landroid/os/Messenger;-><init>(Landroid/os/IBinder;)V

    .line 1644
    .local v1, "mCallBackMessenger":Landroid/os/Messenger;
    const-string v4, "callBackMessenger"

    invoke-virtual {v0, v4, v1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 1646
    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v4

    const-wide v6, 0x40c3880000000000L    # 10000.0

    mul-double/2addr v4, v6

    double-to-long v4, v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    .line 1647
    .local v3, "mSessionId":Ljava/lang/Long;
    # getter for: Lcom/android/server/bridge/BridgeProxy;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/bridge/BridgeProxy;->access$800()Ljava/lang/String;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "copyFiles() ,mSessionId :"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1648
    const-string/jumbo v4, "sessionId"

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    invoke-virtual {v0, v4, v6, v7}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 1650
    invoke-virtual {v2, v0}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 1651
    # getter for: Lcom/android/server/bridge/BridgeProxy;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/bridge/BridgeProxy;->access$800()Ljava/lang/String;

    move-result-object v4

    const-string v5, "copyFiles(), Starting FileOperationsHandler service TASK_COPY_FILES"

    invoke-static {v4, v5}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1652
    iget-object v4, p0, this$0:Lcom/android/server/bridge/BridgeProxy;

    # getter for: Lcom/android/server/bridge/BridgeProxy;->mContext:Landroid/content/Context;
    invoke-static {v4}, Lcom/android/server/bridge/BridgeProxy;->access$1000(Lcom/android/server/bridge/BridgeProxy;)Landroid/content/Context;

    move-result-object v4

    iget-object v5, p0, this$0:Lcom/android/server/bridge/BridgeProxy;

    # getter for: Lcom/android/server/bridge/BridgeProxy;->mDelegateUserHandle:Landroid/os/UserHandle;
    invoke-static {v5}, Lcom/android/server/bridge/BridgeProxy;->access$900(Lcom/android/server/bridge/BridgeProxy;)Landroid/os/UserHandle;

    move-result-object v5

    invoke-virtual {v4, v2, v5}, Landroid/content/Context;->startServiceAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)Landroid/content/ComponentName;

    .line 1653
    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    return-wide v4
.end method

.method public getErrorMessage(I)Ljava/lang/String;
    .registers 7
    .param p1, "errorId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 2096
    iget-object v2, p0, this$0:Lcom/android/server/bridge/BridgeProxy;

    const-string/jumbo v3, "getErrorMessage"

    # invokes: Lcom/android/server/bridge/BridgeProxy;->checkCallerPermissionFor(Ljava/lang/String;)I
    invoke-static {v2, v3}, Lcom/android/server/bridge/BridgeProxy;->access$1800(Lcom/android/server/bridge/BridgeProxy;Ljava/lang/String;)I

    .line 2097
    const/16 v1, 0x1f4

    .line 2099
    .local v1, "resourceId":I
    sparse-switch p1, :sswitch_data_8e

    .line 2129
    :try_start_d
    iget-object v2, p0, this$0:Lcom/android/server/bridge/BridgeProxy;

    const-string v3, "UNDEFINED"

    # invokes: Lcom/android/server/bridge/BridgeProxy;->getBridgeStringResourceId(Ljava/lang/String;)I
    invoke-static {v2, v3}, Lcom/android/server/bridge/BridgeProxy;->access$3600(Lcom/android/server/bridge/BridgeProxy;Ljava/lang/String;)I

    move-result v1

    .line 2132
    :goto_15
    iget-object v2, p0, this$0:Lcom/android/server/bridge/BridgeProxy;

    const-string v3, "REGISTRATION_EXCEPTION"

    # invokes: Lcom/android/server/bridge/BridgeProxy;->getBridgeStringResourceId(Ljava/lang/String;)I
    invoke-static {v2, v3}, Lcom/android/server/bridge/BridgeProxy;->access$3600(Lcom/android/server/bridge/BridgeProxy;Ljava/lang/String;)I

    move-result v2

    if-ne v1, v2, :cond_59

    .line 2133
    iget-object v2, p0, this$0:Lcom/android/server/bridge/BridgeProxy;

    iget-object v3, p0, this$0:Lcom/android/server/bridge/BridgeProxy;

    # getter for: Lcom/android/server/bridge/BridgeProxy;->mCurrentInvalidKnoxName:Ljava/lang/String;
    invoke-static {v3}, Lcom/android/server/bridge/BridgeProxy;->access$3300(Lcom/android/server/bridge/BridgeProxy;)Ljava/lang/String;

    move-result-object v3

    # invokes: Lcom/android/server/bridge/BridgeProxy;->getBridgeStringResource(ILjava/lang/String;)Ljava/lang/String;
    invoke-static {v2, v1, v3}, Lcom/android/server/bridge/BridgeProxy;->access$3700(Lcom/android/server/bridge/BridgeProxy;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 2142
    :goto_2b
    return-object v2

    .line 2101
    :sswitch_2c
    iget-object v2, p0, this$0:Lcom/android/server/bridge/BridgeProxy;

    const-string v3, "SUCCESS"

    # invokes: Lcom/android/server/bridge/BridgeProxy;->getBridgeStringResourceId(Ljava/lang/String;)I
    invoke-static {v2, v3}, Lcom/android/server/bridge/BridgeProxy;->access$3600(Lcom/android/server/bridge/BridgeProxy;Ljava/lang/String;)I

    move-result v1

    .line 2102
    goto :goto_15

    .line 2105
    :sswitch_35
    iget-object v2, p0, this$0:Lcom/android/server/bridge/BridgeProxy;

    const-string v3, "ENOSPC"

    # invokes: Lcom/android/server/bridge/BridgeProxy;->getBridgeStringResourceId(Ljava/lang/String;)I
    invoke-static {v2, v3}, Lcom/android/server/bridge/BridgeProxy;->access$3600(Lcom/android/server/bridge/BridgeProxy;Ljava/lang/String;)I

    move-result v1

    .line 2106
    goto :goto_15

    .line 2109
    :sswitch_3e
    iget-object v2, p0, this$0:Lcom/android/server/bridge/BridgeProxy;

    const-string v3, "POLICY_NOT_ALLOWED"

    # invokes: Lcom/android/server/bridge/BridgeProxy;->getBridgeStringResourceId(Ljava/lang/String;)I
    invoke-static {v2, v3}, Lcom/android/server/bridge/BridgeProxy;->access$3600(Lcom/android/server/bridge/BridgeProxy;Ljava/lang/String;)I

    move-result v1

    .line 2110
    goto :goto_15

    .line 2113
    :sswitch_47
    iget-object v2, p0, this$0:Lcom/android/server/bridge/BridgeProxy;

    const-string v3, "REGISTRATION_EXCEPTION"

    # invokes: Lcom/android/server/bridge/BridgeProxy;->getBridgeStringResourceId(Ljava/lang/String;)I
    invoke-static {v2, v3}, Lcom/android/server/bridge/BridgeProxy;->access$3600(Lcom/android/server/bridge/BridgeProxy;Ljava/lang/String;)I

    move-result v1

    .line 2114
    goto :goto_15

    .line 2125
    :sswitch_50
    iget-object v2, p0, this$0:Lcom/android/server/bridge/BridgeProxy;

    const-string v3, "UNDEFINED"

    # invokes: Lcom/android/server/bridge/BridgeProxy;->getBridgeStringResourceId(Ljava/lang/String;)I
    invoke-static {v2, v3}, Lcom/android/server/bridge/BridgeProxy;->access$3600(Lcom/android/server/bridge/BridgeProxy;Ljava/lang/String;)I

    move-result v1

    .line 2126
    goto :goto_15

    .line 2135
    :cond_59
    iget-object v2, p0, this$0:Lcom/android/server/bridge/BridgeProxy;

    # invokes: Lcom/android/server/bridge/BridgeProxy;->getBridgeStringResource(I)Ljava/lang/String;
    invoke-static {v2, v1}, Lcom/android/server/bridge/BridgeProxy;->access$3800(Lcom/android/server/bridge/BridgeProxy;I)Ljava/lang/String;
    :try_end_5e
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_5e} :catch_60

    move-result-object v2

    goto :goto_2b

    .line 2137
    :catch_60
    move-exception v0

    .line 2138
    .local v0, "e":Ljava/lang/Exception;
    # getter for: Lcom/android/server/bridge/BridgeProxy;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/bridge/BridgeProxy;->access$800()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "getErrorMessage(): cannot get error resource for resourceId="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "; message: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/server/bridge/BridgeProxy$BridgeLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2142
    const-string v2, "General error"

    goto :goto_2b

    .line 2099
    nop

    :sswitch_data_8e
    .sparse-switch
        -0xf4242 -> :sswitch_50
        -0xf4241 -> :sswitch_47
        -0xf4240 -> :sswitch_3e
        -0x24 -> :sswitch_50
        -0x1c -> :sswitch_35
        -0x10 -> :sswitch_50
        -0xd -> :sswitch_50
        -0x2 -> :sswitch_50
        0x0 -> :sswitch_2c
        0x1 -> :sswitch_50
        0x6 -> :sswitch_50
        0x8 -> :sswitch_35
        0xa -> :sswitch_50
        0xb -> :sswitch_3e
        0xc -> :sswitch_47
        0xd -> :sswitch_50
        0xe -> :sswitch_50
    .end sparse-switch
.end method

.method public getFileInfo(Ljava/lang/String;I)Landroid/os/Bundle;
    .registers 6
    .param p1, "path"    # Ljava/lang/String;
    .param p2, "containerId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 2159
    iget-object v0, p0, this$0:Lcom/android/server/bridge/BridgeProxy;

    const-string/jumbo v1, "getFileInfo"

    # invokes: Lcom/android/server/bridge/BridgeProxy;->checkCallerPermissionFor(Ljava/lang/String;)I
    invoke-static {v0, v1}, Lcom/android/server/bridge/BridgeProxy;->access$1800(Lcom/android/server/bridge/BridgeProxy;Ljava/lang/String;)I

    .line 2160
    # getter for: Lcom/android/server/bridge/BridgeProxy;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/bridge/BridgeProxy;->access$800()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "getFileInfo(): path="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "; containerId="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/server/bridge/BridgeProxy$BridgeLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2161
    iget-object v0, p0, this$0:Lcom/android/server/bridge/BridgeProxy;

    # getter for: Lcom/android/server/bridge/BridgeProxy;->mbridge:Landroid/os/RCPManager;
    invoke-static {v0}, Lcom/android/server/bridge/BridgeProxy;->access$3000(Lcom/android/server/bridge/BridgeProxy;)Landroid/os/RCPManager;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Landroid/os/RCPManager;->getFileInfo(Ljava/lang/String;I)Landroid/os/Bundle;

    move-result-object v0

    return-object v0
.end method

.method public getFiles(Ljava/lang/String;I)Ljava/util/List;
    .registers 5
    .param p1, "path"    # Ljava/lang/String;
    .param p2, "containerId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I)",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 2153
    iget-object v0, p0, this$0:Lcom/android/server/bridge/BridgeProxy;

    const-string/jumbo v1, "getFiles"

    # invokes: Lcom/android/server/bridge/BridgeProxy;->checkCallerPermissionFor(Ljava/lang/String;)I
    invoke-static {v0, v1}, Lcom/android/server/bridge/BridgeProxy;->access$1800(Lcom/android/server/bridge/BridgeProxy;Ljava/lang/String;)I

    .line 2154
    iget-object v0, p0, this$0:Lcom/android/server/bridge/BridgeProxy;

    # getter for: Lcom/android/server/bridge/BridgeProxy;->mbridge:Landroid/os/RCPManager;
    invoke-static {v0}, Lcom/android/server/bridge/BridgeProxy;->access$3000(Lcom/android/server/bridge/BridgeProxy;)Landroid/os/RCPManager;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Landroid/os/RCPManager;->getFiles(Ljava/lang/String;I)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method isContainerIdIsValid(II)Z
    .registers 4
    .param p1, "srcContainerId"    # I
    .param p2, "destContainerId"    # I

    .prologue
    .line 1996
    const/4 v0, 0x1

    invoke-virtual {p0, p1, p2, v0}, isContainerIdIsValid(IIZ)Z

    move-result v0

    return v0
.end method

.method isContainerIdIsValid(IIZ)Z
    .registers 7
    .param p1, "srcContainerId"    # I
    .param p2, "destContainerId"    # I
    .param p3, "isMoveOperation"    # Z

    .prologue
    const/4 v1, 0x0

    .line 2000
    if-eqz p3, :cond_3e

    .line 2001
    if-ne p1, p2, :cond_6

    .line 2031
    :cond_5
    :goto_5
    return v1

    .line 2004
    :cond_6
    if-ltz p1, :cond_5

    if-ltz p2, :cond_5

    .line 2008
    const/4 v0, 0x0

    .line 2009
    .local v0, "uid":I
    iget-object v2, p0, this$0:Lcom/android/server/bridge/BridgeProxy;

    # getter for: Lcom/android/server/bridge/BridgeProxy;->mDelegateUserId:I
    invoke-static {v2}, Lcom/android/server/bridge/BridgeProxy;->access$600(Lcom/android/server/bridge/BridgeProxy;)I

    move-result v0

    .line 2011
    if-nez v0, :cond_23

    .line 2012
    iget-object v2, p0, this$0:Lcom/android/server/bridge/BridgeProxy;

    # getter for: Lcom/android/server/bridge/BridgeProxy;->mPm:Landroid/os/PersonaManager;
    invoke-static {v2}, Lcom/android/server/bridge/BridgeProxy;->access$700(Lcom/android/server/bridge/BridgeProxy;)Landroid/os/PersonaManager;

    move-result-object v2

    invoke-virtual {v2, p2}, Landroid/os/PersonaManager;->exists(I)Z

    move-result v2

    if-eqz v2, :cond_5

    if-nez p1, :cond_5

    .line 2031
    .end local v0    # "uid":I
    :cond_21
    const/4 v1, 0x1

    goto :goto_5

    .line 2015
    .restart local v0    # "uid":I
    :cond_23
    iget-object v2, p0, this$0:Lcom/android/server/bridge/BridgeProxy;

    # getter for: Lcom/android/server/bridge/BridgeProxy;->mPm:Landroid/os/PersonaManager;
    invoke-static {v2}, Lcom/android/server/bridge/BridgeProxy;->access$700(Lcom/android/server/bridge/BridgeProxy;)Landroid/os/PersonaManager;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/os/PersonaManager;->exists(I)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 2016
    if-nez p2, :cond_5

    iget-object v2, p0, this$0:Lcom/android/server/bridge/BridgeProxy;

    # getter for: Lcom/android/server/bridge/BridgeProxy;->mPm:Landroid/os/PersonaManager;
    invoke-static {v2}, Lcom/android/server/bridge/BridgeProxy;->access$700(Lcom/android/server/bridge/BridgeProxy;)Landroid/os/PersonaManager;

    move-result-object v2

    invoke-virtual {v2, p1}, Landroid/os/PersonaManager;->exists(I)Z

    move-result v2

    if-nez v2, :cond_21

    goto :goto_5

    .line 2023
    .end local v0    # "uid":I
    :cond_3e
    if-ne p1, p2, :cond_5

    .line 2026
    if-ltz p1, :cond_5

    if-gez p2, :cond_21

    goto :goto_5
.end method

.method public isFileExist(Ljava/lang/String;I)Z
    .registers 5
    .param p1, "path"    # Ljava/lang/String;
    .param p2, "containerId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 2147
    iget-object v0, p0, this$0:Lcom/android/server/bridge/BridgeProxy;

    const-string/jumbo v1, "isFileExist"

    # invokes: Lcom/android/server/bridge/BridgeProxy;->checkCallerPermissionFor(Ljava/lang/String;)I
    invoke-static {v0, v1}, Lcom/android/server/bridge/BridgeProxy;->access$1800(Lcom/android/server/bridge/BridgeProxy;Ljava/lang/String;)I

    .line 2148
    iget-object v0, p0, this$0:Lcom/android/server/bridge/BridgeProxy;

    # getter for: Lcom/android/server/bridge/BridgeProxy;->mbridge:Landroid/os/RCPManager;
    invoke-static {v0}, Lcom/android/server/bridge/BridgeProxy;->access$3000(Lcom/android/server/bridge/BridgeProxy;)Landroid/os/RCPManager;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Landroid/os/RCPManager;->isFileExist(Ljava/lang/String;I)Z

    move-result v0

    return v0
.end method

.method isMoveFilesAllowed(II)Z
    .registers 15
    .param p1, "srcContainerId"    # I
    .param p2, "destContainerId"    # I

    .prologue
    .line 2036
    const/4 v4, 0x0

    .line 2038
    .local v4, "pi":Landroid/content/pm/PersonaInfo;
    iget-object v9, p0, this$0:Lcom/android/server/bridge/BridgeProxy;

    # getter for: Lcom/android/server/bridge/BridgeProxy;->mPm:Landroid/os/PersonaManager;
    invoke-static {v9}, Lcom/android/server/bridge/BridgeProxy;->access$700(Lcom/android/server/bridge/BridgeProxy;)Landroid/os/PersonaManager;

    move-result-object v9

    if-eqz v9, :cond_1f

    .line 2039
    iget-object v9, p0, this$0:Lcom/android/server/bridge/BridgeProxy;

    # getter for: Lcom/android/server/bridge/BridgeProxy;->mPm:Landroid/os/PersonaManager;
    invoke-static {v9}, Lcom/android/server/bridge/BridgeProxy;->access$700(Lcom/android/server/bridge/BridgeProxy;)Landroid/os/PersonaManager;

    move-result-object v9

    invoke-virtual {v9, p1}, Landroid/os/PersonaManager;->exists(I)Z

    move-result v9

    if-eqz v9, :cond_31

    .line 2040
    iget-object v9, p0, this$0:Lcom/android/server/bridge/BridgeProxy;

    # getter for: Lcom/android/server/bridge/BridgeProxy;->mPm:Landroid/os/PersonaManager;
    invoke-static {v9}, Lcom/android/server/bridge/BridgeProxy;->access$700(Lcom/android/server/bridge/BridgeProxy;)Landroid/os/PersonaManager;

    move-result-object v9

    invoke-virtual {v9, p1}, Landroid/os/PersonaManager;->getPersonaInfo(I)Landroid/content/pm/PersonaInfo;

    move-result-object v4

    .line 2046
    :cond_1f
    :goto_1f
    if-eqz v4, :cond_3c

    iget-boolean v9, v4, Landroid/content/pm/PersonaInfo;->isUserManaged:Z

    if-eqz v9, :cond_3c

    .line 2047
    # getter for: Lcom/android/server/bridge/BridgeProxy;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/bridge/BridgeProxy;->access$800()Ljava/lang/String;

    move-result-object v9

    const-string/jumbo v10, "isMoveFilesAllowed : user managed container. return true"

    invoke-static {v9, v10}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2048
    const/4 v6, 0x1

    .line 2089
    :goto_30
    return v6

    .line 2042
    :cond_31
    iget-object v9, p0, this$0:Lcom/android/server/bridge/BridgeProxy;

    # getter for: Lcom/android/server/bridge/BridgeProxy;->mPm:Landroid/os/PersonaManager;
    invoke-static {v9}, Lcom/android/server/bridge/BridgeProxy;->access$700(Lcom/android/server/bridge/BridgeProxy;)Landroid/os/PersonaManager;

    move-result-object v9

    invoke-virtual {v9, p2}, Landroid/os/PersonaManager;->getPersonaInfo(I)Landroid/content/pm/PersonaInfo;

    move-result-object v4

    goto :goto_1f

    .line 2051
    :cond_3c
    invoke-static {}, Lcom/sec/enterprise/knox/EnterpriseKnoxManager;->getInstance()Lcom/sec/enterprise/knox/EnterpriseKnoxManager;

    move-result-object v2

    .line 2052
    .local v2, "ekm":Lcom/sec/enterprise/knox/EnterpriseKnoxManager;
    iget-object v9, p0, this$0:Lcom/android/server/bridge/BridgeProxy;

    # getter for: Lcom/android/server/bridge/BridgeProxy;->mDelegateUserId:I
    invoke-static {v9}, Lcom/android/server/bridge/BridgeProxy;->access$600(Lcom/android/server/bridge/BridgeProxy;)I

    move-result v8

    .line 2053
    .local v8, "uid":I
    const/4 v7, 0x0

    .line 2054
    .local v7, "retToOwner":Z
    const/4 v6, 0x1

    .line 2056
    .local v6, "retToKnox":Z
    if-nez v8, :cond_96

    .line 2058
    :try_start_4a
    iget-object v9, p0, this$0:Lcom/android/server/bridge/BridgeProxy;

    # getter for: Lcom/android/server/bridge/BridgeProxy;->mContext:Landroid/content/Context;
    invoke-static {v9}, Lcom/android/server/bridge/BridgeProxy;->access$1000(Lcom/android/server/bridge/BridgeProxy;)Landroid/content/Context;

    move-result-object v9

    invoke-virtual {v2, v9, p2}, Lcom/sec/enterprise/knox/EnterpriseKnoxManager;->getKnoxContainerManager(Landroid/content/Context;I)Lcom/sec/enterprise/knox/container/KnoxContainerManager;

    move-result-object v0

    .line 2060
    .local v0, "containerMgr":Lcom/sec/enterprise/knox/container/KnoxContainerManager;
    invoke-virtual {v0}, Lcom/sec/enterprise/knox/container/KnoxContainerManager;->getRCPPolicy()Lcom/sec/enterprise/knox/container/RCPPolicy;

    move-result-object v5

    .line 2061
    .local v5, "rcpPolicy":Lcom/sec/enterprise/knox/container/RCPPolicy;
    invoke-virtual {v5}, Lcom/sec/enterprise/knox/container/RCPPolicy;->isMoveFilesToContainerAllowed()Z
    :try_end_5b
    .catch Ljava/lang/SecurityException; {:try_start_4a .. :try_end_5b} :catch_7c
    .catch Ljava/lang/NullPointerException; {:try_start_4a .. :try_end_5b} :catch_89

    move-result v6

    .line 2069
    .end local v0    # "containerMgr":Lcom/sec/enterprise/knox/container/KnoxContainerManager;
    .end local v5    # "rcpPolicy":Lcom/sec/enterprise/knox/container/RCPPolicy;
    :goto_5c
    # getter for: Lcom/android/server/bridge/BridgeProxy;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/bridge/BridgeProxy;->access$800()Ljava/lang/String;

    move-result-object v9

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "isMoveFilesAllowed : retToKnox = "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-static {v6}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_30

    .line 2062
    :catch_7c
    move-exception v1

    .line 2063
    .local v1, "e":Ljava/lang/SecurityException;
    # getter for: Lcom/android/server/bridge/BridgeProxy;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/bridge/BridgeProxy;->access$800()Ljava/lang/String;

    move-result-object v9

    const-string/jumbo v10, "isMoveFilesAllowed : SecurityException occured"

    invoke-static {v9, v10}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2064
    const/4 v6, 0x1

    .line 2068
    goto :goto_5c

    .line 2065
    .end local v1    # "e":Ljava/lang/SecurityException;
    :catch_89
    move-exception v3

    .line 2066
    .local v3, "npe":Ljava/lang/NullPointerException;
    # getter for: Lcom/android/server/bridge/BridgeProxy;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/bridge/BridgeProxy;->access$800()Ljava/lang/String;

    move-result-object v9

    const-string/jumbo v10, "isMoveFilesAllowed : NullPointerException occured"

    invoke-static {v9, v10}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2067
    const/4 v6, 0x1

    goto :goto_5c

    .line 2072
    .end local v3    # "npe":Ljava/lang/NullPointerException;
    :cond_96
    iget-object v9, p0, this$0:Lcom/android/server/bridge/BridgeProxy;

    # getter for: Lcom/android/server/bridge/BridgeProxy;->mPm:Landroid/os/PersonaManager;
    invoke-static {v9}, Lcom/android/server/bridge/BridgeProxy;->access$700(Lcom/android/server/bridge/BridgeProxy;)Landroid/os/PersonaManager;

    move-result-object v9

    invoke-virtual {v9, v8}, Landroid/os/PersonaManager;->exists(I)Z

    move-result v9

    if-eqz v9, :cond_f0

    .line 2074
    :try_start_a2
    iget-object v9, p0, this$0:Lcom/android/server/bridge/BridgeProxy;

    # getter for: Lcom/android/server/bridge/BridgeProxy;->mContext:Landroid/content/Context;
    invoke-static {v9}, Lcom/android/server/bridge/BridgeProxy;->access$1000(Lcom/android/server/bridge/BridgeProxy;)Landroid/content/Context;

    move-result-object v9

    invoke-virtual {v2, v9, v8}, Lcom/sec/enterprise/knox/EnterpriseKnoxManager;->getKnoxContainerManager(Landroid/content/Context;I)Lcom/sec/enterprise/knox/container/KnoxContainerManager;

    move-result-object v0

    .line 2075
    .restart local v0    # "containerMgr":Lcom/sec/enterprise/knox/container/KnoxContainerManager;
    invoke-virtual {v0}, Lcom/sec/enterprise/knox/container/KnoxContainerManager;->getRCPPolicy()Lcom/sec/enterprise/knox/container/RCPPolicy;

    move-result-object v5

    .line 2076
    .restart local v5    # "rcpPolicy":Lcom/sec/enterprise/knox/container/RCPPolicy;
    invoke-virtual {v5}, Lcom/sec/enterprise/knox/container/RCPPolicy;->isMoveFilesToOwnerAllowed()Z
    :try_end_b3
    .catch Ljava/lang/SecurityException; {:try_start_a2 .. :try_end_b3} :catch_d6
    .catch Ljava/lang/NullPointerException; {:try_start_a2 .. :try_end_b3} :catch_e3

    move-result v7

    .line 2084
    .end local v0    # "containerMgr":Lcom/sec/enterprise/knox/container/KnoxContainerManager;
    .end local v5    # "rcpPolicy":Lcom/sec/enterprise/knox/container/RCPPolicy;
    :goto_b4
    # getter for: Lcom/android/server/bridge/BridgeProxy;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/bridge/BridgeProxy;->access$800()Ljava/lang/String;

    move-result-object v9

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "isMoveFilesAllowed : retToOwner = "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-static {v7}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move v6, v7

    .line 2085
    goto/16 :goto_30

    .line 2077
    :catch_d6
    move-exception v1

    .line 2078
    .restart local v1    # "e":Ljava/lang/SecurityException;
    # getter for: Lcom/android/server/bridge/BridgeProxy;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/bridge/BridgeProxy;->access$800()Ljava/lang/String;

    move-result-object v9

    const-string/jumbo v10, "isMoveFilesAllowed : SecurityException occured"

    invoke-static {v9, v10}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2079
    const/4 v7, 0x0

    .line 2083
    goto :goto_b4

    .line 2080
    .end local v1    # "e":Ljava/lang/SecurityException;
    :catch_e3
    move-exception v3

    .line 2081
    .restart local v3    # "npe":Ljava/lang/NullPointerException;
    # getter for: Lcom/android/server/bridge/BridgeProxy;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/bridge/BridgeProxy;->access$800()Ljava/lang/String;

    move-result-object v9

    const-string/jumbo v10, "isMoveFilesAllowed : NullPointerException occured"

    invoke-static {v9, v10}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2082
    const/4 v7, 0x0

    goto :goto_b4

    .line 2088
    .end local v3    # "npe":Ljava/lang/NullPointerException;
    :cond_f0
    # getter for: Lcom/android/server/bridge/BridgeProxy;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/bridge/BridgeProxy;->access$800()Ljava/lang/String;

    move-result-object v9

    const-string/jumbo v10, "isMoveFilesAllowed : End of function. Return false"

    invoke-static {v9, v10}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2089
    const/4 v6, 0x0

    goto/16 :goto_30
.end method

.method public moveFile(ILjava/lang/String;ILjava/lang/String;)I
    .registers 10
    .param p1, "srcContainerId"    # I
    .param p2, "srcFilePath"    # Ljava/lang/String;
    .param p3, "destContainerId"    # I
    .param p4, "destFilePath"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 1903
    iget-object v2, p0, this$0:Lcom/android/server/bridge/BridgeProxy;

    const-string/jumbo v3, "moveFile"

    # invokes: Lcom/android/server/bridge/BridgeProxy;->checkCallerPermissionFor(Ljava/lang/String;)I
    invoke-static {v2, v3}, Lcom/android/server/bridge/BridgeProxy;->access$1800(Lcom/android/server/bridge/BridgeProxy;Ljava/lang/String;)I

    .line 1904
    # getter for: Lcom/android/server/bridge/BridgeProxy;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/bridge/BridgeProxy;->access$800()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "moveFile() srcContainerId="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "; srcFilePath="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "; destContainerId="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "; destFilePath="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1908
    invoke-virtual {p0, p1, p3}, isContainerIdIsValid(II)Z

    move-result v2

    if-nez v2, :cond_53

    .line 1909
    # getter for: Lcom/android/server/bridge/BridgeProxy;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/bridge/BridgeProxy;->access$800()Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "moveFile() containerID is not valid"

    invoke-static {v2, v3}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1910
    const/4 v2, 0x6

    .line 1936
    :goto_52
    return v2

    .line 1913
    :cond_53
    invoke-direct {p0, p3}, isContainerStateIsValid(I)Z

    move-result v2

    if-nez v2, :cond_8d

    .line 1914
    # getter for: Lcom/android/server/bridge/BridgeProxy;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/bridge/BridgeProxy;->access$800()Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "fileOperation() container state is not valid"

    invoke-static {v2, v3}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1917
    iget-object v2, p0, this$0:Lcom/android/server/bridge/BridgeProxy;

    # getter for: Lcom/android/server/bridge/BridgeProxy;->mContext:Landroid/content/Context;
    invoke-static {v2}, Lcom/android/server/bridge/BridgeProxy;->access$1000(Lcom/android/server/bridge/BridgeProxy;)Landroid/content/Context;

    move-result-object v2

    const-string/jumbo v3, "user"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/UserManager;

    .line 1918
    .local v1, "um":Landroid/os/UserManager;
    iget-object v2, p0, this$0:Lcom/android/server/bridge/BridgeProxy;

    # getter for: Lcom/android/server/bridge/BridgeProxy;->mPm:Landroid/os/PersonaManager;
    invoke-static {v2}, Lcom/android/server/bridge/BridgeProxy;->access$700(Lcom/android/server/bridge/BridgeProxy;)Landroid/os/PersonaManager;

    move-result-object v2

    invoke-virtual {v2, p3}, Landroid/os/PersonaManager;->getPersonaInfo(I)Landroid/content/pm/PersonaInfo;

    move-result-object v2

    iget v2, v2, Landroid/content/pm/PersonaInfo;->id:I

    invoke-virtual {v1, v2}, Landroid/os/UserManager;->getUserInfo(I)Landroid/content/pm/UserInfo;

    move-result-object v0

    .line 1919
    .local v0, "ui":Landroid/content/pm/UserInfo;
    iget-object v2, p0, this$0:Lcom/android/server/bridge/BridgeProxy;

    iget-object v3, v0, Landroid/content/pm/UserInfo;->name:Ljava/lang/String;

    # setter for: Lcom/android/server/bridge/BridgeProxy;->mCurrentInvalidKnoxName:Ljava/lang/String;
    invoke-static {v2, v3}, Lcom/android/server/bridge/BridgeProxy;->access$3302(Lcom/android/server/bridge/BridgeProxy;Ljava/lang/String;)Ljava/lang/String;

    .line 1921
    const v2, -0xf4241

    goto :goto_52

    .line 1924
    .end local v0    # "ui":Landroid/content/pm/UserInfo;
    .end local v1    # "um":Landroid/os/UserManager;
    :cond_8d
    invoke-virtual {p0, p1, p3}, isMoveFilesAllowed(II)Z

    move-result v2

    if-nez v2, :cond_a0

    .line 1925
    # getter for: Lcom/android/server/bridge/BridgeProxy;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/bridge/BridgeProxy;->access$800()Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "moveFile() policy is denied"

    invoke-static {v2, v3}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1926
    const/16 v2, 0xb

    goto :goto_52

    .line 1929
    :cond_a0
    invoke-static {p2}, Lcom/android/server/bridge/util/FileUtils;->isAllowedFileName(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_b2

    .line 1930
    # getter for: Lcom/android/server/bridge/BridgeProxy;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/bridge/BridgeProxy;->access$800()Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "moveFile() not allowed file name"

    invoke-static {v2, v3}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1931
    const/4 v2, 0x5

    goto :goto_52

    .line 1934
    :cond_b2
    invoke-direct {p0, p2, p4}, changeExtSdPath(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p4

    .line 1936
    iget-object v2, p0, this$0:Lcom/android/server/bridge/BridgeProxy;

    # getter for: Lcom/android/server/bridge/BridgeProxy;->mbridge:Landroid/os/RCPManager;
    invoke-static {v2}, Lcom/android/server/bridge/BridgeProxy;->access$3000(Lcom/android/server/bridge/BridgeProxy;)Landroid/os/RCPManager;

    move-result-object v2

    invoke-virtual {v2, p1, p2, p3, p4}, Landroid/os/RCPManager;->moveFile(ILjava/lang/String;ILjava/lang/String;)I

    move-result v2

    goto :goto_52
.end method

.method public moveFiles(ILjava/util/List;ILjava/util/List;Landroid/content/IRCPInterfaceCallback;)J
    .registers 16
    .param p1, "srcContainerId"    # I
    .param p3, "destContainerId"    # I
    .param p5, "callback"    # Landroid/content/IRCPInterfaceCallback;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;I",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Landroid/content/IRCPInterfaceCallback;",
            ")J"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 1660
    .local p2, "srcFilePaths":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .local p4, "destFilePaths":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    iget-object v6, p0, this$0:Lcom/android/server/bridge/BridgeProxy;

    const-string/jumbo v7, "moveFiles"

    # invokes: Lcom/android/server/bridge/BridgeProxy;->checkCallerPermissionFor(Ljava/lang/String;)I
    invoke-static {v6, v7}, Lcom/android/server/bridge/BridgeProxy;->access$1800(Lcom/android/server/bridge/BridgeProxy;Ljava/lang/String;)I

    .line 1661
    # getter for: Lcom/android/server/bridge/BridgeProxy;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/bridge/BridgeProxy;->access$800()Ljava/lang/String;

    move-result-object v6

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "moveFiles() srcContainerId="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "; srcFilePaths="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "; destContainerId="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "; destFilePaths="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {p4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/android/server/bridge/BridgeProxy$BridgeLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1665
    if-eqz p3, :cond_71

    .line 1666
    iget-object v6, p0, this$0:Lcom/android/server/bridge/BridgeProxy;

    # getter for: Lcom/android/server/bridge/BridgeProxy;->mContext:Landroid/content/Context;
    invoke-static {v6}, Lcom/android/server/bridge/BridgeProxy;->access$1000(Lcom/android/server/bridge/BridgeProxy;)Landroid/content/Context;

    move-result-object v6

    const-string/jumbo v7, "user"

    invoke-virtual {v6, v7}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/os/UserManager;

    .line 1667
    .local v5, "um":Landroid/os/UserManager;
    iget-object v6, p0, this$0:Lcom/android/server/bridge/BridgeProxy;

    # getter for: Lcom/android/server/bridge/BridgeProxy;->mPm:Landroid/os/PersonaManager;
    invoke-static {v6}, Lcom/android/server/bridge/BridgeProxy;->access$700(Lcom/android/server/bridge/BridgeProxy;)Landroid/os/PersonaManager;

    move-result-object v6

    invoke-virtual {v6, p3}, Landroid/os/PersonaManager;->getPersonaInfo(I)Landroid/content/pm/PersonaInfo;

    move-result-object v6

    iget v6, v6, Landroid/content/pm/PersonaInfo;->id:I

    invoke-virtual {v5, v6}, Landroid/os/UserManager;->getUserInfo(I)Landroid/content/pm/UserInfo;

    move-result-object v4

    .line 1668
    .local v4, "ui":Landroid/content/pm/UserInfo;
    iget-object v6, p0, this$0:Lcom/android/server/bridge/BridgeProxy;

    iget-object v7, v4, Landroid/content/pm/UserInfo;->name:Ljava/lang/String;

    # setter for: Lcom/android/server/bridge/BridgeProxy;->mCurrentInvalidKnoxName:Ljava/lang/String;
    invoke-static {v6, v7}, Lcom/android/server/bridge/BridgeProxy;->access$3302(Lcom/android/server/bridge/BridgeProxy;Ljava/lang/String;)Ljava/lang/String;

    .line 1670
    .end local v4    # "ui":Landroid/content/pm/UserInfo;
    .end local v5    # "um":Landroid/os/UserManager;
    :cond_71
    new-instance v2, Landroid/content/Intent;

    const-string v6, "com.sec.knox.bridge.service.ACTION_FILE_OPERATIONS"

    invoke-direct {v2, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1673
    .local v2, "mIntent":Landroid/content/Intent;
    iget-object v6, p0, this$0:Lcom/android/server/bridge/BridgeProxy;

    # getter for: Lcom/android/server/bridge/BridgeProxy;->mBridgePackage:Ljava/lang/String;
    invoke-static {v6}, Lcom/android/server/bridge/BridgeProxy;->access$3200(Lcom/android/server/bridge/BridgeProxy;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v6}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 1674
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 1675
    .local v0, "mBundle":Landroid/os/Bundle;
    const-string/jumbo v6, "task"

    const-string v7, "TASK_MOVE_FILES"

    invoke-virtual {v0, v6, v7}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1676
    const-string/jumbo v6, "srcContainerId"

    invoke-virtual {v0, v6, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1677
    const-string/jumbo v6, "destContainerId"

    invoke-virtual {v0, v6, p3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1678
    const-string/jumbo v6, "srcFilePaths"

    check-cast p2, Ljava/util/ArrayList;

    .end local p2    # "srcFilePaths":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-virtual {v0, v6, p2}, Landroid/os/Bundle;->putStringArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 1679
    const-string/jumbo v6, "destFilePaths"

    check-cast p4, Ljava/util/ArrayList;

    .end local p4    # "destFilePaths":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-virtual {v0, v6, p4}, Landroid/os/Bundle;->putStringArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 1681
    new-instance v1, Landroid/os/Messenger;

    invoke-interface {p5}, Landroid/content/IRCPInterfaceCallback;->asBinder()Landroid/os/IBinder;

    move-result-object v6

    invoke-direct {v1, v6}, Landroid/os/Messenger;-><init>(Landroid/os/IBinder;)V

    .line 1682
    .local v1, "mCallBackMessenger":Landroid/os/Messenger;
    const-string v6, "callBackMessenger"

    invoke-virtual {v0, v6, v1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 1684
    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v6

    const-wide v8, 0x40c3880000000000L    # 10000.0

    mul-double/2addr v6, v8

    double-to-long v6, v6

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    .line 1685
    .local v3, "mSessionId":Ljava/lang/Long;
    # getter for: Lcom/android/server/bridge/BridgeProxy;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/bridge/BridgeProxy;->access$800()Ljava/lang/String;

    move-result-object v6

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "moveFiles ,mSessionId :"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1686
    const-string/jumbo v6, "sessionId"

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v8

    invoke-virtual {v0, v6, v8, v9}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 1688
    invoke-virtual {v2, v0}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 1689
    # getter for: Lcom/android/server/bridge/BridgeProxy;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/bridge/BridgeProxy;->access$800()Ljava/lang/String;

    move-result-object v6

    const-string/jumbo v7, "moveFiles(), Starting FileOperationsHandler service TASK_MOVE_FILES"

    invoke-static {v6, v7}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1690
    iget-object v6, p0, this$0:Lcom/android/server/bridge/BridgeProxy;

    # getter for: Lcom/android/server/bridge/BridgeProxy;->mContext:Landroid/content/Context;
    invoke-static {v6}, Lcom/android/server/bridge/BridgeProxy;->access$1000(Lcom/android/server/bridge/BridgeProxy;)Landroid/content/Context;

    move-result-object v6

    iget-object v7, p0, this$0:Lcom/android/server/bridge/BridgeProxy;

    # getter for: Lcom/android/server/bridge/BridgeProxy;->mDelegateUserHandle:Landroid/os/UserHandle;
    invoke-static {v7}, Lcom/android/server/bridge/BridgeProxy;->access$900(Lcom/android/server/bridge/BridgeProxy;)Landroid/os/UserHandle;

    move-result-object v7

    invoke-virtual {v6, v2, v7}, Landroid/content/Context;->startServiceAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)Landroid/content/ComponentName;

    .line 1691
    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    return-wide v6
.end method

.method public moveFilesForApp(ILjava/util/List;Ljava/util/List;)J
    .registers 32
    .param p1, "requestApp"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)J"
        }
    .end annotation

    .prologue
    .line 1755
    .local p2, "srcFilePaths":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .local p3, "destFilePaths":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    move-object/from16 v0, p0

    iget-object v0, v0, this$0:Lcom/android/server/bridge/BridgeProxy;

    move-object/from16 v25, v0

    const-string/jumbo v26, "moveFilesForApp"

    # invokes: Lcom/android/server/bridge/BridgeProxy;->checkCallerPermissionFor(Ljava/lang/String;)I
    invoke-static/range {v25 .. v26}, Lcom/android/server/bridge/BridgeProxy;->access$1800(Lcom/android/server/bridge/BridgeProxy;Ljava/lang/String;)I

    .line 1757
    const/4 v11, 0x0

    .line 1759
    .local v11, "isFileCreate":Z
    :try_start_d
    # getter for: Lcom/android/server/bridge/BridgeProxy;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/bridge/BridgeProxy;->access$800()Ljava/lang/String;

    move-result-object v25

    new-instance v26, Ljava/lang/StringBuilder;

    invoke-direct/range {v26 .. v26}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v27, "moveFilesForApp() srcFilePaths="

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    invoke-virtual/range {p2 .. p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v27

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    const-string v27, "; destFilePaths="

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    invoke-virtual/range {p3 .. p3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v27

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    const-string/jumbo v27, "reqApp = "

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    invoke-static/range {p1 .. p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v27

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v26

    invoke-static/range {v25 .. v26}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1764
    new-instance v24, Ljava/util/ArrayList;

    move-object/from16 v0, v24

    move-object/from16 v1, p2

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 1765
    .local v24, "srcPaths":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    new-instance v6, Ljava/util/ArrayList;

    move-object/from16 v0, p3

    invoke-direct {v6, v0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 1767
    .local v6, "dstPaths":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    new-instance v17, Landroid/content/Intent;

    invoke-direct/range {v17 .. v17}, Landroid/content/Intent;-><init>()V

    .line 1768
    .local v17, "moveTo":Landroid/content/Intent;
    move-object/from16 v0, p0

    iget-object v0, v0, this$0:Lcom/android/server/bridge/BridgeProxy;

    move-object/from16 v25, v0

    # getter for: Lcom/android/server/bridge/BridgeProxy;->mBridgePackage:Ljava/lang/String;
    invoke-static/range {v25 .. v25}, Lcom/android/server/bridge/BridgeProxy;->access$3200(Lcom/android/server/bridge/BridgeProxy;)Ljava/lang/String;

    move-result-object v25

    const-string v26, "com.sec.knox.bridge.activity.MoveToKnoxActivity"

    move-object/from16 v0, v17

    move-object/from16 v1, v25

    move-object/from16 v2, v26

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1769
    const-string/jumbo v25, "requestApp"

    move-object/from16 v0, v17

    move-object/from16 v1, v25

    move/from16 v2, p1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1770
    const-string/jumbo v25, "launchAfterLockCheck"

    const/16 v26, 0x0

    move-object/from16 v0, v17

    move-object/from16 v1, v25

    move/from16 v2, v26

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 1772
    const/high16 v25, 0x10000000

    move-object/from16 v0, v17

    move/from16 v1, v25

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 1775
    invoke-virtual/range {v24 .. v24}, Ljava/util/ArrayList;->size()I

    move-result v25

    const/16 v26, 0xc8

    move/from16 v0, v25

    move/from16 v1, v26

    if-lt v0, v1, :cond_14c

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v25

    const/16 v26, 0xc8

    move/from16 v0, v25

    move/from16 v1, v26

    if-lt v0, v1, :cond_14c

    .line 1777
    const/4 v11, 0x1

    .line 1778
    # getter for: Lcom/android/server/bridge/BridgeProxy;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/bridge/BridgeProxy;->access$800()Ljava/lang/String;

    move-result-object v25

    const-string v26, " src_FILE_READ_OPERATION "

    invoke-static/range {v25 .. v26}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_b8
    .catch Landroid/content/ActivityNotFoundException; {:try_start_d .. :try_end_b8} :catch_145

    .line 1780
    :try_start_b8
    move-object/from16 v0, p0

    move-object/from16 v1, v24

    invoke-direct {v0, v1, v6}, copyListToFile(Ljava/util/ArrayList;Ljava/util/ArrayList;)V

    .line 1781
    const-string/jumbo v25, "isFileCreated"

    const/16 v26, 0x1

    move-object/from16 v0, v17

    move-object/from16 v1, v25

    move/from16 v2, v26

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 1782
    const-string/jumbo v25, "srcFilePath"

    const-string v26, "/data/misc/BridgeProxy/srcCreateFile"

    move-object/from16 v0, v17

    move-object/from16 v1, v25

    move-object/from16 v2, v26

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1783
    const-string/jumbo v25, "destFilePath"

    const-string v26, "/data/misc/BridgeProxy/dstCreateFile"

    move-object/from16 v0, v17

    move-object/from16 v1, v25

    move-object/from16 v2, v26

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;
    :try_end_e9
    .catch Ljava/io/IOException; {:try_start_b8 .. :try_end_e9} :catch_137
    .catch Landroid/content/ActivityNotFoundException; {:try_start_b8 .. :try_end_e9} :catch_145

    .line 1794
    :goto_e9
    :try_start_e9
    move-object/from16 v0, p0

    iget-object v0, v0, this$0:Lcom/android/server/bridge/BridgeProxy;

    move-object/from16 v25, v0

    # getter for: Lcom/android/server/bridge/BridgeProxy;->mContext:Landroid/content/Context;
    invoke-static/range {v25 .. v25}, Lcom/android/server/bridge/BridgeProxy;->access$1000(Lcom/android/server/bridge/BridgeProxy;)Landroid/content/Context;

    move-result-object v25

    invoke-static/range {v25 .. v25}, Landroid/os/PersonaManager;->getKnoxInfoForApp(Landroid/content/Context;)Landroid/os/Bundle;

    move-result-object v13

    .line 1795
    .local v13, "mKnoxInfoForApp":Landroid/os/Bundle;
    const-string v25, "KnoxIdNamePair"

    move-object/from16 v0, v25

    invoke-virtual {v13, v0}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v12

    check-cast v12, Ljava/util/HashMap;

    .line 1798
    .local v12, "mKnoxIdNamePair":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/Integer;Ljava/lang/String;>;"
    move-object/from16 v0, p0

    iget-object v0, v0, this$0:Lcom/android/server/bridge/BridgeProxy;

    move-object/from16 v25, v0

    # getter for: Lcom/android/server/bridge/BridgeProxy;->mDelegateUserId:I
    invoke-static/range {v25 .. v25}, Lcom/android/server/bridge/BridgeProxy;->access$600(Lcom/android/server/bridge/BridgeProxy;)I

    move-result v16

    .line 1800
    .local v16, "mMoveToSrcCId":I
    const/16 v25, 0x0

    invoke-static/range {v25 .. v25}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v25

    move/from16 v0, v16

    move/from16 v1, v25

    if-eq v0, v1, :cond_163

    .line 1801
    move-object/from16 v0, p0

    iget-object v0, v0, this$0:Lcom/android/server/bridge/BridgeProxy;

    move-object/from16 v25, v0

    # getter for: Lcom/android/server/bridge/BridgeProxy;->mContext:Landroid/content/Context;
    invoke-static/range {v25 .. v25}, Lcom/android/server/bridge/BridgeProxy;->access$1000(Lcom/android/server/bridge/BridgeProxy;)Landroid/content/Context;

    move-result-object v25

    move-object/from16 v0, p0

    iget-object v0, v0, this$0:Lcom/android/server/bridge/BridgeProxy;

    move-object/from16 v26, v0

    # getter for: Lcom/android/server/bridge/BridgeProxy;->mDelegateUserHandle:Landroid/os/UserHandle;
    invoke-static/range {v26 .. v26}, Lcom/android/server/bridge/BridgeProxy;->access$900(Lcom/android/server/bridge/BridgeProxy;)Landroid/os/UserHandle;

    move-result-object v26

    move-object/from16 v0, v25

    move-object/from16 v1, v17

    move-object/from16 v2, v26

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->startActivityAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 1802
    const-wide/16 v26, 0x0

    .line 1865
    .end local v6    # "dstPaths":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v12    # "mKnoxIdNamePair":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/Integer;Ljava/lang/String;>;"
    .end local v13    # "mKnoxInfoForApp":Landroid/os/Bundle;
    .end local v16    # "mMoveToSrcCId":I
    .end local v17    # "moveTo":Landroid/content/Intent;
    .end local v24    # "srcPaths":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :goto_136
    return-wide v26

    .line 1784
    .restart local v6    # "dstPaths":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .restart local v17    # "moveTo":Landroid/content/Intent;
    .restart local v24    # "srcPaths":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :catch_137
    move-exception v7

    .line 1785
    .local v7, "e":Ljava/io/IOException;
    # getter for: Lcom/android/server/bridge/BridgeProxy;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/bridge/BridgeProxy;->access$800()Ljava/lang/String;

    move-result-object v25

    const-string v26, "copyListToFile - IOException"

    invoke-static/range {v25 .. v26}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1786
    invoke-virtual {v7}, Ljava/io/IOException;->printStackTrace()V
    :try_end_144
    .catch Landroid/content/ActivityNotFoundException; {:try_start_e9 .. :try_end_144} :catch_145

    goto :goto_e9

    .line 1861
    .end local v6    # "dstPaths":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v7    # "e":Ljava/io/IOException;
    .end local v17    # "moveTo":Landroid/content/Intent;
    .end local v24    # "srcPaths":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :catch_145
    move-exception v7

    .line 1862
    .local v7, "e":Landroid/content/ActivityNotFoundException;
    invoke-virtual {v7}, Landroid/content/ActivityNotFoundException;->printStackTrace()V

    .line 1865
    .end local v7    # "e":Landroid/content/ActivityNotFoundException;
    :goto_149
    const-wide/16 v26, 0x0

    goto :goto_136

    .line 1789
    .restart local v6    # "dstPaths":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .restart local v17    # "moveTo":Landroid/content/Intent;
    .restart local v24    # "srcPaths":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :cond_14c
    :try_start_14c
    const-string/jumbo v25, "srcFilePaths"

    move-object/from16 v0, v17

    move-object/from16 v1, v25

    move-object/from16 v2, v24

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putStringArrayListExtra(Ljava/lang/String;Ljava/util/ArrayList;)Landroid/content/Intent;

    .line 1790
    const-string/jumbo v25, "dstFilePaths"

    move-object/from16 v0, v17

    move-object/from16 v1, v25

    invoke-virtual {v0, v1, v6}, Landroid/content/Intent;->putStringArrayListExtra(Ljava/lang/String;Ljava/util/ArrayList;)Landroid/content/Intent;

    goto :goto_e9

    .line 1805
    .restart local v12    # "mKnoxIdNamePair":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/Integer;Ljava/lang/String;>;"
    .restart local v13    # "mKnoxInfoForApp":Landroid/os/Bundle;
    .restart local v16    # "mMoveToSrcCId":I
    :cond_163
    if-eqz v12, :cond_1ca

    invoke-virtual {v12}, Ljava/util/HashMap;->size()I

    move-result v25

    const/16 v26, 0x1

    move/from16 v0, v25

    move/from16 v1, v26

    if-ne v0, v1, :cond_1ca

    .line 1807
    invoke-virtual {v12}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v25

    invoke-interface/range {v25 .. v25}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v9

    .line 1808
    .local v9, "idSet":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/Integer;>;"
    const/4 v14, 0x0

    .line 1809
    .local v14, "mMoveToDstCId":I
    const/4 v15, 0x0

    .line 1810
    .local v15, "mMoveToDstName":Ljava/lang/String;
    :goto_17b
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v25

    if-eqz v25, :cond_198

    .line 1811
    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v25

    check-cast v25, Ljava/lang/Integer;

    invoke-virtual/range {v25 .. v25}, Ljava/lang/Integer;->intValue()I

    move-result v14

    .line 1812
    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v25

    move-object/from16 v0, v25

    invoke-virtual {v12, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v15

    .end local v15    # "mMoveToDstName":Ljava/lang/String;
    check-cast v15, Ljava/lang/String;

    .restart local v15    # "mMoveToDstName":Ljava/lang/String;
    goto :goto_17b

    .line 1814
    :cond_198
    const-string/jumbo v25, "moveToDstCId"

    move-object/from16 v0, v17

    move-object/from16 v1, v25

    invoke-virtual {v0, v1, v14}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1815
    const-string/jumbo v25, "mMoveToDstName"

    move-object/from16 v0, v17

    move-object/from16 v1, v25

    invoke-virtual {v0, v1, v15}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1816
    move-object/from16 v0, p0

    iget-object v0, v0, this$0:Lcom/android/server/bridge/BridgeProxy;

    move-object/from16 v25, v0

    # getter for: Lcom/android/server/bridge/BridgeProxy;->mContext:Landroid/content/Context;
    invoke-static/range {v25 .. v25}, Lcom/android/server/bridge/BridgeProxy;->access$1000(Lcom/android/server/bridge/BridgeProxy;)Landroid/content/Context;

    move-result-object v25

    move-object/from16 v0, p0

    iget-object v0, v0, this$0:Lcom/android/server/bridge/BridgeProxy;

    move-object/from16 v26, v0

    # getter for: Lcom/android/server/bridge/BridgeProxy;->mDelegateUserHandle:Landroid/os/UserHandle;
    invoke-static/range {v26 .. v26}, Lcom/android/server/bridge/BridgeProxy;->access$900(Lcom/android/server/bridge/BridgeProxy;)Landroid/os/UserHandle;

    move-result-object v26

    move-object/from16 v0, v25

    move-object/from16 v1, v17

    move-object/from16 v2, v26

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->startActivityAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    goto :goto_149

    .line 1823
    .end local v9    # "idSet":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/Integer;>;"
    .end local v14    # "mMoveToDstCId":I
    .end local v15    # "mMoveToDstName":Ljava/lang/String;
    :cond_1ca
    new-instance v20, Landroid/os/Bundle;

    invoke-direct/range {v20 .. v20}, Landroid/os/Bundle;-><init>()V

    .line 1824
    .local v20, "movetoBundle":Landroid/os/Bundle;
    if-nez v11, :cond_2b6

    .line 1825
    const-string/jumbo v25, "srcFilePaths"

    move-object/from16 v0, v20

    move-object/from16 v1, v25

    move-object/from16 v2, v24

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putStringArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 1826
    const-string/jumbo v25, "dstFilePaths"

    move-object/from16 v0, v20

    move-object/from16 v1, v25

    invoke-virtual {v0, v1, v6}, Landroid/os/Bundle;->putStringArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 1832
    :goto_1e7
    const-string/jumbo v25, "requestApp"

    move-object/from16 v0, v20

    move-object/from16 v1, v25

    move/from16 v2, p1

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1833
    const-string/jumbo v25, "launchAfterLockCheck"

    const/16 v26, 0x0

    move-object/from16 v0, v20

    move-object/from16 v1, v25

    move/from16 v2, v26

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 1834
    const-string/jumbo v25, "moveToDstCId"

    const/16 v26, -0x1

    move-object/from16 v0, v20

    move-object/from16 v1, v25

    move/from16 v2, v26

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1835
    const-string/jumbo v25, "moveToFor"

    const-string v26, "File"

    move-object/from16 v0, v20

    move-object/from16 v1, v25

    move-object/from16 v2, v26

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1836
    new-instance v18, Landroid/content/Intent;

    const-string v25, "com.sec.knox.bridge.MOVE_TO_KNOX"

    move-object/from16 v0, v18

    move-object/from16 v1, v25

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1837
    .local v18, "moveToIntent":Landroid/content/Intent;
    move-object/from16 v0, v18

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 1838
    new-instance v19, Ljava/util/ArrayList;

    invoke-direct/range {v19 .. v19}, Ljava/util/ArrayList;-><init>()V

    .line 1839
    .local v19, "moveToIntents":Ljava/util/List;, "Ljava/util/List<Landroid/content/Intent;>;"
    move-object/from16 v0, p0

    iget-object v0, v0, this$0:Lcom/android/server/bridge/BridgeProxy;

    move-object/from16 v25, v0

    # getter for: Lcom/android/server/bridge/BridgeProxy;->mContext:Landroid/content/Context;
    invoke-static/range {v25 .. v25}, Lcom/android/server/bridge/BridgeProxy;->access$1000(Lcom/android/server/bridge/BridgeProxy;)Landroid/content/Context;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v25

    const/16 v26, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, this$0:Lcom/android/server/bridge/BridgeProxy;

    move-object/from16 v27, v0

    # getter for: Lcom/android/server/bridge/BridgeProxy;->mDelegateUserId:I
    invoke-static/range {v27 .. v27}, Lcom/android/server/bridge/BridgeProxy;->access$600(Lcom/android/server/bridge/BridgeProxy;)I

    move-result v27

    move-object/from16 v0, v25

    move-object/from16 v1, v18

    move/from16 v2, v26

    move/from16 v3, v27

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/pm/PackageManager;->queryIntentActivitiesAsUser(Landroid/content/Intent;II)Ljava/util/List;

    move-result-object v22

    .line 1840
    .local v22, "resInfo":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    invoke-interface/range {v22 .. v22}, Ljava/util/List;->isEmpty()Z

    move-result v25

    if-nez v25, :cond_2e9

    .line 1841
    invoke-interface/range {v22 .. v22}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v8

    .local v8, "i$":Ljava/util/Iterator;
    :goto_264
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v25

    if-eqz v25, :cond_2e9

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v23

    check-cast v23, Landroid/content/pm/ResolveInfo;

    .line 1842
    .local v23, "resolveInfo":Landroid/content/pm/ResolveInfo;
    move-object/from16 v0, v23

    iget-object v0, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    iget-object v0, v0, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    move-object/from16 v21, v0

    .line 1843
    .local v21, "packageName":Ljava/lang/String;
    new-instance v5, Landroid/content/ComponentName;

    move-object/from16 v0, v23

    iget-object v0, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    iget-object v0, v0, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    move-object/from16 v25, v0

    move-object/from16 v0, v21

    move-object/from16 v1, v25

    invoke-direct {v5, v0, v1}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 1844
    .local v5, "compName":Landroid/content/ComponentName;
    new-instance v10, Landroid/content/Intent;

    const-string v25, "com.sec.knox.bridge.MOVE_TO_KNOX"

    move-object/from16 v0, v25

    invoke-direct {v10, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1845
    .local v10, "intent":Landroid/content/Intent;
    move-object/from16 v0, v20

    invoke-virtual {v10, v0}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 1846
    invoke-virtual {v10, v5}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 1847
    const-string v25, "com.sec.knox.switcher.SwitchB2bActivityI"

    move-object/from16 v0, v25

    invoke-virtual {v5, v0}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    move-result v25

    if-eqz v25, :cond_2e2

    .line 1848
    const/16 v25, 0x0

    move-object/from16 v0, v19

    move/from16 v1, v25

    invoke-interface {v0, v1, v10}, Ljava/util/List;->add(ILjava/lang/Object;)V

    goto :goto_264

    .line 1828
    .end local v5    # "compName":Landroid/content/ComponentName;
    .end local v8    # "i$":Ljava/util/Iterator;
    .end local v10    # "intent":Landroid/content/Intent;
    .end local v18    # "moveToIntent":Landroid/content/Intent;
    .end local v19    # "moveToIntents":Ljava/util/List;, "Ljava/util/List<Landroid/content/Intent;>;"
    .end local v21    # "packageName":Ljava/lang/String;
    .end local v22    # "resInfo":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    .end local v23    # "resolveInfo":Landroid/content/pm/ResolveInfo;
    :cond_2b6
    const-string/jumbo v25, "isFileCreated"

    const/16 v26, 0x1

    move-object/from16 v0, v20

    move-object/from16 v1, v25

    move/from16 v2, v26

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 1829
    const-string/jumbo v25, "srcFilePath"

    const-string v26, "/data/misc/BridgeProxy/srcCreateFile"

    move-object/from16 v0, v20

    move-object/from16 v1, v25

    move-object/from16 v2, v26

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1830
    const-string/jumbo v25, "destFilePath"

    const-string v26, "/data/misc/BridgeProxy/dstCreateFile"

    move-object/from16 v0, v20

    move-object/from16 v1, v25

    move-object/from16 v2, v26

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1e7

    .line 1850
    .restart local v5    # "compName":Landroid/content/ComponentName;
    .restart local v8    # "i$":Ljava/util/Iterator;
    .restart local v10    # "intent":Landroid/content/Intent;
    .restart local v18    # "moveToIntent":Landroid/content/Intent;
    .restart local v19    # "moveToIntents":Ljava/util/List;, "Ljava/util/List<Landroid/content/Intent;>;"
    .restart local v21    # "packageName":Ljava/lang/String;
    .restart local v22    # "resInfo":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    .restart local v23    # "resolveInfo":Landroid/content/pm/ResolveInfo;
    :cond_2e2
    move-object/from16 v0, v19

    invoke-interface {v0, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_264

    .line 1853
    .end local v5    # "compName":Landroid/content/ComponentName;
    .end local v8    # "i$":Ljava/util/Iterator;
    .end local v10    # "intent":Landroid/content/Intent;
    .end local v21    # "packageName":Ljava/lang/String;
    .end local v23    # "resolveInfo":Landroid/content/pm/ResolveInfo;
    :cond_2e9
    invoke-interface/range {v19 .. v19}, Ljava/util/List;->size()I

    move-result v25

    add-int/lit8 v25, v25, -0x1

    move-object/from16 v0, v19

    move/from16 v1, v25

    invoke-interface {v0, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object v25

    check-cast v25, Landroid/content/Intent;

    move-object/from16 v0, p0

    iget-object v0, v0, this$0:Lcom/android/server/bridge/BridgeProxy;

    move-object/from16 v26, v0

    const-string/jumbo v27, "move_to_knox"

    # invokes: Lcom/android/server/bridge/BridgeProxy;->getBridgeStringResource(Ljava/lang/String;)Ljava/lang/String;
    invoke-static/range {v26 .. v27}, Lcom/android/server/bridge/BridgeProxy;->access$3400(Lcom/android/server/bridge/BridgeProxy;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v26

    invoke-static/range {v25 .. v26}, Landroid/content/Intent;->createChooser(Landroid/content/Intent;Ljava/lang/CharSequence;)Landroid/content/Intent;

    move-result-object v4

    .line 1856
    .local v4, "chooserInten":Landroid/content/Intent;
    const-string v26, "android.intent.extra.INITIAL_INTENTS"

    const/16 v25, 0x0

    move/from16 v0, v25

    new-array v0, v0, [Landroid/os/Parcelable;

    move-object/from16 v25, v0

    move-object/from16 v0, v19

    move-object/from16 v1, v25

    invoke-interface {v0, v1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v25

    check-cast v25, [Landroid/os/Parcelable;

    move-object/from16 v0, v26

    move-object/from16 v1, v25

    invoke-virtual {v4, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 1858
    const/high16 v25, 0x10000000

    move/from16 v0, v25

    invoke-virtual {v4, v0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 1859
    move-object/from16 v0, p0

    iget-object v0, v0, this$0:Lcom/android/server/bridge/BridgeProxy;

    move-object/from16 v25, v0

    # getter for: Lcom/android/server/bridge/BridgeProxy;->mContext:Landroid/content/Context;
    invoke-static/range {v25 .. v25}, Lcom/android/server/bridge/BridgeProxy;->access$1000(Lcom/android/server/bridge/BridgeProxy;)Landroid/content/Context;

    move-result-object v25

    move-object/from16 v0, p0

    iget-object v0, v0, this$0:Lcom/android/server/bridge/BridgeProxy;

    move-object/from16 v26, v0

    # getter for: Lcom/android/server/bridge/BridgeProxy;->mDelegateUserHandle:Landroid/os/UserHandle;
    invoke-static/range {v26 .. v26}, Lcom/android/server/bridge/BridgeProxy;->access$900(Lcom/android/server/bridge/BridgeProxy;)Landroid/os/UserHandle;

    move-result-object v26

    move-object/from16 v0, v25

    move-object/from16 v1, v26

    invoke-virtual {v0, v4, v1}, Landroid/content/Context;->startActivityAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V
    :try_end_347
    .catch Landroid/content/ActivityNotFoundException; {:try_start_14c .. :try_end_347} :catch_145

    goto/16 :goto_149
.end method
