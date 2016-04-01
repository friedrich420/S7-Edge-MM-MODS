.class public Landroid/widget/NumberPicker$CustomEditText;
.super Landroid/widget/EditText;
.source "NumberPicker.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/widget/NumberPicker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "CustomEditText"
.end annotation


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 2431
    invoke-direct {p0, p1, p2}, Landroid/widget/EditText;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 2432
    return-void
.end method


# virtual methods
.method public onEditorAction(I)V
    .registers 3
    .param p1, "actionCode"    # I

    .prologue
    .line 2436
    invoke-super {p0, p1}, Landroid/widget/EditText;->onEditorAction(I)V

    .line 2437
    const/4 v0, 0x6

    if-ne p1, v0, :cond_9

    .line 2438
    invoke-virtual {p0}, clearFocus()V

    .line 2440
    :cond_9
    return-void
.end method
