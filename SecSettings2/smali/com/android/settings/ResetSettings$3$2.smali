.class Lcom/android/settings/ResetSettings$3$2;
.super Ljava/lang/Object;
.source "ResetSettings.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/ResetSettings$3;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/settings/ResetSettings$3;


# direct methods
.method constructor <init>(Lcom/android/settings/ResetSettings$3;)V
    .locals 0

    .prologue
    .line 225
    iput-object p1, p0, Lcom/android/settings/ResetSettings$3$2;->this$1:Lcom/android/settings/ResetSettings$3;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 227
    iget-object v0, p0, Lcom/android/settings/ResetSettings$3$2;->this$1:Lcom/android/settings/ResetSettings$3;

    iget-object v0, v0, Lcom/android/settings/ResetSettings$3;->this$0:Lcom/android/settings/ResetSettings;

    # invokes: Lcom/android/settings/ResetSettings;->requestSoftReset()V
    invoke-static {v0}, Lcom/android/settings/ResetSettings;->access$300(Lcom/android/settings/ResetSettings;)V

    .line 228
    return-void
.end method
