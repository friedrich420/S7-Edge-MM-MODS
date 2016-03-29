.class Lcom/android/settings/accessibility/colorblind/ColorChipReport$1;
.super Ljava/lang/Object;
.source "ColorChipReport.java"

# interfaces
.implements Lcom/android/settings/widget/ToggleSwitch$OnBeforeCheckedChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/accessibility/colorblind/ColorChipReport;->onInstallSwitchBarToggleSwitch()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/accessibility/colorblind/ColorChipReport;


# direct methods
.method constructor <init>(Lcom/android/settings/accessibility/colorblind/ColorChipReport;)V
    .locals 0

    .prologue
    .line 173
    iput-object p1, p0, Lcom/android/settings/accessibility/colorblind/ColorChipReport$1;->this$0:Lcom/android/settings/accessibility/colorblind/ColorChipReport;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onBeforeCheckedChanged(Lcom/android/settings/widget/ToggleSwitch;Z)Z
    .locals 1
    .param p1, "toggleSwitch"    # Lcom/android/settings/widget/ToggleSwitch;
    .param p2, "checked"    # Z

    .prologue
    .line 177
    :try_start_0
    iget-object v0, p0, Lcom/android/settings/accessibility/colorblind/ColorChipReport$1;->this$0:Lcom/android/settings/accessibility/colorblind/ColorChipReport;

    # invokes: Lcom/android/settings/accessibility/colorblind/ColorChipReport;->SetSwitchOnOff(Z)V
    invoke-static {v0, p2}, Lcom/android/settings/accessibility/colorblind/ColorChipReport;->access$000(Lcom/android/settings/accessibility/colorblind/ColorChipReport;Z)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 183
    :goto_0
    const/4 v0, 0x0

    return v0

    .line 180
    :catch_0
    move-exception v0

    goto :goto_0

    .line 178
    :catch_1
    move-exception v0

    goto :goto_0
.end method
