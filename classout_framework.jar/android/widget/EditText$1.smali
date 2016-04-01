.class Landroid/widget/EditText$1;
.super Ljava/lang/Object;
.source "EditText.java"

# interfaces
.implements Landroid/text/TextWatcher;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/widget/EditText;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/widget/EditText;


# direct methods
.method constructor <init>(Landroid/widget/EditText;)V
    .registers 2

    .prologue
    .line 259
    iput-object p1, p0, this$0:Landroid/widget/EditText;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .registers 2
    .param p1, "arg0"    # Landroid/text/Editable;

    .prologue
    .line 262
    return-void
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .registers 5
    .param p1, "arg0"    # Ljava/lang/CharSequence;
    .param p2, "arg1"    # I
    .param p3, "arg2"    # I
    .param p4, "arg3"    # I

    .prologue
    .line 266
    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .registers 7
    .param p1, "arg0"    # Ljava/lang/CharSequence;
    .param p2, "arg1"    # I
    .param p3, "arg2"    # I
    .param p4, "arg3"    # I

    .prologue
    .line 270
    if-eqz p1, :cond_10

    .line 271
    iget-object v0, p0, this$0:Landroid/widget/EditText;

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v1

    # setter for: Landroid/widget/EditText;->mSipTextLen:I
    invoke-static {v0, v1}, Landroid/widget/EditText;->access$002(Landroid/widget/EditText;I)I

    .line 272
    iget-object v0, p0, this$0:Landroid/widget/EditText;

    # invokes: Landroid/widget/EditText;->updateSipFocusStatus()V
    invoke-static {v0}, Landroid/widget/EditText;->access$100(Landroid/widget/EditText;)V

    .line 274
    :cond_10
    return-void
.end method
