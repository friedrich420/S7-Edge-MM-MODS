.class Lcom/android/server/enterprise/sso/EnterpriseIdentity$AuthenticationInfoManager;
.super Ljava/lang/Object;
.source "EnterpriseIdentity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/enterprise/sso/EnterpriseIdentity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "AuthenticationInfoManager"
.end annotation


# instance fields
.field containerID:I

.field isMigrationNeeded:Z

.field isSSOConfigurationEnabled:Z

.field originUserID:I

.field packageName:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;I)V
    .registers 6
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "originUserID"    # I

    .prologue
    .line 175
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 176
    sget-boolean v0, Landroid/app/enterprise/sso/GenericSSOConstants;->DEBUG:Z

    if-eqz v0, :cond_29

    .line 177
    const-string v0, "EnterpriseIdentity"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "In AuthenticationInfoManager: package:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " originUser:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 178
    :cond_29
    const/4 v0, -0x1

    iput v0, p0, containerID:I

    .line 179
    iput-object p1, p0, packageName:Ljava/lang/String;

    .line 180
    iput p2, p0, originUserID:I

    .line 181
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;IZZ)V
    .registers 8
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "originUserID"    # I
    .param p3, "isMigrationNeeded"    # Z
    .param p4, "isSSOConfigurationEnabled"    # Z

    .prologue
    .line 184
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 185
    sget-boolean v0, Landroid/app/enterprise/sso/GenericSSOConstants;->DEBUG:Z

    if-eqz v0, :cond_33

    .line 186
    const-string v0, "EnterpriseIdentity"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "In AuthenticationInfoManager: package:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " originUser:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " migration:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 189
    :cond_33
    const/4 v0, -0x1

    iput v0, p0, containerID:I

    .line 190
    iput-object p1, p0, packageName:Ljava/lang/String;

    .line 191
    iput p2, p0, originUserID:I

    .line 192
    iput-boolean p3, p0, isMigrationNeeded:Z

    .line 193
    iput-boolean p4, p0, isSSOConfigurationEnabled:Z

    .line 194
    return-void
.end method

.method static synthetic access$1800(Lcom/android/server/enterprise/sso/EnterpriseIdentity$AuthenticationInfoManager;Z)V
    .registers 2
    .param p0, "x0"    # Lcom/android/server/enterprise/sso/EnterpriseIdentity$AuthenticationInfoManager;
    .param p1, "x1"    # Z

    .prologue
    .line 167
    invoke-direct {p0, p1}, setMigrationStatus(Z)V

    return-void
.end method

.method static synthetic access$1900(Lcom/android/server/enterprise/sso/EnterpriseIdentity$AuthenticationInfoManager;Z)V
    .registers 2
    .param p0, "x0"    # Lcom/android/server/enterprise/sso/EnterpriseIdentity$AuthenticationInfoManager;
    .param p1, "x1"    # Z

    .prologue
    .line 167
    invoke-direct {p0, p1}, setSSOConfigurationEnabled(Z)V

    return-void
.end method

.method static synthetic access$200(Lcom/android/server/enterprise/sso/EnterpriseIdentity$AuthenticationInfoManager;I)V
    .registers 2
    .param p0, "x0"    # Lcom/android/server/enterprise/sso/EnterpriseIdentity$AuthenticationInfoManager;
    .param p1, "x1"    # I

    .prologue
    .line 167
    invoke-direct {p0, p1}, updateContainerID(I)V

    return-void
.end method

.method private setMigrationStatus(Z)V
    .registers 2
    .param p1, "isMigrationNeeded"    # Z

    .prologue
    .line 208
    iput-boolean p1, p0, isMigrationNeeded:Z

    .line 209
    return-void
.end method

.method private setSSOConfigurationEnabled(Z)V
    .registers 2
    .param p1, "isSSOEnabled"    # Z

    .prologue
    .line 205
    iput-boolean p1, p0, isSSOConfigurationEnabled:Z

    .line 206
    return-void
.end method

.method private updateContainerID(I)V
    .registers 5
    .param p1, "id"    # I

    .prologue
    .line 197
    const/16 v0, 0x64

    if-lt p1, v0, :cond_22

    .line 198
    sget-boolean v0, Landroid/app/enterprise/sso/GenericSSOConstants;->DEBUG:Z

    if-eqz v0, :cond_20

    .line 199
    const-string v0, "EnterpriseIdentity"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "In updateContainerID: Updating container ID as "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 200
    :cond_20
    iput p1, p0, containerID:I

    .line 202
    :cond_22
    return-void
.end method
