.class Lcom/android/server/pm/PackageManagerService$IntentVerifierProxy;
.super Ljava/lang/Object;
.source "PackageManagerService.java"

# interfaces
.implements Lcom/android/server/pm/PackageManagerService$IntentFilterVerifier;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/pm/PackageManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "IntentVerifierProxy"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/android/server/pm/PackageManagerService$IntentFilterVerifier",
        "<",
        "Landroid/content/pm/PackageParser$ActivityIntentInfo;",
        ">;"
    }
.end annotation


# instance fields
.field private mContext:Landroid/content/Context;

.field private mCurrentIntentFilterVerifications:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mIntentFilterVerifierComponent:Landroid/content/ComponentName;

.field final synthetic this$0:Lcom/android/server/pm/PackageManagerService;


# direct methods
.method public constructor <init>(Lcom/android/server/pm/PackageManagerService;Landroid/content/Context;Landroid/content/ComponentName;)V
    .registers 5
    .param p2, "context"    # Landroid/content/Context;
    .param p3, "verifierComponent"    # Landroid/content/ComponentName;

    .prologue
    .line 1275
    iput-object p1, p0, this$0:Lcom/android/server/pm/PackageManagerService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1273
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, mCurrentIntentFilterVerifications:Ljava/util/ArrayList;

    .line 1276
    iput-object p2, p0, mContext:Landroid/content/Context;

    .line 1277
    iput-object p3, p0, mIntentFilterVerifierComponent:Landroid/content/ComponentName;

    .line 1278
    return-void
.end method

.method private createDomainVerificationState(IIILjava/lang/String;)Lcom/android/server/pm/IntentFilterVerificationState;
    .registers 9
    .param p1, "verifierUid"    # I
    .param p2, "userId"    # I
    .param p3, "verificationId"    # I
    .param p4, "packageName"    # Ljava/lang/String;

    .prologue
    .line 1444
    new-instance v0, Lcom/android/server/pm/IntentFilterVerificationState;

    invoke-direct {v0, p1, p2, p4}, Lcom/android/server/pm/IntentFilterVerificationState;-><init>(IILjava/lang/String;)V

    .line 1446
    .local v0, "ivs":Lcom/android/server/pm/IntentFilterVerificationState;
    invoke-virtual {v0}, Lcom/android/server/pm/IntentFilterVerificationState;->setPendingState()V

    .line 1447
    sget-object v2, Lcom/android/server/pm/PackageManagerService;->mPackages:Landroid/util/ArrayMap;

    monitor-enter v2

    .line 1448
    :try_start_b
    iget-object v1, p0, this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v1, v1, Lcom/android/server/pm/PackageManagerService;->mIntentFilterVerificationStates:Landroid/util/SparseArray;

    invoke-virtual {v1, p3, v0}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    .line 1449
    iget-object v1, p0, mCurrentIntentFilterVerifications:Ljava/util/ArrayList;

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1450
    monitor-exit v2

    .line 1451
    return-object v0

    .line 1450
    :catchall_1d
    move-exception v1

    monitor-exit v2
    :try_end_1f
    .catchall {:try_start_b .. :try_end_1f} :catchall_1d

    throw v1
.end method

.method private getDefaultScheme()Ljava/lang/String;
    .registers 2

    .prologue
    .line 1281
    const-string/jumbo v0, "https"

    return-object v0
.end method

