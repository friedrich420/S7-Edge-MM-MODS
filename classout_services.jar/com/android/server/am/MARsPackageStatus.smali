.class public Lcom/android/server/am/MARsPackageStatus;
.super Ljava/lang/Object;
.source "MARsPackageStatus.java"


# static fields
.field public static final NOT_RESTRICTED:I = 0x0

.field public static final PACKAGE_STATE_ALWAYS_OPTIMIZING:I = 0x1

.field public static final PACKAGE_STATE_AUTO_OPTIMIZING:I = 0x0

.field public static final PACKAGE_STATE_AUTO_OPTIMIZING_NOTUSEDRECENTLY:I = 0x3

.field public static final PACKAGE_STATE_SETTO_AUTO_OPTIMIZING:I = 0x4

.field public static final PACKAGE_STATE_TURNED_OFF:I = 0x2

.field public static final RESTRICTED:I = 0x100


# instance fields
.field public appliedPolicies:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/server/am/MARsPolicyManager$Policy;",
            ">;"
        }
    .end annotation
.end field

.field public autorun:I

.field public context:Landroid/content/Context;

.field public hasOngoingNoti:Z

.field public info:Landroid/content/pm/PackageInfo;

.field public isAcceibilityService:Z

.field public isActiveDeviceAdmin:Z

.field public isDefaultIME:Z

.field public isNotificationListener:Z

.field public isUsingGcm:Z

.field public isWallpaper:Z

.field public isWallpaperRunning:Z

.field public isWidget:Z

.field public lastServiceActivityTime:J

.field public lastUsedTime:J

.field public name:Ljava/lang/String;

.field public needUpdateTime:Z

.field public receivedGcmIntent:Z

.field public resetTime:J

.field public restrictedFlag:I

.field public runningWidgets:I

.field public score:I

.field public skipReason:Ljava/lang/String;

.field public state:I


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 87
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 88
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;IJ)V
    .registers 12
    .param p1, "_context"    # Landroid/content/Context;
    .param p2, "_packageName"    # Ljava/lang/String;
    .param p3, "_state"    # I
    .param p4, "_resetTime"    # J

    .prologue
    const-wide/16 v4, 0x0

    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 90
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 91
    iput-object p2, p0, name:Ljava/lang/String;

    .line 92
    iput-object p1, p0, context:Landroid/content/Context;

    .line 95
    iput p3, p0, state:I

    .line 96
    iput-wide p4, p0, resetTime:J

    .line 97
    iput-boolean v1, p0, needUpdateTime:Z

    .line 100
    iput v1, p0, restrictedFlag:I

    .line 101
    iput-object v2, p0, appliedPolicies:Ljava/util/ArrayList;

    .line 104
    iput v1, p0, score:I

    .line 105
    iput-wide v4, p0, lastServiceActivityTime:J

    .line 106
    iput-wide v4, p0, lastUsedTime:J

    .line 107
    iput-object v2, p0, info:Landroid/content/pm/PackageInfo;

    .line 110
    invoke-direct {p0, p1, p2}, isC2DMPermAvl(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, isUsingGcm:Z

    .line 111
    iput-boolean v1, p0, receivedGcmIntent:Z

    .line 114
    iput v1, p0, autorun:I

    .line 117
    invoke-direct {p0, p1, p2}, isWidgetPackage(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, isWidget:Z

    .line 118
    iput-boolean v1, p0, isWallpaper:Z

    .line 121
    iput v1, p0, runningWidgets:I

    .line 122
    iput-boolean v1, p0, isWallpaperRunning:Z

    .line 123
    iput-boolean v1, p0, hasOngoingNoti:Z

    .line 124
    iput-boolean v1, p0, isNotificationListener:Z

    .line 125
    iput-boolean v1, p0, isAcceibilityService:Z

    .line 126
    iput-boolean v1, p0, isActiveDeviceAdmin:Z

    .line 127
    iput-boolean v1, p0, isDefaultIME:Z

    .line 130
    iput-object v2, p0, skipReason:Ljava/lang/String;

    .line 131
    return-void
.end method

.method private isC2DMPermAvl(Landroid/content/Context;Ljava/lang/String;)Z
    .registers 10
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "packageName"    # Ljava/lang/String;

    .prologue
    .line 134
    const/4 v0, 0x0

    .line 135
    .local v0, "c2dmPermissionFound":Z
    const/4 v2, 0x0

    .line 136
    .local v2, "packageInfo":Landroid/content/pm/PackageInfo;
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    .line 137
    .local v4, "pm":Landroid/content/pm/PackageManager;
    if-eqz v4, :cond_29

    .line 139
    const/16 v5, 0x1000

    :try_start_a
    invoke-virtual {v4, p2, v5}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v2

    .line 140
    if-eqz v2, :cond_29

    .line 141
    iget-object v3, v2, Landroid/content/pm/PackageInfo;->permissions:[Landroid/content/pm/PermissionInfo;

    .line 142
    .local v3, "perms":[Landroid/content/pm/PermissionInfo;
    if-eqz v3, :cond_29

    .line 143
    const/4 v1, 0x0

    .local v1, "j":I
    :goto_15
    array-length v5, v3

    if-ge v1, v5, :cond_29

    .line 144
    aget-object v5, v3, v1

    if-eqz v5, :cond_2a

    aget-object v5, v3, v1

    iget-object v5, v5, Landroid/content/pm/PermissionInfo;->name:Ljava/lang/String;

    const-string v6, ".permission.C2D_MESSAGE"

    invoke-virtual {v5, v6}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z
    :try_end_25
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_a .. :try_end_25} :catch_2d

    move-result v5

    if-eqz v5, :cond_2a

    .line 145
    const/4 v0, 0x1

    .line 154
    .end local v1    # "j":I
    .end local v3    # "perms":[Landroid/content/pm/PermissionInfo;
    :cond_29
    :goto_29
    return v0

    .line 143
    .restart local v1    # "j":I
    .restart local v3    # "perms":[Landroid/content/pm/PermissionInfo;
    :cond_2a
    add-int/lit8 v1, v1, 0x1

    goto :goto_15

    .line 151
    .end local v1    # "j":I
    .end local v3    # "perms":[Landroid/content/pm/PermissionInfo;
    :catch_2d
    move-exception v5

    goto :goto_29
.end method

.method private isWidgetPackage(Landroid/content/Context;Ljava/lang/String;)Z
    .registers 7
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "packageName"    # Ljava/lang/String;

    .prologue
    .line 158
    new-instance v0, Landroid/content/Intent;

    const-string v2, "android.appwidget.action.APPWIDGET_UPDATE"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 159
    .local v0, "intent":Landroid/content/Intent;
    invoke-virtual {v0, p2}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 160
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    const/16 v3, 0x480

    invoke-virtual {v2, v0, v3}, Landroid/content/pm/PackageManager;->queryBroadcastReceivers(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v1

    .line 164
    .local v1, "receivers":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    if-eqz v1, :cond_1e

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_1e

    .line 165
    const/4 v2, 0x1

    .line 167
    :goto_1d
    return v2

    :cond_1e
    const/4 v2, 0x0

    goto :goto_1d
.end method
