.class Lcom/android/server/am/MARsDBManager$DBHandler;
.super Landroid/os/Handler;
.source "MARsDBManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/am/MARsDBManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "DBHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/am/MARsDBManager;


# direct methods
.method public constructor <init>(Lcom/android/server/am/MARsDBManager;)V
    .registers 2

    .prologue
    .line 224
    iput-object p1, p0, this$0:Lcom/android/server/am/MARsDBManager;

    .line 225
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    .line 226
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 15
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 230
    iget v9, p1, Landroid/os/Message;->what:I

    packed-switch v9, :pswitch_data_170

    .line 326
    :cond_5
    :goto_5
    :pswitch_5
    return-void

    .line 232
    :pswitch_6
    iget-object v9, p0, this$0:Lcom/android/server/am/MARsDBManager;

    # invokes: Lcom/android/server/am/MARsDBManager;->initManagedPackagesInternal()V
    invoke-static {v9}, Lcom/android/server/am/MARsDBManager;->access$100(Lcom/android/server/am/MARsDBManager;)V

    goto :goto_5

    .line 235
    :pswitch_c
    iget-object v9, p0, this$0:Lcom/android/server/am/MARsDBManager;

    # invokes: Lcom/android/server/am/MARsDBManager;->getSettingsValueFromDB()V
    invoke-static {v9}, Lcom/android/server/am/MARsDBManager;->access$200(Lcom/android/server/am/MARsDBManager;)V

    goto :goto_5

    .line 238
    :pswitch_12
    const/4 v0, 0x3

    .line 240
    .local v0, "columns":I
    iget-object v9, p0, this$0:Lcom/android/server/am/MARsDBManager;

    # getter for: Lcom/android/server/am/MARsDBManager;->mUpdateResetTimeValues:Ljava/util/ArrayList;
    invoke-static {v9}, Lcom/android/server/am/MARsDBManager;->access$300(Lcom/android/server/am/MARsDBManager;)Ljava/util/ArrayList;

    move-result-object v9

    if-eqz v9, :cond_5

    .line 241
    iget-object v9, p0, this$0:Lcom/android/server/am/MARsDBManager;

    iget-object v10, p0, this$0:Lcom/android/server/am/MARsDBManager;

    # getter for: Lcom/android/server/am/MARsDBManager;->mUpdateResetTimeValues:Ljava/util/ArrayList;
    invoke-static {v10}, Lcom/android/server/am/MARsDBManager;->access$300(Lcom/android/server/am/MARsDBManager;)Ljava/util/ArrayList;

    move-result-object v10

    # invokes: Lcom/android/server/am/MARsDBManager;->updateDBAll(ILjava/util/ArrayList;)V
    invoke-static {v9, v0, v10}, Lcom/android/server/am/MARsDBManager;->access$400(Lcom/android/server/am/MARsDBManager;ILjava/util/ArrayList;)V

    goto :goto_5

    .line 245
    .end local v0    # "columns":I
    :pswitch_27
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v1

    .line 246
    .local v1, "extras":Landroid/os/Bundle;
    if-eqz v1, :cond_5

    .line 247
    const-string/jumbo v9, "packageName"

    const/4 v10, 0x0

    invoke-virtual {v1, v9, v10}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 248
    .local v3, "pkgName":Ljava/lang/String;
    const-string/jumbo v9, "time"

    const-wide/16 v10, 0x0

    invoke-virtual {v1, v9, v10, v11}, Landroid/os/Bundle;->getLong(Ljava/lang/String;J)J

    move-result-wide v6

    .line 249
    .local v6, "time":J
    const-string/jumbo v9, "strExtras"

    const-string v10, "0"

    invoke-virtual {v1, v9, v10}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 251
    .local v4, "strExtras":Ljava/lang/String;
    if-eqz v3, :cond_5

    const-wide/16 v10, 0x0

    cmp-long v9, v6, v10

    if-eqz v9, :cond_5

    .line 252
    const/4 v0, 0x3

    .line 253
    .restart local v0    # "columns":I
    new-instance v5, Lcom/android/server/am/MARsDBManager$SMDBValue;

    iget-object v9, p0, this$0:Lcom/android/server/am/MARsDBManager;

    invoke-static {v6, v7}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v10

    invoke-direct {v5, v9, v3, v10, v4}, Lcom/android/server/am/MARsDBManager$SMDBValue;-><init>(Lcom/android/server/am/MARsDBManager;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 254
    .local v5, "value":Lcom/android/server/am/MARsDBManager$SMDBValue;
    iget-object v9, p0, this$0:Lcom/android/server/am/MARsDBManager;

    # invokes: Lcom/android/server/am/MARsDBManager;->updateDBSpecific(Ljava/lang/String;ILcom/android/server/am/MARsDBManager$SMDBValue;)V
    invoke-static {v9, v3, v0, v5}, Lcom/android/server/am/MARsDBManager;->access$500(Lcom/android/server/am/MARsDBManager;Ljava/lang/String;ILcom/android/server/am/MARsDBManager$SMDBValue;)V

    goto :goto_5

    .line 259
    .end local v0    # "columns":I
    .end local v1    # "extras":Landroid/os/Bundle;
    .end local v3    # "pkgName":Ljava/lang/String;
    .end local v4    # "strExtras":Ljava/lang/String;
    .end local v5    # "value":Lcom/android/server/am/MARsDBManager$SMDBValue;
    .end local v6    # "time":J
    :pswitch_61
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v1

    .line 260
    .restart local v1    # "extras":Landroid/os/Bundle;
    if-eqz v1, :cond_5

    .line 261
    const-string/jumbo v9, "onUpgrade"

    const/4 v10, 0x0

    invoke-virtual {v1, v9, v10}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    .line 262
    .local v2, "onUpgrade":Z
    iget-object v9, p0, this$0:Lcom/android/server/am/MARsDBManager;

    iget-object v9, v9, Lcom/android/server/am/MARsDBManager;->mPolicyManager:Lcom/android/server/am/MARsPolicyManager;

    sget-boolean v9, Lcom/android/server/am/MARsPolicyManager;->DEBUG_MARs:Z

    if-eqz v9, :cond_9f

    .line 263
    const-string v9, "MARsDBManager"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Received MARS_DB_REQUEST_FILLINDB_MSG, --- onUpgrade = "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " --mDBUpdated = "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-object v11, p0, this$0:Lcom/android/server/am/MARsDBManager;

    # getter for: Lcom/android/server/am/MARsDBManager;->mDBUpdated:Z
    invoke-static {v11}, Lcom/android/server/am/MARsDBManager;->access$600(Lcom/android/server/am/MARsDBManager;)Z

    move-result v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 267
    :cond_9f
    if-nez v2, :cond_b9

    .line 269
    iget-object v9, p0, this$0:Lcom/android/server/am/MARsDBManager;

    # getter for: Lcom/android/server/am/MARsDBManager;->mDBUpdated:Z
    invoke-static {v9}, Lcom/android/server/am/MARsDBManager;->access$600(Lcom/android/server/am/MARsDBManager;)Z

    move-result v9

    if-nez v9, :cond_5

    .line 270
    iget-object v9, p0, this$0:Lcom/android/server/am/MARsDBManager;

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    # invokes: Lcom/android/server/am/MARsDBManager;->updateDBForApp(ZLjava/util/ArrayList;Z)V
    invoke-static {v9, v10, v11, v12}, Lcom/android/server/am/MARsDBManager;->access$700(Lcom/android/server/am/MARsDBManager;ZLjava/util/ArrayList;Z)V

    .line 271
    iget-object v9, p0, this$0:Lcom/android/server/am/MARsDBManager;

    const/4 v10, 0x1

    # setter for: Lcom/android/server/am/MARsDBManager;->mDBUpdated:Z
    invoke-static {v9, v10}, Lcom/android/server/am/MARsDBManager;->access$602(Lcom/android/server/am/MARsDBManager;Z)Z

    goto/16 :goto_5

    .line 274
    :cond_b9
    iget-object v9, p0, this$0:Lcom/android/server/am/MARsDBManager;

    const/4 v10, 0x0

    iput-boolean v10, v9, Lcom/android/server/am/MARsDBManager;->mOldVersion:Z

    .line 275
    iget-object v9, p0, this$0:Lcom/android/server/am/MARsDBManager;

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x1

    # invokes: Lcom/android/server/am/MARsDBManager;->updateDBForApp(ZLjava/util/ArrayList;Z)V
    invoke-static {v9, v10, v11, v12}, Lcom/android/server/am/MARsDBManager;->access$700(Lcom/android/server/am/MARsDBManager;ZLjava/util/ArrayList;Z)V

    goto/16 :goto_5

    .line 280
    .end local v1    # "extras":Landroid/os/Bundle;
    .end local v2    # "onUpgrade":Z
    :pswitch_c8
    iget-object v9, p0, this$0:Lcom/android/server/am/MARsDBManager;

    iget-object v9, v9, Lcom/android/server/am/MARsDBManager;->mPolicyManager:Lcom/android/server/am/MARsPolicyManager;

    sget-boolean v9, Lcom/android/server/am/MARsPolicyManager;->DEBUG_MARs:Z

    if-eqz v9, :cond_f2

    .line 281
    const-string v9, "MARsDBManager"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Received UPDATE_PREVIOUS_PACKAGESTYPE_MSG --size ="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-object v11, p0, this$0:Lcom/android/server/am/MARsDBManager;

    # getter for: Lcom/android/server/am/MARsDBManager;->mPreviousPackages:Landroid/util/ArrayMap;
    invoke-static {v11}, Lcom/android/server/am/MARsDBManager;->access$800(Lcom/android/server/am/MARsDBManager;)Landroid/util/ArrayMap;

    move-result-object v11

    invoke-virtual {v11}, Landroid/util/ArrayMap;->size()I

    move-result v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 285
    :cond_f2
    iget-object v9, p0, this$0:Lcom/android/server/am/MARsDBManager;

    # getter for: Lcom/android/server/am/MARsDBManager;->mPreviousPackages:Landroid/util/ArrayMap;
    invoke-static {v9}, Lcom/android/server/am/MARsDBManager;->access$800(Lcom/android/server/am/MARsDBManager;)Landroid/util/ArrayMap;

    move-result-object v9

    invoke-virtual {v9}, Landroid/util/ArrayMap;->size()I

    move-result v9

    if-lez v9, :cond_5

    .line 286
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    .line 287
    .local v8, "values":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/MARsDBManager$SMDBValue;>;"
    iget-object v9, p0, this$0:Lcom/android/server/am/MARsDBManager;

    # getter for: Lcom/android/server/am/MARsDBManager;->mPreviousPackages:Landroid/util/ArrayMap;
    invoke-static {v9}, Lcom/android/server/am/MARsDBManager;->access$800(Lcom/android/server/am/MARsDBManager;)Landroid/util/ArrayMap;

    move-result-object v9

    invoke-virtual {v9}, Landroid/util/ArrayMap;->values()Ljava/util/Collection;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 288
    iget-object v9, p0, this$0:Lcom/android/server/am/MARsDBManager;

    const/4 v10, 0x4

    # invokes: Lcom/android/server/am/MARsDBManager;->updateDBAll(ILjava/util/ArrayList;)V
    invoke-static {v9, v10, v8}, Lcom/android/server/am/MARsDBManager;->access$400(Lcom/android/server/am/MARsDBManager;ILjava/util/ArrayList;)V

    .line 290
    iget-object v9, p0, this$0:Lcom/android/server/am/MARsDBManager;

    # getter for: Lcom/android/server/am/MARsDBManager;->mPreviousPackages:Landroid/util/ArrayMap;
    invoke-static {v9}, Lcom/android/server/am/MARsDBManager;->access$800(Lcom/android/server/am/MARsDBManager;)Landroid/util/ArrayMap;

    move-result-object v9

    invoke-virtual {v9}, Landroid/util/ArrayMap;->clear()V

    goto/16 :goto_5

    .line 296
    .end local v8    # "values":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/MARsDBManager$SMDBValue;>;"
    :pswitch_121
    iget-object v9, p0, this$0:Lcom/android/server/am/MARsDBManager;

    iget-boolean v9, v9, Lcom/android/server/am/MARsDBManager;->mOldVersion:Z

    if-nez v9, :cond_5

    .line 297
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v1

    .line 298
    .restart local v1    # "extras":Landroid/os/Bundle;
    if-eqz v1, :cond_5

    .line 299
    const-string/jumbo v9, "packageName"

    const/4 v10, 0x0

    invoke-virtual {v1, v9, v10}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 300
    .restart local v3    # "pkgName":Ljava/lang/String;
    if-eqz v3, :cond_5

    .line 301
    iget-object v9, p0, this$0:Lcom/android/server/am/MARsDBManager;

    # invokes: Lcom/android/server/am/MARsDBManager;->insertPackage(Ljava/lang/String;)V
    invoke-static {v9, v3}, Lcom/android/server/am/MARsDBManager;->access$900(Lcom/android/server/am/MARsDBManager;Ljava/lang/String;)V

    goto/16 :goto_5

    .line 307
    .end local v1    # "extras":Landroid/os/Bundle;
    .end local v3    # "pkgName":Ljava/lang/String;
    :pswitch_13e
    iget-object v9, p0, this$0:Lcom/android/server/am/MARsDBManager;

    iget-boolean v9, v9, Lcom/android/server/am/MARsDBManager;->mOldVersion:Z

    if-nez v9, :cond_5

    .line 308
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v1

    .line 309
    .restart local v1    # "extras":Landroid/os/Bundle;
    if-eqz v1, :cond_5

    .line 310
    const-string/jumbo v9, "packageName"

    const/4 v10, 0x0

    invoke-virtual {v1, v9, v10}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 311
    .restart local v3    # "pkgName":Ljava/lang/String;
    if-eqz v3, :cond_5

    .line 312
    iget-object v9, p0, this$0:Lcom/android/server/am/MARsDBManager;

    # invokes: Lcom/android/server/am/MARsDBManager;->deletePackage(Ljava/lang/String;)V
    invoke-static {v9, v3}, Lcom/android/server/am/MARsDBManager;->access$1000(Lcom/android/server/am/MARsDBManager;Ljava/lang/String;)V

    goto/16 :goto_5

    .line 318
    .end local v1    # "extras":Landroid/os/Bundle;
    .end local v3    # "pkgName":Ljava/lang/String;
    :pswitch_15b
    iget-object v9, p0, this$0:Lcom/android/server/am/MARsDBManager;

    iget-boolean v9, v9, Lcom/android/server/am/MARsDBManager;->mOldVersion:Z

    if-nez v9, :cond_5

    .line 319
    iget-object v9, p0, this$0:Lcom/android/server/am/MARsDBManager;

    # invokes: Lcom/android/server/am/MARsDBManager;->updateAutoRunTargetXmlToDB()V
    invoke-static {v9}, Lcom/android/server/am/MARsDBManager;->access$1100(Lcom/android/server/am/MARsDBManager;)V

    goto/16 :goto_5

    .line 323
    :pswitch_168
    iget-object v9, p0, this$0:Lcom/android/server/am/MARsDBManager;

    # invokes: Lcom/android/server/am/MARsDBManager;->getExcludedAppDBValues()V
    invoke-static {v9}, Lcom/android/server/am/MARsDBManager;->access$1200(Lcom/android/server/am/MARsDBManager;)V

    goto/16 :goto_5

    .line 230
    nop

    :pswitch_data_170
    .packed-switch 0x1
        :pswitch_6
        :pswitch_c
        :pswitch_12
        :pswitch_27
        :pswitch_5
        :pswitch_5
        :pswitch_61
        :pswitch_c8
        :pswitch_121
        :pswitch_13e
        :pswitch_15b
        :pswitch_168
    .end packed-switch
.end method
