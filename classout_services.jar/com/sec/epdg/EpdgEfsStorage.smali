.class public Lcom/sec/epdg/EpdgEfsStorage;
.super Ljava/lang/Object;
.source "EpdgEfsStorage.java"


# static fields
.field private static final EPDG_EFS_DIR:Ljava/lang/String; = "/efs/sec_efs/epdg/"

.field private static final EPDG_EFS_FILE:Ljava/lang/String; = "omadm_fields"

.field private static final TAG:Ljava/lang/String; = "[EpdgEfsStorage]"


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getFileContent()Ljava/lang/String;
    .registers 9

    .prologue
    .line 40
    sget-boolean v5, Lcom/sec/epdg/EpdgOperatorConstants;->SUPPORT_VOWIFI_PROVISIONING:Z

    if-nez v5, :cond_6

    .line 41
    const/4 v5, 0x0

    .line 65
    .local v0, "content":Ljava/lang/StringBuilder;
    .local v2, "reader":Ljava/io/BufferedReader;
    :goto_5
    return-object v5

    .line 43
    .end local v0    # "content":Ljava/lang/StringBuilder;
    .end local v2    # "reader":Ljava/io/BufferedReader;
    :cond_6
    const/4 v2, 0x0

    .line 44
    .restart local v2    # "reader":Ljava/io/BufferedReader;
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v5, ""

    invoke-direct {v0, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 46
    .restart local v0    # "content":Ljava/lang/StringBuilder;
    :try_start_e
    new-instance v3, Ljava/io/BufferedReader;

    new-instance v5, Ljava/io/FileReader;

    const-string v6, "/efs/sec_efs/epdg/omadm_fields"

    invoke-direct {v5, v6}, Ljava/io/FileReader;-><init>(Ljava/lang/String;)V

    invoke-direct {v3, v5}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_1a
    .catch Ljava/lang/Exception; {:try_start_e .. :try_end_1a} :catch_c6
    .catchall {:try_start_e .. :try_end_1a} :catchall_a2

    .line 48
    .end local v2    # "reader":Ljava/io/BufferedReader;
    .local v3, "reader":Ljava/io/BufferedReader;
    const/4 v4, 0x0

    .line 49
    .local v4, "tmp":Ljava/lang/String;
    :goto_1b
    :try_start_1b
    invoke-virtual {v3}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_4e

    .line 50
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 51
    const-string v5, "\n"

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_29
    .catch Ljava/lang/Exception; {:try_start_1b .. :try_end_29} :catch_2a
    .catchall {:try_start_1b .. :try_end_29} :catchall_c3

    goto :goto_1b

    .line 54
    :catch_2a
    move-exception v1

    move-object v2, v3

    .line 55
    .end local v3    # "reader":Ljava/io/BufferedReader;
    .end local v4    # "tmp":Ljava/lang/String;
    .local v1, "e":Ljava/lang/Exception;
    .restart local v2    # "reader":Ljava/io/BufferedReader;
    :goto_2c
    :try_start_2c
    const-string v5, "[EpdgEfsStorage]"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Exception : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/sec/epdg/Log;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_44
    .catchall {:try_start_2c .. :try_end_44} :catchall_a2

    .line 58
    if-eqz v2, :cond_49

    .line 59
    :try_start_46
    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V
    :try_end_49
    .catch Ljava/lang/Exception; {:try_start_46 .. :try_end_49} :catch_88

    .line 65
    .end local v1    # "e":Ljava/lang/Exception;
    :cond_49
    :goto_49
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    goto :goto_5

    .line 53
    .end local v2    # "reader":Ljava/io/BufferedReader;
    .restart local v3    # "reader":Ljava/io/BufferedReader;
    .restart local v4    # "tmp":Ljava/lang/String;
    :cond_4e
    :try_start_4e
    const-string v5, "[EpdgEfsStorage]"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "content="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_66
    .catch Ljava/lang/Exception; {:try_start_4e .. :try_end_66} :catch_2a
    .catchall {:try_start_4e .. :try_end_66} :catchall_c3

    .line 58
    if-eqz v3, :cond_6b

    .line 59
    :try_start_68
    invoke-virtual {v3}, Ljava/io/BufferedReader;->close()V
    :try_end_6b
    .catch Ljava/lang/Exception; {:try_start_68 .. :try_end_6b} :catch_6d

    :cond_6b
    move-object v2, v3

    .line 63
    .end local v3    # "reader":Ljava/io/BufferedReader;
    .restart local v2    # "reader":Ljava/io/BufferedReader;
    goto :goto_49

    .line 61
    .end local v2    # "reader":Ljava/io/BufferedReader;
    .restart local v3    # "reader":Ljava/io/BufferedReader;
    :catch_6d
    move-exception v1

    .line 62
    .restart local v1    # "e":Ljava/lang/Exception;
    const-string v5, "[EpdgEfsStorage]"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Exception : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/sec/epdg/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    move-object v2, v3

    .line 64
    .end local v3    # "reader":Ljava/io/BufferedReader;
    .restart local v2    # "reader":Ljava/io/BufferedReader;
    goto :goto_49

    .line 61
    .end local v4    # "tmp":Ljava/lang/String;
    :catch_88
    move-exception v1

    .line 62
    const-string v5, "[EpdgEfsStorage]"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Exception : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/sec/epdg/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_49

    .line 57
    .end local v1    # "e":Ljava/lang/Exception;
    :catchall_a2
    move-exception v5

    .line 58
    :goto_a3
    if-eqz v2, :cond_a8

    .line 59
    :try_start_a5
    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V
    :try_end_a8
    .catch Ljava/lang/Exception; {:try_start_a5 .. :try_end_a8} :catch_a9

    .line 63
    :cond_a8
    :goto_a8
    throw v5

    .line 61
    :catch_a9
    move-exception v1

    .line 62
    .restart local v1    # "e":Ljava/lang/Exception;
    const-string v6, "[EpdgEfsStorage]"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Exception : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/sec/epdg/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_a8

    .line 57
    .end local v1    # "e":Ljava/lang/Exception;
    .end local v2    # "reader":Ljava/io/BufferedReader;
    .restart local v3    # "reader":Ljava/io/BufferedReader;
    .restart local v4    # "tmp":Ljava/lang/String;
    :catchall_c3
    move-exception v5

    move-object v2, v3

    .end local v3    # "reader":Ljava/io/BufferedReader;
    .restart local v2    # "reader":Ljava/io/BufferedReader;
    goto :goto_a3

    .line 54
    .end local v4    # "tmp":Ljava/lang/String;
    :catch_c6
    move-exception v1

    goto/16 :goto_2c
.end method

.method public static init()V
    .registers 2

    .prologue
    .line 30
    sget-boolean v1, Lcom/sec/epdg/EpdgOperatorConstants;->SUPPORT_VOWIFI_PROVISIONING:Z

    if-nez v1, :cond_5

    .line 37
    .local v0, "epdgDir":Ljava/io/File;
    :cond_4
    :goto_4
    return-void

    .line 33
    .end local v0    # "epdgDir":Ljava/io/File;
    :cond_5
    new-instance v0, Ljava/io/File;

    const-string v1, "/efs/sec_efs/epdg/"

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 34
    .restart local v0    # "epdgDir":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_4

    .line 35
    invoke-virtual {v0}, Ljava/io/File;->mkdir()Z

    goto :goto_4
.end method

.method public static setFileContent(Ljava/lang/String;)V
    .registers 8
    .param p0, "content"    # Ljava/lang/String;

    .prologue
    .line 69
    sget-boolean v3, Lcom/sec/epdg/EpdgOperatorConstants;->SUPPORT_VOWIFI_PROVISIONING:Z

    if-nez v3, :cond_5

    .line 90
    :cond_4
    :goto_4
    return-void

    .line 72
    :cond_5
    const-string v3, "[EpdgEfsStorage]"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "content="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 73
    const/4 v1, 0x0

    .line 75
    .local v1, "writer":Ljava/io/BufferedWriter;
    :try_start_1e
    new-instance v2, Ljava/io/BufferedWriter;

    new-instance v3, Ljava/io/FileWriter;

    const-string v4, "/efs/sec_efs/epdg/omadm_fields"

    invoke-direct {v3, v4}, Ljava/io/FileWriter;-><init>(Ljava/lang/String;)V

    invoke-direct {v2, v3}, Ljava/io/BufferedWriter;-><init>(Ljava/io/Writer;)V
    :try_end_2a
    .catch Ljava/lang/Exception; {:try_start_1e .. :try_end_2a} :catch_57
    .catchall {:try_start_1e .. :try_end_2a} :catchall_91

    .line 77
    .end local v1    # "writer":Ljava/io/BufferedWriter;
    .local v2, "writer":Ljava/io/BufferedWriter;
    const/4 v3, 0x0

    :try_start_2b
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v4

    invoke-virtual {v2, p0, v3, v4}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;II)V

    .line 78
    invoke-virtual {v2}, Ljava/io/BufferedWriter;->flush()V
    :try_end_35
    .catch Ljava/lang/Exception; {:try_start_2b .. :try_end_35} :catch_b5
    .catchall {:try_start_2b .. :try_end_35} :catchall_b2

    .line 83
    if-eqz v2, :cond_3a

    .line 84
    :try_start_37
    invoke-virtual {v2}, Ljava/io/BufferedWriter;->close()V
    :try_end_3a
    .catch Ljava/lang/Exception; {:try_start_37 .. :try_end_3a} :catch_3c

    :cond_3a
    move-object v1, v2

    .line 88
    .end local v2    # "writer":Ljava/io/BufferedWriter;
    .restart local v1    # "writer":Ljava/io/BufferedWriter;
    goto :goto_4

    .line 86
    .end local v1    # "writer":Ljava/io/BufferedWriter;
    .restart local v2    # "writer":Ljava/io/BufferedWriter;
    :catch_3c
    move-exception v0

    .line 87
    .local v0, "e":Ljava/lang/Exception;
    const-string v3, "[EpdgEfsStorage]"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Exception : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/sec/epdg/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    move-object v1, v2

    .line 89
    .end local v2    # "writer":Ljava/io/BufferedWriter;
    .restart local v1    # "writer":Ljava/io/BufferedWriter;
    goto :goto_4

    .line 79
    .end local v0    # "e":Ljava/lang/Exception;
    :catch_57
    move-exception v0

    .line 80
    .restart local v0    # "e":Ljava/lang/Exception;
    :goto_58
    :try_start_58
    const-string v3, "[EpdgEfsStorage]"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Exception : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/sec/epdg/Log;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_70
    .catchall {:try_start_58 .. :try_end_70} :catchall_91

    .line 83
    if-eqz v1, :cond_4

    .line 84
    :try_start_72
    invoke-virtual {v1}, Ljava/io/BufferedWriter;->close()V
    :try_end_75
    .catch Ljava/lang/Exception; {:try_start_72 .. :try_end_75} :catch_76

    goto :goto_4

    .line 86
    :catch_76
    move-exception v0

    .line 87
    const-string v3, "[EpdgEfsStorage]"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Exception : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/sec/epdg/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_4

    .line 82
    .end local v0    # "e":Ljava/lang/Exception;
    :catchall_91
    move-exception v3

    .line 83
    :goto_92
    if-eqz v1, :cond_97

    .line 84
    :try_start_94
    invoke-virtual {v1}, Ljava/io/BufferedWriter;->close()V
    :try_end_97
    .catch Ljava/lang/Exception; {:try_start_94 .. :try_end_97} :catch_98

    .line 88
    :cond_97
    :goto_97
    throw v3

    .line 86
    :catch_98
    move-exception v0

    .line 87
    .restart local v0    # "e":Ljava/lang/Exception;
    const-string v4, "[EpdgEfsStorage]"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Exception : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/sec/epdg/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_97

    .line 82
    .end local v0    # "e":Ljava/lang/Exception;
    .end local v1    # "writer":Ljava/io/BufferedWriter;
    .restart local v2    # "writer":Ljava/io/BufferedWriter;
    :catchall_b2
    move-exception v3

    move-object v1, v2

    .end local v2    # "writer":Ljava/io/BufferedWriter;
    .restart local v1    # "writer":Ljava/io/BufferedWriter;
    goto :goto_92

    .line 79
    .end local v1    # "writer":Ljava/io/BufferedWriter;
    .restart local v2    # "writer":Ljava/io/BufferedWriter;
    :catch_b5
    move-exception v0

    move-object v1, v2

    .end local v2    # "writer":Ljava/io/BufferedWriter;
    .restart local v1    # "writer":Ljava/io/BufferedWriter;
    goto :goto_58
.end method
