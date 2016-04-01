.class Lcom/android/internal/app/ResolverGuideActivity$1;
.super Ljava/lang/Object;
.source "ResolverGuideActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/internal/app/ResolverGuideActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/app/ResolverGuideActivity;


# direct methods
.method constructor <init>(Lcom/android/internal/app/ResolverGuideActivity;)V
    .registers 2

    .prologue
    .line 107
    iput-object p1, p0, this$0:Lcom/android/internal/app/ResolverGuideActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .registers 5
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 112
    sget-object v1, Landroid/os/PersonaManager$KnoxContainerVersion;->KNOX_CONTAINER_VERSION_2_4_0:Landroid/os/PersonaManager$KnoxContainerVersion;

    invoke-static {v1}, Landroid/os/PersonaManager;->isKnoxVersionSupported(Landroid/os/PersonaManager$KnoxContainerVersion;)Z

    move-result v1

    if-eqz v1, :cond_11

    .line 113
    iget-object v1, p0, this$0:Lcom/android/internal/app/ResolverGuideActivity;

    invoke-virtual {v1}, Lcom/android/internal/app/ResolverGuideActivity;->handlePendingIntent()Z

    move-result v1

    if-eqz v1, :cond_11

    .line 125
    :goto_10
    return-void

    .line 120
    :cond_11
    iget-object v1, p0, this$0:Lcom/android/internal/app/ResolverGuideActivity;

    # invokes: Lcom/android/internal/app/ResolverGuideActivity;->makeMyIntent()Landroid/content/Intent;
    invoke-static {v1}, Lcom/android/internal/app/ResolverGuideActivity;->access$000(Lcom/android/internal/app/ResolverGuideActivity;)Landroid/content/Intent;

    move-result-object v0

    .line 121
    .local v0, "intent":Landroid/content/Intent;
    if-eqz v0, :cond_1e

    .line 122
    iget-object v1, p0, this$0:Lcom/android/internal/app/ResolverGuideActivity;

    invoke-virtual {v1, v0}, Lcom/android/internal/app/ResolverGuideActivity;->safelyStartActivity(Landroid/content/Intent;)V

    .line 124
    :cond_1e
    iget-object v1, p0, this$0:Lcom/android/internal/app/ResolverGuideActivity;

    invoke-virtual {v1}, Lcom/android/internal/app/ResolverGuideActivity;->dismiss()V

    goto :goto_10
.end method
