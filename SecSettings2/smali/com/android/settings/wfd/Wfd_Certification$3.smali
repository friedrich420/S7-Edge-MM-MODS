.class Lcom/android/settings/wfd/Wfd_Certification$3;
.super Landroid/preference/CheckBoxPreference;
.source "Wfd_Certification.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/wfd/Wfd_Certification;->buildCertificationMenu(Landroid/preference/PreferenceScreen;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/wfd/Wfd_Certification;


# direct methods
.method constructor <init>(Lcom/android/settings/wfd/Wfd_Certification;Landroid/content/Context;)V
    .locals 0
    .param p2, "x0"    # Landroid/content/Context;

    .prologue
    .line 155
    iput-object p1, p0, Lcom/android/settings/wfd/Wfd_Certification$3;->this$0:Lcom/android/settings/wfd/Wfd_Certification;

    invoke-direct {p0, p2}, Landroid/preference/CheckBoxPreference;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method protected onClick()V
    .locals 2

    .prologue
    .line 158
    iget-object v1, p0, Lcom/android/settings/wfd/Wfd_Certification$3;->this$0:Lcom/android/settings/wfd/Wfd_Certification;

    iget-object v0, p0, Lcom/android/settings/wfd/Wfd_Certification$3;->this$0:Lcom/android/settings/wfd/Wfd_Certification;

    # getter for: Lcom/android/settings/wfd/Wfd_Certification;->mAutoGO:Z
    invoke-static {v0}, Lcom/android/settings/wfd/Wfd_Certification;->access$400(Lcom/android/settings/wfd/Wfd_Certification;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    # setter for: Lcom/android/settings/wfd/Wfd_Certification;->mAutoGO:Z
    invoke-static {v1, v0}, Lcom/android/settings/wfd/Wfd_Certification;->access$402(Lcom/android/settings/wfd/Wfd_Certification;Z)Z

    .line 159
    iget-object v0, p0, Lcom/android/settings/wfd/Wfd_Certification$3;->this$0:Lcom/android/settings/wfd/Wfd_Certification;

    # getter for: Lcom/android/settings/wfd/Wfd_Certification;->mAutoGO:Z
    invoke-static {v0}, Lcom/android/settings/wfd/Wfd_Certification;->access$400(Lcom/android/settings/wfd/Wfd_Certification;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 160
    iget-object v0, p0, Lcom/android/settings/wfd/Wfd_Certification$3;->this$0:Lcom/android/settings/wfd/Wfd_Certification;

    # invokes: Lcom/android/settings/wfd/Wfd_Certification;->startAutoGO()V
    invoke-static {v0}, Lcom/android/settings/wfd/Wfd_Certification;->access$500(Lcom/android/settings/wfd/Wfd_Certification;)V

    .line 164
    :goto_1
    iget-object v0, p0, Lcom/android/settings/wfd/Wfd_Certification$3;->this$0:Lcom/android/settings/wfd/Wfd_Certification;

    # getter for: Lcom/android/settings/wfd/Wfd_Certification;->mAutoGO:Z
    invoke-static {v0}, Lcom/android/settings/wfd/Wfd_Certification;->access$400(Lcom/android/settings/wfd/Wfd_Certification;)Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/settings/wfd/Wfd_Certification$3;->setChecked(Z)V

    .line 165
    return-void

    .line 158
    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 162
    :cond_1
    iget-object v0, p0, Lcom/android/settings/wfd/Wfd_Certification$3;->this$0:Lcom/android/settings/wfd/Wfd_Certification;

    # invokes: Lcom/android/settings/wfd/Wfd_Certification;->stopAutoGO()V
    invoke-static {v0}, Lcom/android/settings/wfd/Wfd_Certification;->access$600(Lcom/android/settings/wfd/Wfd_Certification;)V

    goto :goto_1
.end method
