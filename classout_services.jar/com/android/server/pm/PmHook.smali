.class final Lcom/android/server/pm/PmHook;
.super Ljava/lang/Object;
.source "PmHook.java"


# static fields
.field private static final ACTION_INSTALL_FAILED:Ljava/lang/String; = "android.intent.action.PACKAGE_INSTALL_FAILED"

.field private static final TAG:Ljava/lang/String; = "PM_HOOK"


# direct methods
.method constructor <init>()V
    .registers 1

    .prologue
    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static final auditLogInstallFail(Ljava/lang/String;I)V
    .registers 9
    .param p0, "packageName"    # Ljava/lang/String;
    .param p1, "userIdentifier"    # I

    .prologue
    .line 116
    const/4 v0, 0x3

    const/4 v1, 0x5

    const/4 v2, 0x0

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v3

    const-string v4, "PackageManagerService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Install Application "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " failed"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    move v6, p1

    invoke-static/range {v0 .. v6}, Landroid/sec/enterprise/auditlog/AuditLog;->logAsUser(IIZILjava/lang/String;Ljava/lang/String;I)V

    .line 120
    return-void
.end method

.method static final beginInstallLog(Landroid/content/pm/PackageParser$Package;I)V
    .registers 10
    .param p0, "pkg"    # Landroid/content/pm/PackageParser$Package;
    .param p1, "userId"    # I

    .prologue
    const/4 v0, 0x5

    const/4 v2, 0x1

    .line 40
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v3

    const-string v4, "PackageManagerService"

    const-string v1, "Starting to install Application %s version %s"

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    iget-object v7, p0, Landroid/content/pm/PackageParser$Package;->packageName:Ljava/lang/String;

    aput-object v7, v5, v6

    iget-object v6, p0, Landroid/content/pm/PackageParser$Package;->mVersionName:Ljava/lang/String;

    aput-object v6, v5, v2

    invoke-static {v1, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    move v1, v0

    move v6, p1

    invoke-static/range {v0 .. v6}, Landroid/sec/enterprise/auditlog/AuditLog;->logAsUser(IIZILjava/lang/String;Ljava/lang/String;I)V

    .line 46
    return-void
.end method

.method static final installFailLog(Landroid/content/Context;Landroid/content/pm/PackageInfoLite;Ljava/lang/String;I)V
    .registers 5
    .param p0, "ctx"    # Landroid/content/Context;
    .param p1, "pkg"    # Landroid/content/pm/PackageInfoLite;
    .param p2, "installer"    # Ljava/lang/String;
    .param p3, "userId"    # I

    .prologue
    .line 71
    iget-object v0, p1, Landroid/content/pm/PackageInfoLite;->packageName:Ljava/lang/String;

    invoke-static {v0, p3}, auditLogInstallFail(Ljava/lang/String;I)V

    .line 72
    invoke-static {p0, p1, p2}, sendInstallFailLogToContextware(Landroid/content/Context;Landroid/content/pm/PackageInfoLite;Ljava/lang/String;)V

    .line 73
    return-void
.end method

.method static final installFailLog(Landroid/content/Context;Landroid/content/pm/PackageParser$Package;Ljava/lang/String;I)V
    .registers 5
    .param p0, "ctx"    # Landroid/content/Context;
    .param p1, "pkg"    # Landroid/content/pm/PackageParser$Package;
    .param p2, "installer"    # Ljava/lang/String;
    .param p3, "userId"    # I

    .prologue
    .line 76
    iget-object v0, p1, Landroid/content/pm/PackageParser$Package;->packageName:Ljava/lang/String;

    invoke-static {v0, p3}, auditLogInstallFail(Ljava/lang/String;I)V

    .line 77
    invoke-static {p0, p1, p2}, sendInstallFailLogToContextware(Landroid/content/Context;Landroid/content/pm/PackageParser$Package;Ljava/lang/String;)V

    .line 78
    return-void
.end method

.method static final installSuccesLog(Ljava/lang/String;I)V
    .registers 9
    .param p0, "packageName"    # Ljava/lang/String;
    .param p1, "userId"    # I

    .prologue
    const/4 v0, 0x5

    .line 61
    const/4 v2, 0x1

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v3

    const-string v4, "PackageManagerService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Install Application "

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v5, " succeeded"

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    move v1, v0

    move v6, p1

    invoke-static/range {v0 .. v6}, Landroid/sec/enterprise/auditlog/AuditLog;->logAsUser(IIZILjava/lang/String;Ljava/lang/String;I)V

    .line 68
    return-void
.end method

.method static final performBootDexoptForce(Ljava/util/ArrayList;Landroid/util/ArraySet;)V
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/content/pm/PackageParser$Package;",
            ">;",
            "Landroid/util/ArraySet",
            "<",
            "Landroid/content/pm/PackageParser$Package;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 124
    .local p0, "sortedPkgs":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/pm/PackageParser$Package;>;"
    .local p1, "pkgs":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Landroid/content/pm/PackageParser$Package;>;"
    const/4 v4, 0x1

    new-array v0, v4, [Ljava/lang/String;

    const/4 v4, 0x0

    const-string v5, "com.eg.android.AlipayGphone"

    aput-object v5, v0, v4

    .line 125
    .local v0, "forceDexoptPkgNames":[Ljava/lang/String;
    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    .line 126
    .local v1, "forcePkgNamesList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-virtual {p1}, Landroid/util/ArraySet;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Landroid/content/pm/PackageParser$Package;>;"
    :cond_10
    :goto_10
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_53

    .line 127
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/pm/PackageParser$Package;

    .line 128
    .local v3, "pkg":Landroid/content/pm/PackageParser$Package;
    iget-object v4, v3, Landroid/content/pm/PackageParser$Package;->packageName:Ljava/lang/String;

    invoke-interface {v1, v4}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_10

    .line 129
    const-string v4, "PM_HOOK"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Adding forceDexopt app "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ": "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, v3, Landroid/content/pm/PackageParser$Package;->packageName:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 130
    invoke-virtual {p0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 131
    invoke-interface {v2}, Ljava/util/Iterator;->remove()V

    goto :goto_10

    .line 134
    .end local v3    # "pkg":Landroid/content/pm/PackageParser$Package;
    :cond_53
    return-void
.end method

.method static final sendInstallFailLogToContextware(Landroid/content/Context;Landroid/content/pm/PackageInfoLite;Ljava/lang/String;)V
    .registers 9
    .param p0, "ctx"    # Landroid/content/Context;
    .param p1, "pkg"    # Landroid/content/pm/PackageInfoLite;
    .param p2, "installer"    # Ljava/lang/String;

    .prologue
    .line 81
    const-string v1, "android.intent.action.PACKAGE_INSTALL_FAILED"

    iget-object v2, p1, Landroid/content/pm/PackageInfoLite;->packageName:Ljava/lang/String;

    iget v3, p1, Landroid/content/pm/PackageInfoLite;->versionCode:I

    const/4 v4, 0x0

    move-object v0, p0

    move-object v5, p2

    invoke-static/range {v0 .. v5}, sendLogToContextware(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    .line 84
    return-void
.end method

.method static final sendInstallFailLogToContextware(Landroid/content/Context;Landroid/content/pm/PackageParser$Package;Ljava/lang/String;)V
    .registers 9
    .param p0, "ctx"    # Landroid/content/Context;
    .param p1, "pkg"    # Landroid/content/pm/PackageParser$Package;
    .param p2, "installer"    # Ljava/lang/String;

    .prologue
    .line 87
    const-string v1, "android.intent.action.PACKAGE_INSTALL_FAILED"

    iget-object v2, p1, Landroid/content/pm/PackageParser$Package;->packageName:Ljava/lang/String;

    iget v3, p1, Landroid/content/pm/PackageParser$Package;->mVersionCode:I

    iget-object v4, p1, Landroid/content/pm/PackageParser$Package;->mVersionName:Ljava/lang/String;

    move-object v0, p0

    move-object v5, p2

    invoke-static/range {v0 .. v5}, sendLogToContextware(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    .line 90
    return-void
.end method

.method static final sendLogToContextware(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V
    .registers 6
    .param p0, "ctx"    # Landroid/content/Context;
    .param p1, "event"    # Ljava/lang/String;
    .param p2, "pkgName"    # Ljava/lang/String;
    .param p3, "versionCode"    # I
    .param p4, "versionName"    # Ljava/lang/String;
    .param p5, "installer"    # Ljava/lang/String;

    .prologue
    .line 112
    return-void
.end method

.method static final signatureVerificationFailure(Ljava/lang/String;Ljava/lang/String;I)V
    .registers 10
    .param p0, "pkgName"    # Ljava/lang/String;
    .param p1, "action"    # Ljava/lang/String;
    .param p2, "userId"    # I

    .prologue
    .line 29
    const/4 v0, 0x3

    const/4 v1, 0x5

    const/4 v2, 0x0

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v3

    const-string v4, "PackageManagerService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Application "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " failed"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " because of signature verification failure"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    move v6, p2

    invoke-static/range {v0 .. v6}, Landroid/sec/enterprise/auditlog/AuditLog;->logAsUser(IIZILjava/lang/String;Ljava/lang/String;I)V

    .line 36
    return-void
.end method

.method static final uninstallLog(Ljava/lang/String;ZI)V
    .registers 10
    .param p0, "packageName"    # Ljava/lang/String;
    .param p1, "success"    # Z
    .param p2, "userId"    # I

    .prologue
    const/4 v0, 0x5

    .line 50
    const/4 v2, 0x1

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v3

    const-string v4, "PackageManagerService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Uninstall Application "

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    if-eqz p1, :cond_29

    const-string v1, " succeeded"

    :goto_1b
    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    move v1, v0

    move v6, p2

    invoke-static/range {v0 .. v6}, Landroid/sec/enterprise/auditlog/AuditLog;->logAsUser(IIZILjava/lang/String;Ljava/lang/String;I)V

    .line 57
    return-void

    .line 50
    :cond_29
    const-string v1, " failed"

    goto :goto_1b
.end method
