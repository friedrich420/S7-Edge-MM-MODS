.class Lcom/android/settings/TetherSettings$11;
.super Ljava/lang/Object;
.source "TetherSettings.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/TetherSettings;->showMetorPCSHelpPoup()Landroid/app/AlertDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/TetherSettings;


# direct methods
.method constructor <init>(Lcom/android/settings/TetherSettings;)V
    .locals 0

    .prologue
    .line 574
    iput-object p1, p0, Lcom/android/settings/TetherSettings$11;->this$0:Lcom/android/settings/TetherSettings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    const/4 v1, 0x1

    .line 579
    iget-object v0, p0, Lcom/android/settings/TetherSettings$11;->this$0:Lcom/android/settings/TetherSettings;

    # getter for: Lcom/android/settings/TetherSettings;->mIsRaceCondition:Z
    invoke-static {v0}, Lcom/android/settings/TetherSettings;->access$900(Lcom/android/settings/TetherSettings;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 580
    iget-object v0, p0, Lcom/android/settings/TetherSettings$11;->this$0:Lcom/android/settings/TetherSettings;

    # setter for: Lcom/android/settings/TetherSettings;->mIsRaceCondition:Z
    invoke-static {v0, v1}, Lcom/android/settings/TetherSettings;->access$902(Lcom/android/settings/TetherSettings;Z)Z

    .line 581
    iget-object v0, p0, Lcom/android/settings/TetherSettings$11;->this$0:Lcom/android/settings/TetherSettings;

    # invokes: Lcom/android/settings/TetherSettings;->startProvisioningIfNecessary(I)V
    invoke-static {v0, v1}, Lcom/android/settings/TetherSettings;->access$400(Lcom/android/settings/TetherSettings;I)V

    .line 583
    :cond_0
    return-void
.end method
