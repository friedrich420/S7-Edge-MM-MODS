.class Lcom/android/settings/UserCredentialsSettings$1;
.super Ljava/lang/Object;
.source "UserCredentialsSettings.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/UserCredentialsSettings;->addTab(Lcom/android/settings/UserCredentialsSettings$Tab;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/UserCredentialsSettings;

.field final synthetic val$adapter:Lcom/android/settings/UserCredentialsSettings$UserCertificateAdapter;


# direct methods
.method constructor <init>(Lcom/android/settings/UserCredentialsSettings;Lcom/android/settings/UserCredentialsSettings$UserCertificateAdapter;)V
    .locals 0

    .prologue
    .line 314
    iput-object p1, p0, Lcom/android/settings/UserCredentialsSettings$1;->this$0:Lcom/android/settings/UserCredentialsSettings;

    iput-object p2, p0, Lcom/android/settings/UserCredentialsSettings$1;->val$adapter:Lcom/android/settings/UserCredentialsSettings$UserCertificateAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 2
    .param p2, "view"    # Landroid/view/View;
    .param p3, "pos"    # I
    .param p4, "id"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .prologue
    .line 317
    .local p1, "parent":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    iget-object v0, p0, Lcom/android/settings/UserCredentialsSettings$1;->this$0:Lcom/android/settings/UserCredentialsSettings;

    iget-object v1, p0, Lcom/android/settings/UserCredentialsSettings$1;->val$adapter:Lcom/android/settings/UserCredentialsSettings$UserCertificateAdapter;

    invoke-virtual {v1, p3}, Lcom/android/settings/UserCredentialsSettings$UserCertificateAdapter;->getItem(I)Lcom/android/settings/UserCredentialsSettings$CertHolder;

    move-result-object v1

    # invokes: Lcom/android/settings/UserCredentialsSettings;->showCertDialog(Lcom/android/settings/UserCredentialsSettings$CertHolder;)V
    invoke-static {v0, v1}, Lcom/android/settings/UserCredentialsSettings;->access$800(Lcom/android/settings/UserCredentialsSettings;Lcom/android/settings/UserCredentialsSettings$CertHolder;)V

    .line 318
    return-void
.end method
