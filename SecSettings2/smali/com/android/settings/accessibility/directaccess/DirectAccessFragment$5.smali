.class Lcom/android/settings/accessibility/directaccess/DirectAccessFragment$5;
.super Ljava/lang/Object;
.source "DirectAccessFragment.java"

# interfaces
.implements Lcom/android/settings/widget/ToggleSwitch$OnBeforeCheckedChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/accessibility/directaccess/DirectAccessFragment;->installSwitchBarToggleSwitch()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/accessibility/directaccess/DirectAccessFragment;


# direct methods
.method constructor <init>(Lcom/android/settings/accessibility/directaccess/DirectAccessFragment;)V
    .locals 0

    .prologue
    .line 319
    iput-object p1, p0, Lcom/android/settings/accessibility/directaccess/DirectAccessFragment$5;->this$0:Lcom/android/settings/accessibility/directaccess/DirectAccessFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onBeforeCheckedChanged(Lcom/android/settings/widget/ToggleSwitch;Z)Z
    .locals 1
    .param p1, "toggleSwitch"    # Lcom/android/settings/widget/ToggleSwitch;
    .param p2, "checked"    # Z

    .prologue
    .line 322
    iget-object v0, p0, Lcom/android/settings/accessibility/directaccess/DirectAccessFragment$5;->this$0:Lcom/android/settings/accessibility/directaccess/DirectAccessFragment;

    iget-object v0, v0, Lcom/android/settings/accessibility/directaccess/DirectAccessFragment;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    invoke-virtual {v0, p2}, Lcom/android/settings/widget/SwitchBar;->setCheckedInternal(Z)V

    .line 323
    iget-object v0, p0, Lcom/android/settings/accessibility/directaccess/DirectAccessFragment$5;->this$0:Lcom/android/settings/accessibility/directaccess/DirectAccessFragment;

    invoke-virtual {v0}, Lcom/android/settings/accessibility/directaccess/DirectAccessFragment;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    invoke-virtual {v0, p2}, Landroid/preference/PreferenceScreen;->setEnabled(Z)V

    .line 324
    const/4 v0, 0x0

    return v0
.end method
