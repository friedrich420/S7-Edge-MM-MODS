.class public Lcom/sec/epdg/EpdgOmadmSettings;
.super Ljava/lang/Object;
.source "EpdgOmadmSettings.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "[EpdgOmadmSettings]"


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static init()V
    .registers 1

    .prologue
    .line 19
    sget-boolean v0, Lcom/sec/epdg/EpdgOperatorConstants;->SUPPORT_VOWIFI_PROVISIONING:Z

    if-nez v0, :cond_5

    .line 24
    :goto_4
    return-void

    .line 22
    :cond_5
    invoke-static {}, Lcom/sec/epdg/EpdgEfsStorage;->init()V

    .line 23
    invoke-static {}, readFromEfsFile()V

    goto :goto_4
.end method

.method public static readFromEfsFile()V
    .registers 16

    .prologue
    .line 65
    sget-boolean v13, Lcom/sec/epdg/EpdgOperatorConstants;->SUPPORT_VOWIFI_PROVISIONING:Z

    if-nez v13, :cond_5

    .line 142
    .local v1, "content":Ljava/lang/String;
    .local v9, "mWriter":Lcom/sec/epdg/EpdgSettingsWriter;
    .local v11, "settings":Lcom/sec/epdg/EpdgSettings;
    :goto_4
    return-void

    .line 68
    .end local v1    # "content":Ljava/lang/String;
    .end local v9    # "mWriter":Lcom/sec/epdg/EpdgSettingsWriter;
    .end local v11    # "settings":Lcom/sec/epdg/EpdgSettings;
    :cond_5
    invoke-static {}, Lcom/sec/epdg/EpdgService;->getEpdgSettings()Lcom/sec/epdg/EpdgSettings;

    move-result-object v11

    .line 69
    .restart local v11    # "settings":Lcom/sec/epdg/EpdgSettings;
    invoke-static {}, Lcom/sec/epdg/EpdgEfsStorage;->getFileContent()Ljava/lang/String;

    move-result-object v1

    .line 70
    .restart local v1    # "content":Ljava/lang/String;
    invoke-static {}, Lcom/sec/epdg/EpdgService;->getEpdgServiceContext()Landroid/content/Context;

    move-result-object v13

    invoke-static {v13}, Lcom/sec/epdg/EpdgSettingsWriter;->getInstance(Landroid/content/Context;)Lcom/sec/epdg/EpdgSettingsWriter;

    move-result-object v9

    .line 71
    .restart local v9    # "mWriter":Lcom/sec/epdg/EpdgSettingsWriter;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v13

    if-eqz v13, :cond_23

    .line 72
    const-string v13, "[EpdgOmadmSettings]"

    const-string v14, "Empty EFS file"

    invoke-static {v13, v14}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_4

    .line 76
    :cond_23
    :try_start_23
    const-string v13, "\n"

    invoke-virtual {v1, v13}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v8

    .line 77
    .local v8, "lines":[Ljava/lang/String;
    move-object v0, v8

    .local v0, "arr$":[Ljava/lang/String;
    array-length v6, v0

    .local v6, "len$":I
    const/4 v4, 0x0

    .local v4, "i$":I
    :goto_2c
    if-ge v4, v6, :cond_bf

    aget-object v7, v0, v4

    .line 78
    .local v7, "line":Ljava/lang/String;
    const-string v13, ":"

    invoke-virtual {v7, v13}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v10

    .line 79
    .local v10, "parts":[Ljava/lang/String;
    const-string v13, "[EpdgOmadmSettings]"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v15, "line : "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string/jumbo v15, "parts:"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    array-length v15, v10

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 80
    if-eqz v10, :cond_a2

    const/4 v13, 0x2

    array-length v14, v10

    if-ne v13, v14, :cond_a2

    .line 81
    const/4 v13, 0x0

    aget-object v3, v10, v13

    .line 82
    .local v3, "field":Ljava/lang/String;
    const/4 v13, 0x1

    aget-object v12, v10, v13

    .line 83
    .local v12, "value":Ljava/lang/String;
    invoke-static {v12}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    .line 84
    .local v5, "intVal":I
    const-string v13, "[EpdgOmadmSettings]"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "Processing -- "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, ":"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 88
    const-string/jumbo v13, "smartwifirssia"

    invoke-virtual {v3, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_a5

    .line 89
    invoke-virtual {v11}, Lcom/sec/epdg/EpdgSettings;->getWifiRssiA()I

    move-result v13

    if-eq v5, v13, :cond_a2

    .line 90
    const-string/jumbo v13, "smartwifirssia"

    invoke-virtual {v9, v13, v12}, Lcom/sec/epdg/EpdgSettingsWriter;->writeEpdgSetting(Ljava/lang/String;Ljava/lang/String;)V

    .line 77
    .end local v3    # "field":Ljava/lang/String;
    .end local v5    # "intVal":I
    .end local v12    # "value":Ljava/lang/String;
    :cond_a2
    :goto_a2
    add-int/lit8 v4, v4, 0x1

    goto :goto_2c

    .line 93
    .restart local v3    # "field":Ljava/lang/String;
    .restart local v5    # "intVal":I
    .restart local v12    # "value":Ljava/lang/String;
    :cond_a5
    const-string/jumbo v13, "smartwifirssib"

    invoke-virtual {v3, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_c8

    .line 94
    invoke-virtual {v11}, Lcom/sec/epdg/EpdgSettings;->getWifiRssiB()I

    move-result v13

    if-eq v5, v13, :cond_a2

    .line 95
    const-string/jumbo v13, "smartwifirssib"

    invoke-virtual {v9, v13, v12}, Lcom/sec/epdg/EpdgSettingsWriter;->writeEpdgSetting(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_ba
    .catch Ljava/lang/NullPointerException; {:try_start_23 .. :try_end_ba} :catch_bb

    goto :goto_a2

    .line 138
    .end local v0    # "arr$":[Ljava/lang/String;
    .end local v3    # "field":Ljava/lang/String;
    .end local v4    # "i$":I
    .end local v5    # "intVal":I
    .end local v6    # "len$":I
    .end local v7    # "line":Ljava/lang/String;
    .end local v8    # "lines":[Ljava/lang/String;
    .end local v10    # "parts":[Ljava/lang/String;
    .end local v12    # "value":Ljava/lang/String;
    :catch_bb
    move-exception v2

    .line 139
    .local v2, "e":Ljava/lang/NullPointerException;
    invoke-virtual {v2}, Ljava/lang/NullPointerException;->printStackTrace()V

    .line 141
    .end local v2    # "e":Ljava/lang/NullPointerException;
    :cond_bf
    const-string v13, "[EpdgOmadmSettings]"

    const-string v14, "End restoring EFS file"

    invoke-static {v13, v14}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_4

    .line 98
    .restart local v0    # "arr$":[Ljava/lang/String;
    .restart local v3    # "field":Ljava/lang/String;
    .restart local v4    # "i$":I
    .restart local v5    # "intVal":I
    .restart local v6    # "len$":I
    .restart local v7    # "line":Ljava/lang/String;
    .restart local v8    # "lines":[Ljava/lang/String;
    .restart local v10    # "parts":[Ljava/lang/String;
    .restart local v12    # "value":Ljava/lang/String;
    :cond_c8
    :try_start_c8
    const-string/jumbo v13, "smartwifirsrp1"

    invoke-virtual {v3, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_de

    .line 99
    invoke-virtual {v11}, Lcom/sec/epdg/EpdgSettings;->getLteRsrp1()I

    move-result v13

    if-eq v5, v13, :cond_a2

    .line 100
    const-string/jumbo v13, "smartwifirsrp1"

    invoke-virtual {v9, v13, v12}, Lcom/sec/epdg/EpdgSettingsWriter;->writeEpdgSetting(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_a2

    .line 103
    :cond_de
    const-string/jumbo v13, "smartwifirsrp2"

    invoke-virtual {v3, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_f4

    .line 104
    invoke-virtual {v11}, Lcom/sec/epdg/EpdgSettings;->getLteRsrp2()I

    move-result v13

    if-eq v5, v13, :cond_a2

    .line 105
    const-string/jumbo v13, "smartwifirsrp2"

    invoke-virtual {v9, v13, v12}, Lcom/sec/epdg/EpdgSettingsWriter;->writeEpdgSetting(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_a2

    .line 108
    :cond_f4
    const-string/jumbo v13, "smartwifirsrp3"

    invoke-virtual {v3, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_10a

    .line 109
    invoke-virtual {v11}, Lcom/sec/epdg/EpdgSettings;->getLteRsrp3()I

    move-result v13

    if-eq v5, v13, :cond_a2

    .line 110
    const-string/jumbo v13, "smartwifirsrp3"

    invoke-virtual {v9, v13, v12}, Lcom/sec/epdg/EpdgSettingsWriter;->writeEpdgSetting(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_a2

    .line 113
    :cond_10a
    const-string/jumbo v13, "smartwificdmarssi"

    invoke-virtual {v3, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_120

    .line 114
    invoke-virtual {v11}, Lcom/sec/epdg/EpdgSettings;->getCdmaRssi()I

    move-result v13

    if-eq v5, v13, :cond_a2

    .line 115
    const-string/jumbo v13, "smartwificdmarssi"

    invoke-virtual {v9, v13, v12}, Lcom/sec/epdg/EpdgSettingsWriter;->writeEpdgSetting(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_a2

    .line 118
    :cond_120
    const-string/jumbo v13, "tepdgltetimer"

    invoke-virtual {v3, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_137

    .line 119
    invoke-virtual {v11}, Lcom/sec/epdg/EpdgSettings;->getTepdgLteTimer()I

    move-result v13

    if-eq v5, v13, :cond_a2

    .line 120
    const-string/jumbo v13, "tepdgltetimer"

    invoke-virtual {v9, v13, v12}, Lcom/sec/epdg/EpdgSettingsWriter;->writeEpdgSetting(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_a2

    .line 123
    :cond_137
    const-string/jumbo v13, "tepdg1xtimer"

    invoke-virtual {v3, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_14e

    .line 124
    invoke-virtual {v11}, Lcom/sec/epdg/EpdgSettings;->getTepdg1xTimer()I

    move-result v13

    if-eq v5, v13, :cond_a2

    .line 125
    const-string/jumbo v13, "tepdg1xtimer"

    invoke-virtual {v9, v13, v12}, Lcom/sec/epdg/EpdgSettingsWriter;->writeEpdgSetting(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_a2

    .line 128
    :cond_14e
    const-string/jumbo v13, "sysseltimer"

    invoke-virtual {v3, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_165

    .line 129
    invoke-virtual {v11}, Lcom/sec/epdg/EpdgSettings;->getSysSelTimer()I

    move-result v13

    if-eq v5, v13, :cond_a2

    .line 130
    const-string/jumbo v13, "sysseltimer"

    invoke-virtual {v9, v13, v12}, Lcom/sec/epdg/EpdgSettingsWriter;->writeEpdgSetting(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_a2

    .line 134
    :cond_165
    const-string v13, "[EpdgOmadmSettings]"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "FIX ME -- Unhandled field : "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Lcom/sec/epdg/Log;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_17d
    .catch Ljava/lang/NullPointerException; {:try_start_c8 .. :try_end_17d} :catch_bb

    goto/16 :goto_a2
.end method

.method public static writeToEFSFile()V
    .registers 4

    .prologue
    .line 27
    sget-boolean v2, Lcom/sec/epdg/EpdgOperatorConstants;->SUPPORT_VOWIFI_PROVISIONING:Z

    if-nez v2, :cond_5

    .line 62
    .local v0, "content":Ljava/lang/StringBuilder;
    .local v1, "settings":Lcom/sec/epdg/EpdgSettings;
    :goto_4
    return-void

    .line 30
    .end local v0    # "content":Ljava/lang/StringBuilder;
    .end local v1    # "settings":Lcom/sec/epdg/EpdgSettings;
    :cond_5
    invoke-static {}, Lcom/sec/epdg/EpdgService;->getEpdgSettings()Lcom/sec/epdg/EpdgSettings;

    move-result-object v1

    .line 31
    .restart local v1    # "settings":Lcom/sec/epdg/EpdgSettings;
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 32
    .restart local v0    # "content":Ljava/lang/StringBuilder;
    const-string v2, ""

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 34
    invoke-static {}, Lcom/sec/epdg/EpdgUtils;->isOperatorVerizon()Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_173

    .line 35
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "smartwifirssia:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v1}, Lcom/sec/epdg/EpdgSettings;->getWifiRssiA()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 37
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "smartwifirssib:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v1}, Lcom/sec/epdg/EpdgSettings;->getWifiRssiB()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 39
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "smartwifirsrp1:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v1}, Lcom/sec/epdg/EpdgSettings;->getLteRsrp1()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 41
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "smartwifirsrp2:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v1}, Lcom/sec/epdg/EpdgSettings;->getLteRsrp2()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 43
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "smartwifirsrp3:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v1}, Lcom/sec/epdg/EpdgSettings;->getLteRsrp3()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 45
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "smartwificdmarssi:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v1}, Lcom/sec/epdg/EpdgSettings;->getCdmaRssi()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 47
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "tepdgltetimer:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v1}, Lcom/sec/epdg/EpdgSettings;->getTepdgLteTimer()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 49
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "tepdg1xtimer:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v1}, Lcom/sec/epdg/EpdgSettings;->getTepdg1xTimer()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 51
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "sysseltimer:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v1}, Lcom/sec/epdg/EpdgSettings;->getSysSelTimer()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 61
    :cond_16a
    :goto_16a
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/sec/epdg/EpdgEfsStorage;->setFileContent(Ljava/lang/String;)V

    goto/16 :goto_4

    .line 53
    :cond_173
    invoke-static {}, Lcom/sec/epdg/EpdgUtils;->isOperatorSpr()Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_16a

    .line 54
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "smartwifirssia:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v1}, Lcom/sec/epdg/EpdgSettings;->getWifiRssiA()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 56
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "smartwifirssib:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v1}, Lcom/sec/epdg/EpdgSettings;->getWifiRssiB()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_16a
.end method
