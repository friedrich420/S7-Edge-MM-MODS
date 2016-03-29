.class Lcom/android/settings/UserCredentialsSettings$3;
.super Ljava/lang/Object;
.source "UserCredentialsSettings.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


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


# direct methods
.method constructor <init>(Lcom/android/settings/UserCredentialsSettings;)V
    .locals 0

    .prologue
    .line 683
    iput-object p1, p0, Lcom/android/settings/UserCredentialsSettings$3;->this$0:Lcom/android/settings/UserCredentialsSettings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 0
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "id"    # I

    .prologue
    .line 685
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 686
    return-void
.end method
