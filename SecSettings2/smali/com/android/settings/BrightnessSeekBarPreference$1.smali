.class Lcom/android/settings/BrightnessSeekBarPreference$1;
.super Landroid/database/ContentObserver;
.source "BrightnessSeekBarPreference.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/BrightnessSeekBarPreference;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/BrightnessSeekBarPreference;


# direct methods
.method constructor <init>(Lcom/android/settings/BrightnessSeekBarPreference;Landroid/os/Handler;)V
    .locals 0
    .param p2, "x0"    # Landroid/os/Handler;

    .prologue
    .line 106
    iput-object p1, p0, Lcom/android/settings/BrightnessSeekBarPreference$1;->this$0:Lcom/android/settings/BrightnessSeekBarPreference;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 4
    .param p1, "selfChange"    # Z

    .prologue
    .line 109
    iget-object v0, p0, Lcom/android/settings/BrightnessSeekBarPreference$1;->this$0:Lcom/android/settings/BrightnessSeekBarPreference;

    const/4 v1, -0x1

    # setter for: Lcom/android/settings/BrightnessSeekBarPreference;->mCurBrightness:I
    invoke-static {v0, v1}, Lcom/android/settings/BrightnessSeekBarPreference;->access$002(Lcom/android/settings/BrightnessSeekBarPreference;I)I

    .line 110
    iget-object v0, p0, Lcom/android/settings/BrightnessSeekBarPreference$1;->this$0:Lcom/android/settings/BrightnessSeekBarPreference;

    iget-object v1, p0, Lcom/android/settings/BrightnessSeekBarPreference$1;->this$0:Lcom/android/settings/BrightnessSeekBarPreference;

    invoke-virtual {v1}, Lcom/android/settings/BrightnessSeekBarPreference;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    # getter for: Lcom/android/settings/BrightnessSeekBarPreference;->BRIGHTNESS_PMS_MARKER_SCREEN:Ljava/lang/String;
    invoke-static {}, Lcom/android/settings/BrightnessSeekBarPreference;->access$200()Ljava/lang/String;

    move-result-object v2

    const/16 v3, 0x64

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    # setter for: Lcom/android/settings/BrightnessSeekBarPreference;->pmsBrightness:I
    invoke-static {v0, v1}, Lcom/android/settings/BrightnessSeekBarPreference;->access$102(Lcom/android/settings/BrightnessSeekBarPreference;I)I

    .line 111
    const-string v0, "BrightnessSeekBarPreference"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mPMSBrightnessMarkerObserver pmsBrightness : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings/BrightnessSeekBarPreference$1;->this$0:Lcom/android/settings/BrightnessSeekBarPreference;

    # getter for: Lcom/android/settings/BrightnessSeekBarPreference;->pmsBrightness:I
    invoke-static {v2}, Lcom/android/settings/BrightnessSeekBarPreference;->access$100(Lcom/android/settings/BrightnessSeekBarPreference;)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", mAutomaticMode : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings/BrightnessSeekBarPreference$1;->this$0:Lcom/android/settings/BrightnessSeekBarPreference;

    # getter for: Lcom/android/settings/BrightnessSeekBarPreference;->mAutomaticMode:Z
    invoke-static {v2}, Lcom/android/settings/BrightnessSeekBarPreference;->access$300(Lcom/android/settings/BrightnessSeekBarPreference;)Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 112
    iget-object v0, p0, Lcom/android/settings/BrightnessSeekBarPreference$1;->this$0:Lcom/android/settings/BrightnessSeekBarPreference;

    # getter for: Lcom/android/settings/BrightnessSeekBarPreference;->mAutomaticMode:Z
    invoke-static {v0}, Lcom/android/settings/BrightnessSeekBarPreference;->access$300(Lcom/android/settings/BrightnessSeekBarPreference;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 113
    iget-object v0, p0, Lcom/android/settings/BrightnessSeekBarPreference$1;->this$0:Lcom/android/settings/BrightnessSeekBarPreference;

    invoke-virtual {v0}, Lcom/android/settings/BrightnessSeekBarPreference;->onBrightnessChanged()V

    .line 114
    :cond_0
    iget-object v0, p0, Lcom/android/settings/BrightnessSeekBarPreference$1;->this$0:Lcom/android/settings/BrightnessSeekBarPreference;

    # getter for: Lcom/android/settings/BrightnessSeekBarPreference;->mHBMText:Landroid/widget/TextView;
    invoke-static {v0}, Lcom/android/settings/BrightnessSeekBarPreference;->access$400(Lcom/android/settings/BrightnessSeekBarPreference;)Landroid/widget/TextView;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/settings/BrightnessSeekBarPreference$1;->this$0:Lcom/android/settings/BrightnessSeekBarPreference;

    # getter for: Lcom/android/settings/BrightnessSeekBarPreference;->mAutomaticMode:Z
    invoke-static {v0}, Lcom/android/settings/BrightnessSeekBarPreference;->access$300(Lcom/android/settings/BrightnessSeekBarPreference;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/settings/BrightnessSeekBarPreference$1;->this$0:Lcom/android/settings/BrightnessSeekBarPreference;

    # getter for: Lcom/android/settings/BrightnessSeekBarPreference;->mIsHBMOnOff:Z
    invoke-static {v0}, Lcom/android/settings/BrightnessSeekBarPreference;->access$500(Lcom/android/settings/BrightnessSeekBarPreference;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/settings/BrightnessSeekBarPreference$1;->this$0:Lcom/android/settings/BrightnessSeekBarPreference;

    # getter for: Lcom/android/settings/BrightnessSeekBarPreference;->pmsBrightness:I
    invoke-static {v0}, Lcom/android/settings/BrightnessSeekBarPreference;->access$100(Lcom/android/settings/BrightnessSeekBarPreference;)I

    move-result v0

    const/16 v1, 0xff

    if-ne v0, v1, :cond_1

    .line 115
    iget-object v0, p0, Lcom/android/settings/BrightnessSeekBarPreference$1;->this$0:Lcom/android/settings/BrightnessSeekBarPreference;

    # getter for: Lcom/android/settings/BrightnessSeekBarPreference;->mHBMText:Landroid/widget/TextView;
    invoke-static {v0}, Lcom/android/settings/BrightnessSeekBarPreference;->access$400(Lcom/android/settings/BrightnessSeekBarPreference;)Landroid/widget/TextView;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 117
    :cond_1
    return-void
.end method
