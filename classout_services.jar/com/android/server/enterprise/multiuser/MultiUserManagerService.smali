.class public Lcom/android/server/enterprise/multiuser/MultiUserManagerService;
.super Landroid/app/enterprise/multiuser/IMultiUserManager$Stub;
.source "MultiUserManagerService.java"

# interfaces
.implements Lcom/android/server/enterprise/EnterpriseServiceCallback;


# static fields
.field private static final TAG:Ljava/lang/String; = "MultiUserManagerService"


# instance fields
.field private mContext:Landroid/content/Context;

.field private mEDM:Landroid/app/enterprise/EnterpriseDeviceManager;

.field private mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

.field private mUserManager:Landroid/os/UserManager;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 4
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 71
    invoke-direct {p0}, Landroid/app/enterprise/multiuser/IMultiUserManager$Stub;-><init>()V

    .line 67
    const/4 v0, 0x0

    iput-object v0, p0, mEDM:Landroid/app/enterprise/EnterpriseDeviceManager;

    .line 72
    iput-object p1, p0, mContext:Landroid/content/Context;

    .line 73
    new-instance v0, Lcom/android/server/enterprise/storage/EdmStorageProvider;

    iget-object v1, p0, mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/android/server/enterprise/storage/EdmStorageProvider;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    .line 74
    iget-object v0, p0, mContext:Landroid/content/Context;

    const-string/jumbo v1, "user"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/UserManager;

    iput-object v0, p0, mUserManager:Landroid/os/UserManager;

    .line 75
    return-void
.end method

.method private enforceMultiUserManagementPermission(Landroid/app/enterprise/ContextInfo;)Landroid/app/enterprise/ContextInfo;
    .registers 4
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;

    .prologue
    .line 90
    invoke-direct {p0}, getEDM()Landroid/app/enterprise/EnterpriseDeviceManager;

    move-result-object v0

    const-string v1, "android.permission.sec.MDM_MULTI_USER_MGMT"

    invoke-virtual {v0, p1, v1}, Landroid/app/enterprise/EnterpriseDeviceManager;->enforceActiveAdminPermissionByContext(Landroid/app/enterprise/ContextInfo;Ljava/lang/String;)Landroid/app/enterprise/ContextInfo;

    move-result-object v0

    return-object v0
.end method

.method private enforceOwnerOnlyAndMultiUserPermission(Landroid/app/enterprise/ContextInfo;)Landroid/app/enterprise/ContextInfo;
    .registers 4
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;

    .prologue
    .line 99
    invoke-direct {p0}, getEDM()Landroid/app/enterprise/EnterpriseDeviceManager;

    move-result-object v0

    const-string v1, "android.permission.sec.MDM_MULTI_USER_MGMT"

    invoke-virtual {v0, p1, v1}, Landroid/app/enterprise/EnterpriseDeviceManager;->enforceOwnerOnlyAndActiveAdminPermission(Landroid/app/enterprise/ContextInfo;Ljava/lang/String;)Landroid/app/enterprise/ContextInfo;

    move-result-object v0

    return-object v0
.end method

.method private getEDM()Landroid/app/enterprise/EnterpriseDeviceManager;
    .registers 3

    .prologue
    .line 78
    iget-object v0, p0, mEDM:Landroid/app/enterprise/EnterpriseDeviceManager;

    if-nez v0, :cond_11

    .line 79
    iget-object v0, p0, mContext:Landroid/content/Context;

    const-string/jumbo v1, "enterprise_policy"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/enterprise/EnterpriseDeviceManager;

    iput-object v0, p0, mEDM:Landroid/app/enterprise/EnterpriseDeviceManager;

    .line 82
    :cond_11
    iget-object v0, p0, mEDM:Landroid/app/enterprise/EnterpriseDeviceManager;

    return-object v0
.end method