.method private sendVerificationRequest(IILcom/android/server/pm/IntentFilterVerificationState;)V
    .registers 8
    .param p1, "userId"    # I
    .param p2, "verificationId"    # I
    .param p3, "ivs"    # Lcom/android/server/pm/IntentFilterVerificationState;

    .prologue
    .line 1317
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.INTENT_FILTER_NEEDS_VERIFICATION"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1318
    .local v1, "verificationIntent":Landroid/content/Intent;
    const-string v2, "android.content.pm.extra.INTENT_FILTER_VERIFICATION_ID"

    invoke-virtual {v1, v2, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1321
    const-string v2, "android.content.pm.extra.INTENT_FILTER_VERIFICATION_URI_SCHEME"

    invoke-direct {p0}, getDefaultScheme()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1324
    const-string v2, "android.content.pm.extra.INTENT_FILTER_VERIFICATION_HOSTS"

    invoke-virtual {p3}, Lcom/android/server/pm/IntentFilterVerificationState;->getHostsString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1327
    const-string v2, "android.content.pm.extra.INTENT_FILTER_VERIFICATION_PACKAGE_NAME"

    invoke-virtual {p3}, Lcom/android/server/pm/IntentFilterVerificationState;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1330
    iget-object v2, p0, mIntentFilterVerifierComponent:Landroid/content/ComponentName;

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 1331
    const/high16 v2, 0x10000000

    invoke-virtual {v1, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 1333
    new-instance v0, Landroid/os/UserHandle;

    invoke-direct {v0, p1}, Landroid/os/UserHandle;-><init>(I)V

    .line 1334
    .local v0, "user":Landroid/os/UserHandle;
    iget-object v2, p0, mContext:Landroid/content/Context;

    invoke-virtual {v2, v1, v0}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 1337
    return-void
.end method


# virtual methods
.method public bridge synthetic addOneIntentFilterVerification(IIILandroid/content/IntentFilter;Ljava/lang/String;)Z
    .registers 12
    .param p1, "x0"    # I
    .param p2, "x1"    # I
    .param p3, "x2"    # I
    .param p4, "x3"    # Landroid/content/IntentFilter;
    .param p5, "x4"    # Ljava/lang/String;

    .prologue
    .line 1270
    move-object v4, p4

    check-cast v4, Landroid/content/pm/PackageParser$ActivityIntentInfo;

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move-object v5, p5

    invoke-virtual/range {v0 .. v5}, addOneIntentFilterVerification(IIILandroid/content/pm/PackageParser$ActivityIntentInfo;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public addOneIntentFilterVerification(IIILandroid/content/pm/PackageParser$ActivityIntentInfo;Ljava/lang/String;)Z
    .registers 8
    .param p1, "verifierUid"    # I
    .param p2, "userId"    # I
    .param p3, "verificationId"    # I
    .param p4, "filter"    # Landroid/content/pm/PackageParser$ActivityIntentInfo;
    .param p5, "packageName"    # Ljava/lang/String;

    .prologue
    .line 1427
    # invokes: Lcom/android/server/pm/PackageManagerService;->hasValidDomains(Landroid/content/pm/PackageParser$ActivityIntentInfo;)Z
    invoke-static {p4}, Lcom/android/server/pm/PackageManagerService;->access$200(Landroid/content/pm/PackageParser$ActivityIntentInfo;)Z

    move-result v1

    if-nez v1, :cond_8

    .line 1428
    const/4 v1, 0x0

    .line 1439
    :goto_7
    return v1

    .line 1430
    :cond_8
    iget-object v1, p0, this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v1, v1, Lcom/android/server/pm/PackageManagerService;->mIntentFilterVerificationStates:Landroid/util/SparseArray;

    invoke-virtual {v1, p3}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/pm/IntentFilterVerificationState;

    .line 1431
    .local v0, "ivs":Lcom/android/server/pm/IntentFilterVerificationState;
    if-nez v0, :cond_18

    .line 1432
    invoke-direct {p0, p1, p2, p3, p5}, createDomainVerificationState(IIILjava/lang/String;)Lcom/android/server/pm/IntentFilterVerificationState;

    move-result-object v0

    .line 1438
    :cond_18
    invoke-virtual {v0, p4}, Lcom/android/server/pm/IntentFilterVerificationState;->addFilter(Landroid/content/pm/PackageParser$ActivityIntentInfo;)V

    .line 1439
    const/4 v1, 0x1

    goto :goto_7
.end method

.method public receiveVerificationResponse(I)V
    .registers 18
    .param p1, "verificationId"    # I

    .prologue
    .line 1340
    move-object/from16 v0, p0

    iget-object v13, v0, this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v13, v13, Lcom/android/server/pm/PackageManagerService;->mIntentFilterVerificationStates:Landroid/util/SparseArray;

    move/from16 v0, p1

    invoke-virtual {v13, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/pm/IntentFilterVerificationState;

    .line 1342
    .local v5, "ivs":Lcom/android/server/pm/IntentFilterVerificationState;
    invoke-virtual {v5}, Lcom/android/server/pm/IntentFilterVerificationState;->isVerified()Z

    move-result v12

    .line 1344
    .local v12, "verified":Z
    invoke-virtual {v5}, Lcom/android/server/pm/IntentFilterVerificationState;->getFilters()Ljava/util/ArrayList;

    move-result-object v3

    .line 1345
    .local v3, "filters":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/pm/PackageParser$ActivityIntentInfo;>;"
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 1350
    .local v1, "count":I
    const/4 v6, 0x0

    .local v6, "n":I
    :goto_1b
    if-ge v6, v1, :cond_29

    .line 1351
    invoke-virtual {v3, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/pm/PackageParser$ActivityIntentInfo;

    .line 1352
    .local v2, "filter":Landroid/content/pm/PackageParser$ActivityIntentInfo;
    invoke-virtual {v2, v12}, Landroid/content/pm/PackageParser$ActivityIntentInfo;->setVerified(Z)V

    .line 1350
    add-int/lit8 v6, v6, 0x1

    goto :goto_1b

    .line 1359
    .end local v2    # "filter":Landroid/content/pm/PackageParser$ActivityIntentInfo;
    :cond_29
    move-object/from16 v0, p0

    iget-object v13, v0, this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v13, v13, Lcom/android/server/pm/PackageManagerService;->mIntentFilterVerificationStates:Landroid/util/SparseArray;

    move/from16 v0, p1

    invoke-virtual {v13, v0}, Landroid/util/SparseArray;->remove(I)V

    .line 1361
    invoke-virtual {v5}, Lcom/android/server/pm/IntentFilterVerificationState;->getPackageName()Ljava/lang/String;

    move-result-object v8

    .line 1362
    .local v8, "packageName":Ljava/lang/String;
    const/4 v4, 0x0

    .line 1364
    .local v4, "ivi":Landroid/content/pm/IntentFilterVerificationInfo;
    sget-object v14, Lcom/android/server/pm/PackageManagerService;->mPackages:Landroid/util/ArrayMap;

    monitor-enter v14

    .line 1365
    :try_start_3c
    move-object/from16 v0, p0

    iget-object v13, v0, this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v13, v13, Lcom/android/server/pm/PackageManagerService;->mSettings:Lcom/android/server/pm/Settings;

    invoke-virtual {v13, v8}, Lcom/android/server/pm/Settings;->getIntentFilterVerificationLPr(Ljava/lang/String;)Landroid/content/pm/IntentFilterVerificationInfo;

    move-result-object v4

    .line 1366
    monitor-exit v14
    :try_end_47
    .catchall {:try_start_3c .. :try_end_47} :catchall_6e

    .line 1367
    if-nez v4, :cond_71

    .line 1368
    const-string v13, "PackageManager"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "IntentFilterVerificationInfo not found for verificationId:"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    move/from16 v0, p1

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, " packageName:"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1422
    :goto_6d
    return-void

    .line 1366
    :catchall_6e
    move-exception v13

    :try_start_6f
    monitor-exit v14
    :try_end_70
    .catchall {:try_start_6f .. :try_end_70} :catchall_6e

    throw v13

    .line 1376
    :cond_71
    sget-object v14, Lcom/android/server/pm/PackageManagerService;->mPackages:Landroid/util/ArrayMap;

    monitor-enter v14

    .line 1377
    if-eqz v12, :cond_ae

    .line 1378
    const/4 v13, 0x2

    :try_start_77
    invoke-virtual {v4, v13}, Landroid/content/pm/IntentFilterVerificationInfo;->setStatus(I)V

    .line 1382
    :goto_7a
    move-object/from16 v0, p0

    iget-object v13, v0, this$0:Lcom/android/server/pm/PackageManagerService;

    invoke-virtual {v13}, Lcom/android/server/pm/PackageManagerService;->scheduleWriteSettingsLocked()V

    .line 1384
    invoke-virtual {v5}, Lcom/android/server/pm/IntentFilterVerificationState;->getUserId()I

    move-result v10

    .line 1385
    .local v10, "userId":I
    const/4 v13, -0x1

    if-eq v10, v13, :cond_a9

    .line 1386
    move-object/from16 v0, p0

    iget-object v13, v0, this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v13, v13, Lcom/android/server/pm/PackageManagerService;->mSettings:Lcom/android/server/pm/Settings;

    invoke-virtual {v13, v8, v10}, Lcom/android/server/pm/Settings;->getIntentFilterVerificationStatusLPr(Ljava/lang/String;I)I

    move-result v11

    .line 1389
    .local v11, "userStatus":I
    const/4 v9, 0x0

    .line 1390
    .local v9, "updatedStatus":I
    const/4 v7, 0x0

    .line 1394
    .local v7, "needUpdate":Z
    packed-switch v11, :pswitch_data_c0

    .line 1415
    :cond_97
    :goto_97
    if-eqz v7, :cond_a9

    .line 1416
    move-object/from16 v0, p0

    iget-object v13, v0, this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v13, v13, Lcom/android/server/pm/PackageManagerService;->mSettings:Lcom/android/server/pm/Settings;

    invoke-virtual {v13, v8, v9, v10}, Lcom/android/server/pm/Settings;->updateIntentFilterVerificationStatusLPw(Ljava/lang/String;II)Z

    .line 1418
    move-object/from16 v0, p0

    iget-object v13, v0, this$0:Lcom/android/server/pm/PackageManagerService;

    invoke-virtual {v13, v10}, Lcom/android/server/pm/PackageManagerService;->scheduleWritePackageRestrictionsLocked(I)V

    .line 1421
    .end local v7    # "needUpdate":Z
    .end local v9    # "updatedStatus":I
    .end local v11    # "userStatus":I
    :cond_a9
    monitor-exit v14

    goto :goto_6d

    .end local v10    # "userId":I
    :catchall_ab
    move-exception v13

    monitor-exit v14
    :try_end_ad
    .catchall {:try_start_77 .. :try_end_ad} :catchall_ab

    throw v13

    .line 1380
    :cond_ae
    const/4 v13, 0x1

    :try_start_af
    invoke-virtual {v4, v13}, Landroid/content/pm/IntentFilterVerificationInfo;->setStatus(I)V
    :try_end_b2
    .catchall {:try_start_af .. :try_end_b2} :catchall_ab

    goto :goto_7a

    .line 1396
    .restart local v7    # "needUpdate":Z
    .restart local v9    # "updatedStatus":I
    .restart local v10    # "userId":I
    .restart local v11    # "userStatus":I
    :pswitch_b3
    if-eqz v12, :cond_b8

    .line 1397
    const/4 v9, 0x2

    .line 1401
    :goto_b6
    const/4 v7, 0x1

    .line 1402
    goto :goto_97

    .line 1399
    :cond_b8
    const/4 v9, 0x1

    goto :goto_b6

    .line 1405
    :pswitch_ba
    if-eqz v12, :cond_97

    .line 1406
    const/4 v9, 0x2

    .line 1407
    const/4 v7, 0x1

    goto :goto_97

    .line 1394
    nop

    :pswitch_data_c0
    .packed-switch 0x0
        :pswitch_b3
        :pswitch_ba
    .end packed-switch
.end method

.method public startVerifications(I)V
    .registers 15
    .param p1, "userId"    # I

    .prologue
    .line 1287
    iget-object v11, p0, mCurrentIntentFilterVerifications:Ljava/util/ArrayList;

    invoke-virtual {v11}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 1288
    .local v0, "count":I
    const/4 v8, 0x0

    .local v8, "n":I
    :goto_7
    if-ge v8, v0, :cond_64

    .line 1289
    iget-object v11, p0, mCurrentIntentFilterVerifications:Ljava/util/ArrayList;

    invoke-virtual {v11, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/Integer;

    invoke-virtual {v11}, Ljava/lang/Integer;->intValue()I

    move-result v10

    .line 1290
    .local v10, "verificationId":I
    iget-object v11, p0, this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v11, v11, Lcom/android/server/pm/PackageManagerService;->mIntentFilterVerificationStates:Landroid/util/SparseArray;

    invoke-virtual {v11, v10}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/server/pm/IntentFilterVerificationState;

    .line 1293
    .local v6, "ivs":Lcom/android/server/pm/IntentFilterVerificationState;
    invoke-virtual {v6}, Lcom/android/server/pm/IntentFilterVerificationState;->getPackageName()Ljava/lang/String;

    move-result-object v9

    .line 1295
    .local v9, "packageName":Ljava/lang/String;
    invoke-virtual {v6}, Lcom/android/server/pm/IntentFilterVerificationState;->getFilters()Ljava/util/ArrayList;

    move-result-object v5

    .line 1296
    .local v5, "filters":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/pm/PackageParser$ActivityIntentInfo;>;"
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v4

    .line 1297
    .local v4, "filterCount":I
    new-instance v2, Landroid/util/ArraySet;

    invoke-direct {v2}, Landroid/util/ArraySet;-><init>()V

    .line 1298
    .local v2, "domainsSet":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    const/4 v7, 0x0

    .local v7, "m":I
    :goto_31
    if-ge v7, v4, :cond_43

    .line 1299
    invoke-virtual {v5, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/pm/PackageParser$ActivityIntentInfo;

    .line 1300
    .local v3, "filter":Landroid/content/pm/PackageParser$ActivityIntentInfo;
    invoke-virtual {v3}, Landroid/content/pm/PackageParser$ActivityIntentInfo;->getHostsList()Ljava/util/ArrayList;

    move-result-object v11

    invoke-virtual {v2, v11}, Landroid/util/ArraySet;->addAll(Ljava/util/Collection;)Z

    .line 1298
    add-int/lit8 v7, v7, 0x1

    goto :goto_31

    .line 1302
    .end local v3    # "filter":Landroid/content/pm/PackageParser$ActivityIntentInfo;
    :cond_43
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 1303
    .local v1, "domainsList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    sget-object v12, Lcom/android/server/pm/PackageManagerService;->mPackages:Landroid/util/ArrayMap;

    monitor-enter v12

    .line 1304
    :try_start_4b
    iget-object v11, p0, this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v11, v11, Lcom/android/server/pm/PackageManagerService;->mSettings:Lcom/android/server/pm/Settings;

    invoke-virtual {v11, v9, v1}, Lcom/android/server/pm/Settings;->createIntentFilterVerificationIfNeededLPw(Ljava/lang/String;Ljava/util/ArrayList;)Landroid/content/pm/IntentFilterVerificationInfo;

    move-result-object v11

    if-eqz v11, :cond_5a

    .line 1306
    iget-object v11, p0, this$0:Lcom/android/server/pm/PackageManagerService;

    invoke-virtual {v11}, Lcom/android/server/pm/PackageManagerService;->scheduleWriteSettingsLocked()V

    .line 1308
    :cond_5a
    monitor-exit v12
    :try_end_5b
    .catchall {:try_start_4b .. :try_end_5b} :catchall_61

    .line 1309
    invoke-direct {p0, p1, v10, v6}, sendVerificationRequest(IILcom/android/server/pm/IntentFilterVerificationState;)V

    .line 1288
    add-int/lit8 v8, v8, 0x1

    goto :goto_7

    .line 1308
    :catchall_61
    move-exception v11

    :try_start_62
    monitor-exit v12
    :try_end_63
    .catchall {:try_start_62 .. :try_end_63} :catchall_61

    throw v11

    .line 1311
    .end local v1    # "domainsList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v2    # "domainsSet":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    .end local v4    # "filterCount":I
    .end local v5    # "filters":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/pm/PackageParser$ActivityIntentInfo;>;"
    .end local v6    # "ivs":Lcom/android/server/pm/IntentFilterVerificationState;
    .end local v7    # "m":I
    .end local v9    # "packageName":Ljava/lang/String;
    .end local v10    # "verificationId":I
    :cond_64
    iget-object v11, p0, mCurrentIntentFilterVerifications:Ljava/util/ArrayList;

    invoke-virtual {v11}, Ljava/util/ArrayList;->clear()V

    .line 1312
    return-void
.end method
