.class Landroid/widget/NumberPicker$3;
.super Ljava/lang/Object;
.source "NumberPicker.java"

# interfaces
.implements Landroid/view/View$OnKeyListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/widget/NumberPicker;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/widget/NumberPicker;

.field final synthetic val$hasKeyboard_12Key:Z


# direct methods
.method constructor <init>(Landroid/widget/NumberPicker;Z)V
    .registers 3

    .prologue
    .line 737
    iput-object p1, p0, this$0:Landroid/widget/NumberPicker;

    iput-boolean p2, p0, val$hasKeyboard_12Key:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onKey(Landroid/view/View;ILandroid/view/KeyEvent;)Z
    .registers 12
    .param p1, "v"    # Landroid/view/View;
    .param p2, "keyCode"    # I
    .param p3, "event"    # Landroid/view/KeyEvent;

    .prologue
    const/16 v7, 0x42

    const/16 v6, 0x17

    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 740
    invoke-static {}, Landroid/view/inputmethod/InputMethodManager;->peekInstance()Landroid/view/inputmethod/InputMethodManager;

    move-result-object v0

    .line 741
    .local v0, "inputMethodManager":Landroid/view/inputmethod/InputMethodManager;
    if-eqz v0, :cond_22

    .line 744
    invoke-virtual {v0}, Landroid/view/inputmethod/InputMethodManager;->isAccessoryKeyboardState()I

    move-result v1

    .line 745
    .local v1, "mKeyboard":I
    and-int/lit8 v4, v1, 0x1

    if-eq v4, v2, :cond_19

    and-int/lit8 v4, v1, 0x2

    const/4 v5, 0x2

    if-ne v4, v5, :cond_22

    .line 747
    :cond_19
    iget-object v4, p0, this$0:Landroid/widget/NumberPicker;

    invoke-virtual {v4}, Landroid/widget/NumberPicker;->getWindowToken()Landroid/os/IBinder;

    move-result-object v4

    invoke-virtual {v0, v4, v3}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    .line 751
    .end local v1    # "mKeyboard":I
    :cond_22
    iget-boolean v4, p0, val$hasKeyboard_12Key:Z

    if-eqz v4, :cond_37

    invoke-virtual {p3}, Landroid/view/KeyEvent;->getDeviceId()I

    move-result v4

    if-nez v4, :cond_37

    .line 752
    if-eqz v0, :cond_37

    .line 753
    iget-object v4, p0, this$0:Landroid/widget/NumberPicker;

    invoke-virtual {v4}, Landroid/widget/NumberPicker;->getWindowToken()Landroid/os/IBinder;

    move-result-object v4

    invoke-virtual {v0, v4, v3}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    .line 756
    :cond_37
    iget-object v4, p0, this$0:Landroid/widget/NumberPicker;

    # getter for: Landroid/widget/NumberPicker;->mInputText:Landroid/widget/EditText;
    invoke-static {v4}, Landroid/widget/NumberPicker;->access$100(Landroid/widget/NumberPicker;)Landroid/widget/EditText;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/EditText;->clearFocus()V

    .line 758
    invoke-virtual {p1, v2}, Landroid/view/View;->setPressed(Z)V

    .line 760
    invoke-virtual {p3}, Landroid/view/KeyEvent;->getAction()I

    move-result v4

    if-nez v4, :cond_62

    if-eq p2, v7, :cond_4d

    if-ne p2, v6, :cond_62

    .line 761
    :cond_4d
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v4

    const v5, 0x102043d

    if-ne v4, v5, :cond_5c

    .line 762
    iget-object v3, p0, this$0:Landroid/widget/NumberPicker;

    # invokes: Landroid/widget/NumberPicker;->changeValueByOne(Z)V
    invoke-static {v3, v2}, Landroid/widget/NumberPicker;->access$200(Landroid/widget/NumberPicker;Z)V

    .line 776
    :goto_5b
    return v2

    .line 765
    :cond_5c
    iget-object v4, p0, this$0:Landroid/widget/NumberPicker;

    # invokes: Landroid/widget/NumberPicker;->changeValueByOne(Z)V
    invoke-static {v4, v3}, Landroid/widget/NumberPicker;->access$200(Landroid/widget/NumberPicker;Z)V

    goto :goto_5b

    .line 770
    :cond_62
    invoke-virtual {p3}, Landroid/view/KeyEvent;->getAction()I

    move-result v4

    if-ne v4, v2, :cond_71

    .line 771
    if-eq p2, v7, :cond_6c

    if-ne p2, v6, :cond_71

    .line 772
    :cond_6c
    iget-object v2, p0, this$0:Landroid/widget/NumberPicker;

    invoke-virtual {v2, v3}, Landroid/widget/NumberPicker;->playSoundEffect(I)V

    .line 775
    :cond_71
    invoke-virtual {p1, v3}, Landroid/view/View;->setPressed(Z)V

    move v2, v3

    .line 776
    goto :goto_5b
.end method
