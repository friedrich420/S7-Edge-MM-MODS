.class Lcom/android/server/InputMethodManagerService$MyPackageMonitor;
.super Lcom/android/internal/content/PackageMonitor;
.source "InputMethodManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/InputMethodManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "MyPackageMonitor"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/InputMethodManagerService;


# direct methods
.method constructor <init>(Lcom/android/server/InputMethodManagerService;)V
    .registers 2

    .prologue
    .line 1205
    iput-object p1, p0, this$0:Lcom/android/server/InputMethodManagerService;

    invoke-direct {p0}, Lcom/android/internal/content/PackageMonitor;-><init>()V

    return-void
.end method

.method private isChangingPackagesOfCurrentUser()Z
    .registers 4

    .prologue
    .line 1222
    invoke-virtual {p0}, getChangingUserId()I

    move-result v1

    .line 1223
    .local v1, "userId":I
    iget-object v2, p0, this$0:Lcom/android/server/InputMethodManagerService;

    iget-object v2, v2, Lcom/android/server/InputMethodManagerService;->mSettings:Lcom/android/internal/inputmethod/InputMethodUtils$InputMethodSettings;

    invoke-virtual {v2}, Lcom/android/internal/inputmethod/InputMethodUtils$InputMethodSettings;->getCurrentUserId()I

    move-result v2

    if-ne v1, v2, :cond_10

    const/4 v0, 0x1

    .line 1229
    .local v0, "retval":Z
    :goto_f
    return v0

    .line 1223
    .end local v0    # "retval":Z
    :cond_10
    const/4 v0, 0x0

    goto :goto_f
.end method


