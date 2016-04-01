.class public Lcom/android/server/pm/PersonaManagerService$AppUpgradeInfo;
.super Ljava/lang/Object;
.source "PersonaManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/pm/PersonaManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "AppUpgradeInfo"
.end annotation


# instance fields
.field public mAppName:Ljava/lang/String;

.field public mSystemApp:Z


# direct methods
.method public constructor <init>(Ljava/lang/String;Z)V
    .registers 4
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "system"    # Z

    .prologue
    .line 3961
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3959
    const/4 v0, 0x0

    iput-object v0, p0, mAppName:Ljava/lang/String;

    .line 3960
    const/4 v0, 0x0

    iput-boolean v0, p0, mSystemApp:Z

    .line 3962
    iput-object p1, p0, mAppName:Ljava/lang/String;

    .line 3963
    iput-boolean p2, p0, mSystemApp:Z

    .line 3964
    return-void
.end method


# virtual methods
.method public dumpState()V
    .registers 4

    .prologue
    .line 3967
    const-string v0, "PersonaManagerService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "AppUpgradeInfo name:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, mAppName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " isSystem:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, mSystemApp:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3968
    return-void
.end method
