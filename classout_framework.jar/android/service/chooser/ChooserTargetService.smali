.class public abstract Landroid/service/chooser/ChooserTargetService;
.super Landroid/app/Service;
.source "ChooserTargetService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/service/chooser/ChooserTargetService$1;,
        Landroid/service/chooser/ChooserTargetService$IChooserTargetServiceWrapper;
    }
.end annotation


# static fields
.field public static final BIND_PERMISSION:Ljava/lang/String; = "android.permission.BIND_CHOOSER_TARGET_SERVICE"

.field private static final DEBUG:Z = false

.field public static final META_DATA_NAME:Ljava/lang/String; = "android.service.chooser.chooser_target_service"

.field public static final SERVICE_INTERFACE:Ljava/lang/String; = "android.service.chooser.ChooserTargetService"


# instance fields
.field private final TAG:Ljava/lang/String;

.field private mWrapper:Landroid/service/chooser/ChooserTargetService$IChooserTargetServiceWrapper;


# direct methods
.method public constructor <init>()V
    .registers 3

    .prologue
    .line 76
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    .line 78
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-class v1, Landroid/service/chooser/ChooserTargetService;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x5b

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x5d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, TAG:Ljava/lang/String;

    .line 101
    const/4 v0, 0x0

    iput-object v0, p0, mWrapper:Landroid/service/chooser/ChooserTargetService$IChooserTargetServiceWrapper;

    .line 137
    return-void
.end method


# virtual methods
.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .registers 5
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    const/4 v0, 0x0

    .line 126
    const-string v1, "android.service.chooser.ChooserTargetService"

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_e

    .line 134
    :goto_d
    return-object v0

    .line 131
    :cond_e
    iget-object v1, p0, mWrapper:Landroid/service/chooser/ChooserTargetService$IChooserTargetServiceWrapper;

    if-nez v1, :cond_19

    .line 132
    new-instance v1, Landroid/service/chooser/ChooserTargetService$IChooserTargetServiceWrapper;

    invoke-direct {v1, p0, v0}, Landroid/service/chooser/ChooserTargetService$IChooserTargetServiceWrapper;-><init>(Landroid/service/chooser/ChooserTargetService;Landroid/service/chooser/ChooserTargetService$1;)V

    iput-object v1, p0, mWrapper:Landroid/service/chooser/ChooserTargetService$IChooserTargetServiceWrapper;

    .line 134
    :cond_19
    iget-object v0, p0, mWrapper:Landroid/service/chooser/ChooserTargetService$IChooserTargetServiceWrapper;

    goto :goto_d
.end method

.method public abstract onGetChooserTargets(Landroid/content/ComponentName;Landroid/content/IntentFilter;)Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/ComponentName;",
            "Landroid/content/IntentFilter;",
            ")",
            "Ljava/util/List",
            "<",
            "Landroid/service/chooser/ChooserTarget;",
            ">;"
        }
    .end annotation
.end method