# virtual methods
.method public allowMultipleUsers(Landroid/app/enterprise/ContextInfo;Z)I
    .registers 20
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;
    .param p2, "allow"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 132
    invoke-direct/range {p0 .. p1}, enforceOwnerOnlyAndMultiUserPermission(Landroid/app/enterprise/ContextInfo;)Landroid/app/enterprise/ContextInfo;

    move-result-object p1

    .line 133
    invoke-static {}, Landroid/os/UserManager;->supportsMultipleUsers()Z

    move-result v11

    if-nez v11, :cond_c

    .line 134
    const/4 v11, -0x1

    .line 166
    :goto_b
    return v11

    .line 136
    :cond_c
    const/4 v8, 0x1

    .line 137
    .local v8, "ret":Z
    move-object/from16 v0, p0

    iget-object v11, v0, mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    move-object/from16 v0, p1

    iget v14, v0, Landroid/app/enterprise/ContextInfo;->mCallerUid:I

    const-string v15, "MULTI_USER_MGMT"

    const-string/jumbo v16, "multiUserAllowed"

    move-object/from16 v0, v16

    move/from16 v1, p2

    invoke-virtual {v11, v14, v15, v0, v1}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->putBoolean(ILjava/lang/String;Ljava/lang/String;Z)Z

    move-result v11

    and-int/2addr v8, v11

    .line 140
    if-eqz v8, :cond_a0

    const/4 v11, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-virtual {v0, v1, v11}, multipleUsersAllowed(Landroid/app/enterprise/ContextInfo;Z)I

    move-result v11

    if-nez v11, :cond_a0

    .line 141
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v12

    .line 142
    .local v12, "token":J
    move-object/from16 v0, p0

    iget-object v11, v0, mUserManager:Landroid/os/UserManager;

    if-eqz v11, :cond_3a

    .line 145
    :cond_3a
    move-object/from16 v0, p0

    iget-object v11, v0, mContext:Landroid/content/Context;

    const-string v14, "activity"

    invoke-virtual {v11, v14}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/ActivityManager;

    .line 147
    .local v2, "am":Landroid/app/ActivityManager;
    const/16 v11, 0xc

    const/4 v14, 0x0

    const/4 v15, 0x0

    invoke-virtual {v2, v11, v14, v15}, Landroid/app/ActivityManager;->getRecentTasksForUser(III)Ljava/util/List;

    move-result-object v7

    .line 149
    .local v7, "recentTasks":Ljava/util/List;, "Ljava/util/List<Landroid/app/ActivityManager$RecentTaskInfo;>;"
    const-string v9, "com.android.settings"

    .line 150
    .local v9, "settingsPkg":Ljava/lang/String;
    if-nez p2, :cond_9d

    invoke-interface {v7}, Ljava/util/List;->isEmpty()Z

    move-result v11

    if-nez v11, :cond_9d

    .line 151
    invoke-interface {v7}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .local v4, "i$":Ljava/util/Iterator;
    :cond_5c
    :goto_5c
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_9d

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/app/ActivityManager$RecentTaskInfo;

    .line 152
    .local v10, "task":Landroid/app/ActivityManager$RecentTaskInfo;
    iget-object v5, v10, Landroid/app/ActivityManager$RecentTaskInfo;->baseIntent:Landroid/content/Intent;

    .line 153
    .local v5, "origInt":Landroid/content/Intent;
    invoke-virtual {v5}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v3

    .line 154
    .local v3, "cmp":Landroid/content/ComponentName;
    if-eqz v3, :cond_5c

    .line 155
    invoke-virtual {v3}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v6

    .line 156
    .local v6, "packageName":Ljava/lang/String;
    const-string v11, "MultiUserManagerService"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v15, "packageName "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v11, v14}, Lcom/android/server/enterprise/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 158
    if-eqz v6, :cond_5c

    const-string v11, "com.android.settings"

    invoke-virtual {v6, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_5c

    .line 159
    iget v11, v10, Landroid/app/ActivityManager$RecentTaskInfo;->persistentId:I

    invoke-virtual {v2, v11}, Landroid/app/ActivityManager;->removeTask(I)Z

    goto :goto_5c

    .line 164
    .end local v3    # "cmp":Landroid/content/ComponentName;
    .end local v4    # "i$":Ljava/util/Iterator;
    .end local v5    # "origInt":Landroid/content/Intent;
    .end local v6    # "packageName":Ljava/lang/String;
    .end local v10    # "task":Landroid/app/ActivityManager$RecentTaskInfo;
    :cond_9d
    invoke-static {v12, v13}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 166
    .end local v2    # "am":Landroid/app/ActivityManager;
    .end local v7    # "recentTasks":Ljava/util/List;, "Ljava/util/List<Landroid/app/ActivityManager$RecentTaskInfo;>;"
    .end local v9    # "settingsPkg":Ljava/lang/String;
    .end local v12    # "token":J
    :cond_a0
    if-eqz v8, :cond_a5

    const/4 v11, 0x1

    goto/16 :goto_b

    :cond_a5
    const/4 v11, 0x0

    goto/16 :goto_b
.end method

.method public allowUserCreation(Landroid/app/enterprise/ContextInfo;Z)Z
    .registers 8
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;
    .param p2, "allow"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 277
    invoke-direct {p0, p1}, enforceOwnerOnlyAndMultiUserPermission(Landroid/app/enterprise/ContextInfo;)Landroid/app/enterprise/ContextInfo;

    move-result-object p1

    .line 279
    const/4 v0, 0x0

    .line 280
    .local v0, "ret":Z
    const/4 v1, 0x0

    invoke-virtual {p0, p1, v1}, multipleUsersAllowed(Landroid/app/enterprise/ContextInfo;Z)I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_1a

    .line 281
    iget-object v1, p0, mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    iget v2, p1, Landroid/app/enterprise/ContextInfo;->mCallerUid:I

    const-string v3, "MULTI_USER_MGMT"

    const-string/jumbo v4, "multiUserCreationAllowed"

    invoke-virtual {v1, v2, v3, v4, p2}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->putBoolean(ILjava/lang/String;Ljava/lang/String;Z)Z

    move-result v0

    .line 285
    :cond_1a
    return v0
.end method

.method public allowUserRemoval(Landroid/app/enterprise/ContextInfo;Z)Z
    .registers 8
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;
    .param p2, "allow"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 314
    invoke-direct {p0, p1}, enforceOwnerOnlyAndMultiUserPermission(Landroid/app/enterprise/ContextInfo;)Landroid/app/enterprise/ContextInfo;

    move-result-object p1

    .line 316
    const/4 v0, 0x0

    .line 317
    .local v0, "ret":Z
    const/4 v1, 0x0

    invoke-virtual {p0, p1, v1}, multipleUsersAllowed(Landroid/app/enterprise/ContextInfo;Z)I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_1a

    .line 318
    iget-object v1, p0, mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    iget v2, p1, Landroid/app/enterprise/ContextInfo;->mCallerUid:I

    const-string v3, "MULTI_USER_MGMT"

    const-string/jumbo v4, "multiUserRemovalAllowed"

    invoke-virtual {v1, v2, v3, v4, p2}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->putBoolean(ILjava/lang/String;Ljava/lang/String;Z)Z

    move-result v0

    .line 322
    :cond_1a
    return v0
.end method

.method public createUser(Landroid/app/enterprise/ContextInfo;Ljava/lang/String;)I
    .registers 12
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;
    .param p2, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v6, 0x1

    const/4 v8, 0x0

    .line 188
    invoke-direct {p0, p1}, enforceOwnerOnlyAndMultiUserPermission(Landroid/app/enterprise/ContextInfo;)Landroid/app/enterprise/ContextInfo;

    move-result-object p1

    .line 190
    const/4 v2, -0x1

    .line 192
    .local v2, "userId":I
    invoke-virtual {p0, p1, v8}, multipleUsersAllowed(Landroid/app/enterprise/ContextInfo;Z)I

    move-result v4

    if-ne v4, v6, :cond_59

    invoke-virtual {p0, p1, v8}, isUserCreationAllowed(Landroid/app/enterprise/ContextInfo;Z)Z

    move-result v4

    if-eqz v4, :cond_59

    .line 193
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 195
    .local v0, "token":J
    iget-object v4, p0, mUserManager:Landroid/os/UserManager;

    if-eqz v4, :cond_56

    .line 197
    iget-object v4, p0, mUserManager:Landroid/os/UserManager;

    invoke-virtual {v4}, Landroid/os/UserManager;->getUserCount()I

    move-result v4

    invoke-static {}, Landroid/os/UserManager;->getMaxSupportedUsers()I

    move-result v5

    if-lt v4, v5, :cond_29

    .line 198
    const/4 v4, -0x1

    .line 220
    .end local v0    # "token":J
    :goto_28
    return v4

    .line 202
    .restart local v0    # "token":J
    :cond_29
    if-eqz p2, :cond_5b

    invoke-virtual {p2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p2

    .line 204
    :goto_2f
    iget-object v4, p0, mUserManager:Landroid/os/UserManager;

    const/4 v5, 0x4

    invoke-virtual {v4, p2, v5}, Landroid/os/UserManager;->createUser(Ljava/lang/String;I)Landroid/content/pm/UserInfo;

    move-result-object v3

    .line 205
    .local v3, "userInfo":Landroid/content/pm/UserInfo;
    if-eqz v3, :cond_56

    .line 206
    iget v2, v3, Landroid/content/pm/UserInfo;->id:I

    .line 209
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v4

    if-gtz v4, :cond_56

    .line 211
    iget-object v4, p0, mContext:Landroid/content/Context;

    const v5, 0x1040b44

    new-array v6, v6, [Ljava/lang/Object;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v6, v8

    invoke-virtual {v4, v5, v6}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    .line 213
    iget-object v4, p0, mUserManager:Landroid/os/UserManager;

    invoke-virtual {v4, v2, p2}, Landroid/os/UserManager;->setUserName(ILjava/lang/String;)V

    .line 217
    .end local v3    # "userInfo":Landroid/content/pm/UserInfo;
    :cond_56
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .end local v0    # "token":J
    :cond_59
    move v4, v2

    .line 220
    goto :goto_28

    .line 202
    .restart local v0    # "token":J
    :cond_5b
    const-string p2, ""

    goto :goto_2f
.end method

.method public getUsers(Landroid/app/enterprise/ContextInfo;)[I
    .registers 10
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 253
    invoke-direct {p0, p1}, enforceOwnerOnlyAndMultiUserPermission(Landroid/app/enterprise/ContextInfo;)Landroid/app/enterprise/ContextInfo;

    move-result-object p1

    .line 255
    const/4 v1, 0x0

    .line 257
    .local v1, "users":[I
    const/4 v6, 0x0

    invoke-virtual {p0, p1, v6}, multipleUsersAllowed(Landroid/app/enterprise/ContextInfo;Z)I

    move-result v6

    const/4 v7, 0x1

    if-ne v6, v7, :cond_34

    .line 258
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    .line 259
    .local v2, "token":J
    iget-object v6, p0, mUserManager:Landroid/os/UserManager;

    if-eqz v6, :cond_31

    .line 260
    iget-object v6, p0, mUserManager:Landroid/os/UserManager;

    invoke-virtual {v6}, Landroid/os/UserManager;->getUsers()Ljava/util/List;

    move-result-object v5

    .line 261
    .local v5, "usersList":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/UserInfo;>;"
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v4

    .line 262
    .local v4, "usersCount":I
    new-array v1, v4, [I

    .line 263
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_22
    if-ge v0, v4, :cond_31

    .line 264
    invoke-interface {v5, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/content/pm/UserInfo;

    iget v6, v6, Landroid/content/pm/UserInfo;->id:I

    aput v6, v1, v0

    .line 263
    add-int/lit8 v0, v0, 0x1

    goto :goto_22

    .line 268
    .end local v0    # "i":I
    .end local v4    # "usersCount":I
    .end local v5    # "usersList":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/UserInfo;>;"
    :cond_31
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 271
    .end local v2    # "token":J
    :cond_34
    return-object v1
.end method

.method public isUserCreationAllowed(Landroid/app/enterprise/ContextInfo;Z)Z
    .registers 9
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;
    .param p2, "showMsg"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 291
    const/4 v0, 0x1

    .line 293
    .local v0, "ret":Z
    iget-object v3, p0, mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v4, "MULTI_USER_MGMT"

    const-string/jumbo v5, "multiUserCreationAllowed"

    invoke-virtual {v3, v4, v5}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getBooleanList(Ljava/lang/String;Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v1

    .line 296
    .local v1, "values":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Boolean;>;"
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_3c

    const/4 v0, 0x1

    .line 303
    :goto_18
    if-eqz p2, :cond_22

    if-nez v0, :cond_22

    .line 304
    const v2, 0x1040b42

    invoke-static {v2}, Lcom/android/server/enterprise/RestrictionToastManager;->show(I)V

    .line 307
    :cond_22
    const-string v2, "MultiUserManagerService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "isUserCreationAllowed "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/server/enterprise/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 308
    return v0

    :cond_3c
    move v0, v2

    .line 296
    goto :goto_18
.end method

.method public isUserRemovalAllowed(Landroid/app/enterprise/ContextInfo;Z)Z
    .registers 9
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;
    .param p2, "showMsg"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 328
    const/4 v0, 0x1

    .line 330
    .local v0, "ret":Z
    iget-object v3, p0, mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v4, "MULTI_USER_MGMT"

    const-string/jumbo v5, "multiUserRemovalAllowed"

    invoke-virtual {v3, v4, v5}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getBooleanList(Ljava/lang/String;Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v1

    .line 333
    .local v1, "values":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Boolean;>;"
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_3c

    const/4 v0, 0x1

    .line 340
    :goto_18
    if-eqz p2, :cond_22

    if-nez v0, :cond_22

    .line 341
    const v2, 0x1040b43

    invoke-static {v2}, Lcom/android/server/enterprise/RestrictionToastManager;->show(I)V

    .line 344
    :cond_22
    const-string v2, "MultiUserManagerService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "isUserRemovalAllowed "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/server/enterprise/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 345
    return v0

    :cond_3c
    move v0, v2

    .line 333
    goto :goto_18
.end method

.method public multipleUsersAllowed(Landroid/app/enterprise/ContextInfo;Z)I
    .registers 10
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;
    .param p2, "showMsg"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 115
    invoke-static {}, Landroid/os/UserManager;->supportsMultipleUsers()Z

    move-result v4

    if-nez v4, :cond_a

    .line 116
    const/4 v2, -0x1

    .line 127
    :cond_9
    :goto_9
    return v2

    .line 118
    :cond_a
    iget-object v4, p0, mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v5, "MULTI_USER_MGMT"

    const-string/jumbo v6, "multiUserAllowed"

    invoke-virtual {v4, v5, v6}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getBooleanList(Ljava/lang/String;Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v1

    .line 121
    .local v1, "values":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Boolean;>;"
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_2e

    move v0, v2

    .line 122
    .local v0, "ret":Z
    :goto_20
    if-eqz p2, :cond_2a

    if-nez v0, :cond_2a

    .line 123
    const v4, 0x1040b41

    invoke-static {v4}, Lcom/android/server/enterprise/RestrictionToastManager;->show(I)V

    .line 127
    :cond_2a
    if-nez v0, :cond_9

    move v2, v3

    goto :goto_9

    .end local v0    # "ret":Z
    :cond_2e
    move v0, v3

    .line 121
    goto :goto_20
.end method

.method public multipleUsersSupported(Landroid/app/enterprise/ContextInfo;)Z
    .registers 5
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 106
    :try_start_0
    invoke-static {}, Landroid/os/UserManager;->supportsMultipleUsers()Z
    :try_end_3
    .catch Ljava/lang/Error; {:try_start_0 .. :try_end_3} :catch_5

    move-result v1

    .line 109
    :goto_4
    return v1

    .line 107
    :catch_5
    move-exception v0

    .line 108
    .local v0, "e":Ljava/lang/Error;
    const-string v1, "MultiUserManagerService"

    invoke-virtual {v0}, Ljava/lang/Error;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/server/enterprise/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 109
    const/4 v1, 0x0

    goto :goto_4
.end method

.method public onAdminAdded(I)V
    .registers 2
    .param p1, "uid"    # I

    .prologue
    .line 175
    return-void
.end method

.method public onAdminRemoved(I)V
    .registers 2
    .param p1, "uid"    # I

    .prologue
    .line 183
    return-void
.end method

.method public onPreAdminRemoval(I)V
    .registers 2
    .param p1, "uid"    # I

    .prologue
    .line 179
    return-void
.end method

.method public removeUser(Landroid/app/enterprise/ContextInfo;I)Z
    .registers 10
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;
    .param p2, "userId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x0

    .line 226
    invoke-direct {p0, p1}, enforceOwnerOnlyAndMultiUserPermission(Landroid/app/enterprise/ContextInfo;)Landroid/app/enterprise/ContextInfo;

    move-result-object p1

    .line 228
    invoke-virtual {p0, p1, v4}, multipleUsersAllowed(Landroid/app/enterprise/ContextInfo;Z)I

    move-result v5

    const/4 v6, 0x1

    if-eq v5, v6, :cond_e

    move v0, v4

    .line 247
    :goto_d
    return v0

    .line 232
    :cond_e
    const/4 v0, 0x0

    .line 233
    .local v0, "ret":Z
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    .line 235
    .local v2, "token":J
    if-lez p2, :cond_39

    iget-object v5, p0, mUserManager:Landroid/os/UserManager;

    if-eqz v5, :cond_39

    .line 236
    iget-object v5, p0, mUserManager:Landroid/os/UserManager;

    invoke-virtual {v5, p2}, Landroid/os/UserManager;->getUserInfo(I)Landroid/content/pm/UserInfo;

    move-result-object v1

    .line 238
    .local v1, "userInfo":Landroid/content/pm/UserInfo;
    if-eqz v1, :cond_39

    invoke-virtual {v1}, Landroid/content/pm/UserInfo;->isKnoxWorkspace()Z

    move-result v5

    if-nez v5, :cond_39

    invoke-virtual {v1}, Landroid/content/pm/UserInfo;->isManagedProfile()Z

    move-result v5

    if-nez v5, :cond_39

    invoke-virtual {p0, p1, v4}, isUserRemovalAllowed(Landroid/app/enterprise/ContextInfo;Z)Z

    move-result v4

    if-eqz v4, :cond_39

    .line 242
    iget-object v4, p0, mUserManager:Landroid/os/UserManager;

    invoke-virtual {v4, p2}, Landroid/os/UserManager;->removeUser(I)Z

    move-result v0

    .line 245
    .end local v1    # "userInfo":Landroid/content/pm/UserInfo;
    :cond_39
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto :goto_d
.end method

.method public systemReady()V
    .registers 1

    .prologue
    .line 171
    return-void
.end method
