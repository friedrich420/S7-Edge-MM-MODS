.class Lcom/samsung/android/scloud/oem/lib/bnr/BNRClientHelper$4;
.super Ljava/lang/Object;
.source "BNRClientHelper.java"

# interfaces
.implements Lcom/samsung/android/scloud/oem/lib/bnr/BNRClientHelper$SyncServiceHandler;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/scloud/oem/lib/bnr/BNRClientHelper;->setServiceHandler()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/scloud/oem/lib/bnr/BNRClientHelper;


# direct methods
.method constructor <init>(Lcom/samsung/android/scloud/oem/lib/bnr/BNRClientHelper;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/samsung/android/scloud/oem/lib/bnr/BNRClientHelper$4;->this$0:Lcom/samsung/android/scloud/oem/lib/bnr/BNRClientHelper;

    .line 222
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public handleServiceAction(Landroid/content/Context;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;
    .locals 18
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "name"    # Ljava/lang/String;
    .param p3, "extras"    # Landroid/os/Bundle;

    .prologue
    .line 227
    new-instance v9, Landroid/os/Bundle;

    invoke-direct {v9}, Landroid/os/Bundle;-><init>()V

    .line 228
    .local v9, "result":Landroid/os/Bundle;
    const-string v13, "start"

    move-object/from16 v0, p3

    invoke-virtual {v0, v13}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v11

    .line 229
    .local v11, "start":I
    const-string v13, "max_count"

    move-object/from16 v0, p3

    invoke-virtual {v0, v13}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v7

    .line 230
    .local v7, "max_count":I
    const-string v13, "BNRClientHelper"

    new-instance v14, Ljava/lang/StringBuilder;

    const-string v15, "202, "

    invoke-direct {v14, v15}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p2

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, ", "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, ", "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Lcom/samsung/android/scloud/oem/lib/LOG;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 232
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/samsung/android/scloud/oem/lib/bnr/BNRClientHelper$4;->this$0:Lcom/samsung/android/scloud/oem/lib/bnr/BNRClientHelper;

    # getter for: Lcom/samsung/android/scloud/oem/lib/bnr/BNRClientHelper;->mClient:Lcom/samsung/android/scloud/oem/lib/bnr/ISCloudBNRClient;
    invoke-static {v13}, Lcom/samsung/android/scloud/oem/lib/bnr/BNRClientHelper;->access$1(Lcom/samsung/android/scloud/oem/lib/bnr/BNRClientHelper;)Lcom/samsung/android/scloud/oem/lib/bnr/ISCloudBNRClient;

    move-result-object v13

    move-object/from16 v0, p1

    invoke-interface {v13, v0, v11, v7}, Lcom/samsung/android/scloud/oem/lib/bnr/ISCloudBNRClient;->getFileMeta(Landroid/content/Context;II)Ljava/util/ArrayList;

    move-result-object v3

    .line 234
    .local v3, "files":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/samsung/android/scloud/oem/lib/bnr/BNRFile;>;"
    if-nez v3, :cond_0

    .line 235
    const-string v13, "BNRClientHelper"

    new-instance v14, Ljava/lang/StringBuilder;

    const-string v15, "202, "

    invoke-direct {v14, v15}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p2

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, ", return null"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Lcom/samsung/android/scloud/oem/lib/LOG;->f(Ljava/lang/String;Ljava/lang/String;)V

    .line 236
    const-string v13, "is_continue"

    const/4 v14, 0x0

    invoke-virtual {v9, v13, v14}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 237
    const-string v13, "is_success"

    const/4 v14, 0x1

    invoke-virtual {v9, v13, v14}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 271
    :goto_0
    return-object v9

    .line 238
    :cond_0
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v13

    if-nez v13, :cond_1

    .line 239
    const-string v13, "BNRClientHelper"

    new-instance v14, Ljava/lang/StringBuilder;

    const-string v15, "202, "

    invoke-direct {v14, v15}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p2

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, ", return 0"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Lcom/samsung/android/scloud/oem/lib/LOG;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 240
    const-string v13, "is_success"

    const/4 v14, 0x0

    invoke-virtual {v9, v13, v14}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    goto :goto_0

    .line 242
    :cond_1
    const-string v13, "BNRClientHelper"

    new-instance v14, Ljava/lang/StringBuilder;

    const-string v15, "202, "

    invoke-direct {v14, v15}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p2

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, ", return "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Lcom/samsung/android/scloud/oem/lib/LOG;->f(Ljava/lang/String;Ljava/lang/String;)V

    .line 243
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v13

    new-array v8, v13, [Ljava/lang/String;

    .line 244
    .local v8, "path":[Ljava/lang/String;
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v13

    new-array v10, v13, [J

    .line 245
    .local v10, "size":[J
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v13

    new-array v6, v13, [Z

    .line 246
    .local v6, "isExternal":[Z
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v13

    new-array v12, v13, [J

    .line 247
    .local v12, "timeStamp":[J
    const/4 v4, 0x0

    .line 248
    .local v4, "i":I
    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v13

    :goto_1
    invoke-interface {v13}, Ljava/util/Iterator;->hasNext()Z

    move-result v14

    if-nez v14, :cond_3

    .line 255
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v13

    if-ne v13, v7, :cond_4

    .line 256
    const-string v13, "is_continue"

    const/4 v14, 0x1

    invoke-virtual {v9, v13, v14}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 265
    :cond_2
    :goto_2
    const-string v13, "path"

    invoke-virtual {v9, v13, v8}, Landroid/os/Bundle;->putStringArray(Ljava/lang/String;[Ljava/lang/String;)V

    .line 266
    const-string v13, "size"

    invoke-virtual {v9, v13, v10}, Landroid/os/Bundle;->putLongArray(Ljava/lang/String;[J)V

    .line 267
    const-string v13, "external"

    invoke-virtual {v9, v13, v6}, Landroid/os/Bundle;->putBooleanArray(Ljava/lang/String;[Z)V

    .line 268
    const-string v13, "timestamp"

    invoke-virtual {v9, v13, v12}, Landroid/os/Bundle;->putLongArray(Ljava/lang/String;[J)V

    .line 269
    const-string v13, "is_success"

    const/4 v14, 0x1

    invoke-virtual {v9, v13, v14}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    goto/16 :goto_0

    .line 248
    :cond_3
    invoke-interface {v13}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/samsung/android/scloud/oem/lib/bnr/BNRFile;

    .line 249
    .local v2, "file":Lcom/samsung/android/scloud/oem/lib/bnr/BNRFile;
    const-string v14, "BNRClientHelper"

    new-instance v15, Ljava/lang/StringBuilder;

    const-string v16, "202, "

    invoke-direct/range {v15 .. v16}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p2

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, ", "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v2}, Lcom/samsung/android/scloud/oem/lib/bnr/BNRFile;->getPath()Ljava/lang/String;

    move-result-object v16

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, ", "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v2}, Lcom/samsung/android/scloud/oem/lib/bnr/BNRFile;->getSize()J

    move-result-wide v16

    invoke-virtual/range {v15 .. v17}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, ", "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v2}, Lcom/samsung/android/scloud/oem/lib/bnr/BNRFile;->getisExternal()Z

    move-result v16

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, ", "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v2}, Lcom/samsung/android/scloud/oem/lib/bnr/BNRFile;->getTimeStamp()J

    move-result-wide v16

    invoke-virtual/range {v15 .. v17}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Lcom/samsung/android/scloud/oem/lib/LOG;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 250
    invoke-virtual {v2}, Lcom/samsung/android/scloud/oem/lib/bnr/BNRFile;->getPath()Ljava/lang/String;

    move-result-object v14

    aput-object v14, v8, v4

    .line 251
    invoke-virtual {v2}, Lcom/samsung/android/scloud/oem/lib/bnr/BNRFile;->getSize()J

    move-result-wide v14

    aput-wide v14, v10, v4

    .line 252
    invoke-virtual {v2}, Lcom/samsung/android/scloud/oem/lib/bnr/BNRFile;->getisExternal()Z

    move-result v14

    aput-boolean v14, v6, v4

    .line 253
    add-int/lit8 v5, v4, 0x1

    .end local v4    # "i":I
    .local v5, "i":I
    invoke-virtual {v2}, Lcom/samsung/android/scloud/oem/lib/bnr/BNRFile;->getTimeStamp()J

    move-result-wide v14

    aput-wide v14, v12, v4

    move v4, v5

    .end local v5    # "i":I
    .restart local v4    # "i":I
    goto/16 :goto_1

    .line 257
    .end local v2    # "file":Lcom/samsung/android/scloud/oem/lib/bnr/BNRFile;
    :cond_4
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v13

    if-le v13, v7, :cond_5

    .line 258
    const-string v13, "BNRClientHelper"

    new-instance v14, Ljava/lang/StringBuilder;

    const-string v15, "202, "

    invoke-direct {v14, v15}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p2

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, ", file count is over maximum~!!, return false"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Lcom/samsung/android/scloud/oem/lib/LOG;->f(Ljava/lang/String;Ljava/lang/String;)V

    .line 259
    const-string v13, "is_success"

    const/4 v14, 0x0

    invoke-virtual {v9, v13, v14}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    goto/16 :goto_0

    .line 262
    :cond_5
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v13

    if-ge v13, v7, :cond_2

    .line 263
    const-string v13, "is_continue"

    const/4 v14, 0x0

    invoke-virtual {v9, v13, v14}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    goto/16 :goto_2
.end method