# virtual methods
.method public onHandleForceStop(Landroid/content/Intent;[Ljava/lang/String;IZ)Z
    .registers 16
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "packages"    # [Ljava/lang/String;
    .param p3, "uid"    # I
    .param p4, "doit"    # Z

    .prologue
    .line 1234
    invoke-direct {p0}, isChangingPackagesOfCurrentUser()Z

    move-result v8

    if-nez v8, :cond_8

    .line 1235
    const/4 v8, 0x0

    .line 1258
    :goto_7
    return v8

    .line 1237
    :cond_8
    iget-object v8, p0, this$0:Lcom/android/server/InputMethodManagerService;

    iget-object v9, v8, Lcom/android/server/InputMethodManagerService;->mMethodMap:Ljava/util/HashMap;

    monitor-enter v9

    .line 1238
    :try_start_d
    iget-object v8, p0, this$0:Lcom/android/server/InputMethodManagerService;

    iget-object v8, v8, Lcom/android/server/InputMethodManagerService;->mSettings:Lcom/android/internal/inputmethod/InputMethodUtils$InputMethodSettings;

    invoke-virtual {v8}, Lcom/android/internal/inputmethod/InputMethodUtils$InputMethodSettings;->getSelectedInputMethod()Ljava/lang/String;

    move-result-object v2

    .line 1239
    .local v2, "curInputMethodId":Ljava/lang/String;
    iget-object v8, p0, this$0:Lcom/android/server/InputMethodManagerService;

    iget-object v8, v8, Lcom/android/server/InputMethodManagerService;->mMethodList:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 1240
    .local v0, "N":I
    if-eqz v2, :cond_64

    .line 1241
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_20
    if-ge v3, v0, :cond_64

    .line 1242
    iget-object v8, p0, this$0:Lcom/android/server/InputMethodManagerService;

    iget-object v8, v8, Lcom/android/server/InputMethodManagerService;->mMethodList:Ljava/util/ArrayList;

    invoke-virtual {v8, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/view/inputmethod/InputMethodInfo;

    .line 1243
    .local v5, "imi":Landroid/view/inputmethod/InputMethodInfo;
    invoke-virtual {v5}, Landroid/view/inputmethod/InputMethodInfo;->getId()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v8, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_61

    .line 1244
    move-object v1, p2

    .local v1, "arr$":[Ljava/lang/String;
    array-length v6, v1

    .local v6, "len$":I
    const/4 v4, 0x0

    .local v4, "i$":I
    :goto_39
    if-ge v4, v6, :cond_61

    aget-object v7, v1, v4

    .line 1245
    .local v7, "pkg":Ljava/lang/String;
    invoke-virtual {v5}, Landroid/view/inputmethod/InputMethodInfo;->getPackageName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v8, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_5e

    .line 1246
    if-nez p4, :cond_4f

    .line 1247
    const/4 v8, 0x1

    monitor-exit v9

    goto :goto_7

    .line 1257
    .end local v0    # "N":I
    .end local v1    # "arr$":[Ljava/lang/String;
    .end local v2    # "curInputMethodId":Ljava/lang/String;
    .end local v3    # "i":I
    .end local v4    # "i$":I
    .end local v5    # "imi":Landroid/view/inputmethod/InputMethodInfo;
    .end local v6    # "len$":I
    .end local v7    # "pkg":Ljava/lang/String;
    :catchall_4c
    move-exception v8

    monitor-exit v9
    :try_end_4e
    .catchall {:try_start_d .. :try_end_4e} :catchall_4c

    throw v8

    .line 1249
    .restart local v0    # "N":I
    .restart local v1    # "arr$":[Ljava/lang/String;
    .restart local v2    # "curInputMethodId":Ljava/lang/String;
    .restart local v3    # "i":I
    .restart local v4    # "i$":I
    .restart local v5    # "imi":Landroid/view/inputmethod/InputMethodInfo;
    .restart local v6    # "len$":I
    .restart local v7    # "pkg":Ljava/lang/String;
    :cond_4f
    :try_start_4f
    iget-object v8, p0, this$0:Lcom/android/server/InputMethodManagerService;

    const-string v10, ""

    # invokes: Lcom/android/server/InputMethodManagerService;->resetSelectedInputMethodAndSubtypeLocked(Ljava/lang/String;)V
    invoke-static {v8, v10}, Lcom/android/server/InputMethodManagerService;->access$1300(Lcom/android/server/InputMethodManagerService;Ljava/lang/String;)V

    .line 1250
    iget-object v8, p0, this$0:Lcom/android/server/InputMethodManagerService;

    # invokes: Lcom/android/server/InputMethodManagerService;->chooseNewDefaultIMELocked()Z
    invoke-static {v8}, Lcom/android/server/InputMethodManagerService;->access$1400(Lcom/android/server/InputMethodManagerService;)Z

    .line 1251
    const/4 v8, 0x1

    monitor-exit v9

    goto :goto_7

    .line 1244
    :cond_5e
    add-int/lit8 v4, v4, 0x1

    goto :goto_39

    .line 1241
    .end local v1    # "arr$":[Ljava/lang/String;
    .end local v4    # "i$":I
    .end local v6    # "len$":I
    .end local v7    # "pkg":Ljava/lang/String;
    :cond_61
    add-int/lit8 v3, v3, 0x1

    goto :goto_20

    .line 1257
    .end local v3    # "i":I
    .end local v5    # "imi":Landroid/view/inputmethod/InputMethodInfo;
    :cond_64
    monitor-exit v9
    :try_end_65
    .catchall {:try_start_4f .. :try_end_65} :catchall_4c

    .line 1258
    const/4 v8, 0x0

    goto :goto_7
.end method

.method public onSomePackagesChanged()V
    .registers 16

    .prologue
    .line 1263
    invoke-direct {p0}, isChangingPackagesOfCurrentUser()Z

    move-result v10

    if-nez v10, :cond_7

    .line 1347
    :goto_6
    return-void

    .line 1266
    :cond_7
    iget-object v10, p0, this$0:Lcom/android/server/InputMethodManagerService;

    iget-object v11, v10, Lcom/android/server/InputMethodManagerService;->mMethodMap:Ljava/util/HashMap;

    monitor-enter v11

    .line 1267
    const/4 v3, 0x0

    .line 1268
    .local v3, "curIm":Landroid/view/inputmethod/InputMethodInfo;
    :try_start_d
    iget-object v10, p0, this$0:Lcom/android/server/InputMethodManagerService;

    iget-object v10, v10, Lcom/android/server/InputMethodManagerService;->mSettings:Lcom/android/internal/inputmethod/InputMethodUtils$InputMethodSettings;

    invoke-virtual {v10}, Lcom/android/internal/inputmethod/InputMethodUtils$InputMethodSettings;->getSelectedInputMethod()Ljava/lang/String;

    move-result-object v4

    .line 1269
    .local v4, "curInputMethodId":Ljava/lang/String;
    iget-object v10, p0, this$0:Lcom/android/server/InputMethodManagerService;

    iget-object v10, v10, Lcom/android/server/InputMethodManagerService;->mMethodList:Ljava/util/ArrayList;

    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 1270
    .local v0, "N":I
    if-eqz v4, :cond_c1

    .line 1271
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_20
    if-ge v5, v0, :cond_c1

    .line 1272
    iget-object v10, p0, this$0:Lcom/android/server/InputMethodManagerService;

    iget-object v10, v10, Lcom/android/server/InputMethodManagerService;->mMethodList:Ljava/util/ArrayList;

    invoke-virtual {v10, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/view/inputmethod/InputMethodInfo;

    .line 1273
    .local v6, "imi":Landroid/view/inputmethod/InputMethodInfo;
    invoke-virtual {v6}, Landroid/view/inputmethod/InputMethodInfo;->getId()Ljava/lang/String;

    move-result-object v7

    .line 1274
    .local v7, "imiId":Ljava/lang/String;
    invoke-virtual {v7, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_37

    .line 1275
    move-object v3, v6

    .line 1278
    :cond_37
    invoke-virtual {v6}, Landroid/view/inputmethod/InputMethodInfo;->getPackageName()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {p0, v10}, isPackageDisappearing(Ljava/lang/String;)I

    move-result v1

    .line 1279
    .local v1, "change":I
    invoke-virtual {v6}, Landroid/view/inputmethod/InputMethodInfo;->getPackageName()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {p0, v10}, isPackageModified(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_52

    .line 1280
    iget-object v10, p0, this$0:Lcom/android/server/InputMethodManagerService;

    # getter for: Lcom/android/server/InputMethodManagerService;->mFileManager:Lcom/android/server/InputMethodManagerService$InputMethodFileManager;
    invoke-static {v10}, Lcom/android/server/InputMethodManagerService;->access$1500(Lcom/android/server/InputMethodManagerService;)Lcom/android/server/InputMethodManagerService$InputMethodFileManager;

    move-result-object v10

    # invokes: Lcom/android/server/InputMethodManagerService$InputMethodFileManager;->deleteAllInputMethodSubtypes(Ljava/lang/String;)V
    invoke-static {v10, v7}, Lcom/android/server/InputMethodManagerService$InputMethodFileManager;->access$1600(Lcom/android/server/InputMethodManagerService$InputMethodFileManager;Ljava/lang/String;)V

    .line 1282
    :cond_52
    const/4 v10, 0x2

    if-eq v1, v10, :cond_58

    const/4 v10, 0x3

    if-ne v1, v10, :cond_bd

    .line 1284
    :cond_58
    const-string v10, "InputMethodManagerService"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "Input method uninstalled, disabling: "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v6}, Landroid/view/inputmethod/InputMethodInfo;->getComponent()Landroid/content/ComponentName;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v10, v12}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1287
    iget-object v10, p0, this$0:Lcom/android/server/InputMethodManagerService;

    iget-object v10, v10, Lcom/android/server/InputMethodManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v10}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v10

    const-string/jumbo v12, "last_used_input_method"

    iget-object v13, p0, this$0:Lcom/android/server/InputMethodManagerService;

    iget-object v13, v13, Lcom/android/server/InputMethodManagerService;->mSettings:Lcom/android/internal/inputmethod/InputMethodUtils$InputMethodSettings;

    invoke-virtual {v13}, Lcom/android/internal/inputmethod/InputMethodUtils$InputMethodSettings;->getCurrentUserId()I

    move-result v13

    invoke-static {v10, v12, v13}, Landroid/provider/Settings$Secure;->getStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v8

    .line 1289
    .local v8, "lastUsedInputMethod":Ljava/lang/String;
    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v10

    if-nez v10, :cond_b3

    invoke-virtual {v6}, Landroid/view/inputmethod/InputMethodInfo;->getId()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v8, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_b3

    .line 1294
    iget-object v10, p0, this$0:Lcom/android/server/InputMethodManagerService;

    iget-object v10, v10, Lcom/android/server/InputMethodManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v10}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v10

    const-string/jumbo v12, "last_used_input_method"

    const-string v13, ""

    iget-object v14, p0, this$0:Lcom/android/server/InputMethodManagerService;

    iget-object v14, v14, Lcom/android/server/InputMethodManagerService;->mSettings:Lcom/android/internal/inputmethod/InputMethodUtils$InputMethodSettings;

    invoke-virtual {v14}, Lcom/android/internal/inputmethod/InputMethodUtils$InputMethodSettings;->getCurrentUserId()I

    move-result v14

    invoke-static {v10, v12, v13, v14}, Landroid/provider/Settings$Secure;->putStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;I)Z

    .line 1298
    :cond_b3
    iget-object v10, p0, this$0:Lcom/android/server/InputMethodManagerService;

    invoke-virtual {v6}, Landroid/view/inputmethod/InputMethodInfo;->getId()Ljava/lang/String;

    move-result-object v12

    const/4 v13, 0x0

    invoke-virtual {v10, v12, v13}, Lcom/android/server/InputMethodManagerService;->setInputMethodEnabledLocked(Ljava/lang/String;Z)Z

    .line 1271
    .end local v8    # "lastUsedInputMethod":Ljava/lang/String;
    :cond_bd
    add-int/lit8 v5, v5, 0x1

    goto/16 :goto_20

    .line 1303
    .end local v1    # "change":I
    .end local v5    # "i":I
    .end local v6    # "imi":Landroid/view/inputmethod/InputMethodInfo;
    .end local v7    # "imiId":Ljava/lang/String;
    :cond_c1
    iget-object v10, p0, this$0:Lcom/android/server/InputMethodManagerService;

    iget-object v12, p0, this$0:Lcom/android/server/InputMethodManagerService;

    iget-object v12, v12, Lcom/android/server/InputMethodManagerService;->mMethodList:Ljava/util/ArrayList;

    iget-object v13, p0, this$0:Lcom/android/server/InputMethodManagerService;

    iget-object v13, v13, Lcom/android/server/InputMethodManagerService;->mMethodMap:Ljava/util/HashMap;

    const/4 v14, 0x0

    invoke-virtual {v10, v12, v13, v14}, Lcom/android/server/InputMethodManagerService;->buildInputMethodListLocked(Ljava/util/ArrayList;Ljava/util/HashMap;Z)V

    .line 1306
    const/4 v2, 0x0

    .line 1308
    .local v2, "changed":Z
    if-eqz v3, :cond_138

    .line 1309
    invoke-virtual {v3}, Landroid/view/inputmethod/InputMethodInfo;->getPackageName()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {p0, v10}, isPackageDisappearing(Ljava/lang/String;)I
    :try_end_d9
    .catchall {:try_start_d .. :try_end_d9} :catchall_14b

    move-result v1

    .line 1310
    .restart local v1    # "change":I
    const/4 v10, 0x2

    if-eq v1, v10, :cond_e0

    const/4 v10, 0x3

    if-ne v1, v10, :cond_138

    .line 1312
    :cond_e0
    const/4 v9, 0x0

    .line 1314
    .local v9, "si":Landroid/content/pm/ServiceInfo;
    :try_start_e1
    iget-object v10, p0, this$0:Lcom/android/server/InputMethodManagerService;

    # getter for: Lcom/android/server/InputMethodManagerService;->mIPackageManager:Landroid/content/pm/IPackageManager;
    invoke-static {v10}, Lcom/android/server/InputMethodManagerService;->access$1700(Lcom/android/server/InputMethodManagerService;)Landroid/content/pm/IPackageManager;

    move-result-object v10

    invoke-virtual {v3}, Landroid/view/inputmethod/InputMethodInfo;->getComponent()Landroid/content/ComponentName;

    move-result-object v12

    const/4 v13, 0x0

    iget-object v14, p0, this$0:Lcom/android/server/InputMethodManagerService;

    iget-object v14, v14, Lcom/android/server/InputMethodManagerService;->mSettings:Lcom/android/internal/inputmethod/InputMethodUtils$InputMethodSettings;

    invoke-virtual {v14}, Lcom/android/internal/inputmethod/InputMethodUtils$InputMethodSettings;->getCurrentUserId()I

    move-result v14

    invoke-interface {v10, v12, v13, v14}, Landroid/content/pm/IPackageManager;->getServiceInfo(Landroid/content/ComponentName;II)Landroid/content/pm/ServiceInfo;
    :try_end_f7
    .catch Landroid/os/RemoteException; {:try_start_e1 .. :try_end_f7} :catch_15c
    .catchall {:try_start_e1 .. :try_end_f7} :catchall_14b

    move-result-object v9

    .line 1318
    :goto_f8
    if-nez v9, :cond_138

    .line 1321
    :try_start_fa
    const-string v10, "InputMethodManagerService"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "Current input method removed: "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v10, v12}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1322
    iget-object v10, p0, this$0:Lcom/android/server/InputMethodManagerService;

    iget-object v12, p0, this$0:Lcom/android/server/InputMethodManagerService;

    iget-object v12, v12, Lcom/android/server/InputMethodManagerService;->mCurToken:Landroid/os/IBinder;

    const/4 v13, 0x0

    iget-object v14, p0, this$0:Lcom/android/server/InputMethodManagerService;

    iget v14, v14, Lcom/android/server/InputMethodManagerService;->mBackDisposition:I

    # invokes: Lcom/android/server/InputMethodManagerService;->updateSystemUiLocked(Landroid/os/IBinder;II)V
    invoke-static {v10, v12, v13, v14}, Lcom/android/server/InputMethodManagerService;->access$1800(Lcom/android/server/InputMethodManagerService;Landroid/os/IBinder;II)V

    .line 1323
    iget-object v10, p0, this$0:Lcom/android/server/InputMethodManagerService;

    # invokes: Lcom/android/server/InputMethodManagerService;->chooseNewDefaultIMELocked()Z
    invoke-static {v10}, Lcom/android/server/InputMethodManagerService;->access$1400(Lcom/android/server/InputMethodManagerService;)Z

    move-result v10

    if-nez v10, :cond_138

    .line 1324
    const/4 v2, 0x1

    .line 1325
    const/4 v3, 0x0

    .line 1326
    const-string v10, "InputMethodManagerService"

    const-string v12, "Unsetting current input method"

    invoke-static {v10, v12}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1327
    iget-object v10, p0, this$0:Lcom/android/server/InputMethodManagerService;

    const-string v12, ""

    # invokes: Lcom/android/server/InputMethodManagerService;->resetSelectedInputMethodAndSubtypeLocked(Ljava/lang/String;)V
    invoke-static {v10, v12}, Lcom/android/server/InputMethodManagerService;->access$1300(Lcom/android/server/InputMethodManagerService;Ljava/lang/String;)V

    .line 1333
    .end local v1    # "change":I
    .end local v9    # "si":Landroid/content/pm/ServiceInfo;
    :cond_138
    if-nez v3, :cond_14e

    .line 1336
    iget-object v10, p0, this$0:Lcom/android/server/InputMethodManagerService;

    # invokes: Lcom/android/server/InputMethodManagerService;->chooseNewDefaultIMELocked()Z
    invoke-static {v10}, Lcom/android/server/InputMethodManagerService;->access$1400(Lcom/android/server/InputMethodManagerService;)Z

    move-result v2

    .line 1343
    :cond_140
    :goto_140
    if-eqz v2, :cond_148

    .line 1344
    iget-object v10, p0, this$0:Lcom/android/server/InputMethodManagerService;

    const/4 v12, 0x0

    invoke-virtual {v10, v12}, Lcom/android/server/InputMethodManagerService;->updateFromSettingsLocked(Z)V

    .line 1346
    :cond_148
    monitor-exit v11

    goto/16 :goto_6

    .end local v0    # "N":I
    .end local v2    # "changed":Z
    .end local v4    # "curInputMethodId":Ljava/lang/String;
    :catchall_14b
    move-exception v10

    monitor-exit v11
    :try_end_14d
    .catchall {:try_start_fa .. :try_end_14d} :catchall_14b

    throw v10

    .line 1337
    .restart local v0    # "N":I
    .restart local v2    # "changed":Z
    .restart local v4    # "curInputMethodId":Ljava/lang/String;
    :cond_14e
    if-nez v2, :cond_140

    :try_start_150
    invoke-virtual {v3}, Landroid/view/inputmethod/InputMethodInfo;->getPackageName()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {p0, v10}, isPackageModified(Ljava/lang/String;)Z
    :try_end_157
    .catchall {:try_start_150 .. :try_end_157} :catchall_14b

    move-result v10

    if-eqz v10, :cond_140

    .line 1340
    const/4 v2, 0x1

    goto :goto_140

    .line 1316
    .restart local v1    # "change":I
    .restart local v9    # "si":Landroid/content/pm/ServiceInfo;
    :catch_15c
    move-exception v10

    goto :goto_f8
.end method
