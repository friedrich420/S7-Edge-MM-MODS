.class public Lcom/android/settings/accessibility/sharedaccessibility/kies/XmlBackup;
.super Landroid/content/BroadcastReceiver;
.source "XmlBackup.java"


# static fields
.field private static cipher:Ljavax/crypto/Cipher;

.field private static revSettingValues:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static salt:[B

.field private static secretKey:Ljavax/crypto/spec/SecretKeySpec;

.field private static settingValue:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 49
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method private Backup(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V
    .locals 26
    .param p1, "mContext"    # Landroid/content/Context;
    .param p2, "path"    # Ljava/lang/String;
    .param p3, "source"    # Ljava/lang/String;
    .param p4, "saveKey"    # Ljava/lang/String;
    .param p5, "securityLevel"    # I

    .prologue
    .line 96
    new-instance v8, Ljava/io/File;

    move-object/from16 v0, p2

    invoke-direct {v8, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 97
    .local v8, "dir":Ljava/io/File;
    invoke-virtual {v8}, Ljava/io/File;->exists()Z

    move-result v22

    if-nez v22, :cond_0

    .line 98
    invoke-virtual {v8}, Ljava/io/File;->mkdirs()Z

    .line 100
    :cond_0
    new-instance v18, Ljava/io/File;

    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v22

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    const-string v23, "/Settingsofaccessibility.esasf"

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, v18

    move-object/from16 v1, v22

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 101
    .local v18, "saveFile":Ljava/io/File;
    invoke-virtual/range {v18 .. v18}, Ljava/io/File;->exists()Z

    move-result v22

    if-nez v22, :cond_1

    .line 103
    :try_start_0
    invoke-virtual/range {v18 .. v18}, Ljava/io/File;->createNewFile()Z
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2

    .line 109
    :cond_1
    :goto_0
    const/16 v17, 0x0

    .line 110
    .local v17, "result":I
    const/4 v10, 0x0

    .line 112
    .local v10, "err_code":I
    new-instance v22, Ljava/util/HashMap;

    invoke-direct/range {v22 .. v22}, Ljava/util/HashMap;-><init>()V

    sput-object v22, Lcom/android/settings/accessibility/sharedaccessibility/kies/XmlBackup;->settingValue:Ljava/util/HashMap;

    .line 113
    const/4 v15, 0x0

    .line 114
    .local v15, "newfos":Ljava/io/OutputStream;
    const/4 v11, 0x0

    .line 116
    .local v11, "fout":Ljava/io/FileOutputStream;
    :try_start_1
    new-instance v21, Ljava/io/StringWriter;

    invoke-direct/range {v21 .. v21}, Ljava/io/StringWriter;-><init>()V

    .line 117
    .local v21, "writer":Ljava/io/StringWriter;
    new-instance v12, Ljava/io/FileOutputStream;

    move-object/from16 v0, v18

    invoke-direct {v12, v0}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_6
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_5
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 118
    .end local v11    # "fout":Ljava/io/FileOutputStream;
    .local v12, "fout":Ljava/io/FileOutputStream;
    :try_start_2
    move/from16 v0, p5

    move-object/from16 v1, p4

    invoke-static {v12, v0, v1}, Lcom/android/settings/accessibility/sharedaccessibility/kies/XmlBackup;->encryptStream(Ljava/io/OutputStream;ILjava/lang/String;)Ljava/io/OutputStream;

    move-result-object v15

    .line 120
    const/16 v22, 0x1

    sput v22, Lcom/android/settings/accessibility/sharedaccessibility/ShareAccVariable;->SaveFlag:I

    .line 122
    sget-object v22, Lcom/android/settings/accessibility/sharedaccessibility/kies/XmlBackup;->settingValue:Ljava/util/HashMap;

    if-eqz v22, :cond_2

    .line 123
    sget-object v22, Lcom/android/settings/accessibility/sharedaccessibility/kies/XmlBackup;->settingValue:Ljava/util/HashMap;

    invoke-virtual/range {v22 .. v22}, Ljava/util/HashMap;->clear()V

    .line 126
    :cond_2
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v22

    invoke-static/range {v22 .. v22}, Lcom/android/settings/accessibility/sharedaccessibility/ShareAccessibilitySettingsCommonFunction;->saveValue(Landroid/content/Context;)Ljava/util/HashMap;

    move-result-object v22

    sput-object v22, Lcom/android/settings/accessibility/sharedaccessibility/kies/XmlBackup;->settingValue:Ljava/util/HashMap;

    .line 129
    invoke-static {}, Landroid/util/Xml;->newSerializer()Lorg/xmlpull/v1/XmlSerializer;

    move-result-object v19

    .line 130
    .local v19, "serializer":Lorg/xmlpull/v1/XmlSerializer;
    if-nez v19, :cond_3

    .line 131
    const-string v22, "KiesBackup"

    const-string v23, "serializer is null"

    invoke-static/range {v22 .. v23}, Landroid/util/secutil/Log;->secE(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catch Ljava/lang/RuntimeException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_4
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 134
    :cond_3
    :try_start_3
    move-object/from16 v0, v19

    move-object/from16 v1, v21

    invoke-interface {v0, v1}, Lorg/xmlpull/v1/XmlSerializer;->setOutput(Ljava/io/Writer;)V

    .line 138
    const-string v22, "UTF-8"

    const/16 v23, 0x1

    invoke-static/range {v23 .. v23}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v23

    move-object/from16 v0, v19

    move-object/from16 v1, v22

    move-object/from16 v2, v23

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->startDocument(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 140
    const-string v22, "http://xmlpull.org/v1/doc/features.html#indent-output"

    const/16 v23, 0x1

    move-object/from16 v0, v19

    move-object/from16 v1, v22

    move/from16 v2, v23

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->setFeature(Ljava/lang/String;Z)V

    .line 143
    const-string v22, "ro.product.model"

    const-string v23, "Unknown"

    invoke-static/range {v22 .. v23}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 144
    .local v4, "ModelNumber":Ljava/lang/String;
    const-string v22, "KiesBackup"

    new-instance v23, Ljava/lang/StringBuilder;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    const-string v24, "model is "

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, v23

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    invoke-static/range {v22 .. v23}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 147
    const/16 v22, 0x0

    const-string v23, "SharingAccessibilitySettings"

    move-object/from16 v0, v19

    move-object/from16 v1, v22

    move-object/from16 v2, v23

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 148
    const/16 v22, 0x0

    const-string v23, "Version"

    const-string v24, "1.0"

    move-object/from16 v0, v19

    move-object/from16 v1, v22

    move-object/from16 v2, v23

    move-object/from16 v3, v24

    invoke-interface {v0, v1, v2, v3}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 149
    const/16 v22, 0x0

    const-string v23, "Platform"

    const-string v24, "LL"

    move-object/from16 v0, v19

    move-object/from16 v1, v22

    move-object/from16 v2, v23

    move-object/from16 v3, v24

    invoke-interface {v0, v1, v2, v3}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 150
    const/16 v22, 0x0

    const-string v23, "ModelNumber"

    move-object/from16 v0, v19

    move-object/from16 v1, v22

    move-object/from16 v2, v23

    invoke-interface {v0, v1, v2, v4}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 153
    sget-object v22, Lcom/android/settings/accessibility/sharedaccessibility/kies/XmlBackup;->settingValue:Ljava/util/HashMap;

    invoke-virtual/range {v22 .. v22}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v22

    invoke-interface/range {v22 .. v22}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v14

    .line 156
    .local v14, "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    :goto_1
    invoke-interface {v14}, Ljava/util/Iterator;->hasNext()Z

    move-result v22

    if-eqz v22, :cond_5

    .line 157
    invoke-interface {v14}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v20

    check-cast v20, Ljava/lang/String;

    .line 158
    .local v20, "settingValueKey":Ljava/lang/String;
    const/16 v22, 0x0

    move-object/from16 v0, v19

    move-object/from16 v1, v22

    move-object/from16 v2, v20

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 159
    sget-object v22, Lcom/android/settings/accessibility/sharedaccessibility/kies/XmlBackup;->settingValue:Ljava/util/HashMap;

    move-object/from16 v0, v22

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v22

    if-eqz v22, :cond_4

    .line 160
    sget-object v22, Lcom/android/settings/accessibility/sharedaccessibility/kies/XmlBackup;->settingValue:Ljava/util/HashMap;

    move-object/from16 v0, v22

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v22

    check-cast v22, Ljava/lang/String;

    move-object/from16 v0, v19

    move-object/from16 v1, v22

    invoke-interface {v0, v1}, Lorg/xmlpull/v1/XmlSerializer;->text(Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 161
    const-string v23, "[saveValueToFile]"

    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string v24, "key : ["

    move-object/from16 v0, v22

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, v22

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    const-string v24, "]"

    move-object/from16 v0, v22

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    const-string v24, " : "

    move-object/from16 v0, v22

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    sget-object v22, Lcom/android/settings/accessibility/sharedaccessibility/kies/XmlBackup;->settingValue:Ljava/util/HashMap;

    move-object/from16 v0, v22

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v22

    check-cast v22, Ljava/lang/String;

    invoke-virtual/range {v22 .. v22}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, v24

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, v23

    move-object/from16 v1, v22

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 164
    :cond_4
    const/16 v22, 0x0

    move-object/from16 v0, v19

    move-object/from16 v1, v22

    move-object/from16 v2, v20

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;
    :try_end_3
    .catch Ljava/lang/RuntimeException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto/16 :goto_1

    .line 174
    .end local v4    # "ModelNumber":Ljava/lang/String;
    .end local v14    # "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    .end local v20    # "settingValueKey":Ljava/lang/String;
    :catch_0
    move-exception v9

    .line 175
    .local v9, "e":Ljava/lang/RuntimeException;
    :try_start_4
    invoke-virtual {v9}, Ljava/lang/RuntimeException;->printStackTrace()V

    .line 176
    const/16 v17, 0x1

    .line 177
    const/4 v10, 0x1

    .line 178
    const-string v22, "KiesBackup"

    const-string v23, "RuntimeException occured"

    invoke-static/range {v22 .. v23}, Landroid/util/secutil/Log;->secE(Ljava/lang/String;Ljava/lang/String;)I

    .line 186
    .end local v9    # "e":Ljava/lang/RuntimeException;
    :goto_2
    new-instance v13, Ljava/io/ByteArrayInputStream;

    invoke-virtual/range {v21 .. v21}, Ljava/io/StringWriter;->toString()Ljava/lang/String;

    move-result-object v22

    const-string v23, "UTF-8"

    invoke-virtual/range {v22 .. v23}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v22

    move-object/from16 v0, v22

    invoke-direct {v13, v0}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    .line 187
    .local v13, "in":Ljava/io/InputStream;
    new-instance v6, Ljava/io/BufferedInputStream;

    invoke-direct {v6, v13}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V

    .line 189
    .local v6, "bis":Ljava/io/BufferedInputStream;
    const/16 v16, 0x0

    .line 190
    .local v16, "readcount":I
    const/16 v22, 0x400

    move/from16 v0, v22

    new-array v7, v0, [B

    .line 191
    .local v7, "buffer":[B
    :goto_3
    const/16 v22, 0x0

    const/16 v23, 0x400

    move/from16 v0, v22

    move/from16 v1, v23

    invoke-virtual {v6, v7, v0, v1}, Ljava/io/BufferedInputStream;->read([BII)I

    move-result v16

    const/16 v22, -0x1

    move/from16 v0, v16

    move/from16 v1, v22

    if-eq v0, v1, :cond_6

    .line 192
    const/16 v22, 0x0

    move/from16 v0, v22

    move/from16 v1, v16

    invoke-virtual {v15, v7, v0, v1}, Ljava/io/OutputStream;->write([BII)V
    :try_end_4
    .catch Ljava/lang/RuntimeException; {:try_start_4 .. :try_end_4} :catch_1
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    goto :goto_3

    .line 196
    .end local v6    # "bis":Ljava/io/BufferedInputStream;
    .end local v7    # "buffer":[B
    .end local v13    # "in":Ljava/io/InputStream;
    .end local v16    # "readcount":I
    .end local v19    # "serializer":Lorg/xmlpull/v1/XmlSerializer;
    :catch_1
    move-exception v9

    move-object v11, v12

    .line 197
    .end local v12    # "fout":Ljava/io/FileOutputStream;
    .end local v21    # "writer":Ljava/io/StringWriter;
    .restart local v9    # "e":Ljava/lang/RuntimeException;
    .restart local v11    # "fout":Ljava/io/FileOutputStream;
    :goto_4
    :try_start_5
    invoke-virtual {v9}, Ljava/lang/RuntimeException;->printStackTrace()V

    .line 198
    const/16 v17, 0x1

    .line 199
    const/4 v10, 0x2

    .line 200
    const-string v22, "KiesBackup"

    const-string v23, "RuntimeException occured!"

    invoke-static/range {v22 .. v23}, Landroid/util/secutil/Log;->secE(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 207
    move-object/from16 v0, p0

    invoke-direct {v0, v15}, Lcom/android/settings/accessibility/sharedaccessibility/kies/XmlBackup;->close(Ljava/io/OutputStream;)V

    .line 208
    move-object/from16 v0, p0

    invoke-direct {v0, v11}, Lcom/android/settings/accessibility/sharedaccessibility/kies/XmlBackup;->close(Ljava/io/OutputStream;)V

    .line 211
    .end local v9    # "e":Ljava/lang/RuntimeException;
    :goto_5
    new-instance v5, Landroid/content/Intent;

    const-string v22, "com.samsung.android.intent.action.RESPONSE_BACKUP_ACC_SETTING"

    move-object/from16 v0, v22

    invoke-direct {v5, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 212
    .local v5, "backup_accessibility":Landroid/content/Intent;
    const-string v22, "RESULT"

    move-object/from16 v0, v22

    move/from16 v1, v17

    invoke-virtual {v5, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 213
    const-string v22, "ERR_CODE"

    move-object/from16 v0, v22

    invoke-virtual {v5, v0, v10}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 218
    const-string v22, "REQ_SIZE"

    invoke-virtual/range {v18 .. v18}, Ljava/io/File;->length()J

    move-result-wide v24

    move-wide/from16 v0, v24

    long-to-int v0, v0

    move/from16 v23, v0

    move-object/from16 v0, v22

    move/from16 v1, v23

    invoke-virtual {v5, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 219
    const-string v22, "REBOOT"

    const/16 v23, 0x0

    move-object/from16 v0, v22

    move/from16 v1, v23

    invoke-virtual {v5, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 220
    const-string v22, "SOURCE"

    move-object/from16 v0, v22

    move-object/from16 v1, p3

    invoke-virtual {v5, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 222
    move-object/from16 v0, p1

    invoke-virtual {v0, v5}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 223
    return-void

    .line 104
    .end local v5    # "backup_accessibility":Landroid/content/Intent;
    .end local v10    # "err_code":I
    .end local v11    # "fout":Ljava/io/FileOutputStream;
    .end local v15    # "newfos":Ljava/io/OutputStream;
    .end local v17    # "result":I
    :catch_2
    move-exception v9

    .line 105
    .local v9, "e":Ljava/io/IOException;
    const-string v22, "KiesBackup"

    const-string v23, "IOException: exception in createNewFile() method"

    invoke-static/range {v22 .. v23}, Landroid/util/secutil/Log;->secE(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 168
    .end local v9    # "e":Ljava/io/IOException;
    .restart local v4    # "ModelNumber":Ljava/lang/String;
    .restart local v10    # "err_code":I
    .restart local v12    # "fout":Ljava/io/FileOutputStream;
    .restart local v14    # "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    .restart local v15    # "newfos":Ljava/io/OutputStream;
    .restart local v17    # "result":I
    .restart local v19    # "serializer":Lorg/xmlpull/v1/XmlSerializer;
    .restart local v21    # "writer":Ljava/io/StringWriter;
    :cond_5
    const/16 v22, 0x0

    :try_start_6
    const-string v23, "SharingAccessibilitySettings"

    move-object/from16 v0, v19

    move-object/from16 v1, v22

    move-object/from16 v2, v23

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 169
    invoke-interface/range {v19 .. v19}, Lorg/xmlpull/v1/XmlSerializer;->endDocument()V

    .line 171
    invoke-interface/range {v19 .. v19}, Lorg/xmlpull/v1/XmlSerializer;->flush()V

    .line 173
    const/16 v22, 0x0

    sput v22, Lcom/android/settings/accessibility/sharedaccessibility/ShareAccVariable;->SaveFlag:I
    :try_end_6
    .catch Ljava/lang/RuntimeException; {:try_start_6 .. :try_end_6} :catch_0
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_3
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    goto/16 :goto_2

    .line 179
    .end local v4    # "ModelNumber":Ljava/lang/String;
    .end local v14    # "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    :catch_3
    move-exception v9

    .line 180
    .local v9, "e":Ljava/lang/Exception;
    :try_start_7
    const-string v22, "KiesBackup"

    new-instance v23, Ljava/lang/StringBuilder;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    const-string v24, "Exception >>"

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, v23

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    invoke-static/range {v22 .. v23}, Landroid/util/secutil/Log;->secE(Ljava/lang/String;Ljava/lang/String;)I

    .line 181
    const/16 v17, 0x1

    .line 182
    const/4 v10, 0x1

    .line 183
    const-string v22, "KiesBackup"

    const-string v23, "Error occured while generate XML"

    invoke-static/range {v22 .. v23}, Landroid/util/secutil/Log;->secE(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_7
    .catch Ljava/lang/RuntimeException; {:try_start_7 .. :try_end_7} :catch_1
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_4
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    goto/16 :goto_2

    .line 201
    .end local v9    # "e":Ljava/lang/Exception;
    .end local v19    # "serializer":Lorg/xmlpull/v1/XmlSerializer;
    :catch_4
    move-exception v9

    move-object v11, v12

    .line 202
    .end local v12    # "fout":Ljava/io/FileOutputStream;
    .end local v21    # "writer":Ljava/io/StringWriter;
    .restart local v9    # "e":Ljava/lang/Exception;
    .restart local v11    # "fout":Ljava/io/FileOutputStream;
    :goto_6
    :try_start_8
    invoke-virtual {v9}, Ljava/lang/Exception;->printStackTrace()V

    .line 203
    const/16 v17, 0x1

    .line 204
    const/4 v10, 0x2

    .line 205
    const-string v22, "KiesBackup"

    const-string v23, "File error occured!"

    invoke-static/range {v22 .. v23}, Landroid/util/secutil/Log;->secE(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    .line 207
    move-object/from16 v0, p0

    invoke-direct {v0, v15}, Lcom/android/settings/accessibility/sharedaccessibility/kies/XmlBackup;->close(Ljava/io/OutputStream;)V

    .line 208
    move-object/from16 v0, p0

    invoke-direct {v0, v11}, Lcom/android/settings/accessibility/sharedaccessibility/kies/XmlBackup;->close(Ljava/io/OutputStream;)V

    goto/16 :goto_5

    .line 195
    .end local v9    # "e":Ljava/lang/Exception;
    .end local v11    # "fout":Ljava/io/FileOutputStream;
    .restart local v6    # "bis":Ljava/io/BufferedInputStream;
    .restart local v7    # "buffer":[B
    .restart local v12    # "fout":Ljava/io/FileOutputStream;
    .restart local v13    # "in":Ljava/io/InputStream;
    .restart local v16    # "readcount":I
    .restart local v19    # "serializer":Lorg/xmlpull/v1/XmlSerializer;
    .restart local v21    # "writer":Ljava/io/StringWriter;
    :cond_6
    :try_start_9
    move-object/from16 v0, p0

    invoke-direct {v0, v15}, Lcom/android/settings/accessibility/sharedaccessibility/kies/XmlBackup;->close(Ljava/io/OutputStream;)V
    :try_end_9
    .catch Ljava/lang/RuntimeException; {:try_start_9 .. :try_end_9} :catch_1
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_4
    .catchall {:try_start_9 .. :try_end_9} :catchall_1

    .line 207
    move-object/from16 v0, p0

    invoke-direct {v0, v15}, Lcom/android/settings/accessibility/sharedaccessibility/kies/XmlBackup;->close(Ljava/io/OutputStream;)V

    .line 208
    move-object/from16 v0, p0

    invoke-direct {v0, v12}, Lcom/android/settings/accessibility/sharedaccessibility/kies/XmlBackup;->close(Ljava/io/OutputStream;)V

    move-object v11, v12

    .line 209
    .end local v12    # "fout":Ljava/io/FileOutputStream;
    .restart local v11    # "fout":Ljava/io/FileOutputStream;
    goto/16 :goto_5

    .line 207
    .end local v6    # "bis":Ljava/io/BufferedInputStream;
    .end local v7    # "buffer":[B
    .end local v13    # "in":Ljava/io/InputStream;
    .end local v16    # "readcount":I
    .end local v19    # "serializer":Lorg/xmlpull/v1/XmlSerializer;
    .end local v21    # "writer":Ljava/io/StringWriter;
    :catchall_0
    move-exception v22

    :goto_7
    move-object/from16 v0, p0

    invoke-direct {v0, v15}, Lcom/android/settings/accessibility/sharedaccessibility/kies/XmlBackup;->close(Ljava/io/OutputStream;)V

    .line 208
    move-object/from16 v0, p0

    invoke-direct {v0, v11}, Lcom/android/settings/accessibility/sharedaccessibility/kies/XmlBackup;->close(Ljava/io/OutputStream;)V

    throw v22

    .line 207
    .end local v11    # "fout":Ljava/io/FileOutputStream;
    .restart local v12    # "fout":Ljava/io/FileOutputStream;
    .restart local v21    # "writer":Ljava/io/StringWriter;
    :catchall_1
    move-exception v22

    move-object v11, v12

    .end local v12    # "fout":Ljava/io/FileOutputStream;
    .restart local v11    # "fout":Ljava/io/FileOutputStream;
    goto :goto_7

    .line 201
    .end local v21    # "writer":Ljava/io/StringWriter;
    :catch_5
    move-exception v9

    goto :goto_6

    .line 196
    :catch_6
    move-exception v9

    goto/16 :goto_4
.end method

.method private Restore(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V
    .locals 26
    .param p1, "mContext"    # Landroid/content/Context;
    .param p2, "path"    # Ljava/lang/String;
    .param p3, "source"    # Ljava/lang/String;
    .param p4, "saveKey"    # Ljava/lang/String;
    .param p5, "securityLevel"    # I

    .prologue
    .line 226
    new-instance v15, Ljava/io/File;

    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v22

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    const-string v23, "/Settingsofaccessibility.esasf"

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, v22

    invoke-direct {v15, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 228
    .local v15, "loadFile":Ljava/io/File;
    const/16 v19, 0x0

    .line 229
    .local v19, "result":I
    const/4 v8, 0x0

    .line 231
    .local v8, "err_code":I
    invoke-virtual {v15}, Ljava/io/File;->exists()Z

    move-result v22

    if-nez v22, :cond_0

    .line 232
    const-string v22, "KiesBackup"

    const-string v23, "loadFile is not exists."

    invoke-static/range {v22 .. v23}, Landroid/util/secutil/Log;->secE(Ljava/lang/String;Ljava/lang/String;)I

    .line 233
    const/16 v19, 0x1

    .line 234
    const/4 v8, 0x3

    .line 334
    :goto_0
    return-void

    .line 238
    :cond_0
    new-instance v22, Ljava/util/HashMap;

    invoke-direct/range {v22 .. v22}, Ljava/util/HashMap;-><init>()V

    sput-object v22, Lcom/android/settings/accessibility/sharedaccessibility/kies/XmlBackup;->revSettingValues:Ljava/util/HashMap;

    .line 239
    const/4 v14, 0x0

    .line 240
    .local v14, "is":Ljava/io/InputStream;
    const/4 v11, 0x0

    .line 242
    .local v11, "fis":Ljava/io/FileInputStream;
    :try_start_0
    new-instance v12, Ljava/io/FileInputStream;

    invoke-direct {v12, v15}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_4
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 243
    .end local v11    # "fis":Ljava/io/FileInputStream;
    .local v12, "fis":Ljava/io/FileInputStream;
    :try_start_1
    move/from16 v0, p5

    move-object/from16 v1, p4

    invoke-static {v12, v0, v1}, Lcom/android/settings/accessibility/sharedaccessibility/kies/XmlBackup;->decryptStream(Ljava/io/InputStream;ILjava/lang/String;)Ljava/io/InputStream;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v14

    .line 247
    :try_start_2
    invoke-static {}, Ljavax/xml/parsers/DocumentBuilderFactory;->newInstance()Ljavax/xml/parsers/DocumentBuilderFactory;

    move-result-object v9

    .line 248
    .local v9, "factory":Ljavax/xml/parsers/DocumentBuilderFactory;
    invoke-virtual {v9}, Ljavax/xml/parsers/DocumentBuilderFactory;->newDocumentBuilder()Ljavax/xml/parsers/DocumentBuilder;
    :try_end_2
    .catch Ljavax/xml/parsers/ParserConfigurationException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_3
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result-object v5

    .line 250
    .local v5, "db":Ljavax/xml/parsers/DocumentBuilder;
    const/4 v6, 0x0

    .line 253
    .local v6, "doc":Lorg/w3c/dom/Document;
    :try_start_3
    invoke-virtual {v5, v14}, Ljavax/xml/parsers/DocumentBuilder;->parse(Ljava/io/InputStream;)Lorg/w3c/dom/Document;
    :try_end_3
    .catch Lorg/xml/sax/SAXException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Ljavax/xml/parsers/ParserConfigurationException; {:try_start_3 .. :try_end_3} :catch_1
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    move-result-object v6

    .line 262
    :goto_1
    :try_start_4
    invoke-interface {v6}, Lorg/w3c/dom/Document;->getDocumentElement()Lorg/w3c/dom/Element;

    move-result-object v22

    invoke-interface/range {v22 .. v22}, Lorg/w3c/dom/Element;->normalize()V

    .line 264
    const-string v22, "SharingAccessibilitySettings"

    move-object/from16 v0, v22

    invoke-interface {v6, v0}, Lorg/w3c/dom/Document;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v20

    .line 266
    .local v20, "rootNodes":Lorg/w3c/dom/NodeList;
    const/16 v22, 0x0

    move-object/from16 v0, v20

    move/from16 v1, v22

    invoke-interface {v0, v1}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v22

    if-nez v22, :cond_1

    .line 267
    const-string v22, "KiesBackup"

    const-string v23, "It is not valid sharing accessibility settings file"

    invoke-static/range {v22 .. v23}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 268
    const/16 v19, 0x1

    .line 269
    const/4 v8, 0x3

    .line 270
    move-object/from16 v0, p0

    invoke-direct {v0, v14}, Lcom/android/settings/accessibility/sharedaccessibility/kies/XmlBackup;->close(Ljava/io/InputStream;)V
    :try_end_4
    .catch Ljavax/xml/parsers/ParserConfigurationException; {:try_start_4 .. :try_end_4} :catch_1
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_3
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 302
    .end local v5    # "db":Ljavax/xml/parsers/DocumentBuilder;
    .end local v6    # "doc":Lorg/w3c/dom/Document;
    .end local v9    # "factory":Ljavax/xml/parsers/DocumentBuilderFactory;
    .end local v20    # "rootNodes":Lorg/w3c/dom/NodeList;
    :goto_2
    :try_start_5
    sget-object v22, Lcom/android/settings/accessibility/sharedaccessibility/kies/XmlBackup;->revSettingValues:Ljava/util/HashMap;

    invoke-virtual/range {v22 .. v22}, Ljava/util/HashMap;->toString()Ljava/lang/String;

    move-result-object v22

    const-string v23, "{}"

    invoke-virtual/range {v22 .. v23}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v22

    if-eqz v22, :cond_5

    .line 303
    const/16 v19, 0x1

    .line 304
    const/16 v19, 0x3

    .line 305
    const-string v22, "KiesBackup"

    const-string v23, "RevSettingValues is null"

    invoke-static/range {v22 .. v23}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 312
    :goto_3
    move-object/from16 v0, p0

    invoke-direct {v0, v14}, Lcom/android/settings/accessibility/sharedaccessibility/kies/XmlBackup;->close(Ljava/io/InputStream;)V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_2
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 318
    move-object/from16 v0, p0

    invoke-direct {v0, v14}, Lcom/android/settings/accessibility/sharedaccessibility/kies/XmlBackup;->close(Ljava/io/InputStream;)V

    .line 319
    move-object/from16 v0, p0

    invoke-direct {v0, v12}, Lcom/android/settings/accessibility/sharedaccessibility/kies/XmlBackup;->close(Ljava/io/InputStream;)V

    move-object v11, v12

    .line 322
    .end local v12    # "fis":Ljava/io/FileInputStream;
    .restart local v11    # "fis":Ljava/io/FileInputStream;
    :goto_4
    new-instance v18, Landroid/content/Intent;

    const-string v22, "com.samsung.android.intent.action.RESPONSE_RESTORE_ACC_SETTING"

    move-object/from16 v0, v18

    move-object/from16 v1, v22

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 323
    .local v18, "restore_accessibility":Landroid/content/Intent;
    const-string v22, "RESULT"

    move-object/from16 v0, v18

    move-object/from16 v1, v22

    move/from16 v2, v19

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 324
    const-string v22, "ERR_CODE"

    move-object/from16 v0, v18

    move-object/from16 v1, v22

    invoke-virtual {v0, v1, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 329
    const-string v22, "REQ_SIZE"

    invoke-virtual {v15}, Ljava/io/File;->length()J

    move-result-wide v24

    move-wide/from16 v0, v24

    long-to-int v0, v0

    move/from16 v23, v0

    move-object/from16 v0, v18

    move-object/from16 v1, v22

    move/from16 v2, v23

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 330
    const-string v22, "REBOOT"

    const/16 v23, 0x0

    move-object/from16 v0, v18

    move-object/from16 v1, v22

    move/from16 v2, v23

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 331
    const-string v22, "SOURCE"

    move-object/from16 v0, v18

    move-object/from16 v1, v22

    move-object/from16 v2, p3

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 333
    move-object/from16 v0, p1

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 254
    .end local v11    # "fis":Ljava/io/FileInputStream;
    .end local v18    # "restore_accessibility":Landroid/content/Intent;
    .restart local v5    # "db":Ljavax/xml/parsers/DocumentBuilder;
    .restart local v6    # "doc":Lorg/w3c/dom/Document;
    .restart local v9    # "factory":Ljavax/xml/parsers/DocumentBuilderFactory;
    .restart local v12    # "fis":Ljava/io/FileInputStream;
    :catch_0
    move-exception v7

    .line 255
    .local v7, "e":Lorg/xml/sax/SAXException;
    const/16 v19, 0x1

    .line 256
    const/4 v8, 0x1

    .line 257
    :try_start_6
    move-object/from16 v0, p0

    invoke-direct {v0, v14}, Lcom/android/settings/accessibility/sharedaccessibility/kies/XmlBackup;->close(Ljava/io/InputStream;)V

    .line 259
    const-string v22, "KiesBackup"

    new-instance v23, Ljava/lang/StringBuilder;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    const-string v24, "not xml file. loadValue is : "

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    sget-object v24, Lcom/android/settings/accessibility/sharedaccessibility/kies/XmlBackup;->revSettingValues:Ljava/util/HashMap;

    invoke-virtual/range {v24 .. v24}, Ljava/util/HashMap;->toString()Ljava/lang/String;

    move-result-object v24

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    invoke-static/range {v22 .. v23}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_6
    .catch Ljavax/xml/parsers/ParserConfigurationException; {:try_start_6 .. :try_end_6} :catch_1
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_3
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    goto/16 :goto_1

    .line 292
    .end local v5    # "db":Ljavax/xml/parsers/DocumentBuilder;
    .end local v6    # "doc":Lorg/w3c/dom/Document;
    .end local v7    # "e":Lorg/xml/sax/SAXException;
    .end local v9    # "factory":Ljavax/xml/parsers/DocumentBuilderFactory;
    :catch_1
    move-exception v7

    .line 293
    .local v7, "e":Ljavax/xml/parsers/ParserConfigurationException;
    const/16 v19, 0x1

    .line 294
    const/4 v8, 0x1

    .line 295
    :try_start_7
    const-string v22, "KiesBackup"

    new-instance v23, Ljava/lang/StringBuilder;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    const-string v24, "ParserConfigurationException = "

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, v23

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    invoke-static/range {v22 .. v23}, Landroid/util/secutil/Log;->secE(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_2
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    goto/16 :goto_2

    .line 313
    .end local v7    # "e":Ljavax/xml/parsers/ParserConfigurationException;
    :catch_2
    move-exception v7

    move-object v11, v12

    .line 314
    .end local v12    # "fis":Ljava/io/FileInputStream;
    .local v7, "e":Ljava/lang/Exception;
    .restart local v11    # "fis":Ljava/io/FileInputStream;
    :goto_5
    const/16 v19, 0x1

    .line 315
    const/4 v8, 0x2

    .line 316
    :try_start_8
    const-string v22, "KiesBackup"

    new-instance v23, Ljava/lang/StringBuilder;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    const-string v24, "file exception = "

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, v23

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    invoke-static/range {v22 .. v23}, Landroid/util/secutil/Log;->secE(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    .line 318
    move-object/from16 v0, p0

    invoke-direct {v0, v14}, Lcom/android/settings/accessibility/sharedaccessibility/kies/XmlBackup;->close(Ljava/io/InputStream;)V

    .line 319
    move-object/from16 v0, p0

    invoke-direct {v0, v11}, Lcom/android/settings/accessibility/sharedaccessibility/kies/XmlBackup;->close(Ljava/io/InputStream;)V

    goto/16 :goto_4

    .line 276
    .end local v7    # "e":Ljava/lang/Exception;
    .end local v11    # "fis":Ljava/io/FileInputStream;
    .restart local v5    # "db":Ljavax/xml/parsers/DocumentBuilder;
    .restart local v6    # "doc":Lorg/w3c/dom/Document;
    .restart local v9    # "factory":Ljavax/xml/parsers/DocumentBuilderFactory;
    .restart local v12    # "fis":Ljava/io/FileInputStream;
    .restart local v20    # "rootNodes":Lorg/w3c/dom/NodeList;
    :cond_1
    const/4 v13, 0x0

    .local v13, "i":I
    :goto_6
    :try_start_9
    sget-object v22, Lcom/android/settings/accessibility/sharedaccessibility/ShareAccVariable;->keyList:[Ljava/lang/String;

    move-object/from16 v0, v22

    array-length v0, v0

    move/from16 v22, v0

    move/from16 v0, v22

    if-ge v13, v0, :cond_4

    .line 277
    sget-object v22, Lcom/android/settings/accessibility/sharedaccessibility/ShareAccVariable;->keyList:[Ljava/lang/String;

    aget-object v22, v22, v13

    move-object/from16 v0, v22

    invoke-interface {v6, v0}, Lorg/w3c/dom/Document;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v10

    .line 278
    .local v10, "firstNodes":Lorg/w3c/dom/NodeList;
    const/16 v22, 0x0

    move/from16 v0, v22

    invoke-interface {v10, v0}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v17

    .line 279
    .local v17, "node":Lorg/w3c/dom/Node;
    if-eqz v17, :cond_2

    .line 280
    invoke-interface/range {v17 .. v17}, Lorg/w3c/dom/Node;->getNodeName()Ljava/lang/String;

    move-result-object v16

    .line 281
    .local v16, "name":Ljava/lang/String;
    invoke-interface/range {v17 .. v17}, Lorg/w3c/dom/Node;->getFirstChild()Lorg/w3c/dom/Node;

    move-result-object v4

    .line 282
    .local v4, "childNode":Lorg/w3c/dom/Node;
    if-eqz v4, :cond_3

    .line 283
    invoke-interface {v4}, Lorg/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    move-result-object v21

    .line 287
    .local v21, "value":Ljava/lang/String;
    :goto_7
    sget-object v22, Lcom/android/settings/accessibility/sharedaccessibility/kies/XmlBackup;->revSettingValues:Ljava/util/HashMap;

    move-object/from16 v0, v22

    move-object/from16 v1, v16

    move-object/from16 v2, v21

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 276
    .end local v4    # "childNode":Lorg/w3c/dom/Node;
    .end local v16    # "name":Ljava/lang/String;
    .end local v21    # "value":Ljava/lang/String;
    :cond_2
    add-int/lit8 v13, v13, 0x1

    goto :goto_6

    .line 285
    .restart local v4    # "childNode":Lorg/w3c/dom/Node;
    .restart local v16    # "name":Ljava/lang/String;
    :cond_3
    const/16 v21, 0x0

    .restart local v21    # "value":Ljava/lang/String;
    goto :goto_7

    .line 290
    .end local v4    # "childNode":Lorg/w3c/dom/Node;
    .end local v10    # "firstNodes":Lorg/w3c/dom/NodeList;
    .end local v16    # "name":Ljava/lang/String;
    .end local v17    # "node":Lorg/w3c/dom/Node;
    .end local v21    # "value":Ljava/lang/String;
    :cond_4
    const-string v22, "KiesBackup"

    new-instance v23, Ljava/lang/StringBuilder;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    const-string v24, "loadValue : "

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    sget-object v24, Lcom/android/settings/accessibility/sharedaccessibility/kies/XmlBackup;->revSettingValues:Ljava/util/HashMap;

    invoke-virtual/range {v24 .. v24}, Ljava/util/HashMap;->toString()Ljava/lang/String;

    move-result-object v24

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    invoke-static/range {v22 .. v23}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_9
    .catch Ljavax/xml/parsers/ParserConfigurationException; {:try_start_9 .. :try_end_9} :catch_1
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_3
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    goto/16 :goto_2

    .line 296
    .end local v5    # "db":Ljavax/xml/parsers/DocumentBuilder;
    .end local v6    # "doc":Lorg/w3c/dom/Document;
    .end local v9    # "factory":Ljavax/xml/parsers/DocumentBuilderFactory;
    .end local v13    # "i":I
    .end local v20    # "rootNodes":Lorg/w3c/dom/NodeList;
    :catch_3
    move-exception v7

    .line 297
    .restart local v7    # "e":Ljava/lang/Exception;
    const/16 v19, 0x1

    .line 298
    const/4 v8, 0x1

    .line 299
    :try_start_a
    const-string v22, "KiesBackup"

    new-instance v23, Ljava/lang/StringBuilder;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    const-string v24, "DB Input exception = "

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, v23

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    invoke-static/range {v22 .. v23}, Landroid/util/secutil/Log;->secE(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_2
    .catchall {:try_start_a .. :try_end_a} :catchall_0

    goto/16 :goto_2

    .line 318
    .end local v7    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v22

    move-object v11, v12

    .end local v12    # "fis":Ljava/io/FileInputStream;
    .restart local v11    # "fis":Ljava/io/FileInputStream;
    :goto_8
    move-object/from16 v0, p0

    invoke-direct {v0, v14}, Lcom/android/settings/accessibility/sharedaccessibility/kies/XmlBackup;->close(Ljava/io/InputStream;)V

    .line 319
    move-object/from16 v0, p0

    invoke-direct {v0, v11}, Lcom/android/settings/accessibility/sharedaccessibility/kies/XmlBackup;->close(Ljava/io/InputStream;)V

    throw v22

    .line 309
    .end local v11    # "fis":Ljava/io/FileInputStream;
    .restart local v12    # "fis":Ljava/io/FileInputStream;
    :cond_5
    :try_start_b
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v22

    sget-object v23, Lcom/android/settings/accessibility/sharedaccessibility/kies/XmlBackup;->revSettingValues:Ljava/util/HashMap;

    invoke-static/range {v22 .. v23}, Lcom/android/settings/accessibility/sharedaccessibility/ShareAccessibilitySettingsCommonFunction;->applySettings(Landroid/content/Context;Ljava/util/HashMap;)V
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_b} :catch_2
    .catchall {:try_start_b .. :try_end_b} :catchall_0

    goto/16 :goto_3

    .line 318
    .end local v12    # "fis":Ljava/io/FileInputStream;
    .restart local v11    # "fis":Ljava/io/FileInputStream;
    :catchall_1
    move-exception v22

    goto :goto_8

    .line 313
    :catch_4
    move-exception v7

    goto/16 :goto_5
.end method

.method static synthetic access$000(Lcom/android/settings/accessibility/sharedaccessibility/kies/XmlBackup;Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V
    .locals 0
    .param p0, "x0"    # Lcom/android/settings/accessibility/sharedaccessibility/kies/XmlBackup;
    .param p1, "x1"    # Landroid/content/Context;
    .param p2, "x2"    # Ljava/lang/String;
    .param p3, "x3"    # Ljava/lang/String;
    .param p4, "x4"    # Ljava/lang/String;
    .param p5, "x5"    # I

    .prologue
    .line 49
    invoke-direct/range {p0 .. p5}, Lcom/android/settings/accessibility/sharedaccessibility/kies/XmlBackup;->Backup(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    return-void
.end method

.method static synthetic access$100(Lcom/android/settings/accessibility/sharedaccessibility/kies/XmlBackup;Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V
    .locals 0
    .param p0, "x0"    # Lcom/android/settings/accessibility/sharedaccessibility/kies/XmlBackup;
    .param p1, "x1"    # Landroid/content/Context;
    .param p2, "x2"    # Ljava/lang/String;
    .param p3, "x3"    # Ljava/lang/String;
    .param p4, "x4"    # Ljava/lang/String;
    .param p5, "x5"    # I

    .prologue
    .line 49
    invoke-direct/range {p0 .. p5}, Lcom/android/settings/accessibility/sharedaccessibility/kies/XmlBackup;->Restore(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    return-void
.end method

.method private close(Ljava/io/InputStream;)V
    .locals 1
    .param p1, "in"    # Ljava/io/InputStream;

    .prologue
    .line 338
    if-eqz p1, :cond_0

    .line 339
    :try_start_0
    invoke-virtual {p1}, Ljava/io/InputStream;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 340
    const/4 p1, 0x0

    .line 345
    :cond_0
    :goto_0
    return-void

    .line 342
    :catch_0
    move-exception v0

    .line 343
    .local v0, "e":Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0
.end method

.method private close(Ljava/io/OutputStream;)V
    .locals 1
    .param p1, "out"    # Ljava/io/OutputStream;

    .prologue
    .line 349
    if-eqz p1, :cond_0

    .line 350
    :try_start_0
    invoke-virtual {p1}, Ljava/io/OutputStream;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 351
    const/4 p1, 0x0

    .line 356
    :cond_0
    :goto_0
    return-void

    .line 353
    :catch_0
    move-exception v0

    .line 354
    .local v0, "e":Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0
.end method

.method public static decryptStream(Ljava/io/InputStream;ILjava/lang/String;)Ljava/io/InputStream;
    .locals 6
    .param p0, "in"    # Ljava/io/InputStream;
    .param p1, "isSecurityPassword"    # I
    .param p2, "securityPassword"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 423
    const-string v3, "AES/CBC/PKCS5Padding"

    invoke-static {v3}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object v3

    sput-object v3, Lcom/android/settings/accessibility/sharedaccessibility/kies/XmlBackup;->cipher:Ljavax/crypto/Cipher;

    .line 426
    sget-object v3, Lcom/android/settings/accessibility/sharedaccessibility/kies/XmlBackup;->cipher:Ljavax/crypto/Cipher;

    invoke-virtual {v3}, Ljavax/crypto/Cipher;->getBlockSize()I

    move-result v3

    new-array v1, v3, [B

    .line 428
    .local v1, "iv":[B
    invoke-virtual {p0, v1}, Ljava/io/InputStream;->read([B)I

    .line 430
    new-instance v2, Ljavax/crypto/spec/IvParameterSpec;

    invoke-direct {v2, v1}, Ljavax/crypto/spec/IvParameterSpec;-><init>([B)V

    .line 432
    .local v2, "spec":Ljava/security/spec/AlgorithmParameterSpec;
    const/4 v3, 0x1

    if-ne p1, v3, :cond_0

    .line 433
    const/16 v3, 0x10

    :try_start_0
    new-array v3, v3, [B

    sput-object v3, Lcom/android/settings/accessibility/sharedaccessibility/kies/XmlBackup;->salt:[B

    .line 434
    sget-object v3, Lcom/android/settings/accessibility/sharedaccessibility/kies/XmlBackup;->salt:[B

    invoke-virtual {p0, v3}, Ljava/io/InputStream;->read([B)I

    .line 435
    invoke-static {p2}, Lcom/android/settings/accessibility/sharedaccessibility/kies/XmlBackup;->generatePBKDF2SecretKey(Ljava/lang/String;)Ljavax/crypto/spec/SecretKeySpec;

    move-result-object v3

    sput-object v3, Lcom/android/settings/accessibility/sharedaccessibility/kies/XmlBackup;->secretKey:Ljavax/crypto/spec/SecretKeySpec;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 444
    :goto_0
    sget-object v3, Lcom/android/settings/accessibility/sharedaccessibility/kies/XmlBackup;->cipher:Ljavax/crypto/Cipher;

    const/4 v4, 0x2

    sget-object v5, Lcom/android/settings/accessibility/sharedaccessibility/kies/XmlBackup;->secretKey:Ljavax/crypto/spec/SecretKeySpec;

    invoke-virtual {v3, v4, v5, v2}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;Ljava/security/spec/AlgorithmParameterSpec;)V

    .line 446
    new-instance v3, Ljavax/crypto/CipherInputStream;

    sget-object v4, Lcom/android/settings/accessibility/sharedaccessibility/kies/XmlBackup;->cipher:Ljavax/crypto/Cipher;

    invoke-direct {v3, p0, v4}, Ljavax/crypto/CipherInputStream;-><init>(Ljava/io/InputStream;Ljavax/crypto/Cipher;)V

    return-object v3

    .line 437
    :cond_0
    :try_start_1
    invoke-static {p2}, Lcom/android/settings/accessibility/sharedaccessibility/kies/XmlBackup;->generateSHA256SecretKey(Ljava/lang/String;)Ljavax/crypto/spec/SecretKeySpec;

    move-result-object v3

    sput-object v3, Lcom/android/settings/accessibility/sharedaccessibility/kies/XmlBackup;->secretKey:Ljavax/crypto/spec/SecretKeySpec;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 439
    :catch_0
    move-exception v0

    .line 440
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public static encryptStream(Ljava/io/OutputStream;ILjava/lang/String;)Ljava/io/OutputStream;
    .locals 6
    .param p0, "out"    # Ljava/io/OutputStream;
    .param p1, "isSecurityPassword"    # I
    .param p2, "securityPassword"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    const/4 v5, 0x1

    .line 392
    const-string v3, "AES/CBC/PKCS5Padding"

    invoke-static {v3}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object v3

    sput-object v3, Lcom/android/settings/accessibility/sharedaccessibility/kies/XmlBackup;->cipher:Ljavax/crypto/Cipher;

    .line 394
    sget-object v3, Lcom/android/settings/accessibility/sharedaccessibility/kies/XmlBackup;->cipher:Ljavax/crypto/Cipher;

    invoke-virtual {v3}, Ljavax/crypto/Cipher;->getBlockSize()I

    move-result v3

    new-array v1, v3, [B

    .line 397
    .local v1, "iv":[B
    new-instance v3, Ljava/security/SecureRandom;

    invoke-direct {v3}, Ljava/security/SecureRandom;-><init>()V

    invoke-virtual {v3, v1}, Ljava/security/SecureRandom;->nextBytes([B)V

    .line 398
    new-instance v2, Ljavax/crypto/spec/IvParameterSpec;

    invoke-direct {v2, v1}, Ljavax/crypto/spec/IvParameterSpec;-><init>([B)V

    .line 401
    .local v2, "spec":Ljava/security/spec/AlgorithmParameterSpec;
    invoke-virtual {p0, v1}, Ljava/io/OutputStream;->write([B)V

    .line 404
    if-ne p1, v5, :cond_0

    .line 405
    :try_start_0
    invoke-static {}, Lcom/android/settings/accessibility/sharedaccessibility/kies/XmlBackup;->generateEncryptSalt()[B

    move-result-object v3

    sput-object v3, Lcom/android/settings/accessibility/sharedaccessibility/kies/XmlBackup;->salt:[B

    .line 406
    sget-object v3, Lcom/android/settings/accessibility/sharedaccessibility/kies/XmlBackup;->salt:[B

    invoke-virtual {p0, v3}, Ljava/io/OutputStream;->write([B)V

    .line 407
    invoke-static {p2}, Lcom/android/settings/accessibility/sharedaccessibility/kies/XmlBackup;->generatePBKDF2SecretKey(Ljava/lang/String;)Ljavax/crypto/spec/SecretKeySpec;

    move-result-object v3

    sput-object v3, Lcom/android/settings/accessibility/sharedaccessibility/kies/XmlBackup;->secretKey:Ljavax/crypto/spec/SecretKeySpec;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 417
    :goto_0
    sget-object v3, Lcom/android/settings/accessibility/sharedaccessibility/kies/XmlBackup;->cipher:Ljavax/crypto/Cipher;

    sget-object v4, Lcom/android/settings/accessibility/sharedaccessibility/kies/XmlBackup;->secretKey:Ljavax/crypto/spec/SecretKeySpec;

    invoke-virtual {v3, v5, v4, v2}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;Ljava/security/spec/AlgorithmParameterSpec;)V

    .line 419
    new-instance v3, Ljavax/crypto/CipherOutputStream;

    sget-object v4, Lcom/android/settings/accessibility/sharedaccessibility/kies/XmlBackup;->cipher:Ljavax/crypto/Cipher;

    invoke-direct {v3, p0, v4}, Ljavax/crypto/CipherOutputStream;-><init>(Ljava/io/OutputStream;Ljavax/crypto/Cipher;)V

    return-object v3

    .line 410
    :cond_0
    :try_start_1
    invoke-static {p2}, Lcom/android/settings/accessibility/sharedaccessibility/kies/XmlBackup;->generateSHA256SecretKey(Ljava/lang/String;)Ljavax/crypto/spec/SecretKeySpec;

    move-result-object v3

    sput-object v3, Lcom/android/settings/accessibility/sharedaccessibility/kies/XmlBackup;->secretKey:Ljavax/crypto/spec/SecretKeySpec;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 412
    :catch_0
    move-exception v0

    .line 413
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public static generateEncryptSalt()[B
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/NoSuchAlgorithmException;
        }
    .end annotation

    .prologue
    .line 360
    new-instance v1, Ljava/security/SecureRandom;

    invoke-direct {v1}, Ljava/security/SecureRandom;-><init>()V

    .line 361
    .local v1, "sr":Ljava/security/SecureRandom;
    const/16 v2, 0x10

    new-array v0, v2, [B

    .line 362
    .local v0, "salt":[B
    invoke-virtual {v1, v0}, Ljava/security/SecureRandom;->nextBytes([B)V

    .line 364
    return-object v0
.end method

.method public static generatePBKDF2SecretKey(Ljava/lang/String;)Ljavax/crypto/spec/SecretKeySpec;
    .locals 9
    .param p0, "securityPassword"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/NoSuchAlgorithmException;,
            Ljava/security/spec/InvalidKeySpecException;,
            Ljavax/crypto/NoSuchPaddingException;
        }
    .end annotation

    .prologue
    .line 370
    const/16 v1, 0x3e8

    .line 371
    .local v1, "iterationCount":I
    const/16 v4, 0x100

    .line 372
    .local v4, "keyLength":I
    invoke-virtual {p0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    .line 374
    .local v0, "chars":[C
    const-string v6, "PBKDF2WithHmacSHA1"

    invoke-static {v6}, Ljavax/crypto/SecretKeyFactory;->getInstance(Ljava/lang/String;)Ljavax/crypto/SecretKeyFactory;

    move-result-object v3

    .line 375
    .local v3, "keyFactory":Ljavax/crypto/SecretKeyFactory;
    new-instance v5, Ljavax/crypto/spec/PBEKeySpec;

    sget-object v6, Lcom/android/settings/accessibility/sharedaccessibility/kies/XmlBackup;->salt:[B

    invoke-direct {v5, v0, v6, v1, v4}, Ljavax/crypto/spec/PBEKeySpec;-><init>([C[BII)V

    .line 376
    .local v5, "keySpec":Ljavax/crypto/spec/PBEKeySpec;
    invoke-virtual {v3, v5}, Ljavax/crypto/SecretKeyFactory;->generateSecret(Ljava/security/spec/KeySpec;)Ljavax/crypto/SecretKey;

    move-result-object v2

    .line 378
    .local v2, "key":Ljavax/crypto/SecretKey;
    new-instance v6, Ljavax/crypto/spec/SecretKeySpec;

    invoke-interface {v2}, Ljavax/crypto/SecretKey;->getEncoded()[B

    move-result-object v7

    const-string v8, "AES"

    invoke-direct {v6, v7, v8}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    return-object v6
.end method

.method public static generateSHA256SecretKey(Ljava/lang/String;)Ljavax/crypto/spec/SecretKeySpec;
    .locals 5
    .param p0, "securityPassword"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    const/4 v4, 0x0

    .line 383
    const-string v2, "SHA-256"

    invoke-static {v2}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v0

    .line 384
    .local v0, "digest":Ljava/security/MessageDigest;
    const-string v2, "UTF-8"

    invoke-virtual {p0, v2}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/security/MessageDigest;->update([B)V

    .line 385
    const/16 v2, 0x10

    new-array v1, v2, [B

    .line 386
    .local v1, "keyBytes":[B
    invoke-virtual {v0}, Ljava/security/MessageDigest;->digest()[B

    move-result-object v2

    array-length v3, v1

    invoke-static {v2, v4, v1, v4, v3}, Ljava/lang/System;->arraycopy([BI[BII)V

    .line 388
    new-instance v2, Ljavax/crypto/spec/SecretKeySpec;

    const-string v3, "AES"

    invoke-direct {v2, v1, v3}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    return-object v2
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 9
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 65
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v7

    .line 66
    .local v7, "action":Ljava/lang/String;
    if-eqz v7, :cond_0

    .line 67
    const-string v0, "SAVE_PATH"

    invoke-virtual {p2, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 68
    .local v3, "filepath":Ljava/lang/String;
    const-string v0, "SOURCE"

    invoke-virtual {p2, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 69
    .local v4, "source":Ljava/lang/String;
    const-string v0, "SESSION_KEY"

    invoke-virtual {p2, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 70
    .local v5, "saveKey":Ljava/lang/String;
    const-string v0, "SECURITY_LEVEL"

    const/4 v1, 0x0

    invoke-virtual {p2, v0, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v6

    .line 71
    .local v6, "securityLevel":I
    const-string v0, "KiesBackup"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onReceive : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    .line 73
    const-string v0, "com.samsung.android.intent.action.REQUEST_BACKUP_ACC_SETTING"

    invoke-virtual {v7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 74
    new-instance v8, Ljava/lang/Thread;

    new-instance v0, Lcom/android/settings/accessibility/sharedaccessibility/kies/XmlBackup$1;

    move-object v1, p0

    move-object v2, p1

    invoke-direct/range {v0 .. v6}, Lcom/android/settings/accessibility/sharedaccessibility/kies/XmlBackup$1;-><init>(Lcom/android/settings/accessibility/sharedaccessibility/kies/XmlBackup;Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    invoke-direct {v8, v0}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 79
    .local v8, "t":Ljava/lang/Thread;
    invoke-virtual {v8}, Ljava/lang/Thread;->start()V

    .line 93
    .end local v3    # "filepath":Ljava/lang/String;
    .end local v4    # "source":Ljava/lang/String;
    .end local v5    # "saveKey":Ljava/lang/String;
    .end local v6    # "securityLevel":I
    .end local v8    # "t":Ljava/lang/Thread;
    :cond_0
    :goto_0
    return-void

    .line 81
    .restart local v3    # "filepath":Ljava/lang/String;
    .restart local v4    # "source":Ljava/lang/String;
    .restart local v5    # "saveKey":Ljava/lang/String;
    .restart local v6    # "securityLevel":I
    :cond_1
    const-string v0, "com.samsung.android.intent.action.REQUEST_RESTORE_ACC_SETTING"

    invoke-virtual {v7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 82
    new-instance v8, Ljava/lang/Thread;

    new-instance v0, Lcom/android/settings/accessibility/sharedaccessibility/kies/XmlBackup$2;

    move-object v1, p0

    move-object v2, p1

    invoke-direct/range {v0 .. v6}, Lcom/android/settings/accessibility/sharedaccessibility/kies/XmlBackup$2;-><init>(Lcom/android/settings/accessibility/sharedaccessibility/kies/XmlBackup;Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    invoke-direct {v8, v0}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 87
    .restart local v8    # "t":Ljava/lang/Thread;
    invoke-virtual {v8}, Ljava/lang/Thread;->start()V

    goto :goto_0

    .line 90
    .end local v8    # "t":Ljava/lang/Thread;
    :cond_2
    const-string v0, "KiesBackup"

    const-string v1, "Action value is null"

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secE(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
