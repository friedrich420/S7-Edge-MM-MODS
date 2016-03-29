.class Lcom/android/settings/users/UserSettings$UserCapabilities;
.super Ljava/lang/Object;
.source "UserSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/users/UserSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "UserCapabilities"
.end annotation


# instance fields
.field mCanAddGuest:Z

.field mCanAddRestrictedProfile:Z

.field mCanAddUser:Z

.field mEnabled:Z

.field mIsGuest:Z

.field mIsOwner:Z


# direct methods
.method private constructor <init>()V
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 1236
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1237
    iput-boolean v0, p0, Lcom/android/settings/users/UserSettings$UserCapabilities;->mEnabled:Z

    .line 1238
    iput-boolean v0, p0, Lcom/android/settings/users/UserSettings$UserCapabilities;->mCanAddUser:Z

    .line 1239
    iput-boolean v0, p0, Lcom/android/settings/users/UserSettings$UserCapabilities;->mCanAddRestrictedProfile:Z

    .line 1240
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v1

    if-nez v1, :cond_0

    :goto_0
    iput-boolean v0, p0, Lcom/android/settings/users/UserSettings$UserCapabilities;->mIsOwner:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static create(Landroid/content/Context;)Lcom/android/settings/users/UserSettings$UserCapabilities;
    .locals 10
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 1245
    const-string v8, "user"

    invoke-virtual {p0, v8}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/os/UserManager;

    .line 1246
    .local v5, "userManager":Landroid/os/UserManager;
    new-instance v1, Lcom/android/settings/users/UserSettings$UserCapabilities;

    invoke-direct {v1}, Lcom/android/settings/users/UserSettings$UserCapabilities;-><init>()V

    .line 1247
    .local v1, "caps":Lcom/android/settings/users/UserSettings$UserCapabilities;
    invoke-static {}, Landroid/os/UserManager;->supportsMultipleUsers()Z

    move-result v8

    if-eqz v8, :cond_0

    invoke-static {}, Lcom/android/settings/Utils;->isMonkeyRunning()Z

    move-result v8

    if-eqz v8, :cond_1

    .line 1248
    :cond_0
    iput-boolean v6, v1, Lcom/android/settings/users/UserSettings$UserCapabilities;->mEnabled:Z

    .line 1271
    :goto_0
    return-object v1

    .line 1252
    :cond_1
    const-string v8, "no_add_user"

    invoke-virtual {v5, v8}, Landroid/os/UserManager;->hasUserRestriction(Ljava/lang/String;)Z

    move-result v2

    .line 1254
    .local v2, "disallowAddUser":Z
    iget-boolean v8, v1, Lcom/android/settings/users/UserSettings$UserCapabilities;->mIsOwner:Z

    if-eqz v8, :cond_2

    invoke-static {}, Landroid/os/UserManager;->getMaxSupportedUsers()I

    move-result v8

    const/4 v9, 0x2

    if-lt v8, v9, :cond_2

    invoke-static {}, Landroid/os/UserManager;->supportsMultipleUsers()Z

    move-result v8

    if-eqz v8, :cond_2

    if-eqz v2, :cond_3

    .line 1257
    :cond_2
    iput-boolean v6, v1, Lcom/android/settings/users/UserSettings$UserCapabilities;->mCanAddUser:Z

    .line 1259
    :cond_3
    const-string v8, "device_policy"

    invoke-virtual {p0, v8}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/admin/DevicePolicyManager;

    .line 1262
    .local v3, "dpm":Landroid/app/admin/DevicePolicyManager;
    invoke-virtual {v3}, Landroid/app/admin/DevicePolicyManager;->getDeviceOwner()Ljava/lang/String;

    move-result-object v8

    if-nez v8, :cond_4

    invoke-static {p0}, Lcom/android/settings/Utils;->isVoiceCapable(Landroid/content/Context;)Z

    move-result v8

    if-eqz v8, :cond_5

    .line 1263
    :cond_4
    iput-boolean v6, v1, Lcom/android/settings/users/UserSettings$UserCapabilities;->mCanAddRestrictedProfile:Z

    .line 1265
    :cond_5
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v4

    .line 1266
    .local v4, "myUserId":I
    invoke-virtual {v5, v4}, Landroid/os/UserManager;->getUserInfo(I)Landroid/content/pm/UserInfo;

    move-result-object v8

    invoke-virtual {v8}, Landroid/content/pm/UserInfo;->isGuest()Z

    move-result v8

    iput-boolean v8, v1, Lcom/android/settings/users/UserSettings$UserCapabilities;->mIsGuest:Z

    .line 1268
    iget-boolean v8, v1, Lcom/android/settings/users/UserSettings$UserCapabilities;->mIsOwner:Z

    if-nez v8, :cond_6

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v8

    const-string v9, "add_users_when_locked"

    invoke-static {v8, v9, v6}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v8

    if-ne v8, v7, :cond_7

    :cond_6
    move v0, v7

    .line 1270
    .local v0, "canAddUsersWhenLocked":Z
    :goto_1
    iget-boolean v8, v1, Lcom/android/settings/users/UserSettings$UserCapabilities;->mIsGuest:Z

    if-nez v8, :cond_8

    if-nez v2, :cond_8

    if-eqz v0, :cond_8

    :goto_2
    iput-boolean v7, v1, Lcom/android/settings/users/UserSettings$UserCapabilities;->mCanAddGuest:Z

    goto :goto_0

    .end local v0    # "canAddUsersWhenLocked":Z
    :cond_7
    move v0, v6

    .line 1268
    goto :goto_1

    .restart local v0    # "canAddUsersWhenLocked":Z
    :cond_8
    move v7, v6

    .line 1270
    goto :goto_2
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 1276
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "UserCapabilities{mEnabled="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/settings/users/UserSettings$UserCapabilities;->mEnabled:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mCanAddUser="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/settings/users/UserSettings$UserCapabilities;->mCanAddUser:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mCanAddRestrictedProfile="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/settings/users/UserSettings$UserCapabilities;->mCanAddRestrictedProfile:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mIsOwner="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/settings/users/UserSettings$UserCapabilities;->mIsOwner:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mIsGuest="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/settings/users/UserSettings$UserCapabilities;->mIsGuest:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
