.class final Lcom/android/systemui/recents/views/DualScreenViewControl$4;
.super Landroid/util/FloatProperty;
.source "DualScreenViewControl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/recents/views/DualScreenViewControl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/util/FloatProperty",
        "<",
        "Lcom/android/systemui/recents/views/TaskView;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>(Ljava/lang/String;)V
    .locals 0
    .param p1, "x0"    # Ljava/lang/String;

    .prologue
    .line 238
    invoke-direct {p0, p1}, Landroid/util/FloatProperty;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public get(Lcom/android/systemui/recents/views/TaskView;)Ljava/lang/Float;
    .locals 1
    .param p1, "object"    # Lcom/android/systemui/recents/views/TaskView;

    .prologue
    .line 247
    invoke-virtual {p1}, Lcom/android/systemui/recents/views/TaskView;->getAlpha()F

    move-result v0

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic get(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 238
    check-cast p1, Lcom/android/systemui/recents/views/TaskView;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/android/systemui/recents/views/DualScreenViewControl$4;->get(Lcom/android/systemui/recents/views/TaskView;)Ljava/lang/Float;

    move-result-object v0

    return-object v0
.end method

.method public setValue(Lcom/android/systemui/recents/views/TaskView;F)V
    .locals 1
    .param p1, "object"    # Lcom/android/systemui/recents/views/TaskView;
    .param p2, "value"    # F

    .prologue
    .line 241
    invoke-virtual {p1, p2}, Lcom/android/systemui/recents/views/TaskView;->setAlpha(F)V

    .line 242
    invoke-static {}, Lcom/android/systemui/recents/views/DualScreenViewControl;->getInstance()Lcom/android/systemui/recents/views/DualScreenViewControl;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/systemui/recents/views/DualScreenViewControl;->setAlphaAnimationView(Landroid/view/View;)V

    .line 243
    return-void
.end method

.method public bridge synthetic setValue(Ljava/lang/Object;F)V
    .locals 0
    .param p1, "x0"    # Ljava/lang/Object;
    .param p2, "x1"    # F

    .prologue
    .line 238
    check-cast p1, Lcom/android/systemui/recents/views/TaskView;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1, p2}, Lcom/android/systemui/recents/views/DualScreenViewControl$4;->setValue(Lcom/android/systemui/recents/views/TaskView;F)V

    return-void
.end method
