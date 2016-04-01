.class Lcom/android/server/policy/GlobalActions$25$1$1;
.super Ljava/lang/Object;
.source "GlobalActions.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/policy/GlobalActions$25$1;->onClick(Landroid/content/DialogInterface;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$2:Lcom/android/server/policy/GlobalActions$25$1;


# direct methods
.method constructor <init>(Lcom/android/server/policy/GlobalActions$25$1;)V
    .registers 2

    .prologue
    .line 2811
    iput-object p1, p0, this$2:Lcom/android/server/policy/GlobalActions$25$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 2

    .prologue
    .line 2814
    :try_start_0
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v0

    invoke-interface {v0}, Landroid/app/IActivityManager;->requestBugReport()V
    :try_end_7
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_7} :catch_8

    .line 2818
    :goto_7
    return-void

    .line 2816
    :catch_8
    move-exception v0

    goto :goto_7
.end method
