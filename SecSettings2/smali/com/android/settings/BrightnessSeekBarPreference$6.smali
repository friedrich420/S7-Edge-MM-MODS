.class Lcom/android/settings/BrightnessSeekBarPreference$6;
.super Ljava/lang/Object;
.source "BrightnessSeekBarPreference.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/BrightnessSeekBarPreference;->onBindView(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/BrightnessSeekBarPreference;


# direct methods
.method constructor <init>(Lcom/android/settings/BrightnessSeekBarPreference;)V
    .locals 0

    .prologue
    .line 221
    iput-object p1, p0, Lcom/android/settings/BrightnessSeekBarPreference$6;->this$0:Lcom/android/settings/BrightnessSeekBarPreference;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 2
    .param p1, "v"    # Landroid/view/View;
    .param p2, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 224
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-nez v0, :cond_0

    .line 225
    iget-object v0, p0, Lcom/android/settings/BrightnessSeekBarPreference$6;->this$0:Lcom/android/settings/BrightnessSeekBarPreference;

    # getter for: Lcom/android/settings/BrightnessSeekBarPreference;->mCheckBox:Landroid/widget/CheckBox;
    invoke-static {v0}, Lcom/android/settings/BrightnessSeekBarPreference;->access$700(Lcom/android/settings/BrightnessSeekBarPreference;)Landroid/widget/CheckBox;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setPressed(Z)V

    .line 227
    :cond_0
    const/4 v0, 0x0

    return v0
.end method
