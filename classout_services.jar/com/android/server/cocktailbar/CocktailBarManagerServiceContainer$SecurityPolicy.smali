.class final Lcom/android/server/cocktailbar/CocktailBarManagerServiceContainer$SecurityPolicy;
.super Ljava/lang/Object;
.source "CocktailBarManagerServiceContainer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/cocktailbar/CocktailBarManagerServiceContainer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "SecurityPolicy"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/cocktailbar/CocktailBarManagerServiceContainer;


# direct methods
.method private constructor <init>(Lcom/android/server/cocktailbar/CocktailBarManagerServiceContainer;)V
    .registers 2

    .prologue
    .line 1071
    iput-object p1, p0, this$0:Lcom/android/server/cocktailbar/CocktailBarManagerServiceContainer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/cocktailbar/CocktailBarManagerServiceContainer;Lcom/android/server/cocktailbar/CocktailBarManagerServiceContainer$1;)V
    .registers 3
    .param p1, "x0"    # Lcom/android/server/cocktailbar/CocktailBarManagerServiceContainer;
    .param p2, "x1"    # Lcom/android/server/cocktailbar/CocktailBarManagerServiceContainer$1;

    .prologue
    .line 1071
    invoke-direct {p0, p1}, <init>(Lcom/android/server/cocktailbar/CocktailBarManagerServiceContainer;)V

    return-void
.end method


# virtual methods
.method public enforceCallFromPackage(Ljava/lang/String;)V
    .registers 4
    .param p1, "packageName"    # Ljava/lang/String;

    .prologue
    .line 1074
    iget-object v0, p0, this$0:Lcom/android/server/cocktailbar/CocktailBarManagerServiceContainer;

    # getter for: Lcom/android/server/cocktailbar/CocktailBarManagerServiceContainer;->mAppOpsManager:Landroid/app/AppOpsManager;
    invoke-static {v0}, Lcom/android/server/cocktailbar/CocktailBarManagerServiceContainer;->access$1300(Lcom/android/server/cocktailbar/CocktailBarManagerServiceContainer;)Landroid/app/AppOpsManager;

    move-result-object v0

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    invoke-virtual {v0, v1, p1}, Landroid/app/AppOpsManager;->checkPackage(ILjava/lang/String;)V

    .line 1075
    return-void
.end method

