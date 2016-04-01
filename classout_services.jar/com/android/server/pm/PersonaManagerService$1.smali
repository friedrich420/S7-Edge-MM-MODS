.class Lcom/android/server/pm/PersonaManagerService$1;
.super Ljava/lang/Thread;
.source "PersonaManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/pm/PersonaManagerService;->installApplications(ILjava/util/List;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/pm/PersonaManagerService;

.field final synthetic val$packages:Ljava/util/List;

.field final synthetic val$personaId:I


# direct methods
.method constructor <init>(Lcom/android/server/pm/PersonaManagerService;Ljava/util/List;I)V
    .registers 4

    .prologue
    .line 2856
    iput-object p1, p0, this$0:Lcom/android/server/pm/PersonaManagerService;

    iput-object p2, p0, val$packages:Ljava/util/List;

    iput p3, p0, val$personaId:I

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 5

    .prologue
    .line 2858
    iget-object v2, p0, val$packages:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_6
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1e

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 2859
    .local v1, "pkg":Ljava/lang/String;
    iget-object v2, p0, this$0:Lcom/android/server/pm/PersonaManagerService;

    # getter for: Lcom/android/server/pm/PersonaManagerService;->mPm:Lcom/android/server/pm/PackageManagerService;
    invoke-static {v2}, Lcom/android/server/pm/PersonaManagerService;->access$300(Lcom/android/server/pm/PersonaManagerService;)Lcom/android/server/pm/PackageManagerService;

    move-result-object v2

    iget v3, p0, val$personaId:I

    invoke-virtual {v2, v1, v3}, Lcom/android/server/pm/PackageManagerService;->applyRuntimePermissionsOnInstallation(Ljava/lang/String;I)V

    goto :goto_6

    .line 2861
    .end local v1    # "pkg":Ljava/lang/String;
    :cond_1e
    return-void
.end method
