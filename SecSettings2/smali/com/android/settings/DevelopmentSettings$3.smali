.class Lcom/android/settings/DevelopmentSettings$3;
.super Ljava/lang/Object;
.source "DevelopmentSettings.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/DevelopmentSettings;->confirmEnableMultiWindowMode()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/DevelopmentSettings;


# direct methods
.method constructor <init>(Lcom/android/settings/DevelopmentSettings;)V
    .locals 0

    .prologue
    .line 1765
    iput-object p1, p0, Lcom/android/settings/DevelopmentSettings$3;->this$0:Lcom/android/settings/DevelopmentSettings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 1768
    iget-object v1, p0, Lcom/android/settings/DevelopmentSettings$3;->this$0:Lcom/android/settings/DevelopmentSettings;

    const/4 v0, -0x1

    if-ne p2, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    # invokes: Lcom/android/settings/DevelopmentSettings;->setEnableMultiWindow(Z)V
    invoke-static {v1, v0}, Lcom/android/settings/DevelopmentSettings;->access$200(Lcom/android/settings/DevelopmentSettings;Z)V

    .line 1769
    iget-object v0, p0, Lcom/android/settings/DevelopmentSettings$3;->this$0:Lcom/android/settings/DevelopmentSettings;

    # invokes: Lcom/android/settings/DevelopmentSettings;->updateAllOptions()V
    invoke-static {v0}, Lcom/android/settings/DevelopmentSettings;->access$000(Lcom/android/settings/DevelopmentSettings;)V

    .line 1770
    return-void

    .line 1768
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