.method public getEnabledGroupProfileIds(I)[I
    .registers 13
    .param p1, "userId"    # I

    .prologue
    .line 1078
    invoke-virtual {p0, p1}, getGroupParent(I)I

    move-result v3

    .line 1081
    .local v3, "parentId":I
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v4

    .line 1083
    .local v4, "identity":J
    :try_start_8
    iget-object v10, p0, this$0:Lcom/android/server/cocktailbar/CocktailBarManagerServiceContainer;

    # getter for: Lcom/android/server/cocktailbar/CocktailBarManagerServiceContainer;->mUserManager:Landroid/os/UserManager;
    invoke-static {v10}, Lcom/android/server/cocktailbar/CocktailBarManagerServiceContainer;->access$1400(Lcom/android/server/cocktailbar/CocktailBarManagerServiceContainer;)Landroid/os/UserManager;

    move-result-object v10

    invoke-virtual {v10, v3}, Landroid/os/UserManager;->getProfiles(I)Ljava/util/List;
    :try_end_11
    .catchall {:try_start_8 .. :try_end_11} :catchall_2e

    move-result-object v9

    .line 1085
    .local v9, "profiles":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/UserInfo;>;"
    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1088
    const/4 v0, 0x0

    .line 1089
    .local v0, "enabledProfileCount":I
    invoke-interface {v9}, Ljava/util/List;->size()I

    move-result v7

    .line 1090
    .local v7, "profileCount":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_1b
    if-ge v2, v7, :cond_33

    .line 1091
    invoke-interface {v9, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/content/pm/UserInfo;

    invoke-virtual {v10}, Landroid/content/pm/UserInfo;->isEnabled()Z

    move-result v10

    if-eqz v10, :cond_2b

    .line 1092
    add-int/lit8 v0, v0, 0x1

    .line 1090
    :cond_2b
    add-int/lit8 v2, v2, 0x1

    goto :goto_1b

    .line 1085
    .end local v0    # "enabledProfileCount":I
    .end local v2    # "i":I
    .end local v7    # "profileCount":I
    .end local v9    # "profiles":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/UserInfo;>;"
    :catchall_2e
    move-exception v10

    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v10

    .line 1096
    .restart local v0    # "enabledProfileCount":I
    .restart local v2    # "i":I
    .restart local v7    # "profileCount":I
    .restart local v9    # "profiles":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/UserInfo;>;"
    :cond_33
    const/4 v1, 0x0

    .line 1097
    .local v1, "enabledProfileIndex":I
    new-array v8, v0, [I

    .line 1098
    .local v8, "profileIds":[I
    const/4 v2, 0x0

    :goto_37
    if-ge v2, v7, :cond_54

    .line 1099
    invoke-interface {v9, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/content/pm/UserInfo;

    .line 1100
    .local v6, "profile":Landroid/content/pm/UserInfo;
    invoke-virtual {v6}, Landroid/content/pm/UserInfo;->isEnabled()Z

    move-result v10

    if-eqz v10, :cond_51

    .line 1101
    invoke-virtual {v6}, Landroid/content/pm/UserInfo;->getUserHandle()Landroid/os/UserHandle;

    move-result-object v10

    invoke-virtual {v10}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v10

    aput v10, v8, v1

    .line 1102
    add-int/lit8 v1, v1, 0x1

    .line 1098
    :cond_51
    add-int/lit8 v2, v2, 0x1

    goto :goto_37

    .line 1105
    .end local v6    # "profile":Landroid/content/pm/UserInfo;
    :cond_54
    return-object v8
.end method

.method public getGroupParent(I)I
    .registers 4
    .param p1, "profileId"    # I

    .prologue
    .line 1122
    iget-object v1, p0, this$0:Lcom/android/server/cocktailbar/CocktailBarManagerServiceContainer;

    # getter for: Lcom/android/server/cocktailbar/CocktailBarManagerServiceContainer;->mSecurityPolicy:Lcom/android/server/cocktailbar/CocktailBarManagerServiceContainer$SecurityPolicy;
    invoke-static {v1}, Lcom/android/server/cocktailbar/CocktailBarManagerServiceContainer;->access$400(Lcom/android/server/cocktailbar/CocktailBarManagerServiceContainer;)Lcom/android/server/cocktailbar/CocktailBarManagerServiceContainer$SecurityPolicy;

    move-result-object v1

    invoke-virtual {v1, p1}, getProfileParent(I)I

    move-result v0

    .line 1123
    .local v0, "parentId":I
    const/16 v1, -0xa

    if-eq v0, v1, :cond_f

    .end local v0    # "parentId":I
    :goto_e
    return v0

    .restart local v0    # "parentId":I
    :cond_f
    move v0, p1

    goto :goto_e
.end method

.method public getProfileParent(I)I
    .registers 6
    .param p1, "profileId"    # I

    .prologue
    .line 1109
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 1111
    .local v0, "identity":J
    :try_start_4
    iget-object v3, p0, this$0:Lcom/android/server/cocktailbar/CocktailBarManagerServiceContainer;

    # getter for: Lcom/android/server/cocktailbar/CocktailBarManagerServiceContainer;->mUserManager:Landroid/os/UserManager;
    invoke-static {v3}, Lcom/android/server/cocktailbar/CocktailBarManagerServiceContainer;->access$1400(Lcom/android/server/cocktailbar/CocktailBarManagerServiceContainer;)Landroid/os/UserManager;

    move-result-object v3

    invoke-virtual {v3, p1}, Landroid/os/UserManager;->getProfileParent(I)Landroid/content/pm/UserInfo;

    move-result-object v2

    .line 1112
    .local v2, "parent":Landroid/content/pm/UserInfo;
    if-eqz v2, :cond_1c

    .line 1113
    invoke-virtual {v2}, Landroid/content/pm/UserInfo;->getUserHandle()Landroid/os/UserHandle;

    move-result-object v3

    invoke-virtual {v3}, Landroid/os/UserHandle;->getIdentifier()I
    :try_end_17
    .catchall {:try_start_4 .. :try_end_17} :catchall_22

    move-result v3

    .line 1116
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1118
    :goto_1b
    return v3

    .line 1116
    :cond_1c
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1118
    const/16 v3, -0xa

    goto :goto_1b

    .line 1116
    .end local v2    # "parent":Landroid/content/pm/UserInfo;
    :catchall_22
    move-exception v3

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v3
.end method
