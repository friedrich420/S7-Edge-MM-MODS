.class Lcom/android/settings/wfd/Wfd_Certification$1$2;
.super Ljava/lang/Object;
.source "Wfd_Certification.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/wfd/Wfd_Certification$1;->getView(Landroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/settings/wfd/Wfd_Certification$1;


# direct methods
.method constructor <init>(Lcom/android/settings/wfd/Wfd_Certification$1;)V
    .locals 0

    .prologue
    .line 128
    iput-object p1, p0, Lcom/android/settings/wfd/Wfd_Certification$1$2;->this$1:Lcom/android/settings/wfd/Wfd_Certification$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 131
    iget-object v0, p0, Lcom/android/settings/wfd/Wfd_Certification$1$2;->this$1:Lcom/android/settings/wfd/Wfd_Certification$1;

    iget-object v0, v0, Lcom/android/settings/wfd/Wfd_Certification$1;->this$0:Lcom/android/settings/wfd/Wfd_Certification;

    # getter for: Lcom/android/settings/wfd/Wfd_Certification;->mDisplayManager:Landroid/hardware/display/DisplayManager;
    invoke-static {v0}, Lcom/android/settings/wfd/Wfd_Certification;->access$100(Lcom/android/settings/wfd/Wfd_Certification;)Landroid/hardware/display/DisplayManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/hardware/display/DisplayManager;->resumeWifiDisplay()V

    .line 132
    return-void
.end method
