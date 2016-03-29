.class Lcom/android/settings/UserCredentialsSettings$4;
.super Ljava/lang/Object;
.source "UserCredentialsSettings.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/UserCredentialsSettings;->showCertDialog(Lcom/android/settings/UserCredentialsSettings$CertHolder;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/UserCredentialsSettings;

.field final synthetic val$certHolder:Lcom/android/settings/UserCredentialsSettings$CertHolder;


# direct methods
.method constructor <init>(Lcom/android/settings/UserCredentialsSettings;Lcom/android/settings/UserCredentialsSettings$CertHolder;)V
    .locals 0

    .prologue
    .line 722
    iput-object p1, p0, Lcom/android/settings/UserCredentialsSettings$4;->this$0:Lcom/android/settings/UserCredentialsSettings;

    iput-object p2, p0, Lcom/android/settings/UserCredentialsSettings$4;->val$certHolder:Lcom/android/settings/UserCredentialsSettings$CertHolder;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 725
    iget-object v0, p0, Lcom/android/settings/UserCredentialsSettings$4;->this$0:Lcom/android/settings/UserCredentialsSettings;

    iget-object v1, p0, Lcom/android/settings/UserCredentialsSettings$4;->val$certHolder:Lcom/android/settings/UserCredentialsSettings$CertHolder;

    # invokes: Lcom/android/settings/UserCredentialsSettings;->showConfirmDialog(Lcom/android/settings/UserCredentialsSettings$CertHolder;)V
    invoke-static {v0, v1}, Lcom/android/settings/UserCredentialsSettings;->access$3100(Lcom/android/settings/UserCredentialsSettings;Lcom/android/settings/UserCredentialsSettings$CertHolder;)V

    .line 726
    return-void
.end method
