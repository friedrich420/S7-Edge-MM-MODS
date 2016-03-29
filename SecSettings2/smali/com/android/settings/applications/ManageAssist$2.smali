.class Lcom/android/settings/applications/ManageAssist$2;
.super Ljava/lang/Object;
.source "ManageAssist.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/applications/ManageAssist;->confirmNewAssist(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/applications/ManageAssist;

.field final synthetic val$newAssitPackage:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/android/settings/applications/ManageAssist;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 187
    iput-object p1, p0, Lcom/android/settings/applications/ManageAssist$2;->this$0:Lcom/android/settings/applications/ManageAssist;

    iput-object p2, p0, Lcom/android/settings/applications/ManageAssist$2;->val$newAssitPackage:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 190
    iget-object v0, p0, Lcom/android/settings/applications/ManageAssist$2;->this$0:Lcom/android/settings/applications/ManageAssist;

    iget-object v1, p0, Lcom/android/settings/applications/ManageAssist$2;->val$newAssitPackage:Ljava/lang/String;

    # invokes: Lcom/android/settings/applications/ManageAssist;->setDefaultAssist(Ljava/lang/String;)V
    invoke-static {v0, v1}, Lcom/android/settings/applications/ManageAssist;->access$100(Lcom/android/settings/applications/ManageAssist;Ljava/lang/String;)V

    .line 191
    return-void
.end method
