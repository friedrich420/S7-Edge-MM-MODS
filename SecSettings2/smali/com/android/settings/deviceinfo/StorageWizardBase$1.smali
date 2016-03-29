.class Lcom/android/settings/deviceinfo/StorageWizardBase$1;
.super Ljava/lang/Object;
.source "StorageWizardBase.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/deviceinfo/StorageWizardBase;->setContentView(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/deviceinfo/StorageWizardBase;


# direct methods
.method constructor <init>(Lcom/android/settings/deviceinfo/StorageWizardBase;)V
    .locals 0

    .prologue
    .line 96
    iput-object p1, p0, Lcom/android/settings/deviceinfo/StorageWizardBase$1;->this$0:Lcom/android/settings/deviceinfo/StorageWizardBase;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 99
    iget-object v0, p0, Lcom/android/settings/deviceinfo/StorageWizardBase$1;->this$0:Lcom/android/settings/deviceinfo/StorageWizardBase;

    invoke-virtual {v0}, Lcom/android/settings/deviceinfo/StorageWizardBase;->onNavigateNext()V

    .line 100
    return-void
.end method
