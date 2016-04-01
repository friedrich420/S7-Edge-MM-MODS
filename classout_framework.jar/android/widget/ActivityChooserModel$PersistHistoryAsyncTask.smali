.class final Landroid/widget/ActivityChooserModel$PersistHistoryAsyncTask;
.super Landroid/os/AsyncTask;
.source "ActivityChooserModel.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/widget/ActivityChooserModel;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "PersistHistoryAsyncTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Object;",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Landroid/widget/ActivityChooserModel;


# direct methods
.method private constructor <init>(Landroid/widget/ActivityChooserModel;)V
    .registers 2

    .prologue
    .line 1057
    iput-object p1, p0, this$0:Landroid/widget/ActivityChooserModel;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Landroid/widget/ActivityChooserModel;Landroid/widget/ActivityChooserModel$1;)V
    .registers 3
    .param p1, "x0"    # Landroid/widget/ActivityChooserModel;
    .param p2, "x1"    # Landroid/widget/ActivityChooserModel$1;

    .prologue
    .line 1057
    invoke-direct {p0, p1}, <init>(Landroid/widget/ActivityChooserModel;)V

    return-void
.end method


# virtual methods
.method public bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3
    .param p1, "x0"    # [Ljava/lang/Object;

    .prologue
    .line 1057
    invoke-virtual {p0, p1}, doInBackground([Ljava/lang/Object;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method public varargs doInBackground([Ljava/lang/Object;)Ljava/lang/Void;
    .registers 20
    .param p1, "args"    # [Ljava/lang/Object;

    .prologue
    .line 1062
    const/4 v13, 0x0

    aget-object v4, p1, v13

    check-cast v4, Ljava/util/List;

    .line 1063
    .local v4, "historicalRecords":Ljava/util/List;, "Ljava/util/List<Landroid/widget/ActivityChooserModel$HistoricalRecord;>;"
    const/4 v13, 0x1

    aget-object v5, p1, v13

    check-cast v5, Ljava/lang/String;

    .line 1065
    .local v5, "hostoryFileName":Ljava/lang/String;
    const/4 v3, 0x0

    .line 1068
    .local v3, "fos":Ljava/io/FileOutputStream;
    :try_start_b
    move-object/from16 v0, p0

    iget-object v13, v0, this$0:Landroid/widget/ActivityChooserModel;

    # getter for: Landroid/widget/ActivityChooserModel;->mContext:Landroid/content/Context;
    invoke-static {v13}, Landroid/widget/ActivityChooserModel;->access$300(Landroid/widget/ActivityChooserModel;)Landroid/content/Context;

    move-result-object v13

    const/4 v14, 0x0

    invoke-virtual {v13, v5, v14}, Landroid/content/Context;->openFileOutput(Ljava/lang/String;I)Ljava/io/FileOutputStream;
    :try_end_17
    .catch Ljava/io/FileNotFoundException; {:try_start_b .. :try_end_17} :catch_79

    move-result-object v3

    .line 1074
    invoke-static {}, Landroid/util/Xml;->newSerializer()Lorg/xmlpull/v1/XmlSerializer;

    move-result-object v12

    .line 1077
    .local v12, "serializer":Lorg/xmlpull/v1/XmlSerializer;
    const/4 v13, 0x0

    :try_start_1d
    invoke-interface {v12, v3, v13}, Lorg/xmlpull/v1/XmlSerializer;->setOutput(Ljava/io/OutputStream;Ljava/lang/String;)V

    .line 1078
    sget-object v13, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {v13}, Ljava/nio/charset/Charset;->name()Ljava/lang/String;

    move-result-object v13

    const/4 v14, 0x1

    invoke-static {v14}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v14

    invoke-interface {v12, v13, v14}, Lorg/xmlpull/v1/XmlSerializer;->startDocument(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 1079
    const/4 v13, 0x0

    const-string v14, "historical-records"

    invoke-interface {v12, v13, v14}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1081
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v11

    .line 1082
    .local v11, "recordCount":I
    const/4 v6, 0x0

    .local v6, "i":I
    :goto_39
    if-ge v6, v11, :cond_96

    .line 1083
    const/4 v13, 0x0

    invoke-interface {v4, v13}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/widget/ActivityChooserModel$HistoricalRecord;

    .line 1084
    .local v10, "record":Landroid/widget/ActivityChooserModel$HistoricalRecord;
    const/4 v13, 0x0

    const-string v14, "historical-record"

    invoke-interface {v12, v13, v14}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1085
    const/4 v13, 0x0

    const-string v14, "activity"

    iget-object v15, v10, Landroid/widget/ActivityChooserModel$HistoricalRecord;->activity:Landroid/content/ComponentName;

    invoke-virtual {v15}, Landroid/content/ComponentName;->flattenToString()Ljava/lang/String;

    move-result-object v15

    invoke-interface {v12, v13, v14, v15}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1087
    const/4 v13, 0x0

    const-string/jumbo v14, "time"

    iget-wide v0, v10, Landroid/widget/ActivityChooserModel$HistoricalRecord;->time:J

    move-wide/from16 v16, v0

    invoke-static/range {v16 .. v17}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v15

    invoke-interface {v12, v13, v14, v15}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1088
    const/4 v13, 0x0

    const-string/jumbo v14, "weight"

    iget v15, v10, Landroid/widget/ActivityChooserModel$HistoricalRecord;->weight:F

    invoke-static {v15}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    move-result-object v15

    invoke-interface {v12, v13, v14, v15}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1089
    const/4 v13, 0x0

    const-string v14, "historical-record"

    invoke-interface {v12, v13, v14}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;
    :try_end_76
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1d .. :try_end_76} :catch_ae
    .catch Ljava/lang/IllegalStateException; {:try_start_1d .. :try_end_76} :catch_e1
    .catch Ljava/io/IOException; {:try_start_1d .. :try_end_76} :catch_114
    .catchall {:try_start_1d .. :try_end_76} :catchall_149

    .line 1082
    add-int/lit8 v6, v6, 0x1

    goto :goto_39

    .line 1069
    .end local v6    # "i":I
    .end local v10    # "record":Landroid/widget/ActivityChooserModel$HistoricalRecord;
    .end local v11    # "recordCount":I
    .end local v12    # "serializer":Lorg/xmlpull/v1/XmlSerializer;
    :catch_79
    move-exception v2

    .line 1070
    .local v2, "fnfe":Ljava/io/FileNotFoundException;
    # getter for: Landroid/widget/ActivityChooserModel;->LOG_TAG:Ljava/lang/String;
    invoke-static {}, Landroid/widget/ActivityChooserModel;->access$400()Ljava/lang/String;

    move-result-object v13

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "Error writing historical recrod file: "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1071
    const/4 v13, 0x0

    .line 1117
    .end local v2    # "fnfe":Ljava/io/FileNotFoundException;
    :goto_95
    return-object v13

    .line 1095
    .restart local v6    # "i":I
    .restart local v11    # "recordCount":I
    .restart local v12    # "serializer":Lorg/xmlpull/v1/XmlSerializer;
    :cond_96
    const/4 v13, 0x0

    :try_start_97
    const-string v14, "historical-records"

    invoke-interface {v12, v13, v14}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1096
    invoke-interface {v12}, Lorg/xmlpull/v1/XmlSerializer;->endDocument()V
    :try_end_9f
    .catch Ljava/lang/IllegalArgumentException; {:try_start_97 .. :try_end_9f} :catch_ae
    .catch Ljava/lang/IllegalStateException; {:try_start_97 .. :try_end_9f} :catch_e1
    .catch Ljava/io/IOException; {:try_start_97 .. :try_end_9f} :catch_114
    .catchall {:try_start_97 .. :try_end_9f} :catchall_149

    .line 1108
    move-object/from16 v0, p0

    iget-object v13, v0, this$0:Landroid/widget/ActivityChooserModel;

    const/4 v14, 0x1

    # setter for: Landroid/widget/ActivityChooserModel;->mCanReadHistoricalData:Z
    invoke-static {v13, v14}, Landroid/widget/ActivityChooserModel;->access$602(Landroid/widget/ActivityChooserModel;Z)Z

    .line 1109
    if-eqz v3, :cond_ac

    .line 1111
    :try_start_a9
    invoke-virtual {v3}, Ljava/io/FileOutputStream;->close()V
    :try_end_ac
    .catch Ljava/io/IOException; {:try_start_a9 .. :try_end_ac} :catch_158

    .line 1117
    .end local v6    # "i":I
    .end local v11    # "recordCount":I
    :cond_ac
    :goto_ac
    const/4 v13, 0x0

    goto :goto_95

    .line 1101
    :catch_ae
    move-exception v7

    .line 1102
    .local v7, "iae":Ljava/lang/IllegalArgumentException;
    :try_start_af
    # getter for: Landroid/widget/ActivityChooserModel;->LOG_TAG:Ljava/lang/String;
    invoke-static {}, Landroid/widget/ActivityChooserModel;->access$400()Ljava/lang/String;

    move-result-object v13

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "Error writing historical recrod file: "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    move-object/from16 v0, p0

    iget-object v15, v0, this$0:Landroid/widget/ActivityChooserModel;

    # getter for: Landroid/widget/ActivityChooserModel;->mHistoryFileName:Ljava/lang/String;
    invoke-static {v15}, Landroid/widget/ActivityChooserModel;->access$500(Landroid/widget/ActivityChooserModel;)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_d1
    .catchall {:try_start_af .. :try_end_d1} :catchall_149

    .line 1108
    move-object/from16 v0, p0

    iget-object v13, v0, this$0:Landroid/widget/ActivityChooserModel;

    const/4 v14, 0x1

    # setter for: Landroid/widget/ActivityChooserModel;->mCanReadHistoricalData:Z
    invoke-static {v13, v14}, Landroid/widget/ActivityChooserModel;->access$602(Landroid/widget/ActivityChooserModel;Z)Z

    .line 1109
    if-eqz v3, :cond_ac

    .line 1111
    :try_start_db
    invoke-virtual {v3}, Ljava/io/FileOutputStream;->close()V
    :try_end_de
    .catch Ljava/io/IOException; {:try_start_db .. :try_end_de} :catch_df

    goto :goto_ac

    .line 1112
    :catch_df
    move-exception v13

    goto :goto_ac

    .line 1103
    .end local v7    # "iae":Ljava/lang/IllegalArgumentException;
    :catch_e1
    move-exception v9

    .line 1104
    .local v9, "ise":Ljava/lang/IllegalStateException;
    :try_start_e2
    # getter for: Landroid/widget/ActivityChooserModel;->LOG_TAG:Ljava/lang/String;
    invoke-static {}, Landroid/widget/ActivityChooserModel;->access$400()Ljava/lang/String;

    move-result-object v13

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "Error writing historical recrod file: "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    move-object/from16 v0, p0

    iget-object v15, v0, this$0:Landroid/widget/ActivityChooserModel;

    # getter for: Landroid/widget/ActivityChooserModel;->mHistoryFileName:Ljava/lang/String;
    invoke-static {v15}, Landroid/widget/ActivityChooserModel;->access$500(Landroid/widget/ActivityChooserModel;)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_104
    .catchall {:try_start_e2 .. :try_end_104} :catchall_149

    .line 1108
    move-object/from16 v0, p0

    iget-object v13, v0, this$0:Landroid/widget/ActivityChooserModel;

    const/4 v14, 0x1

    # setter for: Landroid/widget/ActivityChooserModel;->mCanReadHistoricalData:Z
    invoke-static {v13, v14}, Landroid/widget/ActivityChooserModel;->access$602(Landroid/widget/ActivityChooserModel;Z)Z

    .line 1109
    if-eqz v3, :cond_ac

    .line 1111
    :try_start_10e
    invoke-virtual {v3}, Ljava/io/FileOutputStream;->close()V
    :try_end_111
    .catch Ljava/io/IOException; {:try_start_10e .. :try_end_111} :catch_112

    goto :goto_ac

    .line 1112
    :catch_112
    move-exception v13

    goto :goto_ac

    .line 1105
    .end local v9    # "ise":Ljava/lang/IllegalStateException;
    :catch_114
    move-exception v8

    .line 1106
    .local v8, "ioe":Ljava/io/IOException;
    :try_start_115
    # getter for: Landroid/widget/ActivityChooserModel;->LOG_TAG:Ljava/lang/String;
    invoke-static {}, Landroid/widget/ActivityChooserModel;->access$400()Ljava/lang/String;

    move-result-object v13

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "Error writing historical recrod file: "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    move-object/from16 v0, p0

    iget-object v15, v0, this$0:Landroid/widget/ActivityChooserModel;

    # getter for: Landroid/widget/ActivityChooserModel;->mHistoryFileName:Ljava/lang/String;
    invoke-static {v15}, Landroid/widget/ActivityChooserModel;->access$500(Landroid/widget/ActivityChooserModel;)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_137
    .catchall {:try_start_115 .. :try_end_137} :catchall_149

    .line 1108
    move-object/from16 v0, p0

    iget-object v13, v0, this$0:Landroid/widget/ActivityChooserModel;

    const/4 v14, 0x1

    # setter for: Landroid/widget/ActivityChooserModel;->mCanReadHistoricalData:Z
    invoke-static {v13, v14}, Landroid/widget/ActivityChooserModel;->access$602(Landroid/widget/ActivityChooserModel;Z)Z

    .line 1109
    if-eqz v3, :cond_ac

    .line 1111
    :try_start_141
    invoke-virtual {v3}, Ljava/io/FileOutputStream;->close()V
    :try_end_144
    .catch Ljava/io/IOException; {:try_start_141 .. :try_end_144} :catch_146

    goto/16 :goto_ac

    .line 1112
    :catch_146
    move-exception v13

    goto/16 :goto_ac

    .line 1108
    .end local v8    # "ioe":Ljava/io/IOException;
    :catchall_149
    move-exception v13

    move-object/from16 v0, p0

    iget-object v14, v0, this$0:Landroid/widget/ActivityChooserModel;

    const/4 v15, 0x1

    # setter for: Landroid/widget/ActivityChooserModel;->mCanReadHistoricalData:Z
    invoke-static {v14, v15}, Landroid/widget/ActivityChooserModel;->access$602(Landroid/widget/ActivityChooserModel;Z)Z

    .line 1109
    if-eqz v3, :cond_157

    .line 1111
    :try_start_154
    invoke-virtual {v3}, Ljava/io/FileOutputStream;->close()V
    :try_end_157
    .catch Ljava/io/IOException; {:try_start_154 .. :try_end_157} :catch_15b

    .line 1114
    :cond_157
    :goto_157
    throw v13

    .line 1112
    .restart local v6    # "i":I
    .restart local v11    # "recordCount":I
    :catch_158
    move-exception v13

    goto/16 :goto_ac

    .end local v6    # "i":I
    .end local v11    # "recordCount":I
    :catch_15b
    move-exception v14

    goto :goto_157
.end method
